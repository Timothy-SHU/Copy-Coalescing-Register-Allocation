; ModuleID = 'blender/source/blender/imbuf/intern/colormanagement.c'
source_filename = "blender/source/blender/imbuf/intern/colormanagement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.global_glsl_state = type { ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], float, float, ptr, ptr, i8, i32, %struct.OCIO_CurveMappingSettings, ptr, ptr }
%struct.OCIO_CurveMappingSettings = type { ptr, i32, [4 x i32], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [3 x float], [3 x float], i64 }
%struct.ImFileType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ColorManagedDisplay = type { ptr, ptr, i32, [64 x i8], %struct.ListBase, ptr, ptr }
%struct.ColorManagedView = type { ptr, ptr, i32, [64 x i8] }
%struct.ColorManagedLook = type { ptr, ptr, i32, [64 x i8], [64 x i8], i8 }
%struct.ColorSpace = type { ptr, ptr, i32, [64 x i8], [512 x i8], ptr, ptr, i8, i8 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ColormanageCache = type { ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ColormanageProcessor = type { ptr, ptr, i8 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.ProcessorTransformInit = type { ptr, ptr, i32, i32, i32, i8 }
%struct.ColormanageCacheKey = type { i32, i32 }
%struct.ColormanageCacheViewSettings = type { i32, i32, i32, float, float, float, ptr }
%struct.ColormanageCacheDisplaySettings = type { i32 }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.ColormnaageCacheData = type { i32, i32, float, float, float, ptr, i32 }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.CurveMapPoint = type { float, float, i16, i16 }
%struct.DisplayBufferInitData = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.DisplayBufferThread = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, float, i8, ptr, ptr }
%struct.ProcessorTransformThread = type { ptr, ptr, i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [16 x i8] c"colormanagement\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"config.ocio\00", align 1
@global_tot_display = internal unnamed_addr global i32 0, align 4
@global_tot_view = internal unnamed_addr global i32 0, align 4
@global_glsl_state = internal global %struct.global_glsl_state zeroinitializer, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@global_role_default_byte = internal global [64 x i8] zeroinitializer, align 16
@global_role_scene_linear = internal global [64 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sequencer\00", align 1
@global_role_default_sequencer = internal global [64 x i8] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@global_role_color_picking = internal global [64 x i8] zeroinitializer, align 16
@global_role_texture_painting = internal global [64 x i8] zeroinitializer, align 16
@global_role_default_float = internal global [64 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [31 x i8] c"Unknown role was passed to %s\0A\00", align 1
@__func__.IMB_colormanagement_role_colorspace_name_get = private unnamed_addr constant [45 x i8] c"IMB_colormanagement_role_colorspace_name_get\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"%s: perform conversion from unknown color space\0A\00", align 1
@__func__.IMB_colormanagement_colorspace_to_scene_linear_v3 = private unnamed_addr constant [50 x i8] c"IMB_colormanagement_colorspace_to_scene_linear_v3\00", align 1
@__func__.IMB_colormanagement_scene_linear_to_colorspace_v3 = private unnamed_addr constant [50 x i8] c"IMB_colormanagement_scene_linear_to_colorspace_v3\00", align 1
@__func__.IMB_colormanagement_colorspace_to_scene_linear_v4 = private unnamed_addr constant [50 x i8] c"IMB_colormanagement_colorspace_to_scene_linear_v4\00", align 1
@__func__.IMB_colormanagement_colorspace_to_scene_linear = private unnamed_addr constant [47 x i8] c"IMB_colormanagement_colorspace_to_scene_linear\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@IMB_FILE_TYPES = external global [0 x %struct.ImFileType], align 8
@IMB_FILE_TYPES_LAST = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"byte_buffer_make_display_space\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [27 x i8] c"imbuf display_buffer_flags\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"imbuf display buffer\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"display transform temp buffer\00", align 1
@global_displays = internal global %struct.ListBase zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"ColorManagedDisplay\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"ColorManagedView\00", align 1
@global_views = internal global %struct.ListBase zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@global_colorspaces = internal global %struct.ListBase zeroinitializer, align 8
@global_tot_colorspace = internal unnamed_addr global i32 0, align 4
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@global_tot_looks = internal unnamed_addr global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"ColorManagedLook\00", align 1
@global_looks = internal global %struct.ListBase zeroinitializer, align 8
@.str.20 = private unnamed_addr constant [26 x i8] c"colormanagement processor\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"scene_linear\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"color_picking\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"texture_paint\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"default_sequencer\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"default_byte\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"default_float\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"Color management: Error could not find role %s role.\0A\00", align 1
@.str.28 = private unnamed_addr constant [81 x i8] c"Color management: display \22%s\22 used by %s not found, setting to default (\22%s\22).\0A\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"Color management: %s view \22%s\22 not found, setting default \22%s\22.\0A\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"Color management: %s look \22%s\22 not found, setting default \22%s\22.\0A\00", align 1
@.str.31 = private unnamed_addr constant [75 x i8] c"Color management: %s colorspace \22%s\22 not found, will use default instead.\0A\00", align 1
@processor_lock = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [31 x i8] c"color conversion linear buffer\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"color manage cache imbuf data\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"imbuf colormanage cache\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"colormanage cache\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"display buffer for dither\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Color management: using fallback mode for management\00", align 1
@str.37 = private unnamed_addr constant [79 x i8] c"Color management: no displays/views in the config, using fallback mode instead\00", align 1
@switch.table.IMB_colormanagment_colorspace_from_ibuf_ftype = private unnamed_addr constant [6 x ptr] [ptr @global_role_scene_linear, ptr @global_role_color_picking, ptr @global_role_texture_painting, ptr @global_role_default_sequencer, ptr @global_role_default_byte, ptr @global_role_default_float], align 8

; Function Attrs: nounwind uwtable
define dso_local void @colormanagement_init() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #15
  tail call void @OCIO_init() #15
  %2 = tail call ptr @BLI_get_folder(i32 noundef 2, ptr noundef nonnull @.str) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  call void @BLI_join_dirfile(ptr noundef nonnull %1, i64 noundef 1024, ptr noundef nonnull %2, ptr noundef nonnull @.str.1) #15
  %5 = call ptr @OCIO_configCreateFromFile(ptr noundef nonnull %1) #15
  br label %6

6:                                                ; preds = %0, %4
  %7 = phi ptr [ %5, %4 ], [ null, %0 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %11 = call ptr @OCIO_configCreateFallback() #15
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %11, %9 ], [ %7, %6 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @OCIO_setCurrentConfig(ptr noundef nonnull %13) #15
  call fastcc void @colormanage_load_config(ptr noundef nonnull %13)
  call void @OCIO_configRelease(ptr noundef nonnull %13) #15
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, ptr @global_tot_display, align 4, !tbaa !34
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr @global_tot_view, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = call i32 @puts(ptr nonnull dereferenceable(1) @str.37)
  call fastcc void @colormanage_free_config()
  %24 = call ptr @OCIO_configCreateFallback() #15
  call fastcc void @colormanage_load_config(ptr noundef %24)
  br label %25

25:                                               ; preds = %16, %22
  call void @BLI_init_srgb_conversion() #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @OCIO_init() local_unnamed_addr #2

declare ptr @BLI_get_folder(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_configCreateFromFile(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @OCIO_configCreateFallback() local_unnamed_addr #2

declare void @OCIO_setCurrentConfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @colormanage_load_config(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef nonnull @.str.21) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @OCIO_colorSpaceGetName(ptr noundef nonnull %2) #15
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull @global_role_scene_linear, ptr noundef %5, i64 noundef 64) #15
  tail call void @OCIO_colorSpaceRelease(ptr noundef nonnull %2) #15
  br label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull @.str.21)
  br label %9

9:                                                ; preds = %4, %7
  %10 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef nonnull @.str.22) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @OCIO_colorSpaceGetName(ptr noundef nonnull %10) #15
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull @global_role_color_picking, ptr noundef %13, i64 noundef 64) #15
  tail call void @OCIO_colorSpaceRelease(ptr noundef nonnull %10) #15
  br label %17

15:                                               ; preds = %9
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull @.str.22)
  br label %17

17:                                               ; preds = %12, %15
  %18 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef nonnull @.str.23) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @OCIO_colorSpaceGetName(ptr noundef nonnull %18) #15
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull @global_role_texture_painting, ptr noundef %21, i64 noundef 64) #15
  tail call void @OCIO_colorSpaceRelease(ptr noundef nonnull %18) #15
  br label %25

23:                                               ; preds = %17
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull @.str.23)
  br label %25

25:                                               ; preds = %20, %23
  %26 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef nonnull @.str.24) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef nonnull @.str.21) #15
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %29, %28 ], [ %26, %25 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @OCIO_colorSpaceGetName(ptr noundef nonnull %31) #15
  %35 = tail call ptr @BLI_strncpy(ptr noundef nonnull @global_role_default_sequencer, ptr noundef %34, i64 noundef 64) #15
  tail call void @OCIO_colorSpaceRelease(ptr noundef nonnull %31) #15
  br label %38

36:                                               ; preds = %30
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull @.str.24)
  br label %38

38:                                               ; preds = %33, %36
  %39 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef nonnull @.str.25) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef nonnull @.str.23) #15
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi ptr [ %42, %41 ], [ %39, %38 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call ptr @OCIO_colorSpaceGetName(ptr noundef nonnull %44) #15
  %48 = tail call ptr @BLI_strncpy(ptr noundef nonnull @global_role_default_byte, ptr noundef %47, i64 noundef 64) #15
  tail call void @OCIO_colorSpaceRelease(ptr noundef nonnull %44) #15
  br label %51

49:                                               ; preds = %43
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull @.str.25)
  br label %51

51:                                               ; preds = %46, %49
  %52 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef nonnull @.str.26) #15
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef nonnull @.str.21) #15
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi ptr [ %55, %54 ], [ %52, %51 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = tail call ptr @OCIO_colorSpaceGetName(ptr noundef nonnull %57) #15
  %61 = tail call ptr @BLI_strncpy(ptr noundef nonnull @global_role_default_float, ptr noundef %60, i64 noundef 64) #15
  tail call void @OCIO_colorSpaceRelease(ptr noundef nonnull %57) #15
  br label %64

62:                                               ; preds = %56
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull @.str.26)
  br label %64

64:                                               ; preds = %59, %62
  %65 = tail call i32 @OCIO_configGetNumColorSpaces(ptr noundef %0) #15
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64, %67
  %68 = phi i32 [ %77, %67 ], [ 0, %64 ]
  %69 = tail call ptr @OCIO_configGetColorSpaceNameByIndex(ptr noundef %0, i32 noundef %68) #15
  %70 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef %69) #15
  %71 = tail call ptr @OCIO_colorSpaceGetDescription(ptr noundef %70) #15
  %72 = tail call i32 @OCIO_colorSpaceIsInvertible(ptr noundef %70) #15
  %73 = trunc i32 %72 to i8
  %74 = tail call i32 @OCIO_colorSpaceIsData(ptr noundef %70) #15
  %75 = trunc i32 %74 to i8
  %76 = tail call ptr @colormanage_colorspace_add(ptr noundef %69, ptr noundef %71, i8 noundef zeroext %73, i8 noundef zeroext %75)
  tail call void @OCIO_colorSpaceRelease(ptr noundef %70) #15
  %77 = add nuw nsw i32 %68, 1
  %78 = icmp eq i32 %77, %65
  br i1 %78, label %79, label %67, !llvm.loop !38

79:                                               ; preds = %67, %64
  %80 = tail call i32 @OCIO_configGetNumDisplays(ptr noundef %0) #15
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %134

82:                                               ; preds = %79, %131
  %83 = phi i32 [ %132, %131 ], [ 0, %79 ]
  %84 = tail call ptr @OCIO_configGetDisplay(ptr noundef %0, i32 noundef %83) #15
  %85 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @global_displays, i64 0, i32 1), align 8, !tbaa !41
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %85, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !44
  %90 = add nsw i32 %89, 1
  br label %91

91:                                               ; preds = %82, %87
  %92 = phi i32 [ %90, %87 ], [ 1, %82 ]
  %93 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %94 = tail call ptr %93(i64 noundef 120, ptr noundef nonnull @.str.14) #15
  %95 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %94, i64 0, i32 2
  store i32 %92, ptr %95, align 8, !tbaa !44
  %96 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %94, i64 0, i32 3
  %97 = tail call ptr @BLI_strncpy(ptr noundef nonnull %96, ptr noundef %84, i64 noundef 64) #15
  tail call void @BLI_addtail(ptr noundef nonnull @global_displays, ptr noundef %94) #15
  %98 = tail call i32 @OCIO_configGetNumViews(ptr noundef %0, ptr noundef %84) #15
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %131

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %94, i64 0, i32 4
  br label %102

102:                                              ; preds = %100, %126
  %103 = phi i32 [ 0, %100 ], [ %129, %126 ]
  %104 = tail call ptr @OCIO_configGetView(ptr noundef %0, ptr noundef %84, i32 noundef %103) #15
  br label %105

105:                                              ; preds = %109, %102
  %106 = phi ptr [ @global_views, %102 ], [ %107, %109 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ColorManagedView, ptr %107, i64 0, i32 3
  %111 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %110, ptr noundef nonnull dereferenceable(1) %104) #16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %105, !llvm.loop !47

113:                                              ; preds = %105, %109
  %114 = phi ptr [ %107, %109 ], [ null, %105 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load i32, ptr @global_tot_view, align 4, !tbaa !34
  %118 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %119 = tail call ptr %118(i64 noundef 88, ptr noundef nonnull @.str.16) #15
  %120 = add nsw i32 %117, 1
  %121 = getelementptr inbounds %struct.ColorManagedView, ptr %119, i64 0, i32 2
  store i32 %120, ptr %121, align 8, !tbaa !48
  %122 = getelementptr inbounds %struct.ColorManagedView, ptr %119, i64 0, i32 3
  %123 = tail call ptr @BLI_strncpy(ptr noundef nonnull %122, ptr noundef %104, i64 noundef 64) #15
  tail call void @BLI_addtail(ptr noundef nonnull @global_views, ptr noundef %119) #15
  %124 = load i32, ptr @global_tot_view, align 4, !tbaa !34
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr @global_tot_view, align 4, !tbaa !34
  br label %126

126:                                              ; preds = %116, %113
  %127 = phi ptr [ %114, %113 ], [ %119, %116 ]
  %128 = tail call ptr @BLI_genericNodeN(ptr noundef %127) #15
  tail call void @BLI_addtail(ptr noundef nonnull %101, ptr noundef %128) #15
  %129 = add nuw nsw i32 %103, 1
  %130 = icmp eq i32 %129, %98
  br i1 %130, label %131, label %102, !llvm.loop !50

131:                                              ; preds = %126, %91
  %132 = add nuw nsw i32 %83, 1
  %133 = icmp eq i32 %132, %80
  br i1 %133, label %134, label %82, !llvm.loop !51

134:                                              ; preds = %131, %79
  store i32 %80, ptr @global_tot_display, align 4, !tbaa !34
  %135 = tail call i32 @OCIO_configGetNumLooks(ptr noundef %0) #15
  %136 = load i32, ptr @global_tot_looks, align 4, !tbaa !34
  %137 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %138 = tail call ptr %137(i64 noundef 152, ptr noundef nonnull @.str.19) #15
  %139 = add nsw i32 %136, 1
  %140 = getelementptr inbounds %struct.ColorManagedLook, ptr %138, i64 0, i32 2
  store i32 %139, ptr %140, align 8, !tbaa !52
  %141 = getelementptr inbounds %struct.ColorManagedLook, ptr %138, i64 0, i32 3
  %142 = tail call ptr @BLI_strncpy(ptr noundef nonnull %141, ptr noundef nonnull @.str.15, i64 noundef 64) #15
  %143 = getelementptr inbounds %struct.ColorManagedLook, ptr %138, i64 0, i32 4
  %144 = tail call ptr @BLI_strncpy(ptr noundef nonnull %143, ptr noundef nonnull @.str.18, i64 noundef 64) #15
  %145 = getelementptr inbounds %struct.ColorManagedLook, ptr %138, i64 0, i32 5
  store i8 1, ptr %145, align 4, !tbaa !54
  tail call void @BLI_addtail(ptr noundef nonnull @global_looks, ptr noundef %138) #15
  %146 = load i32, ptr @global_tot_looks, align 4, !tbaa !34
  %147 = add nsw i32 %146, 1
  store i32 %147, ptr @global_tot_looks, align 4, !tbaa !34
  %148 = icmp sgt i32 %135, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %134, %149
  %150 = phi i32 [ %166, %149 ], [ 0, %134 ]
  %151 = tail call ptr @OCIO_configGetLookNameByIndex(ptr noundef %0, i32 noundef %150) #15
  %152 = tail call ptr @OCIO_configGetLook(ptr noundef %0, ptr noundef %151) #15
  %153 = tail call ptr @OCIO_lookGetProcessSpace(ptr noundef %152) #15
  tail call void @OCIO_lookRelease(ptr noundef %152) #15
  %154 = load i32, ptr @global_tot_looks, align 4, !tbaa !34
  %155 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %156 = tail call ptr %155(i64 noundef 152, ptr noundef nonnull @.str.19) #15
  %157 = add nsw i32 %154, 1
  %158 = getelementptr inbounds %struct.ColorManagedLook, ptr %156, i64 0, i32 2
  store i32 %157, ptr %158, align 8, !tbaa !52
  %159 = getelementptr inbounds %struct.ColorManagedLook, ptr %156, i64 0, i32 3
  %160 = tail call ptr @BLI_strncpy(ptr noundef nonnull %159, ptr noundef %151, i64 noundef 64) #15
  %161 = getelementptr inbounds %struct.ColorManagedLook, ptr %156, i64 0, i32 4
  %162 = tail call ptr @BLI_strncpy(ptr noundef nonnull %161, ptr noundef %153, i64 noundef 64) #15
  %163 = getelementptr inbounds %struct.ColorManagedLook, ptr %156, i64 0, i32 5
  store i8 0, ptr %163, align 4, !tbaa !54
  tail call void @BLI_addtail(ptr noundef nonnull @global_looks, ptr noundef %156) #15
  %164 = load i32, ptr @global_tot_looks, align 4, !tbaa !34
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr @global_tot_looks, align 4, !tbaa !34
  %166 = add nuw nsw i32 %150, 1
  %167 = icmp eq i32 %166, %135
  br i1 %167, label %168, label %149, !llvm.loop !55

168:                                              ; preds = %149, %134
  ret void
}

declare void @OCIO_configRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @colormanage_free_config() unnamed_addr #0 {
  %1 = load ptr, ptr @global_colorspaces, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %0, %15
  %4 = phi ptr [ %5, %15 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.ColorSpace, ptr %4, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @OCIO_processorRelease(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.ColorSpace, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @OCIO_processorRelease(ptr noundef nonnull %12) #15
  br label %15

15:                                               ; preds = %14, %10
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %16(ptr noundef nonnull %4) #15
  %17 = icmp eq ptr %5, null
  br i1 %17, label %18, label %3, !llvm.loop !61

18:                                               ; preds = %15, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @global_colorspaces, i8 0, i64 16, i1 false)
  store i32 0, ptr @global_tot_colorspace, align 4, !tbaa !34
  %19 = load ptr, ptr @global_displays, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %18, %33
  %22 = phi ptr [ %23, %33 ], [ %19, %18 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %22, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void @OCIO_processorRelease(ptr noundef nonnull %25) #15
  br label %28

28:                                               ; preds = %27, %21
  %29 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %22, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @OCIO_processorRelease(ptr noundef nonnull %30) #15
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %22, i64 0, i32 4
  tail call void @BLI_freelistN(ptr noundef nonnull %34) #15
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %35(ptr noundef nonnull %22) #15
  %36 = icmp eq ptr %23, null
  br i1 %36, label %37, label %21, !llvm.loop !65

37:                                               ; preds = %33, %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @global_displays, i8 0, i64 16, i1 false)
  store i32 0, ptr @global_tot_display, align 4, !tbaa !34
  tail call void @BLI_freelistN(ptr noundef nonnull @global_views) #15
  store i32 0, ptr @global_tot_view, align 4, !tbaa !34
  tail call void @BLI_freelistN(ptr noundef nonnull @global_looks) #15
  store i32 0, ptr @global_tot_looks, align 4, !tbaa !34
  tail call void @OCIO_exit() #15
  ret void
}

declare void @BLI_init_srgb_conversion() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @colormanagement_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @global_glsl_state, align 8, !tbaa !66
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @OCIO_processorRelease(ptr noundef nonnull %1) #15
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 7), align 8, !tbaa !71
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @curvemapping_free(ptr noundef nonnull %5) #15
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11), align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %12(ptr noundef nonnull %9) #15
  br label %13

13:                                               ; preds = %11, %8
  %14 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 12), align 8, !tbaa !73
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @OCIO_freeOGLState(ptr noundef nonnull %14) #15
  br label %17

17:                                               ; preds = %16, %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 13), align 8, !tbaa !74
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @OCIO_freeOGLState(ptr noundef nonnull %18) #15
  br label %21

21:                                               ; preds = %20, %17
  tail call fastcc void @colormanage_free_config()
  ret void
}

declare void @OCIO_processorRelease(ptr noundef) local_unnamed_addr #2

declare void @curvemapping_free(ptr noundef) local_unnamed_addr #2

declare void @OCIO_freeOGLState(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @colormanage_cache_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 36
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %6(ptr noundef nonnull %3) #15
  store ptr null, ptr %2, align 8, !tbaa !75
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 37
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ColormanageCache, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = load ptr, ptr %9, align 8, !tbaa !82
  %15 = icmp eq ptr %13, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %17(ptr noundef nonnull %13) #15
  br label %18

18:                                               ; preds = %16, %11
  %19 = icmp eq ptr %14, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @IMB_moviecache_free(ptr noundef nonnull %14) #15
  br label %21

21:                                               ; preds = %20, %18
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %23 = load ptr, ptr %8, align 8, !tbaa !79
  tail call void %22(ptr noundef %23) #15
  store ptr null, ptr %8, align 8, !tbaa !79
  br label %24

24:                                               ; preds = %21, %7
  ret void
}

declare void @IMB_moviecache_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_display_settings_from_ctx(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 44
  store ptr %6, ptr %1, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 45
  store ptr %7, ptr %2, align 8, !tbaa !46
  %8 = icmp eq ptr %5, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Image, ptr %11, i64 0, i32 10
  %15 = load i16, ptr %14, align 2, !tbaa !90
  %16 = and i16 %15, 2048
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store ptr null, ptr %1, align 8, !tbaa !46
  br label %19

19:                                               ; preds = %13, %18, %9, %3
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_colormanagement_get_display_colorspace_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @OCIO_getCurrentConfig() #15
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 3
  %5 = tail call ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %4) #15
  tail call void @OCIO_configRelease(ptr noundef %3) #15
  ret ptr %5
}

declare ptr @OCIO_getCurrentConfig() local_unnamed_addr #2

declare ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @colorspace_set_default_role(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %0, align 1, !tbaa !94
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = icmp ult i32 %2, 6
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.IMB_colormanagement_role_colorspace_name_get)
  br label %16

12:                                               ; preds = %8
  %13 = zext nneg i32 %2 to i64
  %14 = getelementptr inbounds [6 x ptr], ptr @switch.table.IMB_colormanagment_colorspace_from_ibuf_ftype, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi ptr [ null, %10 ], [ %15, %12 ]
  %18 = sext i32 %1 to i64
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef %17, i64 noundef %18) #15
  br label %20

20:                                               ; preds = %16, %5, %3
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp ult i32 %0, 6
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.IMB_colormanagement_role_colorspace_name_get)
  br label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [6 x ptr], ptr @switch.table.IMB_colormanagment_colorspace_from_ibuf_ftype, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi ptr [ null, %3 ], [ %8, %5 ]
  ret ptr %10
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @colormanage_imbuf_set_default_spaces(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_colorspaces, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorSpace, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @global_role_default_byte) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !95

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  store ptr %11, ptr %12, align 8, !tbaa !96
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @colormanage_colorspace_get_named(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_colorspaces, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorSpace, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !95

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local void @colormanage_imbuf_make_linear(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @global_colorspaces, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ColorSpace, ptr %5, i64 0, i32 3
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %3, !llvm.loop !95

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %5, %7 ], [ null, %3 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 8
  %16 = load i8, ptr %15, align 1, !tbaa !97
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %20 = load i32, ptr %19, align 8, !tbaa !98
  %21 = or i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !98
  br label %69

22:                                               ; preds = %14, %11
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !99
  %25 = icmp eq ptr %24, null
  br i1 %25, label %69, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !100
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @imb_freerectImBuf(ptr noundef %0) #15
  br label %31

31:                                               ; preds = %30, %26
  %32 = load ptr, ptr %23, align 8, !tbaa !99
  %33 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !101
  %35 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !102
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !103
  %39 = load i8, ptr %1, align 1, !tbaa !94
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %31
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @global_role_scene_linear) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %46 = tail call ptr %45(i64 noundef 24, ptr noundef nonnull @.str.20) #15
  br label %47

47:                                               ; preds = %47, %44
  %48 = phi ptr [ @global_colorspaces, %44 ], [ %49, %47 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !46, !nonnull !104, !noundef !104
  %50 = getelementptr inbounds %struct.ColorSpace, ptr %49, i64 0, i32 3
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) @global_role_scene_linear) #16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %47, !llvm.loop !95

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ColorSpace, ptr %49, i64 0, i32 8
  %55 = load i8, ptr %54, align 1, !tbaa !97
  %56 = getelementptr inbounds %struct.ColormanageProcessor, ptr %46, i64 0, i32 2
  store i8 %55, ptr %56, align 8, !tbaa !105
  %57 = tail call ptr @OCIO_getCurrentConfig() #15
  %58 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %57, ptr noundef nonnull %1, ptr noundef nonnull @global_role_scene_linear) #15
  tail call void @OCIO_configRelease(ptr noundef %57) #15
  store ptr %58, ptr %46, align 8, !tbaa !107
  tail call void @IMB_colormanagement_processor_apply(ptr noundef nonnull %46, ptr noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i8 noundef zeroext 1)
  %59 = getelementptr inbounds %struct.ColormanageProcessor, ptr %46, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !108
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  tail call void @curvemapping_free(ptr noundef nonnull %60) #15
  br label %63

63:                                               ; preds = %62, %53
  %64 = load ptr, ptr %46, align 8, !tbaa !107
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @OCIO_processorRelease(ptr noundef nonnull %64) #15
  br label %67

67:                                               ; preds = %63, %66
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %68(ptr noundef nonnull %46) #15
  br label %69

69:                                               ; preds = %67, %41, %31, %22, %18
  ret void
}

declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_transform(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = load i8, ptr %4, align 1, !tbaa !94
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %15 = tail call ptr %14(i64 noundef 24, ptr noundef nonnull @.str.20) #15
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ @global_colorspaces, %13 ], [ %18, %16 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !46, !nonnull !104, !noundef !104
  %19 = getelementptr inbounds %struct.ColorSpace, ptr %18, i64 0, i32 3
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %5) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %16, !llvm.loop !95

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ColorSpace, ptr %18, i64 0, i32 8
  %24 = load i8, ptr %23, align 1, !tbaa !97
  %25 = getelementptr inbounds %struct.ColormanageProcessor, ptr %15, i64 0, i32 2
  store i8 %24, ptr %25, align 8, !tbaa !105
  %26 = tail call ptr @OCIO_getCurrentConfig() #15
  %27 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %26, ptr noundef nonnull %4, ptr noundef %5) #15
  tail call void @OCIO_configRelease(ptr noundef %26) #15
  store ptr %27, ptr %15, align 8, !tbaa !107
  tail call void @IMB_colormanagement_processor_apply(ptr noundef nonnull %15, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %6)
  %28 = getelementptr inbounds %struct.ColormanageProcessor, ptr %15, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !108
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  tail call void @curvemapping_free(ptr noundef nonnull %29) #15
  br label %32

32:                                               ; preds = %31, %22
  %33 = load ptr, ptr %15, align 8, !tbaa !107
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @OCIO_processorRelease(ptr noundef nonnull %33) #15
  br label %36

36:                                               ; preds = %32, %35
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %37(ptr noundef nonnull %15) #15
  br label %38

38:                                               ; preds = %7, %10, %36
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_check_file_config(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @OCIO_getCurrentConfig() #15
  %3 = tail call ptr @OCIO_configGetDefaultDisplay(ptr noundef %2) #15
  tail call void @OCIO_configRelease(ptr noundef %2) #15
  %4 = load i8, ptr %3, align 1, !tbaa !94
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1, %10
  %7 = phi ptr [ %8, %10 ], [ @global_displays, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %8, i64 0, i32 3
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %3) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %6, !llvm.loop !109

14:                                               ; preds = %6, %10, %1
  %15 = phi ptr [ null, %1 ], [ %8, %10 ], [ null, %6 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %221, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %175, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %15, i64 0, i32 3
  %23 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %15, i64 0, i32 3
  br label %24

24:                                               ; preds = %21, %172
  %25 = phi ptr [ %19, %21 ], [ %173, %172 ]
  %26 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 45
  %27 = load i8, ptr %26, align 1, !tbaa !94
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24, %33
  %30 = phi ptr [ %31, %33 ], [ @global_displays, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %31, i64 0, i32 3
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %26) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %29, !llvm.loop !109

37:                                               ; preds = %29
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %26, ptr noundef nonnull @.str.4, ptr noundef nonnull %22)
  br label %39

39:                                               ; preds = %24, %37
  %40 = phi ptr [ %22, %37 ], [ %23, %24 ]
  %41 = tail call ptr @BLI_strncpy(ptr noundef nonnull %26, ptr noundef nonnull %40, i64 noundef 64) #15
  br label %42

42:                                               ; preds = %33, %39
  %43 = load ptr, ptr @global_looks, align 8, !tbaa !56
  %44 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 44, i32 3
  %45 = load i8, ptr %44, align 8, !tbaa !94
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %42, %51
  %48 = phi ptr [ %49, %51 ], [ @global_displays, %42 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %49, i64 0, i32 3
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) %26) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %47, !llvm.loop !109

55:                                               ; preds = %51, %47
  %56 = phi ptr [ %49, %51 ], [ null, %47 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %74, label %58

58:                                               ; preds = %55
  %59 = tail call ptr @OCIO_getCurrentConfig() #15
  %60 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %56, i64 0, i32 3
  %61 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %59, ptr noundef nonnull %60) #15
  tail call void @OCIO_configRelease(ptr noundef %59) #15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = load i8, ptr %61, align 1, !tbaa !94
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %63, %70
  %67 = phi ptr [ %68, %70 ], [ @global_views, %63 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !46
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ColorManagedView, ptr %68, i64 0, i32 3
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %61) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %66, !llvm.loop !47

74:                                               ; preds = %70, %66, %63, %58, %55
  %75 = phi ptr [ null, %55 ], [ null, %63 ], [ null, %58 ], [ %68, %70 ], [ null, %66 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %123, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ColorManagedView, ptr %75, i64 0, i32 3
  br label %120

79:                                               ; preds = %42, %83
  %80 = phi ptr [ %81, %83 ], [ @global_views, %42 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.ColorManagedView, ptr %81, i64 0, i32 3
  %85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) %44) #16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %123, label %79, !llvm.loop !47

87:                                               ; preds = %79, %91
  %88 = phi ptr [ %89, %91 ], [ @global_displays, %79 ]
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %89, i64 0, i32 3
  %93 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(1) %26) #16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %87, !llvm.loop !109

95:                                               ; preds = %91, %87
  %96 = phi ptr [ %89, %91 ], [ null, %87 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  %99 = tail call ptr @OCIO_getCurrentConfig() #15
  %100 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %96, i64 0, i32 3
  %101 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %99, ptr noundef nonnull %100) #15
  tail call void @OCIO_configRelease(ptr noundef %99) #15
  %102 = icmp eq ptr %101, null
  br i1 %102, label %114, label %103

103:                                              ; preds = %98
  %104 = load i8, ptr %101, align 1, !tbaa !94
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103, %110
  %107 = phi ptr [ %108, %110 ], [ @global_views, %103 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !46
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.ColorManagedView, ptr %108, i64 0, i32 3
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %111, ptr noundef nonnull dereferenceable(1) %101) #16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %106, !llvm.loop !47

114:                                              ; preds = %110, %106, %103, %98, %95
  %115 = phi ptr [ null, %95 ], [ null, %103 ], [ null, %98 ], [ %108, %110 ], [ null, %106 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.ColorManagedView, ptr %115, i64 0, i32 3
  %119 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull @.str.4, ptr noundef nonnull %44, ptr noundef nonnull %118)
  br label %120

120:                                              ; preds = %77, %117
  %121 = phi ptr [ %118, %117 ], [ %78, %77 ]
  %122 = tail call ptr @BLI_strncpy(ptr noundef nonnull %44, ptr noundef nonnull %121, i64 noundef 64) #15
  br label %123

123:                                              ; preds = %83, %120, %114, %74
  %124 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 44, i32 2
  %125 = load i8, ptr %124, align 8, !tbaa !94
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ColorManagedLook, ptr %43, i64 0, i32 3
  br label %140

129:                                              ; preds = %123, %133
  %130 = phi ptr [ %131, %133 ], [ @global_looks, %123 ]
  %131 = load ptr, ptr %130, align 8, !tbaa !46
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.ColorManagedLook, ptr %131, i64 0, i32 3
  %135 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %134, ptr noundef nonnull dereferenceable(1) %124) #16
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %129, !llvm.loop !110

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.ColorManagedLook, ptr %43, i64 0, i32 3
  %139 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull @.str.4, ptr noundef nonnull %124, ptr noundef nonnull %138)
  br label %140

140:                                              ; preds = %127, %137
  %141 = phi ptr [ %138, %137 ], [ %128, %127 ]
  %142 = tail call ptr @BLI_strncpy(ptr noundef nonnull %124, ptr noundef nonnull %141, i64 noundef 64) #15
  br label %143

143:                                              ; preds = %133, %140
  %144 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 44, i32 4
  %145 = load float, ptr %144, align 8, !tbaa !111
  %146 = fcmp oeq float %145, 0.000000e+00
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 44, i32 5
  %149 = load float, ptr %148, align 4, !tbaa !113
  %150 = fcmp oeq float %149, 0.000000e+00
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store float 0.000000e+00, ptr %144, align 8, !tbaa !111
  store float 1.000000e+00, ptr %148, align 4, !tbaa !113
  br label %152

152:                                              ; preds = %143, %147, %151
  %153 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 46
  %154 = load i8, ptr %153, align 1, !tbaa !94
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %152, %160
  %157 = phi ptr [ %158, %160 ], [ @global_colorspaces, %152 ]
  %158 = load ptr, ptr %157, align 8, !tbaa !46
  %159 = icmp eq ptr %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.ColorSpace, ptr %158, i64 0, i32 3
  %162 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %161, ptr noundef nonnull dereferenceable(1) %153) #16
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %167, label %156, !llvm.loop !95

164:                                              ; preds = %156
  %165 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull @.str.5, ptr noundef nonnull %153)
  %166 = tail call ptr @BLI_strncpy(ptr noundef nonnull %153, ptr noundef nonnull @.str.18, i64 noundef 64) #15
  br label %167

167:                                              ; preds = %160, %152, %164
  %168 = load i8, ptr %153, align 1, !tbaa !94
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = tail call ptr @BLI_strncpy(ptr noundef nonnull %153, ptr noundef nonnull @global_role_default_sequencer, i64 noundef 64) #15
  br label %172

172:                                              ; preds = %170, %167
  %173 = load ptr, ptr %25, align 8, !tbaa !46
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %24, !llvm.loop !114

175:                                              ; preds = %172, %17
  %176 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 19
  %177 = load ptr, ptr %176, align 8, !tbaa !46
  %178 = icmp eq ptr %177, null
  br i1 %178, label %198, label %179

179:                                              ; preds = %175, %195
  %180 = phi ptr [ %196, %195 ], [ %177, %175 ]
  %181 = getelementptr inbounds %struct.Image, ptr %180, i64 0, i32 36
  %182 = load i8, ptr %181, align 1, !tbaa !94
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %195, label %184

184:                                              ; preds = %179, %188
  %185 = phi ptr [ %186, %188 ], [ @global_colorspaces, %179 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  %187 = icmp eq ptr %186, null
  br i1 %187, label %192, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.ColorSpace, ptr %186, i64 0, i32 3
  %190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %189, ptr noundef nonnull dereferenceable(1) %181) #16
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %195, label %184, !llvm.loop !95

192:                                              ; preds = %184
  %193 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull @.str.6, ptr noundef nonnull %181)
  %194 = tail call ptr @BLI_strncpy(ptr noundef nonnull %181, ptr noundef nonnull @.str.18, i64 noundef 64) #15
  br label %195

195:                                              ; preds = %188, %179, %192
  %196 = load ptr, ptr %180, align 8, !tbaa !46
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %179, !llvm.loop !115

198:                                              ; preds = %195, %175
  %199 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  %200 = load ptr, ptr %199, align 8, !tbaa !46
  %201 = icmp eq ptr %200, null
  br i1 %201, label %221, label %202

202:                                              ; preds = %198, %218
  %203 = phi ptr [ %219, %218 ], [ %200, %198 ]
  %204 = getelementptr inbounds %struct.MovieClip, ptr %203, i64 0, i32 18
  %205 = load i8, ptr %204, align 1, !tbaa !94
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %218, label %207

207:                                              ; preds = %202, %211
  %208 = phi ptr [ %209, %211 ], [ @global_colorspaces, %202 ]
  %209 = load ptr, ptr %208, align 8, !tbaa !46
  %210 = icmp eq ptr %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.ColorSpace, ptr %209, i64 0, i32 3
  %213 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %212, ptr noundef nonnull dereferenceable(1) %204) #16
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %218, label %207, !llvm.loop !95

215:                                              ; preds = %207
  %216 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull @.str.7, ptr noundef nonnull %204)
  %217 = tail call ptr @BLI_strncpy(ptr noundef nonnull %204, ptr noundef nonnull @.str.18, i64 noundef 64) #15
  br label %218

218:                                              ; preds = %211, %202, %215
  %219 = load ptr, ptr %203, align 8, !tbaa !46
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %202, !llvm.loop !116

221:                                              ; preds = %218, %198, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_display_get_default() local_unnamed_addr #0 {
  %1 = tail call ptr @OCIO_getCurrentConfig() #15
  %2 = tail call ptr @OCIO_configGetDefaultDisplay(ptr noundef %1) #15
  tail call void @OCIO_configRelease(ptr noundef %1) #15
  %3 = load i8, ptr %2, align 1, !tbaa !94
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %0, %9
  %6 = phi ptr [ %7, %9 ], [ @global_displays, %0 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %7, i64 0, i32 3
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %2) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !109

13:                                               ; preds = %9, %5, %0
  %14 = phi ptr [ null, %0 ], [ %7, %9 ], [ null, %5 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_validate_settings(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @global_displays, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %5, i64 0, i32 3
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %3, !llvm.loop !109

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %5, %7 ], [ null, %3 ]
  %13 = tail call ptr @OCIO_getCurrentConfig() #15
  %14 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %12, i64 0, i32 3
  %15 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %13, ptr noundef nonnull %14) #15
  tail call void @OCIO_configRelease(ptr noundef %13) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load i8, ptr %15, align 1, !tbaa !94
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17, %24
  %21 = phi ptr [ %22, %24 ], [ @global_views, %17 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ColorManagedView, ptr %22, i64 0, i32 3
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %15) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %20, !llvm.loop !47

28:                                               ; preds = %20, %24, %11, %17
  %29 = phi ptr [ null, %17 ], [ null, %11 ], [ %22, %24 ], [ null, %20 ]
  %30 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %12, i64 0, i32 4
  %31 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 3
  br label %32

32:                                               ; preds = %36, %28
  %33 = phi ptr [ %30, %28 ], [ %34, %36 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.LinkData, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !117
  %39 = getelementptr inbounds %struct.ColorManagedView, ptr %38, i64 0, i32 3
  %40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %31) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %32

42:                                               ; preds = %36, %32
  %43 = icmp ne ptr %29, null
  %44 = and i1 %43, %35
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 3
  %47 = getelementptr inbounds %struct.ColorManagedView, ptr %29, i64 0, i32 3
  %48 = tail call ptr @BLI_strncpy(ptr noundef nonnull %46, ptr noundef nonnull %47, i64 noundef 64) #15
  br label %49

49:                                               ; preds = %45, %42
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @colormanage_display_get_named(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_displays, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !109

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_view_get_default(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @OCIO_getCurrentConfig() #15
  %3 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %0, i64 0, i32 3
  %4 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %2, ptr noundef nonnull %3) #15
  tail call void @OCIO_configRelease(ptr noundef %2) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load i8, ptr %4, align 1, !tbaa !94
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6, %13
  %10 = phi ptr [ %11, %13 ], [ @global_views, %6 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ColorManagedView, ptr %11, i64 0, i32 3
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %4) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %9, !llvm.loop !47

17:                                               ; preds = %13, %9, %1, %6
  %18 = phi ptr [ null, %6 ], [ null, %1 ], [ %11, %13 ], [ null, %9 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_colormanagement_check_is_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @global_colorspaces, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ColorSpace, ptr %5, i64 0, i32 3
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %3, !llvm.loop !95

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %5, %7 ], [ null, %3 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 8
  %16 = load i8, ptr %15, align 1, !tbaa !97
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %20 = load i32, ptr %19, align 8, !tbaa !98
  %21 = or i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !98
  br label %26

22:                                               ; preds = %14, %11
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %24 = load i32, ptr %23, align 8, !tbaa !98
  %25 = and i32 %24, -2
  store i32 %25, ptr %23, align 8, !tbaa !98
  br label %26

26:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_colormanagement_assign_float_colorspace(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @global_colorspaces, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ColorSpace, ptr %5, i64 0, i32 3
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %3, !llvm.loop !95

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %5, %7 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  store ptr %12, ptr %13, align 8, !tbaa !119
  %14 = icmp eq ptr %12, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 8
  %17 = load i8, ptr %16, align 1, !tbaa !97
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %21 = load i32, ptr %20, align 8, !tbaa !98
  %22 = or i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !98
  br label %27

23:                                               ; preds = %15, %11
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %25 = load i32, ptr %24, align 8, !tbaa !98
  %26 = and i32 %25, -2
  store i32 %26, ptr %24, align 8, !tbaa !98
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_colormanagement_assign_rect_colorspace(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @global_colorspaces, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ColorSpace, ptr %5, i64 0, i32 3
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %3, !llvm.loop !95

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %5, %7 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  store ptr %12, ptr %13, align 8, !tbaa !96
  %14 = icmp eq ptr %12, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 8
  %17 = load i8, ptr %16, align 1, !tbaa !97
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %21 = load i32, ptr %20, align 8, !tbaa !98
  %22 = or i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !98
  br label %27

23:                                               ; preds = %15, %11
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %25 = load i32, ptr %24, align 8, !tbaa !98
  %26 = and i32 %25, -2
  store i32 %26, ptr %24, align 8, !tbaa !98
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @IMB_colormanagement_get_float_colorspace(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.ColorSpace, ptr %3, i64 0, i32 3
  %6 = select i1 %4, ptr @global_role_scene_linear, ptr %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @IMB_colormanagement_get_rect_colorspace(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.ColorSpace, ptr %3, i64 0, i32 3
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_transform_threaded(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ProcessorTransformInit, align 8
  %9 = load i8, ptr %4, align 1, !tbaa !94
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %16 = tail call ptr %15(i64 noundef 24, ptr noundef nonnull @.str.20) #15
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi ptr [ @global_colorspaces, %14 ], [ %19, %17 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !46, !nonnull !104, !noundef !104
  %20 = getelementptr inbounds %struct.ColorSpace, ptr %19, i64 0, i32 3
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %5) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %17, !llvm.loop !95

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ColorSpace, ptr %19, i64 0, i32 8
  %25 = load i8, ptr %24, align 1, !tbaa !97
  %26 = getelementptr inbounds %struct.ColormanageProcessor, ptr %16, i64 0, i32 2
  store i8 %25, ptr %26, align 8, !tbaa !105
  %27 = tail call ptr @OCIO_getCurrentConfig() #15
  %28 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %27, ptr noundef nonnull %4, ptr noundef %5) #15
  tail call void @OCIO_configRelease(ptr noundef %27) #15
  store ptr %28, ptr %16, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15
  store ptr %16, ptr %8, align 8, !tbaa !120
  %29 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %8, i64 0, i32 1
  store ptr %0, ptr %29, align 8, !tbaa !122
  %30 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %8, i64 0, i32 2
  store i32 %1, ptr %30, align 8, !tbaa !123
  %31 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %8, i64 0, i32 3
  store i32 %2, ptr %31, align 4, !tbaa !124
  %32 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %8, i64 0, i32 4
  store i32 %3, ptr %32, align 8, !tbaa !125
  %33 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %8, i64 0, i32 5
  store i8 %6, ptr %33, align 4, !tbaa !126
  call void @IMB_processor_apply_threaded(i32 noundef %2, i32 noundef 40, ptr noundef nonnull %8, ptr noundef nonnull @processor_transform_init_handle, ptr noundef nonnull @do_processor_transform_thread) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  %34 = getelementptr inbounds %struct.ColormanageProcessor, ptr %16, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !108
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %23
  call void @curvemapping_free(ptr noundef nonnull %35) #15
  br label %38

38:                                               ; preds = %37, %23
  %39 = load ptr, ptr %16, align 8, !tbaa !107
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  call void @OCIO_processorRelease(ptr noundef nonnull %39) #15
  br label %42

42:                                               ; preds = %38, %41
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %43(ptr noundef nonnull %16) #15
  br label %44

44:                                               ; preds = %7, %11, %42
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_transform_v4(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1, !tbaa !94
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %11 = tail call ptr %10(i64 noundef 24, ptr noundef nonnull @.str.20) #15
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ @global_colorspaces, %9 ], [ %14, %12 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !46, !nonnull !104, !noundef !104
  %15 = getelementptr inbounds %struct.ColorSpace, ptr %14, i64 0, i32 3
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %2) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %12, !llvm.loop !95

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ColorSpace, ptr %14, i64 0, i32 8
  %20 = load i8, ptr %19, align 1, !tbaa !97
  %21 = getelementptr inbounds %struct.ColormanageProcessor, ptr %11, i64 0, i32 2
  store i8 %20, ptr %21, align 8, !tbaa !105
  %22 = tail call ptr @OCIO_getCurrentConfig() #15
  %23 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %22, ptr noundef nonnull %1, ptr noundef %2) #15
  tail call void @OCIO_configRelease(ptr noundef %22) #15
  store ptr %23, ptr %11, align 8, !tbaa !107
  %24 = getelementptr inbounds %struct.ColormanageProcessor, ptr %11, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !108
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef nonnull %25, ptr noundef %0, ptr noundef %0) #15
  br label %28

28:                                               ; preds = %27, %18
  %29 = load ptr, ptr %11, align 8, !tbaa !107
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @OCIO_processorApplyRGBA(ptr noundef nonnull %29, ptr noundef %0) #15
  br label %32

32:                                               ; preds = %28, %31
  %33 = load ptr, ptr %24, align 8, !tbaa !108
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @curvemapping_free(ptr noundef nonnull %33) #15
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr %11, align 8, !tbaa !107
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @OCIO_processorRelease(ptr noundef nonnull %37) #15
  br label %40

40:                                               ; preds = %36, %39
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %41(ptr noundef nonnull %11) #15
  br label %42

42:                                               ; preds = %6, %3, %40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_colormanagement_colorspace_processor_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.20) #15
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ @global_colorspaces, %2 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !46, !nonnull !104, !noundef !104
  %8 = getelementptr inbounds %struct.ColorSpace, ptr %7, i64 0, i32 3
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %5, !llvm.loop !95

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ColorSpace, ptr %7, i64 0, i32 8
  %13 = load i8, ptr %12, align 1, !tbaa !97
  %14 = getelementptr inbounds %struct.ColormanageProcessor, ptr %4, i64 0, i32 2
  store i8 %13, ptr %14, align 8, !tbaa !105
  %15 = tail call ptr @OCIO_getCurrentConfig() #15
  %16 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %15, ptr noundef %0, ptr noundef %1) #15
  tail call void @OCIO_configRelease(ptr noundef %15) #15
  store ptr %16, ptr %4, align 8, !tbaa !107
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_processor_apply_v4(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %1) #15
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @OCIO_processorApplyRGBA(ptr noundef nonnull %8, ptr noundef %1) #15
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_processor_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @curvemapping_free(ptr noundef nonnull %3) #15
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %0, align 8, !tbaa !107
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @OCIO_processorRelease(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %9, %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %11(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @__func__.IMB_colormanagement_colorspace_to_scene_linear_v3)
  br label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorSpace, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  tail call void @BLI_mutex_lock(ptr noundef nonnull @processor_lock) #15
  %11 = load ptr, ptr %7, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ColorSpace, ptr %1, i64 0, i32 3
  %15 = tail call ptr @OCIO_getCurrentConfig() #15
  %16 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %15, ptr noundef nonnull %14, ptr noundef nonnull @global_role_scene_linear) #15
  tail call void @OCIO_configRelease(ptr noundef %15) #15
  store ptr %16, ptr %7, align 8, !tbaa !59
  br label %17

17:                                               ; preds = %13, %10
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @processor_lock) #15
  br label %18

18:                                               ; preds = %6, %17
  %19 = load ptr, ptr %7, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %19, ptr noundef %0) #15
  br label %22

22:                                               ; preds = %18, %21, %4
  ret void
}

declare void @OCIO_processorApplyRGB(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_scene_linear_to_colorspace_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @__func__.IMB_colormanagement_scene_linear_to_colorspace_v3)
  br label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorSpace, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  tail call void @BLI_mutex_lock(ptr noundef nonnull @processor_lock) #15
  %11 = load ptr, ptr %7, align 8, !tbaa !60
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ColorSpace, ptr %1, i64 0, i32 3
  %15 = tail call ptr @OCIO_getCurrentConfig() #15
  %16 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %15, ptr noundef nonnull @global_role_scene_linear, ptr noundef nonnull %14) #15
  tail call void @OCIO_configRelease(ptr noundef %15) #15
  store ptr %16, ptr %7, align 8, !tbaa !60
  br label %17

17:                                               ; preds = %13, %10
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @processor_lock) #15
  br label %18

18:                                               ; preds = %6, %17
  %19 = load ptr, ptr %7, align 8, !tbaa !60
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %19, ptr noundef %0) #15
  br label %22

22:                                               ; preds = %18, %21, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @__func__.IMB_colormanagement_colorspace_to_scene_linear_v4)
  br label %26

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ColorSpace, ptr %2, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  tail call void @BLI_mutex_lock(ptr noundef nonnull @processor_lock) #15
  %12 = load ptr, ptr %8, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ColorSpace, ptr %2, i64 0, i32 3
  %16 = tail call ptr @OCIO_getCurrentConfig() #15
  %17 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %16, ptr noundef nonnull %15, ptr noundef nonnull @global_role_scene_linear) #15
  tail call void @OCIO_configRelease(ptr noundef %16) #15
  store ptr %17, ptr %8, align 8, !tbaa !59
  br label %18

18:                                               ; preds = %14, %11
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @processor_lock) #15
  br label %19

19:                                               ; preds = %7, %18
  %20 = load ptr, ptr %8, align 8, !tbaa !59
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = icmp eq i8 %1, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @OCIO_processorApplyRGBA_predivide(ptr noundef nonnull %20, ptr noundef %0) #15
  br label %26

25:                                               ; preds = %22
  tail call void @OCIO_processorApplyRGBA(ptr noundef nonnull %20, ptr noundef %0) #15
  br label %26

26:                                               ; preds = %19, %25, %24, %5
  ret void
}

declare void @OCIO_processorApplyRGBA_predivide(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_processorApplyRGBA(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_colorspace_to_scene_linear(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %4, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @__func__.IMB_colormanagement_colorspace_to_scene_linear)
  br label %36

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ColorSpace, ptr %4, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  tail call void @BLI_mutex_lock(ptr noundef nonnull @processor_lock) #15
  %15 = load ptr, ptr %11, align 8, !tbaa !59
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ColorSpace, ptr %4, i64 0, i32 3
  %19 = tail call ptr @OCIO_getCurrentConfig() #15
  %20 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %19, ptr noundef nonnull %18, ptr noundef nonnull @global_role_scene_linear) #15
  tail call void @OCIO_configRelease(ptr noundef %19) #15
  store ptr %20, ptr %11, align 8, !tbaa !59
  br label %21

21:                                               ; preds = %17, %14
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @processor_lock) #15
  br label %22

22:                                               ; preds = %10, %21
  %23 = load ptr, ptr %11, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = sext i32 %1 to i64
  %27 = sext i32 %2 to i64
  %28 = sext i32 %3 to i64
  %29 = shl nsw i64 %28, 2
  %30 = mul i64 %29, %26
  %31 = tail call ptr @OCIO_createOCIO_PackedImageDesc(ptr noundef %0, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef 4, i64 noundef %29, i64 noundef %30) #15
  %32 = icmp eq i8 %5, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  tail call void @OCIO_processorApply_predivide(ptr noundef nonnull %23, ptr noundef %31) #15
  br label %35

34:                                               ; preds = %25
  tail call void @OCIO_processorApply(ptr noundef nonnull %23, ptr noundef %31) #15
  br label %35

35:                                               ; preds = %34, %33
  tail call void @OCIO_PackedImageDescRelease(ptr noundef %31) #15
  br label %36

36:                                               ; preds = %22, %35, %8
  ret void
}

declare ptr @OCIO_createOCIO_PackedImageDesc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @OCIO_processorApply_predivide(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_processorApply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_PackedImageDescRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  tail call void @BLI_mutex_lock(ptr noundef nonnull @processor_lock) #15
  %7 = load ptr, ptr %3, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @OCIO_getCurrentConfig() #15
  %11 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %1, i64 0, i32 3
  %12 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %10, ptr noundef nonnull %11) #15
  tail call void @OCIO_configRelease(ptr noundef %10) #15
  %13 = tail call ptr @OCIO_getCurrentConfig() #15
  %14 = icmp ne ptr %12, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = tail call ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12) #15
  %19 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef nonnull %13, ptr noundef nonnull @global_role_scene_linear, ptr noundef %18) #15
  tail call void @OCIO_configRelease(ptr noundef nonnull %13) #15
  br label %20

20:                                               ; preds = %17, %9
  %21 = phi ptr [ %19, %17 ], [ null, %9 ]
  store ptr %21, ptr %3, align 8, !tbaa !64
  br label %22

22:                                               ; preds = %20, %6
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @processor_lock) #15
  br label %23

23:                                               ; preds = %2, %22
  %24 = load ptr, ptr %3, align 8, !tbaa !64
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %24, ptr noundef %0) #15
  br label %27

27:                                               ; preds = %26, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  tail call void @BLI_mutex_lock(ptr noundef nonnull @processor_lock) #15
  %7 = load ptr, ptr %3, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @OCIO_getCurrentConfig() #15
  %11 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %1, i64 0, i32 3
  %12 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %10, ptr noundef nonnull %11) #15
  tail call void @OCIO_configRelease(ptr noundef %10) #15
  %13 = tail call ptr @OCIO_getCurrentConfig() #15
  %14 = icmp ne ptr %12, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = tail call ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12) #15
  %19 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull @global_role_scene_linear) #15
  tail call void @OCIO_configRelease(ptr noundef nonnull %13) #15
  br label %20

20:                                               ; preds = %17, %9
  %21 = phi ptr [ %19, %17 ], [ null, %9 ]
  store ptr %21, ptr %3, align 8, !tbaa !63
  br label %22

22:                                               ; preds = %20, %6
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @processor_lock) #15
  br label %23

23:                                               ; preds = %2, %22
  %24 = load ptr, ptr %3, align 8, !tbaa !63
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %24, ptr noundef %0) #15
  br label %27

27:                                               ; preds = %26, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load float, ptr %1, align 4, !tbaa !127
  store float %5, ptr %0, align 4, !tbaa !127
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !127
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !127
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !127
  %11 = getelementptr inbounds float, ptr %0, i64 2
  store float %10, ptr %11, align 4, !tbaa !127
  %12 = getelementptr inbounds float, ptr %1, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !127
  %14 = getelementptr inbounds float, ptr %0, i64 3
  store float %13, ptr %14, align 4, !tbaa !127
  %15 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %2, ptr noundef %3)
  %16 = getelementptr inbounds %struct.ColormanageProcessor, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %0) #15
  br label %20

20:                                               ; preds = %19, %4
  %21 = load ptr, ptr %15, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @OCIO_processorApplyRGBA(ptr noundef nonnull %21, ptr noundef nonnull %0) #15
  br label %24

24:                                               ; preds = %20, %23
  %25 = load ptr, ptr %16, align 8, !tbaa !108
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @curvemapping_free(ptr noundef nonnull %25) #15
  br label %28

28:                                               ; preds = %27, %24
  %29 = load ptr, ptr %15, align 8, !tbaa !107
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @OCIO_processorRelease(ptr noundef nonnull %29) #15
  br label %32

32:                                               ; preds = %28, %31
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %33(ptr noundef nonnull %15) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_colormanagement_display_processor_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ColorManagedViewSettings, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #15
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %5 = tail call ptr %4(i64 noundef 24, ptr noundef nonnull @.str.20) #15
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %48

7:                                                ; preds = %2, %11
  %8 = phi ptr [ %9, %11 ], [ @global_displays, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %9, i64 0, i32 3
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !109

15:                                               ; preds = %11, %7
  %16 = phi ptr [ %9, %11 ], [ null, %7 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @OCIO_getCurrentConfig() #15
  %20 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %16, i64 0, i32 3
  %21 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %19, ptr noundef nonnull %20) #15
  tail call void @OCIO_configRelease(ptr noundef %19) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = load i8, ptr %21, align 1, !tbaa !94
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23, %30
  %27 = phi ptr [ %28, %30 ], [ @global_views, %23 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ColorManagedView, ptr %28, i64 0, i32 3
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %21) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %26, !llvm.loop !47

34:                                               ; preds = %30, %26, %23, %18, %15
  %35 = phi ptr [ null, %15 ], [ null, %23 ], [ null, %18 ], [ %28, %30 ], [ null, %26 ]
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 3
  br i1 %36, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ColorManagedView, ptr %35, i64 0, i32 3
  %40 = call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef nonnull %39, i64 noundef 64) #15
  br label %42

41:                                               ; preds = %34
  store i8 0, ptr %37, align 8, !tbaa !94
  br label %42

42:                                               ; preds = %38, %41
  %43 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 2
  %44 = call ptr @BLI_strncpy(ptr noundef nonnull %43, ptr noundef nonnull @.str.15, i64 noundef 64) #15
  store i32 0, ptr %3, align 8, !tbaa !128
  %45 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 5
  store float 1.000000e+00, ptr %45, align 4, !tbaa !113
  %46 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 4
  store float 0.000000e+00, ptr %46, align 8, !tbaa !111
  %47 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 6
  store ptr null, ptr %47, align 8, !tbaa !129
  br label %48

48:                                               ; preds = %2, %42
  %49 = phi ptr [ %3, %42 ], [ %0, %2 ]
  %50 = call ptr @OCIO_getCurrentConfig() #15
  %51 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %49, i64 0, i32 3
  %52 = call ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef %50, ptr noundef %1, ptr noundef nonnull %51) #15
  call void @OCIO_configRelease(ptr noundef %50) #15
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %48, %58
  %55 = phi ptr [ %56, %58 ], [ @global_colorspaces, %48 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ColorSpace, ptr %56, i64 0, i32 3
  %60 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) %52) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %54, !llvm.loop !95

62:                                               ; preds = %54, %58, %48
  %63 = phi ptr [ null, %48 ], [ %56, %58 ], [ null, %54 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.ColorSpace, ptr %63, i64 0, i32 8
  %67 = load i8, ptr %66, align 1, !tbaa !97
  %68 = getelementptr inbounds %struct.ColormanageProcessor, ptr %5, i64 0, i32 2
  store i8 %67, ptr %68, align 8, !tbaa !105
  br label %69

69:                                               ; preds = %65, %62
  %70 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %49, i64 0, i32 2
  %71 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %49, i64 0, i32 4
  %72 = load float, ptr %71, align 8, !tbaa !111
  %73 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %49, i64 0, i32 5
  %74 = load float, ptr %73, align 4, !tbaa !113
  %75 = call fastcc ptr @create_display_buffer_processor(ptr noundef nonnull %70, ptr noundef nonnull %51, ptr noundef %1, float noundef %72, float noundef %74, ptr noundef nonnull @global_role_scene_linear)
  store ptr %75, ptr %5, align 8, !tbaa !107
  %76 = load i32, ptr %49, align 8, !tbaa !128
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %49, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !129
  %82 = call ptr @curvemapping_copy(ptr noundef %81) #15
  %83 = getelementptr inbounds %struct.ColormanageProcessor, ptr %5, i64 0, i32 1
  store ptr %82, ptr %83, align 8, !tbaa !108
  call void @curvemapping_premultiply(ptr noundef %82, i32 noundef 0) #15
  br label %84

84:                                               ; preds = %79, %69
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #15
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_pixel_to_display_space_v3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load float, ptr %1, align 4, !tbaa !127
  store float %5, ptr %0, align 4, !tbaa !127
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !127
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !127
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !127
  %11 = getelementptr inbounds float, ptr %0, i64 2
  store float %10, ptr %11, align 4, !tbaa !127
  %12 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %2, ptr noundef %3)
  %13 = getelementptr inbounds %struct.ColormanageProcessor, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef nonnull %14, ptr noundef nonnull %0, ptr noundef nonnull %0) #15
  br label %17

17:                                               ; preds = %16, %4
  %18 = load ptr, ptr %12, align 8, !tbaa !107
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %18, ptr noundef nonnull %0) #15
  br label %21

21:                                               ; preds = %17, %20
  %22 = load ptr, ptr %13, align 8, !tbaa !108
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @curvemapping_free(ptr noundef nonnull %22) #15
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr %12, align 8, !tbaa !107
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @OCIO_processorRelease(ptr noundef nonnull %26) #15
  br label %29

29:                                               ; preds = %25, %28
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %30(ptr noundef nonnull %12) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_processor_apply_v3(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %1) #15
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %8, ptr noundef %1) #15
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_imbuf_make_display_space(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  tail call fastcc void @colormanage_display_buffer_process_ex(ptr noundef %0, ptr noundef %7, ptr noundef %5, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_colormanagement_imbuf_for_write(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = load i8, ptr %5, align 8, !tbaa !130
  %9 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %8) #15
  %10 = load i8, ptr %5, align 8, !tbaa !130
  %11 = tail call i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext %10) #15
  %12 = getelementptr inbounds %struct.ImageFormatData, ptr %5, i64 0, i32 2
  %13 = load i8, ptr %12, align 2, !tbaa !133
  %14 = icmp ne i8 %13, 32
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %24 = load i32, ptr %23, align 4, !tbaa !134
  %25 = and i32 %24, 24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  tail call void @IMB_rect_from_float(ptr noundef %0) #15
  %28 = load i32, ptr %23, align 4, !tbaa !134
  %29 = and i32 %28, -25
  store i32 %29, ptr %23, align 4, !tbaa !134
  br label %30

30:                                               ; preds = %27, %22, %18, %6
  %31 = icmp eq i8 %1, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = icmp ne i8 %9, 0
  %34 = and i32 %11, 255
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %33, i1 true, i1 %35
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi i1 [ false, %30 ], [ %36, %32 ]
  %39 = select i1 %38, i1 true, i1 %14
  br i1 %39, label %40, label %71

40:                                               ; preds = %37
  %41 = icmp eq i8 %2, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = tail call ptr @IMB_dupImBuf(ptr noundef %0) #15
  br label %71

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !100
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %50 = load i32, ptr %49, align 4, !tbaa !135
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %55 = tail call ptr %54(ptr noundef nonnull %46) #15
  store ptr %55, ptr %45, align 8, !tbaa !100
  %56 = load i32, ptr %49, align 4, !tbaa !135
  %57 = or i32 %56, 1
  store i32 %57, ptr %49, align 4, !tbaa !135
  br label %58

58:                                               ; preds = %53, %48, %44
  %59 = load ptr, ptr %15, align 8, !tbaa !99
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %63 = load i32, ptr %62, align 4, !tbaa !135
  %64 = and i32 %63, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %68 = tail call ptr %67(ptr noundef nonnull %59) #15
  store ptr %68, ptr %15, align 8, !tbaa !99
  %69 = load i32, ptr %62, align 4, !tbaa !135
  %70 = or i32 %69, 32
  store i32 %70, ptr %62, align 4, !tbaa !135
  br label %71

71:                                               ; preds = %42, %66, %61, %58, %37
  %72 = phi ptr [ %43, %42 ], [ %0, %66 ], [ %0, %61 ], [ %0, %58 ], [ %0, %37 ]
  br i1 %14, label %73, label %96

73:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %74 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 9
  %75 = load ptr, ptr %74, align 8, !tbaa !99
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 5
  %79 = load i32, ptr %78, align 4, !tbaa !103
  %80 = icmp eq i32 %79, 4
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !101
  %84 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !102
  call void @IMB_alpha_under_color_float(ptr noundef nonnull %75, i32 noundef %83, i32 noundef %85, ptr noundef nonnull %7) #15
  br label %86

86:                                               ; preds = %81, %77, %73
  %87 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 8
  %88 = load ptr, ptr %87, align 8, !tbaa !100
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 2
  %92 = load i32, ptr %91, align 8, !tbaa !101
  %93 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !102
  call void @IMB_alpha_under_color_byte(ptr noundef nonnull %88, i32 noundef %92, i32 noundef %94, ptr noundef nonnull %7) #15
  br label %95

95:                                               ; preds = %90, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  br label %96

96:                                               ; preds = %95, %71
  br i1 %38, label %97, label %152

97:                                               ; preds = %96
  %98 = load i8, ptr %5, align 8, !tbaa !130
  %99 = call i32 @BKE_imtype_to_ftype(i8 noundef zeroext %98) #15
  %100 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 26
  store i32 %99, ptr %100, align 8, !tbaa !136
  %101 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !46
  %102 = icmp ugt ptr %101, @IMB_FILE_TYPES
  br i1 %102, label %103, label %122

103:                                              ; preds = %97, %118
  %104 = phi ptr [ %119, %118 ], [ @IMB_FILE_TYPES, %97 ]
  %105 = getelementptr inbounds %struct.ImFileType, ptr %104, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !137
  %107 = icmp eq ptr %106, null
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.ImFileType, ptr %104, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !139
  %111 = call i32 %110(ptr noundef nonnull %104, ptr noundef %72) #15
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.ImFileType, ptr %104, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !140
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br label %122

118:                                              ; preds = %103, %108
  %119 = getelementptr inbounds %struct.ImFileType, ptr %104, i64 1
  %120 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !46
  %121 = icmp ult ptr %119, %120
  br i1 %121, label %103, label %122, !llvm.loop !141

122:                                              ; preds = %118, %97, %113
  %123 = phi i1 [ %117, %113 ], [ false, %97 ], [ false, %118 ]
  %124 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 8
  %125 = load ptr, ptr %124, align 8, !tbaa !100
  %126 = icmp eq ptr %125, null
  %127 = and i1 %123, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = call zeroext i8 @imb_addrectImBuf(ptr noundef %72) #15
  br label %130

130:                                              ; preds = %122, %128
  %131 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 9
  %132 = load ptr, ptr %131, align 8, !tbaa !99
  %133 = load ptr, ptr %124, align 8, !tbaa !100
  call fastcc void @colormanage_display_buffer_process_ex(ptr noundef %72, ptr noundef %132, ptr noundef %133, ptr noundef %3, ptr noundef %4)
  %134 = load ptr, ptr %131, align 8, !tbaa !99
  %135 = icmp eq ptr %134, null
  br i1 %135, label %152, label %136

136:                                              ; preds = %130
  %137 = call ptr @OCIO_getCurrentConfig() #15
  %138 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 3
  %139 = call ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef %137, ptr noundef %4, ptr noundef nonnull %138) #15
  call void @OCIO_configRelease(ptr noundef %137) #15
  %140 = icmp eq ptr %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %136, %145
  %142 = phi ptr [ %143, %145 ], [ @global_colorspaces, %136 ]
  %143 = load ptr, ptr %142, align 8, !tbaa !46
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.ColorSpace, ptr %143, i64 0, i32 3
  %147 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %146, ptr noundef nonnull dereferenceable(1) %139) #16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %141, !llvm.loop !95

149:                                              ; preds = %141, %145, %136
  %150 = phi ptr [ null, %136 ], [ %143, %145 ], [ null, %141 ]
  %151 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 35
  store ptr %150, ptr %151, align 8, !tbaa !119
  br label %152

152:                                              ; preds = %130, %149, %96
  ret ptr %72
}

declare zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext) local_unnamed_addr #2

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare void @IMB_alpha_under_color_float(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_alpha_under_color_byte(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_imtype_to_ftype(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_buffer_make_display_space(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.ProcessorTransformInit, align 8
  %10 = mul nsw i32 %3, %2
  %11 = mul nsw i32 %10, %4
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %15 = tail call ptr %14(i64 noundef %13, ptr noundef nonnull @.str.10) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %0, i64 %13, i1 false)
  %16 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  store ptr %16, ptr %9, align 8, !tbaa !120
  %17 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %9, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !122
  %18 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %9, i64 0, i32 2
  store i32 %2, ptr %18, align 8, !tbaa !123
  %19 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %9, i64 0, i32 3
  store i32 %3, ptr %19, align 4, !tbaa !124
  %20 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %9, i64 0, i32 4
  store i32 %4, ptr %20, align 8, !tbaa !125
  %21 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %9, i64 0, i32 5
  store i8 1, ptr %21, align 4, !tbaa !126
  call void @IMB_processor_apply_threaded(i32 noundef %3, i32 noundef 40, ptr noundef nonnull %9, ptr noundef nonnull @processor_transform_init_handle, ptr noundef nonnull @do_processor_transform_thread) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  call void @IMB_buffer_byte_from_float(ptr noundef %1, ptr noundef %15, i32 noundef %4, float noundef %5, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 1, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef %2) #15
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %22(ptr noundef %15) #15
  %23 = getelementptr inbounds %struct.ColormanageProcessor, ptr %16, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %8
  call void @curvemapping_free(ptr noundef nonnull %24) #15
  br label %27

27:                                               ; preds = %26, %8
  %28 = load ptr, ptr %16, align 8, !tbaa !107
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void @OCIO_processorRelease(ptr noundef nonnull %28) #15
  br label %31

31:                                               ; preds = %27, %30
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %32(ptr noundef nonnull %16) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @IMB_buffer_byte_from_float(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_display_buffer_acquire(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ColormanageCacheKey, align 4
  %6 = alloca %struct.ColormanageCacheViewSettings, align 8
  %7 = alloca %struct.ColormanageCacheDisplaySettings, align 4
  %8 = alloca %struct.ColorManagedViewSettings, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %8) #15
  store ptr null, ptr %3, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %275, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !102
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %275, label %16

16:                                               ; preds = %12
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %59

18:                                               ; preds = %16, %22
  %19 = phi ptr [ %20, %22 ], [ @global_displays, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %20, i64 0, i32 3
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %2) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %18, !llvm.loop !109

26:                                               ; preds = %22, %18
  %27 = phi ptr [ %20, %22 ], [ null, %18 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @OCIO_getCurrentConfig() #15
  %31 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %27, i64 0, i32 3
  %32 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %30, ptr noundef nonnull %31) #15
  tail call void @OCIO_configRelease(ptr noundef %30) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = load i8, ptr %32, align 1, !tbaa !94
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34, %41
  %38 = phi ptr [ %39, %41 ], [ @global_views, %34 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ColorManagedView, ptr %39, i64 0, i32 3
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %32) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %37, !llvm.loop !47

45:                                               ; preds = %41, %37, %34, %29, %26
  %46 = phi ptr [ null, %26 ], [ null, %34 ], [ null, %29 ], [ %39, %41 ], [ null, %37 ]
  %47 = icmp eq ptr %46, null
  %48 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %8, i64 0, i32 3
  br i1 %47, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ColorManagedView, ptr %46, i64 0, i32 3
  %51 = call ptr @BLI_strncpy(ptr noundef nonnull %48, ptr noundef nonnull %50, i64 noundef 64) #15
  br label %53

52:                                               ; preds = %45
  store i8 0, ptr %48, align 8, !tbaa !94
  br label %53

53:                                               ; preds = %49, %52
  %54 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %8, i64 0, i32 2
  %55 = call ptr @BLI_strncpy(ptr noundef nonnull %54, ptr noundef nonnull @.str.15, i64 noundef 64) #15
  store i32 0, ptr %8, align 8, !tbaa !128
  %56 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %8, i64 0, i32 5
  store float 1.000000e+00, ptr %56, align 4, !tbaa !113
  %57 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %8, i64 0, i32 4
  store float 0.000000e+00, ptr %57, align 8, !tbaa !111
  %58 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %8, i64 0, i32 6
  store ptr null, ptr %58, align 8, !tbaa !129
  br label %59

59:                                               ; preds = %16, %53
  %60 = phi ptr [ %8, %53 ], [ %1, %16 ]
  %61 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !99
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %96

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %66 = load ptr, ptr %65, align 8, !tbaa !96
  %67 = icmp eq ptr %66, null
  br i1 %67, label %96, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %70 = load i32, ptr %69, align 4, !tbaa !103
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = load i32, ptr %60, align 8, !tbaa !128
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %60, i64 0, i32 4
  %78 = load float, ptr %77, align 8, !tbaa !111
  %79 = fcmp oeq float %78, 0.000000e+00
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %60, i64 0, i32 5
  %82 = load float, ptr %81, align 4, !tbaa !113
  %83 = fcmp oeq float %82, 1.000000e+00
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = call ptr @OCIO_getCurrentConfig() #15
  %86 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %60, i64 0, i32 3
  %87 = call ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef %85, ptr noundef %2, ptr noundef nonnull %86) #15
  call void @OCIO_configRelease(ptr noundef %85) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.ColorSpace, ptr %66, i64 0, i32 3
  %91 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(1) %87) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %95 = load ptr, ptr %94, align 8, !tbaa !100
  br label %275

96:                                               ; preds = %84, %89, %80, %76, %72, %68, %64, %59
  %97 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %60, i64 0, i32 2
  br label %98

98:                                               ; preds = %102, %96
  %99 = phi ptr [ @global_looks, %96 ], [ %100, %102 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ColorManagedLook, ptr %100, i64 0, i32 3
  %104 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %103, ptr noundef nonnull dereferenceable(1) %97) #16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %98, !llvm.loop !110

106:                                              ; preds = %102, %98
  %107 = phi ptr [ %100, %102 ], [ null, %98 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.ColorManagedLook, ptr %107, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !52
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i32 [ %111, %109 ], [ 0, %106 ]
  %114 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %60, i64 0, i32 3
  br label %115

115:                                              ; preds = %119, %112
  %116 = phi ptr [ @global_views, %112 ], [ %117, %119 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ColorManagedView, ptr %117, i64 0, i32 3
  %121 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %120, ptr noundef nonnull dereferenceable(1) %114) #16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %115, !llvm.loop !47

123:                                              ; preds = %119, %115
  %124 = phi ptr [ %117, %119 ], [ null, %115 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.ColorManagedView, ptr %124, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !48
  br label %129

129:                                              ; preds = %123, %126
  %130 = phi i32 [ %128, %126 ], [ 0, %123 ]
  %131 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %6, i64 0, i32 1
  store i32 %113, ptr %131, align 4, !tbaa !142
  %132 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %6, i64 0, i32 2
  store i32 %130, ptr %132, align 8, !tbaa !144
  %133 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %60, i64 0, i32 4
  %134 = load float, ptr %133, align 8, !tbaa !111
  %135 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %6, i64 0, i32 3
  store float %134, ptr %135, align 4, !tbaa !145
  %136 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %60, i64 0, i32 5
  %137 = load float, ptr %136, align 4, !tbaa !113
  %138 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %6, i64 0, i32 4
  store float %137, ptr %138, align 8, !tbaa !146
  %139 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %140 = load float, ptr %139, align 8, !tbaa !147
  %141 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %6, i64 0, i32 5
  store float %140, ptr %141, align 4, !tbaa !148
  %142 = load i32, ptr %60, align 8, !tbaa !128
  store i32 %142, ptr %6, align 8, !tbaa !149
  %143 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %60, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !129
  %145 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %6, i64 0, i32 6
  store ptr %144, ptr %145, align 8, !tbaa !150
  br label %146

146:                                              ; preds = %150, %129
  %147 = phi ptr [ @global_displays, %129 ], [ %148, %150 ]
  %148 = load ptr, ptr %147, align 8, !tbaa !46
  %149 = icmp eq ptr %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %148, i64 0, i32 3
  %152 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %151, ptr noundef nonnull dereferenceable(1) %2) #16
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %146, !llvm.loop !109

154:                                              ; preds = %150, %146
  %155 = phi ptr [ %148, %150 ], [ null, %146 ]
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %155, i64 0, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !44
  br label %160

160:                                              ; preds = %154, %157
  %161 = phi i32 [ %159, %157 ], [ 0, %154 ]
  store i32 %161, ptr %7, align 4, !tbaa !151
  %162 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39
  %163 = load i32, ptr %162, align 4, !tbaa !153
  %164 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !154
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %182, label %167

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %169 = load i32, ptr %168, align 4, !tbaa !134
  %170 = and i32 %169, 16
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load ptr, ptr %61, align 8, !tbaa !99
  %174 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %175 = load ptr, ptr %174, align 8, !tbaa !100
  %176 = load i32, ptr %9, align 8, !tbaa !101
  %177 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !155
  %179 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39, i32 3
  %180 = load i32, ptr %179, align 4, !tbaa !156
  call void @IMB_partial_display_buffer_update(ptr noundef %0, ptr noundef %173, ptr noundef %175, i32 noundef %176, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %60, ptr noundef %2, i32 noundef %163, i32 noundef %178, i32 noundef %165, i32 noundef %180, i8 noundef zeroext 0)
  br label %181

181:                                              ; preds = %172, %167
  call void @BLI_rcti_init(ptr noundef nonnull %162, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  br label %182

182:                                              ; preds = %181, %160
  call void @BLI_lock_thread(i32 noundef 8) #15
  %183 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 36
  %184 = load ptr, ptr %183, align 8, !tbaa !75
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %188 = load i32, ptr @global_tot_display, align 4, !tbaa !34
  %189 = sext i32 %188 to i64
  %190 = shl nsw i64 %189, 2
  %191 = call ptr %187(i64 noundef %190, ptr noundef nonnull @.str.11) #15
  store ptr %191, ptr %183, align 8, !tbaa !75
  br label %203

192:                                              ; preds = %182
  %193 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %194 = load i32, ptr %193, align 4, !tbaa !134
  %195 = and i32 %194, 16
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %192
  %198 = load i32, ptr @global_tot_display, align 4, !tbaa !34
  %199 = sext i32 %198 to i64
  %200 = shl nsw i64 %199, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %184, i8 0, i64 %200, i1 false)
  %201 = load i32, ptr %193, align 4, !tbaa !134
  %202 = and i32 %201, -17
  store i32 %202, ptr %193, align 4, !tbaa !134
  br label %203

203:                                              ; preds = %192, %197, %186
  %204 = call fastcc ptr @colormanage_cache_get(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %3)
  %205 = icmp eq ptr %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %203
  call void @BLI_unlock_thread(i32 noundef 8) #15
  br label %275

207:                                              ; preds = %203
  %208 = load i32, ptr %9, align 8, !tbaa !101
  %209 = shl nsw i32 %208, 2
  %210 = load i32, ptr %13, align 4, !tbaa !102
  %211 = mul nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %214 = call ptr %213(i64 noundef %212, ptr noundef nonnull @.str.12) #15
  call fastcc void @colormanage_display_buffer_process_ex(ptr noundef %0, ptr noundef null, ptr noundef %214, ptr noundef nonnull %60, ptr noundef %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %215 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 37
  %216 = load ptr, ptr %215, align 8, !tbaa !79
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %207
  %219 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %220 = call ptr %219(i64 noundef 16, ptr noundef nonnull @.str.34) #15
  store ptr %220, ptr %215, align 8, !tbaa !79
  br label %221

221:                                              ; preds = %218, %207
  %222 = load ptr, ptr %215, align 8, !tbaa !79
  %223 = load ptr, ptr %222, align 8, !tbaa !82
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.35, i32 noundef 8, ptr noundef nonnull @colormanage_hashhash, ptr noundef nonnull @colormanage_hashcmp) #15
  %227 = load ptr, ptr %215, align 8, !tbaa !79
  store ptr %226, ptr %227, align 8, !tbaa !82
  br label %228

228:                                              ; preds = %225, %221
  %229 = load ptr, ptr %215, align 8, !tbaa !79
  %230 = load ptr, ptr %229, align 8, !tbaa !82
  %231 = icmp eq ptr %144, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.CurveMapping, ptr %144, i64 0, i32 3
  %234 = load i32, ptr %233, align 4, !tbaa !157
  br label %235

235:                                              ; preds = %232, %228
  %236 = phi i32 [ %234, %232 ], [ 0, %228 ]
  %237 = add nsw i32 %130, -1
  %238 = shl nuw i32 1, %237
  store i32 %130, ptr %5, align 4, !tbaa !160
  %239 = getelementptr inbounds %struct.ColormanageCacheKey, ptr %5, i64 0, i32 1
  store i32 %161, ptr %239, align 4, !tbaa !162
  %240 = load ptr, ptr %183, align 8, !tbaa !75
  %241 = sext i32 %161 to i64
  %242 = getelementptr i32, ptr %240, i64 %241
  %243 = getelementptr i32, ptr %242, i64 -1
  %244 = load i32, ptr %243, align 4, !tbaa !34
  %245 = or i32 %244, %238
  store i32 %245, ptr %243, align 4, !tbaa !34
  %246 = load i32, ptr %9, align 8, !tbaa !101
  %247 = load i32, ptr %13, align 4, !tbaa !102
  %248 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %249 = load i8, ptr %248, align 8, !tbaa !163
  %250 = call ptr @IMB_allocImBuf(i32 noundef %246, i32 noundef %247, i8 noundef zeroext %249, i32 noundef 0) #15
  %251 = getelementptr inbounds %struct.ImBuf, ptr %250, i64 0, i32 8
  store ptr %214, ptr %251, align 8, !tbaa !100
  %252 = getelementptr inbounds %struct.ImBuf, ptr %250, i64 0, i32 7
  %253 = load i32, ptr %252, align 4, !tbaa !135
  %254 = or i32 %253, 1
  store i32 %254, ptr %252, align 4, !tbaa !135
  %255 = getelementptr inbounds %struct.ImBuf, ptr %250, i64 0, i32 6
  %256 = load i32, ptr %255, align 8, !tbaa !164
  %257 = or i32 %256, 1
  store i32 %257, ptr %255, align 8, !tbaa !164
  %258 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %259 = call ptr %258(i64 noundef 40, ptr noundef nonnull @.str.33) #15
  %260 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %259, i64 0, i32 1
  store i32 %113, ptr %260, align 4, !tbaa !165
  %261 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %259, i64 0, i32 2
  store float %134, ptr %261, align 8, !tbaa !167
  %262 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %259, i64 0, i32 3
  store float %137, ptr %262, align 4, !tbaa !168
  %263 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %259, i64 0, i32 4
  store float %140, ptr %263, align 8, !tbaa !169
  store i32 %142, ptr %259, align 8, !tbaa !170
  %264 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %259, i64 0, i32 5
  store ptr %144, ptr %264, align 8, !tbaa !171
  %265 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %259, i64 0, i32 6
  store i32 %236, ptr %265, align 8, !tbaa !172
  %266 = getelementptr inbounds %struct.ImBuf, ptr %250, i64 0, i32 37
  %267 = load ptr, ptr %266, align 8, !tbaa !79
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %235
  %270 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %271 = call ptr %270(i64 noundef 16, ptr noundef nonnull @.str.34) #15
  store ptr %271, ptr %266, align 8, !tbaa !79
  br label %272

272:                                              ; preds = %235, %269
  %273 = load ptr, ptr %266, align 8, !tbaa !79
  %274 = getelementptr inbounds %struct.ColormanageCache, ptr %273, i64 0, i32 1
  store ptr %259, ptr %274, align 8, !tbaa !80
  store ptr %250, ptr %3, align 8, !tbaa !46
  call void @IMB_moviecache_put(ptr noundef %230, ptr noundef nonnull %5, ptr noundef %250) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @BLI_unlock_thread(i32 noundef 8) #15
  br label %275

275:                                              ; preds = %4, %12, %272, %206, %93
  %276 = phi ptr [ %95, %93 ], [ %204, %206 ], [ %214, %272 ], [ null, %12 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  ret ptr %276
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_partial_display_buffer_update(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i8 noundef zeroext %12) local_unnamed_addr #0 {
  %14 = alloca [4 x float], align 16
  %15 = alloca [4 x float], align 16
  %16 = alloca %struct.ColormanageCacheViewSettings, align 8
  %17 = alloca %struct.ColormanageCacheDisplaySettings, align 4
  %18 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #15
  store ptr null, ptr %18, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 36
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = icmp eq ptr %22, null
  br i1 %23, label %111, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 2
  br label %26

26:                                               ; preds = %30, %24
  %27 = phi ptr [ @global_looks, %24 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ColorManagedLook, ptr %28, i64 0, i32 3
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %25) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %26, !llvm.loop !110

34:                                               ; preds = %30, %26
  %35 = phi ptr [ %28, %30 ], [ null, %26 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ColorManagedLook, ptr %35, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !52
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %39, %37 ], [ 0, %34 ]
  %42 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 3
  br label %43

43:                                               ; preds = %47, %40
  %44 = phi ptr [ @global_views, %40 ], [ %45, %47 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ColorManagedView, ptr %45, i64 0, i32 3
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(1) %42) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %43, !llvm.loop !47

51:                                               ; preds = %47, %43
  %52 = phi ptr [ %45, %47 ], [ null, %43 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ColorManagedView, ptr %52, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !48
  br label %57

57:                                               ; preds = %51, %54
  %58 = phi i32 [ %56, %54 ], [ 0, %51 ]
  %59 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %16, i64 0, i32 1
  store i32 %41, ptr %59, align 4, !tbaa !142
  %60 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %16, i64 0, i32 2
  store i32 %58, ptr %60, align 8, !tbaa !144
  %61 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 4
  %62 = load float, ptr %61, align 8, !tbaa !111
  %63 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %16, i64 0, i32 3
  store float %62, ptr %63, align 4, !tbaa !145
  %64 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 5
  %65 = load float, ptr %64, align 4, !tbaa !113
  %66 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %16, i64 0, i32 4
  store float %65, ptr %66, align 8, !tbaa !146
  %67 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %68 = load float, ptr %67, align 8, !tbaa !147
  %69 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %16, i64 0, i32 5
  store float %68, ptr %69, align 4, !tbaa !148
  %70 = load i32, ptr %6, align 8, !tbaa !128
  store i32 %70, ptr %16, align 8, !tbaa !149
  %71 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !129
  %73 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %16, i64 0, i32 6
  store ptr %72, ptr %73, align 8, !tbaa !150
  br label %74

74:                                               ; preds = %78, %57
  %75 = phi ptr [ @global_displays, %57 ], [ %76, %78 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %76, i64 0, i32 3
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(1) %7) #16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %74, !llvm.loop !109

82:                                               ; preds = %78, %74
  %83 = phi ptr [ %76, %78 ], [ null, %74 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %83, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !44
  br label %88

88:                                               ; preds = %82, %85
  %89 = phi i32 [ %87, %85 ], [ 0, %82 ]
  store i32 %89, ptr %17, align 4, !tbaa !151
  %90 = add nsw i32 %58, -1
  %91 = shl nuw i32 1, %90
  tail call void @BLI_lock_thread(i32 noundef 8) #15
  %92 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %93 = load i32, ptr %92, align 4, !tbaa !134
  %94 = and i32 %93, 16
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = call fastcc ptr @colormanage_cache_get(ptr noundef %0, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18)
  br label %98

98:                                               ; preds = %96, %88
  %99 = phi ptr [ %97, %96 ], [ null, %88 ]
  %100 = load i32, ptr %19, align 8, !tbaa !101
  %101 = load ptr, ptr %21, align 8, !tbaa !75
  %102 = load i32, ptr @global_tot_display, align 4, !tbaa !34
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %101, i8 0, i64 %104, i1 false)
  %105 = load ptr, ptr %21, align 8, !tbaa !75
  %106 = sext i32 %89 to i64
  %107 = getelementptr i32, ptr %105, i64 %106
  %108 = getelementptr i32, ptr %107, i64 -1
  %109 = load i32, ptr %108, align 4, !tbaa !34
  %110 = or i32 %109, %91
  store i32 %110, ptr %108, align 4, !tbaa !34
  tail call void @BLI_unlock_thread(i32 noundef 8) #15
  br label %111

111:                                              ; preds = %98, %13
  %112 = phi i32 [ %100, %98 ], [ %20, %13 ]
  %113 = phi ptr [ %99, %98 ], [ null, %13 ]
  %114 = icmp eq ptr %113, null
  %115 = icmp ne i8 %12, 0
  %116 = and i1 %115, %114
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %119 = load ptr, ptr %118, align 8, !tbaa !100
  br label %120

120:                                              ; preds = %117, %111
  %121 = phi ptr [ %119, %117 ], [ %113, %111 ]
  %122 = icmp eq ptr %121, null
  br i1 %122, label %405, label %123

123:                                              ; preds = %120
  %124 = icmp eq ptr %1, null
  %125 = icmp ne ptr %2, null
  %126 = and i1 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %123
  %128 = load i32, ptr %6, align 8, !tbaa !128
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %150

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 4
  %133 = load float, ptr %132, align 8, !tbaa !111
  %134 = fcmp oeq float %133, 0.000000e+00
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 5
  %137 = load float, ptr %136, align 4, !tbaa !113
  %138 = fcmp oeq float %137, 1.000000e+00
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %141 = load ptr, ptr %140, align 8, !tbaa !96
  %142 = tail call ptr @OCIO_getCurrentConfig() #15
  %143 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 3
  %144 = tail call ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef %142, ptr noundef %7, ptr noundef nonnull %143) #15
  tail call void @OCIO_configRelease(ptr noundef %142) #15
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.ColorSpace, ptr %141, i64 0, i32 3
  %148 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %147, ptr noundef nonnull dereferenceable(1) %144) #16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %139, %146, %135, %131, %127, %123
  %151 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %6, ptr noundef %7)
  br label %152

152:                                              ; preds = %146, %150
  %153 = phi ptr [ %151, %150 ], [ null, %146 ]
  %154 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %155 = load i32, ptr %154, align 4, !tbaa !103
  %156 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %157 = load float, ptr %156, align 8, !tbaa !147
  %158 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %159 = load ptr, ptr %158, align 8, !tbaa !96
  %160 = sub nsw i32 %10, %8
  %161 = sub nsw i32 %11, %9
  %162 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %163 = load i32, ptr %162, align 8, !tbaa !98
  %164 = fcmp une float %157, 0.000000e+00
  br i1 %164, label %165, label %174

165:                                              ; preds = %152
  %166 = icmp eq ptr %153, null
  %167 = select i1 %166, i32 4, i32 %155
  %168 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %169 = mul i32 %161, %160
  %170 = mul i32 %169, %167
  %171 = sext i32 %170 to i64
  %172 = shl nsw i64 %171, 2
  %173 = tail call ptr %168(i64 noundef %172, ptr noundef nonnull @.str.36) #15
  br label %174

174:                                              ; preds = %165, %152
  %175 = phi ptr [ %173, %165 ], [ null, %152 ]
  %176 = phi i32 [ %167, %165 ], [ %155, %152 ]
  %177 = icmp eq ptr %153, null
  br i1 %177, label %354, label %178

178:                                              ; preds = %174
  %179 = icmp slt i32 %9, %11
  br i1 %179, label %180, label %380

180:                                              ; preds = %178
  %181 = icmp slt i32 %8, %10
  %182 = getelementptr inbounds float, ptr %14, i64 1
  %183 = getelementptr inbounds float, ptr %14, i64 2
  %184 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 3
  %185 = getelementptr inbounds float, ptr %14, i64 1
  %186 = getelementptr inbounds float, ptr %14, i64 2
  %187 = getelementptr inbounds float, ptr %14, i64 3
  %188 = icmp eq ptr %2, null
  %189 = getelementptr inbounds float, ptr %14, i64 3
  %190 = getelementptr inbounds float, ptr %14, i64 1
  %191 = getelementptr inbounds float, ptr %14, i64 2
  %192 = and i32 %163, 1
  %193 = icmp eq i32 %192, 0
  %194 = icmp eq ptr %175, null
  %195 = getelementptr inbounds float, ptr %14, i64 1
  %196 = getelementptr inbounds float, ptr %14, i64 2
  %197 = getelementptr inbounds float, ptr %14, i64 1
  %198 = getelementptr inbounds float, ptr %14, i64 2
  %199 = getelementptr inbounds float, ptr %14, i64 3
  %200 = getelementptr inbounds float, ptr %14, i64 3
  %201 = getelementptr inbounds float, ptr %14, i64 1
  %202 = getelementptr inbounds float, ptr %15, i64 1
  %203 = getelementptr inbounds float, ptr %14, i64 2
  %204 = getelementptr inbounds float, ptr %15, i64 2
  %205 = getelementptr inbounds float, ptr %15, i64 3
  %206 = getelementptr inbounds float, ptr %14, i64 1
  %207 = getelementptr inbounds float, ptr %15, i64 1
  %208 = getelementptr inbounds float, ptr %14, i64 2
  %209 = getelementptr inbounds float, ptr %15, i64 2
  %210 = getelementptr inbounds float, ptr %15, i64 3
  %211 = zext i32 %8 to i64
  %212 = zext i32 %9 to i64
  %213 = zext i32 %112 to i64
  br label %214

214:                                              ; preds = %180, %350
  %215 = phi i64 [ %212, %180 ], [ %351, %350 ]
  br i1 %181, label %216, label %350

216:                                              ; preds = %214
  %217 = mul i64 %215, %213
  %218 = trunc i64 %215 to i32
  %219 = sub i32 %218, %5
  %220 = mul i32 %219, %3
  %221 = sub i32 %220, %4
  %222 = trunc i64 %215 to i32
  %223 = sub i32 %222, %9
  %224 = mul nsw i32 %223, %160
  %225 = sub i32 %224, %8
  br label %226

226:                                              ; preds = %216, %346
  %227 = phi i64 [ %211, %216 ], [ %347, %346 ]
  %228 = add i64 %227, %217
  %229 = trunc i64 %228 to i32
  %230 = shl nsw i32 %229, 2
  %231 = trunc i64 %227 to i32
  %232 = add i32 %221, %231
  %233 = mul nsw i32 %232, %176
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #15
  br i1 %124, label %257, label %234

234:                                              ; preds = %226
  switch i32 %176, label %268 [
    i32 4, label %235
    i32 3, label %245
    i32 1, label %253
  ]

235:                                              ; preds = %234
  %236 = sext i32 %233 to i64
  %237 = getelementptr inbounds float, ptr %1, i64 %236
  %238 = load float, ptr %237, align 4, !tbaa !127
  store float %238, ptr %14, align 16, !tbaa !127
  %239 = getelementptr inbounds float, ptr %237, i64 1
  %240 = load float, ptr %239, align 4, !tbaa !127
  store float %240, ptr %185, align 4, !tbaa !127
  %241 = getelementptr inbounds float, ptr %237, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !127
  store float %242, ptr %186, align 8, !tbaa !127
  %243 = getelementptr inbounds float, ptr %237, i64 3
  %244 = load float, ptr %243, align 4, !tbaa !127
  store float %244, ptr %187, align 4, !tbaa !127
  br label %268

245:                                              ; preds = %234
  %246 = sext i32 %233 to i64
  %247 = getelementptr inbounds float, ptr %1, i64 %246
  %248 = load float, ptr %247, align 4, !tbaa !127
  store float %248, ptr %14, align 16, !tbaa !127
  %249 = getelementptr inbounds float, ptr %247, i64 1
  %250 = load float, ptr %249, align 4, !tbaa !127
  store float %250, ptr %182, align 4, !tbaa !127
  %251 = getelementptr inbounds float, ptr %247, i64 2
  %252 = load float, ptr %251, align 4, !tbaa !127
  store float %252, ptr %183, align 8, !tbaa !127
  store float 1.000000e+00, ptr %184, align 4, !tbaa !127
  br label %268

253:                                              ; preds = %234
  %254 = sext i32 %233 to i64
  %255 = getelementptr inbounds float, ptr %1, i64 %254
  %256 = load float, ptr %255, align 4, !tbaa !127
  store float %256, ptr %14, align 16, !tbaa !127
  br label %268

257:                                              ; preds = %226
  br i1 %188, label %268, label %258

258:                                              ; preds = %257
  %259 = sext i32 %233 to i64
  %260 = getelementptr inbounds i8, ptr %2, i64 %259
  call void @rgba_uchar_to_float(ptr noundef nonnull %14, ptr noundef nonnull %260) #15
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %14, ptr noundef %159)
  %261 = load float, ptr %189, align 4, !tbaa !127
  %262 = load float, ptr %14, align 16, !tbaa !127
  %263 = fmul float %261, %262
  store float %263, ptr %14, align 16, !tbaa !127
  %264 = load float, ptr %190, align 4, !tbaa !127
  %265 = fmul float %261, %264
  store float %265, ptr %190, align 4, !tbaa !127
  %266 = load float, ptr %191, align 8, !tbaa !127
  %267 = fmul float %261, %266
  store float %267, ptr %191, align 8, !tbaa !127
  br label %268

268:                                              ; preds = %258, %257, %253, %245, %235, %234
  br i1 %193, label %269, label %270

269:                                              ; preds = %268
  call void @IMB_colormanagement_processor_apply_pixel(ptr noundef nonnull %153, ptr noundef nonnull %14, i32 noundef %176)
  br label %270

270:                                              ; preds = %269, %268
  br i1 %194, label %297, label %271

271:                                              ; preds = %270
  %272 = trunc i64 %227 to i32
  %273 = add i32 %225, %272
  %274 = mul nsw i32 %273, %176
  switch i32 %176, label %293 [
    i32 4, label %275
    i32 3, label %285
  ]

275:                                              ; preds = %271
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds float, ptr %175, i64 %276
  %278 = load float, ptr %14, align 16, !tbaa !127
  store float %278, ptr %277, align 4, !tbaa !127
  %279 = load float, ptr %197, align 4, !tbaa !127
  %280 = getelementptr inbounds float, ptr %277, i64 1
  store float %279, ptr %280, align 4, !tbaa !127
  %281 = load float, ptr %198, align 8, !tbaa !127
  %282 = getelementptr inbounds float, ptr %277, i64 2
  store float %281, ptr %282, align 4, !tbaa !127
  %283 = load float, ptr %199, align 4, !tbaa !127
  %284 = getelementptr inbounds float, ptr %277, i64 3
  store float %283, ptr %284, align 4, !tbaa !127
  br label %346

285:                                              ; preds = %271
  %286 = sext i32 %274 to i64
  %287 = getelementptr inbounds float, ptr %175, i64 %286
  %288 = load float, ptr %14, align 16, !tbaa !127
  store float %288, ptr %287, align 4, !tbaa !127
  %289 = load float, ptr %195, align 4, !tbaa !127
  %290 = getelementptr inbounds float, ptr %287, i64 1
  store float %289, ptr %290, align 4, !tbaa !127
  %291 = load float, ptr %196, align 8, !tbaa !127
  %292 = getelementptr inbounds float, ptr %287, i64 2
  store float %291, ptr %292, align 4, !tbaa !127
  br label %346

293:                                              ; preds = %271
  %294 = load float, ptr %14, align 16, !tbaa !127
  %295 = sext i32 %274 to i64
  %296 = getelementptr inbounds float, ptr %175, i64 %295
  store float %294, ptr %296, align 4, !tbaa !127
  br label %346

297:                                              ; preds = %270
  switch i32 %176, label %325 [
    i32 4, label %298
    i32 3, label %319
  ]

298:                                              ; preds = %297
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #15
  %299 = load float, ptr %200, align 4, !tbaa !127
  %300 = fcmp oeq float %299, 0.000000e+00
  %301 = fcmp oeq float %299, 1.000000e+00
  %302 = or i1 %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %298
  %304 = load float, ptr %14, align 16, !tbaa !127
  store float %304, ptr %15, align 16, !tbaa !127
  %305 = load float, ptr %206, align 4, !tbaa !127
  store float %305, ptr %207, align 4, !tbaa !127
  %306 = load float, ptr %208, align 8, !tbaa !127
  store float %306, ptr %209, align 8, !tbaa !127
  br label %315

307:                                              ; preds = %298
  %308 = fdiv float 1.000000e+00, %299
  %309 = load float, ptr %14, align 16, !tbaa !127
  %310 = fmul float %308, %309
  store float %310, ptr %15, align 16, !tbaa !127
  %311 = load float, ptr %201, align 4, !tbaa !127
  %312 = fmul float %308, %311
  store float %312, ptr %202, align 4, !tbaa !127
  %313 = load float, ptr %203, align 8, !tbaa !127
  %314 = fmul float %308, %313
  store float %314, ptr %204, align 8, !tbaa !127
  br label %315

315:                                              ; preds = %307, %303
  %316 = phi ptr [ %205, %307 ], [ %210, %303 ]
  store float %299, ptr %316, align 4, !tbaa !127
  %317 = sext i32 %230 to i64
  %318 = getelementptr inbounds i8, ptr %121, i64 %317
  call void @rgba_float_to_uchar(ptr noundef nonnull %318, ptr noundef nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #15
  br label %346

319:                                              ; preds = %297
  %320 = sext i32 %230 to i64
  %321 = getelementptr inbounds i8, ptr %121, i64 %320
  call void @rgb_float_to_uchar(ptr noundef nonnull %321, ptr noundef nonnull %14) #15
  %322 = or disjoint i32 %230, 3
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, ptr %121, i64 %323
  store i8 -1, ptr %324, align 1, !tbaa !94
  br label %346

325:                                              ; preds = %297
  %326 = load float, ptr %14, align 16
  %327 = fcmp ugt float %326, 0.000000e+00
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = fcmp ogt float %326, 0x3FEFEFEFE0000000
  %330 = call float @llvm.fmuladd.f32(float %326, float 2.550000e+02, float 5.000000e-01)
  %331 = select i1 %329, float 2.550000e+02, float %330
  br label %332

332:                                              ; preds = %328, %325
  %333 = phi float [ %331, %328 ], [ 0.000000e+00, %325 ]
  %334 = fptoui float %333 to i8
  %335 = or disjoint i32 %230, 3
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, ptr %121, i64 %336
  store i8 %334, ptr %337, align 1, !tbaa !94
  %338 = or disjoint i32 %230, 2
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, ptr %121, i64 %339
  store i8 %334, ptr %340, align 1, !tbaa !94
  %341 = or disjoint i32 %230, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, ptr %121, i64 %342
  store i8 %334, ptr %343, align 1, !tbaa !94
  %344 = sext i32 %230 to i64
  %345 = getelementptr inbounds i8, ptr %121, i64 %344
  store i8 %334, ptr %345, align 1, !tbaa !94
  br label %346

346:                                              ; preds = %332, %319, %315, %293, %285, %275
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #15
  %347 = add i64 %227, 1
  %348 = trunc i64 %347 to i32
  %349 = icmp eq i32 %348, %10
  br i1 %349, label %350, label %226, !llvm.loop !173

350:                                              ; preds = %346, %214
  %351 = add i64 %215, 1
  %352 = trunc i64 %351 to i32
  %353 = icmp eq i32 %352, %11
  br i1 %353, label %380, label %214, !llvm.loop !174

354:                                              ; preds = %174
  %355 = icmp eq ptr %175, null
  br i1 %355, label %356, label %363

356:                                              ; preds = %354
  %357 = icmp slt i32 %9, %11
  br i1 %357, label %358, label %380

358:                                              ; preds = %356
  %359 = sext i32 %160 to i64
  %360 = shl nsw i64 %359, 2
  %361 = sext i32 %9 to i64
  %362 = sext i32 %11 to i64
  br label %364

363:                                              ; preds = %354
  tail call void @IMB_buffer_float_from_byte(ptr noundef nonnull %175, ptr noundef %2, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 1, i32 noundef %160, i32 noundef %161, i32 noundef %160, i32 noundef %112) #15
  br label %380

364:                                              ; preds = %358, %364
  %365 = phi i64 [ %361, %358 ], [ %378, %364 ]
  %366 = trunc i64 %365 to i32
  %367 = mul i32 %366, %3
  %368 = add i32 %367, %8
  %369 = shl nsw i32 %368, 2
  %370 = trunc i64 %365 to i32
  %371 = mul i32 %112, %370
  %372 = add i32 %371, %8
  %373 = shl nsw i32 %372, 2
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8, ptr %121, i64 %374
  %376 = sext i32 %369 to i64
  %377 = getelementptr inbounds i8, ptr %2, i64 %376
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %375, ptr align 1 %377, i64 %360, i1 false)
  %378 = add nsw i64 %365, 1
  %379 = icmp eq i64 %378, %362
  br i1 %379, label %380, label %364, !llvm.loop !175

380:                                              ; preds = %350, %364, %178, %356, %363
  %381 = icmp eq ptr %175, null
  br i1 %381, label %389, label %382

382:                                              ; preds = %380
  %383 = mul nsw i32 %112, %9
  %384 = add nsw i32 %383, %8
  %385 = mul nsw i32 %176, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8, ptr %121, i64 %386
  call void @IMB_buffer_byte_from_float(ptr noundef nonnull %387, ptr noundef nonnull %175, i32 noundef %176, float noundef %157, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 1, i32 noundef %160, i32 noundef %161, i32 noundef %112, i32 noundef %160) #15
  %388 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %388(ptr noundef nonnull %175) #15
  br label %389

389:                                              ; preds = %380, %382
  br i1 %177, label %401, label %390

390:                                              ; preds = %389
  %391 = getelementptr inbounds %struct.ColormanageProcessor, ptr %153, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !108
  %393 = icmp eq ptr %392, null
  br i1 %393, label %395, label %394

394:                                              ; preds = %390
  call void @curvemapping_free(ptr noundef nonnull %392) #15
  br label %395

395:                                              ; preds = %394, %390
  %396 = load ptr, ptr %153, align 8, !tbaa !107
  %397 = icmp eq ptr %396, null
  br i1 %397, label %399, label %398

398:                                              ; preds = %395
  call void @OCIO_processorRelease(ptr noundef nonnull %396) #15
  br label %399

399:                                              ; preds = %395, %398
  %400 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %400(ptr noundef nonnull %153) #15
  br label %401

401:                                              ; preds = %399, %389
  %402 = load ptr, ptr %18, align 8, !tbaa !46
  %403 = icmp eq ptr %402, null
  br i1 %403, label %405, label %404

404:                                              ; preds = %401
  call void @BLI_lock_thread(i32 noundef 8) #15
  call void @IMB_freeImBuf(ptr noundef nonnull %402) #15
  call void @BLI_unlock_thread(i32 noundef 8) #15
  br label %405

405:                                              ; preds = %404, %401, %120
  %406 = icmp eq i8 %12, 0
  br i1 %406, label %430, label %407

407:                                              ; preds = %405
  %408 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %409 = load ptr, ptr %408, align 8, !tbaa !100
  %410 = icmp ne ptr %409, %121
  %411 = icmp slt i32 %9, %11
  %412 = and i1 %410, %411
  br i1 %412, label %413, label %430

413:                                              ; preds = %407
  %414 = shl i32 %112, 2
  %415 = sub nsw i32 %10, %8
  %416 = shl nsw i32 %415, 2
  %417 = sext i32 %416 to i64
  %418 = zext i32 %9 to i64
  br label %419

419:                                              ; preds = %413, %419
  %420 = phi i64 [ %418, %413 ], [ %427, %419 ]
  %421 = trunc i64 %420 to i32
  %422 = mul i32 %414, %421
  %423 = load ptr, ptr %408, align 8, !tbaa !100
  %424 = sext i32 %422 to i64
  %425 = getelementptr inbounds i8, ptr %423, i64 %424
  %426 = getelementptr inbounds i8, ptr %121, i64 %424
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %425, ptr align 1 %426, i64 %417, i1 false)
  %427 = add i64 %420, 1
  %428 = trunc i64 %427 to i32
  %429 = icmp eq i32 %428, %11
  br i1 %429, label %430, label %419, !llvm.loop !176

430:                                              ; preds = %419, %407, %405
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #15
  ret void
}

declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @colormanage_cache_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.ColormanageCacheKey, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !144
  %8 = add nsw i32 %7, -1
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.CurveMapping, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !157
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %4 ]
  store i32 %7, ptr %5, align 4, !tbaa !160
  %18 = load i32, ptr %2, align 4, !tbaa !151
  %19 = getelementptr inbounds %struct.ColormanageCacheKey, ptr %5, i64 0, i32 1
  store i32 %18, ptr %19, align 4, !tbaa !162
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 36
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = sext i32 %18 to i64
  %23 = getelementptr i32, ptr %21, i64 %22
  %24 = getelementptr i32, ptr %23, i64 -1
  %25 = load i32, ptr %24, align 4, !tbaa !34
  %26 = and i32 %25, %9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %90, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 37
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 8, !tbaa !82
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi ptr [ %33, %32 ], [ null, %28 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  store ptr null, ptr %3, align 8, !tbaa !46
  %38 = call ptr @IMB_moviecache_get(ptr noundef nonnull %35, ptr noundef nonnull %5) #15
  store ptr %38, ptr %3, align 8, !tbaa !46
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %38, %37 ], [ null, %34 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %90, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ImBuf, ptr %40, i64 0, i32 37
  %44 = load ptr, ptr %43, align 8, !tbaa !79
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ColormanageCache, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !80
  br label %49

49:                                               ; preds = %42, %46
  %50 = phi ptr [ %48, %46 ], [ null, %42 ]
  %51 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !165
  %53 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !142
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %50, i64 0, i32 2
  %58 = load float, ptr %57, align 8, !tbaa !167
  %59 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 3
  %60 = load float, ptr %59, align 4, !tbaa !145
  %61 = fcmp une float %58, %60
  br i1 %61, label %86, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %50, i64 0, i32 3
  %64 = load float, ptr %63, align 4, !tbaa !168
  %65 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 4
  %66 = load float, ptr %65, align 8, !tbaa !146
  %67 = fcmp une float %64, %66
  br i1 %67, label %86, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %50, i64 0, i32 4
  %70 = load float, ptr %69, align 8, !tbaa !169
  %71 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 5
  %72 = load float, ptr %71, align 4, !tbaa !148
  %73 = fcmp une float %70, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = load i32, ptr %50, align 8, !tbaa !170
  %76 = load i32, ptr %1, align 8, !tbaa !149
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %50, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !171
  %81 = icmp eq ptr %80, %11
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %50, i64 0, i32 6
  %84 = load i32, ptr %83, align 8, !tbaa !172
  %85 = icmp eq i32 %84, %17
  br i1 %85, label %87, label %86

86:                                               ; preds = %82, %78, %74, %68, %62, %56, %49
  store ptr null, ptr %3, align 8, !tbaa !46
  call void @IMB_freeImBuf(ptr noundef nonnull %40) #15
  br label %90

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.ImBuf, ptr %40, i64 0, i32 8
  %89 = load ptr, ptr %88, align 8, !tbaa !100
  br label %90

90:                                               ; preds = %39, %86, %87, %16
  %91 = phi ptr [ null, %16 ], [ null, %86 ], [ %89, %87 ], [ null, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret ptr %91
}

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_display_buffer_acquire_ctx(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 44
  %7 = icmp eq ptr %5, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !90
  %15 = and i16 %14, 2048
  %16 = icmp eq i16 %15, 0
  %17 = select i1 %16, ptr null, ptr %6
  br label %18

18:                                               ; preds = %12, %3, %8
  %19 = phi ptr [ %6, %3 ], [ %6, %8 ], [ %17, %12 ]
  %20 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 45
  %21 = tail call ptr @IMB_display_buffer_acquire(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %20, ptr noundef %2)
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_display_buffer_transform_apply(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %5, ptr noundef %6)
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %11 = mul i32 %3, %2
  %12 = mul i32 %11, %4
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.13) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %1, i64 %14, i1 false)
  tail call void @IMB_colormanagement_processor_apply(ptr noundef %9, ptr noundef %15, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %7)
  %16 = getelementptr inbounds %struct.ColormanageProcessor, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %8
  tail call void @curvemapping_free(ptr noundef nonnull %17) #15
  br label %20

20:                                               ; preds = %19, %8
  %21 = load ptr, ptr %9, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @OCIO_processorRelease(ptr noundef nonnull %21) #15
  br label %24

24:                                               ; preds = %20, %23
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %25(ptr noundef nonnull %9) #15
  tail call void @IMB_buffer_byte_from_float(ptr noundef %0, ptr noundef %15, i32 noundef %4, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef %2) #15
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %26(ptr noundef %15) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_processor_apply(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = icmp ne ptr %8, null
  %10 = icmp sgt i32 %3, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %6
  %13 = icmp sgt i32 %2, 0
  %14 = sext i32 %4 to i64
  %15 = sext i32 %2 to i64
  %16 = zext i32 %3 to i64
  %17 = zext nneg i32 %2 to i64
  br label %18

18:                                               ; preds = %12, %43
  %19 = phi i64 [ 0, %12 ], [ %44, %43 ]
  br i1 %13, label %20, label %43

20:                                               ; preds = %18
  %21 = mul nsw i64 %19, %15
  br label %22

22:                                               ; preds = %20, %40
  %23 = phi i64 [ 0, %20 ], [ %41, %40 ]
  %24 = add nuw nsw i64 %23, %21
  %25 = mul nsw i64 %24, %14
  %26 = getelementptr inbounds float, ptr %1, i64 %25
  %27 = load ptr, ptr %7, align 8, !tbaa !108
  switch i32 %4, label %39 [
    i32 1, label %28
    i32 2, label %32
  ]

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.CurveMapping, ptr %27, i64 0, i32 6
  %30 = load float, ptr %26, align 4, !tbaa !127
  %31 = tail call float @curvemap_evaluateF(ptr noundef nonnull %29, float noundef %30) #15
  store float %31, ptr %26, align 4, !tbaa !127
  br label %40

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.CurveMapping, ptr %27, i64 0, i32 6
  %34 = load float, ptr %26, align 4, !tbaa !127
  %35 = tail call float @curvemap_evaluateF(ptr noundef nonnull %33, float noundef %34) #15
  store float %35, ptr %26, align 4, !tbaa !127
  %36 = getelementptr inbounds float, ptr %26, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !127
  %38 = tail call float @curvemap_evaluateF(ptr noundef nonnull %33, float noundef %37) #15
  store float %38, ptr %36, align 4, !tbaa !127
  br label %40

39:                                               ; preds = %22
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef %27, ptr noundef %26, ptr noundef %26) #15
  br label %40

40:                                               ; preds = %28, %32, %39
  %41 = add nuw nsw i64 %23, 1
  %42 = icmp eq i64 %41, %17
  br i1 %42, label %43, label %22, !llvm.loop !177

43:                                               ; preds = %40, %18
  %44 = add nuw nsw i64 %19, 1
  %45 = icmp eq i64 %44, %16
  br i1 %45, label %46, label %18, !llvm.loop !178

46:                                               ; preds = %43, %6
  %47 = load ptr, ptr %0, align 8, !tbaa !107
  %48 = icmp ne ptr %47, null
  %49 = icmp sgt i32 %4, 2
  %50 = and i1 %49, %48
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = sext i32 %2 to i64
  %53 = sext i32 %3 to i64
  %54 = zext nneg i32 %4 to i64
  %55 = shl nuw nsw i64 %54, 2
  %56 = mul i64 %55, %52
  %57 = tail call ptr @OCIO_createOCIO_PackedImageDesc(ptr noundef %1, i64 noundef %52, i64 noundef %53, i64 noundef %54, i64 noundef 4, i64 noundef %55, i64 noundef %56) #15
  %58 = icmp eq i8 %5, 0
  %59 = load ptr, ptr %0, align 8, !tbaa !107
  br i1 %58, label %61, label %60

60:                                               ; preds = %51
  tail call void @OCIO_processorApply_predivide(ptr noundef %59, ptr noundef %57) #15
  br label %62

61:                                               ; preds = %51
  tail call void @OCIO_processorApply(ptr noundef %59, ptr noundef %57) #15
  br label %62

62:                                               ; preds = %61, %60
  tail call void @OCIO_PackedImageDescRelease(ptr noundef %57) #15
  br label %63

63:                                               ; preds = %62, %46
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_display_buffer_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @BLI_lock_thread(i32 noundef 8) #15
  tail call void @IMB_freeImBuf(ptr noundef nonnull %0) #15
  tail call void @BLI_unlock_thread(i32 noundef 8) #15
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_display_get_default_name() local_unnamed_addr #0 {
  %1 = tail call ptr @OCIO_getCurrentConfig() #15
  %2 = tail call ptr @OCIO_configGetDefaultDisplay(ptr noundef %1) #15
  tail call void @OCIO_configRelease(ptr noundef %1) #15
  ret ptr %2
}

declare ptr @OCIO_configGetDefaultDisplay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_display_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @global_displays, i64 0, i32 1), align 8, !tbaa !41
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = add nsw i32 %6, 1
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ %7, %4 ], [ 1, %1 ]
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %11 = tail call ptr %10(i64 noundef 120, ptr noundef nonnull @.str.14) #15
  %12 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %11, i64 0, i32 2
  store i32 %9, ptr %12, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %11, i64 0, i32 3
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef %0, i64 noundef 64) #15
  tail call void @BLI_addtail(ptr noundef nonnull @global_displays, ptr noundef %11) #15
  ret ptr %11
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_display_get_indexed(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_displays, i32 noundef %2) #15
  ret ptr %3
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_colormanagement_display_get_named_index(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_displays, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !109

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !44
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_colormanagement_display_get_indexed_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_displays, i32 noundef %2) #15
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %3, i64 0, i32 3
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @IMB_colormanagement_display_get_default_name() local_unnamed_addr #0 {
  %1 = tail call ptr @OCIO_getCurrentConfig() #15
  %2 = tail call ptr @OCIO_configGetDefaultDisplay(ptr noundef %1) #15
  tail call void @OCIO_configRelease(ptr noundef %1) #15
  %3 = load i8, ptr %2, align 1, !tbaa !94
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %0, %9
  %6 = phi ptr [ %7, %9 ], [ @global_displays, %0 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %7, i64 0, i32 3
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %2) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !109

13:                                               ; preds = %5, %9, %0
  %14 = phi ptr [ null, %0 ], [ %7, %9 ], [ null, %5 ]
  %15 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %14, i64 0, i32 3
  ret ptr %15
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @IMB_colormanagement_display_get_named(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_displays, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !109

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_colormanagement_display_get_none_name() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi ptr [ @global_displays, %0 ], [ %3, %5 ]
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %3, i64 0, i32 3
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.15) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %1, !llvm.loop !109

9:                                                ; preds = %5
  br i1 %4, label %10, label %13

10:                                               ; preds = %1, %9
  %11 = tail call ptr @OCIO_getCurrentConfig() #15
  %12 = tail call ptr @OCIO_configGetDefaultDisplay(ptr noundef %11) #15
  tail call void @OCIO_configRelease(ptr noundef %11) #15
  br label %13

13:                                               ; preds = %9, %10
  %14 = phi ptr [ %12, %10 ], [ @.str.15, %9 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_view_get_default_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @OCIO_getCurrentConfig() #15
  %3 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %0, i64 0, i32 3
  %4 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %2, ptr noundef nonnull %3) #15
  tail call void @OCIO_configRelease(ptr noundef %2) #15
  ret ptr %4
}

declare ptr @OCIO_configGetDefaultView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @colormanage_view_get_named(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_views, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorManagedView, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !47

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_view_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @global_tot_view, align 4, !tbaa !34
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %4 = tail call ptr %3(i64 noundef 88, ptr noundef nonnull @.str.16) #15
  %5 = add nsw i32 %2, 1
  %6 = getelementptr inbounds %struct.ColorManagedView, ptr %4, i64 0, i32 2
  store i32 %5, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.ColorManagedView, ptr %4, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %0, i64 noundef 64) #15
  tail call void @BLI_addtail(ptr noundef nonnull @global_views, ptr noundef %4) #15
  %9 = load i32, ptr @global_tot_view, align 4, !tbaa !34
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @global_tot_view, align 4, !tbaa !34
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_view_get_indexed(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_views, i32 noundef %2) #15
  ret ptr %3
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_colormanagement_view_get_named_index(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_views, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorManagedView, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !47

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ColorManagedView, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !48
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_colormanagement_view_get_indexed_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_views, i32 noundef %2) #15
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.ColorManagedView, ptr %3, i64 0, i32 3
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_colormanagement_view_get_default_name(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_displays, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !109

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @OCIO_getCurrentConfig() #15
  %15 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %11, i64 0, i32 3
  %16 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %14, ptr noundef nonnull %15) #15
  tail call void @OCIO_configRelease(ptr noundef %14) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = load i8, ptr %16, align 1, !tbaa !94
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18, %25
  %22 = phi ptr [ %23, %25 ], [ @global_views, %18 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ColorManagedView, ptr %23, i64 0, i32 3
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %16) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %21, !llvm.loop !47

29:                                               ; preds = %25, %21, %18, %13, %10
  %30 = phi ptr [ null, %10 ], [ null, %18 ], [ null, %13 ], [ %23, %25 ], [ null, %21 ]
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.ColorManagedView, ptr %30, i64 0, i32 3
  %33 = select i1 %31, ptr null, ptr %32
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_colorspace_add(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %6 = tail call ptr %5(i64 noundef 624, ptr noundef nonnull @.str.17) #15
  %7 = getelementptr inbounds %struct.ColorSpace, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %0, i64 noundef 64) #15
  %9 = icmp eq ptr %1, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ColorSpace, ptr %6, i64 0, i32 4
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef nonnull %1, i64 noundef 512) #15
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #16
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = and i64 %13, 4294967295
  br label %18

18:                                               ; preds = %16, %23
  %19 = phi i64 [ %17, %16 ], [ %20, %23 ]
  %20 = add nsw i64 %19, -1
  %21 = getelementptr inbounds i8, ptr %11, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !94
  switch i8 %22, label %25 [
    i8 13, label %23
    i8 10, label %23
  ]

23:                                               ; preds = %18, %18
  store i8 0, ptr %21, align 1, !tbaa !94
  %24 = icmp sgt i64 %19, 1
  br i1 %24, label %18, label %25, !llvm.loop !179

25:                                               ; preds = %23, %18, %10
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #16
  %27 = trunc i64 %26 to i32
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = and i64 %26, 4294967295
  br label %31

31:                                               ; preds = %29, %36
  %32 = phi i64 [ 0, %29 ], [ %37, %36 ]
  %33 = getelementptr inbounds i8, ptr %11, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !94
  switch i8 %34, label %36 [
    i8 13, label %35
    i8 10, label %35
  ]

35:                                               ; preds = %31, %31
  store i8 32, ptr %33, align 1, !tbaa !94
  br label %36

36:                                               ; preds = %35, %31
  %37 = add nuw nsw i64 %32, 1
  %38 = icmp eq i64 %37, %30
  br i1 %38, label %39, label %31, !llvm.loop !180

39:                                               ; preds = %36, %25, %4
  %40 = getelementptr inbounds %struct.ColorSpace, ptr %6, i64 0, i32 7
  store i8 %2, ptr %40, align 8, !tbaa !181
  %41 = getelementptr inbounds %struct.ColorSpace, ptr %6, i64 0, i32 8
  store i8 %3, ptr %41, align 1, !tbaa !97
  %42 = load ptr, ptr @global_colorspaces, align 8, !tbaa !46
  %43 = icmp eq ptr %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %39, %50
  %45 = phi ptr [ %53, %50 ], [ %42, %39 ]
  %46 = phi i32 [ %51, %50 ], [ 1, %39 ]
  %47 = getelementptr inbounds %struct.ColorSpace, ptr %45, i64 0, i32 3
  %48 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %47, ptr noundef nonnull %7) #15
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = add nuw nsw i32 %46, 1
  %52 = getelementptr inbounds %struct.ColorSpace, ptr %45, i64 0, i32 2
  store i32 %46, ptr %52, align 8, !tbaa !182
  %53 = load ptr, ptr %45, align 8, !tbaa !46
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %44, !llvm.loop !183

55:                                               ; preds = %50, %39
  %56 = phi i32 [ 1, %39 ], [ %51, %50 ]
  %57 = phi ptr [ %42, %39 ], [ %53, %50 ]
  tail call void @BLI_addtail(ptr noundef nonnull @global_colorspaces, ptr noundef %6) #15
  br label %59

58:                                               ; preds = %44
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull @global_colorspaces, ptr noundef nonnull %45, ptr noundef %6) #15
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %46, %58 ], [ %56, %55 ]
  %61 = phi ptr [ %45, %58 ], [ %57, %55 ]
  %62 = getelementptr inbounds %struct.ColorSpace, ptr %6, i64 0, i32 2
  store i32 %60, ptr %62, align 8, !tbaa !182
  %63 = icmp eq ptr %61, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %59, %64
  %65 = phi i32 [ %67, %64 ], [ %60, %59 ]
  %66 = phi ptr [ %69, %64 ], [ %61, %59 ]
  %67 = add nuw nsw i32 %65, 1
  %68 = getelementptr inbounds %struct.ColorSpace, ptr %66, i64 0, i32 2
  store i32 %67, ptr %68, align 8, !tbaa !182
  %69 = load ptr, ptr %66, align 8, !tbaa !57
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %64, !llvm.loop !184

71:                                               ; preds = %64, %59
  %72 = load i32, ptr @global_tot_colorspace, align 4, !tbaa !34
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr @global_tot_colorspace, align 4, !tbaa !34
  ret ptr %6
}

declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @colormanage_colorspace_get_roled(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp ult i32 %0, 6
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.IMB_colormanagement_role_colorspace_name_get)
  br label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [6 x ptr], ptr @switch.table.IMB_colormanagment_colorspace_from_ibuf_ftype, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi ptr [ null, %3 ], [ %8, %5 ]
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ @global_colorspaces, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ColorSpace, ptr %13, i64 0, i32 3
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %10) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %11, !llvm.loop !95

19:                                               ; preds = %11, %15
  %20 = phi ptr [ %13, %15 ], [ null, %11 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_colorspace_get_indexed(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_colorspaces, i32 noundef %2) #15
  ret ptr %3
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_colormanagement_colorspace_get_named_index(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_colorspaces, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorSpace, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !95

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ColorSpace, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !182
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @IMB_colormanagement_colorspace_get_indexed_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_colorspaces, i32 noundef %2) #15
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.ColorSpace, ptr %3, i64 0, i32 3
  %6 = select i1 %4, ptr @.str.18, ptr %5
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagment_colorspace_from_ibuf_ftype(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !46
  %4 = icmp ugt ptr %3, @IMB_FILE_TYPES
  br i1 %4, label %5, label %32

5:                                                ; preds = %2, %28
  %6 = phi ptr [ %29, %28 ], [ @IMB_FILE_TYPES, %2 ]
  %7 = getelementptr inbounds %struct.ImFileType, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ImFileType, ptr %6, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = tail call i32 %12(ptr noundef nonnull %6, ptr noundef %1) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ImFileType, ptr %6, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !185
  %18 = icmp ult i32 %17, 6
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.IMB_colormanagement_role_colorspace_name_get)
  br label %25

21:                                               ; preds = %15
  %22 = zext nneg i32 %17 to i64
  %23 = getelementptr inbounds [6 x ptr], ptr @switch.table.IMB_colormanagment_colorspace_from_ibuf_ftype, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi ptr [ null, %19 ], [ %24, %21 ]
  %27 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %26, i64 noundef 64) #15
  br label %28

28:                                               ; preds = %5, %10, %25
  %29 = getelementptr inbounds %struct.ImFileType, ptr %6, i64 1
  %30 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !46
  %31 = icmp ult ptr %29, %30
  br i1 %31, label %5, label %32, !llvm.loop !186

32:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_look_add(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @global_tot_looks, align 4, !tbaa !34
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %6 = tail call ptr %5(i64 noundef 152, ptr noundef nonnull @.str.19) #15
  %7 = add nsw i32 %4, 1
  %8 = getelementptr inbounds %struct.ColorManagedLook, ptr %6, i64 0, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.ColorManagedLook, ptr %6, i64 0, i32 3
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef %0, i64 noundef 64) #15
  %11 = getelementptr inbounds %struct.ColorManagedLook, ptr %6, i64 0, i32 4
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef %1, i64 noundef 64) #15
  %13 = getelementptr inbounds %struct.ColorManagedLook, ptr %6, i64 0, i32 5
  store i8 %2, ptr %13, align 4, !tbaa !54
  tail call void @BLI_addtail(ptr noundef nonnull @global_looks, ptr noundef %6) #15
  %14 = load i32, ptr @global_tot_looks, align 4, !tbaa !34
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @global_tot_looks, align 4, !tbaa !34
  ret ptr %6
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @colormanage_look_get_named(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_looks, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorManagedLook, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !110

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @colormanage_look_get_indexed(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_looks, i32 noundef %2) #15
  ret ptr %3
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_colormanagement_look_get_named_index(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_looks, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorManagedLook, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !110

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ColorManagedLook, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_colormanagement_look_get_indexed_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_looks, i32 noundef %2) #15
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.ColorManagedLook, ptr %3, i64 0, i32 3
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_display_items_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.EnumPropertyItem, align 8
  %4 = load ptr, ptr @global_displays, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 3
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 1
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 2
  %10 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 4
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi ptr [ %4, %6 ], [ %16, %11 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %13 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !44
  store i32 %14, ptr %3, align 8, !tbaa !187
  %15 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %12, i64 0, i32 3
  store ptr %15, ptr %7, align 8, !tbaa !189
  store ptr %15, ptr %8, align 8, !tbaa !190
  store i32 0, ptr %9, align 8, !tbaa !191
  store ptr @.str.18, ptr %10, align 8, !tbaa !192
  call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  %16 = load ptr, ptr %12, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !193

18:                                               ; preds = %11, %2
  ret void
}

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_view_items_add(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.EnumPropertyItem, align 8
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ @global_displays, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %7, i64 0, i32 3
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %2) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !109

13:                                               ; preds = %5, %9
  %14 = phi ptr [ %7, %9 ], [ null, %5 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 3
  %22 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 1
  %23 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 2
  %24 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 4
  br label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %18, %20 ], [ %32, %25 ]
  %27 = getelementptr inbounds %struct.LinkData, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  %29 = getelementptr inbounds %struct.ColorManagedView, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !48
  store i32 %30, ptr %4, align 8, !tbaa !187
  %31 = getelementptr inbounds %struct.ColorManagedView, ptr %28, i64 0, i32 3
  store ptr %31, ptr %21, align 8, !tbaa !189
  store ptr %31, ptr %22, align 8, !tbaa !190
  store i32 0, ptr %23, align 8, !tbaa !191
  store ptr @.str.18, ptr %24, align 8, !tbaa !192
  call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  %32 = load ptr, ptr %26, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %25, !llvm.loop !194

34:                                               ; preds = %25, %16, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_look_items_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.EnumPropertyItem, align 8
  %4 = load ptr, ptr @global_looks, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 3
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 1
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 2
  %10 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 4
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi ptr [ %4, %6 ], [ %16, %11 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %13 = getelementptr inbounds %struct.ColorManagedLook, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !52
  store i32 %14, ptr %3, align 8, !tbaa !187
  %15 = getelementptr inbounds %struct.ColorManagedLook, ptr %12, i64 0, i32 3
  store ptr %15, ptr %7, align 8, !tbaa !189
  store ptr %15, ptr %8, align 8, !tbaa !190
  store i32 0, ptr %9, align 8, !tbaa !191
  store ptr @.str.18, ptr %10, align 8, !tbaa !192
  call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  %16 = load ptr, ptr %12, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !195

18:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_colorspace_items_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.EnumPropertyItem, align 8
  %4 = load ptr, ptr @global_colorspaces, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 3
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 1
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 2
  %10 = getelementptr inbounds %struct.EnumPropertyItem, ptr %3, i64 0, i32 4
  br label %11

11:                                               ; preds = %6, %21
  %12 = phi ptr [ %4, %6 ], [ %22, %21 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %13 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 7
  %14 = load i8, ptr %13, align 8, !tbaa !181
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !182
  store i32 %18, ptr %3, align 8, !tbaa !187
  %19 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 3
  store ptr %19, ptr %7, align 8, !tbaa !189
  store ptr %19, ptr %8, align 8, !tbaa !190
  store i32 0, ptr %9, align 8, !tbaa !191
  %20 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 4
  store ptr %20, ptr %10, align 8, !tbaa !192
  call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #15
  br label %21

21:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  %22 = load ptr, ptr %12, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11, !llvm.loop !196

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_partial_display_buffer_update_delayed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rcti, align 4
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39
  %8 = load i32, ptr %7, align 4, !tbaa !153
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !154
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @BLI_rcti_init(ptr noundef nonnull %7, i32 noundef %1, i32 noundef %3, i32 noundef %2, i32 noundef %4) #15
  br label %14

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @BLI_rcti_init(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %3, i32 noundef %2, i32 noundef %4) #15
  call void @BLI_rcti_union(ptr noundef nonnull %7, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

declare void @BLI_rcti_union(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_display_buffer_processor(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [16 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = tail call ptr @OCIO_getCurrentConfig() #15
  br label %12

12:                                               ; preds = %16, %6
  %13 = phi ptr [ @global_looks, %6 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ColorManagedLook, ptr %14, i64 0, i32 3
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %0) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12, !llvm.loop !110

20:                                               ; preds = %12, %16
  %21 = phi ptr [ %14, %16 ], [ null, %12 ]
  %22 = tail call ptr @OCIO_createDisplayTransform() #15
  tail call void @OCIO_displayTransformSetInputColorSpaceName(ptr noundef %22, ptr noundef %5) #15
  tail call void @OCIO_displayTransformSetView(ptr noundef %22, ptr noundef %1) #15
  tail call void @OCIO_displayTransformSetDisplay(ptr noundef %22, ptr noundef %2) #15
  %23 = getelementptr inbounds %struct.ColorManagedLook, ptr %21, i64 0, i32 5
  %24 = load i8, ptr %23, align 4, !tbaa !54
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  tail call void @OCIO_displayTransformSetLooksOverrideEnabled(ptr noundef %22, i8 noundef zeroext 1) #15
  tail call void @OCIO_displayTransformSetLooksOverride(ptr noundef %22, ptr noundef %0) #15
  br label %27

27:                                               ; preds = %26, %20
  %28 = fcmp une float %3, 0.000000e+00
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = tail call float @exp2f(float %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  store float %30, ptr %7, align 16, !tbaa !127
  %31 = getelementptr inbounds float, ptr %7, i64 1
  store float %30, ptr %31, align 4, !tbaa !127
  %32 = getelementptr inbounds float, ptr %7, i64 2
  store float %30, ptr %32, align 8, !tbaa !127
  %33 = getelementptr inbounds float, ptr %7, i64 3
  store float 1.000000e+00, ptr %33, align 4, !tbaa !127
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  call void @OCIO_matrixTransformScale(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #15
  %34 = call ptr @OCIO_createMatrixTransform() #15
  call void @OCIO_matrixTransformSetValue(ptr noundef %34, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  call void @OCIO_displayTransformSetLinearCC(ptr noundef %22, ptr noundef %34) #15
  call void @OCIO_matrixTransformRelease(ptr noundef %34) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %35

35:                                               ; preds = %29, %27
  %36 = fcmp une float %4, 1.000000e+00
  br i1 %36, label %37, label %45

37:                                               ; preds = %35
  %38 = fcmp olt float %4, 0x3E80000000000000
  %39 = select i1 %38, float 0x3E80000000000000, float %4
  %40 = fdiv float 1.000000e+00, %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  store float %40, ptr %10, align 16, !tbaa !127
  %41 = getelementptr inbounds float, ptr %10, i64 1
  store float %40, ptr %41, align 4, !tbaa !127
  %42 = getelementptr inbounds float, ptr %10, i64 2
  store float %40, ptr %42, align 8, !tbaa !127
  %43 = getelementptr inbounds float, ptr %10, i64 3
  store float %40, ptr %43, align 4, !tbaa !127
  %44 = call ptr @OCIO_createExponentTransform() #15
  call void @OCIO_exponentTransformSetValue(ptr noundef %44, ptr noundef nonnull %10) #15
  call void @OCIO_displayTransformSetDisplayCC(ptr noundef %22, ptr noundef %44) #15
  call void @OCIO_exponentTransformRelease(ptr noundef %44) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  br label %45

45:                                               ; preds = %37, %35
  %46 = call ptr @OCIO_configGetProcessor(ptr noundef %11, ptr noundef %22) #15
  call void @OCIO_displayTransformRelease(ptr noundef %22) #15
  call void @OCIO_configRelease(ptr noundef %11) #15
  ret ptr %46
}

declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #2

declare void @curvemapping_premultiply(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @curvemapping_evaluate_premulRGBF(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_processor_apply_v4_predivide(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %1) #15
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @OCIO_processorApplyRGBA_predivide(ptr noundef nonnull %8, ptr noundef %1) #15
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_processor_apply_pixel(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %2, label %30 [
    i32 4, label %4
    i32 3, label %13
    i32 1, label %22
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %1) #15
  br label %9

9:                                                ; preds = %8, %4
  %10 = load ptr, ptr %0, align 8, !tbaa !107
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  tail call void @OCIO_processorApplyRGBA_predivide(ptr noundef nonnull %10, ptr noundef %1) #15
  br label %30

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef nonnull %15, ptr noundef %1, ptr noundef %1) #15
  br label %18

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr %0, align 8, !tbaa !107
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %19, ptr noundef %1) #15
  br label %30

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.CurveMapping, ptr %24, i64 0, i32 6
  %28 = load float, ptr %1, align 4, !tbaa !127
  %29 = tail call float @curvemap_evaluateF(ptr noundef nonnull %27, float noundef %28) #15
  store float %29, ptr %1, align 4, !tbaa !127
  br label %30

30:                                               ; preds = %21, %18, %12, %9, %3, %22, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @IMB_colormanagement_support_glsl_draw(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call i32 @OCIO_supportGLSLDraw() #15
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

declare i32 @OCIO_supportGLSLDraw() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ColorManagedViewSettings, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %6) #15
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %49

8:                                                ; preds = %5, %12
  %9 = phi ptr [ %10, %12 ], [ @global_displays, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %10, i64 0, i32 3
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %8, !llvm.loop !109

16:                                               ; preds = %12, %8
  %17 = phi ptr [ %10, %12 ], [ null, %8 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @OCIO_getCurrentConfig() #15
  %21 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %17, i64 0, i32 3
  %22 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %20, ptr noundef nonnull %21) #15
  tail call void @OCIO_configRelease(ptr noundef %20) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load i8, ptr %22, align 1, !tbaa !94
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %24, %31
  %28 = phi ptr [ %29, %31 ], [ @global_views, %24 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ColorManagedView, ptr %29, i64 0, i32 3
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %22) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %27, !llvm.loop !47

35:                                               ; preds = %31, %27, %24, %19, %16
  %36 = phi ptr [ null, %16 ], [ null, %24 ], [ null, %19 ], [ %29, %31 ], [ null, %27 ]
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 3
  br i1 %37, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ColorManagedView, ptr %36, i64 0, i32 3
  %41 = call ptr @BLI_strncpy(ptr noundef nonnull %38, ptr noundef nonnull %40, i64 noundef 64) #15
  br label %43

42:                                               ; preds = %35
  store i8 0, ptr %38, align 8, !tbaa !94
  br label %43

43:                                               ; preds = %39, %42
  %44 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 2
  %45 = call ptr @BLI_strncpy(ptr noundef nonnull %44, ptr noundef nonnull @.str.15, i64 noundef 64) #15
  store i32 0, ptr %6, align 8, !tbaa !128
  %46 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 5
  store float 1.000000e+00, ptr %46, align 4, !tbaa !113
  %47 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 4
  store float 0.000000e+00, ptr %47, align 8, !tbaa !111
  %48 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %6, i64 0, i32 6
  store ptr null, ptr %48, align 8, !tbaa !129
  br label %49

49:                                               ; preds = %5, %43
  %50 = phi ptr [ %6, %43 ], [ %0, %5 ]
  %51 = icmp eq ptr %2, null
  %52 = getelementptr inbounds %struct.ColorSpace, ptr %2, i64 0, i32 3
  %53 = select i1 %51, ptr @global_role_scene_linear, ptr %52
  %54 = load i32, ptr %50, align 8, !tbaa !128
  %55 = load ptr, ptr @global_glsl_state, align 8, !tbaa !66
  %56 = icmp eq ptr %55, null
  br i1 %56, label %87, label %57

57:                                               ; preds = %49
  %58 = load float, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 5), align 8, !tbaa !197
  %59 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %50, i64 0, i32 4
  %60 = load float, ptr %59, align 8, !tbaa !111
  %61 = fcmp oeq float %58, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load float, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 6), align 4, !tbaa !198
  %64 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %50, i64 0, i32 5
  %65 = load float, ptr %64, align 4, !tbaa !113
  %66 = fcmp oeq float %63, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %50, i64 0, i32 2
  %69 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 1), ptr noundef nonnull dereferenceable(1) %68) #16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %50, i64 0, i32 3
  %73 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 2), ptr noundef nonnull dereferenceable(1) %72) #16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 3), ptr noundef nonnull dereferenceable(1) %1) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 4), ptr noundef nonnull dereferenceable(1) %53) #16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = and i32 %54, 1
  %83 = load i8, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 9), align 8, !tbaa !199
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %82, %84
  %86 = zext i1 %85 to i8
  br label %87

87:                                               ; preds = %75, %71, %67, %62, %57, %81, %78, %49
  %88 = phi i8 [ 1, %78 ], [ 1, %49 ], [ %86, %81 ], [ 1, %57 ], [ 1, %62 ], [ 1, %67 ], [ 1, %71 ], [ 1, %75 ]
  %89 = and i32 %54, 1
  %90 = icmp ne i32 %89, 0
  %91 = icmp eq i8 %88, 0
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %50, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !129
  %96 = getelementptr inbounds %struct.CurveMapping, ptr %95, i64 0, i32 3
  %97 = load i32, ptr %96, align 4, !tbaa !157
  %98 = load i32, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 10), align 4, !tbaa !200
  %99 = icmp ne i32 %97, %98
  %100 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 8), align 8
  %101 = icmp ne ptr %95, %100
  %102 = select i1 %99, i1 true, i1 %101
  %103 = zext i1 %102 to i8
  br label %104

104:                                              ; preds = %93, %87
  %105 = phi i8 [ %103, %93 ], [ %88, %87 ]
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %201, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %50, i64 0, i32 2
  %109 = call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 1), ptr noundef nonnull %108, i64 noundef 64) #15
  %110 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %50, i64 0, i32 3
  %111 = call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 2), ptr noundef nonnull %110, i64 noundef 64) #15
  %112 = call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 3), ptr noundef %1, i64 noundef 64) #15
  %113 = call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 4), ptr noundef nonnull %53, i64 noundef 64) #15
  %114 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %50, i64 0, i32 4
  %115 = load float, ptr %114, align 8, !tbaa !111
  store float %115, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 5), align 8, !tbaa !197
  %116 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %50, i64 0, i32 5
  %117 = load float, ptr %116, align 4, !tbaa !113
  store float %117, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 6), align 4, !tbaa !198
  %118 = icmp eq i32 %89, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %107
  %120 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %50, i64 0, i32 6
  %121 = load ptr, ptr %120, align 8, !tbaa !129
  %122 = call ptr @curvemapping_copy(ptr noundef %121) #15
  br label %123

123:                                              ; preds = %119, %107
  %124 = phi ptr [ %122, %119 ], [ null, %107 ]
  %125 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 7), align 8, !tbaa !71
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  call void @curvemapping_free(ptr noundef nonnull %125) #15
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %129 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11), align 8, !tbaa !201
  call void %128(ptr noundef %129) #15
  store ptr null, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 7), align 8, !tbaa !71
  store ptr null, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11), align 8, !tbaa !201
  br label %130

130:                                              ; preds = %127, %123
  br i1 %118, label %191, label %131

131:                                              ; preds = %130
  call void @curvemapping_initialize(ptr noundef %124) #15
  call void @curvemapping_premultiply(ptr noundef %124, i32 noundef 0) #15
  call void @curvemapping_table_RGBA(ptr noundef %124, ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11), ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 1)) #15
  %132 = getelementptr inbounds %struct.CurveMapping, ptr %124, i64 0, i32 6
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi i64 [ 0, %131 ], [ %171, %133 ]
  %135 = getelementptr inbounds %struct.CurveMap, ptr %132, i64 %134, i32 1
  %136 = load i16, ptr %135, align 2, !tbaa !202
  %137 = and i16 %136, 1
  %138 = zext nneg i16 %137 to i32
  %139 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 2, i64 %134
  store i32 %138, ptr %139, align 4, !tbaa !34
  %140 = getelementptr inbounds %struct.CurveMap, ptr %132, i64 %134, i32 2
  %141 = load float, ptr %140, align 4, !tbaa !204
  %142 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 4, i64 %134
  store float %141, ptr %142, align 4, !tbaa !127
  %143 = getelementptr inbounds %struct.CurveMap, ptr %132, i64 %134, i32 3
  %144 = load float, ptr %143, align 8, !tbaa !205
  %145 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 3, i64 %134
  store float %144, ptr %145, align 4, !tbaa !127
  %146 = getelementptr inbounds %struct.CurveMap, ptr %132, i64 %134, i32 5
  %147 = load float, ptr %146, align 8, !tbaa !127
  %148 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 5, i64 %134
  store float %147, ptr %148, align 4, !tbaa !127
  %149 = getelementptr inbounds %struct.CurveMap, ptr %132, i64 %134, i32 5, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !127
  %151 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 6, i64 %134
  store float %150, ptr %151, align 4, !tbaa !127
  %152 = getelementptr inbounds %struct.CurveMap, ptr %132, i64 %134, i32 6
  %153 = load float, ptr %152, align 8, !tbaa !127
  %154 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 7, i64 %134
  store float %153, ptr %154, align 4, !tbaa !127
  %155 = getelementptr inbounds %struct.CurveMap, ptr %132, i64 %134, i32 6, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !127
  %157 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 8, i64 %134
  store float %156, ptr %157, align 4, !tbaa !127
  %158 = getelementptr inbounds %struct.CurveMap, ptr %132, i64 %134, i32 8
  %159 = load ptr, ptr %158, align 8, !tbaa !206
  %160 = load float, ptr %159, align 4, !tbaa !207
  %161 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 9, i64 %134
  store float %160, ptr %161, align 4, !tbaa !127
  %162 = getelementptr inbounds %struct.CurveMapPoint, ptr %159, i64 0, i32 1
  %163 = load float, ptr %162, align 4, !tbaa !209
  %164 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 10, i64 %134
  store float %163, ptr %164, align 4, !tbaa !127
  %165 = getelementptr inbounds %struct.CurveMapPoint, ptr %159, i64 256
  %166 = load float, ptr %165, align 4, !tbaa !207
  %167 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 11, i64 %134
  store float %166, ptr %167, align 4, !tbaa !127
  %168 = getelementptr inbounds %struct.CurveMapPoint, ptr %159, i64 256, i32 1
  %169 = load float, ptr %168, align 4, !tbaa !209
  %170 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 12, i64 %134
  store float %169, ptr %170, align 4, !tbaa !127
  %171 = add nuw nsw i64 %134, 1
  %172 = icmp eq i64 %171, 4
  br i1 %172, label %173, label %133, !llvm.loop !210

173:                                              ; preds = %133
  %174 = getelementptr inbounds %struct.CurveMapping, ptr %124, i64 0, i32 7
  %175 = load float, ptr %174, align 4, !tbaa !127
  store float %175, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 13), align 4, !tbaa !127
  %176 = getelementptr inbounds %struct.CurveMapping, ptr %124, i64 0, i32 7, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !127
  store float %177, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 13, i64 1), align 8, !tbaa !127
  %178 = getelementptr inbounds %struct.CurveMapping, ptr %124, i64 0, i32 7, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !127
  store float %179, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 13, i64 2), align 4, !tbaa !127
  %180 = getelementptr inbounds %struct.CurveMapping, ptr %124, i64 0, i32 9
  %181 = load float, ptr %180, align 4, !tbaa !127
  store float %181, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 14), align 8, !tbaa !127
  %182 = getelementptr inbounds %struct.CurveMapping, ptr %124, i64 0, i32 9, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !127
  store float %183, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 14, i64 1), align 4, !tbaa !127
  %184 = getelementptr inbounds %struct.CurveMapping, ptr %124, i64 0, i32 9, i64 2
  %185 = load float, ptr %184, align 4, !tbaa !127
  store float %185, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 14, i64 2), align 8, !tbaa !127
  %186 = ptrtoint ptr %124 to i64
  store i64 %186, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 15), align 8, !tbaa !211
  store ptr %124, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 7), align 8, !tbaa !71
  %187 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %50, i64 0, i32 6
  %188 = load ptr, ptr %187, align 8, !tbaa !129
  %189 = getelementptr inbounds %struct.CurveMapping, ptr %188, i64 0, i32 3
  %190 = load i32, ptr %189, align 4, !tbaa !157
  store i32 %190, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 10), align 4, !tbaa !200
  br label %191

191:                                              ; preds = %173, %130
  %192 = phi ptr [ %188, %173 ], [ null, %130 ]
  %193 = phi i8 [ 1, %173 ], [ 0, %130 ]
  store ptr %192, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 8), align 8, !tbaa !212
  store i8 %193, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 9), align 8, !tbaa !199
  %194 = load ptr, ptr @global_glsl_state, align 8, !tbaa !66
  %195 = icmp eq ptr %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  call void @OCIO_processorRelease(ptr noundef nonnull %194) #15
  br label %197

197:                                              ; preds = %196, %191
  %198 = load float, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 5), align 8, !tbaa !197
  %199 = load float, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 6), align 4, !tbaa !198
  %200 = call fastcc ptr @create_display_buffer_processor(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 1), ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 2), ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 3), float noundef %198, float noundef %199, ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 4))
  store ptr %200, ptr @global_glsl_state, align 8, !tbaa !66
  br label %201

201:                                              ; preds = %104, %197
  %202 = load ptr, ptr @global_glsl_state, align 8, !tbaa !66
  %203 = load i8, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 9), align 8, !tbaa !199
  %204 = icmp eq i8 %203, 0
  %205 = select i1 %204, ptr null, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11)
  %206 = call i32 @OCIO_setupGLSLDraw(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 12), ptr noundef %202, ptr noundef %205, float noundef %3, i8 noundef zeroext %4) #15
  %207 = trunc i32 %206 to i8
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %6) #15
  ret i8 %207
}

declare i32 @OCIO_setupGLSLDraw(ptr noundef, ptr noundef, ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @IMB_colormanagement_setup_glsl_draw(ptr noundef %0, ptr noundef %1, float noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef %0, ptr noundef %1, ptr noundef null, float noundef %2, i8 noundef zeroext %3)
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space_ctx(ptr noundef %0, ptr noundef %1, float noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 44
  %8 = icmp eq ptr %6, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Image, ptr %11, i64 0, i32 10
  %15 = load i16, ptr %14, align 2, !tbaa !90
  %16 = and i16 %15, 2048
  %17 = icmp eq i16 %16, 0
  %18 = select i1 %17, ptr null, ptr %7
  br label %19

19:                                               ; preds = %13, %4, %9
  %20 = phi ptr [ %7, %4 ], [ %7, %9 ], [ %18, %13 ]
  %21 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 45
  %22 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef %20, ptr noundef nonnull %21, ptr noundef %1, float noundef %2, i8 noundef zeroext %3)
  ret i8 %22
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @IMB_colormanagement_setup_glsl_draw_ctx(ptr noundef %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 44
  %7 = icmp eq ptr %5, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Image, ptr %10, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !90
  %15 = and i16 %14, 2048
  %16 = icmp eq i16 %15, 0
  %17 = select i1 %16, ptr null, ptr %6
  br label %18

18:                                               ; preds = %3, %8, %12
  %19 = phi ptr [ %6, %3 ], [ %6, %8 ], [ %17, %12 ]
  %20 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 45
  %21 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef %19, ptr noundef nonnull %20, ptr noundef null, float noundef %1, i8 noundef zeroext %2)
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_colormanagement_finish_glsl_draw() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 12), align 8, !tbaa !73
  tail call void @OCIO_finishGLSLDraw(ptr noundef %1) #15
  ret void
}

declare void @OCIO_finishGLSLDraw(ptr noundef) local_unnamed_addr #2

declare i32 @OCIO_configGetNumColorSpaces(ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_configGetColorSpaceNameByIndex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OCIO_configGetColorSpace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_colorSpaceGetDescription(ptr noundef) local_unnamed_addr #2

declare i32 @OCIO_colorSpaceIsInvertible(ptr noundef) local_unnamed_addr #2

declare i32 @OCIO_colorSpaceIsData(ptr noundef) local_unnamed_addr #2

declare void @OCIO_colorSpaceRelease(ptr noundef) local_unnamed_addr #2

declare i32 @OCIO_configGetNumDisplays(ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_configGetDisplay(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OCIO_configGetNumViews(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_configGetView(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #2

declare i32 @OCIO_configGetNumLooks(ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_configGetLookNameByIndex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OCIO_configGetLook(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_lookGetProcessSpace(ptr noundef) local_unnamed_addr #2

declare void @OCIO_lookRelease(ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_colorSpaceGetName(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @OCIO_exit() local_unnamed_addr #2

declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #2

declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_configGetProcessorWithNames(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @imb_addrectImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @colormanage_display_buffer_process_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.DisplayBufferInitData, align 8
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %3, align 8, !tbaa !128
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 4
  %20 = load float, ptr %19, align 8, !tbaa !111
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 5
  %24 = load float, ptr %23, align 4, !tbaa !113
  %25 = fcmp oeq float %24, 1.000000e+00
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = tail call ptr @OCIO_getCurrentConfig() #15
  %28 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %3, i64 0, i32 3
  %29 = tail call ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef %27, ptr noundef %4, ptr noundef nonnull %28) #15
  tail call void @OCIO_configRelease(ptr noundef %27) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 3
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %29) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %26, %31, %22, %18, %14, %10, %5
  %36 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %3, ptr noundef %4)
  br label %37

37:                                               ; preds = %31, %35
  %38 = phi ptr [ %36, %35 ], [ null, %31 ]
  %39 = load ptr, ptr %7, align 8, !tbaa !99
  %40 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #15
  store ptr %0, ptr %6, align 8, !tbaa !213
  %42 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %6, i64 0, i32 1
  store ptr %38, ptr %42, align 8, !tbaa !215
  %43 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %6, i64 0, i32 2
  store ptr %39, ptr %43, align 8, !tbaa !216
  %44 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %6, i64 0, i32 3
  store ptr %41, ptr %44, align 8, !tbaa !217
  %45 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %6, i64 0, i32 4
  store ptr %1, ptr %45, align 8, !tbaa !218
  %46 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %6, i64 0, i32 5
  store ptr %2, ptr %46, align 8, !tbaa !219
  %47 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %48 = load ptr, ptr %47, align 8, !tbaa !96
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.ColorSpace, ptr %48, i64 0, i32 3
  %51 = select i1 %49, ptr @global_role_default_byte, ptr %50
  %52 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %6, i64 0, i32 7
  store ptr %51, ptr %52, align 8, !tbaa !220
  %53 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  %54 = load ptr, ptr %53, align 8, !tbaa !119
  %55 = icmp eq ptr %54, null
  %56 = getelementptr inbounds %struct.ColorSpace, ptr %54, i64 0, i32 3
  %57 = select i1 %55, ptr null, ptr %56
  %58 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %6, i64 0, i32 8
  store ptr %57, ptr %58, align 8, !tbaa !221
  %59 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !102
  call void @IMB_processor_apply_threaded(i32 noundef %60, i32 noundef 80, ptr noundef nonnull %6, ptr noundef nonnull @display_buffer_init_handle, ptr noundef nonnull @do_display_buffer_apply_thread) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #15
  %61 = icmp eq ptr %38, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %37
  %63 = getelementptr inbounds %struct.ColormanageProcessor, ptr %38, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !108
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  call void @curvemapping_free(ptr noundef nonnull %64) #15
  br label %67

67:                                               ; preds = %66, %62
  %68 = load ptr, ptr %38, align 8, !tbaa !107
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  call void @OCIO_processorRelease(ptr noundef nonnull %68) #15
  br label %71

71:                                               ; preds = %67, %70
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %72(ptr noundef nonnull %38) #15
  br label %73

73:                                               ; preds = %71, %37
  ret void
}

declare void @IMB_processor_apply_threaded(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @display_buffer_init_handle(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #11 {
  %5 = load ptr, ptr %3, align 8, !tbaa !213
  %6 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 18
  %9 = load float, ptr %8, align 8, !tbaa !147
  %10 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 38
  %11 = load i32, ptr %10, align 8, !tbaa !98
  %12 = mul nsw i32 %7, %1
  %13 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !101
  %15 = mul nsw i32 %12, %14
  %16 = shl nsw i32 %1, 2
  %17 = mul nsw i32 %16, %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %18 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !215
  store ptr %19, ptr %0, align 8, !tbaa !222
  %20 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !216
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = sext i32 %15 to i64
  %25 = getelementptr inbounds float, ptr %21, i64 %24
  %26 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !224
  br label %27

27:                                               ; preds = %23, %4
  %28 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !217
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = sext i32 %15 to i64
  %33 = getelementptr inbounds i8, ptr %29, i64 %32
  %34 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !225
  br label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !218
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = sext i32 %15 to i64
  %41 = getelementptr inbounds float, ptr %37, i64 %40
  %42 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !226
  br label %43

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !219
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = sext i32 %17 to i64
  %49 = getelementptr inbounds i8, ptr %45, i64 %48
  %50 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 4
  store ptr %49, ptr %50, align 8, !tbaa !227
  br label %51

51:                                               ; preds = %47, %43
  %52 = trunc i32 %11 to i8
  %53 = and i8 %52, 1
  %54 = load i32, ptr %13, align 8, !tbaa !101
  %55 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 5
  store i32 %54, ptr %55, align 8, !tbaa !228
  %56 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 6
  store i32 %1, ptr %56, align 4, !tbaa !229
  %57 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 7
  store i32 %2, ptr %57, align 8, !tbaa !230
  %58 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 8
  store i32 %7, ptr %58, align 4, !tbaa !231
  %59 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 9
  store float %9, ptr %59, align 8, !tbaa !232
  %60 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 10
  store i8 %53, ptr %60, align 4, !tbaa !233
  %61 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !220
  %63 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 11
  store ptr %62, ptr %63, align 8, !tbaa !234
  %64 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !221
  %66 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 12
  store ptr %65, ptr %66, align 8, !tbaa !235
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @do_display_buffer_apply_thread(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !222
  %3 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !227
  %7 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !231
  %9 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !228
  %11 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !230
  %13 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 9
  %14 = load float, ptr %13, align 8, !tbaa !232
  %15 = icmp eq ptr %2, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = icmp eq ptr %6, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !225
  tail call void @IMB_buffer_byte_from_byte(ptr noundef nonnull %6, ptr noundef %20, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %10, i32 noundef %12, i32 noundef %10, i32 noundef %10) #15
  br label %21

21:                                               ; preds = %18, %16
  %22 = icmp eq ptr %4, null
  br i1 %22, label %179, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !225
  tail call void @IMB_buffer_float_from_byte(ptr noundef nonnull %4, ptr noundef %25, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %10, i32 noundef %12, i32 noundef %10, i32 noundef %10) #15
  br label %179

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 10
  %28 = load i8, ptr %27, align 4, !tbaa !233
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %30 = mul i32 %12, %10
  %31 = mul i32 %30, %8
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = tail call ptr %29(i64 noundef %33, ptr noundef nonnull @.str.32) #15
  %35 = load i32, ptr %7, align 4, !tbaa !231
  %36 = load i32, ptr %9, align 8, !tbaa !228
  %37 = load i8, ptr %27, align 4, !tbaa !233
  %38 = load ptr, ptr %0, align 8, !tbaa !222
  %39 = getelementptr inbounds %struct.ColormanageProcessor, ptr %38, i64 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !224
  %43 = icmp ne ptr %42, null
  br i1 %43, label %96, label %44

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !234
  %47 = mul nsw i32 %36, %12
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !225
  %52 = sext i32 %35 to i64
  br label %53

53:                                               ; preds = %49, %59
  %54 = phi ptr [ %34, %49 ], [ %61, %59 ]
  %55 = phi ptr [ %51, %49 ], [ %62, %59 ]
  %56 = phi i32 [ 0, %49 ], [ %60, %59 ]
  switch i32 %35, label %59 [
    i32 3, label %57
    i32 4, label %58
  ]

57:                                               ; preds = %53
  tail call void @rgb_uchar_to_float(ptr noundef %54, ptr noundef %55) #15
  br label %59

58:                                               ; preds = %53
  tail call void @rgba_uchar_to_float(ptr noundef %54, ptr noundef %55) #15
  br label %59

59:                                               ; preds = %58, %57, %53
  %60 = add nuw nsw i32 %56, 1
  %61 = getelementptr inbounds float, ptr %54, i64 %52
  %62 = getelementptr inbounds i8, ptr %55, i64 %52
  %63 = icmp eq i32 %60, %47
  br i1 %63, label %64, label %53, !llvm.loop !236

64:                                               ; preds = %59, %44
  %65 = icmp ne i8 %37, 0
  %66 = icmp ne i8 %40, 0
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %142, label %68

68:                                               ; preds = %64
  %69 = load i8, ptr %46, align 1, !tbaa !94
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %142, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) @global_role_scene_linear) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %142, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %76 = tail call ptr %75(i64 noundef 24, ptr noundef nonnull @.str.20) #15
  br label %77

77:                                               ; preds = %77, %74
  %78 = phi ptr [ @global_colorspaces, %74 ], [ %79, %77 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !46, !nonnull !104, !noundef !104
  %80 = getelementptr inbounds %struct.ColorSpace, ptr %79, i64 0, i32 3
  %81 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %80, ptr noundef nonnull dereferenceable(1) @global_role_scene_linear) #16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %77, !llvm.loop !95

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.ColorSpace, ptr %79, i64 0, i32 8
  %85 = load i8, ptr %84, align 1, !tbaa !97
  %86 = getelementptr inbounds %struct.ColormanageProcessor, ptr %76, i64 0, i32 2
  store i8 %85, ptr %86, align 8, !tbaa !105
  %87 = tail call ptr @OCIO_getCurrentConfig() #15
  %88 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %87, ptr noundef nonnull %46, ptr noundef nonnull @global_role_scene_linear) #15
  tail call void @OCIO_configRelease(ptr noundef %87) #15
  store ptr %88, ptr %76, align 8, !tbaa !107
  tail call void @IMB_colormanagement_processor_apply(ptr noundef nonnull %76, ptr noundef %34, i32 noundef %36, i32 noundef %12, i32 noundef %35, i8 noundef zeroext 0)
  %89 = getelementptr inbounds %struct.ColormanageProcessor, ptr %76, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !108
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  tail call void @curvemapping_free(ptr noundef nonnull %90) #15
  br label %93

93:                                               ; preds = %92, %83
  %94 = load ptr, ptr %76, align 8, !tbaa !107
  %95 = icmp eq ptr %94, null
  br i1 %95, label %139, label %136

96:                                               ; preds = %26
  %97 = mul i32 %36, %12
  %98 = mul i32 %97, %35
  %99 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 12
  %100 = load ptr, ptr %99, align 8, !tbaa !235
  %101 = icmp eq ptr %100, null
  %102 = sext i32 %98 to i64
  %103 = shl nsw i64 %102, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %34, ptr nonnull align 4 %42, i64 %103, i1 false)
  br i1 %101, label %142, label %104

104:                                              ; preds = %96
  %105 = icmp ne i8 %37, 0
  %106 = icmp ne i8 %40, 0
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %142, label %108

108:                                              ; preds = %104
  %109 = load i8, ptr %100, align 1, !tbaa !94
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %142, label %111

111:                                              ; preds = %108
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %100, ptr noundef nonnull dereferenceable(1) @global_role_scene_linear) #16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %142, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %116 = tail call ptr %115(i64 noundef 24, ptr noundef nonnull @.str.20) #15
  br label %117

117:                                              ; preds = %117, %114
  %118 = phi ptr [ @global_colorspaces, %114 ], [ %119, %117 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !46, !nonnull !104, !noundef !104
  %120 = getelementptr inbounds %struct.ColorSpace, ptr %119, i64 0, i32 3
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %120, ptr noundef nonnull dereferenceable(1) @global_role_scene_linear) #16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %117, !llvm.loop !95

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.ColorSpace, ptr %119, i64 0, i32 8
  %125 = load i8, ptr %124, align 1, !tbaa !97
  %126 = getelementptr inbounds %struct.ColormanageProcessor, ptr %116, i64 0, i32 2
  store i8 %125, ptr %126, align 8, !tbaa !105
  %127 = tail call ptr @OCIO_getCurrentConfig() #15
  %128 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %127, ptr noundef nonnull %100, ptr noundef nonnull @global_role_scene_linear) #15
  tail call void @OCIO_configRelease(ptr noundef %127) #15
  store ptr %128, ptr %116, align 8, !tbaa !107
  tail call void @IMB_colormanagement_processor_apply(ptr noundef nonnull %116, ptr noundef %34, i32 noundef %36, i32 noundef %12, i32 noundef %35, i8 noundef zeroext 1)
  %129 = getelementptr inbounds %struct.ColormanageProcessor, ptr %116, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !108
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %123
  tail call void @curvemapping_free(ptr noundef nonnull %130) #15
  br label %133

133:                                              ; preds = %132, %123
  %134 = load ptr, ptr %116, align 8, !tbaa !107
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %133, %93
  %137 = phi ptr [ %94, %93 ], [ %134, %133 ]
  %138 = phi ptr [ %76, %93 ], [ %116, %133 ]
  tail call void @OCIO_processorRelease(ptr noundef nonnull %137) #15
  br label %139

139:                                              ; preds = %136, %133, %93
  %140 = phi ptr [ %76, %93 ], [ %116, %133 ], [ %138, %136 ]
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %141(ptr noundef nonnull %140) #15
  br label %142

142:                                              ; preds = %139, %96, %111, %108, %71, %68, %104, %64
  %143 = zext i1 %43 to i8
  %144 = icmp eq i8 %28, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  tail call void @IMB_colormanagement_processor_apply(ptr noundef nonnull %2, ptr noundef %34, i32 noundef %10, i32 noundef %12, i32 noundef %8, i8 noundef zeroext %143)
  br label %146

146:                                              ; preds = %142, %145
  %147 = icmp eq ptr %6, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %146
  tail call void @IMB_buffer_byte_from_float(ptr noundef nonnull %6, ptr noundef %34, i32 noundef %8, float noundef %14, i32 noundef 2, i32 noundef 2, i8 noundef zeroext %143, i32 noundef %10, i32 noundef %12, i32 noundef %10, i32 noundef %10) #15
  br label %149

149:                                              ; preds = %148, %146
  %150 = icmp eq ptr %4, null
  br i1 %150, label %177, label %151

151:                                              ; preds = %149
  %152 = mul i32 %12, %10
  %153 = mul nsw i32 %152, %8
  %154 = sext i32 %153 to i64
  %155 = shl nsw i64 %154, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %4, ptr align 4 %34, i64 %155, i1 false)
  %156 = icmp eq i32 %8, 4
  %157 = xor i1 %43, true
  %158 = select i1 %157, i1 %156, i1 false
  %159 = icmp sgt i32 %152, 0
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %161, label %177

161:                                              ; preds = %151, %161
  %162 = phi ptr [ %175, %161 ], [ %4, %151 ]
  %163 = phi i32 [ %174, %161 ], [ 0, %151 ]
  %164 = getelementptr inbounds float, ptr %162, i64 3
  %165 = load float, ptr %164, align 4, !tbaa !127
  %166 = load float, ptr %162, align 4, !tbaa !127
  %167 = fmul float %165, %166
  store float %167, ptr %162, align 4, !tbaa !127
  %168 = getelementptr inbounds float, ptr %162, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !127
  %170 = fmul float %165, %169
  store float %170, ptr %168, align 4, !tbaa !127
  %171 = getelementptr inbounds float, ptr %162, i64 2
  %172 = load float, ptr %171, align 4, !tbaa !127
  %173 = fmul float %165, %172
  store float %173, ptr %171, align 4, !tbaa !127
  %174 = add nuw nsw i32 %163, 1
  %175 = getelementptr inbounds float, ptr %162, i64 4
  %176 = icmp eq i32 %174, %152
  br i1 %176, label %177, label %161, !llvm.loop !237

177:                                              ; preds = %161, %151, %149
  %178 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %178(ptr noundef %34) #15
  br label %179

179:                                              ; preds = %21, %23, %177
  ret ptr null
}

declare void @IMB_buffer_byte_from_byte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_buffer_float_from_byte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgba_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @processor_transform_init_handle(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #12 {
  %5 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %3, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !125
  %7 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %3, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !123
  %9 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %3, i64 0, i32 5
  %10 = load i8, ptr %9, align 4, !tbaa !126
  %11 = mul nsw i32 %6, %1
  %12 = mul nsw i32 %11, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %13 = load ptr, ptr %3, align 8, !tbaa !120
  store ptr %13, ptr %0, align 8, !tbaa !238
  %14 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !122
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds float, ptr %15, i64 %16
  %18 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !240
  %19 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 2
  store i32 %8, ptr %19, align 8, !tbaa !241
  %20 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 3
  store i32 %1, ptr %20, align 4, !tbaa !242
  %21 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 4
  store i32 %2, ptr %21, align 8, !tbaa !243
  %22 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 5
  store i32 %6, ptr %22, align 4, !tbaa !244
  %23 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 6
  store i8 %10, ptr %23, align 8, !tbaa !245
  ret void
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @do_processor_transform_thread(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !240
  %4 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !244
  %6 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !241
  %8 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !243
  %10 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 6
  %11 = load i8, ptr %10, align 8, !tbaa !245
  %12 = load ptr, ptr %0, align 8, !tbaa !238
  tail call void @IMB_colormanagement_processor_apply(ptr noundef %12, ptr noundef %3, i32 noundef %7, i32 noundef %9, i32 noundef %5, i8 noundef zeroext %11)
  ret ptr null
}

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_moviecache_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @IMB_moviecache_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IMB_moviecache_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @colormanage_hashhash(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.ColormanageCacheKey, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !162
  %4 = shl i32 %3, 16
  %5 = load i32, ptr %0, align 4, !tbaa !160
  %6 = srem i32 %5, 65535
  %7 = or i32 %6, %4
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @colormanage_hashcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = load i32, ptr %0, align 4, !tbaa !160
  %4 = load i32, ptr %1, align 4, !tbaa !160
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColormanageCacheKey, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !162
  %9 = getelementptr inbounds %struct.ColormanageCacheKey, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !162
  %11 = icmp ne i32 %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i8 [ 1, %2 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

declare ptr @OCIO_createDisplayTransform() local_unnamed_addr #2

declare void @OCIO_displayTransformSetInputColorSpaceName(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_displayTransformSetView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_displayTransformSetDisplay(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_displayTransformSetLooksOverrideEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @OCIO_displayTransformSetLooksOverride(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_matrixTransformScale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_createMatrixTransform() local_unnamed_addr #2

declare void @OCIO_matrixTransformSetValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_displayTransformSetLinearCC(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_matrixTransformRelease(ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_createExponentTransform() local_unnamed_addr #2

declare void @OCIO_exponentTransformSetValue(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_displayTransformSetDisplayCC(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_exponentTransformRelease(ptr noundef) local_unnamed_addr #2

declare ptr @OCIO_configGetProcessor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OCIO_displayTransformRelease(ptr noundef) local_unnamed_addr #2

declare float @curvemap_evaluateF(ptr noundef, float noundef) local_unnamed_addr #2

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

declare void @curvemapping_table_RGBA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

declare float @exp2f(float) local_unnamed_addr

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !43, i64 8}
!42 = !{!"ListBase", !43, i64 0, !43, i64 8}
!43 = !{!"any pointer", !36, i64 0}
!44 = !{!45, !35, i64 16}
!45 = !{!"ColorManagedDisplay", !43, i64 0, !43, i64 8, !35, i64 16, !36, i64 20, !42, i64 88, !43, i64 104, !43, i64 112}
!46 = !{!43, !43, i64 0}
!47 = distinct !{!47, !39, !40}
!48 = !{!49, !35, i64 16}
!49 = !{!"ColorManagedView", !43, i64 0, !43, i64 8, !35, i64 16, !36, i64 20}
!50 = distinct !{!50, !39, !40}
!51 = distinct !{!51, !39, !40}
!52 = !{!53, !35, i64 16}
!53 = !{!"ColorManagedLook", !43, i64 0, !43, i64 8, !35, i64 16, !36, i64 20, !36, i64 84, !36, i64 148}
!54 = !{!53, !36, i64 148}
!55 = distinct !{!55, !39, !40}
!56 = !{!42, !43, i64 0}
!57 = !{!58, !43, i64 0}
!58 = !{!"ColorSpace", !43, i64 0, !43, i64 8, !35, i64 16, !36, i64 20, !36, i64 84, !43, i64 600, !43, i64 608, !36, i64 616, !36, i64 617}
!59 = !{!58, !43, i64 600}
!60 = !{!58, !43, i64 608}
!61 = distinct !{!61, !39, !40}
!62 = !{!45, !43, i64 0}
!63 = !{!45, !43, i64 104}
!64 = !{!45, !43, i64 112}
!65 = distinct !{!65, !39, !40}
!66 = !{!67, !43, i64 0}
!67 = !{!"global_glsl_state", !43, i64 0, !36, i64 8, !36, i64 72, !36, i64 136, !36, i64 200, !68, i64 264, !68, i64 268, !43, i64 272, !43, i64 280, !36, i64 288, !35, i64 292, !69, i64 296, !43, i64 520, !43, i64 528}
!68 = !{!"float", !36, i64 0}
!69 = !{!"OCIO_CurveMappingSettings", !43, i64 0, !35, i64 8, !36, i64 12, !36, i64 28, !36, i64 44, !36, i64 60, !36, i64 76, !36, i64 92, !36, i64 108, !36, i64 124, !36, i64 140, !36, i64 156, !36, i64 172, !36, i64 188, !36, i64 200, !70, i64 216}
!70 = !{!"long", !36, i64 0}
!71 = !{!67, !43, i64 272}
!72 = !{!67, !43, i64 296}
!73 = !{!67, !43, i64 520}
!74 = !{!67, !43, i64 528}
!75 = !{!76, !43, i64 2416}
!76 = !{!"ImBuf", !43, i64 0, !43, i64 8, !35, i64 16, !35, i64 20, !36, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !43, i64 40, !43, i64 48, !36, i64 56, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !43, i64 88, !43, i64 96, !43, i64 104, !68, i64 112, !36, i64 120, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !43, i64 296, !43, i64 304, !35, i64 312, !36, i64 316, !36, i64 1340, !43, i64 2368, !35, i64 2376, !43, i64 2384, !35, i64 2392, !35, i64 2396, !43, i64 2400, !43, i64 2408, !43, i64 2416, !43, i64 2424, !35, i64 2432, !77, i64 2436, !78, i64 2456}
!77 = !{!"rcti", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!78 = !{!"DDSData", !35, i64 0, !35, i64 4, !43, i64 8, !35, i64 16}
!79 = !{!76, !43, i64 2424}
!80 = !{!81, !43, i64 8}
!81 = !{!"ColormanageCache", !43, i64 0, !43, i64 8}
!82 = !{!81, !43, i64 0}
!83 = !{!84, !43, i64 40}
!84 = !{!"SpaceImage", !43, i64 0, !43, i64 8, !42, i64 16, !35, i64 32, !35, i64 36, !43, i64 40, !85, i64 48, !43, i64 88, !87, i64 96, !88, i64 5360, !43, i64 10520, !36, i64 10528, !68, i64 10536, !68, i64 10540, !68, i64 10544, !68, i64 10548, !68, i64 10552, !36, i64 10556, !36, i64 10557, !86, i64 10558, !86, i64 10560, !86, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !89, i64 10568}
!85 = !{!"ImageUser", !43, i64 0, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !86, i64 28, !86, i64 30, !86, i64 32, !86, i64 34, !35, i64 36}
!86 = !{!"short", !36, i64 0}
!87 = !{!"Scopes", !35, i64 0, !35, i64 4, !35, i64 8, !68, i64 12, !35, i64 16, !68, i64 20, !68, i64 24, !35, i64 28, !68, i64 32, !35, i64 36, !36, i64 40, !88, i64 64, !43, i64 5224, !43, i64 5232, !43, i64 5240, !43, i64 5248, !35, i64 5256, !35, i64 5260}
!88 = !{!"Histogram", !35, i64 0, !35, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !68, i64 5128, !68, i64 5132, !86, i64 5136, !86, i64 5138, !35, i64 5140, !36, i64 5144}
!89 = !{!"MaskSpaceInfo", !43, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!90 = !{!91, !86, i64 1246}
!91 = !{!"Image", !92, i64 0, !36, i64 120, !43, i64 1144, !43, i64 1152, !43, i64 1160, !43, i64 1168, !36, i64 1176, !86, i64 1240, !86, i64 1242, !86, i64 1244, !86, i64 1246, !86, i64 1248, !86, i64 1250, !35, i64 1252, !86, i64 1256, !86, i64 1258, !86, i64 1260, !86, i64 1262, !86, i64 1264, !86, i64 1266, !35, i64 1268, !43, i64 1272, !43, i64 1280, !43, i64 1288, !68, i64 1296, !35, i64 1300, !86, i64 1304, !86, i64 1306, !35, i64 1308, !35, i64 1312, !36, i64 1316, !36, i64 1317, !86, i64 1318, !36, i64 1320, !68, i64 1336, !68, i64 1340, !93, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!92 = !{!"ID", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !36, i64 32, !86, i64 98, !35, i64 100, !35, i64 104, !35, i64 108, !43, i64 112}
!93 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!94 = !{!36, !36, i64 0}
!95 = distinct !{!95, !39, !40}
!96 = !{!76, !43, i64 2400}
!97 = !{!58, !36, i64 617}
!98 = !{!76, !35, i64 2432}
!99 = !{!76, !43, i64 48}
!100 = !{!76, !43, i64 40}
!101 = !{!76, !35, i64 16}
!102 = !{!76, !35, i64 20}
!103 = !{!76, !35, i64 28}
!104 = !{}
!105 = !{!106, !36, i64 16}
!106 = !{!"ColormanageProcessor", !43, i64 0, !43, i64 8, !36, i64 16}
!107 = !{!106, !43, i64 0}
!108 = !{!106, !43, i64 8}
!109 = distinct !{!109, !39, !40}
!110 = distinct !{!110, !39, !40}
!111 = !{!112, !68, i64 136}
!112 = !{!"ColorManagedViewSettings", !35, i64 0, !35, i64 4, !36, i64 8, !36, i64 72, !68, i64 136, !68, i64 140, !43, i64 144, !43, i64 152}
!113 = !{!112, !68, i64 140}
!114 = distinct !{!114, !39, !40}
!115 = distinct !{!115, !39, !40}
!116 = distinct !{!116, !39, !40}
!117 = !{!118, !43, i64 16}
!118 = !{!"LinkData", !43, i64 0, !43, i64 8, !43, i64 16}
!119 = !{!76, !43, i64 2408}
!120 = !{!121, !43, i64 0}
!121 = !{!"ProcessorTransformInit", !43, i64 0, !43, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !36, i64 28}
!122 = !{!121, !43, i64 8}
!123 = !{!121, !35, i64 16}
!124 = !{!121, !35, i64 20}
!125 = !{!121, !35, i64 24}
!126 = !{!121, !36, i64 28}
!127 = !{!68, !68, i64 0}
!128 = !{!112, !35, i64 0}
!129 = !{!112, !43, i64 144}
!130 = !{!131, !36, i64 0}
!131 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !86, i64 8, !86, i64 10, !68, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !112, i64 24, !132, i64 184}
!132 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!133 = !{!131, !36, i64 2}
!134 = !{!76, !35, i64 292}
!135 = !{!76, !35, i64 36}
!136 = !{!76, !35, i64 312}
!137 = !{!138, !43, i64 56}
!138 = !{!"ImFileType", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !35, i64 72, !35, i64 76, !35, i64 80}
!139 = !{!138, !43, i64 32}
!140 = !{!138, !35, i64 72}
!141 = distinct !{!141, !39, !40}
!142 = !{!143, !35, i64 4}
!143 = !{!"ColormanageCacheViewSettings", !35, i64 0, !35, i64 4, !35, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !43, i64 24}
!144 = !{!143, !35, i64 8}
!145 = !{!143, !68, i64 12}
!146 = !{!143, !68, i64 16}
!147 = !{!76, !68, i64 112}
!148 = !{!143, !68, i64 20}
!149 = !{!143, !35, i64 0}
!150 = !{!143, !43, i64 24}
!151 = !{!152, !35, i64 0}
!152 = !{!"ColormanageCacheDisplaySettings", !35, i64 0}
!153 = !{!76, !35, i64 2436}
!154 = !{!76, !35, i64 2440}
!155 = !{!76, !35, i64 2444}
!156 = !{!76, !35, i64 2448}
!157 = !{!158, !35, i64 12}
!158 = !{!"CurveMapping", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !159, i64 16, !159, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!159 = !{!"rctf", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12}
!160 = !{!161, !35, i64 0}
!161 = !{!"ColormanageCacheKey", !35, i64 0, !35, i64 4}
!162 = !{!161, !35, i64 4}
!163 = !{!76, !36, i64 24}
!164 = !{!76, !35, i64 32}
!165 = !{!166, !35, i64 4}
!166 = !{!"ColormnaageCacheData", !35, i64 0, !35, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !43, i64 24, !35, i64 32}
!167 = !{!166, !68, i64 8}
!168 = !{!166, !68, i64 12}
!169 = !{!166, !68, i64 16}
!170 = !{!166, !35, i64 0}
!171 = !{!166, !43, i64 24}
!172 = !{!166, !35, i64 32}
!173 = distinct !{!173, !39, !40}
!174 = distinct !{!174, !39, !40}
!175 = distinct !{!175, !39, !40}
!176 = distinct !{!176, !39, !40}
!177 = distinct !{!177, !39, !40}
!178 = distinct !{!178, !39, !40}
!179 = distinct !{!179, !39, !40}
!180 = distinct !{!180, !39, !40}
!181 = !{!58, !36, i64 616}
!182 = !{!58, !35, i64 16}
!183 = distinct !{!183, !39, !40}
!184 = distinct !{!184, !39, !40}
!185 = !{!138, !35, i64 80}
!186 = distinct !{!186, !39, !40}
!187 = !{!188, !35, i64 0}
!188 = !{!"EnumPropertyItem", !35, i64 0, !43, i64 8, !35, i64 16, !43, i64 24, !43, i64 32}
!189 = !{!188, !43, i64 24}
!190 = !{!188, !43, i64 8}
!191 = !{!188, !35, i64 16}
!192 = !{!188, !43, i64 32}
!193 = distinct !{!193, !39, !40}
!194 = distinct !{!194, !39, !40}
!195 = distinct !{!195, !39, !40}
!196 = distinct !{!196, !39, !40}
!197 = !{!67, !68, i64 264}
!198 = !{!67, !68, i64 268}
!199 = !{!67, !36, i64 288}
!200 = !{!67, !35, i64 292}
!201 = !{!69, !43, i64 0}
!202 = !{!203, !86, i64 2}
!203 = !{!"CurveMap", !86, i64 0, !86, i64 2, !68, i64 4, !68, i64 8, !68, i64 12, !36, i64 16, !36, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !36, i64 56, !36, i64 64}
!204 = !{!203, !68, i64 4}
!205 = !{!203, !68, i64 8}
!206 = !{!203, !43, i64 40}
!207 = !{!208, !68, i64 0}
!208 = !{!"CurveMapPoint", !68, i64 0, !68, i64 4, !86, i64 8, !86, i64 10}
!209 = !{!208, !68, i64 4}
!210 = distinct !{!210, !39, !40}
!211 = !{!69, !70, i64 216}
!212 = !{!67, !43, i64 280}
!213 = !{!214, !43, i64 0}
!214 = !{!"DisplayBufferInitData", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !35, i64 48, !43, i64 56, !43, i64 64}
!215 = !{!214, !43, i64 8}
!216 = !{!214, !43, i64 16}
!217 = !{!214, !43, i64 24}
!218 = !{!214, !43, i64 32}
!219 = !{!214, !43, i64 40}
!220 = !{!214, !43, i64 56}
!221 = !{!214, !43, i64 64}
!222 = !{!223, !43, i64 0}
!223 = !{!"DisplayBufferThread", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !68, i64 56, !36, i64 60, !43, i64 64, !43, i64 72}
!224 = !{!223, !43, i64 8}
!225 = !{!223, !43, i64 16}
!226 = !{!223, !43, i64 24}
!227 = !{!223, !43, i64 32}
!228 = !{!223, !35, i64 40}
!229 = !{!223, !35, i64 44}
!230 = !{!223, !35, i64 48}
!231 = !{!223, !35, i64 52}
!232 = !{!223, !68, i64 56}
!233 = !{!223, !36, i64 60}
!234 = !{!223, !43, i64 64}
!235 = !{!223, !43, i64 72}
!236 = distinct !{!236, !39, !40}
!237 = distinct !{!237, !39, !40}
!238 = !{!239, !43, i64 0}
!239 = !{!"ProcessorTransformThread", !43, i64 0, !43, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !36, i64 32}
!240 = !{!239, !43, i64 8}
!241 = !{!239, !35, i64 16}
!242 = !{!239, !35, i64 20}
!243 = !{!239, !35, i64 24}
!244 = !{!239, !35, i64 28}
!245 = !{!239, !36, i64 32}
