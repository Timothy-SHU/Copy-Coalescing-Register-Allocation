; ModuleID = 'blender/source/blender/imbuf/intern/colormanagement.c'
source_filename = "blender/source/blender/imbuf/intern/colormanagement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.global_glsl_state = type { ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], float, float, ptr, ptr, i8, i32, %struct.OCIO_CurveMappingSettings, ptr, ptr }
%struct.OCIO_CurveMappingSettings = type { ptr, i32, [4 x i32], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [4 x float], [3 x float], [3 x float], i64 }
%struct.ImFileType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ColorManagedDisplay = type { ptr, ptr, i32, [64 x i8], %struct.ListBase, ptr, ptr }
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
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedView = type { ptr, ptr, i32, [64 x i8] }
%struct.ColorManagedLook = type { ptr, ptr, i32, [64 x i8], [64 x i8], i8 }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.ColormanageProcessor = type { ptr, ptr, i8 }
%struct.ProcessorTransformInit = type { ptr, ptr, i32, i32, i32, i8 }
%struct.ColormanageCacheViewSettings = type { i32, i32, i32, float, float, float, ptr }
%struct.ColormanageCacheDisplaySettings = type { i32 }
%struct.ColormanageCacheKey = type { i32, i32 }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.ColormnaageCacheData = type { i32, i32, float, float, float, ptr, i32 }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.DisplayBufferInitData = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.DisplayBufferThread = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, float, i8, ptr, ptr }
%struct.ProcessorTransformThread = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.CurveMapPoint = type { float, float, i16, i16 }

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
@switch.table.IMB_colormanagement_role_colorspace_name_get = private unnamed_addr constant [6 x ptr] [ptr @global_role_scene_linear, ptr @global_role_color_picking, ptr @global_role_texture_painting, ptr @global_role_default_sequencer, ptr @global_role_default_byte, ptr @global_role_default_float], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @colormanagement_init() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #19
  tail call void @OCIO_init() #20
  %2 = tail call ptr @BLI_get_folder(i32 noundef 2, ptr noundef nonnull @.str) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  call void @BLI_join_dirfile(ptr noundef nonnull %1, i64 noundef 1024, ptr noundef nonnull %2, ptr noundef nonnull @.str.1) #20
  %5 = call ptr @OCIO_configCreateFromFile(ptr noundef nonnull %1) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0, %4
  %8 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %9 = call ptr @OCIO_configCreateFallback() #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %4 ]
  call void @OCIO_setCurrentConfig(ptr noundef nonnull %12) #20
  call fastcc void @colormanage_load_config(ptr noundef nonnull %12) #21
  call void @OCIO_configRelease(ptr noundef nonnull %12) #20
  br label %13

13:                                               ; preds = %11, %7
  %14 = load i32, ptr @global_tot_display, align 4, !tbaa !34
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr @global_tot_view, align 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = call i32 @puts(ptr nonnull dereferenceable(1) @str.37)
  call fastcc void @colormanage_free_config() #21
  %21 = call ptr @OCIO_configCreateFallback() #20
  call fastcc void @colormanage_load_config(ptr noundef %21) #21
  br label %22

22:                                               ; preds = %13, %19
  call void @BLI_init_srgb_conversion() #20
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @OCIO_init() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_get_folder(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_configCreateFromFile(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @OCIO_configCreateFallback() local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_setCurrentConfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanage_load_config(ptr noundef %0) unnamed_addr #0 !PGOFuncName !38 {
  tail call fastcc void @colormanage_role_color_space_name_get(ptr noundef %0, ptr noundef nonnull @global_role_scene_linear, ptr noundef nonnull @.str.21, ptr noundef null) #21
  tail call fastcc void @colormanage_role_color_space_name_get(ptr noundef %0, ptr noundef nonnull @global_role_color_picking, ptr noundef nonnull @.str.22, ptr noundef null) #21
  tail call fastcc void @colormanage_role_color_space_name_get(ptr noundef %0, ptr noundef nonnull @global_role_texture_painting, ptr noundef nonnull @.str.23, ptr noundef null) #21
  tail call fastcc void @colormanage_role_color_space_name_get(ptr noundef %0, ptr noundef nonnull @global_role_default_sequencer, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21) #21
  tail call fastcc void @colormanage_role_color_space_name_get(ptr noundef %0, ptr noundef nonnull @global_role_default_byte, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #21
  tail call fastcc void @colormanage_role_color_space_name_get(ptr noundef %0, ptr noundef nonnull @global_role_default_float, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21) #21
  %2 = tail call i32 @OCIO_configGetNumColorSpaces(ptr noundef %0) #20
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %14, %4 ], [ 0, %1 ]
  %6 = tail call ptr @OCIO_configGetColorSpaceNameByIndex(ptr noundef %0, i32 noundef %5) #20
  %7 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef %6) #20
  %8 = tail call ptr @OCIO_colorSpaceGetDescription(ptr noundef %7) #20
  %9 = tail call i32 @OCIO_colorSpaceIsInvertible(ptr noundef %7) #20
  %10 = trunc i32 %9 to i8
  %11 = tail call i32 @OCIO_colorSpaceIsData(ptr noundef %7) #20
  %12 = trunc i32 %11 to i8
  %13 = tail call ptr @colormanage_colorspace_add(ptr noundef %6, ptr noundef %8, i8 noundef zeroext %10, i8 noundef zeroext %12) #21
  tail call void @OCIO_colorSpaceRelease(ptr noundef %7) #20
  %14 = add nuw nsw i32 %5, 1
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %4, !llvm.loop !39

16:                                               ; preds = %4, %1
  %17 = tail call i32 @OCIO_configGetNumDisplays(ptr noundef %0) #20
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %16, %39
  %20 = phi i32 [ %40, %39 ], [ 0, %16 ]
  %21 = tail call ptr @OCIO_configGetDisplay(ptr noundef %0, i32 noundef %20) #20
  %22 = tail call ptr @colormanage_display_add(ptr noundef %21) #21
  %23 = tail call i32 @OCIO_configGetNumViews(ptr noundef %0, ptr noundef %21) #20
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %22, i64 0, i32 4
  br label %27

27:                                               ; preds = %25, %34
  %28 = phi i32 [ 0, %25 ], [ %37, %34 ]
  %29 = tail call ptr @OCIO_configGetView(ptr noundef %0, ptr noundef %21, i32 noundef %28) #20
  %30 = tail call ptr @colormanage_view_get_named(ptr noundef %29) #21
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = tail call ptr @colormanage_view_add(ptr noundef %29) #21
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi ptr [ %30, %27 ], [ %33, %32 ]
  %36 = tail call ptr @BLI_genericNodeN(ptr noundef %35) #20
  tail call void @BLI_addtail(ptr noundef nonnull %26, ptr noundef %36) #20
  %37 = add nuw nsw i32 %28, 1
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %39, label %27, !llvm.loop !41

39:                                               ; preds = %34, %19
  %40 = add nuw nsw i32 %20, 1
  %41 = icmp eq i32 %40, %17
  br i1 %41, label %42, label %19, !llvm.loop !42

42:                                               ; preds = %39, %16
  store i32 %17, ptr @global_tot_display, align 4, !tbaa !34
  %43 = tail call i32 @OCIO_configGetNumLooks(ptr noundef %0) #20
  %44 = tail call ptr @colormanage_look_add(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, i8 noundef zeroext 1) #21
  %45 = icmp sgt i32 %43, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42, %46
  %47 = phi i32 [ %52, %46 ], [ 0, %42 ]
  %48 = tail call ptr @OCIO_configGetLookNameByIndex(ptr noundef %0, i32 noundef %47) #20
  %49 = tail call ptr @OCIO_configGetLook(ptr noundef %0, ptr noundef %48) #20
  %50 = tail call ptr @OCIO_lookGetProcessSpace(ptr noundef %49) #20
  tail call void @OCIO_lookRelease(ptr noundef %49) #20
  %51 = tail call ptr @colormanage_look_add(ptr noundef %48, ptr noundef %50, i8 noundef zeroext 0) #21
  %52 = add nuw nsw i32 %47, 1
  %53 = icmp eq i32 %52, %43
  br i1 %53, label %54, label %46, !llvm.loop !43

54:                                               ; preds = %46, %42
  ret void
}

; Function Attrs: optsize
declare void @OCIO_configRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanage_free_config() unnamed_addr #0 !PGOFuncName !44 {
  %1 = load ptr, ptr @global_colorspaces, align 8, !tbaa !45
  %2 = icmp eq ptr %1, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %0, %15
  %4 = phi ptr [ %5, %15 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.ColorSpace, ptr %4, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @OCIO_processorRelease(ptr noundef nonnull %7) #20
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.ColorSpace, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @OCIO_processorRelease(ptr noundef nonnull %12) #20
  br label %15

15:                                               ; preds = %14, %10
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %16(ptr noundef nonnull %4) #20
  %17 = icmp eq ptr %5, null
  br i1 %17, label %18, label %3, !llvm.loop !53

18:                                               ; preds = %15, %0
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull @global_colorspaces) #21
  store i32 0, ptr @global_tot_colorspace, align 4, !tbaa !34
  %19 = load ptr, ptr @global_displays, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %18, %33
  %22 = phi ptr [ %23, %33 ], [ %19, %18 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %22, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void @OCIO_processorRelease(ptr noundef nonnull %25) #20
  br label %28

28:                                               ; preds = %27, %21
  %29 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %22, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @OCIO_processorRelease(ptr noundef nonnull %30) #20
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %22, i64 0, i32 4
  tail call void @BLI_freelistN(ptr noundef nonnull %34) #20
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %35(ptr noundef nonnull %22) #20
  %36 = icmp eq ptr %23, null
  br i1 %36, label %37, label %21, !llvm.loop !58

37:                                               ; preds = %33, %18
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull @global_displays) #21
  store i32 0, ptr @global_tot_display, align 4, !tbaa !34
  tail call void @BLI_freelistN(ptr noundef nonnull @global_views) #20
  store i32 0, ptr @global_tot_view, align 4, !tbaa !34
  tail call void @BLI_freelistN(ptr noundef nonnull @global_looks) #20
  store i32 0, ptr @global_tot_looks, align 4, !tbaa !34
  tail call void @OCIO_exit() #20
  ret void
}

; Function Attrs: optsize
declare void @BLI_init_srgb_conversion() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @colormanagement_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @global_glsl_state, align 8, !tbaa !59
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @OCIO_processorRelease(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 7), align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @curvemapping_free(ptr noundef nonnull %5) #20
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11), align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %12(ptr noundef nonnull %9) #20
  br label %13

13:                                               ; preds = %11, %8
  %14 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 12), align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @OCIO_freeOGLState(ptr noundef nonnull %14) #20
  br label %17

17:                                               ; preds = %16, %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 13), align 8, !tbaa !67
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @OCIO_freeOGLState(ptr noundef nonnull %18) #20
  br label %21

21:                                               ; preds = %20, %17
  tail call fastcc void @colormanage_free_config() #21
  ret void
}

; Function Attrs: optsize
declare void @OCIO_processorRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemapping_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_freeOGLState(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @colormanage_cache_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 36
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %6(ptr noundef nonnull %3) #20
  store ptr null, ptr %2, align 8, !tbaa !68
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 37
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @colormanage_cachedata_get(ptr noundef nonnull %0) #21
  %13 = tail call fastcc ptr @colormanage_moviecache_get(ptr noundef nonnull %0) #21
  %14 = icmp eq ptr %12, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %16(ptr noundef nonnull %12) #20
  br label %17

17:                                               ; preds = %15, %11
  %18 = icmp eq ptr %13, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void @IMB_moviecache_free(ptr noundef nonnull %13) #20
  br label %20

20:                                               ; preds = %19, %17
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %22 = load ptr, ptr %8, align 8, !tbaa !72
  tail call void %21(ptr noundef %22) #20
  store ptr null, ptr %8, align 8, !tbaa !72
  br label %23

23:                                               ; preds = %20, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @colormanage_cachedata_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ColormanageCache, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @colormanage_moviecache_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !76 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !77
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @IMB_moviecache_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_display_settings_from_ctx(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 44
  store ptr %6, ptr %1, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 45
  store ptr %7, ptr %2, align 8, !tbaa !52
  %8 = icmp eq ptr %5, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Image, ptr %11, i64 0, i32 10
  %15 = load i16, ptr %14, align 2, !tbaa !85
  %16 = and i16 %15, 2048
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store ptr null, ptr %1, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %13, %18, %9, %3
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_colormanagement_get_display_colorspace_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @OCIO_getCurrentConfig() #20
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 3
  %5 = tail call ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %4) #20
  tail call void @OCIO_configRelease(ptr noundef %3) #20
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @OCIO_getCurrentConfig() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @colorspace_set_default_role(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %0, align 1, !tbaa !89
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef %2) #21
  %10 = sext i32 %1 to i64
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef %9, i64 noundef %10) #20
  br label %12

12:                                               ; preds = %8, %5, %3
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef %0) local_unnamed_addr #5 {
  %2 = icmp ult i32 %0, 6
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.IMB_colormanagement_role_colorspace_name_get) #21
  br label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [6 x ptr], ptr @switch.table.IMB_colormanagement_role_colorspace_name_get, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi ptr [ null, %3 ], [ %8, %5 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @colormanage_imbuf_set_default_spaces(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  %2 = tail call ptr @colormanage_colorspace_get_named(ptr noundef nonnull @global_role_default_byte) #21
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  store ptr %2, ptr %3, align 8, !tbaa !90
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @colormanage_colorspace_get_named(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_colorspaces, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorSpace, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !91

10:                                               ; preds = %2, %6
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @colormanage_imbuf_make_linear(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @colormanage_colorspace_get_named(ptr noundef %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ColorSpace, ptr %3, i64 0, i32 8
  %7 = load i8, ptr %6, align 1, !tbaa !92
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = or i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !93
  br label %31

13:                                               ; preds = %5, %2
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !94
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  tail call void @imb_freerectImBuf(ptr noundef nonnull %0) #20
  %22 = load ptr, ptr %14, align 8, !tbaa !94
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %22, %21 ], [ %15, %17 ]
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !96
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !97
  %29 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !98
  tail call void @IMB_colormanagement_transform(ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, ptr noundef %1, ptr noundef nonnull @global_role_scene_linear, i8 noundef zeroext 1) #21
  br label %31

31:                                               ; preds = %13, %23, %9
  ret void
}

; Function Attrs: optsize
declare void @imb_freerectImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_transform(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  tail call fastcc void @colormanagement_transform_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext 0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_check_file_config(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @colormanage_display_get_default() #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %4, %17
  %9 = phi ptr [ %18, %17 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 45
  tail call fastcc void @colormanage_check_display_settings(ptr noundef nonnull %10, ptr noundef nonnull %2) #21
  %11 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 44
  tail call fastcc void @colormanage_check_view_settings(ptr noundef nonnull %10, ptr noundef nonnull %11) #21
  %12 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 46
  tail call fastcc void @colormanage_check_colorspace_settings(ptr noundef nonnull %12, ptr noundef nonnull @.str.5) #21
  %13 = load i8, ptr %12, align 1, !tbaa !89
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef nonnull @global_role_default_sequencer, i64 noundef 64) #20
  br label %17

17:                                               ; preds = %15, %8
  %18 = load ptr, ptr %9, align 8, !tbaa !52
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !99

20:                                               ; preds = %17, %4
  %21 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %27, %24 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.Image, ptr %25, i64 0, i32 36
  tail call fastcc void @colormanage_check_colorspace_settings(ptr noundef nonnull %26, ptr noundef nonnull @.str.6) #21
  %27 = load ptr, ptr %25, align 8, !tbaa !52
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %24, !llvm.loop !100

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %36, %33 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct.MovieClip, ptr %34, i64 0, i32 18
  tail call fastcc void @colormanage_check_colorspace_settings(ptr noundef nonnull %35, ptr noundef nonnull @.str.7) #21
  %36 = load ptr, ptr %34, align 8, !tbaa !52
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33, !llvm.loop !101

38:                                               ; preds = %33, %29, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_display_get_default() local_unnamed_addr #0 {
  %1 = tail call ptr @colormanage_display_get_default_name() #21
  %2 = load i8, ptr %1, align 1, !tbaa !89
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call ptr @colormanage_display_get_named(ptr noundef nonnull %1) #21
  br label %6

6:                                                ; preds = %0, %4
  %7 = phi ptr [ %5, %4 ], [ null, %0 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanage_check_display_settings(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !102 {
  %3 = load i8, ptr %0, align 1, !tbaa !89
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %1, i64 0, i32 3
  br label %13

7:                                                ; preds = %2
  %8 = tail call ptr @colormanage_display_get_named(ptr noundef nonnull %0) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %1, i64 0, i32 3
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %11) #21
  br label %13

13:                                               ; preds = %5, %10
  %14 = phi ptr [ %11, %10 ], [ %6, %5 ]
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef nonnull %14, i64 noundef 64) #20
  br label %16

16:                                               ; preds = %13, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanage_check_view_settings(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !103 {
  %3 = load ptr, ptr @global_looks, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !89
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = tail call ptr @colormanage_display_get_named(ptr noundef %0) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @colormanage_view_get_default(ptr noundef nonnull %8) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ColorManagedView, ptr %11, i64 0, i32 3
  br label %27

15:                                               ; preds = %2
  %16 = tail call ptr @colormanage_view_get_named(ptr noundef nonnull %4) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = tail call ptr @colormanage_display_get_named(ptr noundef %0) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @colormanage_view_get_default(ptr noundef nonnull %19) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ColorManagedView, ptr %22, i64 0, i32 3
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull @.str.4, ptr noundef nonnull %4, ptr noundef nonnull %25) #21
  br label %27

27:                                               ; preds = %13, %24
  %28 = phi ptr [ %25, %24 ], [ %14, %13 ]
  %29 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %28, i64 noundef 64) #20
  br label %30

30:                                               ; preds = %27, %18, %7, %15, %21, %10
  %31 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 2
  %32 = load i8, ptr %31, align 8, !tbaa !89
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ColorManagedLook, ptr %3, i64 0, i32 3
  br label %42

36:                                               ; preds = %30
  %37 = tail call ptr @colormanage_look_get_named(ptr noundef nonnull %31) #21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ColorManagedLook, ptr %3, i64 0, i32 3
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull @.str.4, ptr noundef nonnull %31, ptr noundef nonnull %40) #21
  br label %42

42:                                               ; preds = %34, %39
  %43 = phi ptr [ %40, %39 ], [ %35, %34 ]
  %44 = tail call ptr @BLI_strncpy(ptr noundef nonnull %31, ptr noundef nonnull %43, i64 noundef 64) #20
  br label %45

45:                                               ; preds = %42, %36
  %46 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 4
  %47 = load float, ptr %46, align 8, !tbaa !104
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 5
  %51 = load float, ptr %50, align 4, !tbaa !106
  %52 = fcmp oeq float %51, 0.000000e+00
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %46, align 8, !tbaa !107
  br label %54

54:                                               ; preds = %53, %49, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanage_check_colorspace_settings(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !108 {
  %3 = load i8, ptr %0, align 1, !tbaa !89
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @colormanage_colorspace_get_named(ptr noundef nonnull %0) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef %1, ptr noundef nonnull %0) #21
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, i64 noundef 64) #20
  br label %11

11:                                               ; preds = %5, %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_validate_settings(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @colormanage_display_get_named(ptr noundef %0) #21
  %4 = tail call ptr @colormanage_view_get_default(ptr noundef %3) #21
  %5 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %3, i64 0, i32 4
  %6 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 3
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %5, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.LinkData, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = getelementptr inbounds %struct.ColorManagedView, ptr %13, i64 0, i32 3
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %6) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %7

17:                                               ; preds = %7
  %18 = icmp eq ptr %4, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ColorManagedView, ptr %4, i64 0, i32 3
  %21 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %20, i64 noundef 64) #20
  br label %22

22:                                               ; preds = %11, %19, %17
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @colormanage_display_get_named(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_displays, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !111

10:                                               ; preds = %2, %6
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_view_get_default(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @colormanage_view_get_default_name(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %2, align 1, !tbaa !89
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @colormanage_view_get_named(ptr noundef nonnull %2) #21
  br label %9

9:                                                ; preds = %1, %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_colormanagement_check_is_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call ptr @colormanage_colorspace_get_named(ptr noundef %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ColorSpace, ptr %3, i64 0, i32 8
  %7 = load i8, ptr %6, align 1, !tbaa !92
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = or i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !93
  br label %17

13:                                               ; preds = %5, %2
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %15 = load i32, ptr %14, align 8, !tbaa !93
  %16 = and i32 %15, -2
  store i32 %16, ptr %14, align 8, !tbaa !93
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_colormanagement_assign_float_colorspace(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call ptr @colormanage_colorspace_get_named(ptr noundef %1) #21
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  store ptr %3, ptr %4, align 8, !tbaa !112
  %5 = icmp eq ptr %3, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorSpace, ptr %3, i64 0, i32 8
  %8 = load i8, ptr %7, align 1, !tbaa !92
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %12 = load i32, ptr %11, align 8, !tbaa !93
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !93
  br label %18

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %16 = load i32, ptr %15, align 8, !tbaa !93
  %17 = and i32 %16, -2
  store i32 %17, ptr %15, align 8, !tbaa !93
  br label %18

18:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_colormanagement_assign_rect_colorspace(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call ptr @colormanage_colorspace_get_named(ptr noundef %1) #21
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  store ptr %3, ptr %4, align 8, !tbaa !90
  %5 = icmp eq ptr %3, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorSpace, ptr %3, i64 0, i32 8
  %8 = load i8, ptr %7, align 1, !tbaa !92
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %12 = load i32, ptr %11, align 8, !tbaa !93
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !93
  br label %18

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %16 = load i32, ptr %15, align 8, !tbaa !93
  %17 = and i32 %16, -2
  store i32 %17, ptr %15, align 8, !tbaa !93
  br label %18

18:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @IMB_colormanagement_get_float_colorspace(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ColorSpace, ptr %3, i64 0, i32 3
  br label %9

7:                                                ; preds = %1
  %8 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 0) #21
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @IMB_colormanagement_get_rect_colorspace(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.ColorSpace, ptr %3, i64 0, i32 3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanagement_transform_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !113 {
  %9 = load i8, ptr %4, align 1, !tbaa !89
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @IMB_colormanagement_colorspace_processor_new(ptr noundef nonnull %4, ptr noundef %5) #21
  %16 = icmp eq i8 %7, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call fastcc void @processor_transform_apply_threaded(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %15, i8 noundef zeroext %6) #21
  br label %19

18:                                               ; preds = %14
  tail call void @IMB_colormanagement_processor_apply(ptr noundef %15, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %6) #21
  br label %19

19:                                               ; preds = %18, %17
  tail call void @IMB_colormanagement_processor_free(ptr noundef %15) #21
  br label %20

20:                                               ; preds = %11, %8, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_transform_threaded(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  tail call fastcc void @colormanagement_transform_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext 1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_transform_v4(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1, !tbaa !89
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @IMB_colormanagement_colorspace_processor_new(ptr noundef nonnull %1, ptr noundef %2) #21
  tail call void @IMB_colormanagement_processor_apply_v4(ptr noundef %10, ptr noundef %0) #21
  tail call void @IMB_colormanagement_processor_free(ptr noundef %10) #21
  br label %11

11:                                               ; preds = %6, %3, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_colormanagement_colorspace_processor_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.20) #20
  %5 = tail call ptr @colormanage_colorspace_get_named(ptr noundef %1) #21
  %6 = getelementptr inbounds %struct.ColorSpace, ptr %5, i64 0, i32 8
  %7 = load i8, ptr %6, align 1, !tbaa !92
  %8 = getelementptr inbounds %struct.ColormanageProcessor, ptr %4, i64 0, i32 2
  store i8 %7, ptr %8, align 8, !tbaa !114
  %9 = tail call fastcc ptr @create_colorspace_transform_processor(ptr noundef %0, ptr noundef %1) #21
  store ptr %9, ptr %4, align 8, !tbaa !116
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_processor_apply_v4(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %1) #20
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !116
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @OCIO_processorApplyRGBA(ptr noundef nonnull %8, ptr noundef %1) #20
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_processor_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @curvemapping_free(ptr noundef nonnull %3) #20
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %0, align 8, !tbaa !116
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @OCIO_processorRelease(ptr noundef nonnull %7) #20
  br label %10

10:                                               ; preds = %9, %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %11(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @__func__.IMB_colormanagement_colorspace_to_scene_linear_v3) #21
  br label %10

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @colorspace_to_scene_linear_processor(ptr noundef nonnull %1) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %7, ptr noundef %0) #20
  br label %10

10:                                               ; preds = %6, %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @colorspace_to_scene_linear_processor(ptr noundef %0) unnamed_addr #0 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.ColorSpace, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  tail call void @BLI_mutex_lock(ptr noundef nonnull @processor_lock) #20
  %6 = load ptr, ptr %2, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ColorSpace, ptr %0, i64 0, i32 3
  %10 = tail call fastcc ptr @create_colorspace_transform_processor(ptr noundef nonnull %9, ptr noundef nonnull @global_role_scene_linear) #21
  store ptr %10, ptr %2, align 8, !tbaa !50
  br label %11

11:                                               ; preds = %8, %5
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @processor_lock) #20
  %12 = load ptr, ptr %2, align 8, !tbaa !50
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %12, %11 ], [ %3, %1 ]
  ret ptr %14
}

; Function Attrs: optsize
declare void @OCIO_processorApplyRGB(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_scene_linear_to_colorspace_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @__func__.IMB_colormanagement_scene_linear_to_colorspace_v3) #21
  br label %10

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @colorspace_from_scene_linear_processor(ptr noundef nonnull %1) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %7, ptr noundef %0) #20
  br label %10

10:                                               ; preds = %6, %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @colorspace_from_scene_linear_processor(ptr noundef %0) unnamed_addr #0 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.ColorSpace, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  tail call void @BLI_mutex_lock(ptr noundef nonnull @processor_lock) #20
  %6 = load ptr, ptr %2, align 8, !tbaa !51
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ColorSpace, ptr %0, i64 0, i32 3
  %10 = tail call fastcc ptr @create_colorspace_transform_processor(ptr noundef nonnull @global_role_scene_linear, ptr noundef nonnull %9) #21
  store ptr %10, ptr %2, align 8, !tbaa !51
  br label %11

11:                                               ; preds = %8, %5
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @processor_lock) #20
  %12 = load ptr, ptr %2, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %12, %11 ], [ %3, %1 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_colorspace_to_scene_linear_v4(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @__func__.IMB_colormanagement_colorspace_to_scene_linear_v4) #21
  br label %14

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @colorspace_to_scene_linear_processor(ptr noundef nonnull %2) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @OCIO_processorApplyRGBA_predivide(ptr noundef nonnull %8, ptr noundef %0) #20
  br label %14

13:                                               ; preds = %10
  tail call void @OCIO_processorApplyRGBA(ptr noundef nonnull %8, ptr noundef %0) #20
  br label %14

14:                                               ; preds = %7, %13, %12, %5
  ret void
}

; Function Attrs: optsize
declare void @OCIO_processorApplyRGBA_predivide(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_processorApplyRGBA(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_colorspace_to_scene_linear(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %4, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @__func__.IMB_colormanagement_colorspace_to_scene_linear) #21
  br label %24

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @colorspace_to_scene_linear_processor(ptr noundef nonnull %4) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = sext i32 %1 to i64
  %15 = sext i32 %2 to i64
  %16 = sext i32 %3 to i64
  %17 = shl nsw i64 %16, 2
  %18 = mul i64 %17, %14
  %19 = tail call ptr @OCIO_createOCIO_PackedImageDesc(ptr noundef %0, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef 4, i64 noundef %17, i64 noundef %18) #20
  %20 = icmp eq i8 %5, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void @OCIO_processorApply_predivide(ptr noundef nonnull %11, ptr noundef %19) #20
  br label %23

22:                                               ; preds = %13
  tail call void @OCIO_processorApply(ptr noundef nonnull %11, ptr noundef %19) #20
  br label %23

23:                                               ; preds = %22, %21
  tail call void @OCIO_PackedImageDescRelease(ptr noundef %19) #20
  br label %24

24:                                               ; preds = %10, %23, %8
  ret void
}

; Function Attrs: optsize
declare ptr @OCIO_createOCIO_PackedImageDesc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_processorApply_predivide(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_processorApply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_PackedImageDescRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @display_from_scene_linear_processor(ptr noundef %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %3, ptr noundef %0) #20
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @display_from_scene_linear_processor(ptr noundef %0) unnamed_addr #0 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  tail call void @BLI_mutex_lock(ptr noundef nonnull @processor_lock) #20
  %6 = load ptr, ptr %2, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = tail call ptr @colormanage_view_get_default_name(ptr noundef nonnull %0) #21
  %10 = tail call ptr @OCIO_getCurrentConfig() #20
  %11 = icmp ne ptr %9, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %0, i64 0, i32 3
  %16 = tail call ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef nonnull %10, ptr noundef nonnull %15, ptr noundef nonnull %9) #20
  %17 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef nonnull %10, ptr noundef nonnull @global_role_scene_linear, ptr noundef %16) #20
  tail call void @OCIO_configRelease(ptr noundef nonnull %10) #20
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi ptr [ %17, %14 ], [ null, %8 ]
  store ptr %19, ptr %2, align 8, !tbaa !57
  br label %20

20:                                               ; preds = %18, %5
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @processor_lock) #20
  %21 = load ptr, ptr %2, align 8, !tbaa !57
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi ptr [ %21, %20 ], [ %3, %1 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @display_to_scene_linear_processor(ptr noundef %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %3, ptr noundef %0) #20
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @display_to_scene_linear_processor(ptr noundef %0) unnamed_addr #0 !PGOFuncName !121 {
  %2 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  tail call void @BLI_mutex_lock(ptr noundef nonnull @processor_lock) #20
  %6 = load ptr, ptr %2, align 8, !tbaa !56
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = tail call ptr @colormanage_view_get_default_name(ptr noundef nonnull %0) #21
  %10 = tail call ptr @OCIO_getCurrentConfig() #20
  %11 = icmp ne ptr %9, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %0, i64 0, i32 3
  %16 = tail call ptr @OCIO_configGetDisplayColorSpaceName(ptr noundef nonnull %10, ptr noundef nonnull %15, ptr noundef nonnull %9) #20
  %17 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef nonnull %10, ptr noundef %16, ptr noundef nonnull @global_role_scene_linear) #20
  tail call void @OCIO_configRelease(ptr noundef nonnull %10) #20
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi ptr [ %17, %14 ], [ null, %8 ]
  store ptr %19, ptr %2, align 8, !tbaa !56
  br label %20

20:                                               ; preds = %18, %5
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @processor_lock) #20
  %21 = load ptr, ptr %2, align 8, !tbaa !56
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi ptr [ %21, %20 ], [ %3, %1 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #21
  %5 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %2, ptr noundef %3) #21
  tail call void @IMB_colormanagement_processor_apply_v4(ptr noundef %5, ptr noundef %0) #21
  tail call void @IMB_colormanagement_processor_free(ptr noundef %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !122 {
  %3 = load float, ptr %1, align 4, !tbaa !107
  store float %3, ptr %0, align 4, !tbaa !107
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !107
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !107
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !107
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !107
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !107
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_colormanagement_display_processor_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ColorManagedViewSettings, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #19
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %5 = tail call ptr %4(i64 noundef 24, ptr noundef nonnull @.str.20) #20
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call fastcc void @init_default_view_settings(ptr noundef %1, ptr noundef nonnull %3) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi ptr [ %3, %7 ], [ %0, %2 ]
  %10 = call fastcc ptr @display_transform_get_colorspace(ptr noundef nonnull %9, ptr noundef %1) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ColorSpace, ptr %10, i64 0, i32 8
  %14 = load i8, ptr %13, align 1, !tbaa !92
  %15 = getelementptr inbounds %struct.ColormanageProcessor, ptr %5, i64 0, i32 2
  store i8 %14, ptr %15, align 8, !tbaa !114
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %9, i64 0, i32 2
  %18 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %9, i64 0, i32 3
  %19 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %9, i64 0, i32 4
  %20 = load float, ptr %19, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %9, i64 0, i32 5
  %22 = load float, ptr %21, align 4, !tbaa !106
  %23 = call fastcc ptr @create_display_buffer_processor(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %1, float noundef %20, float noundef %22, ptr noundef nonnull @global_role_scene_linear) #21
  store ptr %23, ptr %5, align 8, !tbaa !116
  %24 = load i32, ptr %9, align 8, !tbaa !123
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %9, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !124
  %30 = call ptr @curvemapping_copy(ptr noundef %29) #20
  %31 = getelementptr inbounds %struct.ColormanageProcessor, ptr %5, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !117
  call void @curvemapping_premultiply(ptr noundef %30, i32 noundef 0) #20
  br label %32

32:                                               ; preds = %27, %16
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #19
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_pixel_to_display_space_v3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %1) #21
  %5 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %2, ptr noundef %3) #21
  tail call void @IMB_colormanagement_processor_apply_v3(ptr noundef %5, ptr noundef %0) #21
  tail call void @IMB_colormanagement_processor_free(ptr noundef %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !125 {
  %3 = load float, ptr %1, align 4, !tbaa !107
  store float %3, ptr %0, align 4, !tbaa !107
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !107
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !107
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !107
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_processor_apply_v3(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %1) #20
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !116
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @OCIO_processorApplyRGB(ptr noundef nonnull %8, ptr noundef %1) #20
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_imbuf_make_display_space(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @colormanagement_imbuf_make_display_space(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanagement_imbuf_make_display_space(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !126 {
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp eq ptr %6, null
  %8 = icmp ne i8 %3, 0
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call zeroext i8 @imb_addrectImBuf(ptr noundef nonnull %0) #20
  %12 = load ptr, ptr %5, align 8, !tbaa !95
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %12, %10 ], [ %6, %4 ]
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !94
  tail call fastcc void @colormanage_display_buffer_process_ex(ptr noundef nonnull %0, ptr noundef %16, ptr noundef %14, ptr noundef %1, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_colormanagement_imbuf_for_write(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = load i8, ptr %5, align 8, !tbaa !127
  %9 = tail call zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext %8) #20
  %10 = load i8, ptr %5, align 8, !tbaa !127
  %11 = tail call i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext %10) #20
  %12 = getelementptr inbounds %struct.ImageFormatData, ptr %5, i64 0, i32 2
  %13 = load i8, ptr %12, align 2, !tbaa !130
  %14 = icmp ne i8 %13, 32
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !94
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %24 = load i32, ptr %23, align 4, !tbaa !131
  %25 = and i32 %24, 24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  tail call void @IMB_rect_from_float(ptr noundef nonnull %0) #20
  %28 = load i32, ptr %23, align 4, !tbaa !131
  %29 = and i32 %28, -25
  store i32 %29, ptr %23, align 4, !tbaa !131
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
  br i1 %39, label %40, label %96

40:                                               ; preds = %37
  %41 = icmp eq i8 %2, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %0) #20
  br label %71

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !95
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %50 = load i32, ptr %49, align 4, !tbaa !132
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !52
  %55 = tail call ptr %54(ptr noundef nonnull %46) #20
  store ptr %55, ptr %45, align 8, !tbaa !95
  %56 = load i32, ptr %49, align 4, !tbaa !132
  %57 = or i32 %56, 1
  store i32 %57, ptr %49, align 4, !tbaa !132
  br label %58

58:                                               ; preds = %53, %48, %44
  %59 = load ptr, ptr %15, align 8, !tbaa !94
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 7
  %63 = load i32, ptr %62, align 4, !tbaa !132
  %64 = and i32 %63, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !52
  %68 = tail call ptr %67(ptr noundef nonnull %59) #20
  store ptr %68, ptr %15, align 8, !tbaa !94
  %69 = load i32, ptr %62, align 4, !tbaa !132
  %70 = or i32 %69, 32
  store i32 %70, ptr %62, align 4, !tbaa !132
  br label %71

71:                                               ; preds = %42, %66, %61, %58
  %72 = phi ptr [ %43, %42 ], [ %0, %66 ], [ %0, %61 ], [ %0, %58 ]
  br i1 %14, label %73, label %96

73:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %74 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 9
  %75 = load ptr, ptr %74, align 8, !tbaa !94
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 5
  %79 = load i32, ptr %78, align 4, !tbaa !98
  %80 = icmp eq i32 %79, 4
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !96
  %84 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !97
  call void @IMB_alpha_under_color_float(ptr noundef nonnull %75, i32 noundef %83, i32 noundef %85, ptr noundef nonnull %7) #20
  br label %86

86:                                               ; preds = %81, %77, %73
  %87 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 8
  %88 = load ptr, ptr %87, align 8, !tbaa !95
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 2
  %92 = load i32, ptr %91, align 8, !tbaa !96
  %93 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !97
  call void @IMB_alpha_under_color_byte(ptr noundef nonnull %88, i32 noundef %92, i32 noundef %94, ptr noundef nonnull %7) #20
  br label %95

95:                                               ; preds = %90, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  br label %96

96:                                               ; preds = %37, %95, %71
  %97 = phi ptr [ %72, %95 ], [ %72, %71 ], [ %0, %37 ]
  br i1 %38, label %98, label %135

98:                                               ; preds = %96
  %99 = load i8, ptr %5, align 8, !tbaa !127
  %100 = call i32 @BKE_imtype_to_ftype(i8 noundef zeroext %99) #20
  %101 = getelementptr inbounds %struct.ImBuf, ptr %97, i64 0, i32 26
  store i32 %100, ptr %101, align 8, !tbaa !133
  %102 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !52
  %103 = icmp ugt ptr %102, @IMB_FILE_TYPES
  br i1 %103, label %104, label %127

104:                                              ; preds = %98, %123
  %105 = phi ptr [ %124, %123 ], [ %102, %98 ]
  %106 = phi ptr [ %125, %123 ], [ @IMB_FILE_TYPES, %98 ]
  %107 = getelementptr inbounds %struct.ImFileType, ptr %106, i64 0, i32 7
  %108 = load ptr, ptr %107, align 8, !tbaa !134
  %109 = icmp eq ptr %108, null
  br i1 %109, label %123, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.ImFileType, ptr %106, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !136
  %113 = call i32 %112(ptr noundef nonnull %106, ptr noundef %97) #20
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !52
  br label %123

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.ImFileType, ptr %106, i64 0, i32 9
  %119 = load i32, ptr %118, align 8, !tbaa !137
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  br label %127

123:                                              ; preds = %115, %104
  %124 = phi ptr [ %116, %115 ], [ %105, %104 ]
  %125 = getelementptr inbounds %struct.ImFileType, ptr %106, i64 1
  %126 = icmp ult ptr %125, %124
  br i1 %126, label %104, label %127, !llvm.loop !138

127:                                              ; preds = %123, %98, %117
  %128 = phi i8 [ %122, %117 ], [ 0, %98 ], [ 0, %123 ]
  call fastcc void @colormanagement_imbuf_make_display_space(ptr noundef %97, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %128) #21
  %129 = getelementptr inbounds %struct.ImBuf, ptr %97, i64 0, i32 9
  %130 = load ptr, ptr %129, align 8, !tbaa !94
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = call fastcc ptr @display_transform_get_colorspace(ptr noundef %3, ptr noundef %4) #21
  %134 = getelementptr inbounds %struct.ImBuf, ptr %97, i64 0, i32 35
  store ptr %133, ptr %134, align 8, !tbaa !112
  br label %135

135:                                              ; preds = %127, %132, %96
  ret ptr %97
}

; Function Attrs: optsize
declare zeroext i8 @BKE_imtype_is_movie(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_imtype_requires_linear_float(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: optsize
declare void @IMB_alpha_under_color_float(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_alpha_under_color_byte(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_imtype_to_ftype(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @display_transform_get_colorspace(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !139 {
  %3 = tail call ptr @IMB_colormanagement_get_display_colorspace_name(ptr noundef %0, ptr noundef %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @colormanage_colorspace_get_named(ptr noundef nonnull %3) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_buffer_make_display_space(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = mul nsw i32 %3, %2
  %10 = mul nsw i32 %9, %4
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !52
  %14 = tail call ptr %13(i64 noundef %12, ptr noundef nonnull @.str.10) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %0, i64 %12, i1 false)
  %15 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %6, ptr noundef %7) #21
  tail call fastcc void @processor_transform_apply_threaded(ptr noundef %14, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %15, i8 noundef zeroext 1) #21
  tail call void @IMB_buffer_byte_from_float(ptr noundef %1, ptr noundef %14, i32 noundef %4, float noundef %5, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 1, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef %2) #20
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %16(ptr noundef %14) #20
  tail call void @IMB_colormanagement_processor_free(ptr noundef %15) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @processor_transform_apply_threaded(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !140 {
  %7 = alloca %struct.ProcessorTransformInit, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  store ptr %4, ptr %7, align 8, !tbaa !141
  %8 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %7, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !143
  %9 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %7, i64 0, i32 2
  store i32 %1, ptr %9, align 8, !tbaa !144
  %10 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %7, i64 0, i32 3
  store i32 %2, ptr %10, align 4, !tbaa !145
  %11 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %7, i64 0, i32 4
  store i32 %3, ptr %11, align 8, !tbaa !146
  %12 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %7, i64 0, i32 5
  store i8 %5, ptr %12, align 4, !tbaa !147
  call void @IMB_processor_apply_threaded(i32 noundef %2, i32 noundef 40, ptr noundef nonnull %7, ptr noundef nonnull @processor_transform_init_handle, ptr noundef nonnull @do_processor_transform_thread) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  ret void
}

; Function Attrs: optsize
declare void @IMB_buffer_byte_from_float(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_display_buffer_acquire(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ColormanageCacheViewSettings, align 8
  %6 = alloca %struct.ColormanageCacheDisplaySettings, align 4
  %7 = alloca %struct.ColorManagedViewSettings, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %7) #19
  store ptr null, ptr %3, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %91, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !97
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %91, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %1, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call fastcc void @init_default_view_settings(ptr noundef %2, ptr noundef nonnull %7) #21
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi ptr [ %7, %17 ], [ %1, %15 ]
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !94
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !98
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = call fastcc zeroext i8 @is_ibuf_rect_in_display_space(ptr noundef nonnull %0, ptr noundef nonnull %19, ptr noundef %2) #21, !range !148
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  br label %91

37:                                               ; preds = %31, %27, %23, %18
  call fastcc void @colormanage_view_settings_to_cache(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %19) #21
  call fastcc void @colormanage_display_settings_to_cache(ptr noundef nonnull %6, ptr noundef %2) #21
  %38 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39
  %39 = load i32, ptr %38, align 4, !tbaa !149
  %40 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !150
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %45 = load i32, ptr %44, align 4, !tbaa !131
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load ptr, ptr %20, align 8, !tbaa !94
  %50 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = load i32, ptr %8, align 8, !tbaa !96
  %53 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !151
  %55 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !152
  call void @IMB_partial_display_buffer_update(ptr noundef nonnull %0, ptr noundef %49, ptr noundef %51, i32 noundef %52, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %19, ptr noundef %2, i32 noundef %39, i32 noundef %54, i32 noundef %41, i32 noundef %56, i8 noundef zeroext 0) #21
  br label %57

57:                                               ; preds = %48, %43
  call void @BLI_rcti_init(ptr noundef nonnull %38, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  br label %58

58:                                               ; preds = %57, %37
  call void @BLI_lock_thread(i32 noundef 8) #20
  %59 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 36
  %60 = load ptr, ptr %59, align 8, !tbaa !68
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %64 = load i32, ptr @global_tot_display, align 4, !tbaa !34
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 2
  %67 = call ptr %63(i64 noundef %66, ptr noundef nonnull @.str.11) #20
  store ptr %67, ptr %59, align 8, !tbaa !68
  br label %79

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %70 = load i32, ptr %69, align 4, !tbaa !131
  %71 = and i32 %70, 16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr @global_tot_display, align 4, !tbaa !34
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %60, i8 0, i64 %76, i1 false)
  %77 = load i32, ptr %69, align 4, !tbaa !131
  %78 = and i32 %77, -17
  store i32 %78, ptr %69, align 4, !tbaa !131
  br label %79

79:                                               ; preds = %68, %73, %62
  %80 = call fastcc ptr @colormanage_cache_get(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3) #21
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  call void @BLI_unlock_thread(i32 noundef 8) #20
  br label %91

83:                                               ; preds = %79
  %84 = load i32, ptr %8, align 8, !tbaa !96
  %85 = shl nsw i32 %84, 2
  %86 = load i32, ptr %12, align 4, !tbaa !97
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %90 = call ptr %89(i64 noundef %88, ptr noundef nonnull @.str.12) #20
  call fastcc void @colormanage_display_buffer_process(ptr noundef nonnull %0, ptr noundef %90, ptr noundef nonnull %19, ptr noundef %2) #21
  call fastcc void @colormanage_cache_put(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %90, ptr noundef nonnull %3) #21
  call void @BLI_unlock_thread(i32 noundef 8) #20
  br label %91

91:                                               ; preds = %4, %11, %83, %82, %34
  %92 = phi ptr [ %36, %34 ], [ %80, %82 ], [ %90, %83 ], [ null, %11 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  ret ptr %92
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_default_view_settings(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !153 {
  %3 = tail call ptr @colormanage_display_get_named(ptr noundef %0) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @colormanage_view_get_default(ptr noundef nonnull %3) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 3
  %10 = getelementptr inbounds %struct.ColorManagedView, ptr %6, i64 0, i32 3
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef nonnull %10, i64 noundef 64) #20
  br label %14

12:                                               ; preds = %2, %5
  %13 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 3
  store i8 0, ptr %13, align 8, !tbaa !89
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 2
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %15, ptr noundef nonnull @.str.15, i64 noundef 64) #20
  store i32 0, ptr %1, align 8, !tbaa !123
  %17 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 4
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %17, align 8, !tbaa !107
  %18 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 6
  store ptr null, ptr %18, align 8, !tbaa !124
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_ibuf_rect_in_display_space(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !154 {
  %4 = load i32, ptr %1, align 8, !tbaa !123
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 4
  %9 = load float, ptr %8, align 8, !tbaa !104
  %10 = fcmp oeq float %9, 0.000000e+00
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 5
  %13 = load float, ptr %12, align 4, !tbaa !106
  %14 = fcmp oeq float %13, 1.000000e+00
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  %18 = tail call ptr @IMB_colormanagement_get_display_colorspace_name(ptr noundef nonnull %1, ptr noundef %2) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ColorSpace, ptr %17, i64 0, i32 3
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %18) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15, %20
  br label %25

25:                                               ; preds = %3, %7, %11, %24, %20
  %26 = phi i8 [ 1, %20 ], [ 0, %24 ], [ 0, %11 ], [ 0, %7 ], [ 0, %3 ]
  ret i8 %26
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @colormanage_view_settings_to_cache(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !155 {
  %4 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %2, i64 0, i32 2
  %5 = tail call i32 @IMB_colormanagement_look_get_named_index(ptr noundef nonnull %4) #21
  %6 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %2, i64 0, i32 3
  %7 = tail call i32 @IMB_colormanagement_view_get_named_index(ptr noundef nonnull %6) #21
  %8 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 1
  store i32 %5, ptr %8, align 4, !tbaa !156
  %9 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 2
  store i32 %7, ptr %9, align 8, !tbaa !158
  %10 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %2, i64 0, i32 4
  %11 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 3
  %12 = load <2 x float>, ptr %10, align 8, !tbaa !107
  store <2 x float> %12, ptr %11, align 4, !tbaa !107
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %14 = load float, ptr %13, align 8, !tbaa !159
  %15 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 5
  store float %14, ptr %15, align 4, !tbaa !160
  %16 = load i32, ptr %2, align 8, !tbaa !123
  store i32 %16, ptr %1, align 8, !tbaa !161
  %17 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %2, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !162
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @colormanage_display_settings_to_cache(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !163 {
  %3 = tail call i32 @IMB_colormanagement_display_get_named_index(ptr noundef %1) #21
  store i32 %3, ptr %0, align 4, !tbaa !164
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_partial_display_buffer_update(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i8 noundef zeroext %12) local_unnamed_addr #0 {
  %14 = alloca %struct.ColormanageCacheViewSettings, align 8
  %15 = alloca %struct.ColormanageCacheDisplaySettings, align 4
  %16 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #19
  store ptr null, ptr %16, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 36
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %13
  call fastcc void @colormanage_view_settings_to_cache(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %6) #21
  call fastcc void @colormanage_display_settings_to_cache(ptr noundef nonnull %15, ptr noundef %7) #21
  %23 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %14, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !158
  %25 = add nsw i32 %24, -1
  %26 = shl nuw i32 1, %25
  %27 = load i32, ptr %15, align 4, !tbaa !164
  tail call void @BLI_lock_thread(i32 noundef 8) #20
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %29 = load i32, ptr %28, align 4, !tbaa !131
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = call fastcc ptr @colormanage_cache_get(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #21
  br label %34

34:                                               ; preds = %32, %22
  %35 = phi ptr [ %33, %32 ], [ null, %22 ]
  %36 = load i32, ptr %17, align 8, !tbaa !96
  %37 = load ptr, ptr %19, align 8, !tbaa !68
  %38 = load i32, ptr @global_tot_display, align 4, !tbaa !34
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %37, i8 0, i64 %40, i1 false)
  %41 = load ptr, ptr %19, align 8, !tbaa !68
  %42 = sext i32 %27 to i64
  %43 = getelementptr i32, ptr %41, i64 %42
  %44 = getelementptr i32, ptr %43, i64 -1
  %45 = load i32, ptr %44, align 4, !tbaa !34
  %46 = or i32 %45, %26
  store i32 %46, ptr %44, align 4, !tbaa !34
  tail call void @BLI_unlock_thread(i32 noundef 8) #20
  br label %47

47:                                               ; preds = %34, %13
  %48 = phi i32 [ %36, %34 ], [ %18, %13 ]
  %49 = phi ptr [ %35, %34 ], [ null, %13 ]
  %50 = icmp eq ptr %49, null
  %51 = icmp ne i8 %12, 0
  %52 = and i1 %51, %50
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !95
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi ptr [ %55, %53 ], [ %49, %47 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = icmp eq ptr %1, null
  %61 = icmp ne ptr %2, null
  %62 = and i1 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = tail call fastcc zeroext i8 @is_ibuf_rect_in_display_space(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %7) #21, !range !148
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call fastcc void @partial_buffer_update_rect(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef null, ptr noundef nonnull %2, i32 noundef %48, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef null, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) #21
  br label %71

67:                                               ; preds = %63, %59
  %68 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %6, ptr noundef %7) #21
  tail call fastcc void @partial_buffer_update_rect(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef %1, ptr noundef %2, i32 noundef %48, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %68, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) #21
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  tail call void @IMB_colormanagement_processor_free(ptr noundef nonnull %68) #21
  br label %71

71:                                               ; preds = %66, %70, %67
  %72 = load ptr, ptr %16, align 8, !tbaa !52
  tail call void @IMB_display_buffer_release(ptr noundef %72) #21
  br label %73

73:                                               ; preds = %71, %56
  %74 = icmp eq i8 %12, 0
  br i1 %74, label %98, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !95
  %78 = icmp ne ptr %77, %57
  %79 = icmp slt i32 %9, %11
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %75
  %82 = shl i32 %48, 2
  %83 = sub nsw i32 %10, %8
  %84 = shl nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = zext i32 %9 to i64
  br label %87

87:                                               ; preds = %81, %87
  %88 = phi i64 [ %86, %81 ], [ %95, %87 ]
  %89 = trunc i64 %88 to i32
  %90 = mul i32 %82, %89
  %91 = load ptr, ptr %76, align 8, !tbaa !95
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, ptr %91, i64 %92
  %94 = getelementptr inbounds i8, ptr %57, i64 %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %93, ptr align 1 %94, i64 %85, i1 false)
  %95 = add i64 %88, 1
  %96 = trunc i64 %95 to i32
  %97 = icmp eq i32 %96, %11
  br i1 %97, label %98, label %87, !llvm.loop !166

98:                                               ; preds = %87, %75, %73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #19
  ret void
}

; Function Attrs: optsize
declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @colormanage_cache_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !167 {
  %5 = alloca %struct.ColormanageCacheKey, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !158
  %8 = add nsw i32 %7, -1
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.CurveMapping, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !168
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %4 ]
  call fastcc void @colormanage_settings_to_key(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef %2) #21
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 36
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = load i32, ptr %2, align 4, !tbaa !164
  %21 = sext i32 %20 to i64
  %22 = getelementptr i32, ptr %19, i64 %21
  %23 = getelementptr i32, ptr %22, i64 -1
  %24 = load i32, ptr %23, align 4, !tbaa !34
  %25 = and i32 %24, %9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %16
  %28 = call fastcc ptr @colormanage_cache_get_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %3) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %71, label %30

30:                                               ; preds = %27
  %31 = call fastcc ptr @colormanage_cachedata_get(ptr noundef nonnull %28) #21
  %32 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !171
  %34 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !156
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %31, i64 0, i32 2
  %39 = load float, ptr %38, align 8, !tbaa !173
  %40 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !174
  %42 = fcmp une float %39, %41
  br i1 %42, label %67, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %31, i64 0, i32 3
  %45 = load float, ptr %44, align 4, !tbaa !175
  %46 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 4
  %47 = load float, ptr %46, align 8, !tbaa !176
  %48 = fcmp une float %45, %47
  br i1 %48, label %67, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %31, i64 0, i32 4
  %51 = load float, ptr %50, align 8, !tbaa !177
  %52 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 5
  %53 = load float, ptr %52, align 4, !tbaa !160
  %54 = fcmp une float %51, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %49
  %56 = load i32, ptr %31, align 8, !tbaa !178
  %57 = load i32, ptr %1, align 8, !tbaa !161
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %31, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !179
  %62 = icmp eq ptr %61, %11
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %31, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !180
  %66 = icmp eq i32 %65, %17
  br i1 %66, label %68, label %67

67:                                               ; preds = %63, %59, %55, %49, %43, %37, %30
  store ptr null, ptr %3, align 8, !tbaa !52
  call void @IMB_freeImBuf(ptr noundef nonnull %28) #20
  br label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ImBuf, ptr %28, i64 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !95
  br label %71

71:                                               ; preds = %27, %67, %68, %16
  %72 = phi ptr [ null, %16 ], [ null, %67 ], [ %70, %68 ], [ null, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret ptr %72
}

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanage_display_buffer_process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !181 {
  tail call fastcc void @colormanage_display_buffer_process_ex(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanage_cache_put(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !182 {
  %6 = alloca %struct.ColormanageCacheKey, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !158
  %9 = tail call fastcc ptr @colormanage_moviecache_ensure(ptr noundef %0) #21
  %10 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.CurveMapping, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !168
  br label %16

16:                                               ; preds = %5, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %5 ]
  %18 = add nsw i32 %8, -1
  %19 = shl nuw i32 1, %18
  call fastcc void @colormanage_settings_to_key(ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef %2) #21
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 36
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = load i32, ptr %2, align 4, !tbaa !164
  %23 = sext i32 %22 to i64
  %24 = getelementptr i32, ptr %21, i64 %23
  %25 = getelementptr i32, ptr %24, i64 -1
  %26 = load i32, ptr %25, align 4, !tbaa !34
  %27 = or i32 %26, %19
  store i32 %27, ptr %25, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !96
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !97
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %33 = load i8, ptr %32, align 8, !tbaa !183
  %34 = tail call ptr @IMB_allocImBuf(i32 noundef %29, i32 noundef %31, i8 noundef zeroext %33, i32 noundef 0) #20
  %35 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 8
  store ptr %3, ptr %35, align 8, !tbaa !95
  %36 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 6
  %37 = load <2 x i32>, ptr %36, align 8, !tbaa !34
  %38 = or <2 x i32> %37, <i32 1, i32 1>
  store <2 x i32> %38, ptr %36, align 8, !tbaa !34
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %40 = tail call ptr %39(i64 noundef 40, ptr noundef nonnull @.str.33) #20
  %41 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 3
  %42 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %40, i64 0, i32 2
  %43 = load <2 x float>, ptr %41, align 4, !tbaa !107
  store <2 x float> %43, ptr %42, align 8, !tbaa !107
  %44 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 5
  %45 = load float, ptr %44, align 4, !tbaa !160
  %46 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %40, i64 0, i32 4
  store float %45, ptr %46, align 8, !tbaa !177
  %47 = load <2 x i32>, ptr %1, align 8, !tbaa !34
  store <2 x i32> %47, ptr %40, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %40, i64 0, i32 5
  store ptr %11, ptr %48, align 8, !tbaa !179
  %49 = getelementptr inbounds %struct.ColormnaageCacheData, ptr %40, i64 0, i32 6
  store i32 %17, ptr %49, align 8, !tbaa !180
  tail call fastcc void @colormanage_cachedata_set(ptr noundef %34, ptr noundef nonnull %40) #21
  store ptr %34, ptr %4, align 8, !tbaa !52
  call void @IMB_moviecache_put(ptr noundef %9, ptr noundef nonnull %6, ptr noundef %34) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_display_buffer_acquire_ctx(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @IMB_colormanagement_display_settings_from_ctx(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %6 = load ptr, ptr %4, align 8, !tbaa !52
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  %8 = tail call ptr @IMB_display_buffer_acquire(ptr noundef %1, ptr noundef %6, ptr noundef %7, ptr noundef %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_display_buffer_transform_apply(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %5, ptr noundef %6) #21
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %11 = mul i32 %3, %2
  %12 = mul i32 %11, %4
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.13) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %1, i64 %14, i1 false)
  tail call void @IMB_colormanagement_processor_apply(ptr noundef %9, ptr noundef %15, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %7) #21
  tail call void @IMB_colormanagement_processor_free(ptr noundef %9) #21
  tail call void @IMB_buffer_byte_from_float(ptr noundef %0, ptr noundef %15, i32 noundef %4, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef %2) #20
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %16(ptr noundef %15) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_processor_apply(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = icmp ne ptr %8, null
  %10 = icmp sgt i32 %3, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %6
  %13 = icmp sgt i32 %2, 0
  %14 = sext i32 %4 to i64
  %15 = sext i32 %2 to i64
  %16 = zext nneg i32 %3 to i64
  %17 = zext nneg i32 %2 to i64
  br label %18

18:                                               ; preds = %12, %30
  %19 = phi i64 [ 0, %12 ], [ %31, %30 ]
  br i1 %13, label %20, label %30

20:                                               ; preds = %18
  %21 = mul nsw i64 %19, %15
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %28, %22 ]
  %24 = add nuw nsw i64 %23, %21
  %25 = mul nsw i64 %24, %14
  %26 = getelementptr inbounds float, ptr %1, i64 %25
  %27 = load ptr, ptr %7, align 8, !tbaa !117
  tail call fastcc void @curve_mapping_apply_pixel(ptr noundef %27, ptr noundef %26, i32 noundef %4) #21
  %28 = add nuw nsw i64 %23, 1
  %29 = icmp eq i64 %28, %17
  br i1 %29, label %30, label %22, !llvm.loop !184

30:                                               ; preds = %22, %18
  %31 = add nuw nsw i64 %19, 1
  %32 = icmp eq i64 %31, %16
  br i1 %32, label %33, label %18, !llvm.loop !185

33:                                               ; preds = %30, %6
  %34 = load ptr, ptr %0, align 8, !tbaa !116
  %35 = icmp ne ptr %34, null
  %36 = icmp sgt i32 %4, 2
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = sext i32 %2 to i64
  %40 = sext i32 %3 to i64
  %41 = zext nneg i32 %4 to i64
  %42 = shl nuw nsw i64 %41, 2
  %43 = mul i64 %42, %39
  %44 = tail call ptr @OCIO_createOCIO_PackedImageDesc(ptr noundef %1, i64 noundef %39, i64 noundef %40, i64 noundef %41, i64 noundef 4, i64 noundef %42, i64 noundef %43) #20
  %45 = icmp eq i8 %5, 0
  %46 = load ptr, ptr %0, align 8, !tbaa !116
  br i1 %45, label %48, label %47

47:                                               ; preds = %38
  tail call void @OCIO_processorApply_predivide(ptr noundef %46, ptr noundef %44) #20
  br label %49

48:                                               ; preds = %38
  tail call void @OCIO_processorApply(ptr noundef %46, ptr noundef %44) #20
  br label %49

49:                                               ; preds = %48, %47
  tail call void @OCIO_PackedImageDescRelease(ptr noundef %44) #20
  br label %50

50:                                               ; preds = %49, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_display_buffer_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @BLI_lock_thread(i32 noundef 8) #20
  tail call fastcc void @colormanage_cache_handle_release(ptr noundef nonnull %0) #21
  tail call void @BLI_unlock_thread(i32 noundef 8) #20
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanage_cache_handle_release(ptr noundef %0) unnamed_addr #0 !PGOFuncName !186 {
  tail call void @IMB_freeImBuf(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_display_get_default_name() local_unnamed_addr #0 {
  %1 = tail call ptr @OCIO_getCurrentConfig() #20
  %2 = tail call ptr @OCIO_configGetDefaultDisplay(ptr noundef %1) #20
  tail call void @OCIO_configRelease(ptr noundef %1) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @OCIO_configGetDefaultDisplay(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_display_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @global_displays, i64 0, i32 1), align 8, !tbaa !187
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !188
  %7 = add nsw i32 %6, 1
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ %7, %4 ], [ 1, %1 ]
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %11 = tail call ptr %10(i64 noundef 120, ptr noundef nonnull @.str.14) #20
  %12 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %11, i64 0, i32 2
  store i32 %9, ptr %12, align 8, !tbaa !188
  %13 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %11, i64 0, i32 3
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef %0, i64 noundef 64) #20
  tail call void @BLI_addtail(ptr noundef nonnull @global_displays, ptr noundef %11) #20
  ret ptr %11
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_display_get_indexed(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_displays, i32 noundef %2) #20
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_colormanagement_display_get_named_index(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call ptr @colormanage_display_get_named(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !188
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_colormanagement_display_get_indexed_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @colormanage_display_get_indexed(i32 noundef %0) #21
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %2, i64 0, i32 3
  %5 = select i1 %3, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @IMB_colormanagement_display_get_default_name() local_unnamed_addr #0 {
  %1 = tail call ptr @colormanage_display_get_default() #21
  %2 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %1, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @IMB_colormanagement_display_get_named(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call ptr @colormanage_display_get_named(ptr noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_colormanagement_display_get_none_name() local_unnamed_addr #0 {
  %1 = tail call ptr @colormanage_display_get_named(ptr noundef nonnull @.str.15) #21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @colormanage_display_get_default_name() #21
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %4, %3 ], [ @.str.15, %0 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_view_get_default_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @OCIO_getCurrentConfig() #20
  %3 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %0, i64 0, i32 3
  %4 = tail call ptr @OCIO_configGetDefaultView(ptr noundef %2, ptr noundef nonnull %3) #20
  tail call void @OCIO_configRelease(ptr noundef %2) #20
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @OCIO_configGetDefaultView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @colormanage_view_get_named(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_views, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorManagedView, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !189

10:                                               ; preds = %2, %6
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_view_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @global_tot_view, align 4, !tbaa !34
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %4 = tail call ptr %3(i64 noundef 88, ptr noundef nonnull @.str.16) #20
  %5 = add nsw i32 %2, 1
  %6 = getelementptr inbounds %struct.ColorManagedView, ptr %4, i64 0, i32 2
  store i32 %5, ptr %6, align 8, !tbaa !190
  %7 = getelementptr inbounds %struct.ColorManagedView, ptr %4, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %0, i64 noundef 64) #20
  tail call void @BLI_addtail(ptr noundef nonnull @global_views, ptr noundef %4) #20
  %9 = load i32, ptr @global_tot_view, align 4, !tbaa !34
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @global_tot_view, align 4, !tbaa !34
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_view_get_indexed(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_views, i32 noundef %2) #20
  ret ptr %3
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_colormanagement_view_get_named_index(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call ptr @colormanage_view_get_named(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ColorManagedView, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !190
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_colormanagement_view_get_indexed_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @colormanage_view_get_indexed(i32 noundef %0) #21
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds %struct.ColorManagedView, ptr %2, i64 0, i32 3
  %5 = select i1 %3, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_colormanagement_view_get_default_name(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @colormanage_display_get_named(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @colormanage_view_get_default(ptr noundef nonnull %2) #21
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.ColorManagedView, ptr %7, i64 0, i32 3
  %10 = select i1 %8, ptr null, ptr %9
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_colorspace_add(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %6 = tail call ptr %5(i64 noundef 624, ptr noundef nonnull @.str.17) #20
  %7 = getelementptr inbounds %struct.ColorSpace, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %0, i64 noundef 64) #20
  %9 = icmp eq ptr %1, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ColorSpace, ptr %6, i64 0, i32 4
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef nonnull %1, i64 noundef 512) #20
  tail call fastcc void @colormanage_description_strip(ptr noundef nonnull %11) #21
  br label %13

13:                                               ; preds = %10, %4
  %14 = getelementptr inbounds %struct.ColorSpace, ptr %6, i64 0, i32 7
  store i8 %2, ptr %14, align 8, !tbaa !192
  %15 = getelementptr inbounds %struct.ColorSpace, ptr %6, i64 0, i32 8
  store i8 %3, ptr %15, align 1, !tbaa !92
  %16 = load ptr, ptr @global_colorspaces, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %13, %24
  %19 = phi ptr [ %27, %24 ], [ %16, %13 ]
  %20 = phi i32 [ %25, %24 ], [ 1, %13 ]
  %21 = getelementptr inbounds %struct.ColorSpace, ptr %19, i64 0, i32 3
  %22 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %21, ptr noundef nonnull %7) #20
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = add nuw nsw i32 %20, 1
  %26 = getelementptr inbounds %struct.ColorSpace, ptr %19, i64 0, i32 2
  store i32 %20, ptr %26, align 8, !tbaa !193
  %27 = load ptr, ptr %19, align 8, !tbaa !52
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18, !llvm.loop !194

29:                                               ; preds = %24, %13
  %30 = phi i32 [ 1, %13 ], [ %25, %24 ]
  tail call void @BLI_addtail(ptr noundef nonnull @global_colorspaces, ptr noundef %6) #20
  %31 = getelementptr inbounds %struct.ColorSpace, ptr %6, i64 0, i32 2
  store i32 %30, ptr %31, align 8, !tbaa !193
  br label %41

32:                                               ; preds = %18
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull @global_colorspaces, ptr noundef nonnull %19, ptr noundef %6) #20
  %33 = getelementptr inbounds %struct.ColorSpace, ptr %6, i64 0, i32 2
  store i32 %20, ptr %33, align 8, !tbaa !193
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i32 [ %37, %34 ], [ %20, %32 ]
  %36 = phi ptr [ %39, %34 ], [ %19, %32 ]
  %37 = add nuw nsw i32 %35, 1
  %38 = getelementptr inbounds %struct.ColorSpace, ptr %36, i64 0, i32 2
  store i32 %37, ptr %38, align 8, !tbaa !193
  %39 = load ptr, ptr %36, align 8, !tbaa !48
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %34, !llvm.loop !195

41:                                               ; preds = %34, %29
  %42 = load i32, ptr @global_tot_colorspace, align 4, !tbaa !34
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @global_tot_colorspace, align 4, !tbaa !34
  ret ptr %6
}

; Function Attrs: nofree noinline nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @colormanage_description_strip(ptr nocapture noundef %0) unnamed_addr #13 !PGOFuncName !196 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  br label %7

7:                                                ; preds = %5, %12
  %8 = phi i64 [ %6, %5 ], [ %9, %12 ]
  %9 = add nsw i64 %8, -1
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !89
  switch i8 %11, label %14 [
    i8 13, label %12
    i8 10, label %12
  ]

12:                                               ; preds = %7, %7
  store i8 0, ptr %10, align 1, !tbaa !89
  %13 = icmp ugt i64 %8, 1
  br i1 %13, label %7, label %14, !llvm.loop !197

14:                                               ; preds = %12, %7, %1
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %16 = trunc i64 %15 to i32
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = and i64 %15, 4294967295
  br label %20

20:                                               ; preds = %18, %25
  %21 = phi i64 [ 0, %18 ], [ %26, %25 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !89
  switch i8 %23, label %25 [
    i8 13, label %24
    i8 10, label %24
  ]

24:                                               ; preds = %20, %20
  store i8 32, ptr %22, align 1, !tbaa !89
  br label %25

25:                                               ; preds = %20, %24
  %26 = add nuw nsw i64 %21, 1
  %27 = icmp eq i64 %26, %19
  br i1 %27, label %28, label %20, !llvm.loop !198

28:                                               ; preds = %25, %14
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @colormanage_colorspace_get_roled(i32 noundef %0) local_unnamed_addr #5 {
  %2 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef %0) #21
  %3 = tail call ptr @colormanage_colorspace_get_named(ptr noundef %2) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_colorspace_get_indexed(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_colorspaces, i32 noundef %2) #20
  ret ptr %3
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_colormanagement_colorspace_get_named_index(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call ptr @colormanage_colorspace_get_named(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ColorSpace, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !193
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @IMB_colormanagement_colorspace_get_indexed_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @colormanage_colorspace_get_indexed(i32 noundef %0) #21
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds %struct.ColorSpace, ptr %2, i64 0, i32 3
  %5 = select i1 %3, ptr @.str.18, ptr %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagment_colorspace_from_ibuf_ftype(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !52
  %4 = icmp ugt ptr %3, @IMB_FILE_TYPES
  br i1 %4, label %5, label %24

5:                                                ; preds = %2, %20
  %6 = phi ptr [ %21, %20 ], [ @IMB_FILE_TYPES, %2 ]
  %7 = getelementptr inbounds %struct.ImFileType, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ImFileType, ptr %6, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  %13 = tail call i32 %12(ptr noundef nonnull %6, ptr noundef %1) #20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ImFileType, ptr %6, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !199
  %18 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef %17) #21
  %19 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %18, i64 noundef 64) #20
  br label %20

20:                                               ; preds = %5, %10, %15
  %21 = getelementptr inbounds %struct.ImFileType, ptr %6, i64 1
  %22 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !52
  %23 = icmp ult ptr %21, %22
  br i1 %23, label %5, label %24, !llvm.loop !200

24:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_look_add(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @global_tot_looks, align 4, !tbaa !34
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %6 = tail call ptr %5(i64 noundef 152, ptr noundef nonnull @.str.19) #20
  %7 = add nsw i32 %4, 1
  %8 = getelementptr inbounds %struct.ColorManagedLook, ptr %6, i64 0, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !201
  %9 = getelementptr inbounds %struct.ColorManagedLook, ptr %6, i64 0, i32 3
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef %0, i64 noundef 64) #20
  %11 = getelementptr inbounds %struct.ColorManagedLook, ptr %6, i64 0, i32 4
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef %1, i64 noundef 64) #20
  %13 = getelementptr inbounds %struct.ColorManagedLook, ptr %6, i64 0, i32 5
  store i8 %2, ptr %13, align 4, !tbaa !203
  tail call void @BLI_addtail(ptr noundef nonnull @global_looks, ptr noundef %6) #20
  %14 = load i32, ptr @global_tot_looks, align 4, !tbaa !34
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @global_tot_looks, align 4, !tbaa !34
  ret ptr %6
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @colormanage_look_get_named(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_looks, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColorManagedLook, ptr %4, i64 0, i32 3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !204

10:                                               ; preds = %2, %6
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colormanage_look_get_indexed(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @global_looks, i32 noundef %2) #20
  ret ptr %3
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IMB_colormanagement_look_get_named_index(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call ptr @colormanage_look_get_named(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ColorManagedLook, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !201
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_colormanagement_look_get_indexed_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @colormanage_look_get_indexed(i32 noundef %0) #21
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds %struct.ColorManagedLook, ptr %2, i64 0, i32 3
  %5 = select i1 %3, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_display_items_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.EnumPropertyItem, align 8
  %4 = load ptr, ptr @global_displays, align 8, !tbaa !52
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  %13 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !188
  store i32 %14, ptr %3, align 8, !tbaa !205
  %15 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %12, i64 0, i32 3
  store ptr %15, ptr %7, align 8, !tbaa !207
  store ptr %15, ptr %8, align 8, !tbaa !208
  store i32 0, ptr %9, align 8, !tbaa !209
  store ptr @.str.18, ptr %10, align 8, !tbaa !210
  call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  %16 = load ptr, ptr %12, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !211

18:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_view_items_add(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @colormanage_display_get_named(ptr noundef %2) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ColorManagedDisplay, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.LinkData, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  tail call fastcc void @colormanagement_view_item_add(ptr noundef %0, ptr noundef %1, ptr noundef %13) #21
  %14 = load ptr, ptr %11, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !212

16:                                               ; preds = %10, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanagement_view_item_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !213 {
  %4 = alloca %struct.EnumPropertyItem, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.ColorManagedView, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !190
  store i32 %6, ptr %4, align 8, !tbaa !205
  %7 = getelementptr inbounds %struct.ColorManagedView, ptr %2, i64 0, i32 3
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !207
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 1
  store ptr %7, ptr %9, align 8, !tbaa !208
  %10 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !209
  %11 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 4
  store ptr @.str.18, ptr %11, align 8, !tbaa !210
  call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_look_items_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.EnumPropertyItem, align 8
  %4 = load ptr, ptr @global_looks, align 8, !tbaa !52
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  %13 = getelementptr inbounds %struct.ColorManagedLook, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !201
  store i32 %14, ptr %3, align 8, !tbaa !205
  %15 = getelementptr inbounds %struct.ColorManagedLook, ptr %12, i64 0, i32 3
  store ptr %15, ptr %7, align 8, !tbaa !207
  store ptr %15, ptr %8, align 8, !tbaa !208
  store i32 0, ptr %9, align 8, !tbaa !209
  store ptr @.str.18, ptr %10, align 8, !tbaa !210
  call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  %16 = load ptr, ptr %12, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !214

18:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_colorspace_items_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.EnumPropertyItem, align 8
  %4 = load ptr, ptr @global_colorspaces, align 8, !tbaa !52
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  %13 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 7
  %14 = load i8, ptr %13, align 8, !tbaa !192
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !193
  store i32 %18, ptr %3, align 8, !tbaa !205
  %19 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 3
  store ptr %19, ptr %7, align 8, !tbaa !207
  store ptr %19, ptr %8, align 8, !tbaa !208
  store i32 0, ptr %9, align 8, !tbaa !209
  %20 = getelementptr inbounds %struct.ColorSpace, ptr %12, i64 0, i32 4
  store ptr %20, ptr %10, align 8, !tbaa !210
  call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #20
  br label %21

21:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  %22 = load ptr, ptr %12, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11, !llvm.loop !215

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partial_buffer_update_rect(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef readonly %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) unnamed_addr #0 !PGOFuncName !216 {
  %14 = alloca [4 x float], align 16
  %15 = alloca [4 x float], align 16
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !98
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %19 = load float, ptr %18, align 8, !tbaa !159
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = sub nsw i32 %11, %9
  %23 = sub nsw i32 %12, %10
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 38
  %25 = load i32, ptr %24, align 8, !tbaa !93
  %26 = fcmp une float %19, 0.000000e+00
  %27 = icmp eq ptr %8, null
  br i1 %26, label %28, label %37

28:                                               ; preds = %13
  %29 = select i1 %27, i32 4, i32 %17
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %31 = mul i32 %23, %22
  %32 = mul i32 %31, %29
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr %30(i64 noundef %34, ptr noundef nonnull @.str.36) #20
  %36 = icmp eq ptr %8, null
  br i1 %36, label %143, label %38

37:                                               ; preds = %13
  br i1 %27, label %145, label %38

38:                                               ; preds = %37, %28
  %39 = phi i32 [ %17, %37 ], [ %29, %28 ]
  %40 = phi ptr [ null, %37 ], [ %35, %28 ]
  %41 = icmp slt i32 %10, %12
  br i1 %41, label %42, label %170

42:                                               ; preds = %38
  %43 = icmp slt i32 %9, %11
  %44 = icmp eq ptr %2, null
  %45 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 3
  %46 = icmp eq ptr %3, null
  %47 = and i32 %25, 1
  %48 = icmp eq i32 %47, 0
  %49 = icmp eq ptr %40, null
  %50 = zext i32 %9 to i64
  %51 = zext i32 %10 to i64
  %52 = zext i32 %4 to i64
  br label %53

53:                                               ; preds = %42, %139
  %54 = phi i64 [ %51, %42 ], [ %140, %139 ]
  br i1 %43, label %55, label %139

55:                                               ; preds = %53
  %56 = mul i64 %54, %52
  %57 = trunc i64 %54 to i32
  %58 = sub i32 %57, %7
  %59 = mul i32 %58, %5
  %60 = sub i32 %59, %6
  %61 = trunc i64 %54 to i32
  %62 = sub i32 %61, %10
  %63 = mul nsw i32 %62, %22
  %64 = sub i32 %63, %9
  br label %65

65:                                               ; preds = %55, %135
  %66 = phi i64 [ %50, %55 ], [ %136, %135 ]
  %67 = add i64 %66, %56
  %68 = trunc i64 %67 to i32
  %69 = shl nsw i32 %68, 2
  %70 = trunc i64 %66 to i32
  %71 = add i32 %60, %70
  %72 = mul nsw i32 %71, %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #19
  br i1 %44, label %84, label %73

73:                                               ; preds = %65
  switch i32 %39, label %88 [
    i32 4, label %74
    i32 3, label %77
    i32 1, label %80
  ]

74:                                               ; preds = %73
  %75 = sext i32 %72 to i64
  %76 = getelementptr inbounds float, ptr %2, i64 %75
  call fastcc void @copy_v4_v4(ptr noundef nonnull %14, ptr noundef nonnull %76) #21
  br label %88

77:                                               ; preds = %73
  %78 = sext i32 %72 to i64
  %79 = getelementptr inbounds float, ptr %2, i64 %78
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %79) #21
  store float 1.000000e+00, ptr %45, align 4, !tbaa !107
  br label %88

80:                                               ; preds = %73
  %81 = sext i32 %72 to i64
  %82 = getelementptr inbounds float, ptr %2, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !107
  store float %83, ptr %14, align 16, !tbaa !107
  br label %88

84:                                               ; preds = %65
  br i1 %46, label %88, label %85

85:                                               ; preds = %84
  %86 = sext i32 %72 to i64
  %87 = getelementptr inbounds i8, ptr %3, i64 %86
  call void @rgba_uchar_to_float(ptr noundef nonnull %14, ptr noundef nonnull %87) #20
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %14, ptr noundef %21) #21
  call fastcc void @straight_to_premul_v4(ptr noundef nonnull %14) #21
  br label %88

88:                                               ; preds = %73, %84, %85, %74, %80, %77
  br i1 %48, label %89, label %90

89:                                               ; preds = %88
  call void @IMB_colormanagement_processor_apply_pixel(ptr noundef nonnull %8, ptr noundef nonnull %14, i32 noundef %39) #21
  br label %90

90:                                               ; preds = %89, %88
  br i1 %49, label %104, label %91

91:                                               ; preds = %90
  %92 = add i32 %64, %70
  %93 = mul nsw i32 %92, %39
  switch i32 %39, label %100 [
    i32 4, label %94
    i32 3, label %97
  ]

94:                                               ; preds = %91
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds float, ptr %40, i64 %95
  call fastcc void @copy_v4_v4(ptr noundef nonnull %96, ptr noundef nonnull %14) #21
  br label %135

97:                                               ; preds = %91
  %98 = sext i32 %93 to i64
  %99 = getelementptr inbounds float, ptr %40, i64 %98
  call fastcc void @copy_v3_v3(ptr noundef nonnull %99, ptr noundef nonnull %14) #21
  br label %135

100:                                              ; preds = %91
  %101 = load float, ptr %14, align 16, !tbaa !107
  %102 = sext i32 %93 to i64
  %103 = getelementptr inbounds float, ptr %40, i64 %102
  store float %101, ptr %103, align 4, !tbaa !107
  br label %135

104:                                              ; preds = %90
  switch i32 %39, label %114 [
    i32 4, label %105
    i32 3, label %108
  ]

105:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #19
  call fastcc void @premul_to_straight_v4_v4(ptr noundef nonnull %15, ptr noundef nonnull %14) #21
  %106 = sext i32 %69 to i64
  %107 = getelementptr inbounds i8, ptr %1, i64 %106
  call void @rgba_float_to_uchar(ptr noundef %107, ptr noundef nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #19
  br label %135

108:                                              ; preds = %104
  %109 = sext i32 %69 to i64
  %110 = getelementptr inbounds i8, ptr %1, i64 %109
  call void @rgb_float_to_uchar(ptr noundef %110, ptr noundef nonnull %14) #20
  %111 = or disjoint i32 %69, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %1, i64 %112
  store i8 -1, ptr %113, align 1, !tbaa !89
  br label %135

114:                                              ; preds = %104
  %115 = load float, ptr %14, align 16
  %116 = fcmp ugt float %115, 0.000000e+00
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = fcmp ogt float %115, 0x3FEFEFEFE0000000
  %119 = call float @llvm.fmuladd.f32(float %115, float 2.550000e+02, float 5.000000e-01)
  %120 = select i1 %118, float 2.550000e+02, float %119
  br label %121

121:                                              ; preds = %114, %117
  %122 = phi float [ %120, %117 ], [ 0.000000e+00, %114 ]
  %123 = fptoui float %122 to i8
  %124 = or disjoint i32 %69, 3
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %1, i64 %125
  store i8 %123, ptr %126, align 1, !tbaa !89
  %127 = or disjoint i32 %69, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %1, i64 %128
  store i8 %123, ptr %129, align 1, !tbaa !89
  %130 = or disjoint i32 %69, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %1, i64 %131
  store i8 %123, ptr %132, align 1, !tbaa !89
  %133 = sext i32 %69 to i64
  %134 = getelementptr inbounds i8, ptr %1, i64 %133
  store i8 %123, ptr %134, align 1, !tbaa !89
  br label %135

135:                                              ; preds = %94, %100, %97, %105, %121, %108
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #19
  %136 = add i64 %66, 1
  %137 = trunc i64 %136 to i32
  %138 = icmp eq i32 %137, %11
  br i1 %138, label %139, label %65, !llvm.loop !217

139:                                              ; preds = %135, %53
  %140 = add i64 %54, 1
  %141 = trunc i64 %140 to i32
  %142 = icmp eq i32 %141, %12
  br i1 %142, label %170, label %53, !llvm.loop !218

143:                                              ; preds = %28
  %144 = icmp eq ptr %35, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %37, %143
  %146 = phi i32 [ %29, %143 ], [ %17, %37 ]
  %147 = icmp slt i32 %10, %12
  br i1 %147, label %148, label %183

148:                                              ; preds = %145
  %149 = sext i32 %22 to i64
  %150 = shl nsw i64 %149, 2
  %151 = sext i32 %10 to i64
  %152 = sext i32 %12 to i64
  br label %154

153:                                              ; preds = %143
  tail call void @IMB_buffer_float_from_byte(ptr noundef nonnull %35, ptr noundef %3, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 1, i32 noundef %22, i32 noundef %23, i32 noundef %22, i32 noundef %4) #20
  br label %174

154:                                              ; preds = %148, %154
  %155 = phi i64 [ %151, %148 ], [ %168, %154 ]
  %156 = trunc i64 %155 to i32
  %157 = mul i32 %156, %5
  %158 = add i32 %157, %9
  %159 = shl nsw i32 %158, 2
  %160 = trunc i64 %155 to i32
  %161 = mul i32 %160, %4
  %162 = add i32 %161, %9
  %163 = shl nsw i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, ptr %1, i64 %164
  %166 = sext i32 %159 to i64
  %167 = getelementptr inbounds i8, ptr %3, i64 %166
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %165, ptr align 1 %167, i64 %150, i1 false)
  %168 = add nsw i64 %155, 1
  %169 = icmp eq i64 %168, %152
  br i1 %169, label %170, label %154, !llvm.loop !219

170:                                              ; preds = %139, %154, %38
  %171 = phi i32 [ %39, %38 ], [ %146, %154 ], [ %39, %139 ]
  %172 = phi ptr [ %40, %38 ], [ null, %154 ], [ %40, %139 ]
  %173 = icmp eq ptr %172, null
  br i1 %173, label %183, label %174

174:                                              ; preds = %153, %170
  %175 = phi i32 [ %29, %153 ], [ %171, %170 ]
  %176 = phi ptr [ %35, %153 ], [ %172, %170 ]
  %177 = mul nsw i32 %10, %4
  %178 = add nsw i32 %177, %9
  %179 = mul nsw i32 %175, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, ptr %1, i64 %180
  call void @IMB_buffer_byte_from_float(ptr noundef %181, ptr noundef nonnull %176, i32 noundef %175, float noundef %19, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 1, i32 noundef %22, i32 noundef %23, i32 noundef %4, i32 noundef %22) #20
  %182 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %182(ptr noundef nonnull %176) #20
  br label %183

183:                                              ; preds = %145, %174, %170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_partial_display_buffer_update_delayed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rcti, align 4
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39
  %8 = load i32, ptr %7, align 4, !tbaa !149
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 39, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !150
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @BLI_rcti_init(ptr noundef nonnull %7, i32 noundef %1, i32 noundef %3, i32 noundef %2, i32 noundef %4) #20
  br label %14

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @BLI_rcti_init(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %3, i32 noundef %2, i32 noundef %4) #20
  call void @BLI_rcti_union(ptr noundef nonnull %7, ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: optsize
declare void @BLI_rcti_union(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_display_buffer_processor(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !220 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [16 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = tail call ptr @OCIO_getCurrentConfig() #20
  %12 = tail call ptr @colormanage_look_get_named(ptr noundef %0) #21
  %13 = tail call ptr @OCIO_createDisplayTransform() #20
  tail call void @OCIO_displayTransformSetInputColorSpaceName(ptr noundef %13, ptr noundef %5) #20
  tail call void @OCIO_displayTransformSetView(ptr noundef %13, ptr noundef %1) #20
  tail call void @OCIO_displayTransformSetDisplay(ptr noundef %13, ptr noundef %2) #20
  %14 = getelementptr inbounds %struct.ColorManagedLook, ptr %12, i64 0, i32 5
  %15 = load i8, ptr %14, align 4, !tbaa !203
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call void @OCIO_displayTransformSetLooksOverrideEnabled(ptr noundef %13, i8 noundef zeroext 1) #20
  tail call void @OCIO_displayTransformSetLooksOverride(ptr noundef %13, ptr noundef %0) #20
  br label %18

18:                                               ; preds = %17, %6
  %19 = fcmp une float %3, 0.000000e+00
  br i1 %19, label %20, label %26

20:                                               ; preds = %18
  %21 = tail call float @exp2f(float %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  store float %21, ptr %7, align 16, !tbaa !107
  %22 = getelementptr inbounds float, ptr %7, i64 1
  store float %21, ptr %22, align 4, !tbaa !107
  %23 = getelementptr inbounds float, ptr %7, i64 2
  store float %21, ptr %23, align 8, !tbaa !107
  %24 = getelementptr inbounds float, ptr %7, i64 3
  store float 1.000000e+00, ptr %24, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19
  call void @OCIO_matrixTransformScale(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #20
  %25 = call ptr @OCIO_createMatrixTransform() #20
  call void @OCIO_matrixTransformSetValue(ptr noundef %25, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  call void @OCIO_displayTransformSetLinearCC(ptr noundef %13, ptr noundef %25) #20
  call void @OCIO_matrixTransformRelease(ptr noundef %25) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  br label %26

26:                                               ; preds = %20, %18
  %27 = fcmp une float %4, 1.000000e+00
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = fcmp olt float %4, 0x3E80000000000000
  %30 = select i1 %29, float 0x3E80000000000000, float %4
  %31 = fdiv float 1.000000e+00, %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19
  %32 = insertelement <4 x float> poison, float %31, i64 0
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %33, ptr %10, align 16, !tbaa !107
  %34 = call ptr @OCIO_createExponentTransform() #20
  call void @OCIO_exponentTransformSetValue(ptr noundef %34, ptr noundef nonnull %10) #20
  call void @OCIO_displayTransformSetDisplayCC(ptr noundef %13, ptr noundef %34) #20
  call void @OCIO_exponentTransformRelease(ptr noundef %34) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19
  br label %35

35:                                               ; preds = %28, %26
  %36 = call ptr @OCIO_configGetProcessor(ptr noundef %11, ptr noundef %13) #20
  call void @OCIO_displayTransformRelease(ptr noundef %13) #20
  call void @OCIO_configRelease(ptr noundef %11) #20
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemapping_premultiply(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_colorspace_transform_processor(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !221 {
  %3 = tail call ptr @OCIO_getCurrentConfig() #20
  %4 = tail call ptr @OCIO_configGetProcessorWithNames(ptr noundef %3, ptr noundef %0, ptr noundef %1) #20
  tail call void @OCIO_configRelease(ptr noundef %3) #20
  ret ptr %4
}

; Function Attrs: optsize
declare void @curvemapping_evaluate_premulRGBF(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_processor_apply_v4_predivide(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %1) #20
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !116
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @OCIO_processorApplyRGBA_predivide(ptr noundef nonnull %8, ptr noundef %1) #20
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_processor_apply_pixel(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %2, label %11 [
    i32 4, label %4
    i32 3, label %5
    i32 1, label %6
  ]

4:                                                ; preds = %3
  tail call void @IMB_colormanagement_processor_apply_v4_predivide(ptr noundef %0, ptr noundef %1) #21
  br label %11

5:                                                ; preds = %3
  tail call void @IMB_colormanagement_processor_apply_v3(ptr noundef %0, ptr noundef %1) #21
  br label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ColormanageProcessor, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call fastcc void @curve_mapping_apply_pixel(ptr noundef nonnull %8, ptr noundef %1, i32 noundef 1) #21
  br label %11

11:                                               ; preds = %3, %5, %6, %10, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_mapping_apply_pixel(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !222 {
  switch i32 %2, label %15 [
    i32 1, label %4
    i32 2, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %6 = load float, ptr %1, align 4, !tbaa !107
  %7 = tail call float @curvemap_evaluateF(ptr noundef nonnull %5, float noundef %6) #20
  store float %7, ptr %1, align 4, !tbaa !107
  br label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  %10 = load float, ptr %1, align 4, !tbaa !107
  %11 = tail call float @curvemap_evaluateF(ptr noundef nonnull %9, float noundef %10) #20
  store float %11, ptr %1, align 4, !tbaa !107
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !107
  %14 = tail call float @curvemap_evaluateF(ptr noundef nonnull %9, float noundef %13) #20
  store float %14, ptr %12, align 4, !tbaa !107
  br label %16

15:                                               ; preds = %3
  tail call void @curvemapping_evaluate_premulRGBF(ptr noundef %0, ptr noundef %1, ptr noundef %1) #20
  br label %16

16:                                               ; preds = %8, %15, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @IMB_colormanagement_support_glsl_draw(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call i32 @OCIO_supportGLSLDraw() #20
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: optsize
declare i32 @OCIO_supportGLSLDraw() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ColorManagedViewSettings, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %6) #19
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call fastcc void @init_default_view_settings(ptr noundef %1, ptr noundef nonnull %6) #21
  br label %9

9:                                                ; preds = %5, %8
  %10 = phi ptr [ %6, %8 ], [ %0, %5 ]
  %11 = icmp eq ptr %2, null
  %12 = getelementptr inbounds %struct.ColorSpace, ptr %2, i64 0, i32 3
  %13 = select i1 %11, ptr @global_role_scene_linear, ptr %12
  call fastcc void @update_glsl_display_processor(ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %13) #21
  %14 = load ptr, ptr @global_glsl_state, align 8, !tbaa !59
  %15 = load i8, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 9), align 8, !tbaa !223
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr null, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11)
  %18 = call i32 @OCIO_setupGLSLDraw(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 12), ptr noundef %14, ptr noundef %17, float noundef %3, i8 noundef zeroext %4) #20
  %19 = trunc i32 %18 to i8
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %6) #19
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_glsl_display_processor(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !224 {
  %4 = load i32, ptr %0, align 8, !tbaa !123
  %5 = load ptr, ptr @global_glsl_state, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @check_glsl_display_processor_changed(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #21, !range !148
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7, %3
  %11 = and i32 %4, 1
  br label %30

12:                                               ; preds = %7
  %13 = and i32 %4, 1
  %14 = load i8, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 9), align 8, !tbaa !223
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  %17 = icmp eq i32 %13, 0
  %18 = select i1 %17, i1 true, i1 %16
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = getelementptr inbounds %struct.CurveMapping, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !168
  %24 = load i32, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 10), align 4, !tbaa !225
  %25 = icmp eq i32 %23, %24
  %26 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 8), align 8
  %27 = icmp ne ptr %21, %26
  br i1 %25, label %28, label %30

28:                                               ; preds = %19, %12
  %29 = phi i1 [ %16, %12 ], [ %27, %19 ]
  br i1 %29, label %30, label %68

30:                                               ; preds = %10, %19, %28
  %31 = phi i32 [ %13, %28 ], [ %11, %10 ], [ 1, %19 ]
  %32 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 2
  %33 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 1), ptr noundef nonnull %32, i64 noundef 64) #20
  %34 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 3
  %35 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 2), ptr noundef nonnull %34, i64 noundef 64) #20
  %36 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 3), ptr noundef %1, i64 noundef 64) #20
  %37 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 4), ptr noundef %2, i64 noundef 64) #20
  %38 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 4
  %39 = load <2 x float>, ptr %38, align 8, !tbaa !107
  store <2 x float> %39, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 5), align 8, !tbaa !107
  %40 = icmp eq i32 %31, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !124
  %44 = tail call ptr @curvemapping_copy(ptr noundef %43) #20
  br label %45

45:                                               ; preds = %41, %30
  %46 = phi ptr [ %44, %41 ], [ null, %30 ]
  %47 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 7), align 8, !tbaa !64
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  tail call void @curvemapping_free(ptr noundef nonnull %47) #20
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %51 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11), align 8, !tbaa !226
  tail call void %50(ptr noundef %51) #20
  store ptr null, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 7), align 8, !tbaa !64
  store ptr null, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11), align 8, !tbaa !226
  br label %52

52:                                               ; preds = %49, %45
  br i1 %40, label %58, label %53

53:                                               ; preds = %52
  tail call fastcc void @curve_mapping_to_ocio_settings(ptr noundef %46) #21
  store ptr %46, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 7), align 8, !tbaa !64
  %54 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !124
  %56 = getelementptr inbounds %struct.CurveMapping, ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !168
  store i32 %57, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 10), align 4, !tbaa !225
  br label %58

58:                                               ; preds = %52, %53
  %59 = phi ptr [ %55, %53 ], [ null, %52 ]
  %60 = phi i8 [ 1, %53 ], [ 0, %52 ]
  store ptr %59, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 8), align 8, !tbaa !227
  store i8 %60, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 9), align 8, !tbaa !223
  %61 = load ptr, ptr @global_glsl_state, align 8, !tbaa !59
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  tail call void @OCIO_processorRelease(ptr noundef nonnull %61) #20
  br label %64

64:                                               ; preds = %63, %58
  %65 = load float, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 5), align 8, !tbaa !228
  %66 = load float, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 6), align 4, !tbaa !229
  %67 = tail call fastcc ptr @create_display_buffer_processor(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 1), ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 2), ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 3), float noundef %65, float noundef %66, ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 4)) #21
  store ptr %67, ptr @global_glsl_state, align 8, !tbaa !59
  br label %68

68:                                               ; preds = %64, %28
  ret void
}

; Function Attrs: optsize
declare i32 @OCIO_setupGLSLDraw(ptr noundef, ptr noundef, ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @IMB_colormanagement_setup_glsl_draw(ptr noundef %0, ptr noundef %1, float noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef %0, ptr noundef %1, ptr noundef null, float noundef %2, i8 noundef zeroext %3) #21
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space_ctx(ptr noundef %0, ptr noundef %1, float noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @IMB_colormanagement_display_settings_from_ctx(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  %8 = load ptr, ptr %6, align 8, !tbaa !52
  %9 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef %7, ptr noundef %8, ptr noundef %1, float noundef %2, i8 noundef zeroext %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @IMB_colormanagement_setup_glsl_draw_ctx(ptr noundef %0, float noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space_ctx(ptr noundef %0, ptr noundef null, float noundef %1, i8 noundef zeroext %2) #21
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_colormanagement_finish_glsl_draw() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 12), align 8, !tbaa !66
  tail call void @OCIO_finishGLSLDraw(ptr noundef %1) #20
  ret void
}

; Function Attrs: optsize
declare void @OCIO_finishGLSLDraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanage_role_color_space_name_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !230 {
  %5 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef %2) #20
  %6 = icmp eq ptr %5, null
  %7 = icmp ne ptr %3, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call ptr @OCIO_configGetColorSpace(ptr noundef %0, ptr noundef nonnull %3) #20
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %5, %4 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @OCIO_colorSpaceGetName(ptr noundef nonnull %12) #20
  %16 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %15, i64 noundef 64) #20
  tail call void @OCIO_colorSpaceRelease(ptr noundef nonnull %12) #20
  br label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %2) #21
  br label %19

19:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: optsize
declare i32 @OCIO_configGetNumColorSpaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_configGetColorSpaceNameByIndex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_configGetColorSpace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_colorSpaceGetDescription(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @OCIO_colorSpaceIsInvertible(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @OCIO_colorSpaceIsData(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_colorSpaceRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @OCIO_configGetNumDisplays(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_configGetDisplay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @OCIO_configGetNumViews(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_configGetView(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @OCIO_configGetNumLooks(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_configGetLookNameByIndex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_configGetLook(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_lookGetProcessSpace(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_lookRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_colorSpaceGetName(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #14 !PGOFuncName !231 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_exit() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_configGetProcessorWithNames(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @imb_addrectImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanage_display_buffer_process_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !232 {
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc zeroext i8 @is_ibuf_rect_in_display_space(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4) #21, !range !148
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9, %5, %13
  %17 = tail call ptr @IMB_colormanagement_display_processor_new(ptr noundef %3, ptr noundef %4) #21
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ null, %13 ]
  %20 = load ptr, ptr %6, align 8, !tbaa !94
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !95
  tail call fastcc void @display_buffer_apply_threaded(ptr noundef nonnull %0, ptr noundef %20, ptr noundef %22, ptr noundef %1, ptr noundef %2, ptr noundef %19) #21
  %23 = icmp eq ptr %19, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @IMB_colormanagement_processor_free(ptr noundef nonnull %19) #21
  br label %25

25:                                               ; preds = %24, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @display_buffer_apply_threaded(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !233 {
  %7 = alloca %struct.DisplayBufferInitData, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #19
  store ptr %0, ptr %7, align 8, !tbaa !234
  %8 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %7, i64 0, i32 1
  store ptr %5, ptr %8, align 8, !tbaa !236
  %9 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %7, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !237
  %10 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %7, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !238
  %11 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %7, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !239
  %12 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %7, i64 0, i32 5
  store ptr %4, ptr %12, align 8, !tbaa !240
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.ColorSpace, ptr %14, i64 0, i32 3
  %17 = select i1 %15, ptr @global_role_default_byte, ptr %16
  %18 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %7, i64 0, i32 7
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  %20 = load ptr, ptr %19, align 8, !tbaa !112
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.ColorSpace, ptr %20, i64 0, i32 3
  %23 = select i1 %21, ptr null, ptr %22
  %24 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %7, i64 0, i32 8
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !97
  call void @IMB_processor_apply_threaded(i32 noundef %26, i32 noundef 80, ptr noundef nonnull %7, ptr noundef nonnull @display_buffer_init_handle, ptr noundef nonnull @do_display_buffer_apply_thread) #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #19
  ret void
}

; Function Attrs: optsize
declare void @IMB_processor_apply_threaded(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @display_buffer_init_handle(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #15 !PGOFuncName !241 {
  %5 = load ptr, ptr %3, align 8, !tbaa !234
  %6 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !98
  %8 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 18
  %9 = load float, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 38
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = mul nsw i32 %7, %1
  %13 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = mul nsw i32 %12, %14
  %16 = shl nsw i32 %1, 2
  %17 = mul nsw i32 %16, %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %18 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !236
  store ptr %19, ptr %0, align 8, !tbaa !242
  %20 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !237
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = sext i32 %15 to i64
  %25 = getelementptr inbounds float, ptr %21, i64 %24
  %26 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !244
  br label %27

27:                                               ; preds = %23, %4
  %28 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !238
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = sext i32 %15 to i64
  %33 = getelementptr inbounds i8, ptr %29, i64 %32
  %34 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !245
  br label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !239
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = sext i32 %15 to i64
  %41 = getelementptr inbounds float, ptr %37, i64 %40
  %42 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !246
  br label %43

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !240
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = sext i32 %17 to i64
  %49 = getelementptr inbounds i8, ptr %45, i64 %48
  %50 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 4
  store ptr %49, ptr %50, align 8, !tbaa !247
  br label %51

51:                                               ; preds = %47, %43
  %52 = trunc i32 %11 to i8
  %53 = and i8 %52, 1
  %54 = load i32, ptr %13, align 8, !tbaa !96
  %55 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 5
  store i32 %54, ptr %55, align 8, !tbaa !248
  %56 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 6
  store i32 %1, ptr %56, align 4, !tbaa !249
  %57 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 7
  store i32 %2, ptr %57, align 8, !tbaa !250
  %58 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 8
  store i32 %7, ptr %58, align 4, !tbaa !251
  %59 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 9
  store float %9, ptr %59, align 8, !tbaa !252
  %60 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 10
  store i8 %53, ptr %60, align 4, !tbaa !253
  %61 = getelementptr inbounds %struct.DisplayBufferInitData, ptr %3, i64 0, i32 7
  %62 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 11
  %63 = load <2 x ptr>, ptr %61, align 8, !tbaa !52
  store <2 x ptr> %63, ptr %62, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @do_display_buffer_apply_thread(ptr nocapture noundef readonly %0) #0 !PGOFuncName !254 {
  %2 = alloca i8, align 1
  %3 = load ptr, ptr %0, align 8, !tbaa !242
  %4 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !246
  %6 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !247
  %8 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !251
  %10 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !248
  %12 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !250
  %14 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 9
  %15 = load float, ptr %14, align 8, !tbaa !252
  %16 = icmp eq ptr %3, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = icmp eq ptr %7, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !245
  tail call void @IMB_buffer_byte_from_byte(ptr noundef nonnull %7, ptr noundef %21, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %11, i32 noundef %13, i32 noundef %11, i32 noundef %11) #20
  br label %22

22:                                               ; preds = %19, %17
  %23 = icmp eq ptr %5, null
  br i1 %23, label %60, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !245
  tail call void @IMB_buffer_float_from_byte(ptr noundef nonnull %5, ptr noundef %26, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %11, i32 noundef %13, i32 noundef %11, i32 noundef %11) #20
  br label %60

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 10
  %29 = load i8, ptr %28, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !52
  %31 = mul i32 %13, %11
  %32 = mul i32 %31, %9
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr %30(i64 noundef %34, ptr noundef nonnull @.str.32) #20
  call fastcc void @display_buffer_apply_get_linear_buffer(ptr noundef nonnull %0, i32 noundef %13, ptr noundef %35, ptr noundef nonnull %2) #21
  %36 = load i8, ptr %2, align 1, !tbaa !89
  %37 = icmp eq i8 %36, 0
  %38 = zext i1 %37 to i8
  %39 = icmp eq i8 %29, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  tail call void @IMB_colormanagement_processor_apply(ptr noundef nonnull %3, ptr noundef %35, i32 noundef %11, i32 noundef %13, i32 noundef %9, i8 noundef zeroext %38) #21
  br label %41

41:                                               ; preds = %27, %40
  %42 = icmp eq ptr %7, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  tail call void @IMB_buffer_byte_from_float(ptr noundef nonnull %7, ptr noundef %35, i32 noundef %9, float noundef %15, i32 noundef 2, i32 noundef 2, i8 noundef zeroext %38, i32 noundef %11, i32 noundef %13, i32 noundef %11, i32 noundef %11) #20
  br label %44

44:                                               ; preds = %43, %41
  %45 = icmp eq ptr %5, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr align 4 %35, i64 %34, i1 false)
  %47 = icmp ne i8 %36, 0
  %48 = icmp eq i32 %9, 4
  %49 = select i1 %47, i1 %48, i1 false
  %50 = icmp sgt i32 %31, 0
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46, %52
  %53 = phi ptr [ %56, %52 ], [ %5, %46 ]
  %54 = phi i32 [ %55, %52 ], [ 0, %46 ]
  tail call fastcc void @straight_to_premul_v4(ptr noundef nonnull %53) #21
  %55 = add nuw nsw i32 %54, 1
  %56 = getelementptr inbounds float, ptr %53, i64 4
  %57 = icmp eq i32 %55, %31
  br i1 %57, label %58, label %52, !llvm.loop !255

58:                                               ; preds = %52, %46, %44
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %59(ptr noundef %35) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  br label %60

60:                                               ; preds = %22, %24, %58
  ret ptr null
}

; Function Attrs: optsize
declare void @IMB_buffer_byte_from_byte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_buffer_float_from_byte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @display_buffer_apply_get_linear_buffer(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !256 {
  %5 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !251
  %7 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !248
  %9 = mul i32 %8, %1
  %10 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 10
  %11 = load i8, ptr %10, align 4, !tbaa !253
  %12 = load ptr, ptr %0, align 8, !tbaa !242
  %13 = getelementptr inbounds %struct.ColormanageProcessor, ptr %12, i64 0, i32 2
  %14 = load i8, ptr %13, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !244
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !257
  %21 = icmp sgt i32 %9, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !245
  %25 = sext i32 %6 to i64
  br label %26

26:                                               ; preds = %22, %32
  %27 = phi ptr [ %2, %22 ], [ %34, %32 ]
  %28 = phi ptr [ %24, %22 ], [ %35, %32 ]
  %29 = phi i32 [ 0, %22 ], [ %33, %32 ]
  switch i32 %6, label %32 [
    i32 3, label %30
    i32 4, label %31
  ]

30:                                               ; preds = %26
  tail call void @rgb_uchar_to_float(ptr noundef %27, ptr noundef %28) #20
  br label %32

31:                                               ; preds = %26
  tail call void @rgba_uchar_to_float(ptr noundef %27, ptr noundef %28) #20
  br label %32

32:                                               ; preds = %26, %30, %31
  %33 = add nuw nsw i32 %29, 1
  %34 = getelementptr inbounds float, ptr %27, i64 %25
  %35 = getelementptr inbounds i8, ptr %28, i64 %25
  %36 = icmp eq i32 %33, %9
  br i1 %36, label %37, label %26, !llvm.loop !258

37:                                               ; preds = %32, %18
  %38 = icmp ne i8 %11, 0
  %39 = icmp ne i8 %14, 0
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  tail call void @IMB_colormanagement_transform(ptr noundef %2, i32 noundef %8, i32 noundef %1, i32 noundef %6, ptr noundef %20, ptr noundef nonnull @global_role_scene_linear, i8 noundef zeroext 0) #21
  br label %54

42:                                               ; preds = %4
  %43 = mul i32 %9, %6
  %44 = getelementptr inbounds %struct.DisplayBufferThread, ptr %0, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !259
  %46 = icmp eq ptr %45, null
  %47 = sext i32 %43 to i64
  %48 = shl nsw i64 %47, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %16, i64 %48, i1 false)
  br i1 %46, label %54, label %49

49:                                               ; preds = %42
  %50 = icmp ne i8 %11, 0
  %51 = icmp ne i8 %14, 0
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @IMB_colormanagement_transform(ptr noundef %2, i32 noundef %8, i32 noundef %1, i32 noundef %6, ptr noundef nonnull %45, ptr noundef nonnull @global_role_scene_linear, i8 noundef zeroext 1) #21
  br label %54

54:                                               ; preds = %42, %49, %53, %37, %41
  %55 = phi i8 [ 1, %41 ], [ 1, %37 ], [ 0, %53 ], [ 0, %49 ], [ 0, %42 ]
  store i8 %55, ptr %3, align 1, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_to_premul_v4(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !260 {
  tail call fastcc void @straight_to_premul_v4_v4(ptr noundef %0, ptr noundef %0) #21
  ret void
}

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgba_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_to_premul_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !261 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !107
  %5 = load float, ptr %1, align 4, !tbaa !107
  %6 = fmul float %4, %5
  store float %6, ptr %0, align 4, !tbaa !107
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !107
  %9 = fmul float %4, %8
  %10 = getelementptr inbounds float, ptr %0, i64 1
  store float %9, ptr %10, align 4, !tbaa !107
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !107
  %13 = fmul float %4, %12
  %14 = getelementptr inbounds float, ptr %0, i64 2
  store float %13, ptr %14, align 4, !tbaa !107
  %15 = load float, ptr %3, align 4, !tbaa !107
  %16 = getelementptr inbounds float, ptr %0, i64 3
  store float %15, ptr %16, align 4, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @processor_transform_init_handle(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #10 !PGOFuncName !262 {
  %5 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %3, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !146
  %7 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %3, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !144
  %9 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %3, i64 0, i32 5
  %10 = load i8, ptr %9, align 4, !tbaa !147
  %11 = mul nsw i32 %6, %1
  %12 = mul nsw i32 %11, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %13 = load ptr, ptr %3, align 8, !tbaa !141
  store ptr %13, ptr %0, align 8, !tbaa !263
  %14 = getelementptr inbounds %struct.ProcessorTransformInit, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds float, ptr %15, i64 %16
  %18 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !265
  %19 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 2
  store i32 %8, ptr %19, align 8, !tbaa !266
  %20 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 3
  store i32 %1, ptr %20, align 4, !tbaa !267
  %21 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 4
  store i32 %2, ptr %21, align 8, !tbaa !268
  %22 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 5
  store i32 %6, ptr %22, align 4, !tbaa !269
  %23 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 6
  store i8 %10, ptr %23, align 8, !tbaa !270
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @do_processor_transform_thread(ptr nocapture noundef readonly %0) #0 !PGOFuncName !271 {
  %2 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !265
  %4 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !269
  %6 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !266
  %8 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !268
  %10 = getelementptr inbounds %struct.ProcessorTransformThread, ptr %0, i64 0, i32 6
  %11 = load i8, ptr %10, align 8, !tbaa !270
  %12 = load ptr, ptr %0, align 8, !tbaa !263
  tail call void @IMB_colormanagement_processor_apply(ptr noundef %12, ptr noundef %3, i32 noundef %7, i32 noundef %9, i32 noundef %5, i8 noundef zeroext %11) #21
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @colormanage_settings_to_key(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !272 {
  %4 = getelementptr inbounds %struct.ColormanageCacheViewSettings, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !158
  store i32 %5, ptr %0, align 4, !tbaa !273
  %6 = load i32, ptr %2, align 4, !tbaa !164
  %7 = getelementptr inbounds %struct.ColormanageCacheKey, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 4, !tbaa !275
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @colormanage_cache_get_ibuf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !276 {
  %4 = tail call fastcc ptr @colormanage_moviecache_get(ptr noundef %0) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  store ptr null, ptr %2, align 8, !tbaa !52
  %7 = tail call ptr @IMB_moviecache_get(ptr noundef nonnull %4, ptr noundef %1) #20
  store ptr %7, ptr %2, align 8, !tbaa !52
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  ret ptr %9
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_moviecache_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @colormanage_moviecache_ensure(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !277 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %7 = tail call ptr %6(i64 noundef 16, ptr noundef nonnull @.str.34) #20
  store ptr %7, ptr %2, align 8, !tbaa !72
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = tail call ptr @IMB_moviecache_create(ptr noundef nonnull @.str.35, i32 noundef 8, ptr noundef nonnull @colormanage_hashhash, ptr noundef nonnull @colormanage_hashcmp) #20
  %14 = load ptr, ptr %2, align 8, !tbaa !72
  store ptr %13, ptr %14, align 8, !tbaa !77
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %13, %12 ], [ %10, %8 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colormanage_cachedata_set(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !278 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 37
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %8 = tail call ptr %7(i64 noundef 16, ptr noundef nonnull @.str.34) #20
  store ptr %8, ptr %3, align 8, !tbaa !72
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.ColormanageCache, ptr %10, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !74
  ret void
}

; Function Attrs: optsize
declare void @IMB_moviecache_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_moviecache_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @colormanage_hashhash(ptr nocapture noundef readonly %0) #9 !PGOFuncName !279 {
  %2 = getelementptr inbounds %struct.ColormanageCacheKey, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !275
  %4 = shl i32 %3, 16
  %5 = load i32, ptr %0, align 4, !tbaa !273
  %6 = srem i32 %5, 65535
  %7 = or i32 %6, %4
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @colormanage_hashcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !PGOFuncName !280 {
  %3 = load i32, ptr %0, align 4, !tbaa !273
  %4 = load i32, ptr %1, align 4, !tbaa !273
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ColormanageCacheKey, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !275
  %9 = getelementptr inbounds %struct.ColormanageCacheKey, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !275
  %11 = icmp ne i32 %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i8 [ 1, %2 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_to_straight_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !281 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !107
  %5 = fcmp oeq float %4, 0.000000e+00
  %6 = fcmp oeq float %4, 1.000000e+00
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load float, ptr %1, align 4, !tbaa !107
  store float %9, ptr %0, align 4, !tbaa !107
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !107
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !107
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !107
  br label %26

15:                                               ; preds = %2
  %16 = fdiv float 1.000000e+00, %4
  %17 = load float, ptr %1, align 4, !tbaa !107
  %18 = fmul float %16, %17
  store float %18, ptr %0, align 4, !tbaa !107
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !107
  %21 = fmul float %16, %20
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !107
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !107
  %25 = fmul float %16, %24
  br label %26

26:                                               ; preds = %15, %8
  %27 = phi float [ %25, %15 ], [ %14, %8 ]
  %28 = getelementptr inbounds float, ptr %0, i64 2
  store float %27, ptr %28, align 4, !tbaa !107
  %29 = load float, ptr %3, align 4, !tbaa !107
  %30 = getelementptr inbounds float, ptr %0, i64 3
  store float %29, ptr %30, align 4
  ret void
}

; Function Attrs: optsize
declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: optsize
declare ptr @OCIO_createDisplayTransform() local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_displayTransformSetInputColorSpaceName(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_displayTransformSetView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_displayTransformSetDisplay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_displayTransformSetLooksOverrideEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_displayTransformSetLooksOverride(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_matrixTransformScale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_createMatrixTransform() local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_matrixTransformSetValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_displayTransformSetLinearCC(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_matrixTransformRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_createExponentTransform() local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_exponentTransformSetValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_displayTransformSetDisplayCC(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_exponentTransformRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @OCIO_configGetProcessor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OCIO_displayTransformRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @curvemap_evaluateF(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @check_glsl_display_processor_changed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #17 !PGOFuncName !282 {
  %4 = load float, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 5), align 8, !tbaa !228
  %5 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 4
  %6 = load float, ptr %5, align 8, !tbaa !104
  %7 = fcmp oeq float %4, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = load float, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 6), align 4, !tbaa !229
  %10 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 5
  %11 = load float, ptr %10, align 4, !tbaa !106
  %12 = fcmp oeq float %9, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 2
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 1), ptr noundef nonnull dereferenceable(1) %14) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %0, i64 0, i32 3
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 2), ptr noundef nonnull dereferenceable(1) %18) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 3), ptr noundef nonnull dereferenceable(1) %1) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 4), ptr noundef nonnull dereferenceable(1) %2) #22
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %24, %21, %17, %13, %8, %3
  %29 = phi i8 [ 1, %21 ], [ 1, %17 ], [ 1, %13 ], [ 1, %8 ], [ 1, %3 ], [ %27, %24 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_mapping_to_ocio_settings(ptr noundef %0) unnamed_addr #0 !PGOFuncName !283 {
  tail call void @curvemapping_initialize(ptr noundef %0) #20
  tail call void @curvemapping_premultiply(ptr noundef %0, i32 noundef 0) #20
  tail call void @curvemapping_table_RGBA(ptr noundef %0, ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11), ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 1)) #20
  %2 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 6
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %41, %3 ]
  %5 = getelementptr inbounds %struct.CurveMap, ptr %2, i64 %4, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !284
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  %9 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 2, i64 %4
  store i32 %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.CurveMap, ptr %2, i64 %4, i32 2
  %11 = load float, ptr %10, align 4, !tbaa !286
  %12 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 4, i64 %4
  store float %11, ptr %12, align 4, !tbaa !107
  %13 = getelementptr inbounds %struct.CurveMap, ptr %2, i64 %4, i32 3
  %14 = load float, ptr %13, align 8, !tbaa !287
  %15 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 3, i64 %4
  store float %14, ptr %15, align 4, !tbaa !107
  %16 = getelementptr inbounds %struct.CurveMap, ptr %2, i64 %4, i32 5
  %17 = load float, ptr %16, align 8, !tbaa !107
  %18 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 5, i64 %4
  store float %17, ptr %18, align 4, !tbaa !107
  %19 = getelementptr inbounds %struct.CurveMap, ptr %2, i64 %4, i32 5, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !107
  %21 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 6, i64 %4
  store float %20, ptr %21, align 4, !tbaa !107
  %22 = getelementptr inbounds %struct.CurveMap, ptr %2, i64 %4, i32 6
  %23 = load float, ptr %22, align 8, !tbaa !107
  %24 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 7, i64 %4
  store float %23, ptr %24, align 4, !tbaa !107
  %25 = getelementptr inbounds %struct.CurveMap, ptr %2, i64 %4, i32 6, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !107
  %27 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 8, i64 %4
  store float %26, ptr %27, align 4, !tbaa !107
  %28 = getelementptr inbounds %struct.CurveMap, ptr %2, i64 %4, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !288
  %30 = load float, ptr %29, align 4, !tbaa !289
  %31 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 9, i64 %4
  store float %30, ptr %31, align 4, !tbaa !107
  %32 = getelementptr inbounds %struct.CurveMapPoint, ptr %29, i64 0, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !291
  %34 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 10, i64 %4
  store float %33, ptr %34, align 4, !tbaa !107
  %35 = getelementptr inbounds %struct.CurveMapPoint, ptr %29, i64 256
  %36 = load float, ptr %35, align 4, !tbaa !289
  %37 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 11, i64 %4
  store float %36, ptr %37, align 4, !tbaa !107
  %38 = getelementptr inbounds %struct.CurveMapPoint, ptr %29, i64 256, i32 1
  %39 = load float, ptr %38, align 4, !tbaa !291
  %40 = getelementptr inbounds %struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 12, i64 %4
  store float %39, ptr %40, align 4, !tbaa !107
  %41 = add nuw nsw i64 %4, 1
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %3, !llvm.loop !292

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 13), ptr noundef nonnull %44) #21
  %45 = getelementptr inbounds %struct.CurveMapping, ptr %0, i64 0, i32 9
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 14), ptr noundef nonnull %45) #21
  %46 = ptrtoint ptr %0 to i64
  store i64 %46, ptr getelementptr inbounds (%struct.global_glsl_state, ptr @global_glsl_state, i64 0, i32 11, i32 15), align 8, !tbaa !293
  ret void
}

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemapping_table_RGBA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #18

declare float @exp2f(float) local_unnamed_addr

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree noinline nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"colormanagement.c:colormanage_load_config"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !40}
!44 = !{!"colormanagement.c:colormanage_free_config"}
!45 = !{!46, !47, i64 0}
!46 = !{!"ListBase", !47, i64 0, !47, i64 8}
!47 = !{!"any pointer", !36, i64 0}
!48 = !{!49, !47, i64 0}
!49 = !{!"ColorSpace", !47, i64 0, !47, i64 8, !35, i64 16, !36, i64 20, !36, i64 84, !47, i64 600, !47, i64 608, !36, i64 616, !36, i64 617}
!50 = !{!49, !47, i64 600}
!51 = !{!49, !47, i64 608}
!52 = !{!47, !47, i64 0}
!53 = distinct !{!53, !40}
!54 = !{!55, !47, i64 0}
!55 = !{!"ColorManagedDisplay", !47, i64 0, !47, i64 8, !35, i64 16, !36, i64 20, !46, i64 88, !47, i64 104, !47, i64 112}
!56 = !{!55, !47, i64 104}
!57 = !{!55, !47, i64 112}
!58 = distinct !{!58, !40}
!59 = !{!60, !47, i64 0}
!60 = !{!"global_glsl_state", !47, i64 0, !36, i64 8, !36, i64 72, !36, i64 136, !36, i64 200, !61, i64 264, !61, i64 268, !47, i64 272, !47, i64 280, !36, i64 288, !35, i64 292, !62, i64 296, !47, i64 520, !47, i64 528}
!61 = !{!"float", !36, i64 0}
!62 = !{!"OCIO_CurveMappingSettings", !47, i64 0, !35, i64 8, !36, i64 12, !36, i64 28, !36, i64 44, !36, i64 60, !36, i64 76, !36, i64 92, !36, i64 108, !36, i64 124, !36, i64 140, !36, i64 156, !36, i64 172, !36, i64 188, !36, i64 200, !63, i64 216}
!63 = !{!"long", !36, i64 0}
!64 = !{!60, !47, i64 272}
!65 = !{!60, !47, i64 296}
!66 = !{!60, !47, i64 520}
!67 = !{!60, !47, i64 528}
!68 = !{!69, !47, i64 2416}
!69 = !{!"ImBuf", !47, i64 0, !47, i64 8, !35, i64 16, !35, i64 20, !36, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !47, i64 40, !47, i64 48, !36, i64 56, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !47, i64 88, !47, i64 96, !47, i64 104, !61, i64 112, !36, i64 120, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !47, i64 296, !47, i64 304, !35, i64 312, !36, i64 316, !36, i64 1340, !47, i64 2368, !35, i64 2376, !47, i64 2384, !35, i64 2392, !35, i64 2396, !47, i64 2400, !47, i64 2408, !47, i64 2416, !47, i64 2424, !35, i64 2432, !70, i64 2436, !71, i64 2456}
!70 = !{!"rcti", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!71 = !{!"DDSData", !35, i64 0, !35, i64 4, !47, i64 8, !35, i64 16}
!72 = !{!69, !47, i64 2424}
!73 = !{!"colormanagement.c:colormanage_cachedata_get"}
!74 = !{!75, !47, i64 8}
!75 = !{!"ColormanageCache", !47, i64 0, !47, i64 8}
!76 = !{!"colormanagement.c:colormanage_moviecache_get"}
!77 = !{!75, !47, i64 0}
!78 = !{!79, !47, i64 40}
!79 = !{!"SpaceImage", !47, i64 0, !47, i64 8, !46, i64 16, !35, i64 32, !35, i64 36, !47, i64 40, !80, i64 48, !47, i64 88, !82, i64 96, !83, i64 5360, !47, i64 10520, !36, i64 10528, !61, i64 10536, !61, i64 10540, !61, i64 10544, !61, i64 10548, !61, i64 10552, !36, i64 10556, !36, i64 10557, !81, i64 10558, !81, i64 10560, !81, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !84, i64 10568}
!80 = !{!"ImageUser", !47, i64 0, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !81, i64 28, !81, i64 30, !81, i64 32, !81, i64 34, !35, i64 36}
!81 = !{!"short", !36, i64 0}
!82 = !{!"Scopes", !35, i64 0, !35, i64 4, !35, i64 8, !61, i64 12, !35, i64 16, !61, i64 20, !61, i64 24, !35, i64 28, !61, i64 32, !35, i64 36, !36, i64 40, !83, i64 64, !47, i64 5224, !47, i64 5232, !47, i64 5240, !47, i64 5248, !35, i64 5256, !35, i64 5260}
!83 = !{!"Histogram", !35, i64 0, !35, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !61, i64 5128, !61, i64 5132, !81, i64 5136, !81, i64 5138, !35, i64 5140, !36, i64 5144}
!84 = !{!"MaskSpaceInfo", !47, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!85 = !{!86, !81, i64 1246}
!86 = !{!"Image", !87, i64 0, !36, i64 120, !47, i64 1144, !47, i64 1152, !47, i64 1160, !47, i64 1168, !36, i64 1176, !81, i64 1240, !81, i64 1242, !81, i64 1244, !81, i64 1246, !81, i64 1248, !81, i64 1250, !35, i64 1252, !81, i64 1256, !81, i64 1258, !81, i64 1260, !81, i64 1262, !81, i64 1264, !81, i64 1266, !35, i64 1268, !47, i64 1272, !47, i64 1280, !47, i64 1288, !61, i64 1296, !35, i64 1300, !81, i64 1304, !81, i64 1306, !35, i64 1308, !35, i64 1312, !36, i64 1316, !36, i64 1317, !81, i64 1318, !36, i64 1320, !61, i64 1336, !61, i64 1340, !88, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!87 = !{!"ID", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !36, i64 32, !81, i64 98, !35, i64 100, !35, i64 104, !35, i64 108, !47, i64 112}
!88 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!89 = !{!36, !36, i64 0}
!90 = !{!69, !47, i64 2400}
!91 = distinct !{!91, !40}
!92 = !{!49, !36, i64 617}
!93 = !{!69, !35, i64 2432}
!94 = !{!69, !47, i64 48}
!95 = !{!69, !47, i64 40}
!96 = !{!69, !35, i64 16}
!97 = !{!69, !35, i64 20}
!98 = !{!69, !35, i64 28}
!99 = distinct !{!99, !40}
!100 = distinct !{!100, !40}
!101 = distinct !{!101, !40}
!102 = !{!"colormanagement.c:colormanage_check_display_settings"}
!103 = !{!"colormanagement.c:colormanage_check_view_settings"}
!104 = !{!105, !61, i64 136}
!105 = !{!"ColorManagedViewSettings", !35, i64 0, !35, i64 4, !36, i64 8, !36, i64 72, !61, i64 136, !61, i64 140, !47, i64 144, !47, i64 152}
!106 = !{!105, !61, i64 140}
!107 = !{!61, !61, i64 0}
!108 = !{!"colormanagement.c:colormanage_check_colorspace_settings"}
!109 = !{!110, !47, i64 16}
!110 = !{!"LinkData", !47, i64 0, !47, i64 8, !47, i64 16}
!111 = distinct !{!111, !40}
!112 = !{!69, !47, i64 2408}
!113 = !{!"colormanagement.c:colormanagement_transform_ex"}
!114 = !{!115, !36, i64 16}
!115 = !{!"ColormanageProcessor", !47, i64 0, !47, i64 8, !36, i64 16}
!116 = !{!115, !47, i64 0}
!117 = !{!115, !47, i64 8}
!118 = !{!"colormanagement.c:colorspace_to_scene_linear_processor"}
!119 = !{!"colormanagement.c:colorspace_from_scene_linear_processor"}
!120 = !{!"colormanagement.c:display_from_scene_linear_processor"}
!121 = !{!"colormanagement.c:display_to_scene_linear_processor"}
!122 = !{!"colormanagement.c:copy_v4_v4"}
!123 = !{!105, !35, i64 0}
!124 = !{!105, !47, i64 144}
!125 = !{!"colormanagement.c:copy_v3_v3"}
!126 = !{!"colormanagement.c:colormanagement_imbuf_make_display_space"}
!127 = !{!128, !36, i64 0}
!128 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !81, i64 8, !81, i64 10, !61, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !105, i64 24, !129, i64 184}
!129 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!130 = !{!128, !36, i64 2}
!131 = !{!69, !35, i64 292}
!132 = !{!69, !35, i64 36}
!133 = !{!69, !35, i64 312}
!134 = !{!135, !47, i64 56}
!135 = !{!"ImFileType", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !35, i64 72, !35, i64 76, !35, i64 80}
!136 = !{!135, !47, i64 32}
!137 = !{!135, !35, i64 72}
!138 = distinct !{!138, !40}
!139 = !{!"colormanagement.c:display_transform_get_colorspace"}
!140 = !{!"colormanagement.c:processor_transform_apply_threaded"}
!141 = !{!142, !47, i64 0}
!142 = !{!"ProcessorTransformInit", !47, i64 0, !47, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !36, i64 28}
!143 = !{!142, !47, i64 8}
!144 = !{!142, !35, i64 16}
!145 = !{!142, !35, i64 20}
!146 = !{!142, !35, i64 24}
!147 = !{!142, !36, i64 28}
!148 = !{i8 0, i8 2}
!149 = !{!69, !35, i64 2436}
!150 = !{!69, !35, i64 2440}
!151 = !{!69, !35, i64 2444}
!152 = !{!69, !35, i64 2448}
!153 = !{!"colormanagement.c:init_default_view_settings"}
!154 = !{!"colormanagement.c:is_ibuf_rect_in_display_space"}
!155 = !{!"colormanagement.c:colormanage_view_settings_to_cache"}
!156 = !{!157, !35, i64 4}
!157 = !{!"ColormanageCacheViewSettings", !35, i64 0, !35, i64 4, !35, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !47, i64 24}
!158 = !{!157, !35, i64 8}
!159 = !{!69, !61, i64 112}
!160 = !{!157, !61, i64 20}
!161 = !{!157, !35, i64 0}
!162 = !{!157, !47, i64 24}
!163 = !{!"colormanagement.c:colormanage_display_settings_to_cache"}
!164 = !{!165, !35, i64 0}
!165 = !{!"ColormanageCacheDisplaySettings", !35, i64 0}
!166 = distinct !{!166, !40}
!167 = !{!"colormanagement.c:colormanage_cache_get"}
!168 = !{!169, !35, i64 12}
!169 = !{!"CurveMapping", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !170, i64 16, !170, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!170 = !{!"rctf", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!171 = !{!172, !35, i64 4}
!172 = !{!"ColormnaageCacheData", !35, i64 0, !35, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !47, i64 24, !35, i64 32}
!173 = !{!172, !61, i64 8}
!174 = !{!157, !61, i64 12}
!175 = !{!172, !61, i64 12}
!176 = !{!157, !61, i64 16}
!177 = !{!172, !61, i64 16}
!178 = !{!172, !35, i64 0}
!179 = !{!172, !47, i64 24}
!180 = !{!172, !35, i64 32}
!181 = !{!"colormanagement.c:colormanage_display_buffer_process"}
!182 = !{!"colormanagement.c:colormanage_cache_put"}
!183 = !{!69, !36, i64 24}
!184 = distinct !{!184, !40}
!185 = distinct !{!185, !40}
!186 = !{!"colormanagement.c:colormanage_cache_handle_release"}
!187 = !{!46, !47, i64 8}
!188 = !{!55, !35, i64 16}
!189 = distinct !{!189, !40}
!190 = !{!191, !35, i64 16}
!191 = !{!"ColorManagedView", !47, i64 0, !47, i64 8, !35, i64 16, !36, i64 20}
!192 = !{!49, !36, i64 616}
!193 = !{!49, !35, i64 16}
!194 = distinct !{!194, !40}
!195 = distinct !{!195, !40}
!196 = !{!"colormanagement.c:colormanage_description_strip"}
!197 = distinct !{!197, !40}
!198 = distinct !{!198, !40}
!199 = !{!135, !35, i64 80}
!200 = distinct !{!200, !40}
!201 = !{!202, !35, i64 16}
!202 = !{!"ColorManagedLook", !47, i64 0, !47, i64 8, !35, i64 16, !36, i64 20, !36, i64 84, !36, i64 148}
!203 = !{!202, !36, i64 148}
!204 = distinct !{!204, !40}
!205 = !{!206, !35, i64 0}
!206 = !{!"EnumPropertyItem", !35, i64 0, !47, i64 8, !35, i64 16, !47, i64 24, !47, i64 32}
!207 = !{!206, !47, i64 24}
!208 = !{!206, !47, i64 8}
!209 = !{!206, !35, i64 16}
!210 = !{!206, !47, i64 32}
!211 = distinct !{!211, !40}
!212 = distinct !{!212, !40}
!213 = !{!"colormanagement.c:colormanagement_view_item_add"}
!214 = distinct !{!214, !40}
!215 = distinct !{!215, !40}
!216 = !{!"colormanagement.c:partial_buffer_update_rect"}
!217 = distinct !{!217, !40}
!218 = distinct !{!218, !40}
!219 = distinct !{!219, !40}
!220 = !{!"colormanagement.c:create_display_buffer_processor"}
!221 = !{!"colormanagement.c:create_colorspace_transform_processor"}
!222 = !{!"colormanagement.c:curve_mapping_apply_pixel"}
!223 = !{!60, !36, i64 288}
!224 = !{!"colormanagement.c:update_glsl_display_processor"}
!225 = !{!60, !35, i64 292}
!226 = !{!62, !47, i64 0}
!227 = !{!60, !47, i64 280}
!228 = !{!60, !61, i64 264}
!229 = !{!60, !61, i64 268}
!230 = !{!"colormanagement.c:colormanage_role_color_space_name_get"}
!231 = !{!"colormanagement.c:BLI_listbase_clear"}
!232 = !{!"colormanagement.c:colormanage_display_buffer_process_ex"}
!233 = !{!"colormanagement.c:display_buffer_apply_threaded"}
!234 = !{!235, !47, i64 0}
!235 = !{!"DisplayBufferInitData", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !35, i64 48, !47, i64 56, !47, i64 64}
!236 = !{!235, !47, i64 8}
!237 = !{!235, !47, i64 16}
!238 = !{!235, !47, i64 24}
!239 = !{!235, !47, i64 32}
!240 = !{!235, !47, i64 40}
!241 = !{!"colormanagement.c:display_buffer_init_handle"}
!242 = !{!243, !47, i64 0}
!243 = !{!"DisplayBufferThread", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !61, i64 56, !36, i64 60, !47, i64 64, !47, i64 72}
!244 = !{!243, !47, i64 8}
!245 = !{!243, !47, i64 16}
!246 = !{!243, !47, i64 24}
!247 = !{!243, !47, i64 32}
!248 = !{!243, !35, i64 40}
!249 = !{!243, !35, i64 44}
!250 = !{!243, !35, i64 48}
!251 = !{!243, !35, i64 52}
!252 = !{!243, !61, i64 56}
!253 = !{!243, !36, i64 60}
!254 = !{!"colormanagement.c:do_display_buffer_apply_thread"}
!255 = distinct !{!255, !40}
!256 = !{!"colormanagement.c:display_buffer_apply_get_linear_buffer"}
!257 = !{!243, !47, i64 64}
!258 = distinct !{!258, !40}
!259 = !{!243, !47, i64 72}
!260 = !{!"colormanagement.c:straight_to_premul_v4"}
!261 = !{!"colormanagement.c:straight_to_premul_v4_v4"}
!262 = !{!"colormanagement.c:processor_transform_init_handle"}
!263 = !{!264, !47, i64 0}
!264 = !{!"ProcessorTransformThread", !47, i64 0, !47, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !36, i64 32}
!265 = !{!264, !47, i64 8}
!266 = !{!264, !35, i64 16}
!267 = !{!264, !35, i64 20}
!268 = !{!264, !35, i64 24}
!269 = !{!264, !35, i64 28}
!270 = !{!264, !36, i64 32}
!271 = !{!"colormanagement.c:do_processor_transform_thread"}
!272 = !{!"colormanagement.c:colormanage_settings_to_key"}
!273 = !{!274, !35, i64 0}
!274 = !{!"ColormanageCacheKey", !35, i64 0, !35, i64 4}
!275 = !{!274, !35, i64 4}
!276 = !{!"colormanagement.c:colormanage_cache_get_ibuf"}
!277 = !{!"colormanagement.c:colormanage_moviecache_ensure"}
!278 = !{!"colormanagement.c:colormanage_cachedata_set"}
!279 = !{!"colormanagement.c:colormanage_hashhash"}
!280 = !{!"colormanagement.c:colormanage_hashcmp"}
!281 = !{!"colormanagement.c:premul_to_straight_v4_v4"}
!282 = !{!"colormanagement.c:check_glsl_display_processor_changed"}
!283 = !{!"colormanagement.c:curve_mapping_to_ocio_settings"}
!284 = !{!285, !81, i64 2}
!285 = !{!"CurveMap", !81, i64 0, !81, i64 2, !61, i64 4, !61, i64 8, !61, i64 12, !36, i64 16, !36, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !36, i64 56, !36, i64 64}
!286 = !{!285, !61, i64 4}
!287 = !{!285, !61, i64 8}
!288 = !{!285, !47, i64 40}
!289 = !{!290, !61, i64 0}
!290 = !{!"CurveMapPoint", !61, i64 0, !61, i64 4, !81, i64 8, !81, i64 10}
!291 = !{!290, !61, i64 4}
!292 = distinct !{!292, !40}
!293 = !{!62, !63, i64 216}
