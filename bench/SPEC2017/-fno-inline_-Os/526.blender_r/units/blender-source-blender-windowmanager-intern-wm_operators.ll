; ModuleID = 'blender/source/blender/windowmanager/intern/wm_operators.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_operators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BlenderRNA = type opaque
%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%union.IDPropertyTemplate = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, i16, i8 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmOpPopUp = type { ptr, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmPaintCursor = type { ptr, ptr, ptr, ptr, ptr }
%struct.wmGesture = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.RecentFile = type { ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.Menu = type { ptr, ptr }
%struct.MenuType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.RadialControl = type { i32, i32, %struct.PointerRNA, %struct.PointerRNA, %struct.PointerRNA, %struct.PointerRNA, %struct.PointerRNA, %struct.PointerRNA, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, [2 x i32], [2 x i32], i8, ptr, i32, %struct.ListBase, i8, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }

@global_ops_hash = internal unnamed_addr global ptr null, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"operatortype\00", align 1
@BLENDER_RNA = external global %struct.BlenderRNA, align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RNA_OperatorProperties = external global %struct.StructRNA, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Operator\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"ERROR: Operator %s has no name property!\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Dummy Name\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"(undocumented operator)\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"%s: macro error: operator %s exists\0A\00", align 1
@__func__.WM_operatortype_append_macro = private unnamed_addr constant [29 x i8] c"WM_operatortype_append_macro\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"wmOperatorTypeMacro\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"_OT_\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"bpy.ops.%s(\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c", %s=%s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@__const.WM_operator_pystring_abbreviate.end_str = private unnamed_addr constant [7 x i8] c" ... )\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%s = %s\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"wmOpItemProp\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"wmOpItemPtr\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 1
@U = external global %struct.UserDef, align 8
@.str.17 = private unnamed_addr constant [33 x i8] c"%s: %s has no enum property set\0A\00", align 1
@__func__.WM_menu_invoke = private unnamed_addr constant [15 x i8] c"WM_menu_invoke\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"%s: %s \22%s\22 is not an enum property\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"OK?\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@WM_operator_properties_filesel.file_display_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem { i32 1, ptr @.str.24, i32 681, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 2, ptr @.str.27, i32 680, ptr @.str.28, ptr @.str.29 }, %struct.EnumPropertyItem { i32 3, ptr @.str.30, i32 683, ptr @.str.31, ptr @.str.32 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [20 x i8] c"FILE_DEFAULTDISPLAY\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"Automatically determine display type for files\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"FILE_SHORTDISPLAY\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Short List\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Display files as short list\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"FILE_LONGDISPLAY\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Long List\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Display files as a detailed list\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"FILE_IMGDISPLAY\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Thumbnails\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Display files as thumbnails\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"File Path\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Path to file\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"Directory\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Directory of the file\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"File Name\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Name of the file\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@RNA_OperatorFileListElement = external global %struct.StructRNA, align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"Files\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"check_existing\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"Check Existing\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"Check and warn on overwriting existing files\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"filter_blender\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"Filter .blend files\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"filter_backup\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"filter_image\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"Filter image files\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"filter_movie\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"Filter movie files\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"filter_python\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"Filter python files\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"filter_font\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"Filter font files\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"filter_sound\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"Filter sound files\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"filter_text\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"Filter text files\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"filter_btx\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"Filter btx files\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"filter_collada\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"Filter COLLADA files\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"filter_folder\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"Filter folders\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"filemode\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"File Browser Mode\00", align 1
@.str.69 = private unnamed_addr constant [89 x i8] c"The setting for the file browser mode to load a .blend file, a library or a special file\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"relative_path\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"Relative Path\00", align 1
@.str.72 = private unnamed_addr constant [43 x i8] c"Select the file relative to the blend file\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"display_type\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"Display Type\00", align 1
@WM_operator_properties_select_action.select_actions = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.75, i32 0, ptr @.str.76, ptr @.str.77 }, %struct.EnumPropertyItem { i32 1, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.80 }, %struct.EnumPropertyItem { i32 2, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.83 }, %struct.EnumPropertyItem { i32 3, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.86 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [7 x i8] c"TOGGLE\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.77 = private unnamed_addr constant [34 x i8] c"Toggle selection for all elements\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"Select all elements\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"DESELECT\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"Deselect all elements\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"INVERT\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"Invert selection of all elements\00", align 1
@WM_operator_properties_select_action_simple.select_actions = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.80 }, %struct.EnumPropertyItem { i32 2, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.83 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.87 = private unnamed_addr constant [5 x i8] c"xmin\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"X Min\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"xmax\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"X Max\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"ymin\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"Y Min\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"ymax\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"Y Max\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"Gesture Mode\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.99 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.101 = private unnamed_addr constant [22 x i8] c"Remove from selection\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"Toggle Selection\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"Toggle the selection\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"xstart\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"X Start\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"xend\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"X End\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"ystart\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"Y Start\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"yend\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"Y End\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@.str.115 = private unnamed_addr constant [52 x i8] c"Mouse cursor style to use during the modal operator\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"WM_operator_ui_popup\00", align 1
@.str.117 = private unnamed_addr constant [31 x i8] c"WM_operator_props_dialog_popup\00", align 1
@.str.118 = private unnamed_addr constant [77 x i8] c"Operator redo '%s' does not have register enabled, incorrect invoke function\00", align 1
@.str.119 = private unnamed_addr constant [34 x i8] c"Operator redo '%s': wrong context\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"quit.blend\00", align 1
@G = external global %struct.Global, align 8
@.str.122 = private unnamed_addr constant [13 x i8] c"paint cursor\00", align 1
@circle_select_size = dso_local local_unnamed_addr global i32 25, align 4
@.str.123 = private unnamed_addr constant [13 x i8] c"lasso points\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.WM_gesture_lasso_path_to_array = private unnamed_addr constant [31 x i8] c"WM_gesture_lasso_path_to_array\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"loc\00", align 1
@.str.126 = private unnamed_addr constant [24 x i8] c"wm_operatortype_init gh\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"WM_OT_window_duplicate\00", align 1
@.str.129 = private unnamed_addr constant [20 x i8] c"WM_OT_read_homefile\00", align 1
@.str.130 = private unnamed_addr constant [20 x i8] c"WM_OT_save_homefile\00", align 1
@.str.131 = private unnamed_addr constant [25 x i8] c"INFO_MT_file_open_recent\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"WM_OT_open_mainfile\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"WM_OT_link\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"WM_OT_append\00", align 1
@.str.135 = private unnamed_addr constant [20 x i8] c"WM_OT_save_mainfile\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"WM_OT_save_as_mainfile\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.138 = private unnamed_addr constant [31 x i8] c"WM_OT_window_fullscreen_toggle\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"WM_OT_quit_blender\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"WM_OT_redraw_timer\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"WM_OT_debug_menu\00", align 1
@.str.142 = private unnamed_addr constant [18 x i8] c"WM_OT_search_menu\00", align 1
@.str.143 = private unnamed_addr constant [26 x i8] c"USERPREF_MT_ndof_settings\00", align 1
@.str.144 = private unnamed_addr constant [23 x i8] c"WM_OT_context_set_enum\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"area.type\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"LOGIC_EDITOR\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"NODE_EDITOR\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"CONSOLE\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"VIEW_3D\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"GRAPH_EDITOR\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"PROPERTIES\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"SEQUENCE_EDITOR\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"OUTLINER\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"IMAGE_EDITOR\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"TEXT_EDITOR\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"DOPESHEET_EDITOR\00", align 1
@.str.159 = private unnamed_addr constant [41 x i8] c"user_preferences.inputs.ndof_sensitivity\00", align 1
@.str.160 = private unnamed_addr constant [26 x i8] c"WM_OT_context_scale_float\00", align 1
@.str.161 = private unnamed_addr constant [26 x i8] c"%s: '%s' cant exec macro\0A\00", align 1
@__func__.wm_macro_exec = private unnamed_addr constant [14 x i8] c"wm_macro_exec\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"MacroData\00", align 1
@.str.163 = private unnamed_addr constant [39 x i8] c"%s: macro error, calling NULL modal()\0A\00", align 1
@__func__.wm_macro_modal = private unnamed_addr constant [15 x i8] c"wm_macro_modal\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"object.data\00", align 1
@.str.167 = private unnamed_addr constant [23 x i8] c"object.active_material\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"scene.world\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"space_data\00", align 1
@RNA_Space = external global %struct.StructRNA, align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@RNA_Area = external global %struct.StructRNA, align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"region\00", align 1
@RNA_Region = external global %struct.StructRNA, align 1
@.str.173 = private unnamed_addr constant [18 x i8] c"bpy.context.%s.%s\00", align 1
@wm_enum_search_menu.search = internal global [256 x i8] zeroinitializer, align 16
@.str.174 = private unnamed_addr constant [7 x i8] c"_popup\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.177 = private unnamed_addr constant [28 x i8] c"Selection action to execute\00", align 1
@__func__.wm_operator_ui_create = private unnamed_addr constant [22 x i8] c"wm_operator_ui_create\00", align 1
@.str.178 = private unnamed_addr constant [72 x i8] c"Operator '%s' does not have register enabled, incorrect invoke function\00", align 1
@.str.179 = private unnamed_addr constant [68 x i8] c"Operator '%s' does not have undo enabled, incorrect invoke function\00", align 1
@__func__.wm_block_dialog_create = private unnamed_addr constant [23 x i8] c"wm_block_dialog_create\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@__func__.wm_block_create_redo = private unnamed_addr constant [21 x i8] c"wm_block_create_redo\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.184 = private unnamed_addr constant [17 x i8] c"Duplicate Window\00", align 1
@.str.185 = private unnamed_addr constant [37 x i8] c"Duplicate the current Blender window\00", align 1
@.str.186 = private unnamed_addr constant [20 x i8] c"Reload History File\00", align 1
@.str.187 = private unnamed_addr constant [19 x i8] c"WM_OT_read_history\00", align 1
@.str.188 = private unnamed_addr constant [30 x i8] c"Reloads history and bookmarks\00", align 1
@.str.189 = private unnamed_addr constant [21 x i8] c"Reload Start-Up File\00", align 1
@.str.190 = private unnamed_addr constant [54 x i8] c"Open the default file (doesn't save the current file)\00", align 1
@.str.191 = private unnamed_addr constant [37 x i8] c"Path to an alternative start-up file\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"load_ui\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"Load UI\00", align 1
@.str.194 = private unnamed_addr constant [47 x i8] c"Load user interface setup from the .blend file\00", align 1
@.str.195 = private unnamed_addr constant [22 x i8] c"Load Factory Settings\00", align 1
@.str.196 = private unnamed_addr constant [28 x i8] c"WM_OT_read_factory_settings\00", align 1
@.str.197 = private unnamed_addr constant [39 x i8] c"Load default file and user preferences\00", align 1
@.str.198 = private unnamed_addr constant [18 x i8] c"Save Startup File\00", align 1
@.str.199 = private unnamed_addr constant [68 x i8] c"Make the current file the default .blend file, includes preferences\00", align 1
@.str.200 = private unnamed_addr constant [19 x i8] c"Save User Settings\00", align 1
@.str.201 = private unnamed_addr constant [20 x i8] c"WM_OT_save_userpref\00", align 1
@.str.202 = private unnamed_addr constant [69 x i8] c"Save user preferences separately, overrides startup file preferences\00", align 1
@.str.203 = private unnamed_addr constant [18 x i8] c"Add Autoexec Path\00", align 1
@.str.204 = private unnamed_addr constant [33 x i8] c"WM_OT_userpref_autoexec_path_add\00", align 1
@.str.205 = private unnamed_addr constant [39 x i8] c"Add path to exclude from autoexecution\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"bPathCompare\00", align 1
@.str.207 = private unnamed_addr constant [21 x i8] c"Remove Autoexec Path\00", align 1
@.str.208 = private unnamed_addr constant [36 x i8] c"WM_OT_userpref_autoexec_path_remove\00", align 1
@.str.209 = private unnamed_addr constant [42 x i8] c"Remove path to exclude from autoexecution\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.212 = private unnamed_addr constant [25 x i8] c"Toggle Window Fullscreen\00", align 1
@.str.213 = private unnamed_addr constant [37 x i8] c"Toggle the current window fullscreen\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"Quit Blender\00", align 1
@.str.215 = private unnamed_addr constant [18 x i8] c"Open Blender File\00", align 1
@.str.216 = private unnamed_addr constant [20 x i8] c"Open a Blender file\00", align 1
@.str.217 = private unnamed_addr constant [45 x i8] c"Load user interface setup in the .blend file\00", align 1
@.str.218 = private unnamed_addr constant [12 x i8] c"use_scripts\00", align 1
@.str.219 = private unnamed_addr constant [15 x i8] c"Trusted Source\00", align 1
@.str.220 = private unnamed_addr constant [94 x i8] c"Allow .blend file to execute scripts automatically, default available from system preferences\00", align 1
@.str.221 = private unnamed_addr constant [23 x i8] c"Context window not set\00", align 1
@.str.222 = private unnamed_addr constant [32 x i8] c"Trusted Source [Untrusted Path]\00", align 1
@.str.223 = private unnamed_addr constant [7 x i8] c"Revert\00", align 1
@.str.224 = private unnamed_addr constant [22 x i8] c"WM_OT_revert_mainfile\00", align 1
@.str.225 = private unnamed_addr constant [22 x i8] c"Reload the saved file\00", align 1
@.str.226 = private unnamed_addr constant [18 x i8] c"Link from Library\00", align 1
@.str.227 = private unnamed_addr constant [32 x i8] c"Link from a Library .blend file\00", align 1
@.str.228 = private unnamed_addr constant [14 x i8] c"Not a library\00", align 1
@.str.229 = private unnamed_addr constant [18 x i8] c"Nothing indicated\00", align 1
@.str.230 = private unnamed_addr constant [35 x i8] c"Cannot use current file as library\00", align 1
@.str.231 = private unnamed_addr constant [11 x i8] c"autoselect\00", align 1
@.str.232 = private unnamed_addr constant [46 x i8] c"Scene '%s' is linked, group instance disabled\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"active_layer\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.236 = private unnamed_addr constant [16 x i8] c"instance_groups\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@.str.238 = private unnamed_addr constant [53 x i8] c"Link the objects or datablocks rather than appending\00", align 1
@.str.239 = private unnamed_addr constant [19 x i8] c"Select new objects\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"Active Layer\00", align 1
@.str.241 = private unnamed_addr constant [36 x i8] c"Put new objects on the active layer\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"Instance Groups\00", align 1
@.str.243 = private unnamed_addr constant [44 x i8] c"Create Dupli-Group instances for each group\00", align 1
@.str.244 = private unnamed_addr constant [20 x i8] c"Append from Library\00", align 1
@.str.245 = private unnamed_addr constant [34 x i8] c"Append from a Library .blend file\00", align 1
@.str.246 = private unnamed_addr constant [21 x i8] c"Recover Last Session\00", align 1
@.str.247 = private unnamed_addr constant [27 x i8] c"WM_OT_recover_last_session\00", align 1
@.str.248 = private unnamed_addr constant [41 x i8] c"Open the last closed file (\22quit.blend\22)\00", align 1
@.str.249 = private unnamed_addr constant [18 x i8] c"Recover Auto Save\00", align 1
@.str.250 = private unnamed_addr constant [24 x i8] c"WM_OT_recover_auto_save\00", align 1
@.str.251 = private unnamed_addr constant [47 x i8] c"Open an automatically saved file to recover it\00", align 1
@.str.252 = private unnamed_addr constant [21 x i8] c"Save As Blender File\00", align 1
@.str.253 = private unnamed_addr constant [46 x i8] c"Save the current file in the desired location\00", align 1
@.str.254 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.255 = private unnamed_addr constant [9 x i8] c"Compress\00", align 1
@.str.256 = private unnamed_addr constant [29 x i8] c"Write compressed .blend file\00", align 1
@.str.257 = private unnamed_addr constant [15 x i8] c"relative_remap\00", align 1
@.str.258 = private unnamed_addr constant [15 x i8] c"Remap Relative\00", align 1
@.str.259 = private unnamed_addr constant [58 x i8] c"Remap relative paths when saving in a different directory\00", align 1
@.str.260 = private unnamed_addr constant [10 x i8] c"Save Copy\00", align 1
@.str.261 = private unnamed_addr constant [76 x i8] c"Save a copy of the actual working state but does not make saved file active\00", align 1
@.str.262 = private unnamed_addr constant [16 x i8] c"use_mesh_compat\00", align 1
@.str.263 = private unnamed_addr constant [19 x i8] c"Legacy Mesh Format\00", align 1
@.str.264 = private unnamed_addr constant [132 x i8] c"Save using legacy mesh format (no ngons) - WARNING: only saves tris and quads, other ngons will be lost (no implicit triangulation)\00", align 1
@.str.265 = private unnamed_addr constant [15 x i8] c"untitled.blend\00", align 1
@.str.266 = private unnamed_addr constant [7 x i8] c".blend\00", align 1
@.str.267 = private unnamed_addr constant [18 x i8] c"Save Blender File\00", align 1
@.str.268 = private unnamed_addr constant [30 x i8] c"Save the current Blender file\00", align 1
@.str.269 = private unnamed_addr constant [11 x i8] c"Save Over?\00", align 1
@.str.270 = private unnamed_addr constant [13 x i8] c"Redraw Timer\00", align 1
@.str.271 = private unnamed_addr constant [64 x i8] c"Simple redraw timer to test the speed of updating the interface\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@redraw_timer_type_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.278, i32 0, ptr @.str.279, ptr @.str.279 }, %struct.EnumPropertyItem { i32 1, ptr @.str.280, i32 0, ptr @.str.281, ptr @.str.282 }, %struct.EnumPropertyItem { i32 2, ptr @.str.283, i32 0, ptr @.str.284, ptr @.str.284 }, %struct.EnumPropertyItem { i32 3, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.287 }, %struct.EnumPropertyItem { i32 4, ptr @.str.288, i32 0, ptr @.str.289, ptr @.str.290 }, %struct.EnumPropertyItem { i32 5, ptr @.str.291, i32 0, ptr @.str.292, ptr @.str.293 }, %struct.EnumPropertyItem { i32 6, ptr @.str.294, i32 0, ptr @.str.295, ptr @.str.295 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.273 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.274 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.275 = private unnamed_addr constant [11 x i8] c"Iterations\00", align 1
@.str.276 = private unnamed_addr constant [26 x i8] c"Number of times to redraw\00", align 1
@.str.277 = private unnamed_addr constant [33 x i8] c"%d x %s: %.2f ms,  average: %.4f\00", align 1
@.str.278 = private unnamed_addr constant [5 x i8] c"DRAW\00", align 1
@.str.279 = private unnamed_addr constant [12 x i8] c"Draw Region\00", align 1
@.str.280 = private unnamed_addr constant [10 x i8] c"DRAW_SWAP\00", align 1
@.str.281 = private unnamed_addr constant [19 x i8] c"Draw Region + Swap\00", align 1
@.str.282 = private unnamed_addr constant [21 x i8] c"Draw Region and Swap\00", align 1
@.str.283 = private unnamed_addr constant [9 x i8] c"DRAW_WIN\00", align 1
@.str.284 = private unnamed_addr constant [12 x i8] c"Draw Window\00", align 1
@.str.285 = private unnamed_addr constant [14 x i8] c"DRAW_WIN_SWAP\00", align 1
@.str.286 = private unnamed_addr constant [19 x i8] c"Draw Window + Swap\00", align 1
@.str.287 = private unnamed_addr constant [21 x i8] c"Draw Window and Swap\00", align 1
@.str.288 = private unnamed_addr constant [10 x i8] c"ANIM_STEP\00", align 1
@.str.289 = private unnamed_addr constant [10 x i8] c"Anim Step\00", align 1
@.str.290 = private unnamed_addr constant [16 x i8] c"Animation Steps\00", align 1
@.str.291 = private unnamed_addr constant [10 x i8] c"ANIM_PLAY\00", align 1
@.str.292 = private unnamed_addr constant [10 x i8] c"Anim Play\00", align 1
@.str.293 = private unnamed_addr constant [19 x i8] c"Animation Playback\00", align 1
@.str.294 = private unnamed_addr constant [5 x i8] c"UNDO\00", align 1
@.str.295 = private unnamed_addr constant [10 x i8] c"Undo/Redo\00", align 1
@.str.296 = private unnamed_addr constant [18 x i8] c"Memory Statistics\00", align 1
@.str.297 = private unnamed_addr constant [24 x i8] c"WM_OT_memory_statistics\00", align 1
@.str.298 = private unnamed_addr constant [39 x i8] c"Print memory statistics to the console\00", align 1
@MEM_printmemlist_stats = external local_unnamed_addr global ptr, align 8
@.str.299 = private unnamed_addr constant [21 x i8] c"Dependency Relations\00", align 1
@.str.300 = private unnamed_addr constant [27 x i8] c"WM_OT_dependency_relations\00", align 1
@.str.301 = private unnamed_addr constant [48 x i8] c"Print dependency graph relations to the console\00", align 1
@.str.302 = private unnamed_addr constant [11 x i8] c"Debug Menu\00", align 1
@.str.303 = private unnamed_addr constant [36 x i8] c"Open a popup to set the debug level\00", align 1
@.str.304 = private unnamed_addr constant [12 x i8] c"debug_value\00", align 1
@.str.305 = private unnamed_addr constant [12 x i8] c"Debug Value\00", align 1
@.str.306 = private unnamed_addr constant [17 x i8] c"Restore Defaults\00", align 1
@.str.307 = private unnamed_addr constant [24 x i8] c"WM_OT_operator_defaults\00", align 1
@.str.308 = private unnamed_addr constant [46 x i8] c"Set the active operator to its default values\00", align 1
@.str.309 = private unnamed_addr constant [16 x i8] c"active_operator\00", align 1
@RNA_Operator = external global %struct.StructRNA, align 1
@.str.310 = private unnamed_addr constant [23 x i8] c"No operator in context\00", align 1
@.str.311 = private unnamed_addr constant [14 x i8] c"Splash Screen\00", align 1
@.str.312 = private unnamed_addr constant [13 x i8] c"WM_OT_splash\00", align 1
@.str.313 = private unnamed_addr constant [41 x i8] c"Open the splash screen with release info\00", align 1
@.str.314 = private unnamed_addr constant [19 x i8] c"USERPREF_MT_splash\00", align 1
@.str.315 = private unnamed_addr constant [6 x i8] c"Links\00", align 1
@.str.316 = private unnamed_addr constant [32 x i8] c"Support an Open Animation Movie\00", align 1
@.str.317 = private unnamed_addr constant [15 x i8] c"WM_OT_url_open\00", align 1
@.str.318 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.319 = private unnamed_addr constant [31 x i8] c"https://cloud.blender.org/join\00", align 1
@.str.320 = private unnamed_addr constant [10 x i8] c"Donations\00", align 1
@.str.321 = private unnamed_addr constant [52 x i8] c"http://www.blender.org/foundation/donation-payment/\00", align 1
@.str.322 = private unnamed_addr constant [8 x i8] c"Credits\00", align 1
@.str.323 = private unnamed_addr constant [38 x i8] c"http://www.blender.org/about/credits/\00", align 1
@.str.324 = private unnamed_addr constant [62 x i8] c"http://wiki.blender.org/index.php/Dev:Ref/Release_Notes/%d.%d\00", align 1
@.str.325 = private unnamed_addr constant [12 x i8] c"Release Log\00", align 1
@.str.326 = private unnamed_addr constant [7 x i8] c"Manual\00", align 1
@.str.327 = private unnamed_addr constant [49 x i8] c"http://wiki.blender.org/index.php/Doc:2.6/Manual\00", align 1
@.str.328 = private unnamed_addr constant [16 x i8] c"Blender Website\00", align 1
@.str.329 = private unnamed_addr constant [23 x i8] c"http://www.blender.org\00", align 1
@.str.330 = private unnamed_addr constant [65 x i8] c"http://www.blender.org/documentation/blender_python_api_%d_%d_%d\00", align 1
@.str.331 = private unnamed_addr constant [21 x i8] c"Python API Reference\00", align 1
@.str.332 = private unnamed_addr constant [25 x i8] c"WM_OT_copy_prev_settings\00", align 1
@.str.333 = private unnamed_addr constant [7 x i8] c"Recent\00", align 1
@.str.334 = private unnamed_addr constant [12 x i8] c"Search Menu\00", align 1
@.str.335 = private unnamed_addr constant [69 x i8] c"Pop-up a search menu over all available operators in current context\00", align 1
@wm_block_search_menu.search = internal global [256 x i8] zeroinitializer, align 16
@.str.336 = private unnamed_addr constant [10 x i8] c"Call Menu\00", align 1
@.str.337 = private unnamed_addr constant [16 x i8] c"WM_OT_call_menu\00", align 1
@.str.338 = private unnamed_addr constant [31 x i8] c"Call (draw) a pre-defined menu\00", align 1
@.str.339 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.340 = private unnamed_addr constant [17 x i8] c"Name of the menu\00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"Call Pie Menu\00", align 1
@.str.342 = private unnamed_addr constant [20 x i8] c"WM_OT_call_menu_pie\00", align 1
@.str.343 = private unnamed_addr constant [35 x i8] c"Call (draw) a pre-defined pie menu\00", align 1
@.str.344 = private unnamed_addr constant [21 x i8] c"Name of the pie menu\00", align 1
@.str.345 = private unnamed_addr constant [15 x i8] c"Radial Control\00", align 1
@.str.346 = private unnamed_addr constant [21 x i8] c"WM_OT_radial_control\00", align 1
@.str.347 = private unnamed_addr constant [63 x i8] c"Set some size property (like e.g. brush size) with mouse wheel\00", align 1
@.str.348 = private unnamed_addr constant [18 x i8] c"data_path_primary\00", align 1
@.str.349 = private unnamed_addr constant [18 x i8] c"Primary Data Path\00", align 1
@.str.350 = private unnamed_addr constant [57 x i8] c"Primary path of property to be set by the radial control\00", align 1
@.str.351 = private unnamed_addr constant [20 x i8] c"data_path_secondary\00", align 1
@.str.352 = private unnamed_addr constant [20 x i8] c"Secondary Data Path\00", align 1
@.str.353 = private unnamed_addr constant [59 x i8] c"Secondary path of property to be set by the radial control\00", align 1
@.str.354 = private unnamed_addr constant [14 x i8] c"use_secondary\00", align 1
@.str.355 = private unnamed_addr constant [14 x i8] c"Use Secondary\00", align 1
@.str.356 = private unnamed_addr constant [72 x i8] c"Path of property to select between the primary and secondary data paths\00", align 1
@.str.357 = private unnamed_addr constant [14 x i8] c"rotation_path\00", align 1
@.str.358 = private unnamed_addr constant [14 x i8] c"Rotation Path\00", align 1
@.str.359 = private unnamed_addr constant [52 x i8] c"Path of property used to rotate the texture display\00", align 1
@.str.360 = private unnamed_addr constant [11 x i8] c"color_path\00", align 1
@.str.361 = private unnamed_addr constant [11 x i8] c"Color Path\00", align 1
@.str.362 = private unnamed_addr constant [54 x i8] c"Path of property used to set the color of the control\00", align 1
@.str.363 = private unnamed_addr constant [16 x i8] c"fill_color_path\00", align 1
@.str.364 = private unnamed_addr constant [16 x i8] c"Fill Color Path\00", align 1
@.str.365 = private unnamed_addr constant [59 x i8] c"Path of property used to set the fill color of the control\00", align 1
@.str.366 = private unnamed_addr constant [10 x i8] c"zoom_path\00", align 1
@.str.367 = private unnamed_addr constant [10 x i8] c"Zoom Path\00", align 1
@.str.368 = private unnamed_addr constant [60 x i8] c"Path of property used to set the zoom level for the control\00", align 1
@.str.369 = private unnamed_addr constant [9 x i8] c"image_id\00", align 1
@.str.370 = private unnamed_addr constant [9 x i8] c"Image ID\00", align 1
@.str.371 = private unnamed_addr constant [61 x i8] c"Path of ID that is used to generate an image for the control\00", align 1
@.str.372 = private unnamed_addr constant [14 x i8] c"secondary_tex\00", align 1
@.str.373 = private unnamed_addr constant [18 x i8] c"Secondary Texture\00", align 1
@.str.374 = private unnamed_addr constant [35 x i8] c"Tweak brush secondary/mask texture\00", align 1
@.str.375 = private unnamed_addr constant [14 x i8] c"RadialControl\00", align 1
@.str.376 = private unnamed_addr constant [39 x i8] c"Property must be an integer or a float\00", align 1
@.str.377 = private unnamed_addr constant [57 x i8] c"Property must be a none, distance, a factor, or an angle\00", align 1
@RNA_Context = external global %struct.StructRNA, align 1
@.str.378 = private unnamed_addr constant [40 x i8] c"Pointer from path image_id is not an ID\00", align 1
@.str.379 = private unnamed_addr constant [42 x i8] c"Property cannot be both boolean and float\00", align 1
@.str.380 = private unnamed_addr constant [28 x i8] c"Could not resolve path '%s'\00", align 1
@.str.381 = private unnamed_addr constant [39 x i8] c"Property from path '%s' is not a float\00", align 1
@.str.382 = private unnamed_addr constant [52 x i8] c"Property from path '%s' has length %d instead of %d\00", align 1
@__const.radial_control_paint_cursor.col = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@.str.383 = private unnamed_addr constant [6 x i8] c"%1.2f\00", align 1
@.str.384 = private unnamed_addr constant [4 x i8] c"%3f\00", align 1
@gesture_circle_modal_keymap.modal_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.385, i32 0, ptr @.str.386, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.387, i32 0, ptr @.str.388, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.389, i32 0, ptr @.str.390, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.391, i32 0, ptr @.str.392, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.393, i32 0, ptr @.str.394, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.81, i32 0, ptr @.str.395, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.396, i32 0, ptr @.str.397, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.385 = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.387 = private unnamed_addr constant [8 x i8] c"CONFIRM\00", align 1
@.str.388 = private unnamed_addr constant [8 x i8] c"Confirm\00", align 1
@.str.389 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.390 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.391 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@.str.392 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.393 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.394 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.395 = private unnamed_addr constant [9 x i8] c"DeSelect\00", align 1
@.str.396 = private unnamed_addr constant [4 x i8] c"NOP\00", align 1
@.str.397 = private unnamed_addr constant [13 x i8] c"No Operation\00", align 1
@.str.398 = private unnamed_addr constant [22 x i8] c"View3D Gesture Circle\00", align 1
@.str.399 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_select_circle\00", align 1
@.str.400 = private unnamed_addr constant [20 x i8] c"UV_OT_circle_select\00", align 1
@.str.401 = private unnamed_addr constant [22 x i8] c"CLIP_OT_select_circle\00", align 1
@.str.402 = private unnamed_addr constant [22 x i8] c"MASK_OT_select_circle\00", align 1
@.str.403 = private unnamed_addr constant [22 x i8] c"NODE_OT_select_circle\00", align 1
@gesture_border_modal_keymap.modal_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.385, i32 0, ptr @.str.386, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.81, i32 0, ptr @.str.395, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.404, i32 0, ptr @.str.405, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.404 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.405 = private unnamed_addr constant [6 x i8] c"Begin\00", align 1
@.str.406 = private unnamed_addr constant [15 x i8] c"Gesture Border\00", align 1
@.str.407 = private unnamed_addr constant [24 x i8] c"ACTION_OT_select_border\00", align 1
@.str.408 = private unnamed_addr constant [31 x i8] c"ANIM_OT_channels_select_border\00", align 1
@.str.409 = private unnamed_addr constant [25 x i8] c"ANIM_OT_previewrange_set\00", align 1
@.str.410 = private unnamed_addr constant [22 x i8] c"INFO_OT_select_border\00", align 1
@.str.411 = private unnamed_addr constant [22 x i8] c"FILE_OT_select_border\00", align 1
@.str.412 = private unnamed_addr constant [23 x i8] c"GRAPH_OT_select_border\00", align 1
@.str.413 = private unnamed_addr constant [24 x i8] c"MARKER_OT_select_border\00", align 1
@.str.414 = private unnamed_addr constant [21 x i8] c"NLA_OT_select_border\00", align 1
@.str.415 = private unnamed_addr constant [22 x i8] c"NODE_OT_select_border\00", align 1
@.str.416 = private unnamed_addr constant [22 x i8] c"NODE_OT_viewer_border\00", align 1
@.str.417 = private unnamed_addr constant [19 x i8] c"PAINT_OT_hide_show\00", align 1
@.str.418 = private unnamed_addr constant [26 x i8] c"OUTLINER_OT_select_border\00", align 1
@.str.419 = private unnamed_addr constant [27 x i8] c"SEQUENCER_OT_select_border\00", align 1
@.str.420 = private unnamed_addr constant [31 x i8] c"SEQUENCER_OT_view_ghost_border\00", align 1
@.str.421 = private unnamed_addr constant [20 x i8] c"UV_OT_select_border\00", align 1
@.str.422 = private unnamed_addr constant [22 x i8] c"CLIP_OT_select_border\00", align 1
@.str.423 = private unnamed_addr constant [28 x i8] c"CLIP_OT_graph_select_border\00", align 1
@.str.424 = private unnamed_addr constant [22 x i8] c"MASK_OT_select_border\00", align 1
@.str.425 = private unnamed_addr constant [22 x i8] c"VIEW2D_OT_zoom_border\00", align 1
@.str.426 = private unnamed_addr constant [22 x i8] c"VIEW3D_OT_clip_border\00", align 1
@.str.427 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_render_border\00", align 1
@.str.428 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_select_border\00", align 1
@.str.429 = private unnamed_addr constant [22 x i8] c"VIEW3D_OT_zoom_border\00", align 1
@.str.430 = private unnamed_addr constant [23 x i8] c"IMAGE_OT_render_border\00", align 1
@gesture_zoom_border_modal_keymap.modal_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.385, i32 0, ptr @.str.386, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.431, i32 0, ptr @.str.432, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.433, i32 0, ptr @.str.434, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.404, i32 0, ptr @.str.405, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.431 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.432 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.433 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.434 = private unnamed_addr constant [4 x i8] c"Out\00", align 1
@.str.435 = private unnamed_addr constant [20 x i8] c"Gesture Zoom Border\00", align 1
@gesture_straightline_modal_keymap.modal_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.385, i32 0, ptr @.str.386, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.404, i32 0, ptr @.str.405, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.436 = private unnamed_addr constant [22 x i8] c"Gesture Straight Line\00", align 1
@.str.437 = private unnamed_addr constant [21 x i8] c"IMAGE_OT_sample_line\00", align 1
@.str.438 = private unnamed_addr constant [25 x i8] c"PAINT_OT_weight_gradient\00", align 1
@.str.439 = private unnamed_addr constant [15 x i8] c"MESH_OT_bisect\00", align 1
@str = private unnamed_addr constant [26 x i8] c"search for empty operator\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_operatortype_find(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i8], align 16
  %4 = load i8, ptr %0, align 1, !tbaa !34
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @WM_operator_bl_idname(ptr noundef nonnull %3, ptr noundef nonnull %0) #19
  %7 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %8 = call ptr @BLI_ghash_lookup(ptr noundef %7, ptr noundef nonnull %3) #20
  %9 = icmp eq ptr %8, null
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  br i1 %9, label %14, label %15

10:                                               ; preds = %2
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %14

14:                                               ; preds = %6, %10, %12
  br label %15

15:                                               ; preds = %6, %14
  %16 = phi ptr [ %8, %6 ], [ null, %14 ]
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_bl_idname(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 46) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %1 to i64
  %10 = sub i64 %8, %9
  %11 = shl i64 %10, 32
  %12 = ashr exact i64 %11, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %1, i64 %12, i1 false)
  tail call void @BLI_ascii_strtoupper(ptr noundef %0, i64 noundef %12) #20
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %13, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false) #20
  %14 = add i64 %11, 17179869184
  %15 = ashr exact i64 %14, 32
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = getelementptr inbounds i8, ptr %5, i64 1
  %18 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %17) #20
  br label %22

19:                                               ; preds = %4
  %20 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 64) #20
  br label %22

21:                                               ; preds = %2
  store i8 0, ptr %0, align 1, !tbaa !34
  br label %22

22:                                               ; preds = %7, %19, %21
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operatortype_iter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  tail call void @BLI_ghashIterator_init(ptr noundef %0, ptr noundef %2) #20
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operatortype_append(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %3 = tail call ptr %2(i64 noundef 192, ptr noundef nonnull @.str.1) #20
  %4 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #20
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 11
  store ptr %4, ptr %5, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %4, ptr noundef nonnull @.str.3) #20
  tail call void %0(ptr noundef %3) #20
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load ptr, ptr @stderr, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef %11) #22
  store ptr @.str.5, ptr %3, align 8, !tbaa !44
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi ptr [ @.str.5, %8 ], [ %6, %1 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @.str.6, ptr %17
  tail call void @RNA_def_struct_ui_text(ptr noundef %15, ptr noundef nonnull %14, ptr noundef nonnull %19) #20
  %20 = load ptr, ptr %5, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %20, ptr noundef %22) #20
  %23 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %24 = load ptr, ptr %21, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %23, ptr noundef %24, ptr noundef nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_struct_ptr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_struct_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_def_struct_ui_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_struct_identifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operatortype_append_ptr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %4 = tail call ptr %3(i64 noundef 192, ptr noundef nonnull @.str.1) #20
  %5 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #20
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 11
  store ptr %5, ptr %6, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %5, ptr noundef nonnull @.str.3) #20
  tail call void %0(ptr noundef %4, ptr noundef %1) #20
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = load ptr, ptr %4, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @.str.6, ptr %10
  tail call void @RNA_def_struct_ui_text(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %12) #20
  %13 = load ptr, ptr %6, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %13, ptr noundef %15) #20
  %16 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %17 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %16, ptr noundef %17, ptr noundef nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_operatortype_append_macro(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @WM_operatortype_find(ptr noundef %0, i8 noundef zeroext 1) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @__func__.WM_operatortype_append_macro, ptr noundef %0) #19
  br label %40

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %11 = tail call ptr %10(i64 noundef 192, ptr noundef nonnull @.str.1) #20
  %12 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #20
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 11
  store ptr %12, ptr %13, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 1
  store ptr %0, ptr %14, align 8, !tbaa !45
  store ptr %1, ptr %11, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 3
  store ptr %2, ptr %15, align 8, !tbaa !46
  %16 = trunc i32 %3 to i16
  %17 = or i16 %16, 8
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 19
  store i16 %17, ptr %18, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 4
  store ptr @wm_macro_exec, ptr %19, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 6
  store ptr @wm_macro_invoke, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 8
  store ptr @wm_macro_modal, ptr %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 7
  store ptr @wm_macro_cancel, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 9
  store ptr null, ptr %23, align 8, !tbaa !52
  %24 = icmp eq ptr %2, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %9
  store ptr @.str.6, ptr %15, align 8, !tbaa !46
  br label %26

26:                                               ; preds = %25, %9
  %27 = phi ptr [ @.str.6, %25 ], [ %2, %9 ]
  tail call void @RNA_def_struct_ui_text(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %27) #20
  %28 = load ptr, ptr %13, align 8, !tbaa !39
  %29 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %28, ptr noundef %29) #20
  %30 = load ptr, ptr %13, align 8, !tbaa !39
  %31 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 18, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = tail call ptr @RNA_struct_translation_context(ptr noundef nonnull %32) #20
  br label %36

36:                                               ; preds = %26, %34
  %37 = phi ptr [ %35, %34 ], [ @.str.3, %26 ]
  tail call void @RNA_def_struct_translation_context(ptr noundef %30, ptr noundef %37) #20
  %38 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %39 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %38, ptr noundef %39, ptr noundef nonnull %11) #20
  br label %40

40:                                               ; preds = %36, %7
  %41 = phi ptr [ null, %7 ], [ %11, %36 ]
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_macro_exec(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !54 {
  tail call fastcc void @wm_macro_start(ptr noundef %1) #19
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %26
  %9 = phi ptr [ %4, %6 ], [ %28, %26 ]
  %10 = phi i32 [ 4, %6 ], [ %27, %26 ]
  %11 = getelementptr inbounds %struct.wmOperator, ptr %9, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = tail call i32 %14(ptr noundef %0, ptr noundef nonnull %9) #20
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8, !tbaa !57
  store i32 4, ptr %21, align 4, !tbaa !58
  br label %26

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.wmOperatorType, ptr %12, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.161, ptr noundef nonnull @__func__.wm_macro_exec, ptr noundef %24) #19
  br label %26

26:                                               ; preds = %20, %22
  %27 = phi i32 [ %17, %20 ], [ %10, %22 ]
  %28 = load ptr, ptr %9, align 8, !tbaa !37
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %8, !llvm.loop !61

30:                                               ; preds = %26, %16, %2
  %31 = phi i32 [ 4, %2 ], [ %17, %16 ], [ %27, %26 ]
  %32 = tail call fastcc i32 @wm_macro_end(ptr noundef %1, i32 noundef %31) #19
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_macro_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 !PGOFuncName !63 {
  tail call fastcc void @wm_macro_start(ptr noundef %1) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = tail call fastcc i32 @wm_macro_invoke_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %5) #19
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_macro_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !65 {
  %4 = alloca [4 x i32], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.163, ptr noundef nonnull @__func__.wm_macro_modal) #19
  br label %70

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %6, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %12, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = tail call i32 %14(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2) #20
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.wmOperator, ptr %6, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  tail call void @WM_operator_properties_clear(ptr noundef %20) #19
  br label %21

21:                                               ; preds = %18, %10
  %22 = and i32 %15, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %70, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8, !tbaa !68
  %26 = icmp eq ptr %25, null
  br i1 %26, label %70, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  store i32 4, ptr %29, align 4, !tbaa !58
  %30 = tail call fastcc i32 @wm_macro_invoke_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %25) #19
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %70, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %5, align 8, !tbaa !66
  %35 = icmp eq ptr %34, %6
  br i1 %35, label %70, label %36

36:                                               ; preds = %33
  %37 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %38 = getelementptr inbounds %struct.wmWindow, ptr %37, i64 0, i32 29
  %39 = tail call ptr @BLI_findptr(ptr noundef nonnull %38, ptr noundef nonnull %1, i32 noundef 48) #20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @BLI_remlink(ptr noundef nonnull %38, ptr noundef nonnull %39) #20
  tail call void @wm_event_free_handler(ptr noundef nonnull %39) #20
  br label %42

42:                                               ; preds = %41, %36
  %43 = load ptr, ptr %5, align 8, !tbaa !66
  %44 = getelementptr inbounds %struct.wmOperator, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.wmOperatorType, ptr %45, i64 0, i32 19
  %47 = load i16, ptr %46, align 8, !tbaa !47
  %48 = and i16 %47, 4
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 -1, i64 16, i1 false)
  %51 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !69
  %52 = and i32 %51, 16777216
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.wmOperator, ptr %43, i64 0, i32 12
  %56 = load i16, ptr %55, align 8, !tbaa !74
  %57 = and i16 %56, 1
  %58 = and i16 %47, 16
  %59 = or disjoint i16 %57, %58
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ARegion, ptr %62, i64 0, i32 3
  %66 = load <4 x i32>, ptr %65, align 8, !tbaa !75
  %67 = shufflevector <4 x i32> %66, <4 x i32> poison, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  store <4 x i32> %67, ptr %4, align 16, !tbaa !75
  br label %68

68:                                               ; preds = %54, %50, %61, %64
  %69 = phi i8 [ 1, %61 ], [ 1, %64 ], [ 0, %50 ], [ 0, %54 ]
  call void @WM_cursor_grab_enable(ptr noundef %37, i8 noundef zeroext %69, i8 noundef zeroext 0, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %70

70:                                               ; preds = %27, %33, %68, %42, %21, %24, %8
  %71 = phi i32 [ 4, %8 ], [ %15, %24 ], [ %15, %21 ], [ %30, %42 ], [ %30, %68 ], [ %30, %33 ], [ %30, %27 ]
  %72 = call fastcc i32 @wm_macro_end(ptr noundef nonnull %1, i32 noundef %71) #19
  ret i32 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wm_macro_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef %0, ptr noundef nonnull %4) #20
  br label %13

13:                                               ; preds = %12, %6, %2
  %14 = tail call fastcc i32 @wm_macro_end(ptr noundef nonnull %1, i32 noundef 2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_struct_translation_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operatortype_append_macro_ptr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %4 = tail call ptr %3(i64 noundef 192, ptr noundef nonnull @.str.1) #20
  %5 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #20
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 11
  store ptr %5, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 19
  store i16 8, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 4
  store ptr @wm_macro_exec, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 6
  store ptr @wm_macro_invoke, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 8
  store ptr @wm_macro_modal, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 7
  store ptr @wm_macro_cancel, ptr %11, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 9
  store ptr null, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store ptr @.str.6, ptr %13, align 8, !tbaa !46
  br label %17

17:                                               ; preds = %16, %2
  tail call void @RNA_def_struct_translation_context(ptr noundef %5, ptr noundef nonnull @.str.3) #20
  tail call void %0(ptr noundef nonnull %4, ptr noundef %1) #20
  %18 = load ptr, ptr %6, align 8, !tbaa !39
  %19 = load ptr, ptr %4, align 8, !tbaa !44
  %20 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void @RNA_def_struct_ui_text(ptr noundef %18, ptr noundef %19, ptr noundef %20) #20
  %21 = load ptr, ptr %6, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %21, ptr noundef %23) #20
  %24 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %25 = load ptr, ptr %22, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_operatortype_macro_define(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %4 = tail call ptr %3(i64 noundef 96, ptr noundef nonnull @.str.8) #20
  %5 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #20
  %7 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %4, i64 0, i32 4
  %8 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %4, i64 0, i32 3
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %1) #19
  %9 = load ptr, ptr %7, align 8, !tbaa !77
  tail call void @WM_operator_properties_sanitize(ptr noundef %9, i8 noundef zeroext 1) #19
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %4) #20
  %11 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = load ptr, ptr %11, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = tail call ptr @RNA_def_pointer_runtime(ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %20, ptr noundef %22) #20
  br label %24

24:                                               ; preds = %13, %2
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_alloc(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %union.IDPropertyTemplate, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !37
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %8 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %4, ptr noundef nonnull @.str.15) #20
  store ptr %8, ptr %1, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %5, %3 ]
  %11 = load ptr, ptr %0, align 8, !tbaa !37
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %15 = call ptr %14(i64 noundef 24, ptr noundef nonnull @.str.16) #20
  store ptr %15, ptr %0, align 8, !tbaa !37
  call void @WM_operator_properties_create(ptr noundef %15, ptr noundef %2) #19
  %16 = load ptr, ptr %1, align 8, !tbaa !37
  %17 = load ptr, ptr %0, align 8, !tbaa !37
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi ptr [ %17, %13 ], [ %11, %9 ]
  %20 = phi ptr [ %16, %13 ], [ %10, %9 ]
  %21 = getelementptr inbounds %struct.PointerRNA, ptr %19, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_sanitize(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #18
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = tail call ptr @RNA_struct_iterator_property(ptr noundef %6) #20
  call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %3) #20
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !83
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6, i32 2
  %13 = icmp eq i8 %1, 0
  br label %14

14:                                               ; preds = %11, %25
  %15 = load ptr, ptr %12, align 8, !tbaa !85
  %16 = call i32 @RNA_property_type(ptr noundef %15) #20
  switch i32 %16, label %25 [
    i32 4, label %17
    i32 5, label %20
  ]

17:                                               ; preds = %14
  br i1 %13, label %19, label %18

18:                                               ; preds = %17
  call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 16777216) #20
  br label %25

19:                                               ; preds = %17
  call void @RNA_def_property_clear_flag(ptr noundef %15, i32 noundef 16777216) #20
  br label %25

20:                                               ; preds = %14
  %21 = call ptr @RNA_property_pointer_type(ptr noundef %0, ptr noundef %15) #20
  %22 = call zeroext i8 @RNA_struct_is_a(ptr noundef %21, ptr noundef nonnull @RNA_OperatorProperties) #20
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef %15) #20
  call void @WM_operator_properties_sanitize(ptr noundef nonnull %4, i8 noundef zeroext %1) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  br label %25

25:                                               ; preds = %20, %24, %14, %18, %19
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #20
  %26 = load i32, ptr %8, align 8, !tbaa !83
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %14, !llvm.loop !86

28:                                               ; preds = %25, %2
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_pointer_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operatortype_remove_ptr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  tail call void @RNA_struct_free(ptr noundef nonnull @BLENDER_RNA, ptr noundef %3) #20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  tail call void @IDP_FreeProperty(ptr noundef nonnull %5) #20
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %9 = load ptr, ptr %4, align 8, !tbaa !87
  tail call void %8(ptr noundef %9) #20
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call fastcc void @wm_operatortype_free_macro(ptr noundef nonnull %0) #19
  br label %15

15:                                               ; preds = %14, %10
  %16 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %17 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %16, ptr noundef %18, ptr noundef null, ptr noundef null) #20
  tail call void @WM_keyconfig_update_operatortype() #20
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %20(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @RNA_struct_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_operatortype_free_macro(ptr noundef %0) unnamed_addr #0 !PGOFuncName !89 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %13
  %6 = phi ptr [ %14, %13 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  tail call void @WM_operator_properties_free(ptr noundef nonnull %8) #19
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %12 = load ptr, ptr %7, align 8, !tbaa !77
  tail call void %11(ptr noundef %12) #20
  br label %13

13:                                               ; preds = %5, %10
  %14 = load ptr, ptr %6, align 8, !tbaa !37
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !90

16:                                               ; preds = %13, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_keyconfig_update_operatortype() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @WM_operatortype_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_operatortype_find(ptr noundef %0, i8 noundef zeroext 0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @WM_operatortype_remove_ptr(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = phi i8 [ 1, %4 ], [ 0, %1 ]
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operatortype_last_properties_clear_all() local_unnamed_addr #0 {
  %1 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  call void @WM_operatortype_iter(ptr noundef nonnull %1) #19
  %2 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %1) #19, !range !91
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %0, %12
  %5 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %1) #19
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  call void @IDP_FreeProperty(ptr noundef nonnull %7) #20
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %11 = load ptr, ptr %6, align 8, !tbaa !87
  call void %10(ptr noundef %11) #20
  store ptr null, ptr %6, align 8, !tbaa !87
  br label %12

12:                                               ; preds = %9, %4
  call void @BLI_ghashIterator_step(ptr noundef nonnull %1) #20
  %13 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %1) #19, !range !91
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %4, label %15, !llvm.loop !92

15:                                               ; preds = %12, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !93 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !96 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_py_idname(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.9) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = shl i64 %8, 32
  %10 = ashr exact i64 %9, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %10, i1 false)
  tail call void @BLI_ascii_strtolower(ptr noundef %0, i64 noundef %10) #20
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  store i8 46, ptr %11, align 1, !tbaa !34
  %12 = add i64 %9, 4294967296
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = getelementptr inbounds i8, ptr %3, i64 4
  %16 = sub i64 270582939648, %9
  %17 = ashr exact i64 %16, 32
  %18 = tail call ptr @BLI_strncpy(ptr noundef %14, ptr noundef nonnull %15, i64 noundef %17) #20
  br label %21

19:                                               ; preds = %2
  %20 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %1, i64 noundef 64) #20
  br label %21

21:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @BLI_ascii_strtolower(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_ascii_strtoupper(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_operator_pystring_ex(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [64 x i8], align 16
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #18
  %10 = tail call ptr @BLI_dynstr_new() #20
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  call void @WM_operator_py_idname(ptr noundef nonnull %7, ptr noundef %12) #19
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef nonnull %7) #20
  %13 = icmp eq ptr %1, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %14
  %19 = icmp eq i8 %3, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %18, %39
  %21 = phi ptr [ @.str.12, %39 ], [ @.str.11, %18 ]
  %22 = phi ptr [ %40, %39 ], [ %16, %18 ]
  %23 = getelementptr inbounds %struct.wmOperator, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.wmOperator, ptr %22, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %8, ptr noundef %28) #19
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %8, %26 ], [ %24, %20 ]
  %31 = call ptr @RNA_pointer_as_string_id(ptr noundef %0, ptr noundef nonnull %30) #20
  %32 = getelementptr inbounds %struct.wmOperator, ptr %22, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.wmOperatorType, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %10, ptr noundef nonnull %21, ptr noundef %35, ptr noundef %31) #20
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %36(ptr noundef %31) #20
  %37 = icmp eq ptr %30, %8
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  call void @WM_operator_properties_free(ptr noundef nonnull %8) #19
  br label %39

39:                                               ; preds = %38, %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  %40 = load ptr, ptr %22, align 8, !tbaa !68
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %20, !llvm.loop !99

42:                                               ; preds = %14, %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  %43 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 14
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, i8 1, i8 %3
  %47 = icmp eq ptr %5, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %9, ptr noundef nonnull %4) #19
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi ptr [ %9, %48 ], [ %5, %42 ]
  %51 = call ptr @RNA_pointer_as_string_keywords(ptr noundef %0, ptr noundef nonnull %50, i8 noundef zeroext 0, i8 noundef zeroext %2, i8 noundef zeroext %46, i32 noundef 10) #20
  call void @BLI_dynstr_append(ptr noundef %10, ptr noundef %51) #20
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %52(ptr noundef %51) #20
  %53 = icmp eq ptr %50, %9
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @WM_operator_properties_free(ptr noundef nonnull %9) #19
  br label %55

55:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  br label %56

56:                                               ; preds = %39, %18, %55
  call void @BLI_dynstr_append(ptr noundef %10, ptr noundef nonnull @.str.13) #20
  %57 = call ptr @BLI_dynstr_get_cstring(ptr noundef %10) #20
  call void @BLI_dynstr_free(ptr noundef %10) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  ret ptr %57
}

; Function Attrs: optsize
declare ptr @BLI_dynstr_new() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dynstr_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_create_ptr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  tail call void @RNA_pointer_create(ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_pointer_as_string_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @IDP_FreeProperty(ptr noundef nonnull %3) #20
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %6(ptr noundef nonnull %3) #20
  store ptr null, ptr %2, align 8, !tbaa !79
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_pointer_as_string_keywords(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_operator_pystring(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @WM_operator_pystring_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %6, ptr noundef %8) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @WM_operator_pystring_abbreviate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %4 = trunc i64 %3 to i32
  %5 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 40) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds i8, ptr %5, i64 1
  %13 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 41) #21
  %14 = icmp ne ptr %13, null
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %15, %8
  %17 = trunc i64 %16 to i32
  %18 = icmp sgt i32 %17, %1
  %19 = and i1 %14, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %7
  %21 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 44) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  %24 = ptrtoint ptr %21 to i64
  %25 = sub i64 %24, %8
  %26 = trunc i64 %25 to i32
  %27 = add i32 %26, 1
  %28 = add i32 %11, 7
  %29 = add i32 %28, %27
  %30 = icmp sgt i32 %29, %4
  br i1 %30, label %37, label %31

31:                                               ; preds = %23
  %32 = sext i32 %27 to i64
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = shl i64 %10, 32
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %36, ptr noundef nonnull align 1 dereferenceable(7) @__const.WM_operator_pystring_abbreviate.end_str, i64 7, i1 false)
  br label %37

37:                                               ; preds = %7, %23, %20, %31, %2
  %38 = phi i8 [ 1, %31 ], [ 0, %2 ], [ 0, %20 ], [ 0, %23 ], [ 0, %7 ]
  ret i8 %38
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_prop_pystring_assign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc ptr @wm_prop_pystring_from_context(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4, %6
  %10 = tail call ptr @RNA_path_full_property_py(ptr noundef %1, ptr noundef %2, i32 noundef %3) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %6, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %6 ]
  %14 = tail call ptr @RNA_property_as_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 2147483647) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.14, ptr noundef nonnull %13, ptr noundef nonnull %14) #20
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %18(ptr noundef nonnull %13) #20
  br label %19

19:                                               ; preds = %12, %16
  %20 = phi ptr [ %14, %16 ], [ %13, %12 ]
  %21 = phi ptr [ %17, %16 ], [ null, %12 ]
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %22(ptr noundef nonnull %20) #20
  br label %23

23:                                               ; preds = %19, %9
  %24 = phi ptr [ null, %9 ], [ %21, %19 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_prop_pystring_from_context(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !100 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = load ptr, ptr %1, align 8, !tbaa !101
  %12 = icmp eq ptr %11, null
  br i1 %12, label %101, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !102
  switch i16 %15, label %101 [
    i16 17235, label %16
    i16 16975, label %20
    i16 17741, label %24
    i16 21827, label %24
    i16 16973, label %24
    i16 16716, label %24
    i16 19283, label %24
    i16 16707, label %24
    i16 21580, label %24
    i16 21057, label %24
    i16 16717, label %35
    i16 20311, label %48
    i16 21075, label %59
  ]

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %0, ptr noundef nonnull @.str.164) #20
  %17 = load ptr, ptr %5, align 8, !tbaa !101
  %18 = load ptr, ptr %1, align 8, !tbaa !101
  %19 = icmp eq ptr %17, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  br i1 %19, label %94, label %101

20:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %0, ptr noundef nonnull @.str.165) #20
  %21 = load ptr, ptr %6, align 8, !tbaa !101
  %22 = load ptr, ptr %1, align 8, !tbaa !101
  %23 = icmp eq ptr %21, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  br i1 %23, label %94, label %101

24:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %0, ptr noundef nonnull @.str.165) #20
  %25 = load ptr, ptr %7, align 8, !tbaa !101
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !103
  %30 = load ptr, ptr %1, align 8, !tbaa !101
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %24
  br label %33

33:                                               ; preds = %27, %32
  %34 = phi ptr [ null, %32 ], [ @.str.166, %27 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  br label %91

35:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull @.str.165) #20
  %36 = load ptr, ptr %8, align 8, !tbaa !101
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 32
  %40 = load i32, ptr %39, align 4, !tbaa !108
  %41 = trunc i32 %40 to i16
  %42 = call ptr @give_current_material(ptr noundef nonnull %36, i16 noundef signext %41) #20
  %43 = load ptr, ptr %1, align 8, !tbaa !101
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %38, %35
  br label %46

46:                                               ; preds = %38, %45
  %47 = phi ptr [ null, %45 ], [ @.str.167, %38 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  br label %91

48:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef %0, ptr noundef nonnull @.str.164) #20
  %49 = load ptr, ptr %9, align 8, !tbaa !101
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.Scene, ptr %49, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = load ptr, ptr %1, align 8, !tbaa !101
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %51, %48
  br label %57

57:                                               ; preds = %51, %56
  %58 = phi ptr [ null, %56 ], [ @.str.168, %51 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  br label %91

59:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %10, ptr noundef %0, ptr noundef nonnull @.str.169) #20
  %60 = load ptr, ptr %10, align 8, !tbaa !101
  %61 = load ptr, ptr %1, align 8, !tbaa !101
  %62 = icmp eq ptr %60, %61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  br i1 %62, label %94, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !82
  %66 = call zeroext i8 @RNA_struct_is_a(ptr noundef %65, ptr noundef nonnull @RNA_Space) #20
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !79
  %71 = call ptr @CTX_wm_space_data(ptr noundef %0) #20
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %94, label %73

73:                                               ; preds = %63, %68
  %74 = load ptr, ptr %64, align 8, !tbaa !82
  %75 = call zeroext i8 @RNA_struct_is_a(ptr noundef %74, ptr noundef nonnull @RNA_Area) #20
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !79
  %80 = call ptr @CTX_wm_area(ptr noundef %0) #20
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %73, %77
  %83 = load ptr, ptr %64, align 8, !tbaa !82
  %84 = call zeroext i8 @RNA_struct_is_a(ptr noundef %83, ptr noundef nonnull @RNA_Region) #20
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !79
  %89 = call ptr @CTX_wm_region(ptr noundef %0) #20
  %90 = icmp eq ptr %88, %89
  br i1 %90, label %94, label %101

91:                                               ; preds = %57, %46, %33
  %92 = phi ptr [ %58, %57 ], [ %47, %46 ], [ %34, %33 ]
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %59, %16, %20, %77, %68, %86, %91
  %95 = phi ptr [ %92, %91 ], [ @.str.171, %77 ], [ @.str.170, %68 ], [ @.str.172, %86 ], [ @.str.165, %20 ], [ @.str.164, %16 ], [ @.str.169, %59 ]
  %96 = call ptr @RNA_path_struct_property_py(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #20
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.173, ptr noundef nonnull %95, ptr noundef nonnull %96) #20
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %100(ptr noundef nonnull %96) #20
  br label %101

101:                                              ; preds = %82, %86, %16, %20, %13, %91, %98, %94, %4
  %102 = phi ptr [ %99, %98 ], [ null, %94 ], [ null, %91 ], [ null, %4 ], [ null, %13 ], [ null, %20 ], [ null, %16 ], [ null, %86 ], [ null, %82 ]
  ret ptr %102
}

; Function Attrs: optsize
declare ptr @RNA_path_full_property_py(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_property_as_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @WM_operator_properties_create_ptr(ptr noundef %0, ptr noundef nonnull %3) #19
  br label %7

6:                                                ; preds = %2
  tail call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_OperatorProperties, ptr noundef null, ptr noundef %0) #20
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: optsize
declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_clear_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_property_pointer_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @WM_operator_properties_default(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #18
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = tail call ptr @RNA_struct_iterator_property(ptr noundef %6) #20
  call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %3) #20
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !83
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6, i32 2
  %13 = icmp eq i8 %1, 0
  br label %14

14:                                               ; preds = %11, %33
  %15 = phi i8 [ 0, %11 ], [ %34, %33 ]
  %16 = load ptr, ptr %12, align 8, !tbaa !85
  %17 = call i32 @RNA_property_type(ptr noundef %16) #20
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = call ptr @RNA_property_pointer_type(ptr noundef %0, ptr noundef %16) #20
  %21 = icmp eq ptr %20, @RNA_Struct
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef %16) #20
  %23 = call zeroext i8 @WM_operator_properties_default(ptr noundef nonnull %4, i8 noundef zeroext %1) #19, !range !91
  %24 = or i8 %23, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  br label %33

25:                                               ; preds = %14
  br i1 %13, label %29, label %26

26:                                               ; preds = %25
  %27 = call zeroext i8 @RNA_property_is_set(ptr noundef %0, ptr noundef %16) #20
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %25
  %30 = call zeroext i8 @RNA_property_reset(ptr noundef %0, ptr noundef %16, i32 noundef -1) #20
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i8 %15, i8 1
  br label %33

33:                                               ; preds = %29, %19, %22, %26
  %34 = phi i8 [ %15, %26 ], [ %24, %22 ], [ %15, %19 ], [ %32, %29 ]
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #20
  %35 = load i32, ptr %8, align 8, !tbaa !83
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %14, !llvm.loop !128

37:                                               ; preds = %33, %2
  %38 = phi i8 [ 0, %2 ], [ %34, %33 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #18
  ret i8 %38
}

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.CollectionPropertyIterator, align 8
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = tail call ptr @RNA_struct_iterator_property(ptr noundef %12) #20
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %2) #18
  %14 = load ptr, ptr %3, align 8, !tbaa !67
  call void @RNA_property_collection_begin(ptr noundef %14, ptr noundef %13, ptr noundef nonnull %2) #20
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %2, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !83
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %2, i64 0, i32 6, i32 2
  br label %20

20:                                               ; preds = %18, %29
  %21 = load ptr, ptr %19, align 8, !tbaa.struct !129
  %22 = call i32 @RNA_property_flag(ptr noundef %21) #20
  %23 = and i32 %22, 268435456
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call ptr @RNA_property_identifier(ptr noundef %21) #20
  %27 = load ptr, ptr %3, align 8, !tbaa !67
  %28 = call zeroext i8 @RNA_struct_idprops_unset(ptr noundef %27, ptr noundef %26) #20
  br label %29

29:                                               ; preds = %25, %20
  call void @RNA_property_collection_next(ptr noundef nonnull %2) #20
  %30 = load i32, ptr %15, align 8, !tbaa !83
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %20, !llvm.loop !130

32:                                               ; preds = %29, %8
  call void @RNA_property_collection_end(ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %2) #18
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_idprops_unset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @IDP_ClearProperty(ptr noundef nonnull %3) #20
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @IDP_ClearProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 12
  %5 = load i16, ptr %4, align 8, !tbaa !74
  %6 = and i16 %5, 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %10 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call float @ED_view3d_grid_scale(ptr noundef %9, ptr noundef nonnull %10, ptr noundef null) #20
  br label %16

14:                                               ; preds = %8
  %15 = tail call float @ED_scene_grid_scale(ptr noundef %9, ptr noundef null) #20
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #18
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = tail call ptr @RNA_struct_iterator_property(ptr noundef %21) #20
  call void @RNA_property_collection_begin(ptr noundef %19, ptr noundef %22, ptr noundef nonnull %3) #20
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !83
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6, i32 2
  br label %28

28:                                               ; preds = %26, %44
  %29 = load ptr, ptr %27, align 8, !tbaa !85
  %30 = call i32 @RNA_property_type(ptr noundef %29) #20
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = call i32 @RNA_property_subtype(ptr noundef %29) #20
  %34 = icmp eq i32 %33, 65554
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load ptr, ptr %18, align 8, !tbaa !67
  %37 = call zeroext i8 @RNA_property_is_set_ex(ptr noundef %36, ptr noundef %29, i8 noundef zeroext 0) #20
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr %18, align 8, !tbaa !67
  %41 = call float @RNA_property_float_get_default(ptr noundef %40, ptr noundef %29) #20
  %42 = fmul float %17, %41
  %43 = load ptr, ptr %18, align 8, !tbaa !67
  call void @RNA_property_float_set(ptr noundef %43, ptr noundef %29, float noundef %42) #20
  br label %44

44:                                               ; preds = %32, %39, %35, %28
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #20
  %45 = load i32, ptr %23, align 8, !tbaa !83
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %28, !llvm.loop !131

47:                                               ; preds = %44, %16
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #18
  br label %48

48:                                               ; preds = %47, %2
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_view3d_grid_scale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_scene_grid_scale(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_property_float_get_default(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WM_operator_smooth_viewtx_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 12
  %3 = load i16, ptr %2, align 8, !tbaa !74
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 71), align 4
  %7 = select i1 %5, i16 0, i16 %6
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_menu_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @__func__.WM_menu_invoke, ptr noundef %11) #19
  br label %45

13:                                               ; preds = %3
  %14 = tail call i32 @RNA_property_type(ptr noundef nonnull %7) #20
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %4, align 8, !tbaa !55
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %7) #20
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull @__func__.WM_menu_invoke, ptr noundef %19, ptr noundef %20) #19
  br label %45

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %24, ptr noundef nonnull %7) #20
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %4, align 8, !tbaa !55
  br i1 %26, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.wmOperatorType, ptr %27, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = tail call i32 %30(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %45

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.wmOperatorType, ptr %27, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !39
  %35 = tail call ptr @RNA_struct_ui_name(ptr noundef %34) #20
  %36 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %35, i32 noundef 0) #20
  %37 = tail call ptr @uiPupMenuLayout(ptr noundef %36) #20
  tail call void @uiLayoutSetOperatorContext(ptr noundef %37, i32 noundef 1) #20
  %38 = load ptr, ptr %4, align 8, !tbaa !55
  %39 = getelementptr inbounds %struct.wmOperatorType, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  %41 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %7) #20
  %42 = load ptr, ptr %23, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.PointerRNA, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !79
  tail call void @uiItemsFullEnumO(ptr noundef %37, ptr noundef %40, ptr noundef %41, ptr noundef %44, i32 noundef 7, i32 noundef 0) #20
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %36) #20
  br label %45

45:                                               ; preds = %9, %16, %32, %28
  %46 = phi i32 [ %31, %28 ], [ 32, %32 ], [ 2, %16 ], [ 2, %9 ]
  ret i32 %46
}

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemsFullEnumO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_enum_search_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  tail call void @uiPupBlock(ptr noundef %0, ptr noundef nonnull @wm_enum_search_menu, ptr noundef %1) #20
  ret i32 32
}

; Function Attrs: optsize
declare void @uiPupBlock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @wm_enum_search_menu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !133 {
  %4 = alloca %struct.wmEvent, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #18
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.174, i16 noundef signext 0) #20
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 133) #20
  %7 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = tail call i32 @uiSearchBoxWidth() #20
  %14 = trunc i32 %13 to i16
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %16 = tail call ptr @uiDefSearchButO_ptr(ptr noundef %6, ptr noundef %8, ptr noundef %12, ptr noundef nonnull @wm_enum_search_menu.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 10, i32 noundef 10, i16 noundef signext %14, i16 noundef signext %15, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #20
  %17 = tail call i32 @uiSearchBoxHeight() #20
  %18 = sub nsw i32 10, %17
  %19 = tail call i32 @uiSearchBoxWidth() #20
  %20 = trunc i32 %19 to i16
  %21 = tail call i32 @uiSearchBoxHeight() #20
  %22 = trunc i32 %21 to i16
  %23 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 10, i32 noundef %18, i16 noundef signext %20, i16 noundef signext %22, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #20
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %25 = sext i16 %24 to i32
  %26 = sub nsw i32 0, %25
  tail call void @uiPopupBoundsBlock(ptr noundef %6, i32 noundef 6, i32 noundef 0, i32 noundef %26) #20
  call void @wm_event_init_from_window(ptr noundef %5, ptr noundef nonnull %4) #20
  %27 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  store i16 20513, ptr %27, align 8, !tbaa !135
  %28 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  store i16 1, ptr %28, align 2, !tbaa !138
  %29 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  store ptr %16, ptr %29, align 8, !tbaa !139
  %30 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 26
  store i16 0, ptr %30, align 2, !tbaa !140
  call void @wm_event_add(ptr noundef %5, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_operator_confirm_message_ex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PointerRNA, align 8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.IDProperty, ptr %10, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !141
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %10) #20
  br label %18

18:                                               ; preds = %5, %12, %16
  %19 = phi ptr [ %17, %16 ], [ null, %12 ], [ null, %5 ]
  %20 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %2, i32 noundef %3) #20
  %21 = tail call ptr @uiPupMenuLayout(ptr noundef %20) #20
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %21, ptr noundef %23, ptr noundef %4, i32 noundef 0, ptr noundef %19, i32 noundef 7, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %20) #20
  ret i32 32
}

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_operator_confirm_message(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @WM_operator_confirm_message_ex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef %2) #19
  ret i32 32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_operator_confirm(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call i32 @WM_operator_confirm_message(ptr noundef %0, ptr noundef %1, ptr noundef null) #19
  ret i32 32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_operator_filesel(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.20) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @WM_operator_call_notest(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %11

10:                                               ; preds = %3
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 1, %10 ]
  ret i32 %12
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_call_notest(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @WM_operator_filesel_ensure_ext_imtype(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %5, ptr noundef nonnull @.str.20) #20
  %7 = load ptr, ptr %4, align 8, !tbaa !67
  call void @RNA_property_string_get(ptr noundef %7, ptr noundef %6, ptr noundef nonnull %3) #20
  %8 = call i32 @BKE_add_image_extension(ptr noundef nonnull %3, ptr noundef %1) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !tbaa !67
  call void @RNA_property_string_set(ptr noundef %11, ptr noundef %6, ptr noundef nonnull %3) #20
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i8 [ 1, %10 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #18
  ret i8 %13
}

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_add_image_extension(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_filesel(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = zext i16 %4 to i32
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = tail call ptr @RNA_def_string_file_path(ptr noundef %12, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #20
  br label %14

14:                                               ; preds = %10, %6
  %15 = and i32 %7, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = tail call ptr @RNA_def_string_dir_path(ptr noundef %19, ptr noundef nonnull @.str.35, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #20
  br label %21

21:                                               ; preds = %17, %14
  %22 = and i32 %7, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = tail call ptr @RNA_def_string_file_name(ptr noundef %26, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #20
  br label %28

28:                                               ; preds = %24, %21
  %29 = and i32 %7, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = tail call ptr @RNA_def_collection_runtime(ptr noundef %33, ptr noundef nonnull @.str.41, ptr noundef nonnull @RNA_OperatorFileListElement, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2) #20
  br label %35

35:                                               ; preds = %31, %28
  %36 = icmp eq i16 %3, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  %40 = tail call ptr @RNA_def_boolean(ptr noundef %39, ptr noundef nonnull @.str.43, i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #20
  tail call void @RNA_def_property_flag(ptr noundef %40, i32 noundef 268959744) #20
  br label %41

41:                                               ; preds = %37, %35
  %42 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = and i32 %1, 4
  %45 = tail call ptr @RNA_def_boolean(ptr noundef %43, ptr noundef nonnull @.str.46, i32 noundef %44, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %45, i32 noundef 268959744) #20
  %46 = load ptr, ptr %42, align 8, !tbaa !39
  %47 = and i32 %1, 8
  %48 = tail call ptr @RNA_def_boolean(ptr noundef %46, ptr noundef nonnull @.str.48, i32 noundef %47, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %48, i32 noundef 268959744) #20
  %49 = load ptr, ptr %42, align 8, !tbaa !39
  %50 = and i32 %1, 16
  %51 = tail call ptr @RNA_def_boolean(ptr noundef %49, ptr noundef nonnull @.str.49, i32 noundef %50, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %51, i32 noundef 268959744) #20
  %52 = load ptr, ptr %42, align 8, !tbaa !39
  %53 = and i32 %1, 32
  %54 = tail call ptr @RNA_def_boolean(ptr noundef %52, ptr noundef nonnull @.str.51, i32 noundef %53, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %54, i32 noundef 268959744) #20
  %55 = load ptr, ptr %42, align 8, !tbaa !39
  %56 = and i32 %1, 64
  %57 = tail call ptr @RNA_def_boolean(ptr noundef %55, ptr noundef nonnull @.str.53, i32 noundef %56, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %57, i32 noundef 268959744) #20
  %58 = load ptr, ptr %42, align 8, !tbaa !39
  %59 = and i32 %1, 128
  %60 = tail call ptr @RNA_def_boolean(ptr noundef %58, ptr noundef nonnull @.str.55, i32 noundef %59, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %60, i32 noundef 268959744) #20
  %61 = load ptr, ptr %42, align 8, !tbaa !39
  %62 = and i32 %1, 256
  %63 = tail call ptr @RNA_def_boolean(ptr noundef %61, ptr noundef nonnull @.str.57, i32 noundef %62, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %63, i32 noundef 268959744) #20
  %64 = load ptr, ptr %42, align 8, !tbaa !39
  %65 = and i32 %1, 512
  %66 = tail call ptr @RNA_def_boolean(ptr noundef %64, ptr noundef nonnull @.str.59, i32 noundef %65, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %66, i32 noundef 268959744) #20
  %67 = load ptr, ptr %42, align 8, !tbaa !39
  %68 = and i32 %1, 4096
  %69 = tail call ptr @RNA_def_boolean(ptr noundef %67, ptr noundef nonnull @.str.61, i32 noundef %68, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %69, i32 noundef 268959744) #20
  %70 = load ptr, ptr %42, align 8, !tbaa !39
  %71 = and i32 %1, 8192
  %72 = tail call ptr @RNA_def_boolean(ptr noundef %70, ptr noundef nonnull @.str.63, i32 noundef %71, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %72, i32 noundef 268959744) #20
  %73 = load ptr, ptr %42, align 8, !tbaa !39
  %74 = and i32 %1, 2048
  %75 = tail call ptr @RNA_def_boolean(ptr noundef %73, ptr noundef nonnull @.str.65, i32 noundef %74, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %75, i32 noundef 268959744) #20
  %76 = load ptr, ptr %42, align 8, !tbaa !39
  %77 = sext i16 %2 to i32
  %78 = tail call ptr @RNA_def_int(ptr noundef %76, ptr noundef nonnull @.str.67, i32 noundef %77, i32 noundef 1, i32 noundef 9, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 1, i32 noundef 9) #20
  tail call void @RNA_def_property_flag(ptr noundef %78, i32 noundef 268959744) #20
  %79 = and i32 %7, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %41
  %82 = load ptr, ptr %42, align 8, !tbaa !39
  %83 = tail call ptr @RNA_def_boolean(ptr noundef %82, ptr noundef nonnull @.str.70, i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #20
  br label %84

84:                                               ; preds = %81, %41
  %85 = load ptr, ptr %42, align 8, !tbaa !39
  %86 = sext i16 %5 to i32
  %87 = tail call ptr @RNA_def_enum(ptr noundef %85, ptr noundef nonnull @.str.73, ptr noundef nonnull @WM_operator_properties_filesel.file_display_items, i32 noundef %86, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2) #20
  tail call void @RNA_def_property_flag(ptr noundef %87, i32 noundef 268959744) #20
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_string_file_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_string_dir_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_string_file_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_select_action(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @wm_operator_properties_select_action_ex(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @WM_operator_properties_select_action.select_actions) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_operator_properties_select_action_ex(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !144 {
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = tail call ptr @RNA_def_enum(ptr noundef %5, ptr noundef nonnull @.str.175, ptr noundef %2, i32 noundef %1, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_select_action_simple(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @wm_operator_properties_select_action_ex(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @WM_operator_properties_select_action_simple.select_actions) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_select_all(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @WM_operator_properties_select_action(ptr noundef %0, i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_border(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call ptr @RNA_def_int(ptr noundef %3, ptr noundef nonnull @.str.87, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #20
  tail call void @RNA_def_property_flag(ptr noundef %4, i32 noundef 268959744) #20
  %5 = load ptr, ptr %2, align 8, !tbaa !39
  %6 = tail call ptr @RNA_def_int(ptr noundef %5, ptr noundef nonnull @.str.89, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #20
  tail call void @RNA_def_property_flag(ptr noundef %6, i32 noundef 268959744) #20
  %7 = load ptr, ptr %2, align 8, !tbaa !39
  %8 = tail call ptr @RNA_def_int(ptr noundef %7, ptr noundef nonnull @.str.91, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #20
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268959744) #20
  %9 = load ptr, ptr %2, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.93, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #20
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268959744) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_border_to_rcti(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call i32 @RNA_int_get(ptr noundef %4, ptr noundef nonnull @.str.87) #20
  store i32 %5, ptr %1, align 4, !tbaa !145
  %6 = load ptr, ptr %3, align 8, !tbaa !67
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.91) #20
  %8 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  store i32 %7, ptr %8, align 4, !tbaa !146
  %9 = load ptr, ptr %3, align 8, !tbaa !67
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.89) #20
  %11 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !147
  %12 = load ptr, ptr %3, align 8, !tbaa !67
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.93) #20
  %14 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  store i32 %13, ptr %14, align 4, !tbaa !148
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_border_to_rctf(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @WM_operator_properties_border_to_rcti(ptr noundef %0, ptr noundef nonnull %3) #19
  call void @BLI_rctf_rcti_copy(ptr noundef %1, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_rctf_rcti_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_gesture_border(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = tail call ptr @RNA_def_int(ptr noundef %4, ptr noundef nonnull @.str.95, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #20
  tail call void @WM_operator_properties_border(ptr noundef %0) #19
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !39
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.97, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  br label %10

10:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_mouse_select(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call ptr @RNA_def_boolean(ptr noundef %3, ptr noundef nonnull @.str.97, i32 noundef 0, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #20
  tail call void @RNA_def_property_flag(ptr noundef %4, i32 noundef 268435456) #20
  %5 = load ptr, ptr %2, align 8, !tbaa !39
  %6 = tail call ptr @RNA_def_boolean(ptr noundef %5, ptr noundef nonnull @.str.100, i32 noundef 0, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.101) #20
  tail call void @RNA_def_property_flag(ptr noundef %6, i32 noundef 268435456) #20
  %7 = load ptr, ptr %2, align 8, !tbaa !39
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104) #20
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_properties_gesture_straightline(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = tail call ptr @RNA_def_int(ptr noundef %4, ptr noundef nonnull @.str.105, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #20
  tail call void @RNA_def_property_flag(ptr noundef %5, i32 noundef 268959744) #20
  %6 = load ptr, ptr %3, align 8, !tbaa !39
  %7 = tail call ptr @RNA_def_int(ptr noundef %6, ptr noundef nonnull @.str.107, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #20
  tail call void @RNA_def_property_flag(ptr noundef %7, i32 noundef 268959744) #20
  %8 = load ptr, ptr %3, align 8, !tbaa !39
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.109, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #20
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #20
  %10 = load ptr, ptr %3, align 8, !tbaa !39
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.111, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #20
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268959744) #20
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8, !tbaa !39
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.113, i32 noundef %1, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef 0, i32 noundef 2147483647) #20
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 524288) #20
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_operator_winactive(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @WM_operator_check_ui_enabled(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %5 = tail call i32 @ED_undo_valid(ptr noundef %0, ptr noundef %1) #20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @WM_jobs_test(ptr noundef %3, ptr noundef %4, i32 noundef 0) #20
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_undo_valid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_operator_last_redo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.wmOperator, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %9, i64 0, i32 19
  %11 = load i16, ptr %10, align 8, !tbaa !47
  %12 = and i16 %11, 3
  %13 = icmp eq i16 %12, 3
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.wmOperator, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !149

18:                                               ; preds = %14, %6, %1
  %19 = phi ptr [ null, %1 ], [ %7, %6 ], [ null, %14 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_operator_ui_popup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %6 = tail call ptr %5(i64 noundef 24, ptr noundef nonnull @.str.116) #20
  store ptr %1, ptr %6, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 1
  store i32 %2, ptr %7, align 8, !tbaa !152
  %8 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 2
  store i32 %3, ptr %8, align 4, !tbaa !153
  %9 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 3
  store i32 1, ptr %9, align 8, !tbaa !154
  tail call void @uiPupBlockEx(ptr noundef %0, ptr noundef nonnull @wm_operator_ui_create, ptr noundef null, ptr noundef nonnull @wm_operator_ui_popup_cancel, ptr noundef nonnull %6) #20
  ret i32 1
}

; Function Attrs: optsize
declare void @uiPupBlockEx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @wm_operator_ui_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !155 {
  %4 = load ptr, ptr %2, align 8, !tbaa !150
  %5 = tail call ptr @UI_GetStyle() #20
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.wm_operator_ui_create, i16 noundef signext 0) #20
  tail call void @uiBlockClearFlag(ptr noundef %6, i32 noundef 1) #20
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 384) #20
  %7 = getelementptr inbounds %struct.wmOpPopUp, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = getelementptr inbounds %struct.wmOpPopUp, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !153
  %11 = tail call ptr @uiBlockLayout(ptr noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef %5) #20
  tail call void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %11, ptr noundef %4, ptr noundef null, i8 noundef zeroext 86, i16 noundef signext 0) #20
  tail call void @uiPopupBoundsBlock(ptr noundef %6, i32 noundef 4, i32 noundef 0, i32 noundef 0) #20
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wm_operator_ui_popup_cancel(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !156 {
  %3 = load ptr, ptr %1, align 8, !tbaa !150
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void %9(ptr noundef %0, ptr noundef nonnull %3) #20
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct.wmOpPopUp, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !154
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @WM_operator_free(ptr noundef nonnull %3) #20
  br label %17

17:                                               ; preds = %12, %16, %2
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %18(ptr noundef nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_operator_props_popup_confirm(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @wm_operator_props_popup_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #19, !range !157
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @wm_operator_props_popup_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !158 {
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 19
  %8 = load i16, ptr %7, align 8, !tbaa !47
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.178, ptr noundef %16) #20
  br label %40

17:                                               ; preds = %4
  %18 = icmp ne i8 %3, 0
  %19 = and i32 %9, 2
  %20 = icmp eq i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !159
  %25 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.179, ptr noundef %26) #20
  br label %40

27:                                               ; preds = %17
  br i1 %18, label %28, label %32

28:                                               ; preds = %27
  %29 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !69
  %30 = and i32 %29, 8192
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %27
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %34 = sext i16 %33 to i32
  %35 = mul nsw i32 %34, 15
  %36 = tail call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %35, i32 noundef %34) #19
  br label %40

37:                                               ; preds = %28
  tail call void @uiPupBlockEx(ptr noundef %0, ptr noundef nonnull @wm_block_create_redo, ptr noundef null, ptr noundef nonnull @wm_block_redo_cancel_cb, ptr noundef nonnull %1) #20
  %38 = icmp eq i8 %2, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @wm_block_redo_cb(ptr noundef %0, ptr noundef nonnull %1, i32 poison) #19
  br label %40

40:                                               ; preds = %37, %39, %32, %22, %12
  %41 = phi i32 [ 2, %12 ], [ 2, %22 ], [ 1, %32 ], [ 1, %39 ], [ 1, %37 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_operator_props_popup_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @wm_operator_props_popup_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #19, !range !157
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @wm_operator_props_popup_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #19, !range !157
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %6 = tail call ptr %5(i64 noundef 24, ptr noundef nonnull @.str.117) #20
  store ptr %1, ptr %6, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 1
  store i32 %2, ptr %7, align 8, !tbaa !152
  %8 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 2
  store i32 %3, ptr %8, align 4, !tbaa !153
  %9 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 3
  store i32 1, ptr %9, align 8, !tbaa !154
  tail call void @uiPupBlockEx(ptr noundef %0, ptr noundef nonnull @wm_block_dialog_create, ptr noundef nonnull @wm_operator_ui_popup_ok, ptr noundef nonnull @wm_operator_ui_popup_cancel, ptr noundef nonnull %6) #20
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @wm_block_dialog_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !160 {
  %4 = load ptr, ptr %2, align 8, !tbaa !150
  %5 = tail call ptr @UI_GetStyle() #20
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.wm_block_dialog_create, i16 noundef signext 0) #20
  tail call void @uiBlockClearFlag(ptr noundef %6, i32 noundef 1) #20
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 256) #20
  %7 = getelementptr inbounds %struct.wmOpPopUp, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = getelementptr inbounds %struct.wmOpPopUp, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !153
  %11 = tail call ptr @uiBlockLayout(ptr noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef %5) #20
  tail call void @uiBlockSetFunc(ptr noundef %6, ptr noundef nonnull @dialog_check_cb, ptr noundef %4, ptr noundef null) #20
  tail call void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %11, ptr noundef %4, ptr noundef null, i8 noundef zeroext 72, i16 noundef signext 1) #20
  tail call void @uiBlockSetFunc(ptr noundef %6, ptr noundef null, ptr noundef null, ptr noundef null) #20
  %12 = tail call ptr @uiLayoutColumn(ptr noundef %11, i32 noundef 0) #20
  %13 = tail call ptr @uiLayoutGetBlock(ptr noundef %12) #20
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %15 = tail call ptr @uiDefBut(ptr noundef %13, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.180, i32 noundef 0, i32 noundef -30, i16 noundef signext 0, i16 noundef signext %14, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #20
  tail call void @uiButSetFunc(ptr noundef %15, ptr noundef nonnull @dialog_exec_cb, ptr noundef nonnull %2, ptr noundef %13) #20
  %16 = load i32, ptr %7, align 8, !tbaa !152
  %17 = sdiv i32 %16, -2
  %18 = load i32, ptr %9, align 4, !tbaa !153
  %19 = sdiv i32 %18, 2
  tail call void @uiPopupBoundsBlock(ptr noundef %6, i32 noundef 4, i32 noundef %17, i32 noundef %19) #20
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wm_operator_ui_popup_ok(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !PGOFuncName !161 {
  %4 = load ptr, ptr %1, align 8, !tbaa !150
  %5 = icmp ne ptr %4, null
  %6 = icmp sgt i32 %2, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @WM_operator_call_ex(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 1) #20
  br label %10

10:                                               ; preds = %8, %3
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %11(ptr noundef nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_operator_redo_popup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 19
  %6 = load i16, ptr %5, align 8, !tbaa !47
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = tail call ptr @CTX_wm_reports(ptr noundef %0) #20
  %11 = load ptr, ptr %3, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.118, ptr noundef %13) #20
  br label %27

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = tail call ptr @CTX_wm_reports(ptr noundef %0) #20
  %23 = load ptr, ptr %3, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.wmOperatorType, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.119, ptr noundef %25) #20
  br label %27

26:                                               ; preds = %18, %14
  tail call void @uiPupBlock(ptr noundef %0, ptr noundef nonnull @wm_block_create_redo, ptr noundef nonnull %1) #20
  br label %27

27:                                               ; preds = %26, %21, %9
  ret i32 2
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @wm_block_create_redo(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !162 {
  %4 = tail call ptr @UI_GetStyle() #20
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %6, 15
  %8 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.wm_block_create_redo, i16 noundef signext 0) #20
  tail call void @uiBlockClearFlag(ptr noundef %8, i32 noundef 1) #20
  tail call void @uiBlockSetFlag(ptr noundef %8, i32 noundef 384) #20
  tail call void @uiBlockSetHandleFunc(ptr noundef %8, ptr noundef nonnull @wm_block_redo_cb, ptr noundef %2) #20
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %10 = sext i16 %9 to i32
  %11 = tail call ptr @uiBlockLayout(ptr noundef %8, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %7, i32 noundef %10, i32 noundef 0, ptr noundef %4) #20
  %12 = tail call ptr @WM_operator_last_redo(ptr noundef %0) #19
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = tail call zeroext i8 @WM_operator_check_ui_enabled(ptr noundef %0, ptr noundef %17) #19, !range !91
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void @uiLayoutSetEnabled(ptr noundef %11, i8 noundef zeroext 0) #20
  br label %21

21:                                               ; preds = %14, %20, %3
  %22 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.wmOperatorType, ptr %23, i64 0, i32 19
  %25 = load i16, ptr %24, align 8, !tbaa !47
  %26 = and i16 %25, 8
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !37
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %34, %32 ], [ %30, %28 ]
  tail call void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %33, ptr noundef null, i8 noundef zeroext 72, i16 noundef signext 1) #20
  %34 = load ptr, ptr %33, align 8, !tbaa !37
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %32, !llvm.loop !163

36:                                               ; preds = %21
  tail call void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 72, i16 noundef signext 1) #20
  br label %37

37:                                               ; preds = %32, %28, %36
  tail call void @uiPopupBoundsBlock(ptr noundef %8, i32 noundef 4, i32 noundef 0, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_recover_last_session(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #18
  %4 = tail call ptr @BLI_temp_dir_base() #20
  call void @BLI_make_file_string(ptr noundef nonnull @.str.120, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull @.str.121) #20
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = call i32 @BLI_exists(ptr noundef nonnull %3) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %6, %2
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !164
  %11 = or i32 %10, 8388608
  store i32 %11, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !164
  %12 = call fastcc zeroext i8 @wm_file_read_opwrap(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #19
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !164
  %14 = and i32 %13, -8388609
  store i32 %14, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !164
  %15 = load ptr, ptr @G, align 8, !tbaa !166
  %16 = getelementptr inbounds %struct.Main, ptr %15, i64 0, i32 2
  %17 = load i8, ptr %16, align 8, !tbaa !34
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 4), align 1, !tbaa !167
  br label %21

20:                                               ; preds = %9
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !168
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !169
  br label %21

21:                                               ; preds = %19, %20, %6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_temp_dir_base() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @wm_file_read_opwrap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !170 {
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #20
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @WM_file_autoexec_init(ptr noundef %1) #20
  br label %7

7:                                                ; preds = %6, %4
  %8 = tail call zeroext i8 @WM_file_read(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @WM_paint_cursor_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %6 = tail call ptr %5(i64 noundef 40, ptr noundef nonnull @.str.122) #20
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 11
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #20
  %8 = getelementptr inbounds %struct.wmPaintCursor, ptr %6, i64 0, i32 2
  store ptr %3, ptr %8, align 8, !tbaa !171
  %9 = getelementptr inbounds %struct.wmPaintCursor, ptr %6, i64 0, i32 3
  store ptr %1, ptr %9, align 8, !tbaa !173
  %10 = getelementptr inbounds %struct.wmPaintCursor, ptr %6, i64 0, i32 4
  store ptr %2, ptr %10, align 8, !tbaa !174
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_paint_cursor_end(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 11
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %6, %1
  br i1 %9, label %10, label %4, !llvm.loop !175

10:                                               ; preds = %8
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %1) #20
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %11(ptr noundef nonnull %1) #20
  br label %12

12:                                               ; preds = %4, %10
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_border_select_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !135
  %6 = add i16 %5, -20483
  %7 = icmp ult i16 %6, 14
  %8 = select i1 %7, i32 2, i32 3
  %9 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %8) #20
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %9, ptr %10, align 8
  %11 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #20
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  ret i32 1
}

; Function Attrs: optsize
declare ptr @WM_gesture_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_gesture_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_border_select_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !135
  switch i16 %11, label %66 [
    i16 4, label %12
    i16 20514, label %48
  ]

12:                                               ; preds = %3
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !178
  call void @wm_subwindow_origin_get(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %16 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !179
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !180
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !181
  %26 = load i32, ptr %4, align 4, !tbaa !75
  %27 = sub nsw i32 %25, %26
  %28 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  store i32 %27, ptr %28, align 4, !tbaa !147
  store i32 %27, ptr %9, align 4, !tbaa !145
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !182
  %31 = load i32, ptr %5, align 4, !tbaa !75
  %32 = sub nsw i32 %30, %31
  %33 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  store i32 %32, ptr %33, align 4, !tbaa !148
  %34 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  store i32 %32, ptr %34, align 4, !tbaa !146
  br label %46

35:                                               ; preds = %19, %12
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !181
  %38 = load i32, ptr %4, align 4, !tbaa !75
  %39 = sub nsw i32 %37, %38
  %40 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !147
  %41 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !182
  %43 = load i32, ptr %5, align 4, !tbaa !75
  %44 = sub nsw i32 %42, %43
  %45 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  store i32 %44, ptr %45, align 4, !tbaa !148
  br label %46

46:                                               ; preds = %35, %23
  %47 = call fastcc i32 @border_apply_rect(ptr noundef nonnull %1) #19, !range !183
  call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  br label %66

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %50 = load i16, ptr %49, align 2, !tbaa !138
  switch i16 %50, label %66 [
    i16 8, label %51
    i16 3, label %60
    i16 4, label %60
    i16 9, label %60
    i16 10, label %60
    i16 1, label %65
  ]

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !179
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !180
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  store i32 1, ptr %56, align 4, !tbaa !180
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  br label %66

60:                                               ; preds = %48, %48, %48, %48
  %61 = zext nneg i16 %50 to i32
  %62 = tail call fastcc i32 @border_apply(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %61) #19, !range !183
  %63 = icmp eq i32 %62, 0
  tail call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef nonnull %1) #19
  %64 = select i1 %63, i32 2, i32 4
  br label %66

65:                                               ; preds = %48
  tail call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %66

66:                                               ; preds = %60, %46, %48, %59, %55, %51, %3, %65
  %67 = phi i32 [ 2, %65 ], [ 1, %3 ], [ 1, %51 ], [ 1, %55 ], [ 1, %59 ], [ 1, %48 ], [ 1, %46 ], [ %64, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i32 %67
}

; Function Attrs: optsize
declare void @wm_subwindow_origin_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @border_apply_rect(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !184 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmGesture, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !176
  %6 = load i32, ptr %5, align 4, !tbaa !145
  %7 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !147
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %32, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !146
  %13 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !148
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = tail call fastcc i32 @min_ii(i32 noundef %6, i32 noundef %8) #19
  tail call void @RNA_int_set(ptr noundef %18, ptr noundef nonnull @.str.87, i32 noundef %19) #20
  %20 = load ptr, ptr %17, align 8, !tbaa !67
  %21 = load i32, ptr %11, align 4, !tbaa !146
  %22 = load i32, ptr %13, align 4, !tbaa !148
  %23 = tail call fastcc i32 @min_ii(i32 noundef %21, i32 noundef %22) #19
  tail call void @RNA_int_set(ptr noundef %20, ptr noundef nonnull @.str.91, i32 noundef %23) #20
  %24 = load ptr, ptr %17, align 8, !tbaa !67
  %25 = load i32, ptr %5, align 4, !tbaa !145
  %26 = load i32, ptr %7, align 4, !tbaa !147
  %27 = tail call fastcc i32 @max_ii(i32 noundef %25, i32 noundef %26) #19
  tail call void @RNA_int_set(ptr noundef %24, ptr noundef nonnull @.str.89, i32 noundef %27) #20
  %28 = load ptr, ptr %17, align 8, !tbaa !67
  %29 = load i32, ptr %11, align 4, !tbaa !146
  %30 = load i32, ptr %13, align 4, !tbaa !148
  %31 = tail call fastcc i32 @max_ii(i32 noundef %29, i32 noundef %30) #19
  tail call void @RNA_int_set(ptr noundef %28, ptr noundef nonnull @.str.93, i32 noundef %31) #20
  br label %32

32:                                               ; preds = %1, %10, %16
  %33 = phi i32 [ 1, %16 ], [ 0, %10 ], [ 0, %1 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @border_apply(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !185 {
  %4 = tail call fastcc i32 @border_apply_rect(ptr noundef %1) #19, !range !183
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.95) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !67
  tail call void @RNA_int_set(ptr noundef %12, ptr noundef nonnull @.str.95, i32 noundef %2) #20
  br label %13

13:                                               ; preds = %11, %6
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = tail call i32 %17(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %19

19:                                               ; preds = %3, %13
  %20 = phi i32 [ 1, %13 ], [ 0, %3 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_gesture_end(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !186 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %4) #20
  store ptr null, ptr %3, align 8, !tbaa !57
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #20
  tail call void @ED_area_tag_redraw(ptr noundef %5) #20
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.113) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  tail call void @WM_cursor_modal_restore(ptr noundef %11) #20
  br label %12

12:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_border_select_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_gesture_circle_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef %2, i32 noundef 5) #20
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !57
  %6 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #20
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_gesture_circle_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !135
  switch i16 %11, label %85 [
    i16 4, label %12
    i16 20514, label %29
  ]

12:                                               ; preds = %3
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !178
  call void @wm_subwindow_origin_get(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !181
  %18 = load i32, ptr %4, align 4, !tbaa !75
  %19 = sub nsw i32 %17, %18
  store i32 %19, ptr %9, align 4, !tbaa !145
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !182
  %22 = load i32, ptr %5, align 4, !tbaa !75
  %23 = sub nsw i32 %21, %22
  %24 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  store i32 %23, ptr %24, align 4, !tbaa !146
  call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  %25 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !180
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %85, label %28

28:                                               ; preds = %12
  call fastcc void @gesture_circle_apply(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %85

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !138
  switch i16 %31, label %85 [
    i16 11, label %32
    i16 6, label %57
    i16 7, label %63
    i16 3, label %70
    i16 4, label %70
    i16 5, label %70
    i16 1, label %84
    i16 2, label %84
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !182
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %36 = load i32, ptr %35, align 4, !tbaa !187
  %37 = sub nsw i32 %34, %36
  %38 = sitofp i32 %37 to float
  %39 = fmul float %38, 0x3FD3333340000000
  %40 = fcmp ogt float %39, 0.000000e+00
  %41 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !147
  %43 = sitofp i32 %42 to double
  br i1 %40, label %44, label %46

44:                                               ; preds = %32
  %45 = tail call float @llvm.ceil.f32(float %39)
  br label %48

46:                                               ; preds = %32
  %47 = tail call float @llvm.floor.f32(float %39)
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi float [ %47, %46 ], [ %45, %44 ]
  %50 = fpext float %49 to double
  %51 = fadd double %50, %43
  %52 = fptosi double %51 to i32
  store i32 %52, ptr %41, align 4, !tbaa !147
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  store i32 1, ptr %55, align 4, !tbaa !147
  br label %56

56:                                               ; preds = %54, %48
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  br label %85

57:                                               ; preds = %29
  %58 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !147
  %60 = sdiv i32 %59, 10
  %61 = add i32 %59, 2
  %62 = add i32 %61, %60
  store i32 %62, ptr %58, align 4, !tbaa !147
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  br label %85

63:                                               ; preds = %29
  %64 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !147
  %66 = sdiv i32 %65, -10
  %67 = add i32 %65, -2
  %68 = add i32 %67, %66
  %69 = tail call i32 @llvm.smax.i32(i32 %68, i32 1)
  store i32 %69, ptr %64, align 4, !tbaa !147
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  br label %85

70:                                               ; preds = %29, %29, %29
  %71 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !67
  %73 = tail call ptr @RNA_struct_find_property(ptr noundef %72, ptr noundef nonnull @.str.95) #20
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %71, align 8, !tbaa !67
  %77 = load i16, ptr %30, align 2, !tbaa !138
  %78 = sext i16 %77 to i32
  tail call void @RNA_int_set(ptr noundef %76, ptr noundef nonnull @.str.95, i32 noundef %78) #20
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i16, ptr %30, align 2, !tbaa !138
  %81 = icmp eq i16 %80, 5
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  tail call fastcc void @gesture_circle_apply(ptr noundef %0, ptr noundef nonnull %1) #19
  %83 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  store i32 1, ptr %83, align 4, !tbaa !180
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  br label %85

84:                                               ; preds = %29, %29
  tail call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %85

85:                                               ; preds = %28, %12, %3, %56, %57, %63, %29, %82, %79, %84
  %86 = phi i32 [ 4, %84 ], [ 1, %79 ], [ 1, %82 ], [ 1, %29 ], [ 1, %63 ], [ 1, %57 ], [ 1, %56 ], [ 1, %3 ], [ 1, %12 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i32 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gesture_circle_apply(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !188 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmGesture, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !176
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.95) #20
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %7, align 8, !tbaa !67
  %13 = load i32, ptr %6, align 4, !tbaa !145
  tail call void @RNA_int_set(ptr noundef %12, ptr noundef nonnull @.str.181, i32 noundef %13) #20
  %14 = load ptr, ptr %7, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !146
  tail call void @RNA_int_set(ptr noundef %14, ptr noundef nonnull @.str.182, i32 noundef %16) #20
  %17 = load ptr, ptr %7, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !147
  tail call void @RNA_int_set(ptr noundef %17, ptr noundef nonnull @.str.183, i32 noundef %19) #20
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.wmOperatorType, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %11
  %26 = tail call i32 %23(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %27

27:                                               ; preds = %25, %11
  %28 = load i32, ptr %18, align 4, !tbaa !147
  store i32 %28, ptr @circle_select_size, align 4, !tbaa !75
  br label %29

29:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_gesture_circle_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_tweakevent_test(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !138
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !135
  %18 = add i16 %17, -1
  %19 = icmp ult i16 %18, 3
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #20
  store ptr %21, ptr %5, align 8, !tbaa !189
  br label %27

22:                                               ; preds = %3
  %23 = and i32 %2, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef nonnull %6) #20
  br label %27

26:                                               ; preds = %22
  tail call fastcc void @tweak_gesture_modal(ptr noundef %0, ptr noundef %1) #19
  br label %27

27:                                               ; preds = %15, %25, %26, %8, %20, %11
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_gesture_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tweak_gesture_modal(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !191 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmEvent, align 8
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !189
  %9 = getelementptr inbounds %struct.wmGesture, ptr %8, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %11 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !135
  switch i16 %12, label %54 [
    i16 4, label %13
    i16 17, label %13
    i16 1, label %47
    i16 3, label %47
    i16 2, label %47
  ]

13:                                               ; preds = %2, %2
  %14 = getelementptr inbounds %struct.wmGesture, ptr %8, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !178
  call void @wm_subwindow_origin_get(ptr noundef nonnull %6, i32 noundef %15, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %16 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !181
  %18 = load i32, ptr %3, align 4, !tbaa !75
  %19 = sub nsw i32 %17, %18
  %20 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 1
  store i32 %19, ptr %20, align 4, !tbaa !147
  %21 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !182
  %23 = load i32, ptr %4, align 4, !tbaa !75
  %24 = sub nsw i32 %22, %23
  %25 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 3
  store i32 %24, ptr %25, align 4, !tbaa !148
  %26 = call i32 @wm_gesture_evaluate(ptr noundef nonnull %8) #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %60, label %28

28:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #18
  call void @wm_event_init_from_window(ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  %29 = load i32, ptr %10, align 4, !tbaa !145
  %30 = load i32, ptr %3, align 4, !tbaa !75
  %31 = add nsw i32 %30, %29
  %32 = getelementptr inbounds %struct.wmEvent, ptr %5, i64 0, i32 4
  store i32 %31, ptr %32, align 4, !tbaa !181
  %33 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !146
  %35 = load i32, ptr %4, align 4, !tbaa !75
  %36 = add nsw i32 %35, %34
  %37 = getelementptr inbounds %struct.wmEvent, ptr %5, i64 0, i32 5
  store i32 %36, ptr %37, align 8, !tbaa !182
  %38 = getelementptr inbounds %struct.wmGesture, ptr %8, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !192
  %40 = getelementptr inbounds %struct.wmEvent, ptr %5, i64 0, i32 2
  %41 = icmp eq i32 %39, 3
  %42 = select i1 %41, i16 20485, i16 20484
  %43 = icmp eq i32 %39, 1
  %44 = select i1 %43, i16 20483, i16 %42
  store i16 %44, ptr %40, align 8, !tbaa !135
  %45 = trunc i32 %26 to i16
  %46 = getelementptr inbounds %struct.wmEvent, ptr %5, i64 0, i32 3
  store i16 %45, ptr %46, align 2, !tbaa !138
  call void @wm_event_add(ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  call void @WM_gesture_end(ptr noundef %0, ptr noundef nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #18
  br label %60

47:                                               ; preds = %2, %2, %2
  %48 = getelementptr inbounds %struct.wmGesture, ptr %8, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !192
  %50 = zext nneg i16 %12 to i32
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef nonnull %8) #20
  %53 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  store i16 2, ptr %53, align 2, !tbaa !138
  br label %60

54:                                               ; preds = %2
  %55 = and i16 %12, -16
  %56 = icmp eq i16 %55, 272
  %57 = icmp eq i16 %12, 0
  %58 = or i1 %57, %56
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef nonnull %8) #20
  br label %60

60:                                               ; preds = %54, %59, %47, %52, %13, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_gesture_lasso_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef %2, i32 noundef 4) #20
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !57
  %6 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #20
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.113) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %13 = load ptr, ptr %7, align 8, !tbaa !67
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.113) #20
  tail call void @WM_cursor_modal_set(ptr noundef %12, i32 noundef %14) #20
  br label %15

15:                                               ; preds = %11, %3
  ret i32 1
}

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_gesture_lines_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef %2, i32 noundef 1) #20
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !57
  %6 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #20
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.113) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %13 = load ptr, ptr %7, align 8, !tbaa !67
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.113) #20
  tail call void @WM_cursor_modal_set(ptr noundef %12, i32 noundef %14) #20
  br label %15

15:                                               ; preds = %11, %3
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_gesture_lasso_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !135
  switch i16 %9, label %73 [
    i16 4, label %10
    i16 17, label %10
    i16 1, label %67
    i16 2, label %67
    i16 3, label %67
    i16 218, label %72
  ]

10:                                               ; preds = %3, %3
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %12 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !178
  call void @wm_subwindow_origin_get(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %14 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !193
  %16 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !194
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !176
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %23 = add nsw i32 %15, 1024
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = call ptr %22(i64 noundef %25, ptr noundef nonnull @.str.123) #20
  store ptr %26, ptr %20, align 8, !tbaa !176
  %27 = load i32, ptr %16, align 4, !tbaa !194
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 2 %21, i64 %29, i1 false)
  %30 = load i32, ptr %16, align 4, !tbaa !194
  %31 = add nsw i32 %30, 1024
  store i32 %31, ptr %16, align 4, !tbaa !194
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %32(ptr noundef %21) #20
  %33 = load i32, ptr %14, align 8, !tbaa !193
  br label %34

34:                                               ; preds = %19, %10
  %35 = phi i32 [ %33, %19 ], [ %15, %10 ]
  %36 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !176
  %38 = shl nsw i32 %35, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr i16, ptr %37, i64 %39
  %41 = getelementptr i16, ptr %40, i64 -2
  %42 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !181
  %44 = load i32, ptr %4, align 4, !tbaa !75
  %45 = sub nsw i32 %43, %44
  %46 = load i16, ptr %41, align 2, !tbaa !102
  %47 = sext i16 %46 to i32
  %48 = sub nsw i32 %45, %47
  %49 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !182
  %51 = load i32, ptr %5, align 4, !tbaa !75
  %52 = getelementptr i16, ptr %40, i64 -1
  %53 = load i16, ptr %52, align 2, !tbaa !102
  %54 = sext i16 %53 to i32
  %55 = add i32 %51, %54
  %56 = sub i32 %50, %55
  %57 = mul nsw i32 %48, %48
  %58 = mul nsw i32 %56, %56
  %59 = add nuw nsw i32 %58, %57
  %60 = icmp ugt i32 %59, 4
  br i1 %60, label %61, label %73

61:                                               ; preds = %34
  %62 = trunc i32 %45 to i16
  store i16 %62, ptr %40, align 2, !tbaa !102
  %63 = sub nsw i32 %50, %51
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds i16, ptr %40, i64 1
  store i16 %64, ptr %65, align 2, !tbaa !102
  %66 = add nsw i32 %35, 1
  store i32 %66, ptr %14, align 8, !tbaa !193
  br label %73

67:                                               ; preds = %3, %3, %3
  %68 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %69 = load i16, ptr %68, align 2, !tbaa !138
  %70 = icmp eq i16 %69, 2
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  tail call fastcc void @gesture_lasso_apply(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %73

72:                                               ; preds = %3
  tail call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %73

73:                                               ; preds = %3, %67, %61, %34, %72, %71
  %74 = phi i32 [ 2, %72 ], [ 4, %71 ], [ 1, %34 ], [ 1, %61 ], [ 1, %67 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i32 %74
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gesture_lasso_apply(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !195 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [2 x float], align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %7 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !176
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  tail call void @RNA_collection_clear(ptr noundef %10, ptr noundef nonnull @.str.124) #20
  %11 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !193
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2, %14
  %15 = phi i32 [ %20, %14 ], [ 0, %2 ]
  %16 = phi ptr [ %21, %14 ], [ %8, %2 ]
  %17 = load <2 x i16>, ptr %16, align 2, !tbaa !102
  %18 = sitofp <2 x i16> %17 to <2 x float>
  store <2 x float> %18, ptr %4, align 8, !tbaa !196
  %19 = load ptr, ptr %9, align 8, !tbaa !67
  call void @RNA_collection_add(ptr noundef %19, ptr noundef nonnull @.str.124, ptr noundef nonnull %3) #20
  call void @RNA_float_set_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.125, ptr noundef nonnull %4) #20
  %20 = add nuw nsw i32 %15, 1
  %21 = getelementptr inbounds i16, ptr %16, i64 2
  %22 = load i32, ptr %11, align 8, !tbaa !193
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %14, label %24, !llvm.loop !197

24:                                               ; preds = %14, %2
  call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef nonnull %1) #19
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  %27 = getelementptr inbounds %struct.wmOperatorType, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = call i32 %28(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %32

32:                                               ; preds = %30, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_gesture_lines_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @WM_gesture_lasso_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19, !range !198
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_gesture_lasso_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_gesture_lines_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_gesture_lasso_path_to_array(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [2 x float], align 8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.124) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 8, !tbaa !67
  %13 = tail call i32 @RNA_property_collection_length(ptr noundef %12, ptr noundef nonnull %9) #20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %17 = sext i32 %13 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @__func__.WM_gesture_lasso_path_to_array) #20
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #18
  %20 = load ptr, ptr %7, align 8, !tbaa !67
  call void @RNA_property_collection_begin(ptr noundef %20, ptr noundef nonnull %9, ptr noundef nonnull %4) #20
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !83
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %31, %26 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %25, i64 24, i1 false), !tbaa.struct !199
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @RNA_float_get_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.125, ptr noundef nonnull %6) #20
  %28 = getelementptr inbounds [2 x i32], ptr %19, i64 %27
  %29 = load <2 x float>, ptr %6, align 8, !tbaa !196
  %30 = fptosi <2 x float> %29 to <2 x i32>
  store <2 x i32> %30, ptr %28, align 4, !tbaa !75
  %31 = add nuw i64 %27, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #20
  %32 = load i32, ptr %21, align 8, !tbaa !83
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %26, !llvm.loop !200

34:                                               ; preds = %26, %15
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #18
  br label %35

35:                                               ; preds = %3, %11, %34
  %36 = phi i32 [ %13, %34 ], [ 0, %11 ], [ 0, %3 ]
  %37 = phi ptr [ %19, %34 ], [ null, %11 ], [ null, %3 ]
  store i32 %36, ptr %2, align 4, !tbaa !75
  ret ptr %37
}

; Function Attrs: optsize
declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_gesture_straightline_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef %2, i32 noundef 6) #20
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !57
  %6 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #20
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.113) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %13 = load ptr, ptr %7, align 8, !tbaa !67
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.113) #20
  tail call void @WM_cursor_modal_set(ptr noundef %12, i32 noundef %14) #20
  br label %15

15:                                               ; preds = %11, %3
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WM_gesture_straightline_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !135
  switch i16 %11, label %52 [
    i16 4, label %12
    i16 20514, label %39
  ]

12:                                               ; preds = %3
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !178
  call void @wm_subwindow_origin_get(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %16 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !180
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !181
  %21 = load i32, ptr %4, align 4, !tbaa !75
  %22 = sub nsw i32 %20, %21
  %23 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !147
  br i1 %18, label %24, label %31

24:                                               ; preds = %12
  store i32 %22, ptr %9, align 4, !tbaa !145
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !182
  %27 = load i32, ptr %5, align 4, !tbaa !75
  %28 = sub nsw i32 %26, %27
  %29 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  store i32 %28, ptr %29, align 4, !tbaa !148
  %30 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  store i32 %28, ptr %30, align 4, !tbaa !146
  br label %38

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !182
  %34 = load i32, ptr %5, align 4, !tbaa !75
  %35 = sub nsw i32 %33, %34
  %36 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  store i32 %35, ptr %36, align 4, !tbaa !148
  %37 = call fastcc i32 @straightline_apply(ptr noundef %0, ptr noundef nonnull %1) #19, !range !183
  br label %38

38:                                               ; preds = %31, %24
  call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  br label %52

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !138
  switch i16 %41, label %52 [
    i16 8, label %42
    i16 3, label %47
    i16 1, label %51
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !180
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  store i32 1, ptr %43, align 4, !tbaa !180
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #20
  br label %52

47:                                               ; preds = %39
  %48 = tail call fastcc i32 @straightline_apply(ptr noundef %0, ptr noundef nonnull %1) #19, !range !183
  %49 = icmp eq i32 %48, 0
  tail call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef nonnull %1) #19
  %50 = select i1 %49, i32 2, i32 4
  br label %52

51:                                               ; preds = %39
  tail call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %52

52:                                               ; preds = %47, %38, %39, %46, %42, %3, %51
  %53 = phi i32 [ 2, %51 ], [ 1, %3 ], [ 1, %42 ], [ 1, %46 ], [ 1, %39 ], [ 1, %38 ], [ %50, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @straightline_apply(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !201 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmGesture, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !176
  %7 = load i32, ptr %6, align 4, !tbaa !145
  %8 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !147
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !146
  %14 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !148
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %11, %2
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  tail call void @RNA_int_set(ptr noundef %19, ptr noundef nonnull @.str.105, i32 noundef %7) #20
  %20 = load ptr, ptr %18, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !146
  tail call void @RNA_int_set(ptr noundef %20, ptr noundef nonnull @.str.109, i32 noundef %22) #20
  %23 = load ptr, ptr %18, align 8, !tbaa !67
  %24 = load i32, ptr %8, align 4, !tbaa !147
  tail call void @RNA_int_set(ptr noundef %23, ptr noundef nonnull @.str.107, i32 noundef %24) #20
  %25 = load ptr, ptr %18, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !148
  tail call void @RNA_int_set(ptr noundef %25, ptr noundef nonnull @.str.111, i32 noundef %27) #20
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct.wmOperatorType, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %17
  %34 = tail call i32 %31(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %35

35:                                               ; preds = %17, %33, %11
  %36 = phi i32 [ 0, %11 ], [ 1, %33 ], [ 1, %17 ]
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_gesture_straightline_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @wm_gesture_end(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_operatortype_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  tail call void @BLI_ghash_free(ptr noundef %1, ptr noundef null, ptr noundef nonnull @operatortype_ghash_free_cb) #20
  store ptr null, ptr @global_ops_hash, align 8, !tbaa !37
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @operatortype_ghash_free_cb(ptr noundef %0) #0 !PGOFuncName !202 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @IDP_FreeProperty(ptr noundef nonnull %3) #20
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %7 = load ptr, ptr %2, align 8, !tbaa !87
  tail call void %6(ptr noundef %7) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @wm_operatortype_free_macro(ptr noundef nonnull %0) #19
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 18, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %19 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  tail call void %18(ptr noundef %20) #20
  br label %21

21:                                               ; preds = %17, %13
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %22(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_operatortype_init() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_ghash_str_new_ex(ptr noundef nonnull @.str.126, i32 noundef 2048) #20
  store ptr %1, ptr @global_ops_hash, align 8, !tbaa !37
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_window_duplicate) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_read_history) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_read_homefile) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_read_factory_settings) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_save_homefile) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_save_userpref) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_userpref_autoexec_path_add) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_userpref_autoexec_path_remove) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_window_fullscreen_toggle) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_quit_blender) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_open_mainfile) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_revert_mainfile) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_link) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_append) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_recover_last_session) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_recover_auto_save) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_save_as_mainfile) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_save_mainfile) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_redraw_timer) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_memory_statistics) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_dependency_relations) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_debug_menu) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_operator_defaults) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_splash) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_search_menu) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_call_menu) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_call_menu_pie) #19
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_radial_control) #19
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_str_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_window_duplicate(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !203 {
  store ptr @.str.184, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.128, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.185, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_window_duplicate_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @wm_operator_winactive_normal, ptr %5, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_read_history(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !204 {
  store ptr @.str.186, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.187, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.188, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_history_read_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_read_homefile(ptr nocapture noundef %0) #0 !PGOFuncName !205 {
  store ptr @.str.189, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.129, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.190, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_homefile_read_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = tail call ptr @RNA_def_string_file_path(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.191) #20
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 524288) #20
  %9 = load ptr, ptr %6, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.192, i32 noundef 1, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.194) #20
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268959744) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_read_factory_settings(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !206 {
  store ptr @.str.195, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.196, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.197, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_homefile_read_exec, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_save_homefile(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !207 {
  store ptr @.str.198, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.130, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.199, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_homefile_write_exec, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_save_userpref(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !208 {
  store ptr @.str.200, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.201, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.202, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_userpref_write_exec, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_userpref_autoexec_path_add(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !209 {
  store ptr @.str.203, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.204, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.205, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_userpref_autoexec_add_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %5, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_userpref_autoexec_path_remove(ptr nocapture noundef %0) #0 !PGOFuncName !210 {
  store ptr @.str.207, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.208, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.209, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_userpref_autoexec_remove_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = tail call ptr @RNA_def_int(ptr noundef %7, ptr noundef nonnull @.str.210, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1000) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_window_fullscreen_toggle(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !211 {
  store ptr @.str.212, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.138, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.213, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_window_fullscreen_toggle_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %5, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_quit_blender(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !212 {
  store ptr @.str.214, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.139, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.214, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_exit_blender_exec, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_open_mainfile(ptr nocapture noundef %0) #0 !PGOFuncName !213 {
  store ptr @.str.215, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.132, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.216, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wm_open_mainfile_invoke, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_open_mainfile_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 5
  store ptr @wm_open_mainfile_check, ptr %6, align 8, !tbaa !214
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @wm_open_mainfile_ui, ptr %7, align 8, !tbaa !215
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2052, i16 noundef signext 8, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #19
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.192, i32 noundef 1, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.217) #20
  %11 = load ptr, ptr %8, align 8, !tbaa !39
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.218, i32 noundef 1, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_revert_mainfile(ptr nocapture noundef %0) #0 !PGOFuncName !216 {
  store ptr @.str.223, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.224, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.225, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = tail call ptr @RNA_def_boolean(ptr noundef %6, ptr noundef nonnull @.str.218, i32 noundef 1, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220) #20
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_revert_mainfile_exec, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @wm_revert_mainfile_poll, ptr %9, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_link(ptr nocapture noundef %0) #0 !PGOFuncName !217 {
  store ptr @.str.226, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.133, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.227, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wm_link_append_invoke, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_link_append_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @wm_link_append_poll, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  %8 = load i16, ptr %7, align 8, !tbaa !47
  %9 = or i16 %8, 2
  store i16 %9, ptr %7, align 8, !tbaa !47
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2052, i16 noundef signext 1, i16 noundef signext 0, i16 noundef signext 31, i16 noundef signext 0) #19
  tail call fastcc void @wm_link_append_properties_common(ptr noundef nonnull %0, i8 noundef zeroext 1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_append(ptr nocapture noundef %0) #0 !PGOFuncName !218 {
  store ptr @.str.244, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.134, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.245, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wm_link_append_invoke, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_link_append_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @wm_link_append_poll, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  %8 = load i16, ptr %7, align 8, !tbaa !47
  %9 = or i16 %8, 2
  store i16 %9, ptr %7, align 8, !tbaa !47
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2052, i16 noundef signext 1, i16 noundef signext 0, i16 noundef signext 30, i16 noundef signext 0) #19
  tail call fastcc void @wm_link_append_properties_common(ptr noundef nonnull %0, i8 noundef zeroext 0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_recover_last_session(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !219 {
  store ptr @.str.246, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.247, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.248, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_recover_last_session_exec, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_recover_auto_save(ptr nocapture noundef %0) #0 !PGOFuncName !220 {
  store ptr @.str.249, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.250, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.251, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_recover_auto_save_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wm_recover_auto_save_invoke, ptr %5, align 8, !tbaa !49
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 4, i16 noundef signext 8, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_save_as_mainfile(ptr nocapture noundef %0) #0 !PGOFuncName !221 {
  store ptr @.str.252, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.136, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.253, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wm_save_as_mainfile_invoke, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_save_as_mainfile_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 5
  store ptr @blend_save_check, ptr %6, align 8, !tbaa !214
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2052, i16 noundef signext 8, i16 noundef signext 1, i16 noundef signext 8, i16 noundef signext 0) #19
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.254, i32 noundef 0, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.256) #20
  %10 = load ptr, ptr %7, align 8, !tbaa !39
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.257, i32 noundef 1, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.259) #20
  %12 = load ptr, ptr %7, align 8, !tbaa !39
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.137, i32 noundef 0, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.261) #20
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #20
  %14 = load ptr, ptr %7, align 8, !tbaa !39
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.262, i32 noundef 0, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.264) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_save_mainfile(ptr nocapture noundef %0) #0 !PGOFuncName !222 {
  store ptr @.str.267, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.135, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.268, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wm_save_mainfile_invoke, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_save_as_mainfile_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 5
  store ptr @blend_save_check, ptr %6, align 8, !tbaa !214
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2052, i16 noundef signext 8, i16 noundef signext 1, i16 noundef signext 8, i16 noundef signext 0) #19
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.254, i32 noundef 0, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.256) #20
  %10 = load ptr, ptr %7, align 8, !tbaa !39
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.257, i32 noundef 0, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.259) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_redraw_timer(ptr nocapture noundef %0) #0 !PGOFuncName !223 {
  store ptr @.str.270, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.140, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.271, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @redraw_timer_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.272, ptr noundef nonnull @redraw_timer_type_items, i32 noundef 0, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.2) #20
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !132
  %11 = load ptr, ptr %7, align 8, !tbaa !39
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.274, i32 noundef 10, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.276, i32 noundef 1, i32 noundef 1000) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_memory_statistics(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !224 {
  store ptr @.str.296, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.297, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.298, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @memory_statistics_exec, ptr %4, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_dependency_relations(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !225 {
  store ptr @.str.299, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.300, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.301, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @dependency_relations_exec, ptr %4, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_debug_menu(ptr nocapture noundef %0) #0 !PGOFuncName !226 {
  store ptr @.str.302, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.141, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.303, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wm_debug_menu_invoke, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_debug_menu_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.304, i32 noundef 0, i32 noundef -32768, i32 noundef 32767, ptr noundef nonnull @.str.305, ptr noundef nonnull @.str.2, i32 noundef -10000, i32 noundef 10000) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_operator_defaults(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !227 {
  store ptr @.str.306, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.307, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.308, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_operator_defaults_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %5, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_splash(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !228 {
  store ptr @.str.311, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.312, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.313, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wm_splash_invoke, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %5, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @WM_OT_search_menu(ptr nocapture noundef writeonly %0) #10 !PGOFuncName !229 {
  store ptr @.str.334, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.142, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.335, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wm_search_menu_invoke, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_search_menu_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @wm_search_menu_poll, ptr %6, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_call_menu(ptr nocapture noundef %0) #0 !PGOFuncName !230 {
  store ptr @.str.336, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.337, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.338, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_call_menu_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.233, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.340) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_call_menu_pie(ptr nocapture noundef %0) #0 !PGOFuncName !231 {
  store ptr @.str.341, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.342, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.343, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wm_call_pie_menu_invoke, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_call_pie_menu_exec, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.233, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.344) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WM_OT_radial_control(ptr nocapture noundef %0) #0 !PGOFuncName !232 {
  store ptr @.str.345, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.346, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.347, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @radial_control_invoke, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @radial_control_modal, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @radial_control_cancel, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.348, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.349, ptr noundef nonnull @.str.350) #20
  %11 = load ptr, ptr %8, align 8, !tbaa !39
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.351, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353) #20
  %13 = load ptr, ptr %8, align 8, !tbaa !39
  %14 = tail call ptr @RNA_def_string(ptr noundef %13, ptr noundef nonnull @.str.354, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.356) #20
  %15 = load ptr, ptr %8, align 8, !tbaa !39
  %16 = tail call ptr @RNA_def_string(ptr noundef %15, ptr noundef nonnull @.str.357, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.359) #20
  %17 = load ptr, ptr %8, align 8, !tbaa !39
  %18 = tail call ptr @RNA_def_string(ptr noundef %17, ptr noundef nonnull @.str.360, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.361, ptr noundef nonnull @.str.362) #20
  %19 = load ptr, ptr %8, align 8, !tbaa !39
  %20 = tail call ptr @RNA_def_string(ptr noundef %19, ptr noundef nonnull @.str.363, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.364, ptr noundef nonnull @.str.365) #20
  %21 = load ptr, ptr %8, align 8, !tbaa !39
  %22 = tail call ptr @RNA_def_string(ptr noundef %21, ptr noundef nonnull @.str.366, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.367, ptr noundef nonnull @.str.368) #20
  %23 = load ptr, ptr %8, align 8, !tbaa !39
  %24 = tail call ptr @RNA_def_string(ptr noundef %23, ptr noundef nonnull @.str.369, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.370, ptr noundef nonnull @.str.371) #20
  %25 = load ptr, ptr %8, align 8, !tbaa !39
  %26 = tail call ptr @RNA_def_boolean(ptr noundef %25, ptr noundef nonnull @.str.372, i32 noundef 0, ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.374) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.127, i32 noundef 0, i32 noundef 0) #20
  %3 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.128, i32 noundef 119, i32 noundef 1, i32 noundef 6, i32 noundef 0) #20
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.129, i32 noundef 110, i32 noundef 1, i32 noundef 2, i32 noundef 0) #20
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.130, i32 noundef 117, i32 noundef 1, i32 noundef 2, i32 noundef 0) #20
  %6 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.131, i32 noundef 111, i32 noundef 1, i32 noundef 3, i32 noundef 0) #20
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.132, i32 noundef 111, i32 noundef 1, i32 noundef 2, i32 noundef 0) #20
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.132, i32 noundef 300, i32 noundef 1, i32 noundef 0, i32 noundef 0) #20
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.133, i32 noundef 111, i32 noundef 1, i32 noundef 6, i32 noundef 0) #20
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.134, i32 noundef 300, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.135, i32 noundef 115, i32 noundef 1, i32 noundef 2, i32 noundef 0) #20
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.135, i32 noundef 119, i32 noundef 1, i32 noundef 2, i32 noundef 0) #20
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.136, i32 noundef 115, i32 noundef 1, i32 noundef 3, i32 noundef 0) #20
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.136, i32 noundef 301, i32 noundef 1, i32 noundef 0, i32 noundef 0) #20
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.136, i32 noundef 115, i32 noundef 1, i32 noundef 6, i32 noundef 0) #20
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !233
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.137, i32 noundef 1) #20
  %18 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.138, i32 noundef 310, i32 noundef 1, i32 noundef 4, i32 noundef 0) #20
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.139, i32 noundef 113, i32 noundef 1, i32 noundef 2, i32 noundef 0) #20
  %20 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.140, i32 noundef 116, i32 noundef 1, i32 noundef 6, i32 noundef 0) #20
  %21 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.141, i32 noundef 100, i32 noundef 1, i32 noundef 6, i32 noundef 0) #20
  %22 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.142, i32 noundef 221, i32 noundef 1, i32 noundef 0, i32 noundef 0) #20
  %23 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.143, i32 noundef 401, i32 noundef 1, i32 noundef 0, i32 noundef 0) #20
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 301, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %25 = getelementptr inbounds %struct.wmKeyMapItem, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %26, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #20
  %27 = load ptr, ptr %25, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %27, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148) #20
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 302, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %30, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #20
  %31 = load ptr, ptr %29, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %31, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.149) #20
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 303, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %33 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %34, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #20
  %35 = load ptr, ptr %33, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %35, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.150) #20
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 304, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %36, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %38, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #20
  %39 = load ptr, ptr %37, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %39, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.151) #20
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 305, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %41 = getelementptr inbounds %struct.wmKeyMapItem, ptr %40, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %42, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #20
  %43 = load ptr, ptr %41, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %43, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.152) #20
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 306, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %45 = getelementptr inbounds %struct.wmKeyMapItem, ptr %44, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %46, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #20
  %47 = load ptr, ptr %45, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %47, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.153) #20
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 307, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %49 = getelementptr inbounds %struct.wmKeyMapItem, ptr %48, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %50, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #20
  %51 = load ptr, ptr %49, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %51, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.154) #20
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 308, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %53 = getelementptr inbounds %struct.wmKeyMapItem, ptr %52, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %54, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #20
  %55 = load ptr, ptr %53, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %55, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.155) #20
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 309, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %57 = getelementptr inbounds %struct.wmKeyMapItem, ptr %56, i64 0, i32 17
  %58 = load ptr, ptr %57, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %58, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #20
  %59 = load ptr, ptr %57, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %59, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.156) #20
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 310, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %60, i64 0, i32 17
  %62 = load ptr, ptr %61, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %62, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #20
  %63 = load ptr, ptr %61, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %63, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.157) #20
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 311, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %64, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %66, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #20
  %67 = load ptr, ptr %65, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %67, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.158) #20
  %68 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.160, i32 noundef 420, i32 noundef 1, i32 noundef 0, i32 noundef 0) #20
  %69 = getelementptr inbounds %struct.wmKeyMapItem, ptr %68, i64 0, i32 17
  %70 = load ptr, ptr %69, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %70, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.159) #20
  %71 = load ptr, ptr %69, align 8, !tbaa !233
  tail call void @RNA_float_set(ptr noundef %71, ptr noundef nonnull @.str.147, float noundef 0x3FF19999A0000000) #20
  %72 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.160, i32 noundef 421, i32 noundef 1, i32 noundef 0, i32 noundef 0) #20
  %73 = getelementptr inbounds %struct.wmKeyMapItem, ptr %72, i64 0, i32 17
  %74 = load ptr, ptr %73, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %74, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.159) #20
  %75 = load ptr, ptr %73, align 8, !tbaa !233
  tail call void @RNA_float_set(ptr noundef %75, ptr noundef nonnull @.str.147, float noundef 0x3FED1745C0000000) #20
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.160, i32 noundef 420, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %77 = getelementptr inbounds %struct.wmKeyMapItem, ptr %76, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %78, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.159) #20
  %79 = load ptr, ptr %77, align 8, !tbaa !233
  tail call void @RNA_float_set(ptr noundef %79, ptr noundef nonnull @.str.147, float noundef 1.500000e+00) #20
  %80 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.160, i32 noundef 421, i32 noundef 1, i32 noundef 1, i32 noundef 0) #20
  %81 = getelementptr inbounds %struct.wmKeyMapItem, ptr %80, i64 0, i32 17
  %82 = load ptr, ptr %81, align 8, !tbaa !233
  tail call void @RNA_string_set(ptr noundef %82, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.159) #20
  %83 = load ptr, ptr %81, align 8, !tbaa !233
  tail call void @RNA_float_set(ptr noundef %83, ptr noundef nonnull @.str.147, float noundef 0x3FE5555560000000) #20
  tail call fastcc void @gesture_circle_modal_keymap(ptr noundef %0) #19
  tail call fastcc void @gesture_border_modal_keymap(ptr noundef %0) #19
  tail call fastcc void @gesture_zoom_border_modal_keymap(ptr noundef %0) #19
  tail call fastcc void @gesture_straightline_modal_keymap(ptr noundef %0) #19
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gesture_circle_modal_keymap(ptr noundef %0) unnamed_addr #0 !PGOFuncName !235 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.398) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !236
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.398, ptr noundef nonnull @gesture_circle_modal_keymap.modal_items) #20
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #20
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 3, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #20
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #20
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 163, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 2) #20
  %14 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 3) #20
  %15 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 4) #20
  %16 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 5) #20
  %17 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  %18 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 5) #20
  %19 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 5) #20
  %20 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #20
  %21 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #20
  %22 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 11, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 6) #20
  %23 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 6) #20
  %24 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 11) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.399) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.400) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.401) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.402) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.403) #20
  br label %25

25:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gesture_border_modal_keymap(ptr noundef %0) unnamed_addr #0 !PGOFuncName !238 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.406) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !236
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.406, ptr noundef nonnull @gesture_border_modal_keymap.modal_items) #20
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #20
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 3, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #20
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 3, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 3) #20
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 8) #20
  %14 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 4) #20
  %15 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  %16 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 3) #20
  %17 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  %18 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.407) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.408) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.409) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.410) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.411) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.412) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.413) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.414) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.415) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.416) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.417) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.418) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.419) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.420) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.421) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.422) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.423) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.424) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.425) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.426) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.427) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.428) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.429) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.430) #20
  br label %19

19:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gesture_zoom_border_modal_keymap(ptr noundef %0) unnamed_addr #0 !PGOFuncName !239 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.435) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !236
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.435, ptr noundef nonnull @gesture_zoom_border_modal_keymap.modal_items) #20
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #20
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 3, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #20
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 9) #20
  %14 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  %15 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 10) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.425) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.429) #20
  br label %16

16:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gesture_straightline_modal_keymap(ptr noundef %0) unnamed_addr #0 !PGOFuncName !240 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.436) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !236
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.436, ptr noundef nonnull @gesture_straightline_modal_keymap.modal_items) #20
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #20
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 3, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #20
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 3) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.437) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.438) #20
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.439) #20
  br label %14

14:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_action_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 34
  %9 = load ptr, ptr %8, align 8, !tbaa !241
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = tail call fastcc ptr @rna_id_itemf(ptr noundef %3, ptr noundef %11, i8 noundef zeroext 0) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_id_itemf(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !243 {
  %4 = alloca %struct.EnumPropertyItem, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !tbaa !75
  %7 = icmp eq ptr %1, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %3
  %9 = icmp eq i8 %2, 0
  %10 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.EnumPropertyItem, ptr %4, i64 0, i32 1
  br label %12

12:                                               ; preds = %8, %22
  %13 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %14 = phi ptr [ %1, %8 ], [ %24, %22 ]
  br i1 %9, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !244
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %12
  %20 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4, i64 2
  store ptr %20, ptr %10, align 8, !tbaa !245
  store ptr %20, ptr %11, align 8, !tbaa !247
  %21 = add nsw i32 %13, 1
  store i32 %13, ptr %4, align 8, !tbaa !248
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #20
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi i32 [ %21, %19 ], [ %13, %15 ]
  %24 = load ptr, ptr %14, align 8, !tbaa !249
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %12, !llvm.loop !250

26:                                               ; preds = %22, %3
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  store i8 1, ptr %0, align 1, !tbaa !34
  %27 = load ptr, ptr %5, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_group_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 32
  %9 = load ptr, ptr %8, align 8, !tbaa !251
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = tail call fastcc ptr @rna_id_itemf(ptr noundef %3, ptr noundef %11, i8 noundef zeroext 0) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_group_local_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 32
  %9 = load ptr, ptr %8, align 8, !tbaa !251
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = tail call fastcc ptr @rna_id_itemf(ptr noundef %3, ptr noundef %11, i8 noundef zeroext 1) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_image_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !252
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = tail call fastcc ptr @rna_id_itemf(ptr noundef %3, ptr noundef %11, i8 noundef zeroext 0) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_image_local_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !252
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = tail call fastcc ptr @rna_id_itemf(ptr noundef %3, ptr noundef %11, i8 noundef zeroext 1) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_scene_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !253
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = tail call fastcc ptr @rna_id_itemf(ptr noundef %3, ptr noundef %11, i8 noundef zeroext 0) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_scene_local_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !253
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = tail call fastcc ptr @rna_id_itemf(ptr noundef %3, ptr noundef %11, i8 noundef zeroext 1) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_movieclip_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 42
  %9 = load ptr, ptr %8, align 8, !tbaa !254
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = tail call fastcc ptr @rna_id_itemf(ptr noundef %3, ptr noundef %11, i8 noundef zeroext 0) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_movieclip_local_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 42
  %9 = load ptr, ptr %8, align 8, !tbaa !254
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = tail call fastcc ptr @rna_id_itemf(ptr noundef %3, ptr noundef %11, i8 noundef zeroext 1) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_mask_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !255
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = tail call fastcc ptr @rna_id_itemf(ptr noundef %3, ptr noundef %11, i8 noundef zeroext 0) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_mask_local_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !255
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = tail call fastcc ptr @rna_id_itemf(ptr noundef %3, ptr noundef %11, i8 noundef zeroext 1) #19
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_macro_start(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !256 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %7 = tail call ptr %6(i64 noundef 4, ptr noundef nonnull @.str.162) #20
  store ptr %7, ptr %2, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_macro_end(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !257 {
  %3 = and i32 %1, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = load i32, ptr %7, align 4, !tbaa !58
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %1, -7
  %12 = or disjoint i32 %11, 4
  %13 = select i1 %10, i32 %1, i32 %12
  br label %14

14:                                               ; preds = %5, %2
  %15 = phi i32 [ %13, %5 ], [ %1, %2 ]
  %16 = and i32 %15, 6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %23(ptr noundef nonnull %20) #20
  store ptr null, ptr %19, align 8, !tbaa !57
  br label %24

24:                                               ; preds = %18, %22, %14
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_macro_invoke_internal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !258 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  br label %9

9:                                                ; preds = %6, %32
  %10 = phi ptr [ %3, %6 ], [ %34, %32 ]
  %11 = phi i32 [ 4, %6 ], [ %26, %32 ]
  %12 = getelementptr inbounds %struct.wmOperator, ptr %10, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = tail call i32 %15(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %2) #20
  br label %25

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.wmOperatorType, ptr %13, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %0, ptr noundef nonnull %10) #20
  br label %25

25:                                               ; preds = %19, %23, %17
  %26 = phi i32 [ %18, %17 ], [ %24, %23 ], [ %11, %19 ]
  %27 = load ptr, ptr %7, align 8, !tbaa !159
  %28 = getelementptr inbounds %struct.wmOperator, ptr %10, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !159
  tail call void @BLI_movelisttolist(ptr noundef %27, ptr noundef %29) #20
  %30 = and i32 %26, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %8, align 8, !tbaa !57
  store i32 4, ptr %33, align 4, !tbaa !58
  %34 = load ptr, ptr %10, align 8, !tbaa !68
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %9, !llvm.loop !259

36:                                               ; preds = %32, %25, %4
  %37 = phi i32 [ 4, %4 ], [ %26, %25 ], [ %26, %32 ]
  %38 = tail call fastcc i32 @wm_macro_end(ptr noundef %1, i32 noundef %37) #19
  ret i32 %38
}

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_event_free_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_grab_enable(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_path_struct_property_py(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefSearchButO_ptr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uiSearchBoxWidth() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uiSearchBoxHeight() local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPopupBoundsBlock(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_event_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutOperatorButs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wm_block_redo_cancel_cb(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !260 {
  %3 = tail call ptr @WM_operator_last_redo(ptr noundef %0) #19
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @WM_operator_free(ptr noundef %1) #20
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wm_block_redo_cb(ptr noundef %0, ptr noundef %1, i32 %2) #0 !PGOFuncName !261 {
  %4 = tail call ptr @WM_operator_last_redo(ptr noundef %0) #19
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @ED_undo_operator_repeat(ptr noundef %0, ptr noundef %1) #20
  br label %10

8:                                                ; preds = %3
  tail call void @ED_undo_push_op(ptr noundef %0, ptr noundef %1) #20
  tail call void @wm_operator_register(ptr noundef %0, ptr noundef %1) #20
  %9 = tail call i32 @WM_operator_repeat(ptr noundef %0, ptr noundef %1) #20
  br label %10

10:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: optsize
declare i32 @ED_undo_operator_repeat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_push_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_operator_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_repeat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dialog_check_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !262 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !214
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = tail call zeroext i8 %7(ptr noundef %0, ptr noundef nonnull %1) #20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @CTX_wm_menu(ptr noundef %0) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @ED_region_tag_refresh_ui(ptr noundef nonnull %13) #20
  br label %16

16:                                               ; preds = %12, %15, %9, %3
  ret void
}

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dialog_exec_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !263 {
  %4 = load ptr, ptr %1, align 8, !tbaa !150
  %5 = tail call i32 @WM_operator_call_ex(ptr noundef %0, ptr noundef %4, i8 noundef zeroext 1) #20
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %6(ptr noundef nonnull %1) #20
  tail call void @uiPupBlockClose(ptr noundef %0, ptr noundef %2) #20
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_menu(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_refresh_ui(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_call_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupBlockClose(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_file_autoexec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @WM_file_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !264 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !265 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @wm_gesture_evaluate(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @wm_window_duplicate_exec(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_operator_winactive_normal(ptr noundef %0) #0 !PGOFuncName !266 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 9
  %10 = load i16, ptr %9, align 8, !tbaa !268
  %11 = icmp eq i16 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %1, %4
  %14 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @wm_history_read_exec(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @wm_homefile_read_exec(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @wm_homefile_write_exec(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @wm_userpref_write_exec(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_userpref_autoexec_add_exec(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !PGOFuncName !270 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %4 = tail call ptr %3(i64 noundef 792, ptr noundef nonnull @.str.206) #20
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 44), ptr noundef %4) #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_userpref_autoexec_remove_exec(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !271 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call i32 @RNA_int_get(ptr noundef %4, ptr noundef nonnull @.str.210) #20
  %6 = tail call ptr @BLI_findlink(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 44), i32 noundef %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @BLI_freelinkN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 44), ptr noundef nonnull %6) #20
  br label %9

9:                                                ; preds = %8, %2
  ret i32 4
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @wm_window_fullscreen_toggle_exec(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_exit_blender_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !272 {
  tail call void @WM_operator_free(ptr noundef %1) #20
  tail call void @WM_exit(ptr noundef %0) #20
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_open_mainfile_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !273 {
  %4 = load ptr, ptr @G, align 8, !tbaa !166
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  tail call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.221) #20
  br label %22

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8, !tbaa !274
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.RecentFile, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !275
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %16, %14 ], [ %11, %10 ]
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  tail call void @RNA_string_set(ptr noundef %20, ptr noundef nonnull @.str.20, ptr noundef %18) #20
  tail call void @wm_open_init_load_ui(ptr noundef %1, i8 noundef zeroext 1) #20
  tail call void @wm_open_init_use_scripts(ptr noundef %1, i8 noundef zeroext 1) #20
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr null, ptr %21, align 8, !tbaa !57
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #20
  br label %22

22:                                               ; preds = %17, %7
  %23 = phi i32 [ 2, %7 ], [ 1, %17 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_open_mainfile_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !277 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #20
  call void @wm_open_init_load_ui(ptr noundef %1, i8 noundef zeroext 0) #20
  call void @wm_open_init_use_scripts(ptr noundef %1, i8 noundef zeroext 0) #20
  %6 = load ptr, ptr %4, align 8, !tbaa !67
  %7 = call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.192) #20
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %10 = and i32 %9, -1025
  %11 = select i1 %8, i32 1024, i32 0
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !164
  %13 = load ptr, ptr %4, align 8, !tbaa !67
  %14 = call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.218) #20
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8
  %17 = and i32 %16, -8193
  %18 = select i1 %15, i32 0, i32 8192
  %19 = or disjoint i32 %17, %18
  store i32 %19, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !278
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !159
  %22 = zext i1 %15 to i8
  %23 = call fastcc zeroext i8 @wm_file_read_opwrap(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %21, i8 noundef zeroext %22) #19
  %24 = load ptr, ptr %20, align 8, !tbaa !159
  call void @BKE_report_print_level_set(ptr noundef %24, i32 noundef 16) #20
  %25 = icmp eq i8 %23, 0
  %26 = select i1 %25, i32 2, i32 4
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #18
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @wm_open_mainfile_check(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 !PGOFuncName !279 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %5, ptr noundef nonnull @.str.218) #20
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #18
  %7 = load ptr, ptr %4, align 8, !tbaa !67
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #20
  %8 = call ptr @BLI_last_slash(ptr noundef nonnull %3) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 0, ptr %11, align 1, !tbaa !34
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !280
  %14 = and i32 %13, 4194304
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = call zeroext i8 @BKE_autoexec_match(ptr noundef nonnull %3) #20
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 8, !tbaa !67
  call void @RNA_property_boolean_set(ptr noundef %20, ptr noundef %6, i32 noundef 0) #20
  br label %21

21:                                               ; preds = %12, %19, %16
  %22 = phi i8 [ 1, %19 ], [ 0, %16 ], [ 0, %12 ]
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store i8 %22, ptr %23, align 1, !tbaa !281
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #18
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wm_open_mainfile_ui(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !283 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !284
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  tail call void @uiItemR(ptr noundef %5, ptr noundef %7, ptr noundef nonnull @.str.192, i32 noundef 0, ptr noundef null, i32 noundef 0) #20
  %8 = tail call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 0) #20
  %9 = load i8, ptr %3, align 1, !tbaa !281
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @uiLayoutSetActive(ptr noundef %8, i8 noundef zeroext 0) #20
  tail call void @uiLayoutSetEnabled(ptr noundef %8, i8 noundef zeroext 0) #20
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi ptr [ @.str.222, %11 ], [ @.str.219, %2 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !67
  tail call void @uiItemR(ptr noundef %8, ptr noundef %14, ptr noundef nonnull @.str.218, i32 noundef 0, ptr noundef nonnull %13, i32 noundef 0) #20
  ret void
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_open_init_load_ui(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_open_init_use_scripts(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report_print_level_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_last_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_autoexec_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_revert_mainfile_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !285 {
  tail call void @wm_open_init_use_scripts(ptr noundef %1, i8 noundef zeroext 0) #20
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.218) #20
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8
  %8 = and i32 %7, -8193
  %9 = select i1 %6, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !278
  %11 = load ptr, ptr @G, align 8, !tbaa !166
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = zext i1 %6 to i8
  %16 = tail call fastcc zeroext i8 @wm_file_read_opwrap(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %14, i8 noundef zeroext %15) #19
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 2, i32 4
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @wm_revert_mainfile_poll(ptr nocapture readnone %0) #12 !PGOFuncName !286 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !168
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_link_append_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !287 {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.20) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @WM_operator_call_notest(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %26

11:                                               ; preds = %3
  %12 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 2), align 8, !tbaa !34
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8, !tbaa !67
  tail call void @RNA_string_set(ptr noundef %15, ptr noundef nonnull @.str.20, ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 2)) #20
  br label %25

16:                                               ; preds = %11
  %17 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !168
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  %20 = load ptr, ptr @G, align 8, !tbaa !166
  %21 = getelementptr inbounds %struct.Main, ptr %20, i64 0, i32 2
  %22 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %21, i64 noundef 1024) #20
  %23 = call zeroext i8 @BLI_parent_dir(ptr noundef nonnull %4) #20
  %24 = load ptr, ptr %5, align 8, !tbaa !67
  call void @RNA_string_set(ptr noundef %24, ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  br label %25

25:                                               ; preds = %16, %19, %14
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %26

26:                                               ; preds = %25, %9
  %27 = phi i32 [ %10, %9 ], [ 1, %25 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_link_append_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !288 {
  %3 = alloca ptr, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca %struct.CollectionPropertyIterator, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #20
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  call void @RNA_string_get(ptr noundef %13, ptr noundef nonnull @.str.38, ptr noundef nonnull %4) #20
  %14 = load ptr, ptr %12, align 8, !tbaa !67
  call void @RNA_string_get(ptr noundef %14, ptr noundef nonnull @.str.35, ptr noundef nonnull %5) #20
  %15 = call zeroext i8 @BLO_is_a_library(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.228) #20
  br label %103

20:                                               ; preds = %2
  %21 = load i8, ptr %7, align 16, !tbaa !34
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.229) #20
  br label %103

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 2
  %28 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %6) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %32, i32 noundef 32, ptr noundef nonnull @.str.230) #20
  br label %103

33:                                               ; preds = %26
  %34 = load ptr, ptr %12, align 8, !tbaa !67
  %35 = call ptr @RNA_struct_find_property(ptr noundef %34, ptr noundef nonnull @.str.41) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %12, align 8, !tbaa !67
  %39 = call i32 @RNA_property_collection_length(ptr noundef %38, ptr noundef nonnull %35) #20
  %40 = icmp eq i32 %39, 0
  %41 = load i8, ptr %4, align 16
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %46, i32 noundef 32, ptr noundef nonnull @.str.229) #20
  br label %103

47:                                               ; preds = %33
  %48 = load i8, ptr %4, align 16, !tbaa !34
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %52, i32 noundef 32, ptr noundef nonnull @.str.229) #20
  br label %103

53:                                               ; preds = %47, %37
  %54 = phi i32 [ %39, %37 ], [ 0, %47 ]
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  %57 = call ptr @BLO_blendhandle_from_file(ptr noundef nonnull %6, ptr noundef %56) #20
  store ptr %57, ptr %3, align 8, !tbaa !37
  %58 = icmp eq ptr %57, null
  br i1 %58, label %103, label %59

59:                                               ; preds = %53
  %60 = call i32 @BKE_idcode_from_name(ptr noundef nonnull %7) #20
  %61 = load ptr, ptr %12, align 8, !tbaa !67
  %62 = call i32 @RNA_boolean_get(ptr noundef %61, ptr noundef nonnull @.str.231) #20
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  call void @BKE_scene_base_deselect_all(ptr noundef %11) #20
  br label %65

65:                                               ; preds = %64, %59
  %66 = call fastcc signext i16 @wm_link_append_flag(ptr noundef nonnull %1) #19, !range !289
  %67 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !290
  %69 = icmp eq ptr %68, null
  %70 = icmp ult i16 %66, 1024
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr %55, align 8, !tbaa !159
  %74 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %73, i32 noundef 16, ptr noundef nonnull @.str.232, ptr noundef nonnull %74) #20
  %75 = and i16 %66, 1023
  br label %76

76:                                               ; preds = %72, %65
  %77 = phi i16 [ %75, %72 ], [ %66, %65 ]
  call void @BKE_main_id_flag_all(ptr noundef %10, i16 noundef signext 2048, i8 noundef zeroext 1) #20
  %78 = call ptr @BLO_library_append_begin(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %6) #20
  %79 = getelementptr inbounds %struct.Main, ptr %78, i64 0, i32 10
  %80 = load ptr, ptr %79, align 8, !tbaa !291
  %81 = icmp eq i32 %54, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call ptr @BLO_library_append_named_part_ex(ptr noundef %0, ptr noundef nonnull %78, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %60, i16 noundef signext %77) #20
  br label %96

84:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %8) #18
  %85 = load ptr, ptr %12, align 8, !tbaa !67
  call void @RNA_collection_begin(ptr noundef %85, ptr noundef nonnull @.str.41, ptr noundef nonnull %8) #20
  %86 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %8, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !83
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %8, i64 0, i32 6
  br label %91

91:                                               ; preds = %89, %91
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %90, i64 24, i1 false), !tbaa.struct !199
  call void @RNA_string_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.233, ptr noundef nonnull %4) #20
  %92 = call ptr @BLO_library_append_named_part_ex(ptr noundef %0, ptr noundef %78, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %60, i16 noundef signext %77) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  call void @RNA_property_collection_next(ptr noundef nonnull %8) #20
  %93 = load i32, ptr %86, align 8, !tbaa !83
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %91, !llvm.loop !292

95:                                               ; preds = %91, %84
  call void @RNA_property_collection_end(ptr noundef nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #18
  br label %96

96:                                               ; preds = %95, %82
  call void @BLO_library_append_end(ptr noundef %0, ptr noundef %78, ptr noundef nonnull %3, i32 noundef %60, i16 noundef signext %77) #20
  call void @BKE_main_lib_objects_recalc_all(ptr noundef %10) #20
  call void @IMB_colormanagement_check_file_config(ptr noundef %10) #20
  %97 = and i16 %77, 4
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  call void @BKE_library_make_local(ptr noundef %10, ptr noundef %80, i8 noundef zeroext 1) #20
  br label %100

100:                                              ; preds = %99, %96
  call void @BKE_main_id_flag_all(ptr noundef %10, i16 noundef signext 2048, i8 noundef zeroext 0) #20
  call void @DAG_scene_relations_rebuild(ptr noundef %10, ptr noundef %11) #20
  %101 = load ptr, ptr %3, align 8, !tbaa !37
  call void @BLO_blendhandle_close(ptr noundef %101) #20
  %102 = call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 2), ptr noundef nonnull %5, i64 noundef 1024) #20
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #20
  br label %103

103:                                              ; preds = %53, %100, %50, %44, %30, %23, %17
  %104 = phi i32 [ 2, %17 ], [ 2, %23 ], [ 2, %30 ], [ 2, %44 ], [ 4, %100 ], [ 2, %50 ], [ 2, %53 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %104
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_link_append_poll(ptr noundef %0) #0 !PGOFuncName !293 {
  %2 = tail call i32 @WM_operator_winactive(ptr noundef %0) #19, !range !183
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #20
  %6 = icmp eq ptr %5, null
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_link_append_properties_common(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !294 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = zext nneg i8 %1 to i32
  %6 = tail call ptr @RNA_def_boolean(ptr noundef %4, ptr noundef nonnull @.str.235, i32 noundef %5, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.238) #20
  tail call void @RNA_def_property_flag(ptr noundef %6, i32 noundef 268959744) #20
  %7 = load ptr, ptr %3, align 8, !tbaa !39
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.231, i32 noundef 1, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.239) #20
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #20
  %9 = load ptr, ptr %3, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.234, i32 noundef 1, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.241) #20
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #20
  %11 = load ptr, ptr %3, align 8, !tbaa !39
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.236, i32 noundef %5, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.243) #20
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_parent_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLO_is_a_library(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BLO_blendhandle_from_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_idcode_from_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @wm_link_append_flag(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !295 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = tail call i32 @RNA_boolean_get(ptr noundef %3, ptr noundef nonnull @.str.231) #20
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i16 0, i16 16
  %7 = load ptr, ptr %2, align 8, !tbaa !67
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.234) #20
  %9 = icmp eq i32 %8, 0
  %10 = or disjoint i16 %6, 32
  %11 = select i1 %9, i16 %6, i16 %10
  %12 = load ptr, ptr %2, align 8, !tbaa !67
  %13 = tail call ptr @RNA_struct_find_property(ptr noundef %12, ptr noundef nonnull @.str.70) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !tbaa !67
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.70) #20
  %18 = icmp eq i32 %17, 0
  %19 = or disjoint i16 %11, 2
  %20 = select i1 %18, i16 %11, i16 %19
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i16 [ %11, %1 ], [ %20, %15 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !67
  %24 = tail call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.235) #20
  %25 = icmp eq i32 %24, 0
  %26 = or i16 %22, 4
  %27 = select i1 %25, i16 %22, i16 %26
  %28 = load ptr, ptr %2, align 8, !tbaa !67
  %29 = tail call i32 @RNA_boolean_get(ptr noundef %28, ptr noundef nonnull @.str.236) #20
  %30 = icmp eq i32 %29, 0
  %31 = or i16 %27, 1024
  %32 = select i1 %30, i16 %27, i16 %31
  ret i16 %32
}

; Function Attrs: optsize
declare void @BKE_main_id_flag_all(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLO_library_append_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLO_library_append_named_part_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLO_library_append_end(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_main_lib_objects_recalc_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_check_file_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_library_make_local(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_scene_relations_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLO_blendhandle_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_recover_last_session_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !296 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  tail call void @WM_recover_last_session(ptr noundef %0, ptr noundef %4) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_recover_auto_save_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !297 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #20
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !164
  %7 = or i32 %6, 8388608
  store i32 %7, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !164
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = call fastcc zeroext i8 @wm_file_read_opwrap(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %9, i8 noundef zeroext 1) #19
  %11 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !164
  %12 = and i32 %11, -8388609
  store i32 %12, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !164
  %13 = icmp eq i8 %10, 0
  %14 = select i1 %13, i32 2, i32 4
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #18
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_recover_auto_save_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !298 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  call void @wm_autosave_location(ptr noundef nonnull %4) #20
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #20
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #20
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  ret i32 1
}

; Function Attrs: optsize
declare void @wm_autosave_location(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_save_as_mainfile_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !299 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  tail call fastcc void @save_set_compress(ptr noundef %1) #19
  %5 = load ptr, ptr @G, align 8, !tbaa !166
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 2
  %7 = load i8, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8
  %10 = icmp ne ptr %9, null
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.RecentFile, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !275
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %14, i64 noundef 1024) #20
  br label %18

16:                                               ; preds = %3
  %17 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %6, i64 noundef 1024) #20
  br label %18

18:                                               ; preds = %16, %12
  call fastcc void @wm_filepath_default(ptr noundef nonnull %4) #19
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  call void @RNA_string_set(ptr noundef %20, ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #20
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #20
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_save_as_mainfile_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !300 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #18
  tail call fastcc void @save_set_compress(ptr noundef %1) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.20) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !67
  call void @RNA_string_get(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #20
  br label %14

10:                                               ; preds = %2
  %11 = load ptr, ptr @G, align 8, !tbaa !166
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 2
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %12, i64 noundef 1024) #20
  call fastcc void @wm_filepath_default(ptr noundef nonnull %3) #19
  br label %14

14:                                               ; preds = %10, %8
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !164
  %16 = load ptr, ptr %4, align 8, !tbaa !67
  %17 = call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.254) #20
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %15, -515
  %20 = or disjoint i32 %19, 2
  %21 = select i1 %18, i32 %19, i32 %20
  %22 = load ptr, ptr %4, align 8, !tbaa !67
  %23 = call i32 @RNA_boolean_get(ptr noundef %22, ptr noundef nonnull @.str.257) #20
  %24 = icmp eq i32 %23, 0
  %25 = or i32 %21, 16777216
  %26 = and i32 %21, -16777729
  %27 = select i1 %24, i32 %26, i32 %25
  %28 = load ptr, ptr %4, align 8, !tbaa !67
  %29 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %28, ptr noundef nonnull @.str.137) #20
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %14
  %32 = load ptr, ptr %4, align 8, !tbaa !67
  %33 = call i32 @RNA_boolean_get(ptr noundef %32, ptr noundef nonnull @.str.137) #20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = or i32 %27, 134217728
  br label %39

37:                                               ; preds = %31, %14
  %38 = and i32 %27, -134218241
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load ptr, ptr %4, align 8, !tbaa !67
  %42 = call ptr @RNA_struct_find_property(ptr noundef %41, ptr noundef nonnull @.str.262) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 8, !tbaa !67
  %46 = call i32 @RNA_boolean_get(ptr noundef %45, ptr noundef nonnull @.str.262) #20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = or i32 %40, 67108864
  br label %52

50:                                               ; preds = %44, %39
  %51 = and i32 %40, -67108865
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !159
  %56 = call i32 @wm_file_write(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %53, ptr noundef %55) #20
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 16908288, ptr noundef null) #20
  br label %59

59:                                               ; preds = %52, %58
  %60 = phi i32 [ 4, %58 ], [ 2, %52 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #18
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @blend_save_check(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !301 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #20
  %6 = call zeroext i8 @BLO_has_bfile_extension(ptr noundef nonnull %3) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = call zeroext i8 @BLI_ensure_extension(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef nonnull @.str.266) #20
  %10 = load ptr, ptr %4, align 8, !tbaa !67
  call void @RNA_string_set(ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #20
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i8 [ 1, %8 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #18
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_set_compress(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !302 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %3, ptr noundef nonnull @.str.254) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !169
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr %2, align 8, !tbaa !67
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %11 = and i32 %10, 2
  %12 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8
  %13 = and i32 %12, 32768
  %14 = select i1 %8, i32 %13, i32 %11
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.254, i32 noundef %14) #20
  br label %15

15:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_filepath_default(ptr noundef %0) unnamed_addr #0 !PGOFuncName !303 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !169
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @BLI_ensure_filename(ptr noundef %0, i64 noundef 1024, ptr noundef nonnull @.str.265) #20
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ensure_filename(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @wm_file_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLO_has_bfile_extension(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_ensure_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_save_mainfile_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !304 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  tail call fastcc void @save_set_compress(ptr noundef %1) #19
  %8 = load ptr, ptr @G, align 8, !tbaa !166
  %9 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i8 %10, 0
  %12 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8
  %13 = icmp ne ptr %12, null
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.RecentFile, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !275
  %18 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %17, i64 noundef 1024) #20
  br label %21

19:                                               ; preds = %7
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %9, i64 noundef 1024) #20
  br label %21

21:                                               ; preds = %19, %15
  call fastcc void @wm_filepath_default(ptr noundef nonnull %4) #19
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  call void @RNA_string_set(ptr noundef %23, ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #20
  %24 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !168
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !280
  %28 = and i32 %27, 1048576
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %22, align 8, !tbaa !67
  %32 = call ptr @RNA_struct_find_property(ptr noundef %31, ptr noundef nonnull @.str.257) #20
  %33 = load ptr, ptr %22, align 8, !tbaa !67
  %34 = call zeroext i8 @RNA_property_is_set(ptr noundef %33, ptr noundef %32) #20
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load ptr, ptr %22, align 8, !tbaa !67
  call void @RNA_property_boolean_set(ptr noundef %37, ptr noundef %32, i32 noundef 1) #20
  br label %38

38:                                               ; preds = %30, %36, %26, %21
  %39 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !169
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = call i32 @BLI_exists(ptr noundef nonnull %4) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 @WM_operator_confirm_message_ex(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.269, i32 noundef 1, ptr noundef nonnull %4) #19
  br label %49

46:                                               ; preds = %41
  %47 = call i32 @wm_save_as_mainfile_exec(ptr noundef %0, ptr noundef nonnull %1) #19, !range !305
  br label %49

48:                                               ; preds = %38
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %49

49:                                               ; preds = %48, %46, %44, %3
  %50 = phi i32 [ 2, %3 ], [ 32, %44 ], [ %47, %46 ], [ 1, %48 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @redraw_timer_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !306 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  %5 = tail call double @PIL_check_seconds_timer() #20
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.272) #20
  %9 = load ptr, ptr %6, align 8, !tbaa !67
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.274) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr @.str.2, ptr %3, align 8, !tbaa !37
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #20
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %91

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br label %14

14:                                               ; preds = %12, %88
  %15 = phi i32 [ 0, %12 ], [ %89, %88 ]
  switch i32 %8, label %87 [
    i32 0, label %16
    i32 1, label %18
    i32 2, label %20
    i32 3, label %46
    i32 4, label %47
    i32 5, label %60
  ]

16:                                               ; preds = %14
  br i1 %13, label %88, label %17

17:                                               ; preds = %16
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %4) #20
  br label %88

18:                                               ; preds = %14
  %19 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #20
  tail call void @ED_region_tag_redraw(ptr noundef %4) #20
  tail call void @wm_draw_update(ptr noundef %0) #20
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %19) #20
  br label %88

20:                                               ; preds = %14
  %21 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %22 = tail call ptr @CTX_wm_area(ptr noundef %0) #20
  %23 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #20
  %24 = tail call ptr @CTX_wm_screen(ptr noundef %0) #20
  %25 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  %27 = icmp eq ptr %26, null
  br i1 %27, label %45, label %31

28:                                               ; preds = %42, %31
  %29 = load ptr, ptr %32, align 8, !tbaa !37
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31, !llvm.loop !307

31:                                               ; preds = %20, %28
  %32 = phi ptr [ %29, %28 ], [ %26, %20 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %32) #20
  %33 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !37
  %35 = icmp eq ptr %34, null
  br i1 %35, label %28, label %36

36:                                               ; preds = %31, %42
  %37 = phi ptr [ %43, %42 ], [ %34, %31 ]
  %38 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 7
  %39 = load i16, ptr %38, align 4, !tbaa !308
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %37) #20
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %37) #20
  br label %42

42:                                               ; preds = %36, %41
  %43 = load ptr, ptr %37, align 8, !tbaa !37
  %44 = icmp eq ptr %43, null
  br i1 %44, label %28, label %36, !llvm.loop !311

45:                                               ; preds = %28, %20
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %21) #20
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %22) #20
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %23) #20
  br label %88

46:                                               ; preds = %14
  tail call fastcc void @redraw_timer_window_swap(ptr noundef %0) #19
  br label %88

47:                                               ; preds = %14
  %48 = tail call ptr @CTX_data_main(ptr noundef %0) #20
  %49 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %50 = and i32 %15, 1
  %51 = icmp eq i32 %50, 0
  %52 = getelementptr inbounds %struct.Scene, ptr %49, i64 0, i32 22, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !312
  %54 = select i1 %51, i32 1, i32 -1
  %55 = add nsw i32 %53, %54
  store i32 %55, ptr %52, align 8, !tbaa !312
  %56 = getelementptr inbounds %struct.Main, ptr %48, i64 0, i32 46
  %57 = load ptr, ptr %56, align 8, !tbaa !313
  %58 = getelementptr inbounds %struct.Scene, ptr %49, i64 0, i32 12
  %59 = load i32, ptr %58, align 8, !tbaa !314
  tail call void @BKE_scene_update_for_newframe(ptr noundef %57, ptr noundef %48, ptr noundef nonnull %49, i32 noundef %59) #20
  br label %88

60:                                               ; preds = %14
  %61 = tail call ptr @CTX_data_main(ptr noundef %0) #20
  %62 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %63 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 22, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !315
  %65 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 22, i32 6
  %66 = load i32, ptr %65, align 4, !tbaa !316
  %67 = add i32 %64, 1
  %68 = icmp eq i32 %67, %66
  br i1 %68, label %88, label %69

69:                                               ; preds = %60
  %70 = sub i32 %64, %66
  %71 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 22, i32 5
  %72 = getelementptr inbounds %struct.Main, ptr %61, i64 0, i32 46
  %73 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 12
  br label %74

74:                                               ; preds = %69, %82
  %75 = phi i32 [ %70, %69 ], [ %85, %82 ]
  %76 = load i32, ptr %71, align 8, !tbaa !312
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %71, align 8, !tbaa !312
  %78 = load i32, ptr %63, align 8, !tbaa !315
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = load i32, ptr %65, align 4, !tbaa !316
  store i32 %81, ptr %71, align 8, !tbaa !312
  br label %82

82:                                               ; preds = %80, %74
  %83 = load ptr, ptr %72, align 8, !tbaa !313
  %84 = load i32, ptr %73, align 8, !tbaa !314
  tail call void @BKE_scene_update_for_newframe(ptr noundef %83, ptr noundef %61, ptr noundef nonnull %62, i32 noundef %84) #20
  tail call fastcc void @redraw_timer_window_swap(ptr noundef %0) #19
  %85 = add nsw i32 %75, -1
  %86 = icmp eq i32 %75, 0
  br i1 %86, label %88, label %74, !llvm.loop !317

87:                                               ; preds = %14
  tail call void @ED_undo_pop(ptr noundef %0) #20
  tail call void @ED_undo_redo(ptr noundef %0) #20
  br label %88

88:                                               ; preds = %82, %60, %17, %16, %45, %47, %87, %46, %18
  %89 = add nuw nsw i32 %15, 1
  %90 = icmp eq i32 %89, %10
  br i1 %90, label %91, label %14, !llvm.loop !318

91:                                               ; preds = %88, %2
  %92 = tail call double @PIL_check_seconds_timer() #20
  %93 = fsub double %92, %5
  %94 = fmul double %93, 1.000000e+03
  %95 = fptrunc double %94 to float
  %96 = call zeroext i8 @RNA_enum_description(ptr noundef nonnull @redraw_timer_type_items, i32 noundef %8, ptr noundef nonnull %3) #20
  call void @WM_cursor_wait(i8 noundef zeroext 0) #20
  %97 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %98 = load ptr, ptr %97, align 8, !tbaa !159
  %99 = load ptr, ptr %3, align 8, !tbaa !37
  %100 = fpext float %95 to double
  %101 = sitofp i32 %10 to float
  %102 = fdiv float %95, %101
  %103 = fpext float %102 to double
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %98, i32 noundef 16, ptr noundef nonnull @.str.277, i32 noundef %10, ptr noundef %99, double noundef %100, double noundef %103) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 4
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_do_draw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_menu_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_draw_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @redraw_timer_window_swap(ptr noundef %0) unnamed_addr #0 !PGOFuncName !319 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #20
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %1 ]
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %8) #20
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !320

11:                                               ; preds = %7, %1
  tail call void @wm_draw_update(ptr noundef %0) #20
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %2) #20
  ret void
}

; Function Attrs: optsize
declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_redo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_enum_description(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @memory_statistics_exec(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !PGOFuncName !321 {
  %3 = load ptr, ptr @MEM_printmemlist_stats, align 8, !tbaa !37
  tail call void %3() #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dependency_relations_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !322 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #20
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #20
  tail call void @DAG_print_dependencies(ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  ret i32 4
}

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_print_dependencies(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_debug_menu_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !323 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !324
  %7 = sext i16 %6 to i32
  tail call void @RNA_int_set(ptr noundef %5, ptr noundef nonnull @.str.304, i32 noundef %7) #20
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %9 = sext i16 %8 to i32
  %10 = mul nsw i32 %9, 9
  %11 = tail call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %10, i32 noundef %9) #19
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_debug_menu_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !325 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call i32 @RNA_int_get(ptr noundef %4, ptr noundef nonnull @.str.304) #20
  %6 = trunc i32 %5 to i16
  store i16 %6, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !324
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  tail call void @ED_screen_refresh(ptr noundef %7, ptr noundef %8) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #20
  ret i32 4
}

; Function Attrs: optsize
declare void @ED_screen_refresh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_operator_defaults_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !326 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.309, ptr noundef nonnull @RNA_Operator) #20
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.310) #20
  br label %11

10:                                               ; preds = %2
  call void @WM_operator_properties_reset(ptr noundef nonnull %5) #19
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i32 [ 4, %10 ], [ 2, %7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i32 %12
}

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_splash_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !327 {
  tail call void @uiPupBlock(ptr noundef %0, ptr noundef nonnull @wm_block_create_splash, ptr noundef null) #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @wm_block_create_splash(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !328 {
  %4 = alloca [96 x i8], align 16
  %5 = alloca %struct.Menu, align 8
  %6 = tail call ptr @UI_GetStyle() #20
  %7 = tail call ptr @WM_menutype_find(ptr noundef nonnull @.str.314, i8 noundef zeroext 1) #20
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #18
  %8 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.174, i16 noundef signext 0) #20
  tail call void @uiBlockSetFlag(ptr noundef %8, i32 noundef 272) #20
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %10 = sitofp i16 %9 to float
  %11 = fmul float %10, 5.000000e-01
  %12 = fptosi float %11 to i32
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !329
  %14 = fmul float %13, 5.010000e+02
  %15 = fptosi float %14 to i16
  %16 = fmul float %13, 2.820000e+02
  %17 = fptosi float %16 to i16
  %18 = tail call ptr @uiDefBut(ptr noundef %8, i32 noundef 24064, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %12, i16 noundef signext %15, i16 noundef signext %17, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #20
  tail call void @uiButSetFunc(ptr noundef %18, ptr noundef nonnull @wm_block_splash_close, ptr noundef %8, ptr noundef null) #20
  tail call void @uiBlockSetFunc(ptr noundef %8, ptr noundef nonnull @wm_block_splash_refreshmenu, ptr noundef %8, ptr noundef null) #20
  %19 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !329
  %20 = fmul float %19, 4.800000e+02
  %21 = fptosi float %20 to i32
  %22 = fmul float %19, 1.100000e+02
  %23 = fptosi float %22 to i32
  %24 = tail call ptr @uiBlockLayout(ptr noundef %8, i32 noundef 1, i32 noundef 0, i32 noundef 10, i32 noundef 2, i32 noundef %21, i32 noundef %23, i32 noundef 0, ptr noundef %6) #20
  tail call void @uiBlockSetEmboss(ptr noundef %8, i8 noundef zeroext 0) #20
  %25 = icmp eq ptr %7, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %27 = getelementptr inbounds %struct.Menu, ptr %5, i64 0, i32 1
  store ptr %24, ptr %27, align 8, !tbaa !330
  store ptr %7, ptr %5, align 8, !tbaa !332
  %28 = getelementptr inbounds %struct.MenuType, ptr %7, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !333
  call void %29(ptr noundef %0, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %30

30:                                               ; preds = %26, %3
  call void @uiBlockSetEmboss(ptr noundef %8, i8 noundef zeroext 2) #20
  call void @uiLayoutSetOperatorContext(ptr noundef %24, i32 noundef 7) #20
  %31 = call ptr @uiLayoutSplit(ptr noundef %24, float noundef 0.000000e+00, i32 noundef 0) #20
  %32 = call ptr @uiLayoutColumn(ptr noundef %31, i32 noundef 0) #20
  call void @uiItemL(ptr noundef %32, ptr noundef nonnull @.str.315, i32 noundef 0) #20
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.316, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319) #20
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.320, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.321) #20
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.322, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.323) #20
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 96, ptr noundef nonnull @.str.324, i32 noundef 2, i32 noundef 72) #20
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.325, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull %4) #20
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.326, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.327) #20
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.328, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.329) #20
  %34 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 96, ptr noundef nonnull @.str.330, i32 noundef 2, i32 noundef 72, i32 noundef 1) #20
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.331, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull %4) #20
  call void @uiItemL(ptr noundef %32, ptr noundef nonnull @.str.2, i32 noundef 0) #20
  %35 = call ptr @uiLayoutColumn(ptr noundef %31, i32 noundef 0) #20
  %36 = call fastcc i32 @wm_resource_check_prev() #19, !range !183
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  call void @uiItemO(ptr noundef %35, ptr noundef null, i32 noundef 69, ptr noundef nonnull @.str.332) #20
  call void @uiItemS(ptr noundef %35) #20
  br label %39

39:                                               ; preds = %38, %30
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.333, i32 noundef 0) #20
  %40 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8, !tbaa !37
  %41 = icmp eq ptr %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %39, %42
  %43 = phi ptr [ %53, %42 ], [ %40, %39 ]
  %44 = phi i32 [ %52, %42 ], [ 0, %39 ]
  %45 = getelementptr inbounds %struct.RecentFile, ptr %43, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !275
  %47 = call ptr @BLI_path_basename(ptr noundef %46) #20
  %48 = call zeroext i8 @BLO_has_bfile_extension(ptr noundef %47) #20
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 726, i32 695
  %51 = load ptr, ptr %45, align 8, !tbaa !275
  call void @uiItemStringO(ptr noundef %35, ptr noundef %47, i32 noundef %50, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.20, ptr noundef %51) #20
  %52 = add nuw nsw i32 %44, 1
  %53 = load ptr, ptr %43, align 8, !tbaa !37
  %54 = icmp ult i32 %44, 4
  %55 = icmp ne ptr %53, null
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %42, label %57, !llvm.loop !335

57:                                               ; preds = %42, %39
  call void @uiItemS(ptr noundef %35) #20
  call void @uiItemO(ptr noundef %35, ptr noundef null, i32 noundef 73, ptr noundef nonnull @.str.247) #20
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.2, i32 noundef 0) #20
  call void @uiCenteredBoundsBlock(ptr noundef %8, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #18
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @WM_menutype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @wm_block_splash_close(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !336 {
  tail call void @uiPupBlockClose(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @wm_block_splash_refreshmenu(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #11 !PGOFuncName !337 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemStringO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_resource_check_prev() unnamed_addr #0 !PGOFuncName !338 {
  %1 = tail call ptr @BLI_get_folder_version(i32 noundef 0, i32 noundef 272, i8 noundef zeroext 1) #20
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call ptr @BLI_get_folder_version(i32 noundef 0, i32 noundef 271, i8 noundef zeroext 1) #20
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %0, %3
  %8 = phi i32 [ %6, %3 ], [ 0, %0 ]
  ret i32 %8
}

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiCenteredBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_get_folder_version(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_search_menu_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !339 {
  tail call void @uiPupBlock(ptr noundef %0, ptr noundef nonnull @wm_block_search_menu, ptr noundef %1) #20
  ret i32 32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @wm_search_menu_exec(ptr nocapture readnone %0, ptr nocapture readnone %1) #11 !PGOFuncName !340 {
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @wm_search_menu_poll(ptr noundef %0) #0 !PGOFuncName !341 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !342
  %13 = icmp eq i16 %12, 4
  br i1 %13, label %22, label %21

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %16 = load i8, ptr %15, align 8, !tbaa !343
  %17 = icmp ne i8 %16, 18
  %18 = icmp ne i8 %16, 9
  %19 = and i1 %17, %18
  %20 = freeze i1 %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %7, %10, %14
  br label %22

22:                                               ; preds = %10, %21, %14, %1
  %23 = phi i32 [ 0, %1 ], [ 1, %21 ], [ 0, %14 ], [ 0, %10 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @wm_block_search_menu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !345 {
  %4 = alloca %struct.wmEvent, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #18
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.174, i16 noundef signext 0) #20
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 133) #20
  %7 = tail call i32 @uiSearchBoxWidth() #20
  %8 = trunc i32 %7 to i16
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %10 = tail call ptr @uiDefSearchBut(ptr noundef %6, ptr noundef nonnull @wm_block_search_menu.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 10, i32 noundef 10, i16 noundef signext %8, i16 noundef signext %9, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #20
  tail call void @uiOperatorSearch_But(ptr noundef %10) #20
  %11 = tail call i32 @uiSearchBoxHeight() #20
  %12 = sub nsw i32 10, %11
  %13 = tail call i32 @uiSearchBoxWidth() #20
  %14 = trunc i32 %13 to i16
  %15 = tail call i32 @uiSearchBoxHeight() #20
  %16 = trunc i32 %15 to i16
  %17 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 10, i32 noundef %12, i16 noundef signext %14, i16 noundef signext %16, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #20
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %19 = sext i16 %18 to i32
  %20 = sub nsw i32 0, %19
  tail call void @uiPopupBoundsBlock(ptr noundef %6, i32 noundef 6, i32 noundef 0, i32 noundef %20) #20
  call void @wm_event_init_from_window(ptr noundef %5, ptr noundef nonnull %4) #20
  %21 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  store i16 20513, ptr %21, align 8, !tbaa !135
  %22 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  store i16 1, ptr %22, align 2, !tbaa !138
  %23 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  store ptr %10, ptr %23, align 8, !tbaa !139
  %24 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 26
  store i16 0, ptr %24, align 2, !tbaa !140
  call void @wm_event_add(ptr noundef %5, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #18
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @uiDefSearchBut(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiOperatorSearch_But(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_call_menu_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !346 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.233, ptr noundef nonnull %3) #20
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !159
  %8 = call i32 @uiPupMenuInvoke(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %7) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  ret i32 %8
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uiPupMenuInvoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_call_pie_menu_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !347 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.233, ptr noundef nonnull %4) #20
  %7 = call i32 @uiPieMenuInvoke(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @wm_call_pie_menu_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !348 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.233, ptr noundef nonnull %3) #20
  %6 = call ptr @CTX_wm_window(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !349
  %9 = call i32 @uiPieMenuInvoke(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %8) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @uiPieMenuInvoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @radial_control_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !350 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %10 = tail call ptr %9(i64 noundef 288, ptr noundef nonnull @.str.375) #20
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !57
  %12 = icmp eq ptr %10, null
  br i1 %12, label %69, label %13

13:                                               ; preds = %3
  %14 = tail call fastcc i32 @radial_control_get_properties(ptr noundef %0, ptr noundef nonnull %1) #19, !range !183
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %17(ptr noundef nonnull %10) #20
  br label %69

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !351
  %21 = tail call i32 @RNA_property_type(ptr noundef %20) #20
  store i32 %21, ptr %10, align 8, !tbaa !353
  switch i32 %21, label %43 [
    i32 1, label %22
    i32 2, label %35
  ]

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 2
  %24 = load ptr, ptr %19, align 8, !tbaa !351
  %25 = tail call i32 @RNA_property_int_get(ptr noundef nonnull %23, ptr noundef %24) #20
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 14
  store float %26, ptr %27, align 8, !tbaa !354
  %28 = load ptr, ptr %19, align 8, !tbaa !351
  call void @RNA_property_int_ui_range(ptr noundef nonnull %23, ptr noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %29 = load i32, ptr %4, align 4, !tbaa !75
  %30 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 16
  %31 = load i32, ptr %5, align 4, !tbaa !75
  %32 = insertelement <2 x i32> poison, i32 %29, i64 0
  %33 = insertelement <2 x i32> %32, i32 %31, i64 1
  %34 = sitofp <2 x i32> %33 to <2 x float>
  store <2 x float> %34, ptr %30, align 8, !tbaa !196
  br label %47

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 2
  %37 = load ptr, ptr %19, align 8, !tbaa !351
  %38 = tail call float @RNA_property_float_get(ptr noundef nonnull %36, ptr noundef %37) #20
  %39 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 14
  store float %38, ptr %39, align 8, !tbaa !354
  %40 = load ptr, ptr %19, align 8, !tbaa !351
  %41 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 16
  %42 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 17
  call void @RNA_property_float_ui_range(ptr noundef nonnull %36, ptr noundef %40, ptr noundef nonnull %41, ptr noundef nonnull %42, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  br label %47

43:                                               ; preds = %18
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !159
  tail call void @BKE_report(ptr noundef %45, i32 noundef 32, ptr noundef nonnull @.str.376) #20
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %46(ptr noundef nonnull %10) #20
  br label %69

47:                                               ; preds = %35, %22
  %48 = load ptr, ptr %19, align 8, !tbaa !351
  %49 = call i32 @RNA_property_subtype(ptr noundef %48) #20
  %50 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 1
  store i32 %49, ptr %50, align 4, !tbaa !355
  switch i32 %49, label %51 [
    i32 0, label %55
    i32 65554, label %55
    i32 15, label %55
    i32 327696, label %55
    i32 12, label %55
  ]

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %53, i32 noundef 32, ptr noundef nonnull @.str.377) #20
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %54(ptr noundef nonnull %10) #20
  br label %69

55:                                               ; preds = %47, %47, %47, %47, %47
  %56 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 14
  %57 = load float, ptr %56, align 8, !tbaa !354
  %58 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 15
  store float %57, ptr %58, align 4, !tbaa !356
  call fastcc void @radial_control_set_initial_mouse(ptr noundef nonnull %10, ptr noundef %2) #19
  call fastcc void @radial_control_set_tex(ptr noundef nonnull %10) #19
  %59 = call ptr @CTX_wm_manager(ptr noundef %0) #20
  %60 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 23
  %61 = getelementptr inbounds %struct.wmWindowManager, ptr %59, i64 0, i32 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %61, i64 16, i1 false), !tbaa.struct !357
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %61) #19
  %62 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !55
  %64 = getelementptr inbounds %struct.wmOperatorType, ptr %63, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !52
  %66 = call ptr @WM_paint_cursor_activate(ptr noundef %59, ptr noundef %65, ptr noundef nonnull @radial_control_paint_cursor, ptr noundef nonnull %10) #19
  %67 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 25
  store ptr %66, ptr %67, align 8, !tbaa !358
  %68 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %69

69:                                               ; preds = %3, %55, %51, %43, %16
  %70 = phi i32 [ 2, %43 ], [ 1, %55 ], [ 2, %51 ], [ 2, %16 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i32 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @radial_control_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !359 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 8
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %12 = load i16, ptr %11, align 2, !tbaa !360
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !135
  switch i16 %15, label %193 [
    i16 4, label %16
    i16 218, label %150
    i16 3, label %150
    i16 1, label %153
    i16 163, label %153
    i16 217, label %157
    i16 216, label %157
  ]

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 20
  %18 = load i8, ptr %17, align 8, !tbaa !361
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %73, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !355
  %23 = icmp eq i32 %22, 327696
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %26 = load <2 x i32>, ptr %25, align 4, !tbaa !75
  %27 = sitofp <2 x i32> %26 to <2 x float>
  store <2 x float> %27, ptr %6, align 8, !tbaa !196
  %28 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 18
  %29 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 19
  %30 = load <2 x i32>, ptr %28, align 8, !tbaa !75
  %31 = load <2 x i32>, ptr %29, align 8, !tbaa !75
  %32 = sub nsw <2 x i32> %30, %31
  %33 = sitofp <2 x i32> %32 to <2 x float>
  %34 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 21
  %35 = load ptr, ptr %34, align 8, !tbaa !362
  %36 = call float @BLI_dial_angle(ptr noundef %35, ptr noundef nonnull %6) #20
  %37 = fmul float %36, 0xBFB99999A0000000
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %38 = fpext float %37 to double
  br label %90

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 18
  %41 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 19
  %42 = load <2 x i32>, ptr %41, align 8, !tbaa !75
  %43 = load <2 x i32>, ptr %40, align 8, !tbaa !75
  %44 = sub nsw <2 x i32> %43, %42
  %45 = sitofp <2 x i32> %44 to <2 x float>
  store <2 x float> %45, ptr %5, align 8, !tbaa !196
  %46 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !363
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 6
  call void @RNA_property_float_get_array(ptr noundef nonnull %50, ptr noundef nonnull %47, ptr noundef nonnull %4) #20
  %51 = load <2 x float>, ptr %4, align 8, !tbaa !196
  %52 = fdiv <2 x float> %45, %51
  store <2 x float> %52, ptr %5, align 8, !tbaa !196
  %53 = load <2 x i32>, ptr %41, align 8, !tbaa !75
  %54 = load ptr, ptr %46, align 8, !tbaa !363
  %55 = icmp eq ptr %54, null
  br label %56

56:                                               ; preds = %49, %39
  %57 = phi i1 [ %55, %49 ], [ true, %39 ]
  %58 = phi <2 x i32> [ %53, %49 ], [ %42, %39 ]
  %59 = phi <2 x float> [ %51, %49 ], [ undef, %39 ]
  %60 = call fastcc float @len_v2(ptr noundef nonnull %5) #19
  %61 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %62 = insertelement <2 x i1> poison, i1 %57, i64 0
  %63 = shufflevector <2 x i1> %62, <2 x i1> poison, <2 x i32> zeroinitializer
  %64 = select <2 x i1> %63, <2 x float> <float 1.000000e+00, float 1.000000e+00>, <2 x float> %59
  %65 = load <2 x i32>, ptr %61, align 4, !tbaa !75
  %66 = sub nsw <2 x i32> %65, %58
  %67 = sitofp <2 x i32> %66 to <2 x float>
  %68 = fdiv <2 x float> %67, %64
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %70 = fadd <2 x float> %68, %69
  %71 = extractelement <2 x float> %70, i64 0
  %72 = call float @llvm.fmuladd.f32(float %71, float 0x3FB99999A0000000, float %60)
  br label %90

73:                                               ; preds = %16
  %74 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 18
  %75 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %76 = load <2 x i32>, ptr %74, align 8, !tbaa !75
  %77 = load <2 x i32>, ptr %75, align 4, !tbaa !75
  %78 = sub nsw <2 x i32> %76, %77
  %79 = sitofp <2 x i32> %78 to <2 x float>
  store <2 x float> %79, ptr %5, align 8, !tbaa !196
  %80 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 12
  %81 = load ptr, ptr %80, align 8, !tbaa !363
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 6
  call void @RNA_property_float_get_array(ptr noundef nonnull %84, ptr noundef nonnull %81, ptr noundef nonnull %4) #20
  %85 = load <2 x float>, ptr %4, align 8, !tbaa !196
  %86 = fdiv <2 x float> %79, %85
  store <2 x float> %86, ptr %5, align 8, !tbaa !196
  br label %87

87:                                               ; preds = %83, %73
  %88 = phi <2 x float> [ %86, %83 ], [ %79, %73 ]
  %89 = call fastcc float @len_v2(ptr noundef nonnull %5) #19
  br label %90

90:                                               ; preds = %24, %56, %87
  %91 = phi float [ undef, %24 ], [ %72, %56 ], [ %89, %87 ]
  %92 = phi double [ %38, %24 ], [ 0.000000e+00, %56 ], [ 0.000000e+00, %87 ]
  %93 = phi <2 x float> [ %33, %24 ], [ %68, %56 ], [ %88, %87 ]
  %94 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !355
  switch i32 %95, label %137 [
    i32 0, label %96
    i32 65554, label %96
    i32 12, label %96
    i32 15, label %104
    i32 327696, label %114
  ]

96:                                               ; preds = %90, %90, %90
  br i1 %13, label %137, label %97

97:                                               ; preds = %96
  %98 = fptosi float %91 to i32
  %99 = freeze i32 %98
  %100 = add i32 %99, 5
  %101 = srem i32 %100, 10
  %102 = sub nsw i32 %100, %101
  %103 = sitofp i32 %102 to float
  br label %137

104:                                              ; preds = %90
  %105 = fsub float 2.000000e+02, %91
  %106 = fdiv float %105, 1.650000e+02
  br i1 %13, label %137, label %107

107:                                              ; preds = %104
  %108 = fmul float %106, 1.000000e+01
  %109 = call float @llvm.ceil.f32(float %108)
  %110 = fptosi float %109 to i32
  %111 = sitofp i32 %110 to float
  %112 = fmul float %111, 1.000000e+01
  %113 = fdiv float %112, 1.000000e+02
  br label %137

114:                                              ; preds = %90
  %115 = extractelement <2 x float> %93, i64 0
  %116 = extractelement <2 x float> %93, i64 1
  %117 = call float @atan2f(float noundef %116, float noundef %115) #20
  %118 = fpext float %117 to double
  %119 = fadd double %118, 0x400921FB54442D18
  %120 = fadd double %92, %119
  %121 = fptrunc double %120 to float
  %122 = fpext float %121 to double
  %123 = call double @fmod(double noundef %122, double noundef 0x401921FB60000000) #20
  %124 = fptrunc double %123 to float
  %125 = fcmp olt float %124, 0.000000e+00
  %126 = fadd float %124, 0x401921FB60000000
  %127 = select i1 %125, float %126, float %124
  br i1 %13, label %137, label %128

128:                                              ; preds = %114
  %129 = fmul float %127, 0x404CA5DC20000000
  %130 = fptosi float %129 to i32
  %131 = freeze i32 %130
  %132 = add i32 %131, 5
  %133 = srem i32 %132, 10
  %134 = sub nsw i32 %132, %133
  %135 = sitofp i32 %134 to float
  %136 = fmul float %135, 0x3F91DF46A0000000
  br label %137

137:                                              ; preds = %90, %114, %128, %104, %107, %96, %97
  %138 = phi float [ %136, %128 ], [ %127, %114 ], [ %113, %107 ], [ %106, %104 ], [ %103, %97 ], [ %91, %96 ], [ %91, %90 ]
  %139 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 16
  %140 = load float, ptr %139, align 8, !tbaa !364
  %141 = fcmp olt float %138, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 17
  %144 = load float, ptr %143, align 4, !tbaa !365
  %145 = fcmp ogt float %138, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %137, %142, %146
  %148 = phi float [ %144, %146 ], [ %138, %142 ], [ %140, %137 ]
  call fastcc void @radial_control_set_value(ptr noundef nonnull %10, float noundef %148) #19
  %149 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 15
  store float %148, ptr %149, align 4, !tbaa !356
  br label %193

150:                                              ; preds = %3, %3
  %151 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 14
  %152 = load float, ptr %151, align 8, !tbaa !354
  tail call fastcc void @radial_control_set_value(ptr noundef %10, float noundef %152) #19
  br label %193

153:                                              ; preds = %3, %3
  %154 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 2
  %155 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 8
  %156 = load ptr, ptr %155, align 8, !tbaa !351
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %154, ptr noundef %156) #20
  br label %193

157:                                              ; preds = %3, %3
  %158 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %159 = load i16, ptr %158, align 2, !tbaa !138
  %160 = icmp eq i16 %159, 1
  br i1 %160, label %161, label %183

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %163 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 19
  %164 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %165 = load i32, ptr %162, align 4, !tbaa !181
  store i32 %165, ptr %163, align 8, !tbaa !75
  %166 = load i32, ptr %164, align 8, !tbaa !182
  %167 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 19, i64 1
  store i32 %166, ptr %167, align 4, !tbaa !75
  %168 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 20
  store i8 1, ptr %168, align 8, !tbaa !361
  %169 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !355
  %171 = icmp eq i32 %170, 327696
  br i1 %171, label %172, label %193

172:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %173 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 18
  %174 = load <2 x i32>, ptr %173, align 8, !tbaa !75
  %175 = sitofp <2 x i32> %174 to <2 x float>
  store <2 x float> %175, ptr %7, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %176 = insertelement <2 x i32> poison, i32 %165, i64 0
  %177 = insertelement <2 x i32> %176, i32 %166, i64 1
  %178 = sitofp <2 x i32> %177 to <2 x float>
  store <2 x float> %178, ptr %8, align 8, !tbaa !196
  %179 = call ptr @BLI_dial_initialize(ptr noundef nonnull %7, float noundef 0.000000e+00) #20
  %180 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 21
  store ptr %179, ptr %180, align 8, !tbaa !362
  %181 = call float @BLI_dial_angle(ptr noundef %179, ptr noundef nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  %182 = load i16, ptr %158, align 2, !tbaa !138
  br label %183

183:                                              ; preds = %172, %157
  %184 = phi i16 [ %159, %157 ], [ %182, %172 ]
  %185 = icmp eq i16 %184, 2
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 20
  store i8 0, ptr %187, align 8, !tbaa !361
  %188 = getelementptr inbounds %struct.RadialControl, ptr %10, i64 0, i32 21
  %189 = load ptr, ptr %188, align 8, !tbaa !362
  %190 = icmp eq ptr %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %186
  %192 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %192(ptr noundef nonnull %189) #20
  store ptr null, ptr %188, align 8, !tbaa !362
  br label %193

193:                                              ; preds = %161, %183, %191, %186, %3, %153, %150, %147
  %194 = phi float [ 1.000000e+00, %3 ], [ 1.000000e+00, %191 ], [ 1.000000e+00, %186 ], [ 1.000000e+00, %183 ], [ 4.000000e+00, %153 ], [ 2.000000e+00, %150 ], [ 1.000000e+00, %147 ], [ 1.000000e+00, %161 ]
  %195 = call ptr @CTX_wm_region(ptr noundef %0) #20
  call void @ED_region_tag_redraw(ptr noundef %195) #20
  %196 = fcmp une float %194, 1.000000e+00
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  call void @radial_control_cancel(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %198

198:                                              ; preds = %197, %193
  %199 = fptosi float %194 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i32 %199
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @radial_control_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !366 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.RadialControl, ptr %4, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !362
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %10(ptr noundef nonnull %7) #20
  store ptr null, ptr %6, align 8, !tbaa !362
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.RadialControl, ptr %4, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !358
  tail call void @WM_paint_cursor_end(ptr noundef %5, ptr noundef %13) #19
  %14 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 11
  %15 = getelementptr inbounds %struct.RadialControl, ptr %4, i64 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !357
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #20
  %16 = getelementptr inbounds %struct.RadialControl, ptr %4, i64 0, i32 22
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull %16) #20
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %17(ptr noundef nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @radial_control_get_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !367 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !37
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_Context, ptr noundef %0, ptr noundef nonnull %3) #20
  %8 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.354, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 5) #19, !range !183
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %68, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !tbaa !37
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call i32 @RNA_property_boolean_get(ptr noundef nonnull %4, ptr noundef nonnull %11) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %13, %16
  %18 = phi ptr [ @.str.348, %16 ], [ @.str.351, %13 ]
  %19 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 2
  %20 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 8
  %21 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, i32 noundef 0, i32 noundef 0) #19, !range !183
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %68, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %20, align 8, !tbaa !351
  %25 = icmp eq ptr %24, null
  br i1 %25, label %68, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 5
  %28 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 11
  %29 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull @.str.357, ptr noundef nonnull %27, ptr noundef nonnull %28, i32 noundef 0, i32 noundef 2) #19, !range !183
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %68, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 3
  %33 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 9
  %34 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull @.str.360, ptr noundef nonnull %32, ptr noundef nonnull %33, i32 noundef 3, i32 noundef 2) #19, !range !183
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 4
  %38 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 10
  %39 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull @.str.363, ptr noundef nonnull %37, ptr noundef nonnull %38, i32 noundef 3, i32 noundef 2) #19, !range !183
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %68, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 6
  %43 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 12
  %44 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull @.str.366, ptr noundef nonnull %42, ptr noundef nonnull %43, i32 noundef 2, i32 noundef 3) #19, !range !183
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 7
  %48 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull @.str.369, ptr noundef nonnull %47, ptr noundef null, i32 noundef 0, i32 noundef 0) #19, !range !183
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 7, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !368
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 7, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !369
  %57 = call zeroext i8 @RNA_struct_is_ID(ptr noundef %56) #20
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %61, i32 noundef 32, ptr noundef nonnull @.str.378) #20
  br label %68

62:                                               ; preds = %50, %54
  %63 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !67
  %65 = call i32 @RNA_boolean_get(ptr noundef %64, ptr noundef nonnull @.str.372) #20
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds %struct.RadialControl, ptr %7, i64 0, i32 24
  store i8 %66, ptr %67, align 8, !tbaa !370
  br label %68

68:                                               ; preds = %46, %41, %36, %31, %26, %23, %17, %2, %62, %59
  %69 = phi i32 [ 1, %62 ], [ 0, %59 ], [ 0, %2 ], [ 0, %17 ], [ 0, %23 ], [ 0, %26 ], [ 0, %31 ], [ 0, %36 ], [ 0, %41 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i32 %69
}

; Function Attrs: optsize
declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_int_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @radial_control_set_initial_mouse(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !371 {
  %3 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store i64 4575657222473777152, ptr %3, align 8
  %4 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !181
  %6 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 18
  store i32 %5, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 18, i64 1
  store i32 %8, ptr %9, align 4, !tbaa !75
  %10 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !355
  switch i32 %11, label %46 [
    i32 0, label %12
    i32 65554, label %12
    i32 12, label %12
    i32 15, label %16
    i32 327696, label %22
  ]

12:                                               ; preds = %2, %2, %2
  %13 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 14
  %14 = load float, ptr %13, align 8, !tbaa !354
  %15 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %14, i64 0
  br label %31

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 14
  %18 = load float, ptr %17, align 8, !tbaa !354
  %19 = fsub float 1.000000e+00, %18
  %20 = tail call float @llvm.fmuladd.f32(float %19, float 1.650000e+02, float 3.500000e+01)
  %21 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %20, i64 0
  br label %31

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 14
  %24 = load float, ptr %23, align 8, !tbaa !354
  %25 = tail call float @cosf(float noundef %24) #20
  %26 = load float, ptr %23, align 8, !tbaa !354
  %27 = tail call float @sinf(float noundef %26) #20
  %28 = insertelement <2 x float> poison, float %25, i64 0
  %29 = insertelement <2 x float> %28, float %27, i64 1
  %30 = fmul <2 x float> %29, <float 2.000000e+02, float 2.000000e+02>
  br label %31

31:                                               ; preds = %22, %16, %12
  %32 = phi <2 x float> [ %30, %22 ], [ %21, %16 ], [ %15, %12 ]
  %33 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !363
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 6
  call void @RNA_property_float_get_array(ptr noundef nonnull %37, ptr noundef nonnull %34, ptr noundef nonnull %3) #20
  %38 = load <2 x float>, ptr %3, align 8, !tbaa !196
  %39 = fmul <2 x float> %32, %38
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi <2 x float> [ %39, %36 ], [ %32, %31 ]
  %42 = load <2 x i32>, ptr %6, align 8, !tbaa !75
  %43 = sitofp <2 x i32> %42 to <2 x float>
  %44 = fsub <2 x float> %43, %41
  %45 = fptosi <2 x float> %44 to <2 x i32>
  store <2 x i32> %45, ptr %6, align 8, !tbaa !75
  br label %46

46:                                               ; preds = %2, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @radial_control_set_tex(ptr noundef %0) unnamed_addr #0 !PGOFuncName !372 {
  %2 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !369
  %4 = tail call signext i16 @RNA_type_to_ID_code(ptr noundef %3) #20
  %5 = icmp eq i16 %4, 21058
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 7, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !368
  %9 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 24
  %10 = load i8, ptr %9, align 8, !tbaa !370
  %11 = tail call ptr @BKE_brush_gen_radial_control_imbuf(ptr noundef %8, i8 noundef zeroext %10) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 22
  tail call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %14) #20
  %15 = load i32, ptr %14, align 8, !tbaa !373
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %15) #20
  %16 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !374
  %18 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !377
  %20 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !378
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6406, i32 noundef %17, i32 noundef %19, i32 noundef 0, i32 noundef 6406, i32 noundef 5126, ptr noundef %21) #20
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %23 = load ptr, ptr %20, align 8, !tbaa !378
  tail call void %22(ptr noundef %23) #20
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %24(ptr noundef nonnull %11) #20
  br label %25

25:                                               ; preds = %1, %6, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !379 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @radial_control_paint_cursor(ptr noundef %0, i32 %1, i32 %2, ptr noundef %3) #0 !PGOFuncName !380 {
  %5 = alloca [6 x i8], align 1
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  %11 = tail call ptr @UI_GetStyle() #20
  %12 = getelementptr inbounds %struct.uiStyle, ptr %11, i64 0, i32 6
  %13 = load i16, ptr %12, align 4, !tbaa !381
  %14 = getelementptr inbounds %struct.uiStyle, ptr %11, i64 0, i32 6, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !383
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) @__const.radial_control_paint_cursor.col, i64 12, i1 false)
  %16 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !355
  switch i32 %17, label %40 [
    i32 0, label %18
    i32 65554, label %18
    i32 12, label %18
    i32 15, label %23
    i32 327696, label %33
  ]

18:                                               ; preds = %4, %4, %4
  %19 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 15
  %20 = load float, ptr %19, align 4, !tbaa !356
  %21 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 14
  %22 = load float, ptr %21, align 8, !tbaa !354
  br label %40

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 15
  %25 = load float, ptr %24, align 4, !tbaa !356
  %26 = fsub float 1.000000e+00, %25
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 1.650000e+02, float 3.500000e+01)
  %28 = fmul float %25, 5.000000e-01
  %29 = fadd float %28, 5.000000e-01
  %30 = fpext float %25 to double
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 6, ptr noundef nonnull @.str.383, double noundef %30) #20
  %32 = call i64 @BLI_strlen_utf8(ptr noundef nonnull %5) #20
  br label %40

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 15
  %35 = load float, ptr %34, align 4, !tbaa !356
  %36 = fmul float %35, 0x404CA5DC20000000
  %37 = fpext float %36 to double
  %38 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 6, ptr noundef nonnull @.str.384, double noundef %37) #20
  %39 = call i64 @BLI_strlen_utf8(ptr noundef nonnull %5) #20
  br label %40

40:                                               ; preds = %4, %33, %23, %18
  %41 = phi i64 [ %39, %33 ], [ %32, %23 ], [ 0, %18 ], [ 0, %4 ]
  %42 = phi float [ 2.000000e+02, %33 ], [ %27, %23 ], [ %20, %18 ], [ 0.000000e+00, %4 ]
  %43 = phi float [ 2.000000e+02, %33 ], [ 2.000000e+02, %23 ], [ %22, %18 ], [ 0.000000e+00, %4 ]
  %44 = phi float [ 3.500000e+01, %33 ], [ 3.500000e+01, %23 ], [ 0.000000e+00, %18 ], [ 0.000000e+00, %4 ]
  %45 = phi float [ 2.000000e+02, %33 ], [ 2.000000e+02, %23 ], [ %20, %18 ], [ 2.000000e+02, %4 ]
  %46 = phi float [ 7.500000e-01, %33 ], [ %29, %23 ], [ 7.500000e-01, %18 ], [ 7.500000e-01, %4 ]
  %47 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !329
  %48 = fmul float %42, %47
  %49 = fmul float %43, %47
  %50 = fmul float %45, %47
  %51 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 18
  %52 = load i32, ptr %51, align 8, !tbaa !75
  %53 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !384
  %55 = sub nsw i32 %52, %54
  %56 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 18, i64 1
  %57 = load i32, ptr %56, align 4, !tbaa !75
  %58 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 3, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !385
  %60 = sub nsw i32 %57, %59
  %61 = sitofp i32 %55 to float
  %62 = sitofp i32 %60 to float
  call void @glTranslatef(float noundef %61, float noundef %62, float noundef 0.000000e+00) #20
  call void @glEnable(i32 noundef 3042) #20
  call void @glEnable(i32 noundef 2848) #20
  %63 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !363
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %40
  %67 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 6
  call void @RNA_property_float_get_array(ptr noundef nonnull %67, ptr noundef nonnull %64, ptr noundef nonnull %8) #20
  %68 = load float, ptr %8, align 4, !tbaa !196
  %69 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !196
  call void @glScalef(float noundef %68, float noundef %70, float noundef 1.000000e+00) #20
  br label %71

71:                                               ; preds = %66, %40
  call fastcc void @radial_control_paint_tex(ptr noundef nonnull %3, float noundef %50, float noundef %46) #19
  %72 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !386
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 3
  call void @RNA_property_float_get_array(ptr noundef nonnull %76, ptr noundef nonnull %73, ptr noundef nonnull %9) #20
  %77 = load float, ptr %9, align 4, !tbaa !196
  %78 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !196
  %80 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !196
  br label %82

82:                                               ; preds = %75, %71
  %83 = phi float [ %81, %75 ], [ 1.000000e+00, %71 ]
  %84 = phi float [ %79, %75 ], [ 1.000000e+00, %71 ]
  %85 = phi float [ %77, %75 ], [ 1.000000e+00, %71 ]
  call void @glColor4f(float noundef %85, float noundef %84, float noundef %83, float noundef 5.000000e-01) #20
  %86 = load i32, ptr %16, align 4, !tbaa !355
  %87 = icmp eq i32 %86, 327696
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  call void @glPushMatrix() #20
  %89 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 14
  %90 = load float, ptr %89, align 8, !tbaa !354
  %91 = fmul float %90, 0x404CA5DC20000000
  call void @glRotatef(float noundef %91, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  call void @fdrawline(float noundef 3.500000e+01, float noundef 0.000000e+00, float noundef 2.000000e+02, float noundef 0.000000e+00) #20
  %92 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 15
  %93 = load float, ptr %92, align 4, !tbaa !356
  %94 = load float, ptr %89, align 8, !tbaa !354
  %95 = fsub float %93, %94
  %96 = fmul float %95, 0x404CA5DC20000000
  call void @glRotatef(float noundef %96, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  call void @fdrawline(float noundef 3.500000e+01, float noundef 0.000000e+00, float noundef 2.000000e+02, float noundef 0.000000e+00) #20
  call void @glPopMatrix() #20
  br label %97

97:                                               ; preds = %88, %82
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %48, i32 noundef 40) #20
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %49, i32 noundef 40) #20
  %98 = fcmp ogt float %44, 0.000000e+00
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %44, i32 noundef 40) #20
  br label %100

100:                                              ; preds = %99, %97
  %101 = sext i16 %13 to i32
  %102 = sitofp i16 %15 to double
  %103 = fmul double %102, 1.500000e+00
  %104 = fptosi double %103 to i32
  %105 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !387
  %106 = sitofp i32 %105 to float
  %107 = fdiv float 1.000000e+00, %106
  %108 = fptosi float %107 to i32
  call void @BLF_size(i32 noundef %101, i32 noundef %104, i32 noundef %108) #20
  %109 = shl i64 %41, 48
  %110 = ashr exact i64 %109, 48
  call void @BLF_width_and_height(i32 noundef %101, ptr noundef nonnull %5, i64 noundef %110, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  call void @BLF_enable(i32 noundef %101, i32 noundef 4) #20
  call void @BLF_shadow(i32 noundef %101, i32 noundef 3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #20
  call void @BLF_shadow_offset(i32 noundef %101, i32 noundef 1, i32 noundef -1) #20
  %111 = load float, ptr %6, align 4, !tbaa !196
  %112 = fmul float %111, -5.000000e-01
  %113 = load float, ptr %7, align 4, !tbaa !196
  %114 = fmul float %113, -5.000000e-01
  call void @BLF_position(i32 noundef %101, float noundef %112, float noundef %114, float noundef 0.000000e+00) #20
  call void @BLF_draw(i32 noundef %101, ptr noundef nonnull %5, i64 noundef %110) #20
  call void @BLF_disable(i32 noundef %101, i32 noundef 4) #20
  call void @glDisable(i32 noundef 3042) #20
  call void @glDisable(i32 noundef 2848) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @radial_control_get_path(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !388 {
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %9 = and i32 %6, 4
  %10 = icmp ne i32 %9, 0
  %11 = and i32 %6, 2
  %12 = and i32 %6, 6
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !159
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.379) #20
  br label %68

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = tail call ptr @RNA_string_get_alloc(ptr noundef %19, ptr noundef %2, ptr noundef null, i32 noundef 0) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %68, label %22

22:                                               ; preds = %17
  %23 = load i8, ptr %20, align 1, !tbaa !34
  %24 = icmp eq i8 %23, 0
  %25 = icmp eq ptr %4, null
  br i1 %24, label %26, label %30

26:                                               ; preds = %22
  br i1 %25, label %28, label %27

27:                                               ; preds = %26
  store ptr null, ptr %4, align 8, !tbaa !37
  br label %28

28:                                               ; preds = %27, %26
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %29(ptr noundef nonnull %20) #20
  br label %68

30:                                               ; preds = %22
  %31 = select i1 %25, ptr %8, ptr %4
  %32 = call zeroext i8 @RNA_path_resolve(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %3, ptr noundef nonnull %31) #20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %35(ptr noundef nonnull %20) #20
  %36 = and i32 %6, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !159
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %40, i32 noundef 32, ptr noundef nonnull @.str.380, ptr noundef %2) #20
  br label %68

41:                                               ; preds = %30
  %42 = icmp eq i32 %12, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %31, align 8, !tbaa !37
  %45 = call i32 @RNA_property_type(ptr noundef %44) #20
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %10, i1 %46, i1 false
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = icmp ne i32 %11, 0
  %50 = icmp ne i32 %45, 2
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %43
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %53(ptr noundef nonnull %20) #20
  %54 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !159
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %55, i32 noundef 32, ptr noundef nonnull @.str.381, ptr noundef %2) #20
  br label %68

56:                                               ; preds = %48, %41
  %57 = load ptr, ptr %31, align 8, !tbaa !37
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = call i32 @RNA_property_array_length(ptr noundef %3, ptr noundef nonnull %57) #20
  %61 = icmp eq i32 %60, %5
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %63(ptr noundef nonnull %20) #20
  %64 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !159
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %65, i32 noundef 32, ptr noundef nonnull @.str.382, ptr noundef %2, i32 noundef %60, i32 noundef %5) #20
  br label %68

66:                                               ; preds = %59, %56
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %67(ptr noundef nonnull %20) #20
  br label %68

68:                                               ; preds = %52, %34, %17, %66, %62, %38, %28, %14
  %69 = phi i32 [ 0, %14 ], [ 1, %28 ], [ 0, %62 ], [ 1, %66 ], [ 0, %38 ], [ 1, %17 ], [ 1, %34 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  ret i32 %69
}

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_ID(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @RNA_type_to_ID_code(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_brush_gen_radial_control_imbuf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strlen_utf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @radial_control_paint_tex(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !389 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %5 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 4
  call void @RNA_property_float_get_array(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %4) #20
  %10 = load float, ptr %4, align 4, !tbaa !196
  %11 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !196
  %13 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !196
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi float [ %14, %8 ], [ 0.000000e+00, %3 ]
  %17 = phi float [ %12, %8 ], [ 0.000000e+00, %3 ]
  %18 = phi float [ %10, %8 ], [ 0.000000e+00, %3 ]
  call void @glColor4f(float noundef %18, float noundef %17, float noundef %16, float noundef %2) #20
  %19 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 22
  %20 = load i32, ptr %19, align 8, !tbaa !373
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %15
  call void @glBindTexture(i32 noundef 3553, i32 noundef %20) #20
  call void @glTexParameterf(i32 noundef 3553, i32 noundef 10241, float noundef 9.729000e+03) #20
  call void @glTexParameterf(i32 noundef 3553, i32 noundef 10240, float noundef 9.729000e+03) #20
  %23 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !391
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 5
  %28 = call float @RNA_property_float_get(ptr noundef nonnull %27, ptr noundef nonnull %24) #20
  call void @glPushMatrix() #20
  %29 = fmul float %28, 0x404CA5DC20000000
  call void @glRotatef(float noundef %29, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  br label %30

30:                                               ; preds = %26, %22
  call void @glEnable(i32 noundef 3553) #20
  call void @glBegin(i32 noundef 7) #20
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  %31 = fneg float %1
  call void @glVertex2f(float noundef %31, float noundef %31) #20
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #20
  call void @glVertex2f(float noundef %1, float noundef %31) #20
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #20
  call void @glVertex2f(float noundef %1, float noundef %1) #20
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  call void @glVertex2f(float noundef %31, float noundef %1) #20
  call void @glEnd() #20
  call void @glDisable(i32 noundef 3553) #20
  %32 = load ptr, ptr %23, align 8, !tbaa !391
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  call void @glPopMatrix() #20
  br label %36

35:                                               ; preds = %15
  call void @glutil_draw_filled_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %1, i32 noundef 40) #20
  br label %36

36:                                               ; preds = %30, %34, %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_width_and_height(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_shadow(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_shadow_offset(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexParameterf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glutil_draw_filled_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_dial_angle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !392 {
  %2 = load float, ptr %0, align 4, !tbaa !196
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !196
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @radial_control_set_value(ptr noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !393 {
  %3 = load i32, ptr %0, align 8, !tbaa !353
  switch i32 %3, label %13 [
    i32 1, label %4
    i32 2, label %9
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !351
  %8 = fptosi float %1 to i32
  tail call void @RNA_property_int_set(ptr noundef nonnull %5, ptr noundef %7, i32 noundef %8) #20
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.RadialControl, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !351
  tail call void @RNA_property_float_set(ptr noundef nonnull %10, ptr noundef %12, float noundef %1) #20
  br label %13

13:                                               ; preds = %2, %9, %4
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_dial_initialize(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind optsize willreturn memory(read) }
attributes #22 = { cold optsize }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !35, i64 0}
!39 = !{!40, !38, i64 88}
!40 = !{!"wmOperatorType", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !41, i64 112, !38, i64 128, !38, i64 136, !38, i64 144, !42, i64 152, !43, i64 184}
!41 = !{!"ListBase", !38, i64 0, !38, i64 8}
!42 = !{!"ExtensionRNA", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!43 = !{!"short", !35, i64 0}
!44 = !{!40, !38, i64 0}
!45 = !{!40, !38, i64 8}
!46 = !{!40, !38, i64 24}
!47 = !{!40, !43, i64 184}
!48 = !{!40, !38, i64 32}
!49 = !{!40, !38, i64 48}
!50 = !{!40, !38, i64 64}
!51 = !{!40, !38, i64 56}
!52 = !{!40, !38, i64 72}
!53 = !{!40, !38, i64 160}
!54 = !{!"wm_operators.c:wm_macro_exec"}
!55 = !{!56, !38, i64 88}
!56 = !{!"wmOperator", !38, i64 0, !38, i64 8, !35, i64 16, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !41, i64 128, !38, i64 144, !38, i64 152, !43, i64 160, !35, i64 162}
!57 = !{!56, !38, i64 96}
!58 = !{!59, !60, i64 0}
!59 = !{!"", !60, i64 0}
!60 = !{!"int", !35, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"wm_operators.c:wm_macro_invoke"}
!64 = !{!56, !38, i64 128}
!65 = !{!"wm_operators.c:wm_macro_modal"}
!66 = !{!56, !38, i64 144}
!67 = !{!56, !38, i64 112}
!68 = !{!56, !38, i64 0}
!69 = !{!70, !60, i64 8484}
!70 = !{!"UserDef", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !35, i64 20, !35, i64 788, !35, i64 1556, !35, i64 2580, !35, i64 3348, !35, i64 4116, !35, i64 4884, !35, i64 5652, !35, i64 6420, !35, i64 7444, !60, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !60, i64 8484, !60, i64 8488, !60, i64 8492, !43, i64 8496, !43, i64 8498, !60, i64 8500, !60, i64 8504, !60, i64 8508, !60, i64 8512, !60, i64 8516, !60, i64 8520, !60, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !41, i64 8536, !41, i64 8552, !41, i64 8568, !41, i64 8584, !41, i64 8600, !41, i64 8616, !41, i64 8632, !35, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !35, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !60, i64 8912, !60, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !35, i64 8940, !35, i64 8941, !35, i64 8942, !35, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !71, i64 8956, !71, i64 8960, !60, i64 8964, !43, i64 8968, !43, i64 8970, !71, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !72, i64 8984, !35, i64 9760, !35, i64 9772, !43, i64 9788, !35, i64 9790, !35, i64 9791, !35, i64 9792, !35, i64 9872, !60, i64 10896, !60, i64 10900, !71, i64 10904, !71, i64 10908, !60, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !73, i64 10928}
!71 = !{!"float", !35, i64 0}
!72 = !{!"ColorBand", !43, i64 0, !43, i64 2, !35, i64 4, !35, i64 5, !35, i64 6, !35, i64 7, !35, i64 8}
!73 = !{!"WalkNavigation", !71, i64 0, !71, i64 4, !71, i64 8, !71, i64 12, !71, i64 16, !71, i64 20, !43, i64 24, !35, i64 26}
!74 = !{!56, !43, i64 160}
!75 = !{!60, !60, i64 0}
!76 = !{!"wm_operators.c:wm_macro_cancel"}
!77 = !{!78, !38, i64 88}
!78 = !{!"wmOperatorTypeMacro", !38, i64 0, !38, i64 8, !35, i64 16, !38, i64 80, !38, i64 88}
!79 = !{!80, !38, i64 16}
!80 = !{!"PointerRNA", !81, i64 0, !38, i64 8, !38, i64 16}
!81 = !{!"", !38, i64 0}
!82 = !{!80, !38, i64 8}
!83 = !{!84, !60, i64 128}
!84 = !{!"CollectionPropertyIterator", !80, i64 0, !80, i64 24, !38, i64 48, !35, i64 56, !60, i64 96, !60, i64 100, !80, i64 104, !60, i64 128}
!85 = !{!84, !38, i64 120}
!86 = distinct !{!86, !62}
!87 = !{!40, !38, i64 96}
!88 = !{!40, !38, i64 112}
!89 = !{!"wm_operators.c:wm_operatortype_free_macro"}
!90 = distinct !{!90, !62}
!91 = !{i8 0, i8 2}
!92 = distinct !{!92, !62}
!93 = !{!"wm_operators.c:BLI_ghashIterator_done"}
!94 = !{!95, !38, i64 8}
!95 = !{!"GHashIterator", !38, i64 0, !38, i64 8, !60, i64 16}
!96 = !{!"wm_operators.c:BLI_ghashIterator_getValue"}
!97 = !{!98, !38, i64 16}
!98 = !{!"_gh_Entry", !38, i64 0, !38, i64 8, !38, i64 16}
!99 = distinct !{!99, !62}
!100 = !{!"wm_operators.c:wm_prop_pystring_from_context"}
!101 = !{!80, !38, i64 0}
!102 = !{!43, !43, i64 0}
!103 = !{!104, !38, i64 296}
!104 = !{!"Object", !105, i64 0, !38, i64 120, !38, i64 128, !43, i64 136, !43, i64 138, !60, i64 140, !60, i64 144, !60, i64 148, !35, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !106, i64 312, !38, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !60, i64 432, !60, i64 436, !38, i64 440, !38, i64 448, !60, i64 456, !60, i64 460, !35, i64 464, !35, i64 476, !35, i64 488, !35, i64 500, !35, i64 512, !35, i64 524, !35, i64 536, !35, i64 548, !35, i64 560, !35, i64 576, !35, i64 592, !35, i64 604, !71, i64 616, !71, i64 620, !35, i64 624, !35, i64 688, !35, i64 752, !35, i64 816, !35, i64 880, !60, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !35, i64 966, !35, i64 967, !60, i64 968, !60, i64 972, !60, i64 976, !60, i64 980, !60, i64 984, !71, i64 988, !71, i64 992, !71, i64 996, !71, i64 1000, !71, i64 1004, !71, i64 1008, !71, i64 1012, !71, i64 1016, !71, i64 1020, !71, i64 1024, !71, i64 1028, !71, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !35, i64 1042, !35, i64 1043, !43, i64 1044, !35, i64 1046, !35, i64 1047, !71, i64 1048, !71, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !71, i64 1120, !43, i64 1124, !43, i64 1126, !35, i64 1128, !60, i64 1144, !60, i64 1148, !38, i64 1152, !35, i64 1160, !35, i64 1161, !43, i64 1162, !35, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !35, i64 1264, !35, i64 1265, !43, i64 1266, !71, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !107, i64 1304, !107, i64 1312, !60, i64 1320, !60, i64 1324, !41, i64 1328, !41, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !35, i64 1384, !38, i64 1392, !41, i64 1400, !38, i64 1416}
!105 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !35, i64 32, !43, i64 98, !60, i64 100, !60, i64 104, !60, i64 108, !38, i64 112}
!106 = !{!"bAnimVizSettings", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44}
!107 = !{!"long", !35, i64 0}
!108 = !{!104, !60, i64 460}
!109 = !{!110, !38, i64 136}
!110 = !{!"Scene", !105, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !41, i64 152, !38, i64 168, !38, i64 176, !35, i64 184, !35, i64 196, !35, i64 208, !35, i64 220, !60, i64 232, !60, i64 236, !60, i64 240, !43, i64 244, !35, i64 246, !35, i64 247, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !111, i64 280, !120, i64 4264, !41, i64 4296, !41, i64 4312, !38, i64 4328, !38, i64 4336, !38, i64 4344, !38, i64 4352, !38, i64 4360, !38, i64 4368, !43, i64 4376, !43, i64 4378, !60, i64 4380, !41, i64 4384, !121, i64 4400, !122, i64 4416, !125, i64 4600, !38, i64 4608, !126, i64 4616, !38, i64 4640, !107, i64 4648, !107, i64 4656, !113, i64 4664, !114, i64 4824, !127, i64 4888, !38, i64 4952}
!111 = !{!"RenderData", !112, i64 0, !38, i64 248, !38, i64 256, !115, i64 264, !116, i64 328, !60, i64 400, !60, i64 404, !60, i64 408, !71, i64 412, !60, i64 416, !60, i64 420, !60, i64 424, !60, i64 428, !43, i64 432, !43, i64 434, !71, i64 436, !71, i64 440, !71, i64 444, !71, i64 448, !71, i64 452, !43, i64 456, !43, i64 458, !43, i64 460, !43, i64 462, !43, i64 464, !43, i64 466, !60, i64 468, !43, i64 472, !43, i64 474, !43, i64 476, !43, i64 478, !43, i64 480, !43, i64 482, !60, i64 484, !60, i64 488, !43, i64 492, !43, i64 494, !60, i64 496, !60, i64 500, !43, i64 504, !43, i64 506, !43, i64 508, !43, i64 510, !43, i64 512, !35, i64 514, !35, i64 515, !60, i64 516, !60, i64 520, !60, i64 524, !43, i64 528, !43, i64 530, !43, i64 532, !43, i64 534, !43, i64 536, !43, i64 538, !43, i64 540, !43, i64 542, !117, i64 544, !117, i64 560, !118, i64 576, !41, i64 592, !43, i64 608, !43, i64 610, !71, i64 612, !71, i64 616, !71, i64 620, !71, i64 624, !60, i64 628, !71, i64 632, !71, i64 636, !71, i64 640, !71, i64 644, !43, i64 648, !43, i64 650, !43, i64 652, !43, i64 654, !43, i64 656, !43, i64 658, !71, i64 660, !71, i64 664, !43, i64 668, !43, i64 670, !71, i64 672, !71, i64 676, !35, i64 680, !60, i64 1704, !43, i64 1708, !43, i64 1710, !35, i64 1712, !35, i64 2480, !35, i64 2496, !35, i64 2512, !35, i64 2513, !35, i64 2514, !35, i64 2515, !60, i64 2520, !43, i64 2524, !43, i64 2526, !71, i64 2528, !71, i64 2532, !43, i64 2536, !43, i64 2538, !71, i64 2540, !43, i64 2544, !43, i64 2546, !60, i64 2548, !43, i64 2552, !43, i64 2554, !43, i64 2556, !43, i64 2558, !71, i64 2560, !71, i64 2564, !38, i64 2568, !60, i64 2576, !71, i64 2580, !35, i64 2584, !119, i64 2616, !60, i64 3976, !60, i64 3980}
!112 = !{!"ImageFormatData", !35, i64 0, !35, i64 1, !35, i64 2, !35, i64 3, !35, i64 4, !35, i64 5, !35, i64 6, !35, i64 7, !43, i64 8, !43, i64 10, !71, i64 12, !35, i64 16, !35, i64 17, !35, i64 18, !113, i64 24, !114, i64 184}
!113 = !{!"ColorManagedViewSettings", !60, i64 0, !60, i64 4, !35, i64 8, !35, i64 72, !71, i64 136, !71, i64 140, !38, i64 144, !38, i64 152}
!114 = !{!"ColorManagedDisplaySettings", !35, i64 0}
!115 = !{!"QuicktimeCodecSettings", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !43, i64 48, !43, i64 50, !60, i64 52, !60, i64 56, !60, i64 60}
!116 = !{!"FFMpegCodecData", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !71, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !60, i64 48, !60, i64 52, !60, i64 56, !60, i64 60, !38, i64 64}
!117 = !{!"rctf", !71, i64 0, !71, i64 4, !71, i64 8, !71, i64 12}
!118 = !{!"rcti", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!119 = !{!"BakeData", !112, i64 0, !35, i64 248, !43, i64 1272, !43, i64 1274, !43, i64 1276, !43, i64 1278, !71, i64 1280, !71, i64 1284, !35, i64 1288, !35, i64 1291, !35, i64 1292, !35, i64 1293, !35, i64 1296}
!120 = !{!"AudioData", !60, i64 0, !71, i64 4, !71, i64 8, !71, i64 12, !60, i64 16, !43, i64 20, !43, i64 22, !71, i64 24, !71, i64 28}
!121 = !{!"GameFraming", !35, i64 0, !35, i64 12, !35, i64 13, !35, i64 14, !35, i64 15}
!122 = !{!"GameData", !121, i64 0, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !43, i64 32, !35, i64 34, !123, i64 40, !43, i64 64, !43, i64 66, !71, i64 68, !124, i64 72, !71, i64 128, !71, i64 132, !60, i64 136, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !43, i64 148, !43, i64 150, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158, !43, i64 160, !43, i64 162, !71, i64 164, !71, i64 168, !71, i64 172, !71, i64 176, !71, i64 180}
!123 = !{!"GameDome", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !71, i64 8, !71, i64 12, !38, i64 16}
!124 = !{!"RecastData", !71, i64 0, !71, i64 4, !71, i64 8, !71, i64 12, !71, i64 16, !71, i64 20, !71, i64 24, !71, i64 28, !71, i64 32, !71, i64 36, !60, i64 40, !71, i64 44, !71, i64 48, !43, i64 52, !43, i64 54}
!125 = !{!"UnitSettings", !71, i64 0, !35, i64 4, !35, i64 5, !43, i64 6}
!126 = !{!"PhysicsSettings", !35, i64 0, !60, i64 12, !60, i64 16, !60, i64 20}
!127 = !{!"ColorManagedColorspaceSettings", !35, i64 0}
!128 = distinct !{!128, !62}
!129 = !{i64 0, i64 8, !37}
!130 = distinct !{!130, !62}
!131 = distinct !{!131, !62}
!132 = !{!40, !38, i64 104}
!133 = !{!"wm_operators.c:wm_enum_search_menu"}
!134 = !{!70, !43, i64 8948}
!135 = !{!136, !43, i64 16}
!136 = !{!"wmEvent", !38, i64 0, !38, i64 8, !43, i64 16, !43, i64 18, !60, i64 20, !60, i64 24, !35, i64 28, !35, i64 36, !35, i64 42, !35, i64 43, !43, i64 44, !43, i64 46, !60, i64 48, !60, i64 52, !137, i64 56, !60, i64 64, !60, i64 68, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !38, i64 88, !38, i64 96, !43, i64 104, !43, i64 106, !60, i64 108, !38, i64 112}
!137 = !{!"double", !35, i64 0}
!138 = !{!136, !43, i64 18}
!139 = !{!136, !38, i64 112}
!140 = !{!136, !43, i64 106}
!141 = !{!142, !60, i64 120}
!142 = !{!"IDProperty", !38, i64 0, !38, i64 8, !35, i64 16, !35, i64 17, !43, i64 18, !35, i64 20, !60, i64 84, !143, i64 88, !60, i64 120, !60, i64 124}
!143 = !{!"IDPropertyData", !38, i64 0, !41, i64 8, !60, i64 24, !60, i64 28}
!144 = !{!"wm_operators.c:wm_operator_properties_select_action_ex"}
!145 = !{!118, !60, i64 0}
!146 = !{!118, !60, i64 8}
!147 = !{!118, !60, i64 4}
!148 = !{!118, !60, i64 12}
!149 = distinct !{!149, !62}
!150 = !{!151, !38, i64 0}
!151 = !{!"wmOpPopUp", !38, i64 0, !60, i64 8, !60, i64 12, !60, i64 16}
!152 = !{!151, !60, i64 8}
!153 = !{!151, !60, i64 12}
!154 = !{!151, !60, i64 16}
!155 = !{!"wm_operators.c:wm_operator_ui_create"}
!156 = !{!"wm_operators.c:wm_operator_ui_popup_cancel"}
!157 = !{i32 1, i32 3}
!158 = !{!"wm_operators.c:wm_operator_props_popup_ex"}
!159 = !{!56, !38, i64 120}
!160 = !{!"wm_operators.c:wm_block_dialog_create"}
!161 = !{!"wm_operators.c:wm_operator_ui_popup_ok"}
!162 = !{!"wm_operators.c:wm_block_create_redo"}
!163 = distinct !{!163, !62}
!164 = !{!165, !60, i64 2108}
!165 = !{!"Global", !38, i64 0, !35, i64 8, !35, i64 1032, !35, i64 2056, !35, i64 2057, !35, i64 2058, !41, i64 2064, !35, i64 2080, !35, i64 2081, !35, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !35, i64 2090, !43, i64 2092, !60, i64 2096, !60, i64 2100, !35, i64 2104, !60, i64 2108, !60, i64 2112, !35, i64 2116}
!166 = !{!165, !38, i64 0}
!167 = !{!165, !35, i64 2057}
!168 = !{!165, !35, i64 2056}
!169 = !{!165, !35, i64 2058}
!170 = !{!"wm_operators.c:wm_file_read_opwrap"}
!171 = !{!172, !38, i64 16}
!172 = !{!"wmPaintCursor", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32}
!173 = !{!172, !38, i64 24}
!174 = !{!172, !38, i64 32}
!175 = distinct !{!175, !62}
!176 = !{!177, !38, i64 40}
!177 = !{!"wmGesture", !38, i64 0, !38, i64 8, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !38, i64 40, !38, i64 48}
!178 = !{!177, !60, i64 28}
!179 = !{!177, !60, i64 24}
!180 = !{!177, !60, i64 20}
!181 = !{!136, !60, i64 20}
!182 = !{!136, !60, i64 24}
!183 = !{i32 0, i32 2}
!184 = !{!"wm_operators.c:border_apply_rect"}
!185 = !{!"wm_operators.c:border_apply"}
!186 = !{!"wm_operators.c:wm_gesture_end"}
!187 = !{!136, !60, i64 52}
!188 = !{!"wm_operators.c:gesture_circle_apply"}
!189 = !{!190, !38, i64 152}
!190 = !{!"wmWindow", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !35, i64 40, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !60, i64 128, !43, i64 132, !43, i64 134, !38, i64 136, !38, i64 144, !38, i64 152, !60, i64 160, !60, i64 164, !38, i64 168, !41, i64 176, !41, i64 192, !41, i64 208, !41, i64 224, !41, i64 240}
!191 = !{!"wm_operators.c:tweak_gesture_modal"}
!192 = !{!177, !60, i64 16}
!193 = !{!177, !60, i64 32}
!194 = !{!177, !60, i64 36}
!195 = !{!"wm_operators.c:gesture_lasso_apply"}
!196 = !{!71, !71, i64 0}
!197 = distinct !{!197, !62}
!198 = !{i32 1, i32 5}
!199 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37}
!200 = distinct !{!200, !62}
!201 = !{!"wm_operators.c:straightline_apply"}
!202 = !{!"wm_operators.c:operatortype_ghash_free_cb"}
!203 = !{!"wm_operators.c:WM_OT_window_duplicate"}
!204 = !{!"wm_operators.c:WM_OT_read_history"}
!205 = !{!"wm_operators.c:WM_OT_read_homefile"}
!206 = !{!"wm_operators.c:WM_OT_read_factory_settings"}
!207 = !{!"wm_operators.c:WM_OT_save_homefile"}
!208 = !{!"wm_operators.c:WM_OT_save_userpref"}
!209 = !{!"wm_operators.c:WM_OT_userpref_autoexec_path_add"}
!210 = !{!"wm_operators.c:WM_OT_userpref_autoexec_path_remove"}
!211 = !{!"wm_operators.c:WM_OT_window_fullscreen_toggle"}
!212 = !{!"wm_operators.c:WM_OT_quit_blender"}
!213 = !{!"wm_operators.c:WM_OT_open_mainfile"}
!214 = !{!40, !38, i64 40}
!215 = !{!40, !38, i64 80}
!216 = !{!"wm_operators.c:WM_OT_revert_mainfile"}
!217 = !{!"wm_operators.c:WM_OT_link"}
!218 = !{!"wm_operators.c:WM_OT_append"}
!219 = !{!"wm_operators.c:WM_OT_recover_last_session"}
!220 = !{!"wm_operators.c:WM_OT_recover_auto_save"}
!221 = !{!"wm_operators.c:WM_OT_save_as_mainfile"}
!222 = !{!"wm_operators.c:WM_OT_save_mainfile"}
!223 = !{!"wm_operators.c:WM_OT_redraw_timer"}
!224 = !{!"wm_operators.c:WM_OT_memory_statistics"}
!225 = !{!"wm_operators.c:WM_OT_dependency_relations"}
!226 = !{!"wm_operators.c:WM_OT_debug_menu"}
!227 = !{!"wm_operators.c:WM_OT_operator_defaults"}
!228 = !{!"wm_operators.c:WM_OT_splash"}
!229 = !{!"wm_operators.c:WM_OT_search_menu"}
!230 = !{!"wm_operators.c:WM_OT_call_menu"}
!231 = !{!"wm_operators.c:WM_OT_call_menu_pie"}
!232 = !{!"wm_operators.c:WM_OT_radial_control"}
!233 = !{!234, !38, i64 176}
!234 = !{!"wmKeyMapItem", !38, i64 0, !38, i64 8, !35, i64 16, !38, i64 80, !35, i64 88, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158, !43, i64 160, !43, i64 162, !43, i64 164, !43, i64 166, !43, i64 168, !43, i64 170, !43, i64 172, !43, i64 174, !38, i64 176}
!235 = !{!"wm_operators.c:gesture_circle_modal_keymap"}
!236 = !{!237, !38, i64 128}
!237 = !{!"wmKeyMap", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 32, !35, i64 48, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !38, i64 120, !38, i64 128}
!238 = !{!"wm_operators.c:gesture_border_modal_keymap"}
!239 = !{!"wm_operators.c:gesture_zoom_border_modal_keymap"}
!240 = !{!"wm_operators.c:gesture_straightline_modal_keymap"}
!241 = !{!242, !38, i64 1456}
!242 = !{!"Main", !38, i64 0, !38, i64 8, !35, i64 16, !43, i64 1040, !43, i64 1042, !43, i64 1044, !43, i64 1046, !107, i64 1048, !35, i64 1056, !43, i64 1072, !38, i64 1080, !41, i64 1088, !41, i64 1104, !41, i64 1120, !41, i64 1136, !41, i64 1152, !41, i64 1168, !41, i64 1184, !41, i64 1200, !41, i64 1216, !41, i64 1232, !41, i64 1248, !41, i64 1264, !41, i64 1280, !41, i64 1296, !41, i64 1312, !41, i64 1328, !41, i64 1344, !41, i64 1360, !41, i64 1376, !41, i64 1392, !41, i64 1408, !41, i64 1424, !41, i64 1440, !41, i64 1456, !41, i64 1472, !41, i64 1488, !41, i64 1504, !41, i64 1520, !41, i64 1536, !41, i64 1552, !41, i64 1568, !41, i64 1584, !41, i64 1600, !41, i64 1616, !35, i64 1632, !38, i64 1888, !38, i64 1896}
!243 = !{!"wm_operators.c:rna_id_itemf"}
!244 = !{!105, !38, i64 24}
!245 = !{!246, !38, i64 24}
!246 = !{!"EnumPropertyItem", !60, i64 0, !38, i64 8, !60, i64 16, !38, i64 24, !38, i64 32}
!247 = !{!246, !38, i64 8}
!248 = !{!246, !60, i64 0}
!249 = !{!105, !38, i64 0}
!250 = distinct !{!250, !62}
!251 = !{!242, !38, i64 1424}
!252 = !{!242, !38, i64 1216}
!253 = !{!242, !38, i64 1088}
!254 = !{!242, !38, i64 1584}
!255 = !{!242, !38, i64 1600}
!256 = !{!"wm_operators.c:wm_macro_start"}
!257 = !{!"wm_operators.c:wm_macro_end"}
!258 = !{!"wm_operators.c:wm_macro_invoke_internal"}
!259 = distinct !{!259, !62}
!260 = !{!"wm_operators.c:wm_block_redo_cancel_cb"}
!261 = !{!"wm_operators.c:wm_block_redo_cb"}
!262 = !{!"wm_operators.c:dialog_check_cb"}
!263 = !{!"wm_operators.c:dialog_exec_cb"}
!264 = !{!"wm_operators.c:min_ii"}
!265 = !{!"wm_operators.c:max_ii"}
!266 = !{!"wm_operators.c:wm_operator_winactive_normal"}
!267 = !{!190, !38, i64 24}
!268 = !{!269, !43, i64 208}
!269 = !{!"bScreen", !105, i64 0, !41, i64 120, !41, i64 136, !41, i64 152, !41, i64 168, !38, i64 184, !38, i64 192, !60, i64 200, !60, i64 204, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !38, i64 232, !38, i64 240}
!270 = !{!"wm_operators.c:wm_userpref_autoexec_add_exec"}
!271 = !{!"wm_operators.c:wm_userpref_autoexec_remove_exec"}
!272 = !{!"wm_operators.c:wm_exit_blender_exec"}
!273 = !{!"wm_operators.c:wm_open_mainfile_invoke"}
!274 = !{!165, !38, i64 2064}
!275 = !{!276, !38, i64 16}
!276 = !{!"RecentFile", !38, i64 0, !38, i64 8, !38, i64 16}
!277 = !{!"wm_operators.c:wm_open_mainfile_exec"}
!278 = !{!165, !60, i64 2096}
!279 = !{!"wm_operators.c:wm_open_mainfile_check"}
!280 = !{!70, !60, i64 8}
!281 = !{!282, !35, i64 0}
!282 = !{!"FileRuntime", !35, i64 0}
!283 = !{!"wm_operators.c:wm_open_mainfile_ui"}
!284 = !{!56, !38, i64 152}
!285 = !{!"wm_operators.c:wm_revert_mainfile_exec"}
!286 = !{!"wm_operators.c:wm_revert_mainfile_poll"}
!287 = !{!"wm_operators.c:wm_link_append_invoke"}
!288 = !{!"wm_operators.c:wm_link_append_exec"}
!289 = !{i16 0, i16 1088}
!290 = !{!110, !38, i64 24}
!291 = !{!242, !38, i64 1080}
!292 = distinct !{!292, !62}
!293 = !{!"wm_operators.c:wm_link_append_poll"}
!294 = !{!"wm_operators.c:wm_link_append_properties_common"}
!295 = !{!"wm_operators.c:wm_link_append_flag"}
!296 = !{!"wm_operators.c:wm_recover_last_session_exec"}
!297 = !{!"wm_operators.c:wm_recover_auto_save_exec"}
!298 = !{!"wm_operators.c:wm_recover_auto_save_invoke"}
!299 = !{!"wm_operators.c:wm_save_as_mainfile_invoke"}
!300 = !{!"wm_operators.c:wm_save_as_mainfile_exec"}
!301 = !{!"wm_operators.c:blend_save_check"}
!302 = !{!"wm_operators.c:save_set_compress"}
!303 = !{!"wm_operators.c:wm_filepath_default"}
!304 = !{!"wm_operators.c:wm_save_mainfile_invoke"}
!305 = !{i32 2, i32 5}
!306 = !{!"wm_operators.c:redraw_timer_exec"}
!307 = distinct !{!307, !62}
!308 = !{!309, !43, i64 212}
!309 = !{!"ARegion", !38, i64 0, !38, i64 8, !310, i64 16, !118, i64 176, !118, i64 192, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !71, i64 220, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !43, i64 232, !43, i64 234, !43, i64 236, !43, i64 238, !38, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !38, i64 360, !38, i64 368, !38, i64 376}
!310 = !{!"View2D", !117, i64 0, !117, i64 16, !118, i64 32, !118, i64 48, !118, i64 64, !35, i64 80, !35, i64 88, !71, i64 96, !71, i64 100, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !38, i64 128, !60, i64 136, !60, i64 140, !38, i64 144, !38, i64 152}
!311 = distinct !{!311, !62}
!312 = !{!110, !60, i64 680}
!313 = !{!242, !38, i64 1888}
!314 = !{!110, !60, i64 232}
!315 = !{!110, !60, i64 688}
!316 = !{!110, !60, i64 684}
!317 = distinct !{!317, !62}
!318 = distinct !{!318, !62}
!319 = !{!"wm_operators.c:redraw_timer_window_swap"}
!320 = distinct !{!320, !62}
!321 = !{!"wm_operators.c:memory_statistics_exec"}
!322 = !{!"wm_operators.c:dependency_relations_exec"}
!323 = !{!"wm_operators.c:wm_debug_menu_invoke"}
!324 = !{!165, !43, i64 2092}
!325 = !{!"wm_operators.c:wm_debug_menu_exec"}
!326 = !{!"wm_operators.c:wm_operator_defaults_exec"}
!327 = !{!"wm_operators.c:wm_splash_invoke"}
!328 = !{!"wm_operators.c:wm_block_create_splash"}
!329 = !{!70, !71, i64 10908}
!330 = !{!331, !38, i64 8}
!331 = !{!"Menu", !38, i64 0, !38, i64 8}
!332 = !{!331, !38, i64 0}
!333 = !{!334, !38, i64 224}
!334 = !{!"MenuType", !38, i64 0, !38, i64 8, !35, i64 16, !35, i64 80, !35, i64 144, !38, i64 208, !38, i64 216, !38, i64 224, !42, i64 232}
!335 = distinct !{!335, !62}
!336 = !{!"wm_operators.c:wm_block_splash_close"}
!337 = !{!"wm_operators.c:wm_block_splash_refreshmenu"}
!338 = !{!"wm_operators.c:wm_resource_check_prev"}
!339 = !{!"wm_operators.c:wm_search_menu_invoke"}
!340 = !{!"wm_operators.c:wm_search_menu_exec"}
!341 = !{!"wm_operators.c:wm_search_menu_poll"}
!342 = !{!104, !43, i64 136}
!343 = !{!344, !35, i64 72}
!344 = !{!"ScrArea", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !118, i64 56, !35, i64 72, !35, i64 73, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !43, i64 84, !35, i64 86, !35, i64 87, !38, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!345 = !{!"wm_operators.c:wm_block_search_menu"}
!346 = !{!"wm_operators.c:wm_call_menu_exec"}
!347 = !{!"wm_operators.c:wm_call_pie_menu_invoke"}
!348 = !{!"wm_operators.c:wm_call_pie_menu_exec"}
!349 = !{!190, !38, i64 136}
!350 = !{!"wm_operators.c:radial_control_invoke"}
!351 = !{!352, !38, i64 152}
!352 = !{!"", !60, i64 0, !60, i64 4, !80, i64 8, !80, i64 32, !80, i64 56, !80, i64 80, !80, i64 104, !80, i64 128, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !71, i64 200, !71, i64 204, !71, i64 208, !71, i64 212, !35, i64 216, !35, i64 224, !35, i64 232, !38, i64 240, !60, i64 248, !41, i64 256, !35, i64 272, !38, i64 280}
!353 = !{!352, !60, i64 0}
!354 = !{!352, !71, i64 200}
!355 = !{!352, !60, i64 4}
!356 = !{!352, !71, i64 204}
!357 = !{i64 0, i64 8, !37, i64 8, i64 8, !37}
!358 = !{!352, !38, i64 280}
!359 = !{!"wm_operators.c:radial_control_modal"}
!360 = !{!136, !43, i64 74}
!361 = !{!352, !35, i64 232}
!362 = !{!352, !38, i64 240}
!363 = !{!352, !38, i64 184}
!364 = !{!352, !71, i64 208}
!365 = !{!352, !71, i64 212}
!366 = !{!"wm_operators.c:radial_control_cancel"}
!367 = !{!"wm_operators.c:radial_control_get_properties"}
!368 = !{!352, !38, i64 144}
!369 = !{!352, !38, i64 136}
!370 = !{!352, !35, i64 272}
!371 = !{!"wm_operators.c:radial_control_set_initial_mouse"}
!372 = !{!"wm_operators.c:radial_control_set_tex"}
!373 = !{!352, !60, i64 248}
!374 = !{!375, !60, i64 16}
!375 = !{!"ImBuf", !38, i64 0, !38, i64 8, !60, i64 16, !60, i64 20, !35, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !38, i64 40, !38, i64 48, !35, i64 56, !60, i64 72, !60, i64 76, !60, i64 80, !60, i64 84, !38, i64 88, !38, i64 96, !38, i64 104, !71, i64 112, !35, i64 120, !60, i64 280, !60, i64 284, !60, i64 288, !60, i64 292, !38, i64 296, !38, i64 304, !60, i64 312, !35, i64 316, !35, i64 1340, !38, i64 2368, !60, i64 2376, !38, i64 2384, !60, i64 2392, !60, i64 2396, !38, i64 2400, !38, i64 2408, !38, i64 2416, !38, i64 2424, !60, i64 2432, !118, i64 2436, !376, i64 2456}
!376 = !{!"DDSData", !60, i64 0, !60, i64 4, !38, i64 8, !60, i64 16}
!377 = !{!375, !60, i64 20}
!378 = !{!375, !38, i64 48}
!379 = !{!"wm_operators.c:BLI_listbase_clear"}
!380 = !{!"wm_operators.c:radial_control_paint_cursor"}
!381 = !{!382, !43, i64 0}
!382 = !{!"uiFontStyle", !43, i64 0, !43, i64 2, !43, i64 4, !35, i64 6, !43, i64 12, !43, i64 14, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !71, i64 24, !71, i64 28}
!383 = !{!382, !43, i64 2}
!384 = !{!309, !60, i64 176}
!385 = !{!309, !60, i64 184}
!386 = !{!352, !38, i64 160}
!387 = !{!70, !60, i64 8524}
!388 = !{!"wm_operators.c:radial_control_get_path"}
!389 = !{!"wm_operators.c:radial_control_paint_tex"}
!390 = !{!352, !38, i64 168}
!391 = !{!352, !38, i64 176}
!392 = !{!"wm_operators.c:len_v2"}
!393 = !{!"wm_operators.c:radial_control_set_value"}
