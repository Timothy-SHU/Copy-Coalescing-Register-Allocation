; ModuleID = 'blender/source/blender/editors/space_image/image_buttons.c'
source_filename = "blender/source/blender/editors/space_image/image_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.RNAUpdateCb = type { %struct.PointerRNA, ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.RenderPass = type { ptr, ptr, i32, i32, [64 x i8], [8 x i8], ptr, i32, i32, i32 }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }

@.str = private unnamed_addr constant [31 x i8] c"%s: property not found: %s.%s\0A\00", align 1
@__func__.uiTemplateImage = private unnamed_addr constant [16 x i8] c"uiTemplateImage\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: expected pointer property for %s.%s\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"RNAUpdateCb\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"edit_image\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"edit_image_user\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"IMAGE_OT_new\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"IMAGE_OT_open\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"image.unpack\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"image.pack\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"image.reload\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"colorspace_settings\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"use_view_as_render\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"use_alpha\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"alpha_mode\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"use_fields\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"fields_per_frame\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Fields\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"field_order\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"(%d) Frames\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"frame_duration\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"frame_offset\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"IMAGE_OT_match_movie_length\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"use_auto_refresh\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"use_cyclic\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"generated_width\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"generated_height\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"use_generated_float\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"generated_type\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"generated_color\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [12 x i8] c"file_format\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"color_mode\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"Color Depth:\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"color_depth\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"exr_codec\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"use_zbuffer\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"use_preview\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"jpeg2k_codec\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"use_jpeg2k_cinema_preset\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"use_jpeg2k_cinema_48\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"use_jpeg2k_ycc\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"use_cineon_log\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"Hard coded Non-Linear, Gamma:1.7\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"display_settings\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"Color Management\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"display_device\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"view_settings\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.57 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"spacetype image panel gpencil\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"IMAGE_PT_gpencil\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"IMAGE_OT_properties\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"Toggle display properties panel\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"Tool Shelf\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"IMAGE_OT_toolshelf\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"Toggles tool shelf display\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"Can't Load Image\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"Movie\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c" %d frs\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c": size %d x %d,\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"%d float channel(s)\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c" RGBA float\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c" RGB float\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c" RGBA byte\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c" RGB byte\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c" + Z\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c", Frame: %d\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"No Layers in Render Result\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"Previous Layer\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"Next Layer\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"Previous Pass\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"Next Pass\00", align 1
@uiblock_layer_pass_buttons.rnd_pt = internal global [3 x ptr] zeroinitializer, align 16
@.str.85 = private unnamed_addr constant [8 x i8] c"Slot %d\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"Select Slot\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"Select Layer\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"Select Pass\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"Slot\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"Sequence\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"Combined\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"Pass\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ntree_get_active_iuser(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3, %19
  %8 = phi ptr [ %20, %19 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %10 = load i16, ptr %9, align 4, !tbaa !38
  switch i16 %10, label %19 [
    i16 201, label %11
    i16 240, label %11
  ]

11:                                               ; preds = %7, %7
  %12 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  br label %22

19:                                               ; preds = %7, %11
  %20 = load ptr, ptr %8, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !47

22:                                               ; preds = %19, %3, %1, %16
  %23 = phi ptr [ %18, %16 ], [ null, %1 ], [ null, %3 ], [ null, %19 ]
  ret ptr %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  %10 = tail call ptr @CTX_data_scene(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = icmp eq ptr %12, null
  br i1 %13, label %149, label %14

14:                                               ; preds = %6
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %2, ptr noundef %3) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = tail call ptr @RNA_struct_identifier(ptr noundef %19) #8
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.uiTemplateImage, ptr noundef %20, ptr noundef %3)
  br label %149

22:                                               ; preds = %14
  %23 = tail call i32 @RNA_property_type(ptr noundef nonnull %15) #8
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = tail call ptr @RNA_struct_identifier(ptr noundef %27) #8
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.uiTemplateImage, ptr noundef %28, ptr noundef %3)
  br label %149

30:                                               ; preds = %22
  %31 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #8
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %2, ptr noundef nonnull %15) #8
  %32 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !54
  call void @BKE_image_user_check_frame_calc(ptr noundef %35, i32 noundef %37, i32 noundef 0) #8
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %39 = call ptr %38(i64 noundef 40, ptr noundef nonnull @.str.2) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !74
  %40 = getelementptr inbounds %struct.RNAUpdateCb, ptr %39, i64 0, i32 1
  store ptr %15, ptr %40, align 8, !tbaa !75
  %41 = getelementptr inbounds %struct.RNAUpdateCb, ptr %39, i64 0, i32 2
  store ptr %35, ptr %41, align 8, !tbaa !77
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #8
  call void @uiLayoutSetContextPointer(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %4) #8
  %42 = icmp eq i32 %5, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  call void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null) #8
  br label %44

44:                                               ; preds = %43, %30
  %45 = icmp eq ptr %33, null
  br i1 %45, label %147, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %48 = call ptr %47(ptr noundef %39) #8
  call void @uiBlockSetNFunc(ptr noundef %31, ptr noundef nonnull @rna_update_cb, ptr noundef %48, ptr noundef null) #8
  %49 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 11
  %50 = load i16, ptr %49, align 8, !tbaa !78
  %51 = icmp eq i16 %50, 5
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = call ptr @BKE_image_acquire_ibuf(ptr noundef %33, ptr noundef %35, ptr noundef nonnull %9) #8
  call fastcc void @image_info(ptr noundef %10, ptr noundef %35, ptr noundef %33, ptr noundef %53, ptr noundef nonnull %8)
  %54 = load ptr, ptr %9, align 8, !tbaa !34
  call void @BKE_image_release_ibuf(ptr noundef %33, ptr noundef %53, ptr noundef %54) #8
  %55 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 4, i64 2
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull %55, i32 noundef 0) #8
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0) #8
  %56 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 12
  %57 = load i16, ptr %56, align 2, !tbaa !80
  %58 = icmp eq i16 %57, 4
  br i1 %58, label %59, label %146

59:                                               ; preds = %52
  %60 = call ptr @BKE_image_acquire_renderresult(ptr noundef %10, ptr noundef %33) #8
  %61 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 7
  call fastcc void @uiblock_layer_pass_arrow_buttons(ptr noundef %0, ptr noundef %33, ptr noundef %60, ptr noundef %35, ptr noundef nonnull %61)
  call void @BKE_image_release_renderresult(ptr noundef %10, ptr noundef %33) #8
  br label %146

62:                                               ; preds = %46
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %63 = load i16, ptr %49, align 8, !tbaa !78
  %64 = icmp eq i16 %63, 4
  br i1 %64, label %77, label %65

65:                                               ; preds = %62
  %66 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #8
  %67 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 22
  %68 = load ptr, ptr %67, align 8, !tbaa !81
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  call void @uiItemO(ptr noundef %66, ptr noundef nonnull @.str.8, i32 noundef 179, ptr noundef nonnull @.str.9) #8
  br label %72

71:                                               ; preds = %65
  call void @uiItemO(ptr noundef %66, ptr noundef nonnull @.str.8, i32 noundef 180, ptr noundef nonnull @.str.10) #8
  br label %72

72:                                               ; preds = %71, %70
  %73 = call ptr @uiLayoutRow(ptr noundef %66, i32 noundef 1) #8
  %74 = load ptr, ptr %67, align 8, !tbaa !81
  %75 = icmp eq ptr %74, null
  %76 = zext i1 %75 to i8
  call void @uiLayoutSetEnabled(ptr noundef %73, i8 noundef zeroext %76) #8
  call void @uiItemR(ptr noundef %73, ptr noundef nonnull %7, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 0) #8
  call void @uiItemO(ptr noundef %73, ptr noundef nonnull @.str.8, i32 noundef 692, ptr noundef nonnull @.str.12) #8
  br label %77

77:                                               ; preds = %72, %62
  %78 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 12
  %79 = load i16, ptr %78, align 2, !tbaa !80
  %80 = icmp eq i16 %79, 1
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !82
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call fastcc void @uiblock_layer_pass_arrow_buttons(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %83, ptr noundef %35, ptr noundef null)
  br label %93

86:                                               ; preds = %81, %77
  %87 = load i16, ptr %49, align 8, !tbaa !78
  %88 = icmp ne i16 %87, 4
  %89 = and i1 %42, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = call ptr @BKE_image_acquire_ibuf(ptr noundef %33, ptr noundef %35, ptr noundef nonnull %9) #8
  call fastcc void @image_info(ptr noundef %10, ptr noundef %35, ptr noundef %33, ptr noundef %91, ptr noundef nonnull %8)
  %92 = load ptr, ptr %9, align 8, !tbaa !34
  call void @BKE_image_release_ibuf(ptr noundef %33, ptr noundef %91, ptr noundef %92) #8
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0) #8
  br label %93

93:                                               ; preds = %86, %90, %85
  %94 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #8
  call void @uiTemplateColorspaceSettings(ptr noundef %94, ptr noundef nonnull %7, ptr noundef nonnull @.str.13) #8
  call void @uiItemR(ptr noundef %94, ptr noundef nonnull %7, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %95 = load i16, ptr %49, align 8, !tbaa !78
  %96 = icmp ne i16 %95, 4
  %97 = and i1 %42, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %93
  %99 = call ptr @BKE_image_acquire_ibuf(ptr noundef %33, ptr noundef %35, ptr noundef null) #8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.ImBuf, ptr %99, i64 0, i32 26
  %103 = load i32, ptr %102, align 8, !tbaa !83
  %104 = call zeroext i8 @BKE_ftype_to_imtype(i32 noundef %103) #8
  %105 = call zeroext i8 @BKE_imtype_valid_channels(i8 noundef zeroext %104, i8 noundef zeroext 0) #8
  call void @BKE_image_release_ibuf(ptr noundef %33, ptr noundef nonnull %99, ptr noundef null) #8
  %106 = and i8 %105, 4
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %98, %101
  %109 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #8
  call void @uiItemR(ptr noundef %109, ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  call void @uiItemR(ptr noundef %109, ptr noundef nonnull %7, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef 0) #8
  br label %110

110:                                              ; preds = %108, %101
  call void @uiItemS(ptr noundef %0) #8
  %111 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0.000000e+00, i32 noundef 0) #8
  %112 = call ptr @uiLayoutColumn(ptr noundef %111, i32 noundef 0) #8
  %113 = call zeroext i8 @BKE_image_is_animated(ptr noundef %33) #8
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = call ptr @uiLayoutSplit(ptr noundef %112, float noundef 0.000000e+00, i32 noundef 0) #8
  %117 = call ptr @uiLayoutColumn(ptr noundef %116, i32 noundef 0) #8
  call void @uiItemR(ptr noundef %117, ptr noundef nonnull %7, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %118 = call ptr @uiLayoutColumn(ptr noundef %116, i32 noundef 0) #8
  %119 = call i32 @RNA_boolean_get(ptr noundef nonnull %7, ptr noundef nonnull @.str.18) #8
  %120 = trunc i32 %119 to i8
  call void @uiLayoutSetActive(ptr noundef %118, i8 noundef zeroext %120) #8
  call void @uiItemR(ptr noundef %118, ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 0) #8
  br label %122

121:                                              ; preds = %110
  call void @uiItemR(ptr noundef %112, ptr noundef nonnull %7, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %122

122:                                              ; preds = %121, %115
  %123 = call ptr @uiLayoutRow(ptr noundef %112, i32 noundef 0) #8
  %124 = call i32 @RNA_boolean_get(ptr noundef nonnull %7, ptr noundef nonnull @.str.18) #8
  %125 = trunc i32 %124 to i8
  call void @uiLayoutSetActive(ptr noundef %123, i8 noundef zeroext %125) #8
  call void @uiItemR(ptr noundef %123, ptr noundef nonnull %7, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef null, i32 noundef 0) #8
  br label %126

126:                                              ; preds = %122, %93
  %127 = call zeroext i8 @BKE_image_is_animated(ptr noundef %33) #8
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %126
  call void @uiItemS(ptr noundef %0) #8
  %130 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0.000000e+00, i32 noundef 0) #8
  %131 = call ptr @uiLayoutColumn(ptr noundef %130, i32 noundef 0) #8
  %132 = getelementptr inbounds %struct.ImageUser, ptr %35, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !86
  %134 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 128, ptr noundef nonnull @.str.22, i32 noundef %133) #8
  call void @uiItemR(ptr noundef %131, ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull %8, i32 noundef 0) #8
  call void @uiItemR(ptr noundef %131, ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, i32 noundef 0) #8
  call void @uiItemR(ptr noundef %131, ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %135 = call ptr @uiLayoutColumn(ptr noundef %130, i32 noundef 0) #8
  call void @uiItemO(ptr noundef %135, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27) #8
  call void @uiItemR(ptr noundef %135, ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  call void @uiItemR(ptr noundef %135, ptr noundef %4, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %146

136:                                              ; preds = %126
  %137 = load i16, ptr %49, align 8, !tbaa !78
  %138 = icmp eq i16 %137, 4
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0.000000e+00, i32 noundef 0) #8
  %141 = call ptr @uiLayoutColumn(ptr noundef %140, i32 noundef 1) #8
  call void @uiItemR(ptr noundef %141, ptr noundef nonnull %7, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, i32 noundef 0) #8
  call void @uiItemR(ptr noundef %141, ptr noundef nonnull %7, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef 0) #8
  call void @uiItemR(ptr noundef %141, ptr noundef nonnull %7, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  call void @uiItemR(ptr noundef %140, ptr noundef nonnull %7, ptr noundef nonnull @.str.35, i32 noundef 2, ptr noundef null, i32 noundef 0) #8
  %142 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 30
  %143 = load i8, ptr %142, align 4, !tbaa !88
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %146

146:                                              ; preds = %52, %59, %129, %139, %145, %136
  call void @uiBlockSetNFunc(ptr noundef %31, ptr noundef null, ptr noundef null, ptr noundef null) #8
  br label %147

147:                                              ; preds = %146, %44
  %148 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %148(ptr noundef %39) #8
  br label %149

149:                                              ; preds = %6, %147, %25, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #3

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #3

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @BKE_image_user_check_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @uiLayoutSetContextPointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiTemplateID(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiBlockSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @rna_update_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #2 {
  %4 = getelementptr inbounds %struct.RNAUpdateCb, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.ImageUser, ptr %5, i64 0, i32 7
  store i8 1, ptr %6, align 2, !tbaa !89
  %7 = getelementptr inbounds %struct.RNAUpdateCb, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %8) #8
  ret void
}

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @image_info(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 {
  store i8 0, ptr %4, align 1, !tbaa !90
  %6 = icmp eq ptr %3, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call i64 @BLI_strncpy_rlen(ptr noundef nonnull %4, ptr noundef nonnull @.str.67, i64 noundef 128) #8
  br label %96

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Image, ptr %2, i64 0, i32 11
  %11 = load i16, ptr %10, align 8, !tbaa !78
  %12 = icmp eq i16 %11, 3
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = tail call i64 @BLI_strncpy_rlen(ptr noundef nonnull %4, ptr noundef nonnull @.str.68, i64 noundef 128) #8
  %15 = getelementptr inbounds %struct.Image, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %4, i64 %14
  %20 = sub i64 128, %14
  %21 = tail call i32 @IMB_anim_get_duration(ptr noundef nonnull %16, i32 noundef 1) #8
  %22 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %19, i64 noundef %20, ptr noundef nonnull @.str.69, i32 noundef %21) #8
  %23 = add i64 %22, %14
  br label %26

24:                                               ; preds = %9
  %25 = tail call i64 @BLI_strncpy_rlen(ptr noundef nonnull %4, ptr noundef nonnull @.str.70, i64 noundef 128) #8
  br label %26

26:                                               ; preds = %13, %18, %24
  %27 = phi i64 [ %23, %18 ], [ %14, %13 ], [ %25, %24 ]
  %28 = getelementptr inbounds i8, ptr %4, i64 %27
  %29 = sub i64 128, %27
  %30 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !92
  %32 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !93
  %34 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %28, i64 noundef %29, ptr noundef nonnull @.str.71, i32 noundef %31, i32 noundef %33) #8
  %35 = add i64 %34, %27
  %36 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !94
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !95
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %4, i64 %35
  %45 = sub i64 128, %35
  %46 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %44, i64 noundef %45, ptr noundef nonnull @.str.72, i32 noundef %41) #8
  br label %67

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 4
  %49 = load i8, ptr %48, align 8, !tbaa !96
  %50 = icmp eq i8 %49, 32
  %51 = getelementptr inbounds i8, ptr %4, i64 %35
  %52 = sub i64 128, %35
  br i1 %50, label %53, label %55

53:                                               ; preds = %47
  %54 = tail call i64 @BLI_strncpy_rlen(ptr noundef nonnull %51, ptr noundef nonnull @.str.73, i64 noundef %52) #8
  br label %67

55:                                               ; preds = %47
  %56 = tail call i64 @BLI_strncpy_rlen(ptr noundef nonnull %51, ptr noundef nonnull @.str.74, i64 noundef %52) #8
  br label %67

57:                                               ; preds = %26
  %58 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 4
  %59 = load i8, ptr %58, align 8, !tbaa !96
  %60 = icmp eq i8 %59, 32
  %61 = getelementptr inbounds i8, ptr %4, i64 %35
  %62 = sub i64 128, %35
  br i1 %60, label %63, label %65

63:                                               ; preds = %57
  %64 = tail call i64 @BLI_strncpy_rlen(ptr noundef nonnull %61, ptr noundef nonnull @.str.75, i64 noundef %62) #8
  br label %67

65:                                               ; preds = %57
  %66 = tail call i64 @BLI_strncpy_rlen(ptr noundef nonnull %61, ptr noundef nonnull @.str.76, i64 noundef %62) #8
  br label %67

67:                                               ; preds = %63, %65, %43, %55, %53
  %68 = phi i64 [ %46, %43 ], [ %54, %53 ], [ %56, %55 ], [ %64, %63 ], [ %66, %65 ]
  %69 = add i64 %68, %35
  %70 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 16
  %71 = load ptr, ptr %70, align 8, !tbaa !97
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !98
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73, %67
  %78 = getelementptr inbounds i8, ptr %4, i64 %69
  %79 = sub i64 128, %69
  %80 = tail call i64 @BLI_strncpy_rlen(ptr noundef nonnull %78, ptr noundef nonnull @.str.77, i64 noundef %79) #8
  %81 = add i64 %80, %69
  br label %82

82:                                               ; preds = %77, %73
  %83 = phi i64 [ %81, %77 ], [ %69, %73 ]
  %84 = load i16, ptr %10, align 8, !tbaa !78
  %85 = icmp eq i16 %84, 2
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 27
  %88 = tail call ptr @BLI_last_slash(ptr noundef nonnull %87) #8
  %89 = icmp eq ptr %88, null
  %90 = getelementptr inbounds i8, ptr %88, i64 1
  %91 = select i1 %89, ptr %87, ptr %90
  %92 = getelementptr inbounds i8, ptr %4, i64 %83
  %93 = sub i64 128, %83
  %94 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %92, i64 noundef %93, ptr noundef nonnull @.str.78, ptr noundef nonnull %91) #8
  %95 = add i64 %94, %83
  br label %96

96:                                               ; preds = %82, %86, %7
  %97 = phi i64 [ %8, %7 ], [ %95, %86 ], [ %83, %82 ]
  %98 = getelementptr inbounds %struct.Image, ptr %2, i64 0, i32 11
  %99 = load i16, ptr %98, align 8, !tbaa !78
  %100 = icmp eq i16 %99, 2
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %103 = load i32, ptr %102, align 8, !tbaa !54
  %104 = tail call i32 @BKE_image_user_frame_get(ptr noundef %1, i32 noundef %103, i32 noundef 0, ptr noundef null) #8
  %105 = getelementptr inbounds i8, ptr %4, i64 %97
  %106 = sub i64 128, %97
  %107 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %105, i64 noundef %106, ptr noundef nonnull @.str.79, i32 noundef %104) #8
  br label %108

108:                                              ; preds = %96, %101
  ret void
}

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BKE_image_acquire_renderresult(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @uiblock_layer_pass_arrow_buttons(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #8
  %7 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !99
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !103
  %9 = sitofp i32 %8 to float
  %10 = fmul float %7, %9
  %11 = fdiv float %10, 7.200000e+01
  %12 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #8
  %13 = icmp eq ptr %2, null
  %14 = icmp eq ptr %3, null
  %15 = or i1 %13, %14
  br i1 %15, label %44, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.RenderResult, ptr %2, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @uiItemL(ptr noundef %12, ptr noundef nonnull @.str.80, i32 noundef 0) #8
  br label %44

21:                                               ; preds = %16
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %23 = sitofp i16 %22 to float
  %24 = fmul float %23, 0x3FEB333340000000
  %25 = fptosi float %24 to i16
  %26 = tail call ptr @uiDefIconBut(ptr noundef %6, i32 noundef 512, i32 noundef 0, i32 noundef 6, i32 noundef 0, i32 noundef 0, i16 noundef signext %25, i16 noundef signext %22, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.81) #8
  tail call void @uiButSetFunc(ptr noundef %26, ptr noundef nonnull @image_multi_declay_cb, ptr noundef %2, ptr noundef %3) #8
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %28 = sitofp i16 %27 to float
  %29 = fmul float %28, 0x3FECCCCCC0000000
  %30 = fptosi float %29 to i16
  %31 = tail call ptr @uiDefIconBut(ptr noundef %6, i32 noundef 512, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 0, i16 noundef signext %30, i16 noundef signext %27, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.82) #8
  tail call void @uiButSetFunc(ptr noundef %31, ptr noundef nonnull @image_multi_inclay_cb, ptr noundef %2, ptr noundef %3) #8
  %32 = fmul float %11, 2.300000e+02
  %33 = fptosi float %32 to i32
  tail call fastcc void @uiblock_layer_pass_buttons(ptr noundef %12, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %33, ptr noundef %4)
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %35 = sitofp i16 %34 to float
  %36 = fmul float %35, 0x3FEB333340000000
  %37 = fptosi float %36 to i16
  %38 = tail call ptr @uiDefIconBut(ptr noundef %6, i32 noundef 512, i32 noundef 0, i32 noundef 6, i32 noundef 0, i32 noundef 0, i16 noundef signext %37, i16 noundef signext %34, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.83) #8
  tail call void @uiButSetFunc(ptr noundef %38, ptr noundef nonnull @image_multi_decpass_cb, ptr noundef %2, ptr noundef %3) #8
  %39 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %40 = sitofp i16 %39 to float
  %41 = fmul float %40, 0x3FECCCCCC0000000
  %42 = fptosi float %41 to i16
  %43 = tail call ptr @uiDefIconBut(ptr noundef %6, i32 noundef 512, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 0, i16 noundef signext %42, i16 noundef signext %39, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.84) #8
  tail call void @uiButSetFunc(ptr noundef %43, ptr noundef nonnull @image_multi_incpass_cb, ptr noundef %2, ptr noundef %3) #8
  tail call void @uiBlockEndAlign(ptr noundef %6) #8
  br label %44

44:                                               ; preds = %5, %21, %20
  ret void
}

declare void @BKE_image_release_renderresult(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @uiLayoutSetEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiTemplateColorspaceSettings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_ftype_to_imtype(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_imtype_valid_channels(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @uiItemS(ptr noundef) local_unnamed_addr #3

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #3

declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateImageSettings(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = load ptr, ptr %1, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %8 = load i8, ptr %6, align 8, !tbaa !107
  %9 = tail call zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext %8) #8
  %10 = icmp eq ptr %7, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !108
  %14 = icmp ne i16 %13, 17235
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #8
  %18 = tail call ptr @uiLayoutSplit(ptr noundef %17, float noundef 5.000000e-01, i32 noundef 0) #8
  tail call void @uiItemR(ptr noundef %18, ptr noundef nonnull %1, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 0) #8
  %19 = tail call ptr @uiLayoutRow(ptr noundef %18, i32 noundef 0) #8
  tail call void @uiItemR(ptr noundef %19, ptr noundef nonnull %1, ptr noundef nonnull @.str.38, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 0) #8
  switch i8 %9, label %20 [
    i8 32, label %22
    i8 16, label %22
    i8 8, label %22
    i8 4, label %22
    i8 2, label %22
    i8 1, label %22
    i8 64, label %22
  ]

20:                                               ; preds = %15
  %21 = tail call ptr @uiLayoutRow(ptr noundef %17, i32 noundef 0) #8
  tail call void @uiItemL(ptr noundef %21, ptr noundef nonnull @.str.40, i32 noundef 0) #8
  tail call void @uiItemR(ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.41, i32 noundef 2, ptr noundef null, i32 noundef 0) #8
  br label %22

22:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %20
  %23 = load i8, ptr %6, align 8, !tbaa !107
  %24 = tail call i32 @BKE_imtype_supports_quality(i8 noundef zeroext %23) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i8, ptr %6, align 8, !tbaa !107
  %29 = tail call i32 @BKE_imtype_supports_compress(i8 noundef zeroext %28) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i8, ptr %6, align 8, !tbaa !107
  switch i8 %33, label %35 [
    i8 23, label %34
    i8 28, label %34
  ]

34:                                               ; preds = %32, %32
  tail call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %35

35:                                               ; preds = %32, %34
  %36 = tail call ptr @uiLayoutRow(ptr noundef %17, i32 noundef 0) #8
  %37 = load i8, ptr %6, align 8, !tbaa !107
  %38 = tail call i32 @BKE_imtype_supports_zbuf(i8 noundef zeroext %37) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @uiItemR(ptr noundef %36, ptr noundef nonnull %1, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %41

41:                                               ; preds = %40, %35
  br i1 %16, label %46, label %42

42:                                               ; preds = %41
  %43 = load i8, ptr %6, align 8, !tbaa !107
  %44 = icmp eq i8 %43, 23
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call void @uiItemR(ptr noundef %36, ptr noundef nonnull %1, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %46

46:                                               ; preds = %45, %42, %41
  %47 = phi i1 [ false, %45 ], [ true, %42 ], [ true, %41 ]
  %48 = load i8, ptr %6, align 8, !tbaa !107
  %49 = icmp eq i8 %48, 30
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  tail call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %51 = tail call ptr @uiLayoutRow(ptr noundef %17, i32 noundef 0) #8
  tail call void @uiItemR(ptr noundef %51, ptr noundef nonnull %1, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  tail call void @uiItemR(ptr noundef %51, ptr noundef nonnull %1, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  tail call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i8, ptr %6, align 8, !tbaa !107
  %54 = icmp eq i8 %53, 27
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @uiItemR(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull @.str.51, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i8, ptr %6, align 8, !tbaa !107
  %58 = icmp eq i8 %57, 26
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @uiItemL(ptr noundef %17, ptr noundef nonnull @.str.52, i32 noundef 0) #8
  br label %60

60:                                               ; preds = %59, %56
  %61 = icmp eq i32 %2, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %60
  %63 = load i8, ptr %6, align 8, !tbaa !107
  %64 = tail call i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext %63) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  br i1 %47, label %75, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.ImageFormatData, ptr %6, i64 0, i32 3
  %69 = load i8, ptr %68, align 1, !tbaa !109
  %70 = and i8 %69, 2
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67, %62
  %73 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.53) #8
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %1, ptr noundef %73) #8
  %74 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #8
  call void @uiItemL(ptr noundef %74, ptr noundef nonnull @.str.54, i32 noundef 0) #8
  call void @uiItemR(ptr noundef %74, ptr noundef nonnull %4, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  call void @uiTemplateColormanagedViewSettings(ptr noundef %74, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull @.str.56) #8
  br label %75

75:                                               ; preds = %72, %67, %66, %60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret void
}

declare zeroext i8 @BKE_imtype_valid_depths(i8 noundef zeroext) local_unnamed_addr #3

declare i32 @BKE_imtype_supports_quality(i8 noundef zeroext) local_unnamed_addr #3

declare i32 @BKE_imtype_supports_compress(i8 noundef zeroext) local_unnamed_addr #3

declare i32 @BKE_imtype_supports_zbuf(i8 noundef zeroext) local_unnamed_addr #3

declare i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext) local_unnamed_addr #3

declare void @uiTemplateColormanagedViewSettings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateImageLayers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %1) #8
  %6 = icmp ne ptr %2, null
  %7 = icmp ne ptr %3, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !99
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !103
  %12 = sitofp i32 %11 to float
  %13 = fmul float %10, %12
  %14 = fdiv float %13, 7.200000e+01
  %15 = tail call ptr @BKE_image_acquire_renderresult(ptr noundef %5, ptr noundef nonnull %2) #8
  %16 = fmul float %14, 1.600000e+02
  %17 = fptosi float %16 to i32
  %18 = getelementptr inbounds %struct.Image, ptr %2, i64 0, i32 12
  %19 = load i16, ptr %18, align 2, !tbaa !80
  %20 = icmp eq i16 %19, 4
  %21 = getelementptr inbounds %struct.Image, ptr %2, i64 0, i32 7
  %22 = select i1 %20, ptr %21, ptr null
  tail call fastcc void @uiblock_layer_pass_buttons(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %15, ptr noundef nonnull %3, i32 noundef %17, ptr noundef %22)
  tail call void @BKE_image_release_renderresult(ptr noundef %5, ptr noundef nonnull %2) #8
  br label %23

23:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @uiblock_layer_pass_buttons(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef readonly %5) unnamed_addr #2 {
  %7 = alloca [64 x i8], align 16
  %8 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #8
  %9 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #8
  %10 = shl nsw i32 %4, 1
  %11 = sdiv i32 %10, 5
  %12 = mul nsw i32 %4, 3
  %13 = sdiv i32 %12, 5
  %14 = sdiv i32 %4, 2
  store ptr %1, ptr @uiblock_layer_pass_buttons.rnd_pt, align 16, !tbaa !34
  store ptr %3, ptr getelementptr inbounds ([3 x ptr], ptr @uiblock_layer_pass_buttons.rnd_pt, i64 0, i64 1), align 8, !tbaa !34
  store ptr null, ptr getelementptr inbounds ([3 x ptr], ptr @uiblock_layer_pass_buttons.rnd_pt, i64 0, i64 2), align 16, !tbaa !34
  %15 = icmp eq ptr %5, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  %17 = load i16, ptr %5, align 2, !tbaa !108
  %18 = sext i16 %17 to i64
  %19 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 39, i64 %18
  %20 = load i8, ptr %19, align 8, !tbaa !90
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %19, i64 noundef 64) #8
  br label %28

24:                                               ; preds = %16
  %25 = sext i16 %17 to i32
  %26 = add nsw i32 %25, 1
  %27 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 64, ptr noundef nonnull @.str.85, i32 noundef %26) #8
  br label %28

28:                                               ; preds = %24, %22
  %29 = trunc i32 %11 to i16
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %31 = call ptr @uiDefMenuBut(ptr noundef %8, ptr noundef nonnull @ui_imageuser_slot_menu, ptr noundef %1, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, i16 noundef signext %29, i16 noundef signext %30, ptr noundef nonnull @.str.86) #8
  call void @uiButSetFunc(ptr noundef %31, ptr noundef nonnull @image_multi_cb, ptr noundef %2, ptr noundef %3) #8
  call void @uiButSetMenuFromPulldown(ptr noundef %31) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  br label %32

32:                                               ; preds = %28, %6
  %33 = icmp eq ptr %2, null
  br i1 %33, label %88, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.RenderResult, ptr %2, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !110
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.RenderResult, ptr %2, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !112
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, ptr null, ptr @.str.91
  br label %43

43:                                               ; preds = %34, %38
  %44 = phi ptr [ @.str.90, %34 ], [ %42, %38 ]
  %45 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 10
  %46 = load i16, ptr %45, align 2, !tbaa !113
  %47 = sext i16 %46 to i32
  %48 = icmp ne ptr %44, null
  %49 = sext i1 %48 to i32
  %50 = add nsw i32 %49, %47
  %51 = getelementptr inbounds %struct.RenderResult, ptr %2, i64 0, i32 12
  %52 = call ptr @BLI_findlink(ptr noundef nonnull %51, i32 noundef %50) #8
  %53 = sext i32 %50 to i64
  %54 = inttoptr i64 %53 to ptr
  store ptr %54, ptr getelementptr inbounds ([3 x ptr], ptr @uiblock_layer_pass_buttons.rnd_pt, i64 0, i64 2), align 16, !tbaa !34
  %55 = icmp eq ptr %52, null
  %56 = getelementptr inbounds %struct.RenderLayer, ptr %52, i64 0, i32 2
  %57 = select i1 %48, ptr %44, ptr @.str.8
  %58 = select i1 %55, ptr %57, ptr %56
  %59 = trunc i32 %13 to i16
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %61 = call ptr @uiDefMenuBut(ptr noundef %8, ptr noundef nonnull @ui_imageuser_layer_menu, ptr noundef nonnull @uiblock_layer_pass_buttons.rnd_pt, ptr noundef nonnull %58, i32 noundef 0, i32 noundef 0, i16 noundef signext %59, i16 noundef signext %60, ptr noundef nonnull @.str.87) #8
  call void @uiButSetFunc(ptr noundef %61, ptr noundef nonnull @image_multi_cb, ptr noundef nonnull %2, ptr noundef %3) #8
  call void @uiButSetMenuFromPulldown(ptr noundef %61) #8
  br i1 %55, label %67, label %62

62:                                               ; preds = %43
  %63 = getelementptr inbounds %struct.RenderLayer, ptr %52, i64 0, i32 11
  %64 = load ptr, ptr %63, align 8, !tbaa !114
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, ptr null, ptr @.str.93
  br label %67

67:                                               ; preds = %43, %62
  %68 = phi ptr [ @.str.93, %43 ], [ %66, %62 ]
  br i1 %55, label %78, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.RenderLayer, ptr %52, i64 0, i32 18
  %71 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 11
  %72 = load i16, ptr %71, align 8, !tbaa !116
  %73 = sext i16 %72 to i32
  %74 = icmp ne ptr %68, null
  %75 = sext i1 %74 to i32
  %76 = add nsw i32 %73, %75
  %77 = call ptr @BLI_findlink(ptr noundef nonnull %70, i32 noundef %76) #8
  br label %78

78:                                               ; preds = %67, %69
  %79 = phi ptr [ %77, %69 ], [ null, %67 ]
  %80 = icmp eq ptr %79, null
  %81 = getelementptr inbounds %struct.RenderPass, ptr %79, i64 0, i32 4
  %82 = icmp eq ptr %68, null
  %83 = select i1 %82, ptr @.str.8, ptr %68
  %84 = select i1 %80, ptr %83, ptr %81
  %85 = trunc i32 %14 to i16
  %86 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %87 = call ptr @uiDefMenuBut(ptr noundef %8, ptr noundef nonnull @ui_imageuser_pass_menu, ptr noundef nonnull @uiblock_layer_pass_buttons.rnd_pt, ptr noundef nonnull %84, i32 noundef 0, i32 noundef 0, i16 noundef signext %85, i16 noundef signext %86, ptr noundef nonnull @.str.88) #8
  call void @uiButSetFunc(ptr noundef %87, ptr noundef nonnull @image_multi_cb, ptr noundef nonnull %2, ptr noundef %3) #8
  call void @uiButSetMenuFromPulldown(ptr noundef %87) #8
  br label %88

88:                                               ; preds = %78, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @image_buttons_register(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str.58) #8
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %4, ptr noundef nonnull align 1 dereferenceable(17) @.str.59, i64 17, i1 false) #8
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %5, ptr noundef nonnull align 1 dereferenceable(14) @.str.57, i64 14, i1 false) #8
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 11
  store ptr @ED_gpencil_panel_standard_header, ptr %7, align 8, !tbaa !117
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @ED_gpencil_panel_standard, ptr %8, align 8, !tbaa !120
  %9 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 6
  %10 = tail call i64 @BLI_strlen_utf8(ptr noundef nonnull @.str.57) #8
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef nonnull @.str.57, i64 noundef %10) #8
  %12 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %3) #8
  ret void
}

declare void @ED_gpencil_panel_standard_header(ptr noundef, ptr noundef) #3

declare void @ED_gpencil_panel_standard(ptr noundef, ptr noundef) #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @BLI_strlen_utf8(ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMAGE_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.61, ptr %0, align 8, !tbaa !121
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %3, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_properties_toggle_exec, ptr %4, align 8, !tbaa !125
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_image_active, ptr %5, align 8, !tbaa !126
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !127
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_properties_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %4 = tail call ptr @image_has_buttons_region(ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #8
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

declare i32 @ED_operator_image_active(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMAGE_OT_toolshelf(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !121
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %3, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @image_scopes_toggle_exec, ptr %4, align 8, !tbaa !125
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_image_active, ptr %5, align 8, !tbaa !126
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !127
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_scopes_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %4 = tail call ptr @image_has_tools_region(ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #8
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_last_slash(ptr noundef) local_unnamed_addr #3

declare i32 @BKE_image_user_frame_get(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @image_multi_declay_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.ImageUser, ptr %2, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !113
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = add nsw i16 %5, -1
  store i16 %8, ptr %4, align 2, !tbaa !113
  %9 = tail call ptr @BKE_image_multilayer_index(ptr noundef %1, ptr noundef %2) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 169279488, ptr noundef null) #8
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @image_multi_inclay_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %5 = tail call i32 @BLI_countlist(ptr noundef nonnull %4) #8
  %6 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %3
  %14 = add nsw i32 %5, 1
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ %5, %9 ]
  %17 = getelementptr inbounds %struct.ImageUser, ptr %2, i64 0, i32 10
  %18 = load i16, ptr %17, align 2, !tbaa !113
  %19 = sext i16 %18 to i32
  %20 = add nsw i32 %16, -1
  %21 = icmp sgt i32 %20, %19
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = add i16 %18, 1
  store i16 %23, ptr %17, align 2, !tbaa !113
  %24 = tail call ptr @BKE_image_multilayer_index(ptr noundef %1, ptr noundef %2) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 169279488, ptr noundef null) #8
  br label %25

25:                                               ; preds = %22, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @image_multi_decpass_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.ImageUser, ptr %2, i64 0, i32 11
  %5 = load i16, ptr %4, align 8, !tbaa !116
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = add nsw i16 %5, -1
  store i16 %8, ptr %4, align 8, !tbaa !116
  %9 = tail call ptr @BKE_image_multilayer_index(ptr noundef %1, ptr noundef %2) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 169279488, ptr noundef null) #8
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @image_multi_incpass_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %5 = getelementptr inbounds %struct.ImageUser, ptr %2, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !113
  %7 = sext i16 %6 to i32
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %7) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.RenderLayer, ptr %8, i64 0, i32 18
  %12 = tail call i32 @BLI_countlist(ptr noundef nonnull %11) #8
  %13 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16, %10
  %21 = add nsw i32 %12, 1
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %21, %20 ], [ %12, %16 ]
  %24 = getelementptr inbounds %struct.ImageUser, ptr %2, i64 0, i32 11
  %25 = load i16, ptr %24, align 8, !tbaa !116
  %26 = sext i16 %25 to i32
  %27 = add nsw i32 %23, -1
  %28 = icmp sgt i32 %27, %26
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = add i16 %25, 1
  store i16 %30, ptr %24, align 8, !tbaa !116
  %31 = tail call ptr @BKE_image_multilayer_index(ptr noundef %1, ptr noundef %2) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 169279488, ptr noundef null) #8
  br label %32

32:                                               ; preds = %22, %29, %3
  ret void
}

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_image_multilayer_index(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uiDefMenuBut(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @ui_imageuser_slot_menu(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @uiLayoutGetBlock(ptr noundef %1) #8
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %7 = mul i16 %6, 5
  %8 = tail call ptr @uiDefBut(ptr noundef %5, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.89, i32 noundef 0, i32 noundef 0, i16 noundef signext %7, i16 noundef signext %6, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.8) #8
  tail call void @uiItemS(ptr noundef %1) #8
  %9 = getelementptr inbounds %struct.Image, ptr %2, i64 0, i32 7
  br label %10

10:                                               ; preds = %3, %20
  %11 = phi i64 [ 7, %3 ], [ %26, %20 ]
  %12 = phi i32 [ 8, %3 ], [ %28, %20 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %13 = getelementptr inbounds %struct.Image, ptr %2, i64 0, i32 39, i64 %11
  %14 = load i8, ptr %13, align 8, !tbaa !90
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %13, i64 noundef 64) #8
  br label %20

18:                                               ; preds = %10
  %19 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.85, i32 noundef %12) #8
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %22 = mul i16 %21, 5
  %23 = trunc i64 %11 to i32
  %24 = sitofp i32 %23 to float
  %25 = call ptr @uiDefButS(ptr noundef %5, i32 noundef 10240, i32 noundef -1, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i16 noundef signext %22, i16 noundef signext %21, ptr noundef nonnull %9, float noundef %24, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  %26 = add nsw i64 %11, -1
  %27 = icmp eq i64 %11, 0
  %28 = trunc i64 %11 to i32
  br i1 %27, label %29, label %10, !llvm.loop !128

29:                                               ; preds = %20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @image_multi_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @BKE_image_multilayer_index(ptr noundef %1, ptr noundef %2) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 169279488, ptr noundef null) #8
  ret void
}

declare void @uiButSetMenuFromPulldown(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @ui_imageuser_layer_menu(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.RenderLayer, align 8
  %5 = getelementptr inbounds %struct.RenderLayer, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.RenderLayer, ptr %4, i64 0, i32 2
  %7 = tail call ptr @uiLayoutGetBlock(ptr noundef %1) #8
  %8 = load ptr, ptr %2, align 8, !tbaa !34
  %9 = getelementptr inbounds ptr, ptr %2, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  %12 = tail call ptr @BKE_image_acquire_renderresult(ptr noundef %11, ptr noundef %8) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %3
  tail call void @uiBlockSetCurLayout(ptr noundef %7, ptr noundef %1) #8
  %15 = tail call ptr @uiLayoutColumn(ptr noundef %1, i32 noundef 0) #8
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %17 = mul i16 %16, 5
  %18 = tail call ptr @uiDefBut(ptr noundef %7, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.92, i32 noundef 0, i32 noundef 0, i16 noundef signext %17, i16 noundef signext %16, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.8) #8
  tail call void @uiItemS(ptr noundef %1) #8
  %19 = getelementptr inbounds %struct.RenderResult, ptr %12, i64 0, i32 12
  %20 = tail call i32 @BLI_countlist(ptr noundef nonnull %19) #8
  %21 = add nsw i32 %20, -1
  %22 = getelementptr inbounds %struct.RenderResult, ptr %12, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.RenderResult, ptr %12, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !112
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr null, ptr @.str.91
  br label %30

30:                                               ; preds = %14, %25
  %31 = phi ptr [ @.str.90, %14 ], [ %29, %25 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %31, i64 noundef 74) #8
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %20, %33 ], [ %21, %30 ]
  %37 = getelementptr inbounds %struct.RenderResult, ptr %12, i64 0, i32 12, i32 1
  %38 = getelementptr inbounds %struct.ImageUser, ptr %10, i64 0, i32 10
  br label %39

39:                                               ; preds = %47, %35
  %40 = phi ptr [ %37, %35 ], [ %50, %47 ]
  %41 = phi ptr [ %31, %35 ], [ %48, %47 ]
  %42 = phi i32 [ %36, %35 ], [ %55, %47 ]
  %43 = load ptr, ptr %40, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.RenderLayer, ptr %43, i64 0, i32 1
  %45 = getelementptr inbounds %struct.RenderLayer, ptr %43, i64 0, i32 2
  %46 = icmp eq ptr %43, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %56, %39
  %48 = phi ptr [ %41, %39 ], [ null, %56 ]
  %49 = phi ptr [ %45, %39 ], [ %6, %56 ]
  %50 = phi ptr [ %44, %39 ], [ %5, %56 ]
  %51 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %52 = mul i16 %51, 5
  %53 = sitofp i32 %42 to float
  %54 = call ptr @uiDefButS(ptr noundef %7, i32 noundef 10240, i32 noundef -1, ptr noundef nonnull %49, i32 noundef 0, i32 noundef 0, i16 noundef signext %52, i16 noundef signext %51, ptr noundef nonnull %38, float noundef %53, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.8) #8
  %55 = add nsw i32 %42, -1
  br label %39, !llvm.loop !130

56:                                               ; preds = %39
  %57 = icmp eq ptr %41, null
  br i1 %57, label %58, label %47

58:                                               ; preds = %56
  call void @BKE_image_release_renderresult(ptr noundef %11, ptr noundef %8) #8
  br label %59

59:                                               ; preds = %3, %58
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ui_imageuser_pass_menu(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.RenderPass, align 8
  %5 = tail call ptr @uiLayoutGetBlock(ptr noundef %1) #8
  %6 = load ptr, ptr %2, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %2, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds ptr, ptr %2, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = load ptr, ptr %8, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %12 = tail call ptr @BKE_image_acquire_renderresult(ptr noundef %11, ptr noundef %6) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %68, label %14

14:                                               ; preds = %3
  %15 = ptrtoint ptr %10 to i64
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.RenderResult, ptr %12, i64 0, i32 12
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %17, i32 noundef %16) #8
  tail call void @uiBlockSetCurLayout(ptr noundef %5, ptr noundef %1) #8
  %19 = tail call ptr @uiLayoutColumn(ptr noundef %1, i32 noundef 0) #8
  %20 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %21 = mul i16 %20, 5
  %22 = tail call ptr @uiDefBut(ptr noundef %5, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.94, i32 noundef 0, i32 noundef 0, i16 noundef signext %21, i16 noundef signext %20, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.8) #8
  tail call void @uiItemS(ptr noundef %1) #8
  %23 = icmp eq ptr %18, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 18
  %26 = tail call i32 @BLI_countlist(ptr noundef nonnull %25) #8
  br label %27

27:                                               ; preds = %14, %24
  %28 = phi i32 [ %26, %24 ], [ 0, %14 ]
  %29 = add nsw i32 %28, -1
  br i1 %23, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !114
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr null, ptr @.str.93
  br label %35

35:                                               ; preds = %27, %30
  %36 = phi ptr [ @.str.93, %27 ], [ %34, %30 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.RenderPass, ptr %4, i64 0, i32 4
  %40 = call ptr @BLI_strncpy(ptr noundef nonnull %39, ptr noundef nonnull %36, i64 noundef 64) #8
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %28, %38 ], [ %29, %35 ]
  br i1 %23, label %46, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.RenderLayer, ptr %18, i64 0, i32 18, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !131
  br label %46

46:                                               ; preds = %41, %43
  %47 = phi ptr [ %45, %43 ], [ null, %41 ]
  %48 = getelementptr inbounds %struct.ImageUser, ptr %8, i64 0, i32 11
  br label %49

49:                                               ; preds = %54, %46
  %50 = phi ptr [ %47, %46 ], [ %63, %54 ]
  %51 = phi ptr [ %36, %46 ], [ %56, %54 ]
  %52 = phi i32 [ %42, %46 ], [ %64, %54 ]
  %53 = icmp eq ptr %50, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %65, %49
  %55 = phi ptr [ %50, %49 ], [ %4, %65 ]
  %56 = phi ptr [ %51, %49 ], [ null, %65 ]
  %57 = getelementptr inbounds %struct.RenderPass, ptr %55, i64 0, i32 4
  %58 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !105
  %59 = mul i16 %58, 5
  %60 = sitofp i32 %52 to float
  %61 = call ptr @uiDefButS(ptr noundef %5, i32 noundef 10240, i32 noundef -1, ptr noundef nonnull %57, i32 noundef 0, i32 noundef 0, i16 noundef signext %59, i16 noundef signext %58, ptr noundef nonnull %48, float noundef %60, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str.8) #8
  %62 = getelementptr inbounds %struct.RenderPass, ptr %55, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !132
  %64 = add nsw i32 %52, -1
  br label %49, !llvm.loop !134

65:                                               ; preds = %49
  %66 = icmp eq ptr %51, null
  br i1 %66, label %67, label %54

67:                                               ; preds = %65
  call void @BKE_image_release_renderresult(ptr noundef %11, ptr noundef %6) #8
  br label %68

68:                                               ; preds = %3, %67
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #8
  ret void
}

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiDefButS(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @uiBlockSetCurLayout(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare ptr @image_has_buttons_region(ptr noundef) local_unnamed_addr #3

declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @image_has_tools_region(ptr noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, i64 172}
!39 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !36, i64 188, !42, i64 200, !42, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !36, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !35, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !35, i64 456}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"float", !36, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!39, !40, i64 168}
!46 = !{!39, !35, i64 248}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !35, i64 16}
!51 = !{!"PointerRNA", !52, i64 0, !35, i64 8, !35, i64 16}
!52 = !{!"", !35, i64 0}
!53 = !{!51, !35, i64 8}
!54 = !{!55, !40, i64 680}
!55 = !{!"Scene", !56, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !42, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !57, i64 280, !65, i64 4264, !42, i64 4296, !42, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !42, i64 4384, !66, i64 4400, !67, i64 4416, !70, i64 4600, !35, i64 4608, !71, i64 4616, !35, i64 4640, !72, i64 4648, !72, i64 4656, !59, i64 4664, !60, i64 4824, !73, i64 4888, !35, i64 4952}
!56 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!57 = !{!"RenderData", !58, i64 0, !35, i64 248, !35, i64 256, !61, i64 264, !62, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !43, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !44, i64 544, !44, i64 560, !63, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !40, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !43, i64 660, !43, i64 664, !41, i64 668, !41, i64 670, !43, i64 672, !43, i64 676, !36, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !43, i64 2528, !43, i64 2532, !41, i64 2536, !41, i64 2538, !43, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !43, i64 2560, !43, i64 2564, !35, i64 2568, !40, i64 2576, !43, i64 2580, !36, i64 2584, !64, i64 2616, !40, i64 3976, !40, i64 3980}
!58 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !43, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !59, i64 24, !60, i64 184}
!59 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !43, i64 136, !43, i64 140, !35, i64 144, !35, i64 152}
!60 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!61 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!62 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !43, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!63 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!64 = !{!"BakeData", !58, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !43, i64 1280, !43, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!65 = !{!"AudioData", !40, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !43, i64 24, !43, i64 28}
!66 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!67 = !{!"GameData", !66, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !68, i64 40, !41, i64 64, !41, i64 66, !43, i64 68, !69, i64 72, !43, i64 128, !43, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!68 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !43, i64 8, !43, i64 12, !35, i64 16}
!69 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !40, i64 40, !43, i64 44, !43, i64 48, !41, i64 52, !41, i64 54}
!70 = !{!"UnitSettings", !43, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!71 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!72 = !{!"long", !36, i64 0}
!73 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!74 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!75 = !{!76, !35, i64 24}
!76 = !{!"RNAUpdateCb", !51, i64 0, !35, i64 24, !35, i64 32}
!77 = !{!76, !35, i64 32}
!78 = !{!79, !41, i64 1248}
!79 = !{!"Image", !56, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !40, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !40, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !43, i64 1296, !40, i64 1300, !41, i64 1304, !41, i64 1306, !40, i64 1308, !40, i64 1312, !36, i64 1316, !36, i64 1317, !41, i64 1318, !36, i64 1320, !43, i64 1336, !43, i64 1340, !73, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!80 = !{!79, !41, i64 1250}
!81 = !{!79, !35, i64 1280}
!82 = !{!79, !35, i64 1168}
!83 = !{!84, !40, i64 312}
!84 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !43, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !63, i64 2436, !85, i64 2456}
!85 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!86 = !{!87, !40, i64 8}
!87 = !{!"ImageUser", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !40, i64 36}
!88 = !{!79, !36, i64 1316}
!89 = !{!87, !36, i64 26}
!90 = !{!36, !36, i64 0}
!91 = !{!79, !35, i64 1160}
!92 = !{!84, !40, i64 16}
!93 = !{!84, !40, i64 20}
!94 = !{!84, !35, i64 48}
!95 = !{!84, !40, i64 28}
!96 = !{!84, !36, i64 24}
!97 = !{!84, !35, i64 96}
!98 = !{!84, !35, i64 104}
!99 = !{!100, !43, i64 10908}
!100 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !41, i64 8496, !41, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !40, i64 8912, !40, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !43, i64 8956, !43, i64 8960, !40, i64 8964, !41, i64 8968, !41, i64 8970, !43, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !101, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !43, i64 10904, !43, i64 10908, !40, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !102, i64 10928}
!101 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!102 = !{!"WalkNavigation", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !41, i64 24, !36, i64 26}
!103 = !{!100, !40, i64 8524}
!104 = !{!42, !35, i64 0}
!105 = !{!100, !41, i64 8948}
!106 = !{!51, !35, i64 0}
!107 = !{!58, !36, i64 0}
!108 = !{!41, !41, i64 0}
!109 = !{!58, !36, i64 3}
!110 = !{!111, !35, i64 40}
!111 = !{!"RenderResult", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !41, i64 24, !41, i64 26, !35, i64 32, !35, i64 40, !35, i64 48, !63, i64 56, !40, i64 72, !40, i64 76, !42, i64 80, !63, i64 96, !35, i64 112, !40, i64 120, !40, i64 124, !40, i64 128, !35, i64 136}
!112 = !{!111, !35, i64 32}
!113 = !{!87, !41, i64 30}
!114 = !{!115, !35, i64 136}
!115 = !{!"RenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !35, i64 176, !42, i64 184}
!116 = !{!87, !41, i64 32}
!117 = !{!118, !35, i64 360}
!118 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !40, i64 336, !40, i64 340, !40, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !119, i64 376}
!119 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!120 = !{!118, !35, i64 368}
!121 = !{!122, !35, i64 0}
!122 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !42, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !119, i64 152, !41, i64 184}
!123 = !{!122, !35, i64 8}
!124 = !{!122, !35, i64 24}
!125 = !{!122, !35, i64 32}
!126 = !{!122, !35, i64 72}
!127 = !{!122, !41, i64 184}
!128 = distinct !{!128, !48, !49}
!129 = !{!87, !35, i64 0}
!130 = distinct !{!130, !48, !49}
!131 = !{!115, !35, i64 192}
!132 = !{!133, !35, i64 8}
!133 = !{!"RenderPass", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 88, !35, i64 96, !40, i64 104, !40, i64 108, !40, i64 112}
!134 = distinct !{!134, !48, !49}
