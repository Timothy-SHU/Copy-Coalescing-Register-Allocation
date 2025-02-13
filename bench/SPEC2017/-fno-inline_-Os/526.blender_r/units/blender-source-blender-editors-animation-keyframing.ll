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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
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
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %22, label %21

15:                                               ; preds = %2
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %17 = lshr i16 %16, 1
  %18 = and i16 %17, 3
  %19 = and i16 %16, 8
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %46, label %43

21:                                               ; preds = %4, %11
  br label %22

22:                                               ; preds = %11, %21
  %23 = phi i16 [ 2, %21 ], [ 0, %11 ]
  %24 = and i16 %8, 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %28 = and i16 %27, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22, %26
  %31 = or disjoint i16 %23, 1
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi i16 [ %31, %30 ], [ %23, %26 ]
  %34 = and i16 %8, 8
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !69
  %38 = and i16 %37, 8
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %32, %36
  %41 = or i16 %33, 32
  %42 = icmp eq i16 %1, 0
  br i1 %42, label %62, label %50

43:                                               ; preds = %15
  %44 = or disjoint i16 %18, 32
  %45 = icmp eq i16 %1, 0
  br i1 %45, label %62, label %55

46:                                               ; preds = %15
  %47 = icmp eq i16 %1, 0
  br i1 %47, label %62, label %55

48:                                               ; preds = %36
  %49 = icmp eq i16 %1, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %40, %48
  %51 = phi i16 [ %33, %48 ], [ %41, %40 ]
  %52 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 21
  %53 = load i16, ptr %52, align 8, !tbaa !73
  %54 = icmp eq i16 %53, 5
  br i1 %54, label %59, label %62

55:                                               ; preds = %43, %46
  %56 = phi i16 [ %18, %46 ], [ %44, %43 ]
  %57 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !74
  %58 = icmp eq i16 %57, 5
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %50
  %60 = phi i16 [ %56, %55 ], [ %51, %50 ]
  %61 = or i16 %60, 16
  br label %62

62:                                               ; preds = %43, %46, %48, %50, %55, %59, %40
  %63 = phi i16 [ %61, %59 ], [ %51, %50 ], [ %56, %55 ], [ %41, %40 ], [ %33, %48 ], [ %18, %46 ], [ %44, %43 ]
  ret i16 %63
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @verify_adt_action(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #2 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #13
  %5 = icmp eq ptr %4, null
  %6 = icmp ne i16 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call ptr @BKE_id_add_animdata(ptr noundef %0) #13
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %4, %2 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = icmp eq ptr %0, null
  %15 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %16 = select i1 %14, ptr @.str.1, ptr %15
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %16) #14
  br label %31

18:                                               ; preds = %10
  %19 = load ptr, ptr %11, align 8, !tbaa !75
  %20 = icmp eq ptr %19, null
  %21 = and i1 %6, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %23 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %24 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %25 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #13
  %26 = load ptr, ptr @G, align 8, !tbaa !77
  %27 = call ptr @add_empty_action(ptr noundef %26, ptr noundef nonnull %3) #13
  store ptr %27, ptr %11, align 8, !tbaa !75
  %28 = load i16, ptr %23, align 8, !tbaa !79
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.bAction, ptr %27, i64 0, i32 7
  store i32 %29, ptr %30, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  br label %31

31:                                               ; preds = %18, %22, %13
  %32 = phi ptr [ null, %13 ], [ %27, %22 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @add_empty_action(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @verify_fcurve(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i16 noundef signext %5) local_unnamed_addr #2 {
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %3, null
  %9 = or i1 %7, %8
  br i1 %9, label %57, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %12 = tail call ptr @list_find_fcurve(ptr noundef nonnull %11, ptr noundef nonnull %3, i32 noundef %4) #13
  %13 = icmp eq ptr %12, null
  %14 = icmp ne i16 %5, 0
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %57

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !82
  %18 = tail call ptr %17(i64 noundef 112, ptr noundef nonnull @.str.3) #13
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 9
  store i16 3, ptr %19, align 8, !tbaa !83
  %20 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %11) #14, !range !85
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i16 3, i16 7
  store i16 %22, ptr %19, align 8
  %23 = tail call ptr @BLI_strdup(ptr noundef nonnull %3) #13
  %24 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 12
  store ptr %23, ptr %24, align 8, !tbaa !86
  %25 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 11
  store i32 %4, ptr %25, align 4, !tbaa !87
  %26 = icmp eq ptr %1, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %16
  %28 = tail call ptr @BKE_action_group_find_name(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = tail call ptr @action_groups_add_new(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
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
  %48 = tail call ptr @BLI_findlink(ptr noundef nonnull %43, i32 noundef %47) #13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.bActionGroup, ptr %48, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !98
  %53 = getelementptr inbounds %struct.bActionGroup, ptr %31, i64 0, i32 4
  store i32 %52, ptr %53, align 4, !tbaa !98
  tail call void @action_group_colors_sync(ptr noundef %31, ptr noundef nonnull %48) #13
  br label %54

54:                                               ; preds = %37, %50, %30, %33, %27
  %55 = phi ptr [ %31, %33 ], [ %31, %30 ], [ %28, %27 ], [ %31, %50 ], [ %31, %37 ]
  tail call void @action_groups_add_channel(ptr noundef nonnull %0, ptr noundef %55, ptr noundef nonnull %18) #13
  br label %57

56:                                               ; preds = %16
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef nonnull %18) #13
  br label %57

57:                                               ; preds = %10, %56, %54, %6
  %58 = phi ptr [ null, %6 ], [ %18, %54 ], [ %18, %56 ], [ %12, %10 ]
  ret ptr %58
}

; Function Attrs: optsize
declare ptr @list_find_fcurve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_action_group_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @action_groups_add_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @action_group_colors_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @action_groups_add_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_autoflags_fcurve(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
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
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.4) #13
  br label %32

16:                                               ; preds = %11, %4
  %17 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %3, ptr noundef %18, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load ptr, ptr %3, align 8, !tbaa !91
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 4
  %25 = select i1 %23, ptr @.str.5, ptr %24
  %26 = load ptr, ptr %17, align 8, !tbaa !86
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef nonnull %25, ptr noundef %26) #13
  br label %32

27:                                               ; preds = %16
  %28 = load ptr, ptr %6, align 8, !tbaa !82
  call fastcc void @update_autoflags_fcurve_direct(ptr noundef nonnull %0, ptr noundef %28) #14
  %29 = load i16, ptr %7, align 8, !tbaa !83
  %30 = icmp eq i16 %8, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 239468545, ptr noundef null) #13
  br label %32

32:                                               ; preds = %27, %31, %21, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_autoflags_fcurve_direct(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !103 {
  %3 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %4 = load i16, ptr %3, align 8, !tbaa !83
  %5 = and i16 %4, -6145
  store i16 %5, ptr %3, align 8, !tbaa !83
  %6 = tail call i32 @RNA_property_type(ptr noundef %1) #13
  switch i32 %6, label %7 [
    i32 2, label %12
    i32 1, label %8
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i16 [ 6144, %7 ], [ 2048, %2 ]
  %10 = load i16, ptr %3, align 8, !tbaa !83
  %11 = or i16 %10, %9
  store i16 %11, ptr %3, align 8, !tbaa !83
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @insert_bezt_fcurve(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp eq ptr %6, null
  br i1 %7, label %83, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !105
  %11 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !106
  %13 = call i32 @binarysearch_bezt_index(ptr noundef nonnull %6, float noundef %10, i32 noundef %12, ptr noundef nonnull %4) #13
  %14 = load i8, ptr %4, align 1, !tbaa !107
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %8
  %17 = icmp sgt i32 %13, -1
  br i1 %17, label %18, label %82

18:                                               ; preds = %16
  %19 = load i32, ptr %11, align 8, !tbaa !106
  %20 = icmp ult i32 %13, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %18
  %22 = and i16 %2, 128
  %23 = icmp eq i16 %22, 0
  %24 = load ptr, ptr %5, align 8, !tbaa !104
  %25 = zext nneg i32 %13 to i64
  %26 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 %25
  br i1 %23, label %28, label %27

27:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %26, ptr noundef nonnull align 4 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !108
  br label %82

28:                                               ; preds = %21
  %29 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !105
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %26, i64 0, i64 1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !105
  %33 = fsub float %30, %32
  %34 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !105
  %36 = fadd float %35, %33
  store float %36, ptr %34, align 4, !tbaa !105
  %37 = fadd float %32, %33
  store float %37, ptr %31, align 4, !tbaa !105
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %26, i64 0, i64 2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !105
  %40 = fadd float %33, %39
  store float %40, ptr %38, align 4, !tbaa !105
  %41 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %42 = load i8, ptr %41, align 1, !tbaa !109
  %43 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 %25, i32 7
  store i8 %42, ptr %43, align 1, !tbaa !109
  %44 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %45 = load i8, ptr %44, align 4, !tbaa !111
  %46 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 %25, i32 8
  store i8 %45, ptr %46, align 4, !tbaa !111
  %47 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %48 = load i8, ptr %47, align 1, !tbaa !112
  %49 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 %25, i32 9
  store i8 %48, ptr %49, align 1, !tbaa !112
  br label %82

50:                                               ; preds = %8
  %51 = and i16 %2, 16
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !82
  %55 = load i32, ptr %11, align 8, !tbaa !106
  %56 = add i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = mul nuw nsw i64 %57, 72
  %59 = call ptr %54(i64 noundef %58, ptr noundef nonnull @.str.7) #13
  %60 = icmp sgt i32 %13, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load ptr, ptr %5, align 8, !tbaa !104
  %63 = zext nneg i32 %13 to i64
  %64 = mul nuw nsw i64 %63, 72
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %59, ptr align 4 %62, i64 %64, i1 false)
  br label %65

65:                                               ; preds = %61, %53
  %66 = sext i32 %13 to i64
  %67 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 %66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %67, ptr noundef nonnull align 4 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !108
  %68 = load i32, ptr %11, align 8, !tbaa !106
  %69 = icmp ult i32 %13, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 1
  %72 = load ptr, ptr %5, align 8, !tbaa !104
  %73 = getelementptr inbounds %struct.BezTriple, ptr %72, i64 %66
  %74 = sub i32 %68, %13
  %75 = zext i32 %74 to i64
  %76 = mul nuw nsw i64 %75, 72
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %71, ptr align 4 %73, i64 %76, i1 false)
  br label %77

77:                                               ; preds = %70, %65
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  %79 = load ptr, ptr %5, align 8, !tbaa !104
  call void %78(ptr noundef %79) #13
  store ptr %59, ptr %5, align 8, !tbaa !104
  %80 = load i32, ptr %11, align 8, !tbaa !106
  %81 = add i32 %80, 1
  store i32 %81, ptr %11, align 8, !tbaa !106
  br label %82

82:                                               ; preds = %50, %77, %16, %18, %28, %27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %94

83:                                               ; preds = %3
  %84 = and i16 %2, 16
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !113
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !82
  %92 = tail call ptr %91(i64 noundef 72, ptr noundef nonnull @.str.7) #13
  store ptr %92, ptr %5, align 8, !tbaa !104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %92, ptr noundef nonnull align 4 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !108
  %93 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  store i32 1, ptr %93, align 8, !tbaa !106
  br label %94

94:                                               ; preds = %82, %90, %83, %86
  %95 = phi i32 [ -1, %86 ], [ -1, %83 ], [ %13, %82 ], [ 0, %90 ]
  ret i32 %95
}

; Function Attrs: optsize
declare i32 @binarysearch_bezt_index(ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @insert_vert_fcurve(ptr noundef %0, float noundef %1, float noundef %2, i16 noundef signext %3) local_unnamed_addr #2 {
  %5 = alloca %struct.BezTriple, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #15
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i64 64, i1 false)
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !106
  %9 = fadd float %1, -1.000000e+00
  store float %9, ptr %5, align 4, !tbaa !105
  %10 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %2, ptr %10, align 4, !tbaa !105
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  store float %1, ptr %11, align 4, !tbaa !105
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store float %2, ptr %12, align 4, !tbaa !105
  %13 = fadd float %1, 1.000000e+00
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  store float %13, ptr %14, align 4, !tbaa !105
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  store float %2, ptr %15, align 4, !tbaa !105
  %16 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 9
  store i8 1, ptr %16, align 1, !tbaa !112
  %17 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 8
  store i8 1, ptr %17, align 4, !tbaa !111
  %18 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 7
  store i8 1, ptr %18, align 1, !tbaa !109
  %19 = zext i16 %3 to i32
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  %22 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 76), align 1
  %23 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 75), align 4
  %24 = select i1 %21, i8 %22, i8 4
  %25 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 6
  store i8 %24, ptr %25, align 2
  %26 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 5
  store i8 %24, ptr %26, align 1
  %27 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 4
  %28 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %29 = load i16, ptr %28, align 8, !tbaa !83
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 4096
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = select i1 %21, i8 %23, i8 2
  %35 = icmp ne i8 %34, 2
  %36 = and i32 %30, 2048
  %37 = icmp eq i32 %36, 0
  %38 = or i1 %37, %35
  %39 = select i1 %38, i8 %34, i8 1
  br label %40

40:                                               ; preds = %4, %33
  %41 = phi i8 [ %39, %33 ], [ 0, %4 ]
  store i8 %41, ptr %27, align 4
  %42 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 12
  store <2 x float> <float 0x3FFB39AC00000000, float 0x3FE99999A0000000>, ptr %42, align 4, !tbaa !105
  %43 = getelementptr inbounds %struct.BezTriple, ptr %5, i64 0, i32 14
  store float 0x4010666660000000, ptr %43, align 4, !tbaa !114
  %44 = call i32 @insert_bezt_fcurve(ptr noundef nonnull %0, ptr noundef nonnull %5, i16 noundef signext %3) #14
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %40
  %47 = and i32 %19, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call void @calchandles_fcurve(ptr noundef nonnull %0) #13
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, ptr %7, align 8, !tbaa !106
  %52 = icmp ugt i32 %51, 2
  %53 = and i32 %19, 16
  %54 = icmp eq i32 %53, 0
  %55 = and i1 %54, %52
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = icmp ugt i32 %51, %8
  br i1 %57, label %58, label %68

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !104
  %61 = zext nneg i32 %44 to i64
  %62 = getelementptr inbounds %struct.BezTriple, ptr %60, i64 %61
  %63 = icmp eq i32 %44, 0
  %64 = getelementptr inbounds %struct.BezTriple, ptr %60, i64 %61, i32 4
  %65 = select i1 %63, i64 1, i64 -1
  %66 = getelementptr %struct.BezTriple, ptr %62, i64 %65, i32 4
  %67 = load i8, ptr %66, align 4, !tbaa !115
  store i8 %67, ptr %64, align 4, !tbaa !115
  br label %68

68:                                               ; preds = %58, %56
  br i1 %48, label %69, label %70

69:                                               ; preds = %68
  tail call void @calchandles_fcurve(ptr noundef nonnull %0) #13
  br label %70

70:                                               ; preds = %50, %69, %68, %40
  %71 = phi i32 [ -1, %40 ], [ %44, %68 ], [ %44, %69 ], [ %44, %50 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #15
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @insert_keyframe_direct(ptr noundef %0, ptr noundef byval(%struct.PointerRNA) align 8 %1, ptr noundef %2, ptr noundef %3, float noundef %4, i16 noundef signext %5) local_unnamed_addr #2 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.PointerRNA, align 8
  store ptr %2, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %3, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.8) #13
  br label %80

11:                                               ; preds = %6
  %12 = tail call zeroext i8 @fcurve_is_keyframable(ptr noundef nonnull %3) #13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !87
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef %16, i32 noundef %18) #13
  br label %80

19:                                               ; preds = %11
  %20 = load ptr, ptr %1, align 8, !tbaa !91
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  %25 = select i1 %21, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.10) #13
  br label %80

27:                                               ; preds = %19
  %28 = icmp eq ptr %2, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  %30 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %1, ptr noundef %31, ptr noundef nonnull %8, ptr noundef nonnull %7) #13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load ptr, ptr %1, align 8
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 4
  %38 = select i1 %36, ptr @.str.5, ptr %37
  %39 = load ptr, ptr %30, align 8, !tbaa !86
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef nonnull %38, ptr noundef %39) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  br label %80

40:                                               ; preds = %29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  %41 = load ptr, ptr %7, align 8, !tbaa !82
  br label %42

42:                                               ; preds = %40, %27
  %43 = phi ptr [ %41, %40 ], [ %2, %27 ]
  call fastcc void @update_autoflags_fcurve_direct(ptr noundef nonnull %3, ptr noundef %43) #14
  %44 = zext i16 %5 to i32
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %7, align 8, !tbaa !82
  %49 = call fastcc zeroext i8 @visualkey_can_use(ptr noundef nonnull %1, ptr noundef %48) #14, !range !85
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %7, align 8, !tbaa !82
  %53 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 11
  %54 = load i32, ptr %53, align 4, !tbaa !87
  %55 = call fastcc float @visualkey_get_value(ptr noundef nonnull %1, ptr noundef %52, i32 noundef %54) #14
  br label %61

56:                                               ; preds = %47, %42
  %57 = load ptr, ptr %7, align 8, !tbaa !82
  %58 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 11
  %59 = load i32, ptr %58, align 4, !tbaa !87
  %60 = call fastcc float @setting_get_rna_value(ptr noundef nonnull %1, ptr noundef %57, i32 noundef %59) #14
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi float [ %55, %51 ], [ %60, %56 ]
  %63 = and i32 %44, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  %66 = call fastcc signext i16 @new_key_needed(ptr noundef nonnull %3, float noundef %4, float noundef %62) #14
  %67 = icmp ne i16 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = call i32 @insert_vert_fcurve(ptr noundef nonnull %3, float noundef %4, float noundef %62, i16 noundef signext %5) #14, !range !117
  switch i16 %66, label %76 [
    i16 2, label %70
    i16 3, label %74
  ]

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !106
  %73 = add i32 %72, -2
  br label %74

74:                                               ; preds = %68, %70
  %75 = phi i32 [ %73, %70 ], [ 1, %68 ]
  call void @delete_fcurve_key(ptr noundef nonnull %3, i32 noundef %75, i8 noundef zeroext 1) #13
  br label %76

76:                                               ; preds = %74, %65, %68
  %77 = zext i1 %67 to i8
  br label %80

78:                                               ; preds = %61
  %79 = call i32 @insert_vert_fcurve(ptr noundef nonnull %3, float noundef %4, float noundef %62, i16 noundef signext %5) #14, !range !117
  br label %80

80:                                               ; preds = %34, %76, %78, %26, %14, %10
  %81 = phi i8 [ 0, %10 ], [ 0, %14 ], [ 0, %26 ], [ 1, %78 ], [ %77, %76 ], [ 0, %34 ]
  ret i8 %81
}

; Function Attrs: optsize
declare zeroext i8 @fcurve_is_keyframable(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @visualkey_can_use(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !118 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %98, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %8, %7
  br i1 %9, label %98, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp eq ptr %12, @RNA_Object
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 128
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 106
  %18 = load ptr, ptr %17, align 8, !tbaa !120
  %19 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %1) #13
  %20 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  %22 = icmp ne ptr %21, null
  %23 = icmp eq ptr %16, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.RigidBodyOb, ptr %16, i64 0, i32 2
  %26 = load i16, ptr %25, align 8, !tbaa !122
  %27 = icmp eq i16 %26, 0
  %28 = zext i1 %27 to i32
  br label %38

29:                                               ; preds = %10
  %30 = icmp eq ptr %12, @RNA_PoseBone
  br i1 %30, label %31, label %38

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !124
  %34 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %1) #13
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 13
  %36 = load ptr, ptr %35, align 8, !tbaa !125
  %37 = icmp ne ptr %36, null
  br label %38

38:                                               ; preds = %14, %24, %29, %31
  %39 = phi i32 [ 0, %31 ], [ 0, %29 ], [ 0, %14 ], [ %28, %24 ]
  %40 = phi i1 [ %37, %31 ], [ false, %29 ], [ %22, %14 ], [ %22, %24 ]
  %41 = phi ptr [ %34, %31 ], [ null, %29 ], [ %19, %14 ], [ %19, %24 ]
  %42 = phi ptr [ %33, %31 ], [ null, %29 ], [ %18, %14 ], [ %18, %24 ]
  %43 = icmp eq ptr %42, null
  %44 = icmp eq ptr %41, null
  %45 = select i1 %43, i1 true, i1 %44
  %46 = xor i1 %40, true
  %47 = select i1 %45, i1 %46, i1 false
  %48 = icmp eq i32 %39, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %98, label %50

50:                                               ; preds = %38
  br i1 %44, label %51, label %53

51:                                               ; preds = %50
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef nonnull @__func__.visualkey_can_use) #14
  br label %98

53:                                               ; preds = %50
  %54 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) @.str.60) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) @.str.61) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) @.str.62) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, ptr noundef nonnull @__func__.visualkey_can_use, ptr noundef nonnull %41) #14
  br label %98

64:                                               ; preds = %53, %56, %59
  %65 = phi i1 [ false, %53 ], [ true, %56 ], [ false, %59 ]
  %66 = phi i1 [ false, %53 ], [ false, %56 ], [ true, %59 ]
  %67 = icmp ne i32 %39, 0
  %68 = select i1 %40, i1 true, i1 %67
  %69 = or i1 %68, %43
  %70 = zext i1 %68 to i8
  br i1 %69, label %98, label %71

71:                                               ; preds = %64, %95
  %72 = phi ptr [ %96, %95 ], [ %42, %64 ]
  %73 = getelementptr inbounds %struct.bConstraint, ptr %72, i64 0, i32 4
  %74 = load i16, ptr %73, align 2, !tbaa !126
  %75 = and i16 %74, 4
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.bConstraint, ptr %72, i64 0, i32 9
  %79 = load float, ptr %78, align 8, !tbaa !128
  %80 = fcmp oeq float %79, 0.000000e+00
  br i1 %80, label %95, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.bConstraint, ptr %72, i64 0, i32 3
  %83 = load i16, ptr %82, align 8, !tbaa !129
  switch i16 %83, label %95 [
    i16 1, label %98
    i16 19, label %98
    i16 23, label %98
    i16 4, label %98
    i16 3, label %98
    i16 2, label %84
    i16 21, label %85
    i16 5, label %86
    i16 6, label %87
    i16 7, label %88
    i16 14, label %89
    i16 8, label %90
    i16 9, label %91
    i16 10, label %92
    i16 13, label %93
    i16 16, label %94
  ]

84:                                               ; preds = %81
  br i1 %65, label %98, label %95

85:                                               ; preds = %81
  br i1 %65, label %98, label %95

86:                                               ; preds = %81
  br i1 %65, label %98, label %95

87:                                               ; preds = %81
  br i1 %55, label %95, label %98

88:                                               ; preds = %81
  br i1 %66, label %98, label %95

89:                                               ; preds = %81
  br i1 %55, label %95, label %98

90:                                               ; preds = %81
  br i1 %65, label %98, label %95

91:                                               ; preds = %81
  br i1 %55, label %95, label %98

92:                                               ; preds = %81
  br i1 %66, label %98, label %95

93:                                               ; preds = %81
  br i1 %65, label %98, label %95

94:                                               ; preds = %81
  br i1 %55, label %95, label %98

95:                                               ; preds = %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %81, %77, %71
  %96 = load ptr, ptr %72, align 8, !tbaa !130
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %71, !llvm.loop !131

98:                                               ; preds = %81, %81, %81, %81, %81, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %64, %38, %2, %4, %62, %51
  %99 = phi i8 [ 0, %51 ], [ 0, %62 ], [ 0, %4 ], [ 0, %2 ], [ 0, %38 ], [ %70, %64 ], [ 1, %81 ], [ 1, %81 ], [ 1, %81 ], [ 1, %81 ], [ 1, %81 ], [ 1, %84 ], [ 1, %85 ], [ 1, %86 ], [ 1, %87 ], [ 1, %88 ], [ 1, %89 ], [ 1, %90 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], [ 1, %94 ], [ 0, %95 ]
  ret i8 %99
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @visualkey_get_value(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !133 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca float, align 4
  %10 = alloca [3 x float], align 4
  %11 = tail call ptr @RNA_property_identifier(ptr noundef %1) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp eq ptr %13, @RNA_Object
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.60) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %21) #13
  %22 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 83
  %23 = load i16, ptr %22, align 8, !tbaa !134
  br label %55

24:                                               ; preds = %15
  %25 = sext i32 %2 to i64
  %26 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47, i64 3, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !105
  br label %89

28:                                               ; preds = %3
  %29 = icmp eq ptr %13, @RNA_PoseBone
  br i1 %29, label %30, label %53

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 29
  call void @BKE_armature_mat_pose_to_bone(ptr noundef %32, ptr noundef nonnull %33, ptr noundef nonnull %4) #13
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %35 = load i16, ptr %34, align 4, !tbaa !135
  %36 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.60) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !136
  %41 = getelementptr inbounds %struct.Bone, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !137
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.Bone, ptr %40, i64 0, i32 10
  %46 = load i32, ptr %45, align 8, !tbaa !139
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38, %44
  %50 = sext i32 %2 to i64
  %51 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !105
  br label %89

53:                                               ; preds = %28
  %54 = tail call fastcc float @setting_get_rna_value(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #14
  br label %89

55:                                               ; preds = %30, %44, %20
  %56 = phi i16 [ %23, %20 ], [ %35, %44 ], [ %35, %30 ]
  %57 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.64) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @mat4_to_eulO(ptr noundef nonnull %5, i16 noundef signext %56, ptr noundef nonnull %4) #13
  %60 = sext i32 %2 to i64
  %61 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  br label %89

63:                                               ; preds = %55
  %64 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.65) #16
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %4) #13
  call void @mat3_to_quat_is_ok(ptr noundef nonnull %7, ptr noundef nonnull %6) #13
  %67 = sext i32 %2 to i64
  %68 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #15
  br label %89

70:                                               ; preds = %63
  %71 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.66) #16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  call void @mat4_to_axis_angle(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  %74 = icmp eq i32 %2, 0
  %75 = add nsw i32 %2, -1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %76
  %78 = select i1 %74, ptr %9, ptr %77
  %79 = load float, ptr %78, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  br label %89

80:                                               ; preds = %70
  %81 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.62) #16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  call void @mat4_to_size(ptr noundef nonnull %10, ptr noundef nonnull %4) #13
  %84 = sext i32 %2 to i64
  %85 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %84
  %86 = load float, ptr %85, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  br label %89

87:                                               ; preds = %80
  %88 = call fastcc float @setting_get_rna_value(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #14
  br label %89

89:                                               ; preds = %49, %24, %87, %83, %73, %66, %59, %53
  %90 = phi float [ %62, %59 ], [ %69, %66 ], [ %79, %73 ], [ %86, %83 ], [ %88, %87 ], [ %27, %24 ], [ %52, %49 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret float %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @setting_get_rna_value(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !140 {
  %4 = tail call i32 @RNA_property_type(ptr noundef %1) #13
  switch i32 %4, label %33 [
    i32 0, label %5
    i32 1, label %14
    i32 2, label %23
    i32 4, label %30
  ]

5:                                                ; preds = %3
  %6 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %1) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @RNA_property_boolean_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  %10 = sitofp i32 %9 to float
  br label %33

11:                                               ; preds = %5
  %12 = tail call i32 @RNA_property_boolean_get(ptr noundef %0, ptr noundef %1) #13
  %13 = sitofp i32 %12 to float
  br label %33

14:                                               ; preds = %3
  %15 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %1) #13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @RNA_property_int_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  %19 = sitofp i32 %18 to float
  br label %33

20:                                               ; preds = %14
  %21 = tail call i32 @RNA_property_int_get(ptr noundef %0, ptr noundef %1) #13
  %22 = sitofp i32 %21 to float
  br label %33

23:                                               ; preds = %3
  %24 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %1) #13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call float @RNA_property_float_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  br label %33

28:                                               ; preds = %23
  %29 = tail call float @RNA_property_float_get(ptr noundef %0, ptr noundef %1) #13
  br label %33

30:                                               ; preds = %3
  %31 = tail call i32 @RNA_property_enum_get(ptr noundef %0, ptr noundef %1) #13
  %32 = sitofp i32 %31 to float
  br label %33

33:                                               ; preds = %3, %26, %28, %17, %20, %8, %11, %30
  %34 = phi float [ 0.000000e+00, %3 ], [ %32, %30 ], [ %27, %26 ], [ %29, %28 ], [ %19, %17 ], [ %22, %20 ], [ %10, %8 ], [ %13, %11 ]
  ret float %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @new_key_needed(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #2 !PGOFuncName !141 {
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !106
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %115, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %9 = icmp sgt i32 %5, 0
  %10 = load ptr, ptr %8, align 8, !tbaa !104
  br i1 %9, label %16, label %11

11:                                               ; preds = %7
  %12 = add i32 %5, -1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 %13, i32 0, i64 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !105
  br label %101

16:                                               ; preds = %7
  %17 = icmp eq i32 %5, 1
  %18 = add nsw i32 %5, -1
  br label %19

19:                                               ; preds = %90, %16
  %20 = phi i32 [ 0, %16 ], [ %92, %90 ]
  %21 = phi ptr [ %10, %16 ], [ %91, %90 ]
  %22 = phi ptr [ null, %16 ], [ %21, %90 ]
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !105
  %25 = icmp eq ptr %22, null
  br i1 %25, label %85, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !105
  %29 = fsub float %28, %1
  %30 = tail call float @llvm.fabs.f32(float %29)
  %31 = fcmp ult float %30, 0x3E80000000000000
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = fsub float %24, %1
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fcmp ult float %34, 0x3E80000000000000
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = fsub float %24, %28
  %38 = tail call float @llvm.fabs.f32(float %37)
  %39 = fcmp ult float %38, 0x3E80000000000000
  br i1 %39, label %115, label %40

40:                                               ; preds = %36, %32, %26
  %41 = fcmp ugt float %28, %1
  %42 = fcmp ult float %24, %1
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %66, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !105
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !105
  %49 = fsub float %48, %2
  %50 = tail call float @llvm.fabs.f32(float %49)
  %51 = fcmp ult float %50, 0x3E80000000000000
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = fsub float %46, %2
  %54 = tail call float @llvm.fabs.f32(float %53)
  %55 = fcmp ult float %54, 0x3E80000000000000
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = fsub float %48, %46
  %58 = tail call float @llvm.fabs.f32(float %57)
  %59 = fcmp ult float %58, 0x3E80000000000000
  br i1 %59, label %115, label %60

60:                                               ; preds = %56, %52, %44
  %61 = tail call float @evaluate_fcurve(ptr noundef %0, float noundef %1) #13
  %62 = fsub float %61, %2
  %63 = tail call float @llvm.fabs.f32(float %62)
  %64 = fcmp oge float %63, 0x3E80000000000000
  %65 = zext i1 %64 to i16
  br label %115

66:                                               ; preds = %40
  %67 = fcmp ogt float %28, %1
  br i1 %67, label %68, label %88

68:                                               ; preds = %66
  %69 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !105
  %71 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !105
  %73 = fsub float %72, %2
  %74 = tail call float @llvm.fabs.f32(float %73)
  %75 = fcmp ult float %74, 0x3E80000000000000
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = fsub float %70, %2
  %78 = tail call float @llvm.fabs.f32(float %77)
  %79 = fcmp ult float %78, 0x3E80000000000000
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = fsub float %72, %70
  %82 = tail call float @llvm.fabs.f32(float %81)
  %83 = fcmp ult float %82, 0x3E80000000000000
  br i1 %83, label %115, label %84

84:                                               ; preds = %80, %76, %68
  br label %115

85:                                               ; preds = %19
  %86 = fcmp ogt float %24, %1
  %87 = and i1 %17, %86
  br i1 %87, label %115, label %88

88:                                               ; preds = %85, %66
  %89 = icmp eq i32 %20, %18
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %92 = add nuw nsw i32 %20, 1
  br label %19

93:                                               ; preds = %88
  %94 = zext i32 %18 to i64
  %95 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 %94, i32 0, i64 1, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !105
  %97 = icmp eq ptr %22, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !105
  br label %104

101:                                              ; preds = %11, %93
  %102 = phi float [ %15, %11 ], [ %96, %93 ]
  %103 = fadd float %102, 1.000000e+00
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi float [ %96, %98 ], [ %102, %101 ]
  %106 = phi float [ %100, %98 ], [ %103, %101 ]
  %107 = fsub float %105, %2
  %108 = tail call float @llvm.fabs.f32(float %107)
  %109 = fcmp ult float %108, 0x3E80000000000000
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = fsub float %105, %106
  %112 = tail call float @llvm.fabs.f32(float %111)
  %113 = fcmp ult float %112, 0x3E80000000000000
  br i1 %113, label %115, label %114

114:                                              ; preds = %110, %104
  br label %115

115:                                              ; preds = %85, %36, %80, %56, %84, %60, %110, %3, %114
  %116 = phi i16 [ 1, %114 ], [ 1, %3 ], [ 2, %110 ], [ 3, %80 ], [ 0, %56 ], [ 1, %84 ], [ %65, %60 ], [ 0, %36 ], [ 1, %85 ]
  ret i16 %116
}

; Function Attrs: optsize
declare void @delete_fcurve_key(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local signext i16 @insert_keyframe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, float noundef %6, i16 noundef signext %7) local_unnamed_addr #2 {
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  store ptr null, ptr %11, align 8, !tbaa !82
  %12 = add nsw i32 %5, 1
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %4) #13
  br label %87

15:                                               ; preds = %8
  call void @RNA_id_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull %9) #13
  %16 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %9, ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef nonnull %19, ptr noundef %4) #13
  br label %87

20:                                               ; preds = %15
  %21 = icmp eq ptr %2, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = call ptr @verify_adt_action(ptr noundef nonnull %1, i16 noundef signext 1) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef nonnull %26, ptr noundef %4) #13
  br label %87

27:                                               ; preds = %22, %20
  %28 = phi ptr [ %23, %22 ], [ %2, %20 ]
  %29 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %1) #13
  %30 = call float @BKE_nla_tweakedit_remap(ptr noundef %29, float noundef %6, i16 noundef signext 1) #13
  %31 = icmp eq i32 %5, -1
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load ptr, ptr %11, align 8, !tbaa !82
  %34 = call i32 @RNA_property_array_length(ptr noundef nonnull %10, ptr noundef %33) #13
  %35 = call i32 @llvm.umax.i32(i32 %34, i32 1)
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %27, %32
  %38 = phi i32 [ %35, %32 ], [ %12, %27 ]
  %39 = phi i32 [ 0, %32 ], [ %5, %27 ]
  %40 = zext i16 %7 to i32
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i16
  %44 = and i32 %40, 32
  %45 = icmp eq i32 %44, 0
  br label %46

46:                                               ; preds = %37, %83
  %47 = phi i16 [ 0, %37 ], [ %84, %83 ]
  %48 = phi i32 [ %39, %37 ], [ %85, %83 ]
  %49 = call ptr @verify_fcurve(ptr noundef nonnull %28, ptr noundef %3, ptr noundef nonnull %10, ptr noundef %4, i32 noundef %48, i16 noundef signext %43) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %83, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.FCurve, ptr %49, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !106
  %54 = icmp ne i32 %53, 0
  %55 = or i1 %45, %54
  br i1 %55, label %78, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %11, align 8, !tbaa !82
  %58 = call i32 @RNA_property_subtype(ptr noundef %57) #13
  %59 = icmp eq i32 %58, 65557
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %11, align 8, !tbaa !82
  %62 = call i32 @RNA_property_subtype(ptr noundef %61) #13
  %63 = icmp eq i32 %62, 29
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %11, align 8, !tbaa !82
  %66 = call i32 @RNA_property_subtype(ptr noundef %65) #13
  %67 = icmp eq i32 %66, 327706
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %11, align 8, !tbaa !82
  %70 = call i32 @RNA_property_subtype(ptr noundef %69) #13
  %71 = icmp eq i32 %70, 20
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %11, align 8, !tbaa !82
  %74 = call i32 @RNA_property_subtype(ptr noundef %73) #13
  %75 = icmp eq i32 %74, 31
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %68, %64, %60, %56
  %77 = getelementptr inbounds %struct.FCurve, ptr %49, i64 0, i32 13
  store i32 1, ptr %77, align 8, !tbaa !142
  br label %78

78:                                               ; preds = %72, %76, %51
  %79 = load ptr, ptr %11, align 8, !tbaa !82
  %80 = call zeroext i8 @insert_keyframe_direct(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %10, ptr noundef %79, ptr noundef nonnull %49, float noundef %30, i16 noundef signext %7) #14, !range !85
  %81 = zext nneg i8 %80 to i16
  %82 = add i16 %47, %81
  br label %83

83:                                               ; preds = %46, %78
  %84 = phi i16 [ %82, %78 ], [ %47, %46 ]
  %85 = add i32 %48, 1
  %86 = icmp eq i32 %85, %38
  br i1 %86, label %87, label %46, !llvm.loop !143

87:                                               ; preds = %83, %32, %25, %18, %14
  %88 = phi i16 [ 0, %14 ], [ 0, %18 ], [ 0, %25 ], [ 0, %32 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  ret i16 %88
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local signext i16 @delete_keyframe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, float noundef %6, i16 signext %7) local_unnamed_addr #2 {
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca ptr, align 8
  %12 = tail call ptr @BKE_animdata_from_id(ptr noundef %1) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  %13 = add nsw i32 %5, 1
  %14 = icmp eq ptr %1, null
  %15 = icmp eq ptr %12, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.15) #13
  br label %68

18:                                               ; preds = %8
  call void @RNA_id_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull %9) #13
  %19 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %9, ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull %22, ptr noundef %4) #13
  br label %68

23:                                               ; preds = %18
  %24 = icmp eq ptr %2, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = load ptr, ptr %12, align 8, !tbaa !75
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %12, float noundef %6, i16 noundef signext 1) #13
  br label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef nonnull %31) #13
  br label %68

32:                                               ; preds = %28, %23
  %33 = phi float [ %29, %28 ], [ %6, %23 ]
  %34 = phi ptr [ %26, %28 ], [ %2, %23 ]
  %35 = icmp eq i32 %5, -1
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load ptr, ptr %11, align 8, !tbaa !82
  %38 = call i32 @RNA_property_array_length(ptr noundef nonnull %10, ptr noundef %37) #13
  %39 = call i32 @llvm.umax.i32(i32 %38, i32 1)
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %32, %36
  %42 = phi i32 [ %39, %36 ], [ %13, %32 ]
  %43 = phi i32 [ 0, %36 ], [ %5, %32 ]
  %44 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %45 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  br label %46

46:                                               ; preds = %41, %64
  %47 = phi i16 [ 0, %41 ], [ %65, %64 ]
  %48 = phi i32 [ %43, %41 ], [ %66, %64 ]
  %49 = call ptr @verify_fcurve(ptr noundef nonnull %34, ptr noundef %3, ptr noundef nonnull %10, ptr noundef %4, i32 noundef %48, i16 noundef signext 0) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51

51:                                               ; preds = %46
  %52 = call zeroext i8 @BKE_fcurve_is_protected(ptr noundef nonnull %49) #13
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.FCurve, ptr %49, i64 0, i32 12
  %56 = load ptr, ptr %55, align 8, !tbaa !86
  %57 = load i16, ptr %44, align 8, !tbaa !79
  %58 = sext i16 %57 to i32
  %59 = call ptr @BKE_idcode_to_name(i32 noundef %58) #13
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.18, ptr noundef %56, ptr noundef %59, ptr noundef nonnull %45) #13
  br label %64

60:                                               ; preds = %51
  %61 = call fastcc zeroext i8 @delete_keyframe_fcurve(ptr noundef %12, ptr noundef nonnull %49, float noundef %33) #14, !range !85
  %62 = zext nneg i8 %61 to i16
  %63 = add i16 %47, %62
  br label %64

64:                                               ; preds = %46, %60, %54
  %65 = phi i16 [ %47, %54 ], [ %63, %60 ], [ %47, %46 ]
  %66 = add i32 %48, 1
  %67 = icmp eq i32 %66, %42
  br i1 %67, label %68, label %46, !llvm.loop !144

68:                                               ; preds = %64, %36, %30, %21, %17
  %69 = phi i16 [ 0, %17 ], [ 0, %21 ], [ 0, %30 ], [ 0, %36 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  ret i16 %69
}

; Function Attrs: optsize
declare zeroext i8 @BKE_fcurve_is_protected(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_idcode_to_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @delete_keyframe_fcurve(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #2 !PGOFuncName !145 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !106
  %9 = call i32 @binarysearch_bezt_index(ptr noundef %6, float noundef %2, i32 noundef %8, ptr noundef nonnull %4) #13
  %10 = load i8, ptr %4, align 1, !tbaa !107
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  call void @delete_fcurve_key(ptr noundef nonnull %1, i32 noundef %9, i8 noundef zeroext 1) #13
  %13 = load i32, ptr %7, align 8, !tbaa !106
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 4
  %17 = call zeroext i8 @list_has_suitable_fmodifier(ptr noundef nonnull %16, i32 noundef 0, i16 noundef signext 3) #13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef null, ptr noundef %0, ptr noundef nonnull %1) #13
  br label %20

20:                                               ; preds = %3, %12, %15, %19
  %21 = phi i8 [ 1, %19 ], [ 1, %15 ], [ 1, %12 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_OT_keyframe_insert(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @insert_key_exec, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @modify_key_op_poll, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @ANIM_keying_sets_enum_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !155
  %11 = load ptr, ptr %7, align 8, !tbaa !154
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #13
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 524288) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @insert_key_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !156 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.22) #13
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
  %21 = tail call ptr @BLI_findlink(ptr noundef nonnull %19, i32 noundef %20) #13
  br label %25

22:                                               ; preds = %15
  %23 = xor i32 %16, -1
  %24 = tail call ptr @BLI_findlink(ptr noundef nonnull @builtin_keyingsets, i32 noundef %23) #13
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %21, %18 ], [ %24, %22 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %30, i32 noundef 32, ptr noundef nonnull @.str.67) #13
  br label %75

31:                                               ; preds = %25
  %32 = icmp eq ptr %4, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !162
  %36 = tail call zeroext i8 @ANIM_keyingset_find_id(ptr noundef nonnull %26, ptr noundef %35) #13
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void @ED_object_toggle_modes(ptr noundef %0, i32 noundef 1) #13
  br label %39

39:                                               ; preds = %38, %33, %31
  %40 = phi i1 [ false, %38 ], [ true, %33 ], [ true, %31 ]
  %41 = tail call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %26, i16 noundef signext 0, float noundef %10) #13
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
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %47, i32 noundef 2, ptr noundef nonnull @.str.68, ptr noundef nonnull %48, i32 noundef %50) #13
  br label %51

51:                                               ; preds = %45, %39
  br i1 %40, label %53, label %52

52:                                               ; preds = %51
  tail call void @ED_object_toggle_modes(ptr noundef %0, i32 noundef 1) #13
  br label %53

53:                                               ; preds = %52, %51
  %54 = shl i32 %41, 16
  %55 = ashr exact i32 %54, 16
  %56 = icmp eq i32 %54, -65536
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %59, i32 noundef 32, ptr noundef nonnull @.str.69) #13
  br label %75

60:                                               ; preds = %53
  %61 = and i32 %41, 65535
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 8, !tbaa !157
  %65 = tail call i32 @RNA_boolean_get(ptr noundef %64, ptr noundef nonnull @.str.25) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !161
  %70 = getelementptr inbounds %struct.KeyingSet, ptr %26, i64 0, i32 4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %69, i32 noundef 2, ptr noundef nonnull @.str.70, i32 noundef %55, ptr noundef nonnull %70) #13
  br label %71

71:                                               ; preds = %67, %63
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #13
  br label %75

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %74, i32 noundef 16, ptr noundef nonnull @.str.71) #13
  br label %75

75:                                               ; preds = %72, %71, %57, %28
  %76 = phi i32 [ 2, %28 ], [ 2, %57 ], [ 4, %71 ], [ 4, %72 ]
  ret i32 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @modify_key_op_poll(ptr noundef %0) #2 !PGOFuncName !164 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = icmp ne ptr %2, null
  %5 = icmp ne ptr %3, null
  %6 = select i1 %4, i1 %5, i1 false
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ANIM_keying_sets_enum_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_OT_keyframe_insert_menu(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @insert_key_menu_invoke, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @insert_key_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.22, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @ANIM_keying_sets_enum_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 524288) #13
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !155
  %12 = load ptr, ptr %8, align 8, !tbaa !154
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #13
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 524288) #13
  %14 = load ptr, ptr %8, align 8, !tbaa !154
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #13
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 524288) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @insert_key_menu_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #2 !PGOFuncName !166 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 34
  %6 = load i32, ptr %5, align 4, !tbaa !160
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.31) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !167
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !154
  %18 = tail call ptr @RNA_struct_ui_name(ptr noundef %17) #13
  %19 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %18, i32 noundef 0) #13
  %20 = tail call ptr @uiPupMenuLayout(ptr noundef %19) #13
  tail call void @uiItemsEnumO(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22) #13
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %19) #13
  br label %29

21:                                               ; preds = %8
  %22 = load ptr, ptr %9, align 8, !tbaa !157
  tail call void @RNA_enum_set(ptr noundef %22, ptr noundef nonnull @.str.22, i32 noundef 0) #13
  %23 = load ptr, ptr %9, align 8, !tbaa !157
  tail call void @RNA_boolean_set(ptr noundef %23, ptr noundef nonnull @.str.25, i32 noundef 1) #13
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !167
  %26 = getelementptr inbounds %struct.wmOperatorType, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !151
  %28 = tail call i32 %27(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %29

29:                                               ; preds = %21, %13
  %30 = phi i32 [ 32, %13 ], [ %28, %21 ]
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @ED_operator_areaactive(ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_OT_keyframe_delete(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_key_exec, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @modify_key_op_poll, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @ANIM_keying_sets_enum_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !155
  %11 = load ptr, ptr %7, align 8, !tbaa !154
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_key_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !168 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.22) #13
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
  %20 = tail call ptr @BLI_findlink(ptr noundef nonnull %18, i32 noundef %19) #13
  br label %24

21:                                               ; preds = %14
  %22 = xor i32 %15, -1
  %23 = tail call ptr @BLI_findlink(ptr noundef nonnull @builtin_keyingsets, i32 noundef %22) #13
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %20, %17 ], [ %23, %21 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %29, i32 noundef 32, ptr noundef nonnull @.str.72) #13
  br label %65

30:                                               ; preds = %24
  %31 = tail call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %25, i16 noundef signext 1, float noundef %9) #13
  %32 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = shl i32 %31, 16
  %37 = ashr exact i32 %36, 16
  br label %43

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.KeyingSet, ptr %25, i64 0, i32 4
  %40 = shl i32 %31, 16
  %41 = ashr exact i32 %40, 16
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, ptr noundef nonnull %39, i32 noundef %41) #14
  br label %43

43:                                               ; preds = %35, %38
  %44 = phi i32 [ %37, %35 ], [ %41, %38 ]
  %45 = phi i32 [ %36, %35 ], [ %40, %38 ]
  %46 = icmp eq i32 %45, -65536
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %49, i32 noundef 32, ptr noundef nonnull @.str.69) #13
  br label %65

50:                                               ; preds = %43
  %51 = and i32 %31, 65535
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %4, align 8, !tbaa !157
  %55 = tail call i32 @RNA_boolean_get(ptr noundef %54, ptr noundef nonnull @.str.25) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !161
  %60 = getelementptr inbounds %struct.KeyingSet, ptr %25, i64 0, i32 4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %59, i32 noundef 2, ptr noundef nonnull @.str.74, i32 noundef %44, ptr noundef nonnull %60) #13
  br label %61

61:                                               ; preds = %57, %53
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468548, ptr noundef null) #13
  br label %65

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !161
  tail call void @BKE_report(ptr noundef %64, i32 noundef 16, ptr noundef nonnull @.str.75) #13
  br label %65

65:                                               ; preds = %62, %61, %47, %27
  %66 = phi i32 [ 2, %27 ], [ 2, %47 ], [ 4, %61 ], [ 4, %62 ]
  ret i32 %66
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_keyframe_clear_v3d(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_anim_v3d_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !153
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clear_anim_v3d_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !169 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #13
  %5 = load ptr, ptr %3, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %69

8:                                                ; preds = %2, %62
  %9 = phi ptr [ %64, %62 ], [ %5, %2 ]
  %10 = phi i8 [ %63, %62 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !170
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !172
  %15 = icmp eq ptr %14, null
  br i1 %15, label %62, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %14, align 8, !tbaa !75
  %18 = icmp eq ptr %17, null
  br i1 %18, label %62, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bAction, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !173
  %22 = icmp eq ptr %21, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 27
  %25 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 18
  br label %26

26:                                               ; preds = %23, %59
  %27 = phi i8 [ %10, %23 ], [ %60, %59 ]
  %28 = phi ptr [ %21, %23 ], [ %29, %59 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !174
  %30 = load i32, ptr %24, align 8, !tbaa !175
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = icmp eq ptr %35, null
  br i1 %36, label %59, label %37

37:                                               ; preds = %33
  %38 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.76) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %37
  %41 = call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %35, ptr noundef nonnull @.str.76) #13
  %42 = load ptr, ptr %25, align 8, !tbaa !93
  %43 = call ptr @BKE_pose_channel_find_name(ptr noundef %42, ptr noundef %41) #13
  %44 = icmp eq ptr %41, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %46(ptr noundef nonnull %41) #13
  br label %47

47:                                               ; preds = %45, %40
  %48 = icmp eq ptr %43, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.bPoseChannel, ptr %43, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !136
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Bone, ptr %51, i64 0, i32 10
  %55 = load i32, ptr %54, align 8, !tbaa !139
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %26, %53
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef null, ptr noundef nonnull %14, ptr noundef nonnull %28) #13
  call void @DAG_id_tag_update(ptr noundef nonnull %12, i16 noundef signext 1) #13
  br label %59

59:                                               ; preds = %53, %47, %49, %33, %37, %58
  %60 = phi i8 [ 1, %58 ], [ %27, %37 ], [ %27, %33 ], [ %27, %49 ], [ %27, %47 ], [ %27, %53 ]
  %61 = icmp eq ptr %29, null
  br i1 %61, label %62, label %26, !llvm.loop !176

62:                                               ; preds = %59, %19, %16, %8
  %63 = phi i8 [ %10, %16 ], [ %10, %8 ], [ %10, %19 ], [ %60, %59 ]
  %64 = load ptr, ptr %9, align 8, !tbaa !82
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %8, !llvm.loop !177

66:                                               ; preds = %62
  %67 = icmp eq i8 %63, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef null) #13
  br label %69

69:                                               ; preds = %7, %66, %68
  %70 = phi i32 [ 4, %68 ], [ 2, %66 ], [ 2, %7 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_keyframe_delete_v3d(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_key_v3d_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_key_v3d_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !178 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !159
  %7 = sitofp i32 %6 to float
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %8 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #13
  %9 = load ptr, ptr %3, align 8, !tbaa !82
  %10 = icmp eq ptr %9, null
  br i1 %10, label %53, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %13

13:                                               ; preds = %11, %47
  %14 = phi ptr [ %9, %11 ], [ %51, %47 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !170
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !172
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %18, align 8, !tbaa !75
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %18, float noundef %7, i16 noundef signext 1) #13
  %25 = getelementptr inbounds %struct.bAction, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !173
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4, i64 2
  br label %30

30:                                               ; preds = %28, %44
  %31 = phi i32 [ 0, %28 ], [ %45, %44 ]
  %32 = phi ptr [ %26, %28 ], [ %33, %44 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !174
  %34 = call zeroext i8 @BKE_fcurve_is_protected(ptr noundef nonnull %32) #13
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %12, align 8, !tbaa !161
  %38 = getelementptr inbounds %struct.FCurve, ptr %32, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %37, i32 noundef 16, ptr noundef nonnull @.str.77, ptr noundef %39, ptr noundef nonnull %29) #13
  br label %44

40:                                               ; preds = %30
  %41 = call fastcc zeroext i8 @delete_keyframe_fcurve(ptr noundef nonnull %18, ptr noundef nonnull %32, float noundef %24) #14, !range !85
  %42 = zext nneg i8 %41 to i32
  %43 = add nsw i32 %31, %42
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %31, %36 ], [ %43, %40 ]
  %46 = icmp eq ptr %33, null
  br i1 %46, label %47, label %30, !llvm.loop !179

47:                                               ; preds = %44, %23, %20, %13
  %48 = phi i32 [ 0, %20 ], [ 0, %13 ], [ 0, %23 ], [ %45, %44 ]
  %49 = load ptr, ptr %12, align 8, !tbaa !161
  %50 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %49, i32 noundef 2, ptr noundef nonnull @.str.78, ptr noundef nonnull %50, i32 noundef %48) #13
  call void @DAG_id_tag_update(ptr noundef %16, i16 noundef signext 1) #13
  %51 = load ptr, ptr %14, align 8, !tbaa !82
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %13, !llvm.loop !180

53:                                               ; preds = %47, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef null) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_OT_keyframe_insert_button(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @insert_key_button_exec, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @modify_key_op_poll, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.48, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @insert_key_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !181 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr null, ptr %4, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !159
  %9 = sitofp i32 %8 to float
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.48) #13
  %13 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %6, i16 noundef signext 1) #14
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %14 = load ptr, ptr %3, align 8, !tbaa !91
  %15 = icmp ne ptr %14, null
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = icmp ne ptr %17, null
  %19 = select i1 %15, i1 %18, i1 false
  %20 = load ptr, ptr %4, align 8
  %21 = icmp ne ptr %20, null
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %75

23:                                               ; preds = %2
  %24 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %3, ptr noundef nonnull %20) #13
  %25 = icmp eq i8 %24, 0
  %26 = load ptr, ptr %4, align 8, !tbaa !82
  br i1 %25, label %75, label %27

27:                                               ; preds = %23
  %28 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %3, ptr noundef %26) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %27
  %31 = and i32 %12, 255
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !tbaa !82
  %35 = call i32 @RNA_property_array_length(ptr noundef nonnull %3, ptr noundef %34) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  store i32 0, ptr %5, align 4, !tbaa !182
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %30, %33, %37
  %40 = phi i32 [ %35, %37 ], [ 1, %33 ], [ 1, %30 ]
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %42

42:                                               ; preds = %39, %42
  %43 = phi i16 [ 0, %39 ], [ %50, %42 ]
  %44 = phi i32 [ 0, %39 ], [ %51, %42 ]
  %45 = load ptr, ptr %41, align 8, !tbaa !161
  %46 = load ptr, ptr %3, align 8, !tbaa !91
  %47 = load i32, ptr %5, align 4, !tbaa !182
  %48 = add nsw i32 %47, %44
  %49 = call signext i16 @insert_keyframe(ptr noundef %45, ptr noundef %46, ptr noundef null, ptr noundef null, ptr noundef nonnull %28, i32 noundef %48, float noundef %9, i16 noundef signext %13) #14
  %50 = add i16 %49, %43
  %51 = add nuw nsw i32 %44, 1
  %52 = icmp eq i32 %51, %40
  br i1 %52, label %53, label %42, !llvm.loop !183

53:                                               ; preds = %42, %37
  %54 = phi i16 [ 0, %37 ], [ %50, %42 ]
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %55(ptr noundef nonnull %28) #13
  br label %91

56:                                               ; preds = %27
  %57 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !88
  %59 = icmp eq ptr %58, @RNA_NlaStrip
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load ptr, ptr %16, align 8, !tbaa !92
  %62 = getelementptr inbounds %struct.NlaStrip, ptr %61, i64 0, i32 5
  %63 = load ptr, ptr %4, align 8, !tbaa !82
  %64 = call ptr @RNA_property_identifier(ptr noundef %63) #13
  %65 = sext i16 %13 to i32
  %66 = call ptr @list_find_fcurve(ptr noundef nonnull %62, ptr noundef %64, i32 noundef %65) #13
  %67 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %68 = load ptr, ptr %67, align 8, !tbaa !161
  %69 = load ptr, ptr %4, align 8, !tbaa !82
  %70 = call zeroext i8 @insert_keyframe_direct(ptr noundef %68, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3, ptr noundef %69, ptr noundef %66, float noundef %9, i16 noundef signext 0) #14, !range !85
  %71 = zext nneg i8 %70 to i16
  br label %91

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !161
  call void @BKE_report(ptr noundef %74, i32 noundef 16, ptr noundef nonnull @.str.79) #13
  br label %95

75:                                               ; preds = %23, %2
  %76 = phi ptr [ %20, %2 ], [ %26, %23 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %75
  %79 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %3, ptr noundef nonnull %76) #13
  %80 = icmp eq i8 %79, 0
  %81 = load ptr, ptr %4, align 8, !tbaa !82
  br i1 %80, label %82, label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !161
  %85 = call ptr @RNA_property_identifier(ptr noundef %81) #13
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %84, i32 noundef 16, ptr noundef nonnull @.str.80, ptr noundef %85) #13
  br label %95

86:                                               ; preds = %78, %75
  %87 = phi ptr [ %81, %78 ], [ null, %75 ]
  %88 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %89 = load ptr, ptr %88, align 8, !tbaa !161
  %90 = load ptr, ptr %16, align 8, !tbaa !92
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %89, i32 noundef 16, ptr noundef nonnull @.str.81, ptr noundef %90, ptr noundef %87) #13
  br label %95

91:                                               ; preds = %53, %60
  %92 = phi i16 [ %54, %53 ], [ %71, %60 ]
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  call void @uiContextAnimUpdate(ptr noundef %0) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468547, ptr noundef null) #13
  br label %95

95:                                               ; preds = %82, %86, %72, %91, %94
  %96 = phi i32 [ 4, %94 ], [ 2, %91 ], [ 2, %72 ], [ 2, %86 ], [ 2, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 %96
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_OT_keyframe_delete_button(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_key_button_exec, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @modify_key_op_poll, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.48, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.54) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_key_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !184 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr null, ptr %4, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !159
  %9 = sitofp i32 %8 to float
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.48) #13
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %13 = load ptr, ptr %3, align 8, !tbaa !91
  %14 = icmp ne ptr %13, null
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %14, i1 %17, i1 false
  %19 = load ptr, ptr %4, align 8
  %20 = icmp ne ptr %19, null
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %59

22:                                               ; preds = %2
  %23 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %3, ptr noundef nonnull %19) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %22
  %26 = and i32 %12, 255
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %4, align 8, !tbaa !82
  %30 = call i32 @RNA_property_array_length(ptr noundef nonnull %3, ptr noundef %29) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  store i32 0, ptr %5, align 4, !tbaa !182
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %35(ptr noundef nonnull %23) #13
  br label %66

36:                                               ; preds = %25, %28, %32
  %37 = phi i32 [ %30, %32 ], [ 1, %28 ], [ 1, %25 ]
  %38 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %39

39:                                               ; preds = %36, %39
  %40 = phi i16 [ 0, %36 ], [ %47, %39 ]
  %41 = phi i32 [ 0, %36 ], [ %48, %39 ]
  %42 = load ptr, ptr %38, align 8, !tbaa !161
  %43 = load ptr, ptr %3, align 8, !tbaa !91
  %44 = load i32, ptr %5, align 4, !tbaa !182
  %45 = add nsw i32 %44, %41
  %46 = call signext i16 @delete_keyframe(ptr noundef %42, ptr noundef %43, ptr noundef null, ptr noundef null, ptr noundef nonnull %23, i32 noundef %45, float noundef %9, i16 signext poison) #14
  %47 = add i16 %46, %40
  %48 = add nuw nsw i32 %41, 1
  %49 = icmp eq i32 %48, %37
  br i1 %49, label %50, label %39, !llvm.loop !185

50:                                               ; preds = %39
  %51 = icmp eq i16 %47, 0
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %52(ptr noundef nonnull %23) #13
  br i1 %51, label %66, label %65

53:                                               ; preds = %22
  %54 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %66

59:                                               ; preds = %2
  %60 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef %16, ptr noundef %19) #14
  br label %66

65:                                               ; preds = %50
  call void @uiContextAnimUpdate(ptr noundef %0) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468548, ptr noundef null) #13
  br label %66

66:                                               ; preds = %34, %57, %53, %63, %59, %65, %50
  %67 = phi i32 [ 4, %65 ], [ 2, %50 ], [ 2, %59 ], [ 2, %63 ], [ 2, %53 ], [ 2, %57 ], [ 2, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_OT_keyframe_clear_button(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_key_button_exec, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @modify_key_op_poll, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.48, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.58) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clear_key_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !186 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr null, ptr %4, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.48) #13
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %9 = load ptr, ptr %3, align 8, !tbaa !91
  %10 = icmp ne ptr %9, null
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  %14 = select i1 %10, i1 %13, i1 false
  %15 = load ptr, ptr %4, align 8
  %16 = icmp ne ptr %15, null
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %55

18:                                               ; preds = %2
  %19 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %3, ptr noundef nonnull %15) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %18
  %22 = and i32 %8, 255
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 8, !tbaa !82
  %26 = call i32 @RNA_property_array_length(ptr noundef nonnull %3, ptr noundef %25) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  store i32 0, ptr %5, align 4, !tbaa !182
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %31(ptr noundef nonnull %19) #13
  br label %62

32:                                               ; preds = %21, %24, %28
  %33 = phi i32 [ %26, %28 ], [ 1, %24 ], [ 1, %21 ]
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i16 [ 0, %32 ], [ %43, %35 ]
  %37 = phi i32 [ 0, %32 ], [ %44, %35 ]
  %38 = load ptr, ptr %34, align 8, !tbaa !161
  %39 = load ptr, ptr %3, align 8, !tbaa !91
  %40 = load i32, ptr %5, align 4, !tbaa !182
  %41 = add nsw i32 %40, %37
  %42 = call fastcc signext i16 @clear_keyframe(ptr noundef %38, ptr noundef %39, ptr noundef nonnull %19, i32 noundef %41) #14
  %43 = add i16 %42, %36
  %44 = add nuw nsw i32 %37, 1
  %45 = icmp eq i32 %44, %33
  br i1 %45, label %46, label %35, !llvm.loop !187

46:                                               ; preds = %35
  %47 = icmp eq i16 %43, 0
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  call void %48(ptr noundef nonnull %19) #13
  br i1 %47, label %62, label %61

49:                                               ; preds = %18
  %50 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = call i32 @puts(ptr nonnull dereferenceable(1) @str.87)
  br label %62

55:                                               ; preds = %2
  %56 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef %12, ptr noundef %15) #14
  br label %62

61:                                               ; preds = %46
  call void @uiContextAnimUpdate(ptr noundef %0) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468548, ptr noundef null) #13
  br label %62

62:                                               ; preds = %30, %53, %49, %59, %55, %61, %46
  %63 = phi i32 [ 4, %61 ], [ 2, %46 ], [ 2, %55 ], [ 2, %59 ], [ 2, %49 ], [ 2, %53 ], [ 2, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @autokeyframe_cfra_can_key(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !159
  %5 = sitofp i32 %4 to float
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 21
  %9 = load i16, ptr %8, align 8, !tbaa !79
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = icmp eq i16 %9, 3
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = tail call zeroext i8 @id_frame_has_keyframe(ptr noundef %1, float noundef %5, i16 noundef signext 1) #14
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %12, %2, %14
  %18 = phi i32 [ %16, %14 ], [ 0, %2 ], [ 1, %12 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @id_frame_has_keyframe(ptr noundef %0, float noundef %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !79
  %8 = icmp eq i16 %7, 16975
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i8 @object_frame_has_keyframe(ptr noundef nonnull %0, float noundef %1, i16 noundef signext %2) #14, !range !85
  br label %17

11:                                               ; preds = %5
  %12 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !75
  %16 = tail call fastcc zeroext i8 @action_frame_has_keyframe(ptr noundef %15, float noundef %1, i16 noundef signext %2) #14, !range !85
  br label %17

17:                                               ; preds = %14, %11, %3, %9
  %18 = phi i8 [ %10, %9 ], [ 0, %3 ], [ %16, %14 ], [ 0, %11 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @fcurve_frame_has_keyframe(ptr noundef readonly %0, float noundef %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !104
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  %19 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !106
  %21 = call i32 @binarysearch_bezt_index(ptr noundef nonnull %8, float noundef %1, i32 noundef %20, ptr noundef nonnull %4) #13
  %22 = load i8, ptr %4, align 1, !tbaa !107
  %23 = icmp ne i8 %22, 0
  %24 = icmp sgt i32 %21, -1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, ptr %19, align 8, !tbaa !106
  %28 = icmp ult i32 %21, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %18, %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %31

30:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %31

31:                                               ; preds = %13, %29, %30, %3, %6
  %32 = phi i8 [ 1, %30 ], [ 0, %6 ], [ 0, %3 ], [ 0, %29 ], [ 0, %13 ]
  ret i8 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @object_frame_has_keyframe(ptr noundef %0, float noundef %1, i16 noundef signext %2) unnamed_addr #2 !PGOFuncName !188 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !75
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc zeroext i8 @action_frame_has_keyframe(ptr noundef nonnull %8, float noundef %1, i16 noundef signext %2) #14, !range !85
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %10, %7, %3
  %14 = zext i16 %2 to i32
  %15 = and i32 %14, 1025
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %0) #13
  %19 = tail call zeroext i8 @id_frame_has_keyframe(ptr noundef %18, float noundef %1, i16 noundef signext %2) #14
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %17, %13
  %22 = and i32 %14, 513
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = and i32 %14, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  br label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %31 = load i32, ptr %30, align 4, !tbaa !189
  %32 = trunc i32 %31 to i16
  %33 = add i16 %32, 1
  %34 = tail call ptr @give_current_material(ptr noundef nonnull %0, i16 noundef signext %33) #13
  %35 = tail call zeroext i8 @id_frame_has_keyframe(ptr noundef %34, float noundef %1, i16 noundef signext %2) #14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %47, label %48

37:                                               ; preds = %27, %41
  %38 = phi i32 [ %42, %41 ], [ 0, %27 ]
  %39 = load i32, ptr %28, align 8, !tbaa !190
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = add nuw nsw i32 %38, 1
  %43 = trunc i32 %42 to i16
  %44 = tail call ptr @give_current_material(ptr noundef nonnull %0, i16 noundef signext %43) #13
  %45 = tail call zeroext i8 @id_frame_has_keyframe(ptr noundef %44, float noundef %1, i16 noundef signext %2) #14
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %37, label %48, !llvm.loop !191

47:                                               ; preds = %37, %29, %21
  br label %48

48:                                               ; preds = %41, %29, %17, %10, %47
  %49 = phi i8 [ 0, %47 ], [ 1, %29 ], [ 1, %17 ], [ 1, %10 ], [ 1, %41 ]
  ret i8 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @action_frame_has_keyframe(ptr noundef readonly %0, float noundef %1, i16 noundef signext %2) unnamed_addr #2 !PGOFuncName !192 {
  %4 = icmp ne ptr %0, null
  %5 = and i16 %2, 2
  %6 = icmp eq i16 %5, 0
  %7 = and i1 %4, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !193
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %13, %29
  %18 = phi ptr [ %30, %29 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !106
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call zeroext i8 @fcurve_frame_has_keyframe(ptr noundef nonnull %18, float noundef %1, i16 noundef signext %2) #14, !range !85
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17, %22, %26
  %30 = load ptr, ptr %18, align 8, !tbaa !82
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %17, !llvm.loop !194

32:                                               ; preds = %26, %29, %13, %8, %3
  %33 = phi i8 [ 0, %3 ], [ 0, %8 ], [ 0, %13 ], [ 1, %26 ], [ 0, %29 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_autokeyframe_object(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %1, ptr noundef %2) #14, !range !195
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %5, ptr noundef %2, ptr noundef null, ptr noundef null) #13
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !159
  %11 = sitofp i32 %10 to float
  %12 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, ptr noundef %3, i16 noundef signext 0, float noundef %11) #13
  call void @BLI_freelistN(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi i8 [ 1, %8 ], [ 0, %4 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @ANIM_relative_keyingset_add_source(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ANIM_apply_keyingset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ListBase, align 8
  %7 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %1, ptr noundef %2) #14, !range !195
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull @RNA_PoseBone, ptr noundef %3) #13
  %10 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !159
  %12 = sitofp i32 %11 to float
  %13 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %4, i16 noundef signext 0, float noundef %12) #13
  call void @BLI_freelistN(ptr noundef nonnull %6) #13
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.Bone, ptr %15, i64 0, i32 10
  %19 = load i32, ptr %18, align 8, !tbaa !139
  %20 = and i32 %19, -8193
  store i32 %20, ptr %18, align 8, !tbaa !139
  br label %21

21:                                               ; preds = %17, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %30

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !136
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Bone, ptr %24, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !139
  %29 = or i32 %28, 8192
  store i32 %29, ptr %27, align 8, !tbaa !139
  br label %30

30:                                               ; preds = %22, %26, %21
  %31 = phi i8 [ 1, %21 ], [ 0, %26 ], [ 0, %22 ]
  ret i8 %31
}

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_armature_mat_pose_to_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mat4_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mat3_to_quat_is_ok(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mat4_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_int_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: optsize
declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @list_has_suitable_fmodifier(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_fcurve_delete_from_animdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ANIM_keyingset_find_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_object_toggle_modes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemsEnumO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiContextActiveProperty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_property_animateable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiContextAnimUpdate(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @clear_keyframe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 !PGOFuncName !196 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  %8 = tail call ptr @BKE_animdata_from_id(ptr noundef %1) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %9 = add nsw i32 %3, 1
  %10 = icmp eq ptr %1, null
  %11 = icmp eq ptr %8, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.15) #13
  br label %54

14:                                               ; preds = %4
  call void @RNA_id_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull %5) #13
  %15 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.85, ptr noundef nonnull %18, ptr noundef %2) #13
  br label %54

19:                                               ; preds = %14
  %20 = load ptr, ptr %8, align 8, !tbaa !75
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef nonnull %23) #13
  br label %54

24:                                               ; preds = %19
  %25 = icmp eq i32 %3, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !tbaa !82
  %28 = call i32 @RNA_property_array_length(ptr noundef nonnull %6, ptr noundef %27) #13
  %29 = call i32 @llvm.umax.i32(i32 %28, i32 1)
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %24, %26
  %32 = phi i32 [ %29, %26 ], [ %9, %24 ]
  %33 = phi i32 [ 0, %26 ], [ %3, %24 ]
  br label %34

34:                                               ; preds = %31, %50
  %35 = phi i16 [ %51, %50 ], [ 0, %31 ]
  %36 = phi i32 [ %52, %50 ], [ %33, %31 ]
  %37 = call ptr @verify_fcurve(ptr noundef nonnull %20, ptr noundef null, ptr noundef nonnull %6, ptr noundef %2, i32 noundef %36, i16 noundef signext 0) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = call zeroext i8 @BKE_fcurve_is_protected(ptr noundef nonnull %37) #13
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !163
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = call i32 @puts(ptr nonnull dereferenceable(1) @str.88)
  br label %50

48:                                               ; preds = %39
  call void @ANIM_fcurve_delete_from_animdata(ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %37) #13
  %49 = add i16 %35, 1
  br label %50

50:                                               ; preds = %42, %46, %34, %48
  %51 = phi i16 [ %49, %48 ], [ %35, %34 ], [ %35, %46 ], [ %35, %42 ]
  %52 = add i32 %36, 1
  %53 = icmp eq i32 %52, %32
  br i1 %53, label %54, label %34, !llvm.loop !197

54:                                               ; preds = %50, %26, %22, %17, %13
  %55 = phi i16 [ 0, %13 ], [ 0, %17 ], [ 0, %22 ], [ 0, %26 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret i16 %55
}

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize willreturn memory(read) }

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
!85 = !{i8 0, i8 2}
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
!101 = !{!"keyframing.c:BLI_listbase_is_empty"}
!102 = !{!42, !37, i64 0}
!103 = !{!"keyframing.c:update_autoflags_fcurve_direct"}
!104 = !{!84, !37, i64 48}
!105 = !{!45, !45, i64 0}
!106 = !{!84, !41, i64 64}
!107 = !{!38, !38, i64 0}
!108 = !{i64 0, i64 36, !107, i64 36, i64 4, !105, i64 40, i64 4, !105, i64 44, i64 4, !105, i64 48, i64 1, !107, i64 49, i64 1, !107, i64 50, i64 1, !107, i64 51, i64 1, !107, i64 52, i64 1, !107, i64 53, i64 1, !107, i64 54, i64 1, !107, i64 55, i64 1, !107, i64 56, i64 4, !105, i64 60, i64 4, !105, i64 64, i64 4, !105, i64 68, i64 4, !107}
!109 = !{!110, !38, i64 51}
!110 = !{!"BezTriple", !38, i64 0, !45, i64 36, !45, i64 40, !45, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !45, i64 56, !45, i64 60, !45, i64 64, !38, i64 68}
!111 = !{!110, !38, i64 52}
!112 = !{!110, !38, i64 53}
!113 = !{!84, !37, i64 56}
!114 = !{!110, !45, i64 64}
!115 = !{!110, !38, i64 48}
!116 = !{i64 0, i64 8, !82, i64 8, i64 8, !82, i64 16, i64 8, !82}
!117 = !{i32 -1, i32 -2147483648}
!118 = !{!"keyframing.c:visualkey_can_use"}
!119 = !{!94, !37, i64 1368}
!120 = !{!94, !37, i64 1176}
!121 = !{!94, !37, i64 216}
!122 = !{!123, !40, i64 16}
!123 = !{!"RigidBodyOb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !38, i64 64, !38, i64 80, !45, i64 92}
!124 = !{!97, !37, i64 24}
!125 = !{!97, !37, i64 128}
!126 = !{!127, !40, i64 26}
!127 = !{!"bConstraint", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !38, i64 28, !38, i64 29, !38, i64 30, !40, i64 94, !45, i64 96, !45, i64 100, !37, i64 104, !45, i64 112, !45, i64 116}
!128 = !{!127, !45, i64 96}
!129 = !{!127, !40, i64 24}
!130 = !{!127, !37, i64 0}
!131 = distinct !{!131, !132}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{!"keyframing.c:visualkey_get_value"}
!134 = !{!94, !40, i64 1040}
!135 = !{!97, !40, i64 268}
!136 = !{!97, !37, i64 120}
!137 = !{!138, !37, i64 24}
!138 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !38, i64 48, !45, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!139 = !{!138, !41, i64 176}
!140 = !{!"keyframing.c:setting_get_rna_value"}
!141 = !{!"keyframing.c:new_key_needed"}
!142 = !{!84, !41, i64 88}
!143 = distinct !{!143, !132}
!144 = distinct !{!144, !132}
!145 = !{!"keyframing.c:delete_keyframe_fcurve"}
!146 = !{!147, !37, i64 0}
!147 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !42, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !148, i64 152, !40, i64 184}
!148 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!149 = !{!147, !37, i64 8}
!150 = !{!147, !37, i64 24}
!151 = !{!147, !37, i64 32}
!152 = !{!147, !37, i64 72}
!153 = !{!147, !40, i64 184}
!154 = !{!147, !37, i64 88}
!155 = !{!147, !37, i64 104}
!156 = !{!"keyframing.c:insert_key_exec"}
!157 = !{!158, !37, i64 112}
!158 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!159 = !{!35, !41, i64 680}
!160 = !{!35, !41, i64 4380}
!161 = !{!158, !37, i64 120}
!162 = !{!94, !37, i64 296}
!163 = !{!78, !41, i64 2100}
!164 = !{!"keyframing.c:modify_key_op_poll"}
!165 = !{!147, !37, i64 48}
!166 = !{!"keyframing.c:insert_key_menu_invoke"}
!167 = !{!158, !37, i64 88}
!168 = !{!"keyframing.c:delete_key_exec"}
!169 = !{!"keyframing.c:clear_anim_v3d_exec"}
!170 = !{!171, !37, i64 32}
!171 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !89, i64 16}
!172 = !{!94, !37, i64 120}
!173 = !{!81, !37, i64 120}
!174 = !{!84, !37, i64 0}
!175 = !{!94, !41, i64 432}
!176 = distinct !{!176, !132}
!177 = distinct !{!177, !132}
!178 = !{!"keyframing.c:delete_key_v3d_exec"}
!179 = distinct !{!179, !132}
!180 = distinct !{!180, !132}
!181 = !{!"keyframing.c:insert_key_button_exec"}
!182 = !{!41, !41, i64 0}
!183 = distinct !{!183, !132}
!184 = !{!"keyframing.c:delete_key_button_exec"}
!185 = distinct !{!185, !132}
!186 = !{!"keyframing.c:clear_key_button_exec"}
!187 = distinct !{!187, !132}
!188 = !{!"keyframing.c:object_frame_has_keyframe"}
!189 = !{!94, !41, i64 460}
!190 = !{!94, !41, i64 456}
!191 = distinct !{!191, !132}
!192 = !{!"keyframing.c:action_frame_has_keyframe"}
!193 = !{!81, !41, i64 184}
!194 = distinct !{!194, !132}
!195 = !{i32 0, i32 2}
!196 = !{!"keyframing.c:clear_keyframe"}
!197 = distinct !{!197, !132}
