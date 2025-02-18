; ModuleID = 'blender/source/blender/editors/animation/keyframing.c'
source_filename = "blender/source/blender/editors/animation/keyframing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.RigidBodyOb = type { ptr, ptr, i16, i16, i32, i32, i16, i16, float, float, float, float, float, float, float, float, [4 x float], [3 x float], float }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str = private unnamed_addr constant [40 x i8] c"ERROR: Couldn't add AnimData (ID = %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<None>\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%sAction\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"FCurve\00", align 1
@RNA_PoseBone = external global %struct.StructRNA, align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"No RNA pointer available to retrieve values for this fcurve\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"<No ID pointer>\00", align 1
@.str.6 = private unnamed_addr constant [101 x i8] c"Could not update flags for this fcurve, as RNA path is invalid for the given ID (ID = %s, path = %s)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"beztriple\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"No F-Curve to add keyframes to\00", align 1
@.str.9 = private unnamed_addr constant [118 x i8] c"F-Curve with path '%s[%d]' cannot be keyframed, ensure that it is not locked or sampled, and try removing F-Modifiers\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"No RNA pointer available to retrieve values for keyframing from\00", align 1
@.str.11 = private unnamed_addr constant [88 x i8] c"Could not insert keyframe, as RNA path is invalid for the given ID (ID = %s, path = %s)\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"No ID block to insert keyframe in (path = %s)\00", align 1
@.str.14 = private unnamed_addr constant [93 x i8] c"Could not insert keyframe, as this type does not support animation data (ID = %s, path = %s)\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"No ID block and/or AnimData to delete keyframe from\00", align 1
@.str.16 = private unnamed_addr constant [88 x i8] c"Could not delete keyframe, as RNA path is invalid for the given ID (ID = %s, path = %s)\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"No action to delete keyframes from for ID = %s\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"Not deleting keyframe for locked F-Curve '%s' for %s '%s'\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Insert Keyframe\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"ANIM_OT_keyframe_insert\00", align 1
@.str.21 = private unnamed_addr constant [85 x i8] c"Insert keyframes on the current frame for all properties in the specified Keying Set\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@DummyRNA_DEFAULT_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"Keying Set\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"The Keying Set to use\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"confirm_success\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Confirm Successful Insert\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"Show a popup when the keyframes get successfully added\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Insert Keyframe Menu\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"ANIM_OT_keyframe_insert_menu\00", align 1
@.str.30 = private unnamed_addr constant [91 x i8] c"Insert Keyframes for specified Keying Set, with menu of available Keying Sets if undefined\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"always_prompt\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Always Show Menu\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Delete Keying-Set Keyframe\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"ANIM_OT_keyframe_delete\00", align 1
@.str.36 = private unnamed_addr constant [85 x i8] c"Delete keyframes on the current frame for all properties in the specified Keying Set\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"Confirm Successful Delete\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"Show a popup when the keyframes get successfully removed\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"Remove Animation\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"Remove all keyframe animation for selected objects\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"ANIM_OT_keyframe_clear_v3d\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Delete Keyframe\00", align 1
@.str.43 = private unnamed_addr constant [55 x i8] c"Remove keyframes on current frame for selected objects\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"ANIM_OT_keyframe_delete_v3d\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"Insert Keyframe (Buttons)\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"ANIM_OT_keyframe_insert_button\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"Insert a keyframe for current UI-active property\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.50 = private unnamed_addr constant [47 x i8] c"Insert a keyframe for all element of the array\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"Delete Keyframe (Buttons)\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"ANIM_OT_keyframe_delete_button\00", align 1
@.str.53 = private unnamed_addr constant [54 x i8] c"Delete current keyframe of current UI-active property\00", align 1
@.str.54 = private unnamed_addr constant [48 x i8] c"Delete keyframes from all elements of the array\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"Clear Keyframe (Buttons)\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"ANIM_OT_keyframe_clear_button\00", align 1
@.str.57 = private unnamed_addr constant [53 x i8] c"Clear all keyframes on the currently active property\00", align 1
@.str.58 = private unnamed_addr constant [47 x i8] c"Clear keyframes from all elements of the array\00", align 1
@RNA_Object = external global %struct.StructRNA, align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"%s failed: NULL identifier\0A\00", align 1
@__func__.visualkey_can_use = private unnamed_addr constant [18 x i8] c"visualkey_can_use\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"%s failed: identifier - '%s'\0A\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"rotation_euler\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"rotation_quaternion\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"rotation_axis_angle\00", align 1
@builtin_keyingsets = external global %struct.ListBase, align 8
@.str.67 = private unnamed_addr constant [21 x i8] c"No active keying set\00", align 1
@.str.68 = private unnamed_addr constant [50 x i8] c"Keying set '%s' - successfully added %d keyframes\00", align 1
@.str.69 = private unnamed_addr constant [47 x i8] c"No suitable context info for active keying set\00", align 1
@.str.70 = private unnamed_addr constant [52 x i8] c"Successfully added %d keyframes for keying set '%s'\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"Keying set failed to insert any keyframes\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"No active Keying Set\00", align 1
@.str.73 = private unnamed_addr constant [52 x i8] c"KeyingSet '%s' - Successfully removed %d Keyframes\0A\00", align 1
@.str.74 = private unnamed_addr constant [54 x i8] c"Successfully removed %d keyframes for keying set '%s'\00", align 1
@.str.75 = private unnamed_addr constant [42 x i8] c"Keying set failed to remove any keyframes\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"pose.bones[\00", align 1
@.str.77 = private unnamed_addr constant [59 x i8] c"Not deleting keyframe for locked F-Curve '%s', object '%s'\00", align 1
@.str.78 = private unnamed_addr constant [50 x i8] c"Object '%s' successfully had %d keyframes removed\00", align 1
@RNA_NlaStrip = external global %struct.StructRNA, align 1
@.str.79 = private unnamed_addr constant [92 x i8] c"Failed to resolve path to property, try manually specifying this using a Keying Set instead\00", align 1
@.str.80 = private unnamed_addr constant [33 x i8] c"\22%s\22 property cannot be animated\00", align 1
@.str.81 = private unnamed_addr constant [91 x i8] c"Button doesn't appear to have any property information attached (ptr.data = %p, prop = %p)\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"ptr.data = %p, prop = %p\0A\00", align 1
@.str.85 = private unnamed_addr constant [87 x i8] c"Could not clear keyframe, as RNA path is invalid for the given ID (ID = %s, path = %s)\00", align 1
@str = private unnamed_addr constant [39 x i8] c"Button Delete-Key: no path to property\00", align 1
@str.87 = private unnamed_addr constant [38 x i8] c"Button Clear-Key: no path to property\00", align 1
@str.88 = private unnamed_addr constant [50 x i8] c"WARNING: not deleting keyframe for locked F-Curve\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @ANIM_get_keyframing_flags(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 22
  %8 = load i16, ptr %7, align 2, !tbaa !62
  %9 = and i16 %8, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %19

15:                                               ; preds = %2
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %17 = and i16 %16, 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11, %4
  br label %20

20:                                               ; preds = %19, %15, %11
  %21 = phi i16 [ 2, %19 ], [ 0, %11 ], [ 0, %15 ]
  br i1 %3, label %33, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 22
  %26 = load i16, ptr %25, align 2, !tbaa !62
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %31 = and i16 %30, 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %39, label %37

33:                                               ; preds = %20
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33, %29, %22
  %38 = or disjoint i16 %21, 1
  br label %39

39:                                               ; preds = %37, %33, %29
  %40 = phi i16 [ %38, %37 ], [ %21, %29 ], [ %21, %33 ]
  br i1 %3, label %52, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.ToolSettings, ptr %43, i64 0, i32 22
  %45 = load i16, ptr %44, align 2, !tbaa !62
  %46 = and i16 %45, 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %50 = and i16 %49, 8
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %58, label %56

52:                                               ; preds = %39
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %54 = and i16 %53, 8
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52, %48, %41
  %57 = or i16 %40, 32
  br label %58

58:                                               ; preds = %56, %52, %48
  %59 = phi i16 [ %57, %56 ], [ %40, %48 ], [ %40, %52 ]
  %60 = icmp eq i16 %1, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  br i1 %3, label %68, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct.ToolSettings, ptr %64, i64 0, i32 21
  %66 = load i16, ptr %65, align 8, !tbaa !73
  %67 = icmp eq i16 %66, 5
  br i1 %67, label %71, label %73

68:                                               ; preds = %61
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !74
  %70 = icmp eq i16 %69, 5
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %62
  %72 = or i16 %59, 16
  br label %73

73:                                               ; preds = %62, %68, %71, %58
  %74 = phi i16 [ %72, %71 ], [ %59, %62 ], [ %59, %68 ], [ %59, %58 ]
  ret i16 %74
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @verify_adt_action(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #2 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #12
  %5 = icmp eq ptr %4, null
  %6 = icmp ne i16 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call ptr @BKE_id_add_animdata(ptr noundef %0) #12
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %4, %2 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = icmp eq ptr %0, null
  %15 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %16 = select i1 %14, ptr @.str.1, ptr %15
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %16)
  br label %33

18:                                               ; preds = %10
  %19 = load ptr, ptr %11, align 8, !tbaa !75
  %20 = icmp eq ptr %19, null
  %21 = and i1 %6, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %23 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %24 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %25 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #12
  %26 = load ptr, ptr @G, align 8, !tbaa !77
  %27 = call ptr @add_empty_action(ptr noundef %26, ptr noundef nonnull %3) #12
  store ptr %27, ptr %11, align 8, !tbaa !75
  %28 = load i16, ptr %23, align 8, !tbaa !79
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.bAction, ptr %27, i64 0, i32 7
  store i32 %29, ptr %30, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %31

31:                                               ; preds = %22, %18
  %32 = load ptr, ptr %11, align 8, !tbaa !75
  br label %33

33:                                               ; preds = %31, %13
  %34 = phi ptr [ null, %13 ], [ %32, %31 ]
  ret ptr %34
}

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @add_empty_action(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @verify_fcurve(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i16 noundef signext %5) local_unnamed_addr #2 {
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %3, null
  %9 = or i1 %7, %8
  br i1 %9, label %57, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %12 = tail call ptr @list_find_fcurve(ptr noundef nonnull %11, ptr noundef %3, i32 noundef %4) #12
  %13 = icmp eq ptr %12, null
  %14 = icmp ne i16 %5, 0
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %57

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !82
  %18 = tail call ptr %17(i64 noundef 112, ptr noundef nonnull @.str.3) #12
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 9
  store i16 3, ptr %19, align 8, !tbaa !83
  %20 = load ptr, ptr %11, align 8, !tbaa !85
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, i16 7, i16 3
  store i16 %22, ptr %19, align 8
  %23 = tail call ptr @BLI_strdup(ptr noundef %3) #12
  %24 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 12
  store ptr %23, ptr %24, align 8, !tbaa !86
  %25 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 11
  store i32 %4, ptr %25, align 4, !tbaa !87
  %26 = icmp eq ptr %1, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %16
  %28 = tail call ptr @BKE_action_group_find_name(ptr noundef %0, ptr noundef nonnull %1) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = tail call ptr @action_groups_add_new(ptr noundef %0, ptr noundef nonnull %1) #12
  %32 = icmp eq ptr %2, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !88
  %36 = icmp eq ptr %35, @RNA_PoseBone
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load ptr, ptr %2, align 8, !tbaa !91
  %39 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !92
  %41 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !93
  %43 = getelementptr inbounds %struct.bPose, ptr %42, i64 0, i32 9
  %44 = getelementptr inbounds %struct.bPoseChannel, ptr %40, i64 0, i32 8
  %45 = load i16, ptr %44, align 2, !tbaa !96
  %46 = sext i16 %45 to i32
  %47 = add nsw i32 %46, -1
  %48 = tail call ptr @BLI_findlink(ptr noundef nonnull %43, i32 noundef %47) #12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.bActionGroup, ptr %48, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !98
  %53 = getelementptr inbounds %struct.bActionGroup, ptr %31, i64 0, i32 4
  store i32 %52, ptr %53, align 4, !tbaa !98
  tail call void @action_group_colors_sync(ptr noundef %31, ptr noundef nonnull %48) #12
  br label %54

54:                                               ; preds = %37, %50, %30, %33, %27
  %55 = phi ptr [ %31, %33 ], [ %31, %30 ], [ %28, %27 ], [ %31, %50 ], [ %31, %37 ]
  tail call void @action_groups_add_channel(ptr noundef %0, ptr noundef %55, ptr noundef %18) #12
  br label %57

56:                                               ; preds = %16
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %18) #12
  br label %57

57:                                               ; preds = %10, %56, %54, %6
  %58 = phi ptr [ null, %6 ], [ %18, %54 ], [ %18, %56 ], [ %12, %10 ]
  ret ptr %58
}

declare ptr @list_find_fcurve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_action_group_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @action_groups_add_new(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @action_group_colors_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @action_groups_add_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @update_autoflags_fcurve(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !83
  %9 = load ptr, ptr %3, align 8, !tbaa !91
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.4) #12
  br label %41

16:                                               ; preds = %11, %4
  %17 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %3, ptr noundef %18, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load ptr, ptr %3, align 8, !tbaa !91
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 4
  %25 = select i1 %23, ptr @.str.5, ptr %24
  %26 = load ptr, ptr %17, align 8, !tbaa !86
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef nonnull %25, ptr noundef %26) #12
  br label %41

27:                                               ; preds = %16
  %28 = load ptr, ptr %6, align 8, !tbaa !82
  %29 = load i16, ptr %7, align 8, !tbaa !83
  %30 = and i16 %29, -6145
  store i16 %30, ptr %7, align 8, !tbaa !83
  %31 = call i32 @RNA_property_type(ptr noundef %28) #12
  switch i32 %31, label %32 [
    i32 2, label %37
    i32 1, label %33
  ]

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %27, %32
  %34 = phi i16 [ 6144, %32 ], [ 2048, %27 ]
  %35 = load i16, ptr %7, align 8, !tbaa !83
  %36 = or i16 %35, %34
  store i16 %36, ptr %7, align 8, !tbaa !83
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i16, ptr %7, align 8, !tbaa !83
  %39 = icmp eq i16 %8, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 239468545, ptr noundef null) #12
  br label %41

41:                                               ; preds = %37, %40, %21, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret void
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @insert_bezt_fcurve(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = icmp eq ptr %6, null
  br i1 %7, label %83, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !102
  %11 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !103
  %13 = call i32 @binarysearch_bezt_index(ptr noundef nonnull %6, float noundef %10, i32 noundef %12, ptr noundef nonnull %4) #12
  %14 = load i8, ptr %4, align 1, !tbaa !104
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %8
  %17 = icmp sgt i32 %13, -1
  br i1 %17, label %18, label %82

18:                                               ; preds = %16
  %19 = load i32, ptr %11, align 8, !tbaa !103
  %20 = icmp ult i32 %13, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %18
  %22 = and i16 %2, 128
  %23 = icmp eq i16 %22, 0
  %24 = load ptr, ptr %5, align 8, !tbaa !101
  %25 = zext nneg i32 %13 to i64
  %26 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 %25
  br i1 %23, label %28, label %27

27:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %26, ptr noundef nonnull align 4 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !105
  br label %82

28:                                               ; preds = %21
  %29 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !102
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %26, i64 0, i64 1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !102
  %33 = fsub float %30, %32
  %34 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !102
  %36 = fadd float %35, %33
  store float %36, ptr %34, align 4, !tbaa !102
  %37 = fadd float %32, %33
  store float %37, ptr %31, align 4, !tbaa !102
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %26, i64 0, i64 2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !102
  %40 = fadd float %33, %39
  store float %40, ptr %38, align 4, !tbaa !102
  %41 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %42 = load i8, ptr %41, align 1, !tbaa !106
  %43 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 %25, i32 7
  store i8 %42, ptr %43, align 1, !tbaa !106
  %44 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %45 = load i8, ptr %44, align 4, !tbaa !108
  %46 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 %25, i32 8
  store i8 %45, ptr %46, align 4, !tbaa !108
  %47 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %48 = load i8, ptr %47, align 1, !tbaa !109
  %49 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 %25, i32 9
  store i8 %48, ptr %49, align 1, !tbaa !109
  br label %82

50:                                               ; preds = %8
  %51 = and i16 %2, 16
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !82
  %55 = load i32, ptr %11, align 8, !tbaa !103
  %56 = add i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = mul nuw nsw i64 %57, 72
  %59 = call ptr %54(i64 noundef %58, ptr noundef nonnull @.str.7) #12
  %60 = icmp sgt i32 %13, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load ptr, ptr %5, align 8, !tbaa !101
  %63 = zext nneg i32 %13 to i64
  %64 = mul nuw nsw i64 %63, 72
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %59, ptr align 4 %62, i64 %64, i1 false)
  br label %65

65:                                               ; preds = %61, %53
  %66 = sext i32 %13 to i64
  %67 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 %66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %67, ptr noundef nonnull align 4 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !105
  %68 = load i32, ptr %11, align 8, !tbaa !103
  %69 = icmp ult i32 %13, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 1
  %72 = load ptr, ptr %5, align 8, !tbaa !101
  %73 = getelementptr inbounds %struct.BezTriple, ptr %72, i64 %66
  %74 = sub i32 %68, %13
  %75 = zext i32 %74 to i64
  %76 = mul nuw nsw i64 %75, 72
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %71, ptr align 4 %73, i64 %76, i1 false)
  br label %77

77:                                               ; preds = %70, %65
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  %79 = load ptr, ptr %5, align 8, !tbaa !101
  call void %78(ptr noundef %79) #12
  store ptr %59, ptr %5, align 8, !tbaa !101
  %80 = load i32, ptr %11, align 8, !tbaa !103
  %81 = add i32 %80, 1
  store i32 %81, ptr %11, align 8, !tbaa !103
  br label %82

82:                                               ; preds = %50, %77, %16, %18, %28, %27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  br label %94

83:                                               ; preds = %3
  %84 = and i16 %2, 16
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !110
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !82
  %92 = tail call ptr %91(i64 noundef 72, ptr noundef nonnull @.str.7) #12
  store ptr %92, ptr %5, align 8, !tbaa !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %92, ptr noundef nonnull align 4 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !105
  %93 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  store i32 1, ptr %93, align 8, !tbaa !103
  br label %94

94:                                               ; preds = %82, %90, %83, %86
  %95 = phi i32 [ -1, %86 ], [ -1, %83 ], [ %13, %82 ], [ 0, %90 ]
  ret i32 %95
}

declare i32 @binarysearch_bezt_index(ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @insert_vert_fcurve(ptr noundef %0, float noundef %1, float noundef %2, i16 noundef signext %3) local_unnamed_addr #2 {
  %5 = alloca %struct.BezTriple, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i64 72, i1 false)
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = fadd float %1, -1.000000e+00
  store float %8, ptr %5, align 4, !tbaa !102
  %9 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %2, ptr %9, align 4, !tbaa !102
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  store float %1, ptr %10, align 4, !tbaa !102
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store float %2, ptr %11, align 4, !tbaa !102
  %12 = fadd float %1, 1.000000e+00
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  store float %12, ptr %13, align 4, !tbaa !102
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  store float %2, ptr %14, align 4, !tbaa !102
  %15 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 9
  store i8 1, ptr %15, align 1, !tbaa !109
  %16 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 8
  store i8 1, ptr %16, align 4, !tbaa !108
  %17 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 7
  store i8 1, ptr %17, align 1, !tbaa !106
  %18 = zext i16 %3 to i32
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 6
  store i8 4, ptr %22, align 2, !tbaa !111
  %23 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 5
  store i8 4, ptr %23, align 1, !tbaa !112
  br label %29

24:                                               ; preds = %4
  %25 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 76), align 1, !tbaa !113
  %26 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 6
  store i8 %25, ptr %26, align 2, !tbaa !111
  %27 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 5
  store i8 %25, ptr %27, align 1, !tbaa !112
  %28 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 75), align 4, !tbaa !114
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i8 [ %28, %24 ], [ 2, %21 ]
  %31 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 4
  store i8 %30, ptr %31, align 4, !tbaa !115
  %32 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %33 = load i16, ptr %32, align 8, !tbaa !83
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 4096
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 4
  br i1 %36, label %38, label %45

38:                                               ; preds = %29
  %39 = load i8, ptr %37, align 4, !tbaa !115
  %40 = icmp ne i8 %39, 2
  %41 = and i32 %34, 2048
  %42 = icmp eq i32 %41, 0
  %43 = or i1 %42, %40
  %44 = select i1 %43, i8 %39, i8 1
  br label %45

45:                                               ; preds = %29, %38
  %46 = phi i8 [ %44, %38 ], [ 0, %29 ]
  store i8 %46, ptr %37, align 4
  %47 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 12
  store float 0x3FFB39AC00000000, ptr %47, align 4, !tbaa !116
  %48 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 13
  store float 0x3FE99999A0000000, ptr %48, align 4, !tbaa !117
  %49 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 14
  store float 0x4010666660000000, ptr %49, align 4, !tbaa !118
  %50 = call i32 @insert_bezt_fcurve(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext %3)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %45
  %53 = and i32 %18, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @calchandles_fcurve(ptr noundef %0) #12
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, ptr %6, align 8, !tbaa !103
  %58 = icmp ugt i32 %57, 2
  %59 = and i32 %18, 16
  %60 = icmp eq i32 %59, 0
  %61 = and i1 %60, %58
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = icmp ugt i32 %57, %7
  br i1 %63, label %64, label %74

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !101
  %67 = zext nneg i32 %50 to i64
  %68 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 %67
  %69 = icmp eq i32 %50, 0
  %70 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 %67, i32 4
  %71 = select i1 %69, i64 1, i64 -1
  %72 = getelementptr %struct.BezTriple, ptr %68, i64 %71, i32 4
  %73 = load i8, ptr %72, align 4, !tbaa !115
  store i8 %73, ptr %70, align 4, !tbaa !115
  br label %74

74:                                               ; preds = %64, %62
  br i1 %54, label %75, label %76

75:                                               ; preds = %74
  tail call void @calchandles_fcurve(ptr noundef %0) #12
  br label %76

76:                                               ; preds = %56, %75, %74, %45
  %77 = phi i32 [ -1, %45 ], [ %50, %74 ], [ %50, %75 ], [ %50, %56 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #12
  ret i32 %77
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @insert_keyframe_direct(ptr noundef %0, ptr noundef byval(%struct.PointerRNA) align 8 %1, ptr noundef %2, ptr noundef %3, float noundef %4, i16 noundef signext %5) local_unnamed_addr #2 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca float, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca ptr, align 8
  %15 = alloca %struct.PointerRNA, align 8
  store ptr %2, ptr %14, align 8, !tbaa !82
  %16 = icmp eq ptr %3, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.8) #12
  br label %384

18:                                               ; preds = %6
  %19 = tail call zeroext i8 @fcurve_is_keyframable(ptr noundef nonnull %3) #12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 11
  %25 = load i32, ptr %24, align 4, !tbaa !87
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef %23, i32 noundef %25) #12
  br label %384

26:                                               ; preds = %18
  %27 = load ptr, ptr %1, align 8, !tbaa !91
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.10) #12
  br label %384

34:                                               ; preds = %26
  %35 = load ptr, ptr %14, align 8, !tbaa !82
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #12
  %38 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  %40 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %1, ptr noundef %39, ptr noundef nonnull %15, ptr noundef nonnull %14) #12
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load ptr, ptr %1, align 8
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 4
  %46 = select i1 %44, ptr @.str.5, ptr %45
  %47 = load ptr, ptr %38, align 8, !tbaa !86
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef nonnull %46, ptr noundef %47) #12
  br label %49

48:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !119
  br label %49

49:                                               ; preds = %48, %42
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #12
  br i1 %41, label %384, label %50

50:                                               ; preds = %49, %34
  %51 = load ptr, ptr %14, align 8, !tbaa !82
  %52 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 9
  %53 = load i16, ptr %52, align 8, !tbaa !83
  %54 = and i16 %53, -6145
  store i16 %54, ptr %52, align 8, !tbaa !83
  %55 = call i32 @RNA_property_type(ptr noundef %51) #12
  switch i32 %55, label %56 [
    i32 2, label %61
    i32 1, label %57
  ]

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %50, %56
  %58 = phi i16 [ 6144, %56 ], [ 2048, %50 ]
  %59 = load i16, ptr %52, align 8, !tbaa !83
  %60 = or i16 %59, %58
  store i16 %60, ptr %52, align 8, !tbaa !83
  br label %61

61:                                               ; preds = %57, %50
  %62 = zext i16 %5 to i32
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %247, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %14, align 8, !tbaa !82
  %67 = load ptr, ptr %29, align 8, !tbaa !92
  %68 = icmp eq ptr %67, null
  %69 = icmp eq ptr %66, null
  %70 = or i1 %69, %68
  br i1 %70, label %247, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !88
  %74 = icmp eq ptr %73, @RNA_Object
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 128
  %77 = load ptr, ptr %76, align 8, !tbaa !120
  %78 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 106
  %79 = load ptr, ptr %78, align 8, !tbaa !121
  %80 = call ptr @RNA_property_identifier(ptr noundef %66) #12
  %81 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 9
  %82 = load ptr, ptr %81, align 8, !tbaa !122
  %83 = icmp ne ptr %82, null
  %84 = icmp eq ptr %77, null
  br i1 %84, label %99, label %85

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.RigidBodyOb, ptr %77, i64 0, i32 2
  %87 = load i16, ptr %86, align 8, !tbaa !123
  %88 = icmp eq i16 %87, 0
  %89 = zext i1 %88 to i32
  br label %99

90:                                               ; preds = %71
  %91 = icmp eq ptr %73, @RNA_PoseBone
  br i1 %91, label %92, label %99

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.bPoseChannel, ptr %67, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !125
  %95 = call ptr @RNA_property_identifier(ptr noundef %66) #12
  %96 = getelementptr inbounds %struct.bPoseChannel, ptr %67, i64 0, i32 13
  %97 = load ptr, ptr %96, align 8, !tbaa !126
  %98 = icmp ne ptr %97, null
  br label %99

99:                                               ; preds = %75, %85, %92, %90
  %100 = phi i32 [ 0, %92 ], [ 0, %90 ], [ 0, %75 ], [ %89, %85 ]
  %101 = phi i1 [ %98, %92 ], [ false, %90 ], [ %83, %75 ], [ %83, %85 ]
  %102 = phi ptr [ %95, %92 ], [ null, %90 ], [ %80, %75 ], [ %80, %85 ]
  %103 = phi ptr [ %94, %92 ], [ null, %90 ], [ %79, %75 ], [ %79, %85 ]
  %104 = icmp eq ptr %103, null
  %105 = icmp eq ptr %102, null
  %106 = select i1 %104, i1 true, i1 %105
  %107 = xor i1 %101, true
  %108 = select i1 %106, i1 %107, i1 false
  %109 = icmp eq i32 %100, 0
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %247, label %111

111:                                              ; preds = %99
  br i1 %105, label %112, label %114

112:                                              ; preds = %111
  %113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef nonnull @__func__.visualkey_can_use)
  br label %247

114:                                              ; preds = %111
  %115 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %102, ptr noundef nonnull dereferenceable(1) @.str.60) #13
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %102, ptr noundef nonnull dereferenceable(1) @.str.61) #13
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %102, ptr noundef nonnull dereferenceable(1) @.str.62) #13
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, ptr noundef nonnull @__func__.visualkey_can_use, ptr noundef nonnull %102)
  br label %247

125:                                              ; preds = %120, %117, %114
  %126 = phi i1 [ false, %114 ], [ true, %117 ], [ false, %120 ]
  %127 = phi i1 [ false, %114 ], [ false, %117 ], [ true, %120 ]
  %128 = icmp ne i32 %100, 0
  %129 = select i1 %101, i1 true, i1 %128
  br i1 %129, label %159, label %130

130:                                              ; preds = %125
  %131 = icmp eq ptr %103, null
  br i1 %131, label %247, label %132

132:                                              ; preds = %130, %156
  %133 = phi ptr [ %157, %156 ], [ %103, %130 ]
  %134 = getelementptr inbounds %struct.bConstraint, ptr %133, i64 0, i32 4
  %135 = load i16, ptr %134, align 2, !tbaa !127
  %136 = and i16 %135, 4
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.bConstraint, ptr %133, i64 0, i32 9
  %140 = load float, ptr %139, align 8, !tbaa !129
  %141 = fcmp oeq float %140, 0.000000e+00
  br i1 %141, label %156, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.bConstraint, ptr %133, i64 0, i32 3
  %144 = load i16, ptr %143, align 8, !tbaa !130
  switch i16 %144, label %156 [
    i16 1, label %159
    i16 19, label %159
    i16 23, label %159
    i16 4, label %159
    i16 3, label %159
    i16 2, label %145
    i16 21, label %146
    i16 5, label %147
    i16 6, label %148
    i16 7, label %149
    i16 14, label %150
    i16 8, label %151
    i16 9, label %152
    i16 10, label %153
    i16 13, label %154
    i16 16, label %155
  ]

145:                                              ; preds = %142
  br i1 %126, label %159, label %156

146:                                              ; preds = %142
  br i1 %126, label %159, label %156

147:                                              ; preds = %142
  br i1 %126, label %159, label %156

148:                                              ; preds = %142
  br i1 %116, label %156, label %159

149:                                              ; preds = %142
  br i1 %127, label %159, label %156

150:                                              ; preds = %142
  br i1 %116, label %156, label %159

151:                                              ; preds = %142
  br i1 %126, label %159, label %156

152:                                              ; preds = %142
  br i1 %116, label %156, label %159

153:                                              ; preds = %142
  br i1 %127, label %159, label %156

154:                                              ; preds = %142
  br i1 %126, label %159, label %156

155:                                              ; preds = %142
  br i1 %116, label %156, label %159

156:                                              ; preds = %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %142, %138, %132
  %157 = load ptr, ptr %133, align 8, !tbaa !131
  %158 = icmp eq ptr %157, null
  br i1 %158, label %247, label %132, !llvm.loop !132

159:                                              ; preds = %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %142, %142, %142, %142, %142, %125
  %160 = load ptr, ptr %14, align 8, !tbaa !82
  %161 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 11
  %162 = load i32, ptr %161, align 4, !tbaa !87
  %163 = call ptr @RNA_property_identifier(ptr noundef %160) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  %164 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !88
  %166 = icmp eq ptr %165, @RNA_Object
  br i1 %166, label %167, label %182

167:                                              ; preds = %159
  %168 = load ptr, ptr %29, align 8, !tbaa !92
  %169 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) @.str.60) #13
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = sext i32 %162 to i64
  %173 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 47, i64 3, i64 %172
  %174 = load float, ptr %173, align 4, !tbaa !102
  br label %179

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %176) #12
  %177 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 83
  %178 = load i16, ptr %177, align 8, !tbaa !135
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi i16 [ undef, %171 ], [ %178, %175 ]
  %181 = phi float [ %174, %171 ], [ undef, %175 ]
  br i1 %170, label %211, label %245

182:                                              ; preds = %159
  %183 = icmp eq ptr %165, @RNA_PoseBone
  br i1 %183, label %184, label %209

184:                                              ; preds = %182
  %185 = load ptr, ptr %29, align 8, !tbaa !92
  %186 = getelementptr inbounds %struct.bPoseChannel, ptr %185, i64 0, i32 29
  call void @BKE_armature_mat_pose_to_bone(ptr noundef %185, ptr noundef nonnull %186, ptr noundef nonnull %7) #12
  %187 = getelementptr inbounds %struct.bPoseChannel, ptr %185, i64 0, i32 26
  %188 = load i16, ptr %187, align 4, !tbaa !136
  %189 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) @.str.60) #13
  %190 = icmp eq ptr %189, null
  br i1 %190, label %206, label %191

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.bPoseChannel, ptr %185, i64 0, i32 12
  %193 = load ptr, ptr %192, align 8, !tbaa !137
  %194 = getelementptr inbounds %struct.Bone, ptr %193, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !138
  %196 = icmp eq ptr %195, null
  br i1 %196, label %202, label %197

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.Bone, ptr %193, i64 0, i32 10
  %199 = load i32, ptr %198, align 8, !tbaa !140
  %200 = and i32 %199, 16
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197, %191
  %203 = sext i32 %162 to i64
  %204 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 %203
  %205 = load float, ptr %204, align 4, !tbaa !102
  br label %206

206:                                              ; preds = %202, %197, %184
  %207 = phi i1 [ false, %202 ], [ true, %197 ], [ true, %184 ]
  %208 = phi float [ %205, %202 ], [ undef, %197 ], [ undef, %184 ]
  br i1 %207, label %211, label %245

209:                                              ; preds = %182
  %210 = call fastcc float @setting_get_rna_value(ptr noundef nonnull %1, ptr noundef %160, i32 noundef %162)
  br label %245

211:                                              ; preds = %206, %179
  %212 = phi i16 [ %180, %179 ], [ %188, %206 ]
  %213 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) @.str.64) #13
  %214 = icmp eq ptr %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @mat4_to_eulO(ptr noundef nonnull %8, i16 noundef signext %212, ptr noundef nonnull %7) #12
  %216 = sext i32 %162 to i64
  %217 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %216
  %218 = load float, ptr %217, align 4, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  br label %245

219:                                              ; preds = %211
  %220 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) @.str.65) #13
  %221 = icmp eq ptr %220, null
  br i1 %221, label %226, label %222

222:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %7) #12
  call void @mat3_to_quat_is_ok(ptr noundef nonnull %10, ptr noundef nonnull %9) #12
  %223 = sext i32 %162 to i64
  %224 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 %223
  %225 = load float, ptr %224, align 4, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #12
  br label %245

226:                                              ; preds = %219
  %227 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) @.str.66) #13
  %228 = icmp eq ptr %227, null
  br i1 %228, label %236, label %229

229:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  call void @mat4_to_axis_angle(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %7) #12
  %230 = icmp eq i32 %162, 0
  %231 = add nsw i32 %162, -1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 %232
  %234 = select i1 %230, ptr %12, ptr %233
  %235 = load float, ptr %234, align 4, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  br label %245

236:                                              ; preds = %226
  %237 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) @.str.62) #13
  %238 = icmp eq ptr %237, null
  br i1 %238, label %243, label %239

239:                                              ; preds = %236
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  call void @mat4_to_size(ptr noundef nonnull %13, ptr noundef nonnull %7) #12
  %240 = sext i32 %162 to i64
  %241 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %240
  %242 = load float, ptr %241, align 4, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  br label %245

243:                                              ; preds = %236
  %244 = call fastcc float @setting_get_rna_value(ptr noundef nonnull %1, ptr noundef %160, i32 noundef %162)
  br label %245

245:                                              ; preds = %179, %206, %209, %215, %222, %229, %239, %243
  %246 = phi float [ %218, %215 ], [ %225, %222 ], [ %235, %229 ], [ %242, %239 ], [ %244, %243 ], [ %181, %179 ], [ %208, %206 ], [ %210, %209 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  br label %252

247:                                              ; preds = %156, %130, %112, %123, %65, %99, %61
  %248 = load ptr, ptr %14, align 8, !tbaa !82
  %249 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 11
  %250 = load i32, ptr %249, align 4, !tbaa !87
  %251 = call fastcc float @setting_get_rna_value(ptr noundef nonnull %1, ptr noundef %248, i32 noundef %250)
  br label %252

252:                                              ; preds = %247, %245
  %253 = phi float [ %246, %245 ], [ %251, %247 ]
  %254 = and i32 %62, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %382, label %256

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 7
  %258 = load i32, ptr %257, align 8, !tbaa !103
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %369, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 5
  %262 = icmp sgt i32 %258, 0
  br i1 %262, label %263, label %345

263:                                              ; preds = %260
  %264 = load ptr, ptr %261, align 8, !tbaa !101
  %265 = icmp eq i32 %258, 1
  %266 = add nsw i32 %258, -1
  br label %267

267:                                              ; preds = %263, %342
  %268 = phi i16 [ undef, %263 ], [ %341, %342 ]
  %269 = phi i32 [ 0, %263 ], [ %343, %342 ]
  %270 = phi ptr [ %264, %263 ], [ %339, %342 ]
  %271 = phi ptr [ null, %263 ], [ %338, %342 ]
  %272 = getelementptr inbounds [3 x [3 x float]], ptr %270, i64 0, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !102
  %274 = getelementptr inbounds [3 x [3 x float]], ptr %270, i64 0, i64 1, i64 1
  %275 = load float, ptr %274, align 4, !tbaa !102
  %276 = icmp eq ptr %271, null
  br i1 %276, label %330, label %277

277:                                              ; preds = %267
  %278 = getelementptr inbounds [3 x [3 x float]], ptr %271, i64 0, i64 1
  %279 = load float, ptr %278, align 4, !tbaa !102
  %280 = getelementptr inbounds [3 x [3 x float]], ptr %271, i64 0, i64 1, i64 1
  %281 = load float, ptr %280, align 4, !tbaa !102
  %282 = fsub float %279, %4
  %283 = call float @llvm.fabs.f32(float %282)
  %284 = fcmp ult float %283, 0x3E80000000000000
  br i1 %284, label %285, label %293

285:                                              ; preds = %277
  %286 = fsub float %273, %4
  %287 = call float @llvm.fabs.f32(float %286)
  %288 = fcmp ult float %287, 0x3E80000000000000
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = fsub float %273, %279
  %291 = call float @llvm.fabs.f32(float %290)
  %292 = fcmp ult float %291, 0x3E80000000000000
  br i1 %292, label %337, label %293

293:                                              ; preds = %289, %285, %277
  %294 = fcmp ugt float %279, %4
  %295 = fcmp ult float %273, %4
  %296 = select i1 %294, i1 true, i1 %295
  br i1 %296, label %315, label %297

297:                                              ; preds = %293
  %298 = fsub float %281, %253
  %299 = call float @llvm.fabs.f32(float %298)
  %300 = fcmp ult float %299, 0x3E80000000000000
  br i1 %300, label %301, label %309

301:                                              ; preds = %297
  %302 = fsub float %275, %253
  %303 = call float @llvm.fabs.f32(float %302)
  %304 = fcmp ult float %303, 0x3E80000000000000
  br i1 %304, label %305, label %309

305:                                              ; preds = %301
  %306 = fsub float %281, %275
  %307 = call float @llvm.fabs.f32(float %306)
  %308 = fcmp ult float %307, 0x3E80000000000000
  br i1 %308, label %337, label %309

309:                                              ; preds = %305, %301, %297
  %310 = call float @evaluate_fcurve(ptr noundef nonnull %3, float noundef %4) #12
  %311 = fsub float %310, %253
  %312 = call float @llvm.fabs.f32(float %311)
  %313 = fcmp oge float %312, 0x3E80000000000000
  %314 = zext i1 %313 to i16
  br label %337

315:                                              ; preds = %293
  %316 = fcmp ogt float %279, %4
  br i1 %316, label %317, label %333

317:                                              ; preds = %315
  %318 = fsub float %281, %253
  %319 = call float @llvm.fabs.f32(float %318)
  %320 = fcmp ult float %319, 0x3E80000000000000
  br i1 %320, label %321, label %329

321:                                              ; preds = %317
  %322 = fsub float %275, %253
  %323 = call float @llvm.fabs.f32(float %322)
  %324 = fcmp ult float %323, 0x3E80000000000000
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = fsub float %281, %275
  %327 = call float @llvm.fabs.f32(float %326)
  %328 = fcmp ult float %327, 0x3E80000000000000
  br i1 %328, label %337, label %329

329:                                              ; preds = %325, %321, %317
  br label %337

330:                                              ; preds = %267
  %331 = fcmp ogt float %273, %4
  %332 = and i1 %265, %331
  br i1 %332, label %337, label %333

333:                                              ; preds = %330, %315
  %334 = icmp slt i32 %269, %266
  br i1 %334, label %335, label %337

335:                                              ; preds = %333
  %336 = getelementptr inbounds %struct.BezTriple, ptr %270, i64 1
  br label %337

337:                                              ; preds = %335, %333, %330, %329, %325, %309, %305, %289
  %338 = phi ptr [ %271, %309 ], [ %271, %329 ], [ %270, %335 ], [ %271, %289 ], [ %271, %305 ], [ %271, %325 ], [ null, %330 ], [ %271, %333 ]
  %339 = phi ptr [ %270, %309 ], [ %270, %329 ], [ %336, %335 ], [ %270, %289 ], [ %270, %305 ], [ %270, %325 ], [ %270, %330 ], [ %270, %333 ]
  %340 = phi i32 [ 1, %309 ], [ 1, %329 ], [ 0, %335 ], [ 1, %289 ], [ 1, %305 ], [ 1, %325 ], [ 1, %330 ], [ 2, %333 ]
  %341 = phi i16 [ %314, %309 ], [ 1, %329 ], [ %268, %335 ], [ 0, %289 ], [ 0, %305 ], [ 3, %325 ], [ 1, %330 ], [ %268, %333 ]
  switch i32 %340, label %369 [
    i32 0, label %342
    i32 2, label %345
  ]

342:                                              ; preds = %337
  %343 = add nuw nsw i32 %269, 1
  %344 = icmp eq i32 %343, %258
  br i1 %344, label %345, label %267, !llvm.loop !141

345:                                              ; preds = %342, %337, %260
  %346 = phi ptr [ null, %260 ], [ %338, %337 ], [ %338, %342 ]
  %347 = load ptr, ptr %261, align 8, !tbaa !101
  %348 = load i32, ptr %257, align 8, !tbaa !103
  %349 = add i32 %348, -1
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds %struct.BezTriple, ptr %347, i64 %350, i32 0, i64 1, i64 1
  %352 = load float, ptr %351, align 4, !tbaa !102
  %353 = icmp eq ptr %346, null
  br i1 %353, label %357, label %354

354:                                              ; preds = %345
  %355 = getelementptr inbounds [3 x [3 x float]], ptr %346, i64 0, i64 1, i64 1
  %356 = load float, ptr %355, align 4, !tbaa !102
  br label %359

357:                                              ; preds = %345
  %358 = fadd float %352, 1.000000e+00
  br label %359

359:                                              ; preds = %357, %354
  %360 = phi float [ %356, %354 ], [ %358, %357 ]
  %361 = fsub float %352, %253
  %362 = call float @llvm.fabs.f32(float %361)
  %363 = fcmp ult float %362, 0x3E80000000000000
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = fsub float %352, %360
  %366 = call float @llvm.fabs.f32(float %365)
  %367 = fcmp ult float %366, 0x3E80000000000000
  br i1 %367, label %369, label %368

368:                                              ; preds = %364, %359
  br label %369

369:                                              ; preds = %337, %256, %364, %368
  %370 = phi i16 [ 1, %368 ], [ 1, %256 ], [ 2, %364 ], [ %341, %337 ]
  %371 = icmp ne i16 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  %373 = call i32 @insert_vert_fcurve(ptr noundef nonnull %3, float noundef %4, float noundef %253, i16 noundef signext %5), !range !142
  br label %374

374:                                              ; preds = %372, %369
  switch i16 %370, label %380 [
    i16 2, label %375
    i16 3, label %378
  ]

375:                                              ; preds = %374
  %376 = load i32, ptr %257, align 8, !tbaa !103
  %377 = add i32 %376, -2
  br label %378

378:                                              ; preds = %374, %375
  %379 = phi i32 [ %377, %375 ], [ 1, %374 ]
  call void @delete_fcurve_key(ptr noundef nonnull %3, i32 noundef %379, i8 noundef zeroext 1) #12
  br label %380

380:                                              ; preds = %378, %374
  %381 = zext i1 %371 to i8
  br label %384

382:                                              ; preds = %252
  %383 = call i32 @insert_vert_fcurve(ptr noundef nonnull %3, float noundef %4, float noundef %253, i16 noundef signext %5), !range !142
  br label %384

384:                                              ; preds = %380, %49, %382, %33, %21, %17
  %385 = phi i8 [ 0, %17 ], [ 0, %21 ], [ 0, %33 ], [ 1, %382 ], [ 0, %49 ], [ %381, %380 ]
  ret i8 %385
}

declare zeroext i8 @fcurve_is_keyframable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc float @setting_get_rna_value(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = tail call i32 @RNA_property_type(ptr noundef %1) #12
  switch i32 %4, label %33 [
    i32 0, label %5
    i32 1, label %14
    i32 2, label %23
    i32 4, label %30
  ]

5:                                                ; preds = %3
  %6 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %1) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @RNA_property_boolean_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  %10 = sitofp i32 %9 to float
  br label %33

11:                                               ; preds = %5
  %12 = tail call i32 @RNA_property_boolean_get(ptr noundef %0, ptr noundef %1) #12
  %13 = sitofp i32 %12 to float
  br label %33

14:                                               ; preds = %3
  %15 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %1) #12
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @RNA_property_int_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  %19 = sitofp i32 %18 to float
  br label %33

20:                                               ; preds = %14
  %21 = tail call i32 @RNA_property_int_get(ptr noundef %0, ptr noundef %1) #12
  %22 = sitofp i32 %21 to float
  br label %33

23:                                               ; preds = %3
  %24 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %1) #12
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call float @RNA_property_float_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %33

28:                                               ; preds = %23
  %29 = tail call float @RNA_property_float_get(ptr noundef %0, ptr noundef %1) #12
  br label %33

30:                                               ; preds = %3
  %31 = tail call i32 @RNA_property_enum_get(ptr noundef %0, ptr noundef %1) #12
  %32 = sitofp i32 %31 to float
  br label %33

33:                                               ; preds = %3, %26, %28, %17, %20, %8, %11, %30
  %34 = phi float [ 0.000000e+00, %3 ], [ %32, %30 ], [ %27, %26 ], [ %29, %28 ], [ %19, %17 ], [ %22, %20 ], [ %10, %8 ], [ %13, %11 ]
  ret float %34
}

declare void @delete_fcurve_key(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local signext i16 @insert_keyframe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, float noundef %6, i16 noundef signext %7) local_unnamed_addr #2 {
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  store ptr null, ptr %11, align 8, !tbaa !82
  %12 = add nsw i32 %5, 1
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %4) #12
  br label %90

15:                                               ; preds = %8
  call void @RNA_id_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull %9) #12
  %16 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %9, ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %11) #12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef nonnull %19, ptr noundef %4) #12
  br label %90

20:                                               ; preds = %15
  %21 = icmp eq ptr %2, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = call ptr @verify_adt_action(ptr noundef nonnull %1, i16 noundef signext 1)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef nonnull %26, ptr noundef %4) #12
  br label %90

27:                                               ; preds = %22, %20
  %28 = phi ptr [ %23, %22 ], [ %2, %20 ]
  %29 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %1) #12
  %30 = call float @BKE_nla_tweakedit_remap(ptr noundef %29, float noundef %6, i16 noundef signext 1) #12
  %31 = icmp eq i32 %5, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load ptr, ptr %11, align 8, !tbaa !82
  %34 = call i32 @RNA_property_array_length(ptr noundef nonnull %10, ptr noundef %33) #12
  %35 = call i32 @llvm.umax.i32(i32 %34, i32 1)
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i32 [ %5, %27 ], [ 0, %32 ]
  %38 = phi i32 [ %12, %27 ], [ %35, %32 ]
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %36
  %41 = zext i16 %7 to i32
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i16
  %45 = and i32 %41, 32
  %46 = icmp eq i32 %45, 0
  br label %47

47:                                               ; preds = %40, %84
  %48 = phi i32 [ 0, %40 ], [ %85, %84 ]
  %49 = phi i32 [ %37, %40 ], [ %86, %84 ]
  %50 = call ptr @verify_fcurve(ptr noundef nonnull %28, ptr noundef %3, ptr noundef nonnull %10, ptr noundef %4, i32 noundef %49, i16 noundef signext %44)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %84, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.FCurve, ptr %50, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !103
  %55 = icmp ne i32 %54, 0
  %56 = or i1 %46, %55
  br i1 %56, label %79, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %11, align 8, !tbaa !82
  %59 = call i32 @RNA_property_subtype(ptr noundef %58) #12
  %60 = icmp eq i32 %59, 65557
  br i1 %60, label %77, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %11, align 8, !tbaa !82
  %63 = call i32 @RNA_property_subtype(ptr noundef %62) #12
  %64 = icmp eq i32 %63, 29
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %11, align 8, !tbaa !82
  %67 = call i32 @RNA_property_subtype(ptr noundef %66) #12
  %68 = icmp eq i32 %67, 327706
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %11, align 8, !tbaa !82
  %71 = call i32 @RNA_property_subtype(ptr noundef %70) #12
  %72 = icmp eq i32 %71, 20
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %11, align 8, !tbaa !82
  %75 = call i32 @RNA_property_subtype(ptr noundef %74) #12
  %76 = icmp eq i32 %75, 31
  br i1 %76, label %77, label %79

77:                                               ; preds = %73, %69, %65, %61, %57
  %78 = getelementptr inbounds %struct.FCurve, ptr %50, i64 0, i32 13
  store i32 1, ptr %78, align 8, !tbaa !143
  br label %79

79:                                               ; preds = %73, %77, %52
  %80 = load ptr, ptr %11, align 8, !tbaa !82
  %81 = call zeroext i8 @insert_keyframe_direct(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %10, ptr noundef %80, ptr noundef nonnull %50, float noundef %30, i16 noundef signext %7), !range !144
  %82 = zext nneg i8 %81 to i32
  %83 = add nsw i32 %48, %82
  br label %84

84:                                               ; preds = %47, %79
  %85 = phi i32 [ %83, %79 ], [ %48, %47 ]
  %86 = add i32 %49, 1
  %87 = icmp eq i32 %86, %38
  br i1 %87, label %88, label %47, !llvm.loop !145

88:                                               ; preds = %84
  %89 = trunc i32 %85 to i16
  br label %90

90:                                               ; preds = %36, %88, %25, %18, %14
  %91 = phi i16 [ 0, %14 ], [ 0, %18 ], [ 0, %25 ], [ 0, %36 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  ret i16 %91
}

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local signext i16 @delete_keyframe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5, float noundef %6, i16 signext %7) local_unnamed_addr #2 {
  %9 = alloca i8, align 1
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca ptr, align 8
  %13 = tail call ptr @BKE_animdata_from_id(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #12
  %14 = add nsw i32 %5, 1
  %15 = icmp eq ptr %1, null
  %16 = icmp eq ptr %13, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.15) #12
  br label %92

19:                                               ; preds = %8
  call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %10) #12
  %20 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %10, ptr noundef %4, ptr noundef nonnull %11, ptr noundef nonnull %12) #12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull %23, ptr noundef %4) #12
  br label %92

24:                                               ; preds = %19
  %25 = icmp eq ptr %2, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = load ptr, ptr %13, align 8, !tbaa !75
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %13, float noundef %6, i16 noundef signext 1) #12
  br label %33

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef nonnull %32) #12
  br label %92

33:                                               ; preds = %29, %24
  %34 = phi float [ %30, %29 ], [ %6, %24 ]
  %35 = phi ptr [ %27, %29 ], [ %2, %24 ]
  %36 = icmp eq i32 %5, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load ptr, ptr %12, align 8, !tbaa !82
  %39 = call i32 @RNA_property_array_length(ptr noundef nonnull %11, ptr noundef %38) #12
  %40 = call i32 @llvm.umax.i32(i32 %39, i32 1)
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %5, %33 ], [ 0, %37 ]
  %43 = phi i32 [ %14, %33 ], [ %40, %37 ]
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %41
  %46 = icmp eq ptr %4, null
  %47 = getelementptr inbounds %struct.bAction, ptr %35, i64 0, i32 1
  %48 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %49 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  br label %50

50:                                               ; preds = %45, %86
  %51 = phi i32 [ 0, %45 ], [ %87, %86 ]
  %52 = phi i32 [ %42, %45 ], [ %88, %86 ]
  br i1 %46, label %55, label %53

53:                                               ; preds = %50
  %54 = call ptr @list_find_fcurve(ptr noundef nonnull %47, ptr noundef nonnull %4, i32 noundef %52) #12
  br label %55

55:                                               ; preds = %50, %53
  %56 = phi ptr [ null, %50 ], [ %54, %53 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %86, label %58

58:                                               ; preds = %55
  %59 = call zeroext i8 @BKE_fcurve_is_protected(ptr noundef nonnull %56) #12
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.FCurve, ptr %56, i64 0, i32 12
  %63 = load ptr, ptr %62, align 8, !tbaa !86
  %64 = load i16, ptr %48, align 8, !tbaa !79
  %65 = sext i16 %64 to i32
  %66 = call ptr @BKE_idcode_to_name(i32 noundef %65) #12
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.18, ptr noundef %63, ptr noundef %66, ptr noundef nonnull %49) #12
  br label %86

67:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  %68 = getelementptr inbounds %struct.FCurve, ptr %56, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !101
  %70 = getelementptr inbounds %struct.FCurve, ptr %56, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !103
  %72 = call i32 @binarysearch_bezt_index(ptr noundef %69, float noundef %34, i32 noundef %71, ptr noundef nonnull %9) #12
  %73 = load i8, ptr %9, align 1, !tbaa !104
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  call void @delete_fcurve_key(ptr noundef nonnull %56, i32 noundef %72, i8 noundef zeroext 1) #12
  %76 = load i32, ptr %70, align 8, !tbaa !103
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.FCurve, ptr %56, i64 0, i32 4
  %80 = call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %79, i32 noundef 0, i16 noundef signext 3) #12
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef null, ptr noundef %13, ptr noundef nonnull %56) #12
  br label %83

83:                                               ; preds = %67, %75, %78, %82
  %84 = phi i32 [ 1, %82 ], [ 1, %78 ], [ 1, %75 ], [ 0, %67 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  %85 = add nsw i32 %84, %51
  br label %86

86:                                               ; preds = %55, %83, %61
  %87 = phi i32 [ %51, %61 ], [ %85, %83 ], [ %51, %55 ]
  %88 = add i32 %52, 1
  %89 = icmp eq i32 %88, %43
  br i1 %89, label %90, label %50, !llvm.loop !146

90:                                               ; preds = %86
  %91 = trunc i32 %87 to i16
  br label %92

92:                                               ; preds = %41, %90, %31, %22, %18
  %93 = phi i16 [ 0, %18 ], [ 0, %22 ], [ 0, %31 ], [ 0, %41 ], [ %91, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #12
  ret i16 %93
}

declare zeroext i8 @BKE_fcurve_is_protected(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_idcode_to_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_OT_keyframe_insert(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @insert_key_exec, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @modify_key_op_poll, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #12
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @ANIM_keying_sets_enum_itemf) #12
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #12
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !156
  %11 = load ptr, ptr %7, align 8, !tbaa !155
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #12
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 524288) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @insert_key_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.22) #12
  %8 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !159
  %10 = sitofp i32 %9 to float
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  %14 = load i32, ptr %13, align 4, !tbaa !160
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i32 [ %14, %12 ], [ %7, %2 ]
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 35
  %20 = add nsw i32 %16, -1
  %21 = tail call ptr @BLI_findlink(ptr noundef nonnull %19, i32 noundef %20) #12
  br label %25

22:                                               ; preds = %15
  %23 = xor i32 %16, -1
  %24 = tail call ptr @BLI_findlink(ptr noundef nonnull @builtin_keyingsets, i32 noundef %23) #12
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %21, %18 ], [ %24, %22 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %30, i32 noundef 32, ptr noundef nonnull @.str.67) #12
  br label %75

31:                                               ; preds = %25
  %32 = icmp eq ptr %4, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !162
  %36 = tail call zeroext i8 @ANIM_keyingset_find_id(ptr noundef nonnull %26, ptr noundef %35) #12
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void @ED_object_toggle_modes(ptr noundef %0, i32 noundef 1) #12
  br label %39

39:                                               ; preds = %38, %33, %31
  %40 = phi i1 [ false, %38 ], [ true, %33 ], [ true, %31 ]
  %41 = tail call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %26, i16 noundef signext 0, float noundef %10) #12
  %42 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !161
  %48 = getelementptr inbounds %struct.KeyingSet, ptr %26, i64 0, i32 4
  %49 = shl i32 %41, 16
  %50 = ashr exact i32 %49, 16
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %47, i32 noundef 2, ptr noundef nonnull @.str.68, ptr noundef nonnull %48, i32 noundef %50) #12
  br label %51

51:                                               ; preds = %45, %39
  br i1 %40, label %53, label %52

52:                                               ; preds = %51
  tail call void @ED_object_toggle_modes(ptr noundef %0, i32 noundef 1) #12
  br label %53

53:                                               ; preds = %52, %51
  %54 = shl i32 %41, 16
  %55 = ashr exact i32 %54, 16
  %56 = icmp eq i32 %54, -65536
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %59, i32 noundef 32, ptr noundef nonnull @.str.69) #12
  br label %75

60:                                               ; preds = %53
  %61 = and i32 %41, 65535
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 8, !tbaa !157
  %65 = tail call i32 @RNA_boolean_get(ptr noundef %64, ptr noundef nonnull @.str.25) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !161
  %70 = getelementptr inbounds %struct.KeyingSet, ptr %26, i64 0, i32 4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %69, i32 noundef 2, ptr noundef nonnull @.str.70, i32 noundef %55, ptr noundef nonnull %70) #12
  br label %71

71:                                               ; preds = %67, %63
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #12
  br label %75

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %74, i32 noundef 16, ptr noundef nonnull @.str.71) #12
  br label %75

75:                                               ; preds = %72, %71, %57, %28
  %76 = phi i32 [ 2, %28 ], [ 2, %57 ], [ 4, %71 ], [ 4, %72 ]
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @modify_key_op_poll(ptr noundef %0) #2 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = icmp ne ptr %2, null
  %5 = icmp ne ptr %3, null
  %6 = select i1 %4, i1 %5, i1 false
  %7 = zext i1 %6 to i32
  ret i32 %7
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ANIM_keying_sets_enum_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_OT_keyframe_insert_menu(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @insert_key_menu_invoke, ptr %4, align 8, !tbaa !164
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @insert_key_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.22, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #12
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @ANIM_keying_sets_enum_itemf) #12
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #12
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !156
  %12 = load ptr, ptr %8, align 8, !tbaa !155
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #12
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 524288) #12
  %14 = load ptr, ptr %8, align 8, !tbaa !155
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #12
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 524288) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @insert_key_menu_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #2 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 34
  %6 = load i32, ptr %5, align 4, !tbaa !160
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.31) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !165
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = tail call ptr @RNA_struct_ui_name(ptr noundef %17) #12
  %19 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %18, i32 noundef 0) #12
  %20 = tail call ptr @uiPupMenuLayout(ptr noundef %19) #12
  tail call void @uiItemsEnumO(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22) #12
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %19) #12
  br label %29

21:                                               ; preds = %8
  %22 = load ptr, ptr %9, align 8, !tbaa !157
  tail call void @RNA_enum_set(ptr noundef %22, ptr noundef nonnull @.str.22, i32 noundef 0) #12
  %23 = load ptr, ptr %9, align 8, !tbaa !157
  tail call void @RNA_boolean_set(ptr noundef %23, ptr noundef nonnull @.str.25, i32 noundef 1) #12
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !165
  %26 = getelementptr inbounds %struct.wmOperatorType, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !152
  %28 = tail call i32 %27(ptr noundef %0, ptr noundef %1) #12
  br label %29

29:                                               ; preds = %21, %13
  %30 = phi i32 [ 32, %13 ], [ %28, %21 ]
  ret i32 %30
}

declare i32 @ED_operator_areaactive(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_OT_keyframe_delete(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_key_exec, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @modify_key_op_poll, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #12
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @ANIM_keying_sets_enum_itemf) #12
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #12
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !156
  %11 = load ptr, ptr %7, align 8, !tbaa !155
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @delete_key_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.22) #12
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !159
  %9 = sitofp i32 %8 to float
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 34
  %13 = load i32, ptr %12, align 4, !tbaa !160
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i32 [ %13, %11 ], [ %6, %2 ]
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 35
  %19 = add nsw i32 %15, -1
  %20 = tail call ptr @BLI_findlink(ptr noundef nonnull %18, i32 noundef %19) #12
  br label %24

21:                                               ; preds = %14
  %22 = xor i32 %15, -1
  %23 = tail call ptr @BLI_findlink(ptr noundef nonnull @builtin_keyingsets, i32 noundef %22) #12
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %20, %17 ], [ %23, %21 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %29, i32 noundef 32, ptr noundef nonnull @.str.72) #12
  br label %62

30:                                               ; preds = %24
  %31 = tail call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %25, i16 noundef signext 1, float noundef %9) #12
  %32 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.KeyingSet, ptr %25, i64 0, i32 4
  %37 = shl i32 %31, 16
  %38 = ashr exact i32 %37, 16
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, ptr noundef nonnull %36, i32 noundef %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = shl i32 %31, 16
  %42 = ashr exact i32 %41, 16
  %43 = icmp eq i32 %41, -65536
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %46, i32 noundef 32, ptr noundef nonnull @.str.69) #12
  br label %62

47:                                               ; preds = %40
  %48 = and i32 %31, 65535
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %4, align 8, !tbaa !157
  %52 = tail call i32 @RNA_boolean_get(ptr noundef %51, ptr noundef nonnull @.str.25) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !161
  %57 = getelementptr inbounds %struct.KeyingSet, ptr %25, i64 0, i32 4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %56, i32 noundef 2, ptr noundef nonnull @.str.74, i32 noundef %42, ptr noundef nonnull %57) #12
  br label %58

58:                                               ; preds = %54, %50
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468548, ptr noundef null) #12
  br label %62

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %61, i32 noundef 16, ptr noundef nonnull @.str.75) #12
  br label %62

62:                                               ; preds = %59, %58, %44, %27
  %63 = phi i32 [ 2, %27 ], [ 2, %44 ], [ 4, %58 ], [ 4, %59 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_keyframe_clear_v3d(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !164
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_anim_v3d_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !154
  ret void
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @clear_anim_v3d_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %4 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #12
  %5 = load ptr, ptr %3, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %2, %64
  %8 = phi ptr [ %66, %64 ], [ %5, %2 ]
  %9 = phi i8 [ %65, %64 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %8, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !166
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !168
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %13, align 8, !tbaa !75
  %17 = icmp eq ptr %16, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !169
  %21 = icmp eq ptr %20, null
  br i1 %21, label %64, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 27
  %24 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 18
  br label %25

25:                                               ; preds = %22, %61
  %26 = phi i8 [ %9, %22 ], [ %62, %61 ]
  %27 = phi ptr [ %20, %22 ], [ %28, %61 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !170
  %29 = load i32, ptr %23, align 8, !tbaa !171
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.FCurve, ptr %27, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = icmp eq ptr %34, null
  br i1 %35, label %57, label %36

36:                                               ; preds = %32
  %37 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) @.str.76) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %39

39:                                               ; preds = %36
  %40 = call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %34, ptr noundef nonnull @.str.76) #12
  %41 = load ptr, ptr %24, align 8, !tbaa !93
  %42 = call ptr @BKE_pose_channel_find_name(ptr noundef %41, ptr noundef %40) #12
  %43 = icmp eq ptr %40, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %45(ptr noundef nonnull %40) #12
  br label %46

46:                                               ; preds = %44, %39
  %47 = icmp eq ptr %42, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %42, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !137
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Bone, ptr %50, i64 0, i32 10
  %54 = load i32, ptr %53, align 8, !tbaa !140
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  br label %57

57:                                               ; preds = %52, %25, %46, %48, %32, %36
  %58 = phi i8 [ 0, %36 ], [ 0, %32 ], [ 0, %48 ], [ 0, %46 ], [ %56, %52 ], [ 1, %25 ]
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %27) #12
  call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 1) #12
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i8 [ 1, %60 ], [ %26, %57 ]
  %63 = icmp eq ptr %28, null
  br i1 %63, label %64, label %25, !llvm.loop !172

64:                                               ; preds = %61, %18, %15, %7
  %65 = phi i8 [ %9, %15 ], [ %9, %7 ], [ %9, %18 ], [ %62, %61 ]
  %66 = load ptr, ptr %8, align 8, !tbaa !82
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %7, !llvm.loop !173

68:                                               ; preds = %64
  %69 = icmp eq i8 %65, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br i1 %69, label %72, label %70

70:                                               ; preds = %68
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef null) #12
  br label %72

71:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %72

72:                                               ; preds = %71, %68, %70
  %73 = phi i32 [ 4, %70 ], [ 2, %68 ], [ 2, %71 ]
  ret i32 %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_keyframe_delete_v3d(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !164
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_key_v3d_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @delete_key_v3d_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !159
  %8 = sitofp i32 %7 to float
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %9 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %4) #12
  %10 = load ptr, ptr %4, align 8, !tbaa !82
  %11 = icmp eq ptr %10, null
  br i1 %11, label %70, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %15

15:                                               ; preds = %12, %64
  %16 = phi ptr [ %10, %12 ], [ %68, %64 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %16, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !166
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !168
  %21 = icmp eq ptr %20, null
  br i1 %21, label %64, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %20, align 8, !tbaa !75
  %24 = icmp eq ptr %23, null
  br i1 %24, label %64, label %25

25:                                               ; preds = %22
  %26 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %20, float noundef %8, i16 noundef signext 1) #12
  %27 = getelementptr inbounds %struct.bAction, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !169
  %29 = icmp eq ptr %28, null
  br i1 %29, label %64, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4, i64 2
  br label %32

32:                                               ; preds = %30, %61
  %33 = phi i32 [ 0, %30 ], [ %62, %61 ]
  %34 = phi ptr [ %28, %30 ], [ %35, %61 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !170
  %36 = call zeroext i8 @BKE_fcurve_is_protected(ptr noundef nonnull %34) #12
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %13, align 8, !tbaa !161
  %40 = getelementptr inbounds %struct.FCurve, ptr %34, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !86
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %39, i32 noundef 16, ptr noundef nonnull @.str.77, ptr noundef %41, ptr noundef nonnull %31) #12
  br label %61

42:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  %43 = getelementptr inbounds %struct.FCurve, ptr %34, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  %45 = getelementptr inbounds %struct.FCurve, ptr %34, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !103
  %47 = call i32 @binarysearch_bezt_index(ptr noundef %44, float noundef %26, i32 noundef %46, ptr noundef nonnull %3) #12
  %48 = load i8, ptr %3, align 1, !tbaa !104
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  call void @delete_fcurve_key(ptr noundef nonnull %34, i32 noundef %47, i8 noundef zeroext 1) #12
  %51 = load i32, ptr %45, align 8, !tbaa !103
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.FCurve, ptr %34, i64 0, i32 4
  %55 = call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %54, i32 noundef 0, i16 noundef signext 3) #12
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef null, ptr noundef nonnull %20, ptr noundef nonnull %34) #12
  br label %58

58:                                               ; preds = %42, %50, %53, %57
  %59 = phi i32 [ 1, %57 ], [ 1, %53 ], [ 1, %50 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %60 = add nsw i32 %59, %33
  br label %61

61:                                               ; preds = %58, %38
  %62 = phi i32 [ %33, %38 ], [ %60, %58 ]
  %63 = icmp eq ptr %35, null
  br i1 %63, label %64, label %32, !llvm.loop !174

64:                                               ; preds = %61, %25, %22, %15
  %65 = phi i32 [ 0, %22 ], [ 0, %15 ], [ 0, %25 ], [ %62, %61 ]
  %66 = load ptr, ptr %14, align 8, !tbaa !161
  %67 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %66, i32 noundef 2, ptr noundef nonnull @.str.78, ptr noundef nonnull %67, i32 noundef %65) #12
  call void @DAG_id_tag_update(ptr noundef %18, i16 noundef signext 1) #12
  %68 = load ptr, ptr %16, align 8, !tbaa !82
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %15, !llvm.loop !175

70:                                               ; preds = %64, %2
  call void @BLI_freelistN(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef null) #12
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_OT_keyframe_insert_button(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @insert_key_button_exec, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @modify_key_op_poll, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.48, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @insert_key_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr null, ptr %4, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !159
  %9 = sitofp i32 %8 to float
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.48) #12
  %13 = icmp eq ptr %6, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 22
  %18 = load i16, ptr %17, align 2, !tbaa !62
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %30, label %29

25:                                               ; preds = %2
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %27 = and i16 %26, 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %21, %14
  br label %30

30:                                               ; preds = %29, %25, %21
  %31 = phi i16 [ 2, %29 ], [ 0, %21 ], [ 0, %25 ]
  br i1 %13, label %43, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.ToolSettings, ptr %34, i64 0, i32 22
  %36 = load i16, ptr %35, align 2, !tbaa !62
  %37 = and i16 %36, 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %41 = and i16 %40, 2
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %49, label %47

43:                                               ; preds = %30
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %39, %32
  %48 = or disjoint i16 %31, 1
  br label %49

49:                                               ; preds = %47, %43, %39
  %50 = phi i16 [ %48, %47 ], [ %31, %39 ], [ %31, %43 ]
  br i1 %13, label %62, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.ToolSettings, ptr %53, i64 0, i32 22
  %55 = load i16, ptr %54, align 2, !tbaa !62
  %56 = and i16 %55, 8
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %60 = and i16 %59, 8
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %68, label %66

62:                                               ; preds = %49
  %63 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %64 = and i16 %63, 8
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62, %58, %51
  %67 = or i16 %50, 32
  br label %68

68:                                               ; preds = %66, %62, %58
  %69 = phi i16 [ %67, %66 ], [ %50, %58 ], [ %50, %62 ]
  br i1 %13, label %76, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.ToolSettings, ptr %72, i64 0, i32 21
  %74 = load i16, ptr %73, align 8, !tbaa !73
  %75 = icmp eq i16 %74, 5
  br i1 %75, label %79, label %81

76:                                               ; preds = %68
  %77 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !74
  %78 = icmp eq i16 %77, 5
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %70
  %80 = or i16 %69, 16
  br label %81

81:                                               ; preds = %70, %76, %79
  %82 = phi i16 [ %80, %79 ], [ %69, %70 ], [ %69, %76 ]
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %83 = load ptr, ptr %3, align 8, !tbaa !91
  %84 = icmp ne ptr %83, null
  %85 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = icmp ne ptr %86, null
  %88 = select i1 %84, i1 %87, i1 false
  %89 = load ptr, ptr %4, align 8
  %90 = icmp ne ptr %89, null
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %145

92:                                               ; preds = %81
  %93 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %3, ptr noundef nonnull %89) #12
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %145, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %4, align 8, !tbaa !82
  %97 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %3, ptr noundef %96) #12
  %98 = icmp eq ptr %97, null
  br i1 %98, label %126, label %99

99:                                               ; preds = %95
  %100 = and i32 %12, 255
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %4, align 8, !tbaa !82
  %104 = call i32 @RNA_property_array_length(ptr noundef nonnull %3, ptr noundef %103) #12
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  store i32 0, ptr %5, align 4, !tbaa !176
  br label %107

107:                                              ; preds = %99, %102, %106
  %108 = phi i32 [ %104, %106 ], [ 1, %102 ], [ 1, %99 ]
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %112

112:                                              ; preds = %110, %112
  %113 = phi i16 [ 0, %110 ], [ %120, %112 ]
  %114 = phi i32 [ 0, %110 ], [ %121, %112 ]
  %115 = load ptr, ptr %111, align 8, !tbaa !161
  %116 = load ptr, ptr %3, align 8, !tbaa !91
  %117 = load i32, ptr %5, align 4, !tbaa !176
  %118 = add nsw i32 %117, %114
  %119 = call signext i16 @insert_keyframe(ptr noundef %115, ptr noundef %116, ptr noundef null, ptr noundef null, ptr noundef nonnull %97, i32 noundef %118, float noundef %9, i16 noundef signext %82)
  %120 = add i16 %119, %113
  %121 = add nuw nsw i32 %114, 1
  %122 = icmp eq i32 %121, %108
  br i1 %122, label %123, label %112, !llvm.loop !177

123:                                              ; preds = %112, %107
  %124 = phi i16 [ 0, %107 ], [ %120, %112 ]
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %125(ptr noundef nonnull %97) #12
  br label %161

126:                                              ; preds = %95
  %127 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !88
  %129 = icmp eq ptr %128, @RNA_NlaStrip
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = load ptr, ptr %85, align 8, !tbaa !92
  %132 = getelementptr inbounds %struct.NlaStrip, ptr %131, i64 0, i32 5
  %133 = load ptr, ptr %4, align 8, !tbaa !82
  %134 = call ptr @RNA_property_identifier(ptr noundef %133) #12
  %135 = sext i16 %82 to i32
  %136 = call ptr @list_find_fcurve(ptr noundef nonnull %132, ptr noundef %134, i32 noundef %135) #12
  %137 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %138 = load ptr, ptr %137, align 8, !tbaa !161
  %139 = load ptr, ptr %4, align 8, !tbaa !82
  %140 = call zeroext i8 @insert_keyframe_direct(ptr noundef %138, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3, ptr noundef %139, ptr noundef %136, float noundef %9, i16 noundef signext 0), !range !144
  %141 = zext nneg i8 %140 to i16
  br label %161

142:                                              ; preds = %126
  %143 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %144 = load ptr, ptr %143, align 8, !tbaa !161
  call void @BKE_report(ptr noundef %144, i32 noundef 16, ptr noundef nonnull @.str.79) #12
  br label %161

145:                                              ; preds = %92, %81
  %146 = load ptr, ptr %4, align 8, !tbaa !82
  %147 = icmp eq ptr %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %145
  %149 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %3, ptr noundef nonnull %146) #12
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %153 = load ptr, ptr %152, align 8, !tbaa !161
  %154 = load ptr, ptr %4, align 8, !tbaa !82
  %155 = call ptr @RNA_property_identifier(ptr noundef %154) #12
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %153, i32 noundef 16, ptr noundef nonnull @.str.80, ptr noundef %155) #12
  br label %161

156:                                              ; preds = %148, %145
  %157 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %158 = load ptr, ptr %157, align 8, !tbaa !161
  %159 = load ptr, ptr %85, align 8, !tbaa !92
  %160 = load ptr, ptr %4, align 8, !tbaa !82
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %158, i32 noundef 16, ptr noundef nonnull @.str.81, ptr noundef %159, ptr noundef %160) #12
  br label %161

161:                                              ; preds = %151, %156, %123, %142, %130
  %162 = phi i16 [ %124, %123 ], [ %141, %130 ], [ 0, %142 ], [ 0, %156 ], [ 0, %151 ]
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @uiContextAnimUpdate(ptr noundef %0) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #12
  br label %165

165:                                              ; preds = %164, %161
  %166 = phi i32 [ 4, %164 ], [ 2, %161 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret i32 %166
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_OT_keyframe_delete_button(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_key_button_exec, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @modify_key_op_poll, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.48, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.54) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @delete_key_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr null, ptr %4, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !159
  %9 = sitofp i32 %8 to float
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.48) #12
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %13 = load ptr, ptr %3, align 8, !tbaa !91
  %14 = icmp ne ptr %13, null
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %14, i1 %17, i1 false
  %19 = load ptr, ptr %4, align 8
  %20 = icmp ne ptr %19, null
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %58

22:                                               ; preds = %2
  %23 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %3, ptr noundef nonnull %19) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25

25:                                               ; preds = %22
  %26 = and i32 %12, 255
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %4, align 8, !tbaa !82
  %30 = call i32 @RNA_property_array_length(ptr noundef nonnull %3, ptr noundef %29) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, ptr %5, align 4, !tbaa !176
  br label %33

33:                                               ; preds = %25, %28, %32
  %34 = phi i32 [ %30, %32 ], [ 1, %28 ], [ 1, %25 ]
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i16 [ 0, %36 ], [ %46, %38 ]
  %40 = phi i32 [ 0, %36 ], [ %47, %38 ]
  %41 = load ptr, ptr %37, align 8, !tbaa !161
  %42 = load ptr, ptr %3, align 8, !tbaa !91
  %43 = load i32, ptr %5, align 4, !tbaa !176
  %44 = add nsw i32 %43, %40
  %45 = call signext i16 @delete_keyframe(ptr noundef %41, ptr noundef %42, ptr noundef null, ptr poison, ptr noundef nonnull %23, i32 noundef %44, float noundef %9, i16 signext poison)
  %46 = add i16 %45, %39
  %47 = add nuw nsw i32 %40, 1
  %48 = icmp eq i32 %47, %34
  br i1 %48, label %49, label %38, !llvm.loop !178

49:                                               ; preds = %38
  %50 = icmp eq i16 %46, 0
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %51(ptr noundef nonnull %23) #12
  br i1 %50, label %67, label %64

52:                                               ; preds = %22
  %53 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  %57 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %67

58:                                               ; preds = %2
  %59 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef %16, ptr noundef %19)
  br label %67

64:                                               ; preds = %49
  call void @uiContextAnimUpdate(ptr noundef %0) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468548, ptr noundef null) #12
  br label %67

65:                                               ; preds = %33
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %66(ptr noundef nonnull %23) #12
  br label %67

67:                                               ; preds = %65, %56, %52, %62, %58, %64, %49
  %68 = phi i32 [ 4, %64 ], [ 2, %49 ], [ 2, %58 ], [ 2, %62 ], [ 2, %52 ], [ 2, %56 ], [ 2, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_OT_keyframe_clear_button(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_key_button_exec, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @modify_key_op_poll, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.48, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.58) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clear_key_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store ptr null, ptr %7, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.48) #12
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %12 = load ptr, ptr %6, align 8, !tbaa !91
  %13 = icmp ne ptr %12, null
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %15, null
  %17 = select i1 %13, i1 %16, i1 false
  %18 = load ptr, ptr %7, align 8
  %19 = icmp ne ptr %18, null
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %109

21:                                               ; preds = %2
  %22 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %6, ptr noundef nonnull %18) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %103, label %24

24:                                               ; preds = %21
  %25 = and i32 %11, 255
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %7, align 8, !tbaa !82
  %29 = call i32 @RNA_property_array_length(ptr noundef nonnull %6, ptr noundef %28) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, ptr %8, align 4, !tbaa !176
  br label %32

32:                                               ; preds = %24, %27, %31
  %33 = phi i32 [ %29, %31 ], [ 1, %27 ], [ 1, %24 ]
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %116

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %37

37:                                               ; preds = %35, %95
  %38 = phi i16 [ 0, %35 ], [ %97, %95 ]
  %39 = phi i32 [ 0, %35 ], [ %98, %95 ]
  %40 = load ptr, ptr %36, align 8, !tbaa !161
  %41 = load ptr, ptr %6, align 8, !tbaa !91
  %42 = load i32, ptr %8, align 4, !tbaa !176
  %43 = add nsw i32 %42, %39
  %44 = call ptr @BKE_animdata_from_id(ptr noundef %41) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %45 = add nsw i32 %43, 1
  %46 = icmp eq ptr %41, null
  %47 = icmp eq ptr %44, null
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  call void @BKE_report(ptr noundef %40, i32 noundef 32, ptr noundef nonnull @.str.15) #12
  br label %95

50:                                               ; preds = %37
  call void @RNA_id_pointer_create(ptr noundef %41, ptr noundef nonnull %3) #12
  %51 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %3, ptr noundef nonnull %22, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %40, i32 noundef 32, ptr noundef nonnull @.str.85, ptr noundef nonnull %54, ptr noundef nonnull %22) #12
  br label %95

55:                                               ; preds = %50
  %56 = load ptr, ptr %44, align 8, !tbaa !75
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %40, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef nonnull %59) #12
  br label %95

60:                                               ; preds = %55
  %61 = icmp eq i32 %43, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = load ptr, ptr %5, align 8, !tbaa !82
  %64 = call i32 @RNA_property_array_length(ptr noundef nonnull %4, ptr noundef %63) #12
  %65 = call i32 @llvm.umax.i32(i32 %64, i32 1)
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i32 [ %43, %60 ], [ 0, %62 ]
  %68 = phi i32 [ %45, %60 ], [ %65, %62 ]
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.bAction, ptr %56, i64 0, i32 1
  br label %72

72:                                               ; preds = %70, %88
  %73 = phi i32 [ 0, %70 ], [ %89, %88 ]
  %74 = phi i32 [ %67, %70 ], [ %90, %88 ]
  %75 = call ptr @list_find_fcurve(ptr noundef nonnull %71, ptr noundef nonnull %22, i32 noundef %74) #12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %88, label %77

77:                                               ; preds = %72
  %78 = call zeroext i8 @BKE_fcurve_is_protected(ptr noundef nonnull %75) #12
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = call i32 @puts(ptr nonnull dereferenceable(1) @str.88)
  br label %88

86:                                               ; preds = %77
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef null, ptr noundef nonnull %44, ptr noundef nonnull %75) #12
  %87 = add nsw i32 %73, 1
  br label %88

88:                                               ; preds = %86, %84, %80, %72
  %89 = phi i32 [ %87, %86 ], [ %73, %72 ], [ %73, %84 ], [ %73, %80 ]
  %90 = add i32 %74, 1
  %91 = icmp eq i32 %90, %68
  br i1 %91, label %92, label %72, !llvm.loop !179

92:                                               ; preds = %88, %66
  %93 = phi i32 [ 0, %66 ], [ %89, %88 ]
  %94 = trunc i32 %93 to i16
  br label %95

95:                                               ; preds = %49, %53, %58, %92
  %96 = phi i16 [ 0, %49 ], [ 0, %53 ], [ %94, %92 ], [ 0, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  %97 = add i16 %96, %38
  %98 = add nuw nsw i32 %39, 1
  %99 = icmp eq i32 %98, %33
  br i1 %99, label %100, label %37, !llvm.loop !180

100:                                              ; preds = %95
  %101 = icmp eq i16 %97, 0
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %102(ptr noundef nonnull %22) #12
  br i1 %101, label %118, label %115

103:                                              ; preds = %21
  %104 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %103
  %108 = call i32 @puts(ptr nonnull dereferenceable(1) @str.87)
  br label %118

109:                                              ; preds = %2
  %110 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef %15, ptr noundef %18)
  br label %118

115:                                              ; preds = %100
  call void @uiContextAnimUpdate(ptr noundef %0) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468548, ptr noundef null) #12
  br label %118

116:                                              ; preds = %32
  %117 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %117(ptr noundef nonnull %22) #12
  br label %118

118:                                              ; preds = %116, %107, %103, %113, %109, %115, %100
  %119 = phi i32 [ 4, %115 ], [ 2, %100 ], [ 2, %109 ], [ 2, %113 ], [ 2, %103 ], [ 2, %107 ], [ 2, %116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret i32 %119
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @autokeyframe_cfra_can_key(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !159
  %5 = sitofp i32 %4 to float
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 21
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %10, %7 ], [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), %2 ]
  %13 = load i16, ptr %12, align 8, !tbaa !79
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  br i1 %6, label %23, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.ToolSettings, ptr %19, i64 0, i32 21
  %21 = load i16, ptr %20, align 8, !tbaa !73
  %22 = icmp eq i16 %21, 3
  br i1 %22, label %29, label %26

23:                                               ; preds = %16
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !74
  %25 = icmp eq i16 %24, 3
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %17
  %27 = tail call zeroext i8 @id_frame_has_keyframe(ptr noundef %1, float noundef %5, i16 noundef signext 1)
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %17, %23, %11, %26
  %30 = phi i32 [ %28, %26 ], [ 0, %11 ], [ 1, %23 ], [ 1, %17 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @id_frame_has_keyframe(ptr noundef %0, float noundef %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %139, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !79
  %10 = icmp eq i16 %9, 16975
  br i1 %10, label %11, label %93

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !168
  %14 = icmp eq ptr %13, null
  br i1 %14, label %58, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !75
  %17 = icmp ne ptr %16, null
  %18 = and i16 %2, 2
  %19 = icmp eq i16 %18, 0
  %20 = and i1 %19, %17
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !181
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !82
  %29 = icmp eq ptr %28, null
  br i1 %29, label %58, label %30

30:                                               ; preds = %26, %55
  %31 = phi ptr [ %56, %55 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !101
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !103
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 9
  %41 = load i16, ptr %40, align 8, !tbaa !83
  %42 = and i16 %41, 16
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  %45 = call i32 @binarysearch_bezt_index(ptr noundef nonnull %33, float noundef %1, i32 noundef %37, ptr noundef nonnull %5) #12
  %46 = load i8, ptr %5, align 1, !tbaa !104
  %47 = icmp ne i8 %46, 0
  %48 = icmp sgt i32 %45, -1
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, ptr %36, align 8, !tbaa !103
  %52 = icmp ult i32 %45, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %50, %44
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  br label %55

54:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  br label %139

55:                                               ; preds = %53, %39, %35, %30
  %56 = load ptr, ptr %31, align 8, !tbaa !82
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %30, !llvm.loop !182

58:                                               ; preds = %55, %21, %26, %15, %11
  %59 = zext i16 %2 to i32
  %60 = and i32 %59, 1025
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call ptr @BKE_key_from_object(ptr noundef nonnull %0) #12
  %64 = call zeroext i8 @id_frame_has_keyframe(ptr noundef %63, float noundef %1, i16 noundef signext %2)
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %139

66:                                               ; preds = %62, %58
  %67 = and i32 %59, 513
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %66
  %70 = and i32 %59, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  br label %82

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %76 = load i32, ptr %75, align 4, !tbaa !183
  %77 = trunc i32 %76 to i16
  %78 = add i16 %77, 1
  %79 = call ptr @give_current_material(ptr noundef nonnull %0, i16 noundef signext %78) #12
  %80 = call zeroext i8 @id_frame_has_keyframe(ptr noundef %79, float noundef %1, i16 noundef signext %2)
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %92, label %139

82:                                               ; preds = %72, %86
  %83 = phi i32 [ %87, %86 ], [ 0, %72 ]
  %84 = load i32, ptr %73, align 8, !tbaa !184
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = add nuw nsw i32 %83, 1
  %88 = trunc i32 %87 to i16
  %89 = call ptr @give_current_material(ptr noundef nonnull %0, i16 noundef signext %88) #12
  %90 = call zeroext i8 @id_frame_has_keyframe(ptr noundef %89, float noundef %1, i16 noundef signext %2)
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %82, label %139, !llvm.loop !185

92:                                               ; preds = %82, %74, %66
  br label %139

93:                                               ; preds = %7
  %94 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #12
  %95 = icmp eq ptr %94, null
  br i1 %95, label %139, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %94, align 8, !tbaa !75
  %98 = icmp ne ptr %97, null
  %99 = and i16 %2, 2
  %100 = icmp eq i16 %99, 0
  %101 = and i1 %100, %98
  br i1 %101, label %102, label %139

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.bAction, ptr %97, i64 0, i32 5
  %104 = load i32, ptr %103, align 8, !tbaa !181
  %105 = and i32 %104, 512
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %139

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.bAction, ptr %97, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !82
  %110 = icmp eq ptr %109, null
  br i1 %110, label %139, label %111

111:                                              ; preds = %107, %136
  %112 = phi ptr [ %137, %136 ], [ %109, %107 ]
  %113 = getelementptr inbounds %struct.FCurve, ptr %112, i64 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !101
  %115 = icmp eq ptr %114, null
  br i1 %115, label %136, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.FCurve, ptr %112, i64 0, i32 7
  %118 = load i32, ptr %117, align 8, !tbaa !103
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.FCurve, ptr %112, i64 0, i32 9
  %122 = load i16, ptr %121, align 8, !tbaa !83
  %123 = and i16 %122, 16
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  %126 = call i32 @binarysearch_bezt_index(ptr noundef nonnull %114, float noundef %1, i32 noundef %118, ptr noundef nonnull %4) #12
  %127 = load i8, ptr %4, align 1, !tbaa !104
  %128 = icmp ne i8 %127, 0
  %129 = icmp sgt i32 %126, -1
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, ptr %117, align 8, !tbaa !103
  %133 = icmp ult i32 %126, %132
  br i1 %133, label %135, label %134

134:                                              ; preds = %131, %125
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  br label %136

135:                                              ; preds = %131
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  br label %139

136:                                              ; preds = %134, %120, %116, %111
  %137 = load ptr, ptr %112, align 8, !tbaa !82
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %111, !llvm.loop !182

139:                                              ; preds = %136, %86, %54, %135, %107, %102, %96, %93, %92, %74, %62, %3
  %140 = phi i8 [ 0, %3 ], [ 0, %92 ], [ 1, %74 ], [ 1, %62 ], [ 1, %54 ], [ 0, %93 ], [ 0, %96 ], [ 0, %102 ], [ 1, %135 ], [ 0, %107 ], [ 1, %86 ], [ 0, %136 ]
  ret i8 %140
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @fcurve_frame_has_keyframe(ptr noundef readonly %0, float noundef %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = and i16 %2, 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %15 = load i16, ptr %14, align 8, !tbaa !83
  %16 = and i16 %15, 16
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13, %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  %19 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !103
  %21 = call i32 @binarysearch_bezt_index(ptr noundef nonnull %8, float noundef %1, i32 noundef %20, ptr noundef nonnull %4) #12
  %22 = load i8, ptr %4, align 1, !tbaa !104
  %23 = icmp ne i8 %22, 0
  %24 = icmp sgt i32 %21, -1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, ptr %19, align 8, !tbaa !103
  %28 = icmp ult i32 %21, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  br label %31

30:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  br label %31

31:                                               ; preds = %13, %29, %30, %3, %6
  %32 = phi i8 [ 1, %30 ], [ 0, %6 ], [ 0, %3 ], [ 0, %29 ], [ 0, %13 ]
  ret i8 %32
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_autokeyframe_object(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.ListBase, align 8
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !159
  %8 = sitofp i32 %7 to float
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 21
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi ptr [ %13, %10 ], [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), %4 ]
  %16 = load i16, ptr %15, align 8, !tbaa !79
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  br i1 %9, label %26, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ToolSettings, ptr %22, i64 0, i32 21
  %24 = load i16, ptr %23, align 8, !tbaa !73
  %25 = icmp eq i16 %24, 3
  br i1 %25, label %32, label %29

26:                                               ; preds = %19
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !74
  %28 = icmp eq i16 %27, 3
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %20
  %30 = tail call zeroext i8 @id_frame_has_keyframe(ptr noundef %2, float noundef %8, i16 noundef signext 1)
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26, %20, %29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %5, ptr noundef %2, ptr noundef null, ptr noundef null) #12
  %33 = load i32, ptr %6, align 8, !tbaa !159
  %34 = sitofp i32 %33 to float
  %35 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, ptr noundef %3, i16 noundef signext 0, float noundef %34) #12
  call void @BLI_freelistN(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %36

36:                                               ; preds = %14, %29, %32
  %37 = phi i8 [ 1, %32 ], [ 0, %29 ], [ 0, %14 ]
  ret i8 %37
}

declare void @ANIM_relative_keyingset_add_source(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ANIM_apply_keyingset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, float noundef) local_unnamed_addr #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ListBase, align 8
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !159
  %9 = sitofp i32 %8 to float
  %10 = icmp eq ptr %1, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 21
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi ptr [ %14, %11 ], [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), %5 ]
  %17 = load i16, ptr %16, align 8, !tbaa !79
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %15
  br i1 %10, label %27, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %23, i64 0, i32 21
  %25 = load i16, ptr %24, align 8, !tbaa !73
  %26 = icmp eq i16 %25, 3
  br i1 %26, label %33, label %30

27:                                               ; preds = %20
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !74
  %29 = icmp eq i16 %28, 3
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %21
  %31 = tail call zeroext i8 @id_frame_has_keyframe(ptr noundef %2, float noundef %9, i16 noundef signext 1)
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %27, %21, %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull @RNA_PoseBone, ptr noundef %3) #12
  %34 = load i32, ptr %7, align 8, !tbaa !159
  %35 = sitofp i32 %34 to float
  %36 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %4, i16 noundef signext 0, float noundef %35) #12
  call void @BLI_freelistN(ptr noundef nonnull %6) #12
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !137
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.Bone, ptr %38, i64 0, i32 10
  %42 = load i32, ptr %41, align 8, !tbaa !140
  %43 = and i32 %42, -8193
  store i32 %43, ptr %41, align 8, !tbaa !140
  br label %44

44:                                               ; preds = %40, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %53

45:                                               ; preds = %15, %30
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !137
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Bone, ptr %47, i64 0, i32 10
  %51 = load i32, ptr %50, align 8, !tbaa !140
  %52 = or i32 %51, 8192
  store i32 %52, ptr %50, align 8, !tbaa !140
  br label %53

53:                                               ; preds = %45, %49, %44
  %54 = phi i8 [ 1, %44 ], [ 0, %49 ], [ 0, %45 ]
  ret i8 %54
}

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #3

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_armature_mat_pose_to_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mat4_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mat3_to_quat_is_ok(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mat4_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_int_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

declare zeroext i8 @list_has_suitable_fmodifier(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #3

declare void @ANIM_fcurve_delete_from_animdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ANIM_keyingset_find_id(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_object_toggle_modes(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #3

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #3

declare void @uiItemsEnumO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @uiContextActiveProperty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_property_animateable(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiContextAnimUpdate(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #3

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 264}
!35 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !43, i64 280, !53, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !37, i64 4608, !59, i64 4616, !37, i64 4640, !60, i64 4648, !60, i64 4656, !46, i64 4664, !47, i64 4824, !61, i64 4888, !37, i64 4952}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"RenderData", !44, i64 0, !37, i64 248, !37, i64 256, !48, i64 264, !49, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !45, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !50, i64 544, !50, i64 560, !51, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !41, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !45, i64 660, !45, i64 664, !40, i64 668, !40, i64 670, !45, i64 672, !45, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !45, i64 2528, !45, i64 2532, !40, i64 2536, !40, i64 2538, !45, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !45, i64 2560, !45, i64 2564, !37, i64 2568, !41, i64 2576, !45, i64 2580, !38, i64 2584, !52, i64 2616, !41, i64 3976, !41, i64 3980}
!44 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !45, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !46, i64 24, !47, i64 184}
!45 = !{!"float", !38, i64 0}
!46 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !45, i64 136, !45, i64 140, !37, i64 144, !37, i64 152}
!47 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!48 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!49 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!50 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"BakeData", !44, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !45, i64 1280, !45, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!53 = !{!"AudioData", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !45, i64 24, !45, i64 28}
!54 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!55 = !{!"GameData", !54, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !56, i64 40, !40, i64 64, !40, i64 66, !45, i64 68, !57, i64 72, !45, i64 128, !45, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!56 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !45, i64 8, !45, i64 12, !37, i64 16}
!57 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !41, i64 40, !45, i64 44, !45, i64 48, !40, i64 52, !40, i64 54}
!58 = !{!"UnitSettings", !45, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!59 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!60 = !{!"long", !38, i64 0}
!61 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!62 = !{!63, !40, i64 346}
!63 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !45, i64 32, !45, i64 36, !45, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !45, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !64, i64 64, !66, i64 168, !45, i64 336, !45, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !45, i64 352, !45, i64 356, !45, i64 360, !45, i64 364, !45, i64 368, !45, i64 372, !45, i64 376, !45, i64 380, !45, i64 384, !45, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !45, i64 472, !45, i64 476, !67, i64 480, !68, i64 608}
!64 = !{!"ImagePaintSettings", !65, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !45, i64 100}
!65 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!66 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !45, i64 128, !45, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!67 = !{!"UnifiedPaintSettings", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !45, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !45, i64 72, !38, i64 76, !41, i64 84, !45, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !45, i64 120, !41, i64 124}
!68 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !38, i64 20, !38, i64 21, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36}
!69 = !{!70, !40, i64 8978}
!70 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !45, i64 8956, !45, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !45, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !71, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !45, i64 10904, !45, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !72, i64 10928}
!71 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!72 = !{!"WalkNavigation", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !40, i64 24, !38, i64 26}
!73 = !{!63, !40, i64 344}
!74 = !{!70, !40, i64 8976}
!75 = !{!76, !37, i64 0}
!76 = !{!"AnimData", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !37, i64 40, !42, i64 48, !42, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !45, i64 92}
!77 = !{!78, !37, i64 0}
!78 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!79 = !{!40, !40, i64 0}
!80 = !{!81, !41, i64 192}
!81 = !{!"bAction", !36, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196}
!82 = !{!37, !37, i64 0}
!83 = !{!84, !40, i64 72}
!84 = !{!"FCurve", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !37, i64 48, !37, i64 56, !41, i64 64, !45, i64 68, !40, i64 72, !40, i64 74, !41, i64 76, !37, i64 80, !41, i64 88, !38, i64 92, !45, i64 104, !45, i64 108}
!85 = !{!42, !37, i64 0}
!86 = !{!84, !37, i64 80}
!87 = !{!84, !41, i64 76}
!88 = !{!89, !37, i64 8}
!89 = !{!"PointerRNA", !90, i64 0, !37, i64 8, !37, i64 16}
!90 = !{!"", !37, i64 0}
!91 = !{!89, !37, i64 0}
!92 = !{!89, !37, i64 16}
!93 = !{!94, !37, i64 288}
!94 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !95, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !45, i64 616, !45, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !45, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !45, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !45, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !60, i64 1304, !60, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!95 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!96 = !{!97, !40, i64 110}
!97 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !42, i64 144, !42, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !45, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !45, i64 524, !45, i64 528, !45, i64 532, !37, i64 536}
!98 = !{!99, !41, i64 36}
!99 = !{!"bActionGroup", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !41, i64 36, !38, i64 40, !100, i64 104}
!100 = !{!"ThemeWireColor", !38, i64 0, !38, i64 4, !38, i64 8, !40, i64 12, !40, i64 14}
!101 = !{!84, !37, i64 48}
!102 = !{!45, !45, i64 0}
!103 = !{!84, !41, i64 64}
!104 = !{!38, !38, i64 0}
!105 = !{i64 0, i64 36, !104, i64 36, i64 4, !102, i64 40, i64 4, !102, i64 44, i64 4, !102, i64 48, i64 1, !104, i64 49, i64 1, !104, i64 50, i64 1, !104, i64 51, i64 1, !104, i64 52, i64 1, !104, i64 53, i64 1, !104, i64 54, i64 1, !104, i64 55, i64 1, !104, i64 56, i64 4, !102, i64 60, i64 4, !102, i64 64, i64 4, !102, i64 68, i64 4, !104}
!106 = !{!107, !38, i64 51}
!107 = !{!"BezTriple", !38, i64 0, !45, i64 36, !45, i64 40, !45, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !45, i64 56, !45, i64 60, !45, i64 64, !38, i64 68}
!108 = !{!107, !38, i64 52}
!109 = !{!107, !38, i64 53}
!110 = !{!84, !37, i64 56}
!111 = !{!107, !38, i64 50}
!112 = !{!107, !38, i64 49}
!113 = !{!70, !38, i64 8941}
!114 = !{!70, !38, i64 8940}
!115 = !{!107, !38, i64 48}
!116 = !{!107, !45, i64 56}
!117 = !{!107, !45, i64 60}
!118 = !{!107, !45, i64 64}
!119 = !{i64 0, i64 8, !82, i64 8, i64 8, !82, i64 16, i64 8, !82}
!120 = !{!94, !37, i64 1368}
!121 = !{!94, !37, i64 1176}
!122 = !{!94, !37, i64 216}
!123 = !{!124, !40, i64 16}
!124 = !{!"RigidBodyOb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !38, i64 64, !38, i64 80, !45, i64 92}
!125 = !{!97, !37, i64 24}
!126 = !{!97, !37, i64 128}
!127 = !{!128, !40, i64 26}
!128 = !{!"bConstraint", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !38, i64 28, !38, i64 29, !38, i64 30, !40, i64 94, !45, i64 96, !45, i64 100, !37, i64 104, !45, i64 112, !45, i64 116}
!129 = !{!128, !45, i64 96}
!130 = !{!128, !40, i64 24}
!131 = !{!128, !37, i64 0}
!132 = distinct !{!132, !133, !134}
!133 = !{!"llvm.loop.mustprogress"}
!134 = !{!"llvm.loop.unroll.disable"}
!135 = !{!94, !40, i64 1040}
!136 = !{!97, !40, i64 268}
!137 = !{!97, !37, i64 120}
!138 = !{!139, !37, i64 24}
!139 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !38, i64 48, !45, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!140 = !{!139, !41, i64 176}
!141 = distinct !{!141, !133, !134}
!142 = !{i32 -1, i32 -2147483648}
!143 = !{!84, !41, i64 88}
!144 = !{i8 0, i8 2}
!145 = distinct !{!145, !133, !134}
!146 = distinct !{!146, !133, !134}
!147 = !{!148, !37, i64 0}
!148 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !42, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !149, i64 152, !40, i64 184}
!149 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!150 = !{!148, !37, i64 8}
!151 = !{!148, !37, i64 24}
!152 = !{!148, !37, i64 32}
!153 = !{!148, !37, i64 72}
!154 = !{!148, !40, i64 184}
!155 = !{!148, !37, i64 88}
!156 = !{!148, !37, i64 104}
!157 = !{!158, !37, i64 112}
!158 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!159 = !{!35, !41, i64 680}
!160 = !{!35, !41, i64 4380}
!161 = !{!158, !37, i64 120}
!162 = !{!94, !37, i64 296}
!163 = !{!78, !41, i64 2100}
!164 = !{!148, !37, i64 48}
!165 = !{!158, !37, i64 88}
!166 = !{!167, !37, i64 32}
!167 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !89, i64 16}
!168 = !{!94, !37, i64 120}
!169 = !{!81, !37, i64 120}
!170 = !{!84, !37, i64 0}
!171 = !{!94, !41, i64 432}
!172 = distinct !{!172, !133, !134}
!173 = distinct !{!173, !133, !134}
!174 = distinct !{!174, !133, !134}
!175 = distinct !{!175, !133, !134}
!176 = !{!41, !41, i64 0}
!177 = distinct !{!177, !133, !134}
!178 = distinct !{!178, !133, !134}
!179 = distinct !{!179, !133, !134}
!180 = distinct !{!180, !133, !134}
!181 = !{!81, !41, i64 184}
!182 = distinct !{!182, !133, !134}
!183 = !{!94, !41, i64 460}
!184 = !{!94, !41, i64 456}
!185 = distinct !{!185, !133, !134}
