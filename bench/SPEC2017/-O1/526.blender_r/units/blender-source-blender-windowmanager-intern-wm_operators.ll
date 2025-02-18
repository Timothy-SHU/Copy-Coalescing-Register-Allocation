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
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%union.IDPropertyTemplate = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, i16, i8 }
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

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_operatortype_find(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i8], align 16
  %4 = load i8, ptr %0, align 1, !tbaa !34
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %7 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = shl i64 %12, 32
  %14 = ashr exact i64 %13, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull align 1 %0, i64 %14, i1 false)
  call void @BLI_ascii_strtoupper(ptr noundef nonnull %3, i64 noundef %14) #16
  %15 = getelementptr inbounds i8, ptr %3, i64 %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %15, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false) #16
  %16 = add i64 %13, 17179869184
  %17 = ashr exact i64 %16, 32
  %18 = getelementptr inbounds i8, ptr %3, i64 %17
  %19 = getelementptr inbounds i8, ptr %7, i64 1
  %20 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %19) #16
  br label %23

21:                                               ; preds = %6
  %22 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef 64) #16
  br label %23

23:                                               ; preds = %9, %21
  %24 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %25 = call ptr @BLI_ghash_lookup(ptr noundef %24, ptr noundef nonnull %3) #16
  %26 = icmp eq ptr %25, null
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  br i1 %26, label %31, label %32

27:                                               ; preds = %2
  %28 = icmp eq i8 %1, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %31

31:                                               ; preds = %23, %27, %29
  br label %32

32:                                               ; preds = %23, %31
  %33 = phi ptr [ %25, %23 ], [ null, %31 ]
  ret ptr %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_bl_idname(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 46) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %1 to i64
  %10 = sub i64 %8, %9
  %11 = shl i64 %10, 32
  %12 = ashr exact i64 %11, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %1, i64 %12, i1 false)
  tail call void @BLI_ascii_strtoupper(ptr noundef %0, i64 noundef %12) #16
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %13, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false) #16
  %14 = add i64 %11, 17179869184
  %15 = ashr exact i64 %14, 32
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = getelementptr inbounds i8, ptr %5, i64 1
  %18 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %17) #16
  br label %22

19:                                               ; preds = %4
  %20 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 64) #16
  br label %22

21:                                               ; preds = %2
  store i8 0, ptr %0, align 1, !tbaa !34
  br label %22

22:                                               ; preds = %7, %19, %21
  ret void
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @WM_operatortype_iter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  tail call void @BLI_ghashIterator_init(ptr noundef %0, ptr noundef %2) #16
  ret void
}

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operatortype_append(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %3 = tail call ptr %2(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %4 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 11
  store ptr %4, ptr %5, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %4, ptr noundef nonnull @.str.3) #16
  tail call void %0(ptr noundef %3) #16
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load ptr, ptr @stderr, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef %11) #18
  store ptr @.str.5, ptr %3, align 8, !tbaa !44
  br label %13

13:                                               ; preds = %8, %1
  %14 = load ptr, ptr %5, align 8, !tbaa !39
  %15 = load ptr, ptr %3, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @.str.6, ptr %17
  tail call void @RNA_def_struct_ui_text(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %19) #16
  %20 = load ptr, ptr %5, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %20, ptr noundef %22) #16
  %23 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %24 = load ptr, ptr %21, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %23, ptr noundef %24, ptr noundef nonnull %3) #16
  ret void
}

declare ptr @RNA_def_struct_ptr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_struct_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare void @RNA_def_struct_ui_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_struct_identifier(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operatortype_append_ptr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %4 = tail call ptr %3(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %5 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 11
  store ptr %5, ptr %6, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %5, ptr noundef nonnull @.str.3) #16
  tail call void %0(ptr noundef %4, ptr noundef %1) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = load ptr, ptr %4, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @.str.6, ptr %10
  tail call void @RNA_def_struct_ui_text(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %12) #16
  %13 = load ptr, ptr %6, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %13, ptr noundef %15) #16
  %16 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %17 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %16, ptr noundef %17, ptr noundef nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_operatortype_append_macro(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @WM_operatortype_find(ptr noundef %0, i8 noundef zeroext 1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @__func__.WM_operatortype_append_macro, ptr noundef %0)
  br label %40

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %11 = tail call ptr %10(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %12 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
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
  %27 = load ptr, ptr %15, align 8, !tbaa !46
  tail call void @RNA_def_struct_ui_text(ptr noundef %12, ptr noundef %1, ptr noundef %27) #16
  %28 = load ptr, ptr %13, align 8, !tbaa !39
  %29 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %28, ptr noundef %29) #16
  %30 = load ptr, ptr %13, align 8, !tbaa !39
  %31 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 18, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = tail call ptr @RNA_struct_translation_context(ptr noundef nonnull %32) #16
  br label %36

36:                                               ; preds = %26, %34
  %37 = phi ptr [ %35, %34 ], [ @.str.3, %26 ]
  tail call void @RNA_def_struct_translation_context(ptr noundef %30, ptr noundef %37) #16
  %38 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %39 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %38, ptr noundef %39, ptr noundef nonnull %11) #16
  br label %40

40:                                               ; preds = %36, %7
  %41 = phi ptr [ null, %7 ], [ %11, %36 ]
  ret ptr %41
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_macro_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %8 = tail call ptr %7(i64 noundef 4, ptr noundef nonnull @.str.162) #16
  store ptr %8, ptr %3, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %2, %6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %9, %31
  %14 = phi ptr [ %33, %31 ], [ %11, %9 ]
  %15 = phi i32 [ %32, %31 ], [ 4, %9 ]
  %16 = getelementptr inbounds %struct.wmOperator, ptr %14, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = tail call i32 %19(ptr noundef %0, ptr noundef nonnull %14) #16
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 8, !tbaa !54
  store i32 4, ptr %26, align 4, !tbaa !57
  br label %31

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.wmOperatorType, ptr %17, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.161, ptr noundef nonnull @__func__.wm_macro_exec, ptr noundef %29)
  br label %31

31:                                               ; preds = %25, %27
  %32 = phi i32 [ %22, %25 ], [ %15, %27 ]
  %33 = load ptr, ptr %14, align 8, !tbaa !37
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !60

35:                                               ; preds = %31, %21, %9
  %36 = phi i32 [ 4, %9 ], [ %32, %31 ], [ %22, %21 ]
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %3, align 8, !tbaa !54
  %41 = load i32, ptr %40, align 4, !tbaa !57
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %36, -7
  %45 = or disjoint i32 %44, 4
  %46 = select i1 %43, i32 %36, i32 %45
  br label %47

47:                                               ; preds = %39, %35
  %48 = phi i32 [ %46, %39 ], [ %36, %35 ]
  %49 = and i32 %48, 6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %3, align 8, !tbaa !54
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %55(ptr noundef nonnull %52) #16
  store ptr null, ptr %3, align 8, !tbaa !54
  br label %56

56:                                               ; preds = %47, %51, %54
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_macro_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %9 = tail call ptr %8(i64 noundef 4, ptr noundef nonnull @.str.162) #16
  store ptr %9, ptr %4, align 8, !tbaa !54
  br label %10

10:                                               ; preds = %3, %7
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %16

16:                                               ; preds = %39, %14
  %17 = phi ptr [ %12, %14 ], [ %41, %39 ]
  %18 = phi i32 [ 4, %14 ], [ %33, %39 ]
  %19 = getelementptr inbounds %struct.wmOperator, ptr %17, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = tail call i32 %22(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %2) #16
  br label %32

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 %28(ptr noundef %0, ptr noundef nonnull %17) #16
  br label %32

32:                                               ; preds = %30, %26, %24
  %33 = phi i32 [ %25, %24 ], [ %31, %30 ], [ %18, %26 ]
  %34 = load ptr, ptr %15, align 8, !tbaa !64
  %35 = getelementptr inbounds %struct.wmOperator, ptr %17, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  tail call void @BLI_movelisttolist(ptr noundef %34, ptr noundef %36) #16
  %37 = and i32 %33, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %4, align 8, !tbaa !54
  store i32 4, ptr %40, align 4, !tbaa !57
  %41 = load ptr, ptr %17, align 8, !tbaa !65
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16, !llvm.loop !66

43:                                               ; preds = %39, %32, %10
  %44 = phi i32 [ 4, %10 ], [ %33, %32 ], [ %33, %39 ]
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 8, !tbaa !54
  %49 = load i32, ptr %48, align 4, !tbaa !57
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %44, -7
  %53 = or disjoint i32 %52, 4
  %54 = select i1 %51, i32 %44, i32 %53
  br label %55

55:                                               ; preds = %47, %43
  %56 = phi i32 [ %54, %47 ], [ %44, %43 ]
  %57 = and i32 %56, 6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %4, align 8, !tbaa !54
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %63(ptr noundef nonnull %60) #16
  store ptr null, ptr %4, align 8, !tbaa !54
  br label %64

64:                                               ; preds = %55, %59, %62
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_macro_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [4 x i32], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.163, ptr noundef nonnull @__func__.wm_macro_modal)
  br label %133

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %6, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %12, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = tail call i32 %14(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2) #16
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.wmOperator, ptr %6, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.PointerRNA, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @IDP_ClearProperty(ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %18, %10
  %26 = and i32 %15, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %133, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 8, !tbaa !65
  %30 = icmp eq ptr %29, null
  br i1 %30, label %133, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  store i32 4, ptr %33, align 4, !tbaa !57
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %35

35:                                               ; preds = %58, %31
  %36 = phi ptr [ %29, %31 ], [ %60, %58 ]
  %37 = phi i32 [ 4, %31 ], [ %52, %58 ]
  %38 = getelementptr inbounds %struct.wmOperator, ptr %36, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.wmOperatorType, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = tail call i32 %41(ptr noundef %0, ptr noundef nonnull %36, ptr noundef %2) #16
  br label %51

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.wmOperatorType, ptr %39, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 %47(ptr noundef %0, ptr noundef nonnull %36) #16
  br label %51

51:                                               ; preds = %49, %45, %43
  %52 = phi i32 [ %44, %43 ], [ %50, %49 ], [ %37, %45 ]
  %53 = load ptr, ptr %34, align 8, !tbaa !64
  %54 = getelementptr inbounds %struct.wmOperator, ptr %36, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !64
  tail call void @BLI_movelisttolist(ptr noundef %53, ptr noundef %55) #16
  %56 = and i32 %52, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr %32, align 8, !tbaa !54
  store i32 4, ptr %59, align 4, !tbaa !57
  %60 = load ptr, ptr %36, align 8, !tbaa !65
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %35, !llvm.loop !66

62:                                               ; preds = %58, %51
  %63 = and i32 %52, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %32, align 8, !tbaa !54
  %67 = load i32, ptr %66, align 4, !tbaa !57
  %68 = and i32 %67, 4
  %69 = icmp eq i32 %68, 0
  %70 = and i32 %52, -7
  %71 = or disjoint i32 %70, 4
  %72 = select i1 %69, i32 %52, i32 %71
  br label %73

73:                                               ; preds = %65, %62
  %74 = phi i32 [ %72, %65 ], [ %52, %62 ]
  %75 = and i32 %74, 6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %32, align 8, !tbaa !54
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %81(ptr noundef nonnull %78) #16
  store ptr null, ptr %32, align 8, !tbaa !54
  br label %82

82:                                               ; preds = %73, %77, %80
  %83 = and i32 %74, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %133, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %5, align 8, !tbaa !67
  %87 = icmp eq ptr %86, %6
  br i1 %87, label %133, label %88

88:                                               ; preds = %85
  %89 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %90 = getelementptr inbounds %struct.wmWindow, ptr %89, i64 0, i32 29
  %91 = tail call ptr @BLI_findptr(ptr noundef nonnull %90, ptr noundef %1, i32 noundef 48) #16
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  tail call void @BLI_remlink(ptr noundef nonnull %90, ptr noundef nonnull %91) #16
  tail call void @wm_event_free_handler(ptr noundef nonnull %91) #16
  br label %94

94:                                               ; preds = %93, %88
  %95 = load ptr, ptr %5, align 8, !tbaa !67
  %96 = getelementptr inbounds %struct.wmOperator, ptr %95, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !56
  %98 = getelementptr inbounds %struct.wmOperatorType, ptr %97, i64 0, i32 19
  %99 = load i16, ptr %98, align 8, !tbaa !47
  %100 = and i16 %99, 4
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %133, label %102

102:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 -1, i64 16, i1 false)
  %103 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !72
  %104 = and i32 %103, 16777216
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.wmOperator, ptr %95, i64 0, i32 12
  %108 = load i16, ptr %107, align 8, !tbaa !77
  %109 = and i16 %108, 1
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = and i16 %99, 16
  %113 = icmp ne i16 %112, 0
  br label %114

114:                                              ; preds = %106, %111, %102
  %115 = phi i1 [ false, %102 ], [ true, %106 ], [ %113, %111 ]
  br i1 %115, label %116, label %131

116:                                              ; preds = %114
  %117 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %118 = icmp eq ptr %117, null
  br i1 %118, label %131, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.ARegion, ptr %117, i64 0, i32 3
  %121 = load i32, ptr %120, align 8, !tbaa !78
  store i32 %121, ptr %4, align 16, !tbaa !83
  %122 = getelementptr inbounds %struct.ARegion, ptr %117, i64 0, i32 3, i32 3
  %123 = load i32, ptr %122, align 4, !tbaa !84
  %124 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 1
  store i32 %123, ptr %124, align 4, !tbaa !83
  %125 = getelementptr inbounds %struct.ARegion, ptr %117, i64 0, i32 3, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !85
  %127 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 2
  store i32 %126, ptr %127, align 8, !tbaa !83
  %128 = getelementptr inbounds %struct.ARegion, ptr %117, i64 0, i32 3, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !86
  %130 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 3
  store i32 %129, ptr %130, align 4, !tbaa !83
  br label %131

131:                                              ; preds = %116, %119, %114
  %132 = zext i1 %115 to i8
  call void @WM_cursor_grab_enable(ptr noundef %89, i8 noundef zeroext %132, i8 noundef zeroext 0, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %133

133:                                              ; preds = %82, %85, %131, %94, %25, %28, %8
  %134 = phi i32 [ 4, %8 ], [ %15, %28 ], [ %15, %25 ], [ %74, %94 ], [ %74, %131 ], [ %74, %85 ], [ %74, %82 ]
  %135 = and i32 %134, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %139 = load ptr, ptr %138, align 8, !tbaa !54
  %140 = load i32, ptr %139, align 4, !tbaa !57
  %141 = and i32 %140, 4
  %142 = icmp eq i32 %141, 0
  %143 = and i32 %134, -7
  %144 = or disjoint i32 %143, 4
  %145 = select i1 %142, i32 %134, i32 %144
  br label %146

146:                                              ; preds = %137, %133
  %147 = phi i32 [ %145, %137 ], [ %134, %133 ]
  %148 = and i32 %147, 6
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !54
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %155(ptr noundef nonnull %152) #16
  store ptr null, ptr %151, align 8, !tbaa !54
  br label %156

156:                                              ; preds = %146, %150, %154
  ret i32 %147
}

; Function Attrs: nounwind uwtable
define internal void @wm_macro_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef %0, ptr noundef nonnull %4) #16
  br label %13

13:                                               ; preds = %12, %6, %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %16(ptr noundef nonnull %15) #16
  store ptr null, ptr %14, align 8, !tbaa !54
  ret void
}

declare ptr @RNA_struct_translation_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operatortype_append_macro_ptr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %4 = tail call ptr %3(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %5 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
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
  tail call void @RNA_def_struct_translation_context(ptr noundef %5, ptr noundef nonnull @.str.3) #16
  tail call void %0(ptr noundef %4, ptr noundef %1) #16
  %18 = load ptr, ptr %6, align 8, !tbaa !39
  %19 = load ptr, ptr %4, align 8, !tbaa !44
  %20 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void @RNA_def_struct_ui_text(ptr noundef %18, ptr noundef %19, ptr noundef %20) #16
  %21 = load ptr, ptr %6, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %21, ptr noundef %23) #16
  %24 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %25 = load ptr, ptr %22, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_operatortype_macro_define(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %4 = tail call ptr %3(i64 noundef 96, ptr noundef nonnull @.str.8) #16
  %5 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #16
  %7 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %4, i64 0, i32 4
  %8 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %4, i64 0, i32 3
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %1)
  %9 = load ptr, ptr %7, align 8, !tbaa !87
  tail call void @WM_operator_properties_sanitize(ptr noundef %9, i8 noundef zeroext 1)
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %4) #16
  %11 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0)
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
  %23 = tail call ptr @RNA_def_pointer_runtime(ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %20, ptr noundef %22) #16
  br label %24

24:                                               ; preds = %13, %2
  ret ptr %4
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_alloc(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %union.IDPropertyTemplate, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !37
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %8 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %4, ptr noundef nonnull @.str.15) #16
  store ptr %8, ptr %1, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %9

9:                                                ; preds = %7, %3
  %10 = load ptr, ptr %0, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %14 = call ptr %13(i64 noundef 24, ptr noundef nonnull @.str.16) #16
  store ptr %14, ptr %0, align 8, !tbaa !37
  %15 = call ptr @WM_operatortype_find(ptr noundef %2, i8 noundef zeroext 0)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %19, ptr noundef null, ptr noundef %14) #16
  br label %21

20:                                               ; preds = %12
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_OperatorProperties, ptr noundef null, ptr noundef %14) #16
  br label %21

21:                                               ; preds = %20, %17, %9
  %22 = load ptr, ptr %1, align 8, !tbaa !37
  %23 = load ptr, ptr %0, align 8, !tbaa !37
  %24 = getelementptr inbounds %struct.PointerRNA, ptr %23, i64 0, i32 2
  store ptr %22, ptr %24, align 8, !tbaa !69
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_sanitize(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #16
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = tail call ptr @RNA_struct_iterator_property(ptr noundef %6) #16
  call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %3) #16
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !90
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6, i32 2
  %13 = icmp eq i8 %1, 0
  br label %14

14:                                               ; preds = %11, %25
  %15 = load ptr, ptr %12, align 8, !tbaa !92
  %16 = call i32 @RNA_property_type(ptr noundef %15) #16
  switch i32 %16, label %25 [
    i32 4, label %17
    i32 5, label %20
  ]

17:                                               ; preds = %14
  br i1 %13, label %19, label %18

18:                                               ; preds = %17
  call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 16777216) #16
  br label %25

19:                                               ; preds = %17
  call void @RNA_def_property_clear_flag(ptr noundef %15, i32 noundef 16777216) #16
  br label %25

20:                                               ; preds = %14
  %21 = call ptr @RNA_property_pointer_type(ptr noundef %0, ptr noundef %15) #16
  %22 = call zeroext i8 @RNA_struct_is_a(ptr noundef %21, ptr noundef nonnull @RNA_OperatorProperties) #16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef %15) #16
  call void @WM_operator_properties_sanitize(ptr noundef nonnull %4, i8 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  br label %25

25:                                               ; preds = %20, %24, %14, %18, %19
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #16
  %26 = load i32, ptr %8, align 8, !tbaa !90
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %14, !llvm.loop !93

28:                                               ; preds = %25, %2
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #16
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_pointer_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operatortype_remove_ptr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  tail call void @RNA_struct_free(ptr noundef nonnull @BLENDER_RNA, ptr noundef %3) #16
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  tail call void @IDP_FreeProperty(ptr noundef nonnull %5) #16
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %9 = load ptr, ptr %4, align 8, !tbaa !94
  tail call void %8(ptr noundef %9) #16
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %10, %28
  %15 = phi ptr [ %29, %28 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  tail call void @IDP_FreeProperty(ptr noundef nonnull %21) #16
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %24(ptr noundef nonnull %21) #16
  store ptr null, ptr %20, align 8, !tbaa !69
  br label %25

25:                                               ; preds = %23, %19
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %27 = load ptr, ptr %16, align 8, !tbaa !87
  tail call void %26(ptr noundef %27) #16
  br label %28

28:                                               ; preds = %25, %14
  %29 = load ptr, ptr %15, align 8, !tbaa !37
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %14, !llvm.loop !95

31:                                               ; preds = %28
  tail call void @BLI_freelistN(ptr noundef nonnull %11) #16
  br label %32

32:                                               ; preds = %31, %10
  %33 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %34 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %33, ptr noundef %35, ptr noundef null, ptr noundef null) #16
  tail call void @WM_keyconfig_update_operatortype() #16
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %37(ptr noundef %0) #16
  ret void
}

declare void @RNA_struct_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_keyconfig_update_operatortype() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @WM_operatortype_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_operatortype_find(ptr noundef %0, i8 noundef zeroext 0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @WM_operatortype_remove_ptr(ptr noundef nonnull %2)
  br label %5

5:                                                ; preds = %1, %4
  %6 = phi i8 [ 1, %4 ], [ 0, %1 ]
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_operatortype_last_properties_clear_all() local_unnamed_addr #0 {
  %1 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #16
  %2 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  call void @BLI_ghashIterator_init(ptr noundef nonnull %1, ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.GHashIterator, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %0, %16
  %7 = phi ptr [ %17, %16 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct._gh_Entry, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %9, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  call void @IDP_FreeProperty(ptr noundef nonnull %11) #16
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %15 = load ptr, ptr %10, align 8, !tbaa !94
  call void %14(ptr noundef %15) #16
  store ptr null, ptr %10, align 8, !tbaa !94
  br label %16

16:                                               ; preds = %13, %6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %1) #16
  %17 = load ptr, ptr %3, align 8, !tbaa !96
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !100

19:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #16
  ret void
}

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_py_idname(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.9) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = shl i64 %8, 32
  %10 = ashr exact i64 %9, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %10, i1 false)
  tail call void @BLI_ascii_strtolower(ptr noundef %0, i64 noundef %10) #16
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  store i8 46, ptr %11, align 1, !tbaa !34
  %12 = add i64 %9, 4294967296
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = getelementptr inbounds i8, ptr %3, i64 4
  %16 = sub i64 270582939648, %9
  %17 = ashr exact i64 %16, 32
  %18 = tail call ptr @BLI_strncpy(ptr noundef %14, ptr noundef nonnull %15, i64 noundef %17) #16
  br label %21

19:                                               ; preds = %2
  %20 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %1, i64 noundef 64) #16
  br label %21

21:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @BLI_ascii_strtolower(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @BLI_ascii_strtoupper(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_operator_pystring_ex(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [64 x i8], align 16
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #16
  %10 = tail call ptr @BLI_dynstr_new() #16
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.9) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %6
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %16, %17
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %7, ptr align 1 %12, i64 %20, i1 false)
  call void @BLI_ascii_strtolower(ptr noundef nonnull %7, i64 noundef %20) #16
  %21 = getelementptr inbounds i8, ptr %7, i64 %20
  store i8 46, ptr %21, align 1, !tbaa !34
  %22 = add i64 %19, 4294967296
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i8, ptr %7, i64 %23
  %25 = getelementptr inbounds i8, ptr %13, i64 4
  %26 = sub i64 270582939648, %19
  %27 = ashr exact i64 %26, 32
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef nonnull %25, i64 noundef %27) #16
  br label %31

29:                                               ; preds = %6
  %30 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %12, i64 noundef 64) #16
  br label %31

31:                                               ; preds = %15, %29
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef nonnull %7) #16
  %32 = icmp eq ptr %1, null
  br i1 %32, label %69, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  %36 = icmp eq ptr %35, null
  br i1 %36, label %69, label %37

37:                                               ; preds = %33
  %38 = icmp eq i8 %3, 0
  br i1 %38, label %90, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  br label %41

41:                                               ; preds = %39, %66
  %42 = phi ptr [ @.str.11, %39 ], [ @.str.12, %66 ]
  %43 = phi ptr [ %35, %39 ], [ %67, %66 ]
  %44 = getelementptr inbounds %struct.wmOperator, ptr %43, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.wmOperator, ptr %43, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !56
  %50 = getelementptr inbounds %struct.wmOperatorType, ptr %49, i64 0, i32 11
  %51 = load ptr, ptr %50, align 8, !tbaa !39
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %51, ptr noundef null, ptr noundef nonnull %8) #16
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi ptr [ %8, %47 ], [ %45, %41 ]
  %54 = call ptr @RNA_pointer_as_string_id(ptr noundef %0, ptr noundef nonnull %53) #16
  %55 = getelementptr inbounds %struct.wmOperator, ptr %43, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = getelementptr inbounds %struct.wmOperatorType, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %10, ptr noundef nonnull %42, ptr noundef %58, ptr noundef %54) #16
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %59(ptr noundef %54) #16
  %60 = icmp eq ptr %53, %8
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load ptr, ptr %40, align 8, !tbaa !69
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  call void @IDP_FreeProperty(ptr noundef nonnull %62) #16
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %65(ptr noundef nonnull %62) #16
  store ptr null, ptr %40, align 8, !tbaa !69
  br label %66

66:                                               ; preds = %64, %61, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  %67 = load ptr, ptr %43, align 8, !tbaa !65
  %68 = icmp eq ptr %67, null
  br i1 %68, label %90, label %41, !llvm.loop !101

69:                                               ; preds = %33, %31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  %70 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 14
  %71 = load ptr, ptr %70, align 8, !tbaa !102
  %72 = icmp eq ptr %71, null
  %73 = select i1 %72, i8 1, i8 %3
  %74 = icmp eq ptr %5, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 11
  %77 = load ptr, ptr %76, align 8, !tbaa !39
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %77, ptr noundef null, ptr noundef nonnull %9) #16
  br label %78

78:                                               ; preds = %75, %69
  %79 = phi ptr [ %9, %75 ], [ %5, %69 ]
  %80 = call ptr @RNA_pointer_as_string_keywords(ptr noundef %0, ptr noundef nonnull %79, i8 noundef zeroext 0, i8 noundef zeroext %2, i8 noundef zeroext %73, i32 noundef 10) #16
  call void @BLI_dynstr_append(ptr noundef %10, ptr noundef %80) #16
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %81(ptr noundef %80) #16
  %82 = icmp eq ptr %79, %9
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.PointerRNA, ptr %9, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !69
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  call void @IDP_FreeProperty(ptr noundef nonnull %85) #16
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %88(ptr noundef nonnull %85) #16
  store ptr null, ptr %84, align 8, !tbaa !69
  br label %89

89:                                               ; preds = %87, %83, %78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  br label %90

90:                                               ; preds = %66, %37, %89
  call void @BLI_dynstr_append(ptr noundef %10, ptr noundef nonnull @.str.13) #16
  %91 = call ptr @BLI_dynstr_get_cstring(ptr noundef %10) #16
  call void @BLI_dynstr_free(ptr noundef %10) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #16
  ret ptr %91
}

declare ptr @BLI_dynstr_new() local_unnamed_addr #2

declare void @BLI_dynstr_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_create_ptr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  tail call void @RNA_pointer_create(ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef %0) #16
  ret void
}

declare ptr @RNA_pointer_as_string_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @IDP_FreeProperty(ptr noundef nonnull %3) #16
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %6(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 8, !tbaa !69
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

declare ptr @RNA_pointer_as_string_keywords(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #2

declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_operator_pystring(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @WM_operator_pystring_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %6, ptr noundef %8)
  ret ptr %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @WM_operator_pystring_abbreviate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %4 = trunc i64 %3 to i32
  %5 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 40) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds i8, ptr %5, i64 1
  %13 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 41) #17
  %14 = icmp ne ptr %13, null
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %15, %8
  %17 = trunc i64 %16 to i32
  %18 = icmp sgt i32 %17, %1
  %19 = and i1 %14, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %7
  %21 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 44) #17
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_prop_pystring_assign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = icmp eq ptr %0, null
  br i1 %11, label %114, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %1, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %114, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 4
  %17 = load i16, ptr %16, align 8, !tbaa !104
  switch i16 %17, label %105 [
    i16 17235, label %18
    i16 16975, label %23
    i16 17741, label %28
    i16 21827, label %28
    i16 16973, label %28
    i16 16716, label %28
    i16 19283, label %28
    i16 16707, label %28
    i16 21580, label %28
    i16 21057, label %28
    i16 16717, label %39
    i16 20311, label %52
    i16 21075, label %63
  ]

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %0, ptr noundef nonnull @.str.164) #16
  %19 = load ptr, ptr %5, align 8, !tbaa !103
  %20 = load ptr, ptr %1, align 8, !tbaa !103
  %21 = icmp eq ptr %19, %20
  %22 = select i1 %21, ptr @.str.164, ptr null
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  br label %105

23:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.165) #16
  %24 = load ptr, ptr %6, align 8, !tbaa !103
  %25 = load ptr, ptr %1, align 8, !tbaa !103
  %26 = icmp eq ptr %24, %25
  %27 = select i1 %26, ptr @.str.165, ptr null
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  br label %105

28:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef nonnull %0, ptr noundef nonnull @.str.165) #16
  %29 = load ptr, ptr %7, align 8, !tbaa !103
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !105
  %34 = load ptr, ptr %1, align 8, !tbaa !103
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %28
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi ptr [ null, %36 ], [ @.str.166, %31 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %105

39:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef nonnull %0, ptr noundef nonnull @.str.165) #16
  %40 = load ptr, ptr %8, align 8, !tbaa !103
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 32
  %44 = load i32, ptr %43, align 4, !tbaa !110
  %45 = trunc i32 %44 to i16
  %46 = call ptr @give_current_material(ptr noundef nonnull %40, i16 noundef signext %45) #16
  %47 = load ptr, ptr %1, align 8, !tbaa !103
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %42, %39
  br label %50

50:                                               ; preds = %49, %42
  %51 = phi ptr [ null, %49 ], [ @.str.167, %42 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %105

52:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef nonnull %0, ptr noundef nonnull @.str.164) #16
  %53 = load ptr, ptr %9, align 8, !tbaa !103
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.Scene, ptr %53, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !111
  %58 = load ptr, ptr %1, align 8, !tbaa !103
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %55, %52
  br label %61

61:                                               ; preds = %60, %55
  %62 = phi ptr [ null, %60 ], [ @.str.168, %55 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  br label %105

63:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %10, ptr noundef nonnull %0, ptr noundef nonnull @.str.169) #16
  %64 = load ptr, ptr %10, align 8, !tbaa !103
  %65 = load ptr, ptr %1, align 8, !tbaa !103
  %66 = icmp eq ptr %64, %65
  %67 = select i1 %66, ptr @.str.169, ptr null
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  br i1 %66, label %105, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !89
  %71 = call zeroext i8 @RNA_struct_is_a(ptr noundef %70, ptr noundef nonnull @RNA_Space) #16
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !69
  %76 = call ptr @CTX_wm_space_data(ptr noundef nonnull %0) #16
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %73
  %80 = phi i1 [ true, %78 ], [ false, %73 ]
  %81 = phi ptr [ %67, %78 ], [ @.str.170, %73 ]
  br i1 %80, label %82, label %105

82:                                               ; preds = %79
  %83 = load ptr, ptr %69, align 8, !tbaa !89
  %84 = call zeroext i8 @RNA_struct_is_a(ptr noundef %83, ptr noundef nonnull @RNA_Area) #16
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !69
  %89 = call ptr @CTX_wm_area(ptr noundef nonnull %0) #16
  %90 = icmp eq ptr %88, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %86, %82
  br label %92

92:                                               ; preds = %91, %86
  %93 = phi i1 [ true, %91 ], [ false, %86 ]
  %94 = phi ptr [ %81, %91 ], [ @.str.171, %86 ]
  br i1 %93, label %95, label %105

95:                                               ; preds = %92
  %96 = load ptr, ptr %69, align 8, !tbaa !89
  %97 = call zeroext i8 @RNA_struct_is_a(ptr noundef %96, ptr noundef nonnull @RNA_Region) #16
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !69
  %102 = call ptr @CTX_wm_region(ptr noundef nonnull %0) #16
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %105, label %104

104:                                              ; preds = %99, %95
  br label %105

105:                                              ; preds = %104, %99, %92, %79, %63, %61, %50, %37, %23, %18, %15
  %106 = phi ptr [ null, %15 ], [ %67, %63 ], [ %81, %79 ], [ %94, %92 ], [ %62, %61 ], [ %51, %50 ], [ %38, %37 ], [ %27, %23 ], [ %22, %18 ], [ %94, %104 ], [ @.str.172, %99 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = call ptr @RNA_path_struct_property_py(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #16
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.173, ptr noundef nonnull %106, ptr noundef nonnull %109) #16
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %113(ptr noundef nonnull %109) #16
  br label %114

114:                                              ; preds = %111, %108, %105, %12, %4
  %115 = phi ptr [ null, %4 ], [ %112, %111 ], [ null, %108 ], [ null, %105 ], [ null, %12 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call ptr @RNA_path_full_property_py(ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi ptr [ %118, %117 ], [ %115, %114 ]
  %121 = icmp eq ptr %120, null
  br i1 %121, label %132, label %122

122:                                              ; preds = %119
  %123 = call ptr @RNA_property_as_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 2147483647) #16
  %124 = icmp eq ptr %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.14, ptr noundef nonnull %120, ptr noundef nonnull %123) #16
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %127(ptr noundef nonnull %120) #16
  br label %128

128:                                              ; preds = %122, %125
  %129 = phi ptr [ %123, %125 ], [ %120, %122 ]
  %130 = phi ptr [ %126, %125 ], [ null, %122 ]
  %131 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %131(ptr noundef nonnull %129) #16
  br label %132

132:                                              ; preds = %128, %119
  %133 = phi ptr [ null, %119 ], [ %130, %128 ]
  ret ptr %133
}

declare ptr @RNA_path_full_property_py(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_property_as_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  tail call void @RNA_pointer_create(ptr noundef null, ptr noundef %7, ptr noundef null, ptr noundef %0) #16
  br label %9

8:                                                ; preds = %2
  tail call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_OperatorProperties, ptr noundef null, ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_clear_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_property_pointer_type(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @WM_operator_properties_default(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #16
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = tail call ptr @RNA_struct_iterator_property(ptr noundef %6) #16
  call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %3) #16
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !90
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6, i32 2
  %13 = icmp eq i8 %1, 0
  br label %14

14:                                               ; preds = %11, %33
  %15 = phi i8 [ 0, %11 ], [ %34, %33 ]
  %16 = load ptr, ptr %12, align 8, !tbaa !92
  %17 = call i32 @RNA_property_type(ptr noundef %16) #16
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = call ptr @RNA_property_pointer_type(ptr noundef %0, ptr noundef %16) #16
  %21 = icmp eq ptr %20, @RNA_Struct
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef %16) #16
  %23 = call zeroext i8 @WM_operator_properties_default(ptr noundef nonnull %4, i8 noundef zeroext %1), !range !128
  %24 = or i8 %23, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  br label %33

25:                                               ; preds = %14
  br i1 %13, label %29, label %26

26:                                               ; preds = %25
  %27 = call zeroext i8 @RNA_property_is_set(ptr noundef %0, ptr noundef %16) #16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %25
  %30 = call zeroext i8 @RNA_property_reset(ptr noundef %0, ptr noundef %16, i32 noundef -1) #16
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i8 %15, i8 1
  br label %33

33:                                               ; preds = %29, %19, %22, %26
  %34 = phi i8 [ %15, %26 ], [ %24, %22 ], [ %15, %19 ], [ %32, %29 ]
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #16
  %35 = load i32, ptr %8, align 8, !tbaa !90
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %14, !llvm.loop !129

37:                                               ; preds = %33, %2
  %38 = phi i8 [ 0, %2 ], [ %34, %33 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #16
  ret i8 %38
}

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.CollectionPropertyIterator, align 8
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = tail call ptr @RNA_struct_iterator_property(ptr noundef %12) #16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %2) #16
  %14 = load ptr, ptr %3, align 8, !tbaa !68
  call void @RNA_property_collection_begin(ptr noundef %14, ptr noundef %13, ptr noundef nonnull %2) #16
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %2, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !90
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %2, i64 0, i32 6, i32 2
  br label %20

20:                                               ; preds = %18, %29
  %21 = load ptr, ptr %19, align 8, !tbaa.struct !130
  %22 = call i32 @RNA_property_flag(ptr noundef %21) #16
  %23 = and i32 %22, 268435456
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call ptr @RNA_property_identifier(ptr noundef %21) #16
  %27 = load ptr, ptr %3, align 8, !tbaa !68
  %28 = call zeroext i8 @RNA_struct_idprops_unset(ptr noundef %27, ptr noundef %26) #16
  br label %29

29:                                               ; preds = %25, %20
  call void @RNA_property_collection_next(ptr noundef nonnull %2) #16
  %30 = load i32, ptr %15, align 8, !tbaa !90
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %20, !llvm.loop !131

32:                                               ; preds = %29, %8
  call void @RNA_property_collection_end(ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %2) #16
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_idprops_unset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @IDP_ClearProperty(ptr noundef nonnull %3) #16
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

declare void @IDP_ClearProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 12
  %5 = load i16, ptr %4, align 8, !tbaa !77
  %6 = and i16 %5, 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %10 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call float @ED_view3d_grid_scale(ptr noundef %9, ptr noundef nonnull %10, ptr noundef null) #16
  br label %16

14:                                               ; preds = %8
  %15 = tail call float @ED_scene_grid_scale(ptr noundef %9, ptr noundef null) #16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #16
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  %22 = tail call ptr @RNA_struct_iterator_property(ptr noundef %21) #16
  call void @RNA_property_collection_begin(ptr noundef %19, ptr noundef %22, ptr noundef nonnull %3) #16
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !90
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6, i32 2
  br label %28

28:                                               ; preds = %26, %44
  %29 = load ptr, ptr %27, align 8, !tbaa !92
  %30 = call i32 @RNA_property_type(ptr noundef %29) #16
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = call i32 @RNA_property_subtype(ptr noundef %29) #16
  %34 = icmp eq i32 %33, 65554
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load ptr, ptr %18, align 8, !tbaa !68
  %37 = call zeroext i8 @RNA_property_is_set_ex(ptr noundef %36, ptr noundef %29, i8 noundef zeroext 0) #16
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr %18, align 8, !tbaa !68
  %41 = call float @RNA_property_float_get_default(ptr noundef %40, ptr noundef %29) #16
  %42 = fmul float %17, %41
  %43 = load ptr, ptr %18, align 8, !tbaa !68
  call void @RNA_property_float_set(ptr noundef %43, ptr noundef %29, float noundef %42) #16
  br label %44

44:                                               ; preds = %32, %39, %35, %28
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #16
  %45 = load i32, ptr %23, align 8, !tbaa !90
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %28, !llvm.loop !132

47:                                               ; preds = %44, %16
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #16
  br label %48

48:                                               ; preds = %47, %2
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare float @ED_view3d_grid_scale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_scene_grid_scale(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare float @RNA_property_float_get_default(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WM_operator_smooth_viewtx_get(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 12
  %3 = load i16, ptr %2, align 8, !tbaa !77
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 71), align 4
  %7 = select i1 %5, i16 0, i16 %6
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_menu_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @__func__.WM_menu_invoke, ptr noundef %11)
  br label %45

13:                                               ; preds = %3
  %14 = tail call i32 @RNA_property_type(ptr noundef nonnull %7) #16
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %4, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %7) #16
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull @__func__.WM_menu_invoke, ptr noundef %19, ptr noundef %20)
  br label %45

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %24, ptr noundef nonnull %7) #16
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %4, align 8, !tbaa !56
  br i1 %26, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.wmOperatorType, ptr %27, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = tail call i32 %30(ptr noundef %0, ptr noundef %1) #16
  br label %45

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.wmOperatorType, ptr %27, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !39
  %35 = tail call ptr @RNA_struct_ui_name(ptr noundef %34) #16
  %36 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %35, i32 noundef 0) #16
  %37 = tail call ptr @uiPupMenuLayout(ptr noundef %36) #16
  tail call void @uiLayoutSetOperatorContext(ptr noundef %37, i32 noundef 1) #16
  %38 = load ptr, ptr %4, align 8, !tbaa !56
  %39 = getelementptr inbounds %struct.wmOperatorType, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  %41 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %7) #16
  %42 = load ptr, ptr %23, align 8, !tbaa !68
  %43 = getelementptr inbounds %struct.PointerRNA, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !69
  tail call void @uiItemsFullEnumO(ptr noundef %37, ptr noundef %40, ptr noundef %41, ptr noundef %44, i32 noundef 7, i32 noundef 0) #16
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %36) #16
  br label %45

45:                                               ; preds = %9, %16, %32, %28
  %46 = phi i32 [ %31, %28 ], [ 32, %32 ], [ 2, %16 ], [ 2, %9 ]
  ret i32 %46
}

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemsFullEnumO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_enum_search_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  tail call void @uiPupBlock(ptr noundef %0, ptr noundef nonnull @wm_enum_search_menu, ptr noundef %1) #16
  ret i32 32
}

declare void @uiPupBlock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @wm_enum_search_menu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.wmEvent, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #16
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.174, i16 noundef signext 0) #16
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 133) #16
  %7 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = tail call i32 @uiSearchBoxWidth() #16
  %14 = trunc i32 %13 to i16
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %16 = tail call ptr @uiDefSearchButO_ptr(ptr noundef %6, ptr noundef %8, ptr noundef %12, ptr noundef nonnull @wm_enum_search_menu.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 10, i32 noundef 10, i16 noundef signext %14, i16 noundef signext %15, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #16
  %17 = tail call i32 @uiSearchBoxHeight() #16
  %18 = sub nsw i32 10, %17
  %19 = tail call i32 @uiSearchBoxWidth() #16
  %20 = trunc i32 %19 to i16
  %21 = tail call i32 @uiSearchBoxHeight() #16
  %22 = trunc i32 %21 to i16
  %23 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 10, i32 noundef %18, i16 noundef signext %20, i16 noundef signext %22, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #16
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %25 = sext i16 %24 to i32
  %26 = sub nsw i32 0, %25
  tail call void @uiPopupBoundsBlock(ptr noundef %6, i32 noundef 6, i32 noundef 0, i32 noundef %26) #16
  call void @wm_event_init_from_window(ptr noundef %5, ptr noundef nonnull %4) #16
  %27 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  store i16 20513, ptr %27, align 8, !tbaa !135
  %28 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  store i16 1, ptr %28, align 2, !tbaa !138
  %29 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  store ptr %16, ptr %29, align 8, !tbaa !139
  %30 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 26
  store i16 0, ptr %30, align 2, !tbaa !140
  call void @wm_event_add(ptr noundef %5, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #16
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_operator_confirm_message_ex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PointerRNA, align 8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.IDProperty, ptr %10, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !141
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %10) #16
  br label %18

18:                                               ; preds = %5, %12, %16
  %19 = phi ptr [ %17, %16 ], [ null, %12 ], [ null, %5 ]
  %20 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %2, i32 noundef %3) #16
  %21 = tail call ptr @uiPupMenuLayout(ptr noundef %20) #16
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %21, ptr noundef %23, ptr noundef %4, i32 noundef 0, ptr noundef %19, i32 noundef 7, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %20) #16
  ret i32 32
}

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_operator_confirm_message(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.IDProperty, ptr %8, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !141
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %8) #16
  br label %16

16:                                               ; preds = %3, %10, %14
  %17 = phi ptr [ %15, %14 ], [ null, %10 ], [ null, %3 ]
  %18 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef 1) #16
  %19 = tail call ptr @uiPupMenuLayout(ptr noundef %18) #16
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %19, ptr noundef %21, ptr noundef %2, i32 noundef 0, ptr noundef %17, i32 noundef 7, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %18) #16
  ret i32 32
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_operator_confirm(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.IDProperty, ptr %8, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !141
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %8) #16
  br label %16

16:                                               ; preds = %3, %10, %14
  %17 = phi ptr [ %15, %14 ], [ null, %10 ], [ null, %3 ]
  %18 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef 1) #16
  %19 = tail call ptr @uiPupMenuLayout(ptr noundef %18) #16
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %19, ptr noundef %21, ptr noundef null, i32 noundef 0, ptr noundef %17, i32 noundef 7, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %18) #16
  ret i32 32
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_operator_filesel(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.20) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @WM_operator_call_notest(ptr noundef %0, ptr noundef %1) #16
  br label %11

10:                                               ; preds = %3
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #16
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 1, %10 ]
  ret i32 %12
}

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_call_notest(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @WM_operator_filesel_ensure_ext_imtype(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %5, ptr noundef nonnull @.str.20) #16
  %7 = load ptr, ptr %4, align 8, !tbaa !68
  call void @RNA_property_string_get(ptr noundef %7, ptr noundef %6, ptr noundef nonnull %3) #16
  %8 = call i32 @BKE_add_image_extension(ptr noundef nonnull %3, ptr noundef %1) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !tbaa !68
  call void @RNA_property_string_set(ptr noundef %11, ptr noundef %6, ptr noundef nonnull %3) #16
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i8 [ 1, %10 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #16
  ret i8 %13
}

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_add_image_extension(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_filesel(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = zext i16 %4 to i32
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = tail call ptr @RNA_def_string_file_path(ptr noundef %12, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #16
  br label %14

14:                                               ; preds = %10, %6
  %15 = and i32 %7, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = tail call ptr @RNA_def_string_dir_path(ptr noundef %19, ptr noundef nonnull @.str.35, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #16
  br label %21

21:                                               ; preds = %17, %14
  %22 = and i32 %7, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = tail call ptr @RNA_def_string_file_name(ptr noundef %26, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #16
  br label %28

28:                                               ; preds = %24, %21
  %29 = and i32 %7, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = tail call ptr @RNA_def_collection_runtime(ptr noundef %33, ptr noundef nonnull @.str.41, ptr noundef nonnull @RNA_OperatorFileListElement, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2) #16
  br label %35

35:                                               ; preds = %31, %28
  %36 = icmp eq i16 %3, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  %40 = tail call ptr @RNA_def_boolean(ptr noundef %39, ptr noundef nonnull @.str.43, i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #16
  tail call void @RNA_def_property_flag(ptr noundef %40, i32 noundef 268959744) #16
  br label %41

41:                                               ; preds = %37, %35
  %42 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = and i32 %1, 4
  %45 = tail call ptr @RNA_def_boolean(ptr noundef %43, ptr noundef nonnull @.str.46, i32 noundef %44, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %45, i32 noundef 268959744) #16
  %46 = load ptr, ptr %42, align 8, !tbaa !39
  %47 = and i32 %1, 8
  %48 = tail call ptr @RNA_def_boolean(ptr noundef %46, ptr noundef nonnull @.str.48, i32 noundef %47, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %48, i32 noundef 268959744) #16
  %49 = load ptr, ptr %42, align 8, !tbaa !39
  %50 = and i32 %1, 16
  %51 = tail call ptr @RNA_def_boolean(ptr noundef %49, ptr noundef nonnull @.str.49, i32 noundef %50, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %51, i32 noundef 268959744) #16
  %52 = load ptr, ptr %42, align 8, !tbaa !39
  %53 = and i32 %1, 32
  %54 = tail call ptr @RNA_def_boolean(ptr noundef %52, ptr noundef nonnull @.str.51, i32 noundef %53, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %54, i32 noundef 268959744) #16
  %55 = load ptr, ptr %42, align 8, !tbaa !39
  %56 = and i32 %1, 64
  %57 = tail call ptr @RNA_def_boolean(ptr noundef %55, ptr noundef nonnull @.str.53, i32 noundef %56, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %57, i32 noundef 268959744) #16
  %58 = load ptr, ptr %42, align 8, !tbaa !39
  %59 = and i32 %1, 128
  %60 = tail call ptr @RNA_def_boolean(ptr noundef %58, ptr noundef nonnull @.str.55, i32 noundef %59, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %60, i32 noundef 268959744) #16
  %61 = load ptr, ptr %42, align 8, !tbaa !39
  %62 = and i32 %1, 256
  %63 = tail call ptr @RNA_def_boolean(ptr noundef %61, ptr noundef nonnull @.str.57, i32 noundef %62, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %63, i32 noundef 268959744) #16
  %64 = load ptr, ptr %42, align 8, !tbaa !39
  %65 = and i32 %1, 512
  %66 = tail call ptr @RNA_def_boolean(ptr noundef %64, ptr noundef nonnull @.str.59, i32 noundef %65, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %66, i32 noundef 268959744) #16
  %67 = load ptr, ptr %42, align 8, !tbaa !39
  %68 = and i32 %1, 4096
  %69 = tail call ptr @RNA_def_boolean(ptr noundef %67, ptr noundef nonnull @.str.61, i32 noundef %68, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %69, i32 noundef 268959744) #16
  %70 = load ptr, ptr %42, align 8, !tbaa !39
  %71 = and i32 %1, 8192
  %72 = tail call ptr @RNA_def_boolean(ptr noundef %70, ptr noundef nonnull @.str.63, i32 noundef %71, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %72, i32 noundef 268959744) #16
  %73 = load ptr, ptr %42, align 8, !tbaa !39
  %74 = and i32 %1, 2048
  %75 = tail call ptr @RNA_def_boolean(ptr noundef %73, ptr noundef nonnull @.str.65, i32 noundef %74, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %75, i32 noundef 268959744) #16
  %76 = load ptr, ptr %42, align 8, !tbaa !39
  %77 = sext i16 %2 to i32
  %78 = tail call ptr @RNA_def_int(ptr noundef %76, ptr noundef nonnull @.str.67, i32 noundef %77, i32 noundef 1, i32 noundef 9, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 1, i32 noundef 9) #16
  tail call void @RNA_def_property_flag(ptr noundef %78, i32 noundef 268959744) #16
  %79 = and i32 %7, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %41
  %82 = load ptr, ptr %42, align 8, !tbaa !39
  %83 = tail call ptr @RNA_def_boolean(ptr noundef %82, ptr noundef nonnull @.str.70, i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #16
  br label %84

84:                                               ; preds = %81, %41
  %85 = load ptr, ptr %42, align 8, !tbaa !39
  %86 = sext i16 %5 to i32
  %87 = tail call ptr @RNA_def_enum(ptr noundef %85, ptr noundef nonnull @.str.73, ptr noundef nonnull @WM_operator_properties_filesel.file_display_items, i32 noundef %86, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2) #16
  tail call void @RNA_def_property_flag(ptr noundef %87, i32 noundef 268959744) #16
  ret void
}

declare ptr @RNA_def_string_file_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_string_dir_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_string_file_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_select_action(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = tail call ptr @RNA_def_enum(ptr noundef %4, ptr noundef nonnull @.str.175, ptr noundef nonnull @WM_operator_properties_select_action.select_actions, i32 noundef %1, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_select_action_simple(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = tail call ptr @RNA_def_enum(ptr noundef %4, ptr noundef nonnull @.str.175, ptr noundef nonnull @WM_operator_properties_select_action_simple.select_actions, i32 noundef %1, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_select_all(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call ptr @RNA_def_enum(ptr noundef %3, ptr noundef nonnull @.str.175, ptr noundef nonnull @WM_operator_properties_select_action.select_actions, i32 noundef 0, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_border(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call ptr @RNA_def_int(ptr noundef %3, ptr noundef nonnull @.str.87, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #16
  tail call void @RNA_def_property_flag(ptr noundef %4, i32 noundef 268959744) #16
  %5 = load ptr, ptr %2, align 8, !tbaa !39
  %6 = tail call ptr @RNA_def_int(ptr noundef %5, ptr noundef nonnull @.str.89, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #16
  tail call void @RNA_def_property_flag(ptr noundef %6, i32 noundef 268959744) #16
  %7 = load ptr, ptr %2, align 8, !tbaa !39
  %8 = tail call ptr @RNA_def_int(ptr noundef %7, ptr noundef nonnull @.str.91, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #16
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268959744) #16
  %9 = load ptr, ptr %2, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.93, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #16
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268959744) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_border_to_rcti(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call i32 @RNA_int_get(ptr noundef %4, ptr noundef nonnull @.str.87) #16
  store i32 %5, ptr %1, align 4, !tbaa !144
  %6 = load ptr, ptr %3, align 8, !tbaa !68
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.91) #16
  %8 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  store i32 %7, ptr %8, align 4, !tbaa !145
  %9 = load ptr, ptr %3, align 8, !tbaa !68
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.89) #16
  %11 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !146
  %12 = load ptr, ptr %3, align 8, !tbaa !68
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.93) #16
  %14 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  store i32 %13, ptr %14, align 4, !tbaa !147
  ret void
}

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_border_to_rctf(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.87) #16
  store i32 %6, ptr %3, align 4, !tbaa !144
  %7 = load ptr, ptr %4, align 8, !tbaa !68
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.91) #16
  %9 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 %8, ptr %9, align 4, !tbaa !145
  %10 = load ptr, ptr %4, align 8, !tbaa !68
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.89) #16
  %12 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !146
  %13 = load ptr, ptr %4, align 8, !tbaa !68
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.93) #16
  %15 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !147
  call void @BLI_rctf_rcti_copy(ptr noundef %1, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void
}

declare void @BLI_rctf_rcti_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_gesture_border(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = tail call ptr @RNA_def_int(ptr noundef %4, ptr noundef nonnull @.str.95, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #16
  tail call void @WM_operator_properties_border(ptr noundef %0)
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !39
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.97, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #16
  br label %10

10:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_mouse_select(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call ptr @RNA_def_boolean(ptr noundef %3, ptr noundef nonnull @.str.97, i32 noundef 0, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #16
  tail call void @RNA_def_property_flag(ptr noundef %4, i32 noundef 268435456) #16
  %5 = load ptr, ptr %2, align 8, !tbaa !39
  %6 = tail call ptr @RNA_def_boolean(ptr noundef %5, ptr noundef nonnull @.str.100, i32 noundef 0, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.101) #16
  tail call void @RNA_def_property_flag(ptr noundef %6, i32 noundef 268435456) #16
  %7 = load ptr, ptr %2, align 8, !tbaa !39
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104) #16
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_properties_gesture_straightline(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = tail call ptr @RNA_def_int(ptr noundef %4, ptr noundef nonnull @.str.105, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #16
  tail call void @RNA_def_property_flag(ptr noundef %5, i32 noundef 268959744) #16
  %6 = load ptr, ptr %3, align 8, !tbaa !39
  %7 = tail call ptr @RNA_def_int(ptr noundef %6, ptr noundef nonnull @.str.107, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #16
  tail call void @RNA_def_property_flag(ptr noundef %7, i32 noundef 268959744) #16
  %8 = load ptr, ptr %3, align 8, !tbaa !39
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.109, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #16
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #16
  %10 = load ptr, ptr %3, align 8, !tbaa !39
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.111, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.2, i32 noundef -2147483648, i32 noundef 2147483647) #16
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268959744) #16
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8, !tbaa !39
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.113, i32 noundef %1, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef 0, i32 noundef 2147483647) #16
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 524288) #16
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_operator_winactive(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @WM_operator_check_ui_enabled(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = tail call i32 @ED_undo_valid(ptr noundef %0, ptr noundef %1) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @WM_jobs_test(ptr noundef %3, ptr noundef %4, i32 noundef 0) #16
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %7 ]
  ret i8 %12
}

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare i32 @ED_undo_valid(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_operator_last_redo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.wmOperator, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %9, i64 0, i32 19
  %11 = load i16, ptr %10, align 8, !tbaa !47
  %12 = and i16 %11, 3
  %13 = icmp eq i16 %12, 3
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.wmOperator, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !148

18:                                               ; preds = %14, %6, %1
  %19 = phi ptr [ %4, %1 ], [ %16, %14 ], [ %7, %6 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_operator_ui_popup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %6 = tail call ptr %5(i64 noundef 24, ptr noundef nonnull @.str.116) #16
  store ptr %1, ptr %6, align 8, !tbaa !149
  %7 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 1
  store i32 %2, ptr %7, align 8, !tbaa !151
  %8 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 2
  store i32 %3, ptr %8, align 4, !tbaa !152
  %9 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 3
  store i32 1, ptr %9, align 8, !tbaa !153
  tail call void @uiPupBlockEx(ptr noundef %0, ptr noundef nonnull @wm_operator_ui_create, ptr noundef null, ptr noundef nonnull @wm_operator_ui_popup_cancel, ptr noundef nonnull %6) #16
  ret i32 1
}

declare void @uiPupBlockEx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @wm_operator_ui_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !149
  %5 = tail call ptr @UI_GetStyle() #16
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.wm_operator_ui_create, i16 noundef signext 0) #16
  tail call void @uiBlockClearFlag(ptr noundef %6, i32 noundef 1) #16
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 384) #16
  %7 = getelementptr inbounds %struct.wmOpPopUp, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !151
  %9 = getelementptr inbounds %struct.wmOpPopUp, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !152
  %11 = tail call ptr @uiBlockLayout(ptr noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef %5) #16
  tail call void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %11, ptr noundef %4, ptr noundef null, i8 noundef zeroext 86, i16 noundef signext 0) #16
  tail call void @uiPopupBoundsBlock(ptr noundef %6, i32 noundef 4, i32 noundef 0, i32 noundef 0) #16
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal void @wm_operator_ui_popup_cancel(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !149
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void %9(ptr noundef %0, ptr noundef nonnull %3) #16
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct.wmOpPopUp, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !153
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @WM_operator_free(ptr noundef nonnull %3) #16
  br label %17

17:                                               ; preds = %12, %16, %2
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %18(ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_operator_props_popup_confirm(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 19
  %7 = load i16, ptr %6, align 8, !tbaa !47
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.178, ptr noundef %14) #16
  br label %24

15:                                               ; preds = %3
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %17 = sext i16 %16 to i32
  %18 = mul nsw i32 %17, 15
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %20 = tail call ptr %19(i64 noundef 24, ptr noundef nonnull @.str.117) #16
  store ptr %1, ptr %20, align 8, !tbaa !149
  %21 = getelementptr inbounds %struct.wmOpPopUp, ptr %20, i64 0, i32 1
  store i32 %18, ptr %21, align 8, !tbaa !151
  %22 = getelementptr inbounds %struct.wmOpPopUp, ptr %20, i64 0, i32 2
  store i32 %17, ptr %22, align 4, !tbaa !152
  %23 = getelementptr inbounds %struct.wmOpPopUp, ptr %20, i64 0, i32 3
  store i32 1, ptr %23, align 8, !tbaa !153
  tail call void @uiPupBlockEx(ptr noundef %0, ptr noundef nonnull @wm_block_dialog_create, ptr noundef nonnull @wm_operator_ui_popup_ok, ptr noundef nonnull @wm_operator_ui_popup_cancel, ptr noundef nonnull %20) #16
  br label %24

24:                                               ; preds = %10, %15
  %25 = phi i32 [ 2, %10 ], [ 1, %15 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @wm_operator_props_popup_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 19
  %8 = load i16, ptr %7, align 8, !tbaa !47
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.178, ptr noundef %16) #16
  br label %44

17:                                               ; preds = %4
  %18 = icmp ne i8 %3, 0
  %19 = and i32 %9, 2
  %20 = icmp eq i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.179, ptr noundef %26) #16
  br label %44

27:                                               ; preds = %17
  br i1 %18, label %28, label %32

28:                                               ; preds = %27
  %29 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !72
  %30 = and i32 %29, 8192
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28, %27
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %34 = sext i16 %33 to i32
  %35 = mul nsw i32 %34, 15
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %37 = tail call ptr %36(i64 noundef 24, ptr noundef nonnull @.str.117) #16
  store ptr %1, ptr %37, align 8, !tbaa !149
  %38 = getelementptr inbounds %struct.wmOpPopUp, ptr %37, i64 0, i32 1
  store i32 %35, ptr %38, align 8, !tbaa !151
  %39 = getelementptr inbounds %struct.wmOpPopUp, ptr %37, i64 0, i32 2
  store i32 %34, ptr %39, align 4, !tbaa !152
  %40 = getelementptr inbounds %struct.wmOpPopUp, ptr %37, i64 0, i32 3
  store i32 1, ptr %40, align 8, !tbaa !153
  tail call void @uiPupBlockEx(ptr noundef %0, ptr noundef nonnull @wm_block_dialog_create, ptr noundef nonnull @wm_operator_ui_popup_ok, ptr noundef nonnull @wm_operator_ui_popup_cancel, ptr noundef nonnull %37) #16
  br label %44

41:                                               ; preds = %28
  tail call void @uiPupBlockEx(ptr noundef %0, ptr noundef nonnull @wm_block_create_redo, ptr noundef null, ptr noundef nonnull @wm_block_redo_cancel_cb, ptr noundef %1) #16
  %42 = icmp eq i8 %2, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  tail call void @wm_block_redo_cb(ptr noundef %0, ptr noundef %1, i32 poison)
  br label %44

44:                                               ; preds = %41, %43, %32, %22, %12
  %45 = phi i32 [ 2, %12 ], [ 2, %22 ], [ 1, %32 ], [ 1, %43 ], [ 1, %41 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_operator_props_popup_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @wm_operator_props_popup_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1), !range !154
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @wm_operator_props_popup_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1), !range !154
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %6 = tail call ptr %5(i64 noundef 24, ptr noundef nonnull @.str.117) #16
  store ptr %1, ptr %6, align 8, !tbaa !149
  %7 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 1
  store i32 %2, ptr %7, align 8, !tbaa !151
  %8 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 2
  store i32 %3, ptr %8, align 4, !tbaa !152
  %9 = getelementptr inbounds %struct.wmOpPopUp, ptr %6, i64 0, i32 3
  store i32 1, ptr %9, align 8, !tbaa !153
  tail call void @uiPupBlockEx(ptr noundef %0, ptr noundef nonnull @wm_block_dialog_create, ptr noundef nonnull @wm_operator_ui_popup_ok, ptr noundef nonnull @wm_operator_ui_popup_cancel, ptr noundef nonnull %6) #16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @wm_block_dialog_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !149
  %5 = tail call ptr @UI_GetStyle() #16
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.wm_block_dialog_create, i16 noundef signext 0) #16
  tail call void @uiBlockClearFlag(ptr noundef %6, i32 noundef 1) #16
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 256) #16
  %7 = getelementptr inbounds %struct.wmOpPopUp, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !151
  %9 = getelementptr inbounds %struct.wmOpPopUp, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !152
  %11 = tail call ptr @uiBlockLayout(ptr noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef %5) #16
  tail call void @uiBlockSetFunc(ptr noundef %6, ptr noundef nonnull @dialog_check_cb, ptr noundef %4, ptr noundef null) #16
  tail call void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %11, ptr noundef %4, ptr noundef null, i8 noundef zeroext 72, i16 noundef signext 1) #16
  tail call void @uiBlockSetFunc(ptr noundef %6, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %12 = tail call ptr @uiLayoutColumn(ptr noundef %11, i32 noundef 0) #16
  %13 = tail call ptr @uiLayoutGetBlock(ptr noundef %12) #16
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %15 = tail call ptr @uiDefBut(ptr noundef %13, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.180, i32 noundef 0, i32 noundef -30, i16 noundef signext 0, i16 noundef signext %14, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #16
  tail call void @uiButSetFunc(ptr noundef %15, ptr noundef nonnull @dialog_exec_cb, ptr noundef nonnull %2, ptr noundef %13) #16
  %16 = load i32, ptr %7, align 8, !tbaa !151
  %17 = sdiv i32 %16, -2
  %18 = load i32, ptr %9, align 4, !tbaa !152
  %19 = sdiv i32 %18, 2
  tail call void @uiPopupBoundsBlock(ptr noundef %6, i32 noundef 4, i32 noundef %17, i32 noundef %19) #16
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal void @wm_operator_ui_popup_ok(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !149
  %5 = icmp ne ptr %4, null
  %6 = icmp sgt i32 %2, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @WM_operator_call_ex(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 1) #16
  br label %10

10:                                               ; preds = %8, %3
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %11(ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_operator_redo_popup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 19
  %6 = load i16, ptr %5, align 8, !tbaa !47
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = tail call ptr @CTX_wm_reports(ptr noundef %0) #16
  %11 = load ptr, ptr %3, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.118, ptr noundef %13) #16
  br label %27

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = tail call ptr @CTX_wm_reports(ptr noundef %0) #16
  %23 = load ptr, ptr %3, align 8, !tbaa !56
  %24 = getelementptr inbounds %struct.wmOperatorType, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.119, ptr noundef %25) #16
  br label %27

26:                                               ; preds = %18, %14
  tail call void @uiPupBlock(ptr noundef %0, ptr noundef nonnull @wm_block_create_redo, ptr noundef %1) #16
  br label %27

27:                                               ; preds = %26, %21, %9
  ret i32 2
}

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @wm_block_create_redo(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @UI_GetStyle() #16
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %6, 15
  %8 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.wm_block_create_redo, i16 noundef signext 0) #16
  tail call void @uiBlockClearFlag(ptr noundef %8, i32 noundef 1) #16
  tail call void @uiBlockSetFlag(ptr noundef %8, i32 noundef 384) #16
  tail call void @uiBlockSetHandleFunc(ptr noundef %8, ptr noundef nonnull @wm_block_redo_cb, ptr noundef %2) #16
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %10 = sext i16 %9 to i32
  %11 = tail call ptr @uiBlockLayout(ptr noundef %8, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %7, i32 noundef %10, i32 noundef 0, ptr noundef %4) #16
  %12 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %12, i64 0, i32 7, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !37
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %3, %24
  %17 = phi ptr [ %26, %24 ], [ %14, %3 ]
  %18 = getelementptr inbounds %struct.wmOperator, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.wmOperatorType, ptr %19, i64 0, i32 19
  %21 = load i16, ptr %20, align 8, !tbaa !47
  %22 = and i16 %21, 3
  %23 = icmp eq i16 %22, 3
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.wmOperator, ptr %17, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !148

28:                                               ; preds = %16, %24, %3
  %29 = phi ptr [ %14, %3 ], [ %17, %16 ], [ %26, %24 ]
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %36 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %37 = tail call i32 @ED_undo_valid(ptr noundef %0, ptr noundef %34) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = tail call zeroext i8 @WM_jobs_test(ptr noundef %35, ptr noundef %36, i32 noundef 0) #16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31, %39
  tail call void @uiLayoutSetEnabled(ptr noundef %11, i8 noundef zeroext 0) #16
  br label %43

43:                                               ; preds = %39, %42, %28
  %44 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  %46 = getelementptr inbounds %struct.wmOperatorType, ptr %45, i64 0, i32 19
  %47 = load i16, ptr %46, align 8, !tbaa !47
  %48 = and i16 %47, 8
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !37
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50, %54
  %55 = phi ptr [ %56, %54 ], [ %52, %50 ]
  tail call void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %55, ptr noundef null, i8 noundef zeroext 72, i16 noundef signext 1) #16
  %56 = load ptr, ptr %55, align 8, !tbaa !37
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %54, !llvm.loop !155

58:                                               ; preds = %43
  tail call void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %11, ptr noundef %2, ptr noundef null, i8 noundef zeroext 72, i16 noundef signext 1) #16
  br label %59

59:                                               ; preds = %54, %50, %58
  tail call void @uiPopupBoundsBlock(ptr noundef %8, i32 noundef 4, i32 noundef 0, i32 noundef 0) #16
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_recover_last_session(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #16
  %4 = tail call ptr @BLI_temp_dir_base() #16
  call void @BLI_make_file_string(ptr noundef nonnull @.str.120, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull @.str.121) #16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = call i32 @BLI_exists(ptr noundef nonnull %3) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %6, %2
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !156
  %11 = or i32 %10, 8388608
  store i32 %11, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !156
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #16
  call void @WM_file_autoexec_init(ptr noundef nonnull %3) #16
  %12 = call zeroext i8 @WM_file_read(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #16
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !156
  %14 = and i32 %13, -8388609
  store i32 %14, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !156
  %15 = load ptr, ptr @G, align 8, !tbaa !158
  %16 = getelementptr inbounds %struct.Main, ptr %15, i64 0, i32 2
  %17 = load i8, ptr %16, align 8, !tbaa !34
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 4), align 1, !tbaa !159
  br label %21

20:                                               ; preds = %9
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !160
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !161
  br label %21

21:                                               ; preds = %19, %20, %6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #16
  ret void
}

declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_temp_dir_base() local_unnamed_addr #2

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @WM_paint_cursor_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %6 = tail call ptr %5(i64 noundef 40, ptr noundef nonnull @.str.122) #16
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 11
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #16
  %8 = getelementptr inbounds %struct.wmPaintCursor, ptr %6, i64 0, i32 2
  store ptr %3, ptr %8, align 8, !tbaa !162
  %9 = getelementptr inbounds %struct.wmPaintCursor, ptr %6, i64 0, i32 3
  store ptr %1, ptr %9, align 8, !tbaa !164
  %10 = getelementptr inbounds %struct.wmPaintCursor, ptr %6, i64 0, i32 4
  store ptr %2, ptr %10, align 8, !tbaa !165
  ret ptr %6
}

; Function Attrs: nounwind uwtable
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
  br i1 %9, label %10, label %4, !llvm.loop !166

10:                                               ; preds = %8
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %6) #16
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %11(ptr noundef nonnull %6) #16
  br label %12

12:                                               ; preds = %4, %10
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_border_select_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !135
  %6 = add i16 %5, -20483
  %7 = icmp ult i16 %6, 14
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = select i1 %7, i32 2, i32 3
  %10 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef %2, i32 noundef %9) #16
  store ptr %10, ptr %8, align 8, !tbaa !54
  %11 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  ret i32 1
}

declare ptr @WM_gesture_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wm_gesture_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_border_select_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !135
  switch i16 %11, label %103 [
    i16 4, label %12
    i16 20514, label %48
  ]

12:                                               ; preds = %3
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %14 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !169
  call void @wm_subwindow_origin_get(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %16 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !170
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !171
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !172
  %26 = load i32, ptr %4, align 4, !tbaa !83
  %27 = sub nsw i32 %25, %26
  %28 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  store i32 %27, ptr %28, align 4, !tbaa !146
  store i32 %27, ptr %9, align 4, !tbaa !144
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !173
  %31 = load i32, ptr %5, align 4, !tbaa !83
  %32 = sub nsw i32 %30, %31
  %33 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  store i32 %32, ptr %33, align 4, !tbaa !147
  %34 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  store i32 %32, ptr %34, align 4, !tbaa !145
  br label %46

35:                                               ; preds = %19, %12
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !172
  %38 = load i32, ptr %4, align 4, !tbaa !83
  %39 = sub nsw i32 %37, %38
  %40 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !146
  %41 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !173
  %43 = load i32, ptr %5, align 4, !tbaa !83
  %44 = sub nsw i32 %42, %43
  %45 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  store i32 %44, ptr %45, align 4, !tbaa !147
  br label %46

46:                                               ; preds = %35, %23
  %47 = call fastcc i32 @border_apply_rect(ptr noundef %1), !range !174
  call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  br label %103

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %50 = load i16, ptr %49, align 2, !tbaa !138
  switch i16 %50, label %103 [
    i16 8, label %51
    i16 3, label %60
    i16 4, label %60
    i16 9, label %60
    i16 10, label %60
    i16 1, label %95
  ]

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !170
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %103

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !171
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %55
  store i32 1, ptr %56, align 4, !tbaa !171
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  br label %103

60:                                               ; preds = %48, %48, %48, %48
  %61 = sext i16 %50 to i32
  %62 = tail call fastcc i32 @border_apply_rect(ptr noundef %1), !range !174
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !68
  %67 = tail call ptr @RNA_struct_find_property(ptr noundef %66, ptr noundef nonnull @.str.95) #16
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %65, align 8, !tbaa !68
  tail call void @RNA_int_set(ptr noundef %70, ptr noundef nonnull @.str.95, i32 noundef %61) #16
  br label %71

71:                                               ; preds = %69, %64
  %72 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !56
  %74 = getelementptr inbounds %struct.wmOperatorType, ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !48
  %76 = tail call i32 %75(ptr noundef %0, ptr noundef %1) #16
  br i1 %63, label %86, label %77

77:                                               ; preds = %71
  %78 = load ptr, ptr %6, align 8, !tbaa !54
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %78) #16
  store ptr null, ptr %6, align 8, !tbaa !54
  %79 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %79) #16
  %80 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !68
  %82 = tail call ptr @RNA_struct_find_property(ptr noundef %81, ptr noundef nonnull @.str.113) #16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %103, label %84

84:                                               ; preds = %77
  %85 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %85) #16
  br label %103

86:                                               ; preds = %60, %71
  %87 = load ptr, ptr %6, align 8, !tbaa !54
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %87) #16
  store ptr null, ptr %6, align 8, !tbaa !54
  %88 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %88) #16
  %89 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !68
  %91 = tail call ptr @RNA_struct_find_property(ptr noundef %90, ptr noundef nonnull @.str.113) #16
  %92 = icmp eq ptr %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %86
  %94 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %94) #16
  br label %103

95:                                               ; preds = %48
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %7) #16
  store ptr null, ptr %6, align 8, !tbaa !54
  %96 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %96) #16
  %97 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %98 = load ptr, ptr %97, align 8, !tbaa !68
  %99 = tail call ptr @RNA_struct_find_property(ptr noundef %98, ptr noundef nonnull @.str.113) #16
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %102) #16
  br label %103

103:                                              ; preds = %101, %95, %93, %86, %84, %77, %46, %48, %59, %55, %51, %3
  %104 = phi i32 [ 1, %3 ], [ 1, %51 ], [ 1, %55 ], [ 1, %59 ], [ 1, %48 ], [ 1, %46 ], [ 4, %77 ], [ 4, %84 ], [ 2, %86 ], [ 2, %93 ], [ 2, %95 ], [ 2, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %104
}

declare void @wm_subwindow_origin_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @border_apply_rect(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmGesture, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = load i32, ptr %5, align 4, !tbaa !144
  %7 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !146
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %32, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !145
  %13 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !147
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = tail call i32 @llvm.smin.i32(i32 %6, i32 %8)
  tail call void @RNA_int_set(ptr noundef %18, ptr noundef nonnull @.str.87, i32 noundef %19) #16
  %20 = load ptr, ptr %17, align 8, !tbaa !68
  %21 = load i32, ptr %11, align 4, !tbaa !145
  %22 = load i32, ptr %13, align 4, !tbaa !147
  %23 = tail call i32 @llvm.smin.i32(i32 %21, i32 %22)
  tail call void @RNA_int_set(ptr noundef %20, ptr noundef nonnull @.str.91, i32 noundef %23) #16
  %24 = load ptr, ptr %17, align 8, !tbaa !68
  %25 = load i32, ptr %5, align 4, !tbaa !144
  %26 = load i32, ptr %7, align 4, !tbaa !146
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 %25)
  tail call void @RNA_int_set(ptr noundef %24, ptr noundef nonnull @.str.89, i32 noundef %27) #16
  %28 = load ptr, ptr %17, align 8, !tbaa !68
  %29 = load i32, ptr %11, align 4, !tbaa !145
  %30 = load i32, ptr %13, align 4, !tbaa !147
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 %29)
  tail call void @RNA_int_set(ptr noundef %28, ptr noundef nonnull @.str.93, i32 noundef %31) #16
  br label %32

32:                                               ; preds = %1, %10, %16
  %33 = phi i32 [ 1, %16 ], [ 0, %10 ], [ 0, %1 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_border_select_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %4) #16
  store ptr null, ptr %3, align 8, !tbaa !54
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.113) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %11) #16
  br label %12

12:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_gesture_circle_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef %2, i32 noundef 5) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !54
  %6 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_gesture_circle_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !135
  switch i16 %11, label %92 [
    i16 4, label %12
    i16 20514, label %29
  ]

12:                                               ; preds = %3
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %14 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !169
  call void @wm_subwindow_origin_get(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !172
  %18 = load i32, ptr %4, align 4, !tbaa !83
  %19 = sub nsw i32 %17, %18
  store i32 %19, ptr %9, align 4, !tbaa !144
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !173
  %22 = load i32, ptr %5, align 4, !tbaa !83
  %23 = sub nsw i32 %21, %22
  %24 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  store i32 %23, ptr %24, align 4, !tbaa !145
  call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  %25 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !171
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %92, label %28

28:                                               ; preds = %12
  call fastcc void @gesture_circle_apply(ptr noundef %0, ptr noundef %1)
  br label %92

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !138
  switch i16 %31, label %92 [
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
  %34 = load i32, ptr %33, align 8, !tbaa !173
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %36 = load i32, ptr %35, align 4, !tbaa !175
  %37 = sub nsw i32 %34, %36
  %38 = sitofp i32 %37 to float
  %39 = fmul float %38, 0x3FD3333340000000
  %40 = fcmp ogt float %39, 0.000000e+00
  %41 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !146
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
  store i32 %52, ptr %41, align 4, !tbaa !146
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  store i32 1, ptr %55, align 4, !tbaa !146
  br label %56

56:                                               ; preds = %54, %48
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  br label %92

57:                                               ; preds = %29
  %58 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !146
  %60 = sdiv i32 %59, 10
  %61 = add i32 %59, 2
  %62 = add i32 %61, %60
  store i32 %62, ptr %58, align 4, !tbaa !146
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  br label %92

63:                                               ; preds = %29
  %64 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !146
  %66 = sdiv i32 %65, -10
  %67 = add i32 %65, -2
  %68 = add i32 %67, %66
  %69 = tail call i32 @llvm.smax.i32(i32 %68, i32 1)
  store i32 %69, ptr %64, align 4, !tbaa !146
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  br label %92

70:                                               ; preds = %29, %29, %29
  %71 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !68
  %73 = tail call ptr @RNA_struct_find_property(ptr noundef %72, ptr noundef nonnull @.str.95) #16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %71, align 8, !tbaa !68
  %77 = load i16, ptr %30, align 2, !tbaa !138
  %78 = sext i16 %77 to i32
  tail call void @RNA_int_set(ptr noundef %76, ptr noundef nonnull @.str.95, i32 noundef %78) #16
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i16, ptr %30, align 2, !tbaa !138
  %81 = icmp eq i16 %80, 5
  br i1 %81, label %92, label %82

82:                                               ; preds = %79
  tail call fastcc void @gesture_circle_apply(ptr noundef %0, ptr noundef %1)
  %83 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  store i32 1, ptr %83, align 4, !tbaa !171
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  br label %92

84:                                               ; preds = %29, %29
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %7) #16
  store ptr null, ptr %6, align 8, !tbaa !54
  %85 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %85) #16
  %86 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !68
  %88 = tail call ptr @RNA_struct_find_property(ptr noundef %87, ptr noundef nonnull @.str.113) #16
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %91) #16
  br label %92

92:                                               ; preds = %90, %84, %28, %12, %3, %56, %57, %63, %29, %82, %79
  %93 = phi i32 [ 1, %79 ], [ 1, %82 ], [ 1, %29 ], [ 1, %63 ], [ 1, %57 ], [ 1, %56 ], [ 1, %3 ], [ 1, %12 ], [ 1, %28 ], [ 4, %84 ], [ 4, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gesture_circle_apply(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmGesture, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !167
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.95) #16
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %7, align 8, !tbaa !68
  %13 = load i32, ptr %6, align 4, !tbaa !144
  tail call void @RNA_int_set(ptr noundef %12, ptr noundef nonnull @.str.181, i32 noundef %13) #16
  %14 = load ptr, ptr %7, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !145
  tail call void @RNA_int_set(ptr noundef %14, ptr noundef nonnull @.str.182, i32 noundef %16) #16
  %17 = load ptr, ptr %7, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !146
  tail call void @RNA_int_set(ptr noundef %17, ptr noundef nonnull @.str.183, i32 noundef %19) #16
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = getelementptr inbounds %struct.wmOperatorType, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %11
  %26 = tail call i32 %23(ptr noundef %0, ptr noundef %1) #16
  br label %27

27:                                               ; preds = %25, %11
  %28 = load i32, ptr %18, align 4, !tbaa !146
  store i32 %28, ptr @circle_select_size, align 4, !tbaa !83
  br label %29

29:                                               ; preds = %2, %27
  ret void
}

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_gesture_circle_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %4) #16
  store ptr null, ptr %3, align 8, !tbaa !54
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.113) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %11) #16
  br label %12

12:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_tweakevent_test(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmEvent, align 8
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %85, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !138
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %85

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !135
  %21 = add i16 %20, -1
  %22 = icmp ult i16 %21, 3
  br i1 %22, label %23, label %85

23:                                               ; preds = %18
  %24 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef %1, i32 noundef 0) #16
  store ptr %24, ptr %8, align 8, !tbaa !176
  br label %85

25:                                               ; preds = %3
  %26 = and i32 %2, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef nonnull %9) #16
  br label %85

29:                                               ; preds = %25
  %30 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %31 = getelementptr inbounds %struct.wmWindow, ptr %30, i64 0, i32 23
  %32 = load ptr, ptr %31, align 8, !tbaa !176
  %33 = getelementptr inbounds %struct.wmGesture, ptr %32, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %35 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %36 = load i16, ptr %35, align 8, !tbaa !135
  switch i16 %36, label %78 [
    i16 4, label %37
    i16 17, label %37
    i16 1, label %71
    i16 3, label %71
    i16 2, label %71
  ]

37:                                               ; preds = %29, %29
  %38 = getelementptr inbounds %struct.wmGesture, ptr %32, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !169
  call void @wm_subwindow_origin_get(ptr noundef %30, i32 noundef %39, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %40 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !172
  %42 = load i32, ptr %4, align 4, !tbaa !83
  %43 = sub nsw i32 %41, %42
  %44 = getelementptr inbounds %struct.rcti, ptr %34, i64 0, i32 1
  store i32 %43, ptr %44, align 4, !tbaa !146
  %45 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !173
  %47 = load i32, ptr %5, align 4, !tbaa !83
  %48 = sub nsw i32 %46, %47
  %49 = getelementptr inbounds %struct.rcti, ptr %34, i64 0, i32 3
  store i32 %48, ptr %49, align 4, !tbaa !147
  %50 = call i32 @wm_gesture_evaluate(ptr noundef %32) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %84, label %52

52:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #16
  call void @wm_event_init_from_window(ptr noundef %30, ptr noundef nonnull %6) #16
  %53 = load i32, ptr %34, align 4, !tbaa !144
  %54 = load i32, ptr %4, align 4, !tbaa !83
  %55 = add nsw i32 %54, %53
  %56 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  store i32 %55, ptr %56, align 4, !tbaa !172
  %57 = getelementptr inbounds %struct.rcti, ptr %34, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !145
  %59 = load i32, ptr %5, align 4, !tbaa !83
  %60 = add nsw i32 %59, %58
  %61 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  store i32 %60, ptr %61, align 8, !tbaa !173
  %62 = getelementptr inbounds %struct.wmGesture, ptr %32, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !178
  %64 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  %65 = icmp eq i32 %63, 3
  %66 = select i1 %65, i16 20485, i16 20484
  %67 = icmp eq i32 %63, 1
  %68 = select i1 %67, i16 20483, i16 %66
  store i16 %68, ptr %64, align 8, !tbaa !135
  %69 = trunc i32 %50 to i16
  %70 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 %69, ptr %70, align 2, !tbaa !138
  call void @wm_event_add(ptr noundef %30, ptr noundef nonnull %6) #16
  call void @WM_gesture_end(ptr noundef %0, ptr noundef %32) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #16
  br label %84

71:                                               ; preds = %29, %29, %29
  %72 = getelementptr inbounds %struct.wmGesture, ptr %32, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !178
  %74 = sext i16 %36 to i32
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %32) #16
  %77 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  store i16 2, ptr %77, align 2, !tbaa !138
  br label %84

78:                                               ; preds = %29
  %79 = and i16 %36, -16
  %80 = icmp eq i16 %79, 272
  %81 = icmp eq i16 %36, 0
  %82 = or i1 %81, %80
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %32) #16
  br label %84

84:                                               ; preds = %37, %52, %71, %76, %78, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %85

85:                                               ; preds = %18, %28, %84, %11, %23, %14
  ret void
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @WM_gesture_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_gesture_lasso_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef %2, i32 noundef 4) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !54
  %6 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.113) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %13 = load ptr, ptr %7, align 8, !tbaa !68
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.113) #16
  tail call void @WM_cursor_modal_set(ptr noundef %12, i32 noundef %14) #16
  br label %15

15:                                               ; preds = %11, %3
  ret i32 1
}

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_gesture_lines_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef %2, i32 noundef 1) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !54
  %6 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.113) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %13 = load ptr, ptr %7, align 8, !tbaa !68
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.113) #16
  tail call void @WM_cursor_modal_set(ptr noundef %12, i32 noundef %14) #16
  br label %15

15:                                               ; preds = %11, %3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_gesture_lasso_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !135
  switch i16 %11, label %120 [
    i16 4, label %12
    i16 17, label %12
    i16 1, label %68
    i16 2, label %68
    i16 3, label %68
    i16 218, label %112
  ]

12:                                               ; preds = %3, %3
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %14 = getelementptr inbounds %struct.wmGesture, ptr %9, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !169
  call void @wm_subwindow_origin_get(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %16 = getelementptr inbounds %struct.wmGesture, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !179
  %18 = getelementptr inbounds %struct.wmGesture, ptr %9, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !180
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.wmGesture, ptr %9, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !167
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %25 = add nsw i32 %19, 1024
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  %28 = call ptr %24(i64 noundef %27, ptr noundef nonnull @.str.123) #16
  store ptr %28, ptr %22, align 8, !tbaa !167
  %29 = load i32, ptr %18, align 4, !tbaa !180
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 2 %23, i64 %31, i1 false)
  %32 = load i32, ptr %18, align 4, !tbaa !180
  %33 = add nsw i32 %32, 1024
  store i32 %33, ptr %18, align 4, !tbaa !180
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %34(ptr noundef %23) #16
  br label %35

35:                                               ; preds = %21, %12
  %36 = getelementptr inbounds %struct.wmGesture, ptr %9, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !167
  %38 = load i32, ptr %16, align 8, !tbaa !179
  %39 = shl nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr i16, ptr %37, i64 %40
  %42 = getelementptr i16, ptr %41, i64 -2
  %43 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !172
  %45 = load i32, ptr %6, align 4, !tbaa !83
  %46 = sub nsw i32 %44, %45
  %47 = load i16, ptr %42, align 2, !tbaa !104
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 %46, %48
  %50 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !173
  %52 = load i32, ptr %7, align 4, !tbaa !83
  %53 = getelementptr i16, ptr %41, i64 -1
  %54 = load i16, ptr %53, align 2, !tbaa !104
  %55 = sext i16 %54 to i32
  %56 = add i32 %52, %55
  %57 = sub i32 %51, %56
  %58 = mul nsw i32 %49, %49
  %59 = mul nsw i32 %57, %57
  %60 = add nuw nsw i32 %59, %58
  %61 = icmp ugt i32 %60, 4
  br i1 %61, label %62, label %120

62:                                               ; preds = %35
  %63 = trunc i32 %46 to i16
  store i16 %63, ptr %41, align 2, !tbaa !104
  %64 = sub nsw i32 %51, %52
  %65 = trunc i32 %64 to i16
  %66 = getelementptr inbounds i16, ptr %41, i64 1
  store i16 %65, ptr %66, align 2, !tbaa !104
  %67 = add nsw i32 %38, 1
  store i32 %67, ptr %16, align 8, !tbaa !179
  br label %120

68:                                               ; preds = %3, %3, %3
  %69 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %70 = load i16, ptr %69, align 2, !tbaa !138
  %71 = icmp eq i16 %70, 2
  br i1 %71, label %72, label %120

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %73 = getelementptr inbounds %struct.wmGesture, ptr %9, i64 0, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !167
  %75 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  tail call void @RNA_collection_clear(ptr noundef %76, ptr noundef nonnull @.str.124) #16
  %77 = getelementptr inbounds %struct.wmGesture, ptr %9, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !179
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %72
  %81 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i32 [ 0, %80 ], [ %91, %82 ]
  %84 = phi ptr [ %74, %80 ], [ %92, %82 ]
  %85 = load i16, ptr %84, align 2, !tbaa !104
  %86 = sitofp i16 %85 to float
  store float %86, ptr %5, align 4, !tbaa !181
  %87 = getelementptr inbounds i16, ptr %84, i64 1
  %88 = load i16, ptr %87, align 2, !tbaa !104
  %89 = sitofp i16 %88 to float
  store float %89, ptr %81, align 4, !tbaa !181
  %90 = load ptr, ptr %75, align 8, !tbaa !68
  call void @RNA_collection_add(ptr noundef %90, ptr noundef nonnull @.str.124, ptr noundef nonnull %4) #16
  call void @RNA_float_set_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.125, ptr noundef nonnull %5) #16
  %91 = add nuw nsw i32 %83, 1
  %92 = getelementptr inbounds i16, ptr %84, i64 2
  %93 = load i32, ptr %77, align 8, !tbaa !179
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %82, label %95, !llvm.loop !182

95:                                               ; preds = %82, %72
  %96 = load ptr, ptr %8, align 8, !tbaa !54
  call void @WM_gesture_end(ptr noundef %0, ptr noundef %96) #16
  store ptr null, ptr %8, align 8, !tbaa !54
  %97 = call ptr @CTX_wm_area(ptr noundef %0) #16
  call void @ED_area_tag_redraw(ptr noundef %97) #16
  %98 = load ptr, ptr %75, align 8, !tbaa !68
  %99 = call ptr @RNA_struct_find_property(ptr noundef %98, ptr noundef nonnull @.str.113) #16
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = call ptr @CTX_wm_window(ptr noundef %0) #16
  call void @WM_cursor_modal_restore(ptr noundef %102) #16
  br label %103

103:                                              ; preds = %95, %101
  %104 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !56
  %106 = getelementptr inbounds %struct.wmOperatorType, ptr %105, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !48
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = call i32 %107(ptr noundef %0, ptr noundef %1) #16
  br label %111

111:                                              ; preds = %103, %109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  br label %120

112:                                              ; preds = %3
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %9) #16
  store ptr null, ptr %8, align 8, !tbaa !54
  %113 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %113) #16
  %114 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %115 = load ptr, ptr %114, align 8, !tbaa !68
  %116 = tail call ptr @RNA_struct_find_property(ptr noundef %115, ptr noundef nonnull @.str.113) #16
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %119) #16
  br label %120

120:                                              ; preds = %118, %112, %3, %68, %62, %35, %111
  %121 = phi i32 [ 4, %111 ], [ 1, %35 ], [ 1, %62 ], [ 1, %68 ], [ 1, %3 ], [ 2, %112 ], [ 2, %118 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_gesture_lines_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @WM_gesture_lasso_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2), !range !183
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_gesture_lasso_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %4) #16
  store ptr null, ptr %3, align 8, !tbaa !54
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.113) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %11) #16
  br label %12

12:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_gesture_lines_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %4) #16
  store ptr null, ptr %3, align 8, !tbaa !54
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.113) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %11) #16
  br label %12

12:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_gesture_lasso_path_to_array(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.124) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 8, !tbaa !68
  %13 = tail call i32 @RNA_property_collection_length(ptr noundef %12, ptr noundef nonnull %9) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %17 = sext i32 %13 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @__func__.WM_gesture_lasso_path_to_array) #16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #16
  %20 = load ptr, ptr %7, align 8, !tbaa !68
  call void @RNA_property_collection_begin(ptr noundef %20, ptr noundef nonnull %9, ptr noundef nonnull %4) #16
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !90
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %26 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i64 [ 0, %24 ], [ %35, %27 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %25, i64 24, i1 false), !tbaa.struct !184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @RNA_float_get_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.125, ptr noundef nonnull %6) #16
  %29 = load float, ptr %6, align 4, !tbaa !181
  %30 = fptosi float %29 to i32
  %31 = getelementptr inbounds [2 x i32], ptr %19, i64 %28
  store i32 %30, ptr %31, align 4, !tbaa !83
  %32 = load float, ptr %26, align 4, !tbaa !181
  %33 = fptosi float %32 to i32
  %34 = getelementptr inbounds [2 x i32], ptr %19, i64 %28, i64 1
  store i32 %33, ptr %34, align 4, !tbaa !83
  %35 = add nuw i64 %28, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #16
  %36 = load i32, ptr %21, align 8, !tbaa !90
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %27, !llvm.loop !185

38:                                               ; preds = %27, %15
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #16
  br label %39

39:                                               ; preds = %3, %11, %38
  %40 = phi i32 [ %13, %38 ], [ %13, %11 ], [ 0, %3 ]
  %41 = phi ptr [ %19, %38 ], [ null, %11 ], [ null, %3 ]
  store i32 %40, ptr %2, align 4, !tbaa !83
  ret ptr %41
}

declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_gesture_straightline_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @WM_gesture_new(ptr noundef %0, ptr noundef %2, i32 noundef 6) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !54
  %6 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.113) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %13 = load ptr, ptr %7, align 8, !tbaa !68
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.113) #16
  tail call void @WM_cursor_modal_set(ptr noundef %12, i32 noundef %14) #16
  br label %15

15:                                               ; preds = %11, %3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @WM_gesture_straightline_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !135
  switch i16 %11, label %70 [
    i16 4, label %12
    i16 20514, label %39
  ]

12:                                               ; preds = %3
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %14 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !169
  call void @wm_subwindow_origin_get(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %16 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !171
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !172
  %21 = load i32, ptr %4, align 4, !tbaa !83
  %22 = sub nsw i32 %20, %21
  %23 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !146
  br i1 %18, label %24, label %31

24:                                               ; preds = %12
  store i32 %22, ptr %9, align 4, !tbaa !144
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !173
  %27 = load i32, ptr %5, align 4, !tbaa !83
  %28 = sub nsw i32 %26, %27
  %29 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  store i32 %28, ptr %29, align 4, !tbaa !147
  %30 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  store i32 %28, ptr %30, align 4, !tbaa !145
  br label %38

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !173
  %34 = load i32, ptr %5, align 4, !tbaa !83
  %35 = sub nsw i32 %33, %34
  %36 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  store i32 %35, ptr %36, align 4, !tbaa !147
  %37 = call fastcc i32 @straightline_apply(ptr noundef %0, ptr noundef %1), !range !174
  br label %38

38:                                               ; preds = %31, %24
  call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  br label %70

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !138
  switch i16 %41, label %70 [
    i16 8, label %42
    i16 3, label %47
    i16 1, label %62
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.wmGesture, ptr %7, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !171
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  store i32 1, ptr %43, align 4, !tbaa !171
  tail call void @wm_gesture_tag_redraw(ptr noundef %0) #16
  br label %70

47:                                               ; preds = %39
  %48 = tail call fastcc i32 @straightline_apply(ptr noundef %0, ptr noundef %1), !range !174
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr %6, align 8, !tbaa !54
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %50) #16
  store ptr null, ptr %6, align 8, !tbaa !54
  %51 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %51) #16
  %52 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = tail call ptr @RNA_struct_find_property(ptr noundef %53, ptr noundef nonnull @.str.113) #16
  %55 = icmp eq ptr %54, null
  br i1 %49, label %59, label %56

56:                                               ; preds = %47
  br i1 %55, label %70, label %57

57:                                               ; preds = %56
  %58 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %58) #16
  br label %70

59:                                               ; preds = %47
  br i1 %55, label %70, label %60

60:                                               ; preds = %59
  %61 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %61) #16
  br label %70

62:                                               ; preds = %39
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %7) #16
  store ptr null, ptr %6, align 8, !tbaa !54
  %63 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %63) #16
  %64 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !68
  %66 = tail call ptr @RNA_struct_find_property(ptr noundef %65, ptr noundef nonnull @.str.113) #16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %69) #16
  br label %70

70:                                               ; preds = %68, %62, %60, %59, %57, %56, %38, %39, %46, %42, %3
  %71 = phi i32 [ 1, %3 ], [ 1, %42 ], [ 1, %46 ], [ 1, %39 ], [ 1, %38 ], [ 4, %56 ], [ 4, %57 ], [ 2, %59 ], [ 2, %60 ], [ 2, %62 ], [ 2, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @straightline_apply(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmGesture, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !167
  %7 = load i32, ptr %6, align 4, !tbaa !144
  %8 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !146
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !145
  %14 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !147
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %11, %2
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  tail call void @RNA_int_set(ptr noundef %19, ptr noundef nonnull @.str.105, i32 noundef %7) #16
  %20 = load ptr, ptr %18, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !145
  tail call void @RNA_int_set(ptr noundef %20, ptr noundef nonnull @.str.109, i32 noundef %22) #16
  %23 = load ptr, ptr %18, align 8, !tbaa !68
  %24 = load i32, ptr %8, align 4, !tbaa !146
  tail call void @RNA_int_set(ptr noundef %23, ptr noundef nonnull @.str.107, i32 noundef %24) #16
  %25 = load ptr, ptr %18, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !147
  tail call void @RNA_int_set(ptr noundef %25, ptr noundef nonnull @.str.111, i32 noundef %27) #16
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.wmOperatorType, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %17
  %34 = tail call i32 %31(ptr noundef %0, ptr noundef %1) #16
  br label %35

35:                                               ; preds = %17, %33, %11
  %36 = phi i32 [ 0, %11 ], [ 1, %33 ], [ 1, %17 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_gesture_straightline_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @WM_gesture_end(ptr noundef %0, ptr noundef %4) #16
  store ptr null, ptr %3, align 8, !tbaa !54
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_tag_redraw(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.113) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @WM_cursor_modal_restore(ptr noundef %11) #16
  br label %12

12:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_operatortype_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  tail call void @BLI_ghash_free(ptr noundef %1, ptr noundef null, ptr noundef nonnull @operatortype_ghash_free_cb) #16
  store ptr null, ptr @global_ops_hash, align 8, !tbaa !37
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @operatortype_ghash_free_cb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @IDP_FreeProperty(ptr noundef nonnull %3) #16
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %7 = load ptr, ptr %2, align 8, !tbaa !94
  tail call void %6(ptr noundef %7) #16
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8, %26
  %13 = phi ptr [ %27, %26 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.PointerRNA, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  tail call void @IDP_FreeProperty(ptr noundef nonnull %19) #16
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %22(ptr noundef nonnull %19) #16
  store ptr null, ptr %18, align 8, !tbaa !69
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %25 = load ptr, ptr %14, align 8, !tbaa !87
  tail call void %24(ptr noundef %25) #16
  br label %26

26:                                               ; preds = %23, %12
  %27 = load ptr, ptr %13, align 8, !tbaa !37
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !95

29:                                               ; preds = %26
  tail call void @BLI_freelistN(ptr noundef nonnull %9) #16
  br label %30

30:                                               ; preds = %29, %8
  %31 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 18, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %36 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  tail call void %35(ptr noundef %37) #16
  br label %38

38:                                               ; preds = %34, %30
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %39(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_operatortype_init() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_ghash_str_new_ex(ptr noundef nonnull @.str.126, i32 noundef 2048) #16
  store ptr %1, ptr @global_ops_hash, align 8, !tbaa !37
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %3 = tail call ptr %2(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %4 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 11
  store ptr %4, ptr %5, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %4, ptr noundef nonnull @.str.3) #16
  store ptr @.str.184, ptr %3, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 1
  store ptr @.str.128, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 3
  store ptr @.str.185, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 4
  store ptr @wm_window_duplicate_exec, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 9
  store ptr @wm_operator_winactive_normal, ptr %9, align 8, !tbaa !52
  %10 = load ptr, ptr %5, align 8, !tbaa !39
  %11 = load ptr, ptr %3, align 8, !tbaa !44
  %12 = load ptr, ptr %7, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str.6, ptr %12
  tail call void @RNA_def_struct_ui_text(ptr noundef %10, ptr noundef %11, ptr noundef nonnull %14) #16
  %15 = load ptr, ptr %5, align 8, !tbaa !39
  %16 = load ptr, ptr %6, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %15, ptr noundef %16) #16
  %17 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %18 = load ptr, ptr %6, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %17, ptr noundef %18, ptr noundef nonnull %3) #16
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %20 = tail call ptr %19(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %21 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %22 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 11
  store ptr %21, ptr %22, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %21, ptr noundef nonnull @.str.3) #16
  store ptr @.str.186, ptr %20, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 1
  store ptr @.str.187, ptr %23, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 3
  store ptr @.str.188, ptr %24, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %25, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 4
  store ptr @wm_history_read_exec, ptr %26, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 19
  store i16 64, ptr %27, align 8, !tbaa !47
  %28 = load ptr, ptr %22, align 8, !tbaa !39
  %29 = load ptr, ptr %20, align 8, !tbaa !44
  %30 = load ptr, ptr %24, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @.str.6, ptr %30
  tail call void @RNA_def_struct_ui_text(ptr noundef %28, ptr noundef %29, ptr noundef nonnull %32) #16
  %33 = load ptr, ptr %22, align 8, !tbaa !39
  %34 = load ptr, ptr %23, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %33, ptr noundef %34) #16
  %35 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %36 = load ptr, ptr %23, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %35, ptr noundef %36, ptr noundef nonnull %20) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_read_homefile)
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %38 = tail call ptr %37(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %39 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %40 = getelementptr inbounds %struct.wmOperatorType, ptr %38, i64 0, i32 11
  store ptr %39, ptr %40, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %39, ptr noundef nonnull @.str.3) #16
  store ptr @.str.195, ptr %38, align 8, !tbaa !44
  %41 = getelementptr inbounds %struct.wmOperatorType, ptr %38, i64 0, i32 1
  store ptr @.str.196, ptr %41, align 8, !tbaa !45
  %42 = getelementptr inbounds %struct.wmOperatorType, ptr %38, i64 0, i32 3
  store ptr @.str.197, ptr %42, align 8, !tbaa !46
  %43 = getelementptr inbounds %struct.wmOperatorType, ptr %38, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %43, align 8, !tbaa !49
  %44 = getelementptr inbounds %struct.wmOperatorType, ptr %38, i64 0, i32 4
  store ptr @wm_homefile_read_exec, ptr %44, align 8, !tbaa !48
  %45 = load ptr, ptr %40, align 8, !tbaa !39
  %46 = load ptr, ptr %38, align 8, !tbaa !44
  %47 = load ptr, ptr %42, align 8, !tbaa !46
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, ptr @.str.6, ptr %47
  tail call void @RNA_def_struct_ui_text(ptr noundef %45, ptr noundef %46, ptr noundef nonnull %49) #16
  %50 = load ptr, ptr %40, align 8, !tbaa !39
  %51 = load ptr, ptr %41, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %50, ptr noundef %51) #16
  %52 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %53 = load ptr, ptr %41, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %52, ptr noundef %53, ptr noundef nonnull %38) #16
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %55 = tail call ptr %54(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %56 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %57 = getelementptr inbounds %struct.wmOperatorType, ptr %55, i64 0, i32 11
  store ptr %56, ptr %57, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %56, ptr noundef nonnull @.str.3) #16
  store ptr @.str.198, ptr %55, align 8, !tbaa !44
  %58 = getelementptr inbounds %struct.wmOperatorType, ptr %55, i64 0, i32 1
  store ptr @.str.130, ptr %58, align 8, !tbaa !45
  %59 = getelementptr inbounds %struct.wmOperatorType, ptr %55, i64 0, i32 3
  store ptr @.str.199, ptr %59, align 8, !tbaa !46
  %60 = getelementptr inbounds %struct.wmOperatorType, ptr %55, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %60, align 8, !tbaa !49
  %61 = getelementptr inbounds %struct.wmOperatorType, ptr %55, i64 0, i32 4
  store ptr @wm_homefile_write_exec, ptr %61, align 8, !tbaa !48
  %62 = load ptr, ptr %57, align 8, !tbaa !39
  %63 = load ptr, ptr %55, align 8, !tbaa !44
  %64 = load ptr, ptr %59, align 8, !tbaa !46
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, ptr @.str.6, ptr %64
  tail call void @RNA_def_struct_ui_text(ptr noundef %62, ptr noundef %63, ptr noundef nonnull %66) #16
  %67 = load ptr, ptr %57, align 8, !tbaa !39
  %68 = load ptr, ptr %58, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %67, ptr noundef %68) #16
  %69 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %70 = load ptr, ptr %58, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %69, ptr noundef %70, ptr noundef nonnull %55) #16
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %72 = tail call ptr %71(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %73 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %74 = getelementptr inbounds %struct.wmOperatorType, ptr %72, i64 0, i32 11
  store ptr %73, ptr %74, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %73, ptr noundef nonnull @.str.3) #16
  store ptr @.str.200, ptr %72, align 8, !tbaa !44
  %75 = getelementptr inbounds %struct.wmOperatorType, ptr %72, i64 0, i32 1
  store ptr @.str.201, ptr %75, align 8, !tbaa !45
  %76 = getelementptr inbounds %struct.wmOperatorType, ptr %72, i64 0, i32 3
  store ptr @.str.202, ptr %76, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.wmOperatorType, ptr %72, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %77, align 8, !tbaa !49
  %78 = getelementptr inbounds %struct.wmOperatorType, ptr %72, i64 0, i32 4
  store ptr @wm_userpref_write_exec, ptr %78, align 8, !tbaa !48
  %79 = load ptr, ptr %74, align 8, !tbaa !39
  %80 = load ptr, ptr %72, align 8, !tbaa !44
  %81 = load ptr, ptr %76, align 8, !tbaa !46
  %82 = icmp eq ptr %81, null
  %83 = select i1 %82, ptr @.str.6, ptr %81
  tail call void @RNA_def_struct_ui_text(ptr noundef %79, ptr noundef %80, ptr noundef nonnull %83) #16
  %84 = load ptr, ptr %74, align 8, !tbaa !39
  %85 = load ptr, ptr %75, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %84, ptr noundef %85) #16
  %86 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %87 = load ptr, ptr %75, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %86, ptr noundef %87, ptr noundef nonnull %72) #16
  %88 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %89 = tail call ptr %88(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %90 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %91 = getelementptr inbounds %struct.wmOperatorType, ptr %89, i64 0, i32 11
  store ptr %90, ptr %91, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %90, ptr noundef nonnull @.str.3) #16
  store ptr @.str.203, ptr %89, align 8, !tbaa !44
  %92 = getelementptr inbounds %struct.wmOperatorType, ptr %89, i64 0, i32 1
  store ptr @.str.204, ptr %92, align 8, !tbaa !45
  %93 = getelementptr inbounds %struct.wmOperatorType, ptr %89, i64 0, i32 3
  store ptr @.str.205, ptr %93, align 8, !tbaa !46
  %94 = getelementptr inbounds %struct.wmOperatorType, ptr %89, i64 0, i32 4
  store ptr @wm_userpref_autoexec_add_exec, ptr %94, align 8, !tbaa !48
  %95 = getelementptr inbounds %struct.wmOperatorType, ptr %89, i64 0, i32 19
  store i16 64, ptr %95, align 8, !tbaa !47
  %96 = load ptr, ptr %91, align 8, !tbaa !39
  %97 = load ptr, ptr %89, align 8, !tbaa !44
  %98 = load ptr, ptr %93, align 8, !tbaa !46
  %99 = icmp eq ptr %98, null
  %100 = select i1 %99, ptr @.str.6, ptr %98
  tail call void @RNA_def_struct_ui_text(ptr noundef %96, ptr noundef %97, ptr noundef nonnull %100) #16
  %101 = load ptr, ptr %91, align 8, !tbaa !39
  %102 = load ptr, ptr %92, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %101, ptr noundef %102) #16
  %103 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %104 = load ptr, ptr %92, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %103, ptr noundef %104, ptr noundef nonnull %89) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_userpref_autoexec_path_remove)
  %105 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %106 = tail call ptr %105(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %107 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %108 = getelementptr inbounds %struct.wmOperatorType, ptr %106, i64 0, i32 11
  store ptr %107, ptr %108, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %107, ptr noundef nonnull @.str.3) #16
  store ptr @.str.212, ptr %106, align 8, !tbaa !44
  %109 = getelementptr inbounds %struct.wmOperatorType, ptr %106, i64 0, i32 1
  store ptr @.str.138, ptr %109, align 8, !tbaa !45
  %110 = getelementptr inbounds %struct.wmOperatorType, ptr %106, i64 0, i32 3
  store ptr @.str.213, ptr %110, align 8, !tbaa !46
  %111 = getelementptr inbounds %struct.wmOperatorType, ptr %106, i64 0, i32 4
  store ptr @wm_window_fullscreen_toggle_exec, ptr %111, align 8, !tbaa !48
  %112 = getelementptr inbounds %struct.wmOperatorType, ptr %106, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %112, align 8, !tbaa !52
  %113 = load ptr, ptr %108, align 8, !tbaa !39
  %114 = load ptr, ptr %106, align 8, !tbaa !44
  %115 = load ptr, ptr %110, align 8, !tbaa !46
  %116 = icmp eq ptr %115, null
  %117 = select i1 %116, ptr @.str.6, ptr %115
  tail call void @RNA_def_struct_ui_text(ptr noundef %113, ptr noundef %114, ptr noundef nonnull %117) #16
  %118 = load ptr, ptr %108, align 8, !tbaa !39
  %119 = load ptr, ptr %109, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %118, ptr noundef %119) #16
  %120 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %121 = load ptr, ptr %109, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %120, ptr noundef %121, ptr noundef nonnull %106) #16
  %122 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %123 = tail call ptr %122(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %124 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %125 = getelementptr inbounds %struct.wmOperatorType, ptr %123, i64 0, i32 11
  store ptr %124, ptr %125, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %124, ptr noundef nonnull @.str.3) #16
  store ptr @.str.214, ptr %123, align 8, !tbaa !44
  %126 = getelementptr inbounds %struct.wmOperatorType, ptr %123, i64 0, i32 1
  store ptr @.str.139, ptr %126, align 8, !tbaa !45
  %127 = getelementptr inbounds %struct.wmOperatorType, ptr %123, i64 0, i32 3
  store ptr @.str.214, ptr %127, align 8, !tbaa !46
  %128 = getelementptr inbounds %struct.wmOperatorType, ptr %123, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %128, align 8, !tbaa !49
  %129 = getelementptr inbounds %struct.wmOperatorType, ptr %123, i64 0, i32 4
  store ptr @wm_exit_blender_exec, ptr %129, align 8, !tbaa !48
  %130 = load ptr, ptr %125, align 8, !tbaa !39
  %131 = load ptr, ptr %123, align 8, !tbaa !44
  %132 = load ptr, ptr %127, align 8, !tbaa !46
  %133 = icmp eq ptr %132, null
  %134 = select i1 %133, ptr @.str.6, ptr %132
  tail call void @RNA_def_struct_ui_text(ptr noundef %130, ptr noundef %131, ptr noundef nonnull %134) #16
  %135 = load ptr, ptr %125, align 8, !tbaa !39
  %136 = load ptr, ptr %126, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %135, ptr noundef %136) #16
  %137 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %138 = load ptr, ptr %126, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %137, ptr noundef %138, ptr noundef nonnull %123) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_open_mainfile)
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_revert_mainfile)
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_link)
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_append)
  %139 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %140 = tail call ptr %139(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %141 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %142 = getelementptr inbounds %struct.wmOperatorType, ptr %140, i64 0, i32 11
  store ptr %141, ptr %142, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %141, ptr noundef nonnull @.str.3) #16
  store ptr @.str.246, ptr %140, align 8, !tbaa !44
  %143 = getelementptr inbounds %struct.wmOperatorType, ptr %140, i64 0, i32 1
  store ptr @.str.247, ptr %143, align 8, !tbaa !45
  %144 = getelementptr inbounds %struct.wmOperatorType, ptr %140, i64 0, i32 3
  store ptr @.str.248, ptr %144, align 8, !tbaa !46
  %145 = getelementptr inbounds %struct.wmOperatorType, ptr %140, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %145, align 8, !tbaa !49
  %146 = getelementptr inbounds %struct.wmOperatorType, ptr %140, i64 0, i32 4
  store ptr @wm_recover_last_session_exec, ptr %146, align 8, !tbaa !48
  %147 = load ptr, ptr %142, align 8, !tbaa !39
  %148 = load ptr, ptr %140, align 8, !tbaa !44
  %149 = load ptr, ptr %144, align 8, !tbaa !46
  %150 = icmp eq ptr %149, null
  %151 = select i1 %150, ptr @.str.6, ptr %149
  tail call void @RNA_def_struct_ui_text(ptr noundef %147, ptr noundef %148, ptr noundef nonnull %151) #16
  %152 = load ptr, ptr %142, align 8, !tbaa !39
  %153 = load ptr, ptr %143, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %152, ptr noundef %153) #16
  %154 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %155 = load ptr, ptr %143, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %154, ptr noundef %155, ptr noundef nonnull %140) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_recover_auto_save)
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_save_as_mainfile)
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_save_mainfile)
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_redraw_timer)
  %156 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %157 = tail call ptr %156(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %158 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %159 = getelementptr inbounds %struct.wmOperatorType, ptr %157, i64 0, i32 11
  store ptr %158, ptr %159, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %158, ptr noundef nonnull @.str.3) #16
  store ptr @.str.296, ptr %157, align 8, !tbaa !44
  %160 = getelementptr inbounds %struct.wmOperatorType, ptr %157, i64 0, i32 1
  store ptr @.str.297, ptr %160, align 8, !tbaa !45
  %161 = getelementptr inbounds %struct.wmOperatorType, ptr %157, i64 0, i32 3
  store ptr @.str.298, ptr %161, align 8, !tbaa !46
  %162 = getelementptr inbounds %struct.wmOperatorType, ptr %157, i64 0, i32 4
  store ptr @memory_statistics_exec, ptr %162, align 8, !tbaa !48
  %163 = load ptr, ptr %159, align 8, !tbaa !39
  %164 = load ptr, ptr %157, align 8, !tbaa !44
  tail call void @RNA_def_struct_ui_text(ptr noundef %163, ptr noundef %164, ptr noundef nonnull @.str.298) #16
  %165 = load ptr, ptr %159, align 8, !tbaa !39
  %166 = load ptr, ptr %160, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %165, ptr noundef %166) #16
  %167 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %168 = load ptr, ptr %160, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %167, ptr noundef %168, ptr noundef nonnull %157) #16
  %169 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %170 = tail call ptr %169(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %171 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %172 = getelementptr inbounds %struct.wmOperatorType, ptr %170, i64 0, i32 11
  store ptr %171, ptr %172, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %171, ptr noundef nonnull @.str.3) #16
  store ptr @.str.299, ptr %170, align 8, !tbaa !44
  %173 = getelementptr inbounds %struct.wmOperatorType, ptr %170, i64 0, i32 1
  store ptr @.str.300, ptr %173, align 8, !tbaa !45
  %174 = getelementptr inbounds %struct.wmOperatorType, ptr %170, i64 0, i32 3
  store ptr @.str.301, ptr %174, align 8, !tbaa !46
  %175 = getelementptr inbounds %struct.wmOperatorType, ptr %170, i64 0, i32 4
  store ptr @dependency_relations_exec, ptr %175, align 8, !tbaa !48
  %176 = load ptr, ptr %172, align 8, !tbaa !39
  %177 = load ptr, ptr %170, align 8, !tbaa !44
  tail call void @RNA_def_struct_ui_text(ptr noundef %176, ptr noundef %177, ptr noundef nonnull @.str.301) #16
  %178 = load ptr, ptr %172, align 8, !tbaa !39
  %179 = load ptr, ptr %173, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %178, ptr noundef %179) #16
  %180 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %181 = load ptr, ptr %173, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %180, ptr noundef %181, ptr noundef nonnull %170) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_debug_menu)
  %182 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %183 = tail call ptr %182(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %184 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %185 = getelementptr inbounds %struct.wmOperatorType, ptr %183, i64 0, i32 11
  store ptr %184, ptr %185, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %184, ptr noundef nonnull @.str.3) #16
  store ptr @.str.306, ptr %183, align 8, !tbaa !44
  %186 = getelementptr inbounds %struct.wmOperatorType, ptr %183, i64 0, i32 1
  store ptr @.str.307, ptr %186, align 8, !tbaa !45
  %187 = getelementptr inbounds %struct.wmOperatorType, ptr %183, i64 0, i32 3
  store ptr @.str.308, ptr %187, align 8, !tbaa !46
  %188 = getelementptr inbounds %struct.wmOperatorType, ptr %183, i64 0, i32 4
  store ptr @wm_operator_defaults_exec, ptr %188, align 8, !tbaa !48
  %189 = getelementptr inbounds %struct.wmOperatorType, ptr %183, i64 0, i32 19
  store i16 64, ptr %189, align 8, !tbaa !47
  %190 = load ptr, ptr %185, align 8, !tbaa !39
  %191 = load ptr, ptr %183, align 8, !tbaa !44
  %192 = load ptr, ptr %187, align 8, !tbaa !46
  %193 = icmp eq ptr %192, null
  %194 = select i1 %193, ptr @.str.6, ptr %192
  tail call void @RNA_def_struct_ui_text(ptr noundef %190, ptr noundef %191, ptr noundef nonnull %194) #16
  %195 = load ptr, ptr %185, align 8, !tbaa !39
  %196 = load ptr, ptr %186, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %195, ptr noundef %196) #16
  %197 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %198 = load ptr, ptr %186, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %197, ptr noundef %198, ptr noundef nonnull %183) #16
  %199 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %200 = tail call ptr %199(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %201 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %202 = getelementptr inbounds %struct.wmOperatorType, ptr %200, i64 0, i32 11
  store ptr %201, ptr %202, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %201, ptr noundef nonnull @.str.3) #16
  store ptr @.str.311, ptr %200, align 8, !tbaa !44
  %203 = getelementptr inbounds %struct.wmOperatorType, ptr %200, i64 0, i32 1
  store ptr @.str.312, ptr %203, align 8, !tbaa !45
  %204 = getelementptr inbounds %struct.wmOperatorType, ptr %200, i64 0, i32 3
  store ptr @.str.313, ptr %204, align 8, !tbaa !46
  %205 = getelementptr inbounds %struct.wmOperatorType, ptr %200, i64 0, i32 6
  store ptr @wm_splash_invoke, ptr %205, align 8, !tbaa !49
  %206 = getelementptr inbounds %struct.wmOperatorType, ptr %200, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %206, align 8, !tbaa !52
  %207 = load ptr, ptr %202, align 8, !tbaa !39
  %208 = load ptr, ptr %200, align 8, !tbaa !44
  %209 = load ptr, ptr %204, align 8, !tbaa !46
  %210 = icmp eq ptr %209, null
  %211 = select i1 %210, ptr @.str.6, ptr %209
  tail call void @RNA_def_struct_ui_text(ptr noundef %207, ptr noundef %208, ptr noundef nonnull %211) #16
  %212 = load ptr, ptr %202, align 8, !tbaa !39
  %213 = load ptr, ptr %203, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %212, ptr noundef %213) #16
  %214 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %215 = load ptr, ptr %203, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %214, ptr noundef %215, ptr noundef nonnull %200) #16
  %216 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %217 = tail call ptr %216(i64 noundef 192, ptr noundef nonnull @.str.1) #16
  %218 = tail call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull @.str.2, ptr noundef nonnull @RNA_OperatorProperties) #16
  %219 = getelementptr inbounds %struct.wmOperatorType, ptr %217, i64 0, i32 11
  store ptr %218, ptr %219, align 8, !tbaa !39
  tail call void @RNA_def_struct_translation_context(ptr noundef %218, ptr noundef nonnull @.str.3) #16
  store ptr @.str.334, ptr %217, align 8, !tbaa !44
  %220 = getelementptr inbounds %struct.wmOperatorType, ptr %217, i64 0, i32 1
  store ptr @.str.142, ptr %220, align 8, !tbaa !45
  %221 = getelementptr inbounds %struct.wmOperatorType, ptr %217, i64 0, i32 3
  store ptr @.str.335, ptr %221, align 8, !tbaa !46
  %222 = getelementptr inbounds %struct.wmOperatorType, ptr %217, i64 0, i32 6
  store ptr @wm_search_menu_invoke, ptr %222, align 8, !tbaa !49
  %223 = getelementptr inbounds %struct.wmOperatorType, ptr %217, i64 0, i32 4
  store ptr @wm_search_menu_exec, ptr %223, align 8, !tbaa !48
  %224 = getelementptr inbounds %struct.wmOperatorType, ptr %217, i64 0, i32 9
  store ptr @wm_search_menu_poll, ptr %224, align 8, !tbaa !52
  %225 = load ptr, ptr %219, align 8, !tbaa !39
  %226 = load ptr, ptr %217, align 8, !tbaa !44
  %227 = load ptr, ptr %221, align 8, !tbaa !46
  %228 = icmp eq ptr %227, null
  %229 = select i1 %228, ptr @.str.6, ptr %227
  tail call void @RNA_def_struct_ui_text(ptr noundef %225, ptr noundef %226, ptr noundef nonnull %229) #16
  %230 = load ptr, ptr %219, align 8, !tbaa !39
  %231 = load ptr, ptr %220, align 8, !tbaa !45
  tail call void @RNA_def_struct_identifier(ptr noundef %230, ptr noundef %231) #16
  %232 = load ptr, ptr @global_ops_hash, align 8, !tbaa !37
  %233 = load ptr, ptr %220, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %232, ptr noundef %233, ptr noundef nonnull %217) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_call_menu)
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_call_menu_pie)
  tail call void @WM_operatortype_append(ptr noundef nonnull @WM_OT_radial_control)
  ret void
}

declare ptr @BLI_ghash_str_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @WM_OT_read_homefile(ptr nocapture noundef %0) #0 {
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
  %8 = tail call ptr @RNA_def_string_file_path(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.191) #16
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 524288) #16
  %9 = load ptr, ptr %6, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.192, i32 noundef 1, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.194) #16
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268959744) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_userpref_autoexec_path_remove(ptr nocapture noundef %0) #0 {
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
  %8 = tail call ptr @RNA_def_int(ptr noundef %7, ptr noundef nonnull @.str.210, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1000) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_open_mainfile(ptr nocapture noundef %0) #0 {
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
  store ptr @wm_open_mainfile_check, ptr %6, align 8, !tbaa !186
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @wm_open_mainfile_ui, ptr %7, align 8, !tbaa !187
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2052, i16 noundef signext 8, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0)
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.192, i32 noundef 1, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.217) #16
  %11 = load ptr, ptr %8, align 8, !tbaa !39
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.218, i32 noundef 1, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_revert_mainfile(ptr nocapture noundef %0) #0 {
  store ptr @.str.223, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.224, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.225, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = tail call ptr @RNA_def_boolean(ptr noundef %6, ptr noundef nonnull @.str.218, i32 noundef 1, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220) #16
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_revert_mainfile_exec, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @wm_revert_mainfile_poll, ptr %9, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_link(ptr nocapture noundef %0) #0 {
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
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2052, i16 noundef signext 1, i16 noundef signext 0, i16 noundef signext 31, i16 noundef signext 0)
  tail call fastcc void @wm_link_append_properties_common(ptr noundef nonnull %0, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_append(ptr nocapture noundef %0) #0 {
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
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2052, i16 noundef signext 1, i16 noundef signext 0, i16 noundef signext 30, i16 noundef signext 0)
  tail call fastcc void @wm_link_append_properties_common(ptr noundef nonnull %0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_recover_auto_save(ptr nocapture noundef %0) #0 {
  store ptr @.str.249, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.250, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.251, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @wm_recover_auto_save_exec, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @wm_recover_auto_save_invoke, ptr %5, align 8, !tbaa !49
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 4, i16 noundef signext 8, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_save_as_mainfile(ptr nocapture noundef %0) #0 {
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
  store ptr @blend_save_check, ptr %6, align 8, !tbaa !186
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2052, i16 noundef signext 8, i16 noundef signext 1, i16 noundef signext 8, i16 noundef signext 0)
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.254, i32 noundef 0, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.256) #16
  %10 = load ptr, ptr %7, align 8, !tbaa !39
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.257, i32 noundef 1, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.259) #16
  %12 = load ptr, ptr %7, align 8, !tbaa !39
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.137, i32 noundef 0, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.261) #16
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #16
  %14 = load ptr, ptr %7, align 8, !tbaa !39
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.262, i32 noundef 0, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.264) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_save_mainfile(ptr nocapture noundef %0) #0 {
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
  store ptr @blend_save_check, ptr %6, align 8, !tbaa !186
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2052, i16 noundef signext 8, i16 noundef signext 1, i16 noundef signext 8, i16 noundef signext 0)
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.254, i32 noundef 0, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.256) #16
  %10 = load ptr, ptr %7, align 8, !tbaa !39
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.257, i32 noundef 0, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.259) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_redraw_timer(ptr nocapture noundef %0) #0 {
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.272, ptr noundef nonnull @redraw_timer_type_items, i32 noundef 0, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.2) #16
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !133
  %11 = load ptr, ptr %7, align 8, !tbaa !39
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.274, i32 noundef 10, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.276, i32 noundef 1, i32 noundef 1000) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_debug_menu(ptr nocapture noundef %0) #0 {
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
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.304, i32 noundef 0, i32 noundef -32768, i32 noundef 32767, ptr noundef nonnull @.str.305, ptr noundef nonnull @.str.2, i32 noundef -10000, i32 noundef 10000) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_call_menu(ptr nocapture noundef %0) #0 {
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
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.233, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.340) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_call_menu_pie(ptr nocapture noundef %0) #0 {
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
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.233, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.344) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WM_OT_radial_control(ptr nocapture noundef %0) #0 {
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
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.348, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.349, ptr noundef nonnull @.str.350) #16
  %11 = load ptr, ptr %8, align 8, !tbaa !39
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.351, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353) #16
  %13 = load ptr, ptr %8, align 8, !tbaa !39
  %14 = tail call ptr @RNA_def_string(ptr noundef %13, ptr noundef nonnull @.str.354, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.356) #16
  %15 = load ptr, ptr %8, align 8, !tbaa !39
  %16 = tail call ptr @RNA_def_string(ptr noundef %15, ptr noundef nonnull @.str.357, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.359) #16
  %17 = load ptr, ptr %8, align 8, !tbaa !39
  %18 = tail call ptr @RNA_def_string(ptr noundef %17, ptr noundef nonnull @.str.360, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.361, ptr noundef nonnull @.str.362) #16
  %19 = load ptr, ptr %8, align 8, !tbaa !39
  %20 = tail call ptr @RNA_def_string(ptr noundef %19, ptr noundef nonnull @.str.363, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.364, ptr noundef nonnull @.str.365) #16
  %21 = load ptr, ptr %8, align 8, !tbaa !39
  %22 = tail call ptr @RNA_def_string(ptr noundef %21, ptr noundef nonnull @.str.366, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.367, ptr noundef nonnull @.str.368) #16
  %23 = load ptr, ptr %8, align 8, !tbaa !39
  %24 = tail call ptr @RNA_def_string(ptr noundef %23, ptr noundef nonnull @.str.369, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.370, ptr noundef nonnull @.str.371) #16
  %25 = load ptr, ptr %8, align 8, !tbaa !39
  %26 = tail call ptr @RNA_def_boolean(ptr noundef %25, ptr noundef nonnull @.str.372, i32 noundef 0, ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.374) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.127, i32 noundef 0, i32 noundef 0) #16
  %3 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.128, i32 noundef 119, i32 noundef 1, i32 noundef 6, i32 noundef 0) #16
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.129, i32 noundef 110, i32 noundef 1, i32 noundef 2, i32 noundef 0) #16
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.130, i32 noundef 117, i32 noundef 1, i32 noundef 2, i32 noundef 0) #16
  %6 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.131, i32 noundef 111, i32 noundef 1, i32 noundef 3, i32 noundef 0) #16
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.132, i32 noundef 111, i32 noundef 1, i32 noundef 2, i32 noundef 0) #16
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.132, i32 noundef 300, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.133, i32 noundef 111, i32 noundef 1, i32 noundef 6, i32 noundef 0) #16
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.134, i32 noundef 300, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.135, i32 noundef 115, i32 noundef 1, i32 noundef 2, i32 noundef 0) #16
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.135, i32 noundef 119, i32 noundef 1, i32 noundef 2, i32 noundef 0) #16
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.136, i32 noundef 115, i32 noundef 1, i32 noundef 3, i32 noundef 0) #16
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.136, i32 noundef 301, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.136, i32 noundef 115, i32 noundef 1, i32 noundef 6, i32 noundef 0) #16
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !188
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.137, i32 noundef 1) #16
  %18 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.138, i32 noundef 310, i32 noundef 1, i32 noundef 4, i32 noundef 0) #16
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.139, i32 noundef 113, i32 noundef 1, i32 noundef 2, i32 noundef 0) #16
  %20 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.140, i32 noundef 116, i32 noundef 1, i32 noundef 6, i32 noundef 0) #16
  %21 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.141, i32 noundef 100, i32 noundef 1, i32 noundef 6, i32 noundef 0) #16
  %22 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.142, i32 noundef 221, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %23 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.143, i32 noundef 401, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 301, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %25 = getelementptr inbounds %struct.wmKeyMapItem, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %26, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #16
  %27 = load ptr, ptr %25, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %27, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148) #16
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 302, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %30, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #16
  %31 = load ptr, ptr %29, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %31, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.149) #16
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 303, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %33 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %34, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #16
  %35 = load ptr, ptr %33, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %35, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.150) #16
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 304, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %36, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %38, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #16
  %39 = load ptr, ptr %37, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %39, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.151) #16
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 305, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %41 = getelementptr inbounds %struct.wmKeyMapItem, ptr %40, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %42, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #16
  %43 = load ptr, ptr %41, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %43, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.152) #16
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 306, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %45 = getelementptr inbounds %struct.wmKeyMapItem, ptr %44, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %46, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #16
  %47 = load ptr, ptr %45, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %47, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.153) #16
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 307, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %49 = getelementptr inbounds %struct.wmKeyMapItem, ptr %48, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %50, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #16
  %51 = load ptr, ptr %49, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %51, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.154) #16
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 308, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %53 = getelementptr inbounds %struct.wmKeyMapItem, ptr %52, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %54, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #16
  %55 = load ptr, ptr %53, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %55, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.155) #16
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 309, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %57 = getelementptr inbounds %struct.wmKeyMapItem, ptr %56, i64 0, i32 17
  %58 = load ptr, ptr %57, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %58, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #16
  %59 = load ptr, ptr %57, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %59, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.156) #16
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 310, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %60, i64 0, i32 17
  %62 = load ptr, ptr %61, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %62, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #16
  %63 = load ptr, ptr %61, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %63, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.157) #16
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.144, i32 noundef 311, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %64, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %66, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #16
  %67 = load ptr, ptr %65, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %67, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.158) #16
  %68 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.160, i32 noundef 420, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %69 = getelementptr inbounds %struct.wmKeyMapItem, ptr %68, i64 0, i32 17
  %70 = load ptr, ptr %69, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %70, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.159) #16
  %71 = load ptr, ptr %69, align 8, !tbaa !188
  tail call void @RNA_float_set(ptr noundef %71, ptr noundef nonnull @.str.147, float noundef 0x3FF19999A0000000) #16
  %72 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.160, i32 noundef 421, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %73 = getelementptr inbounds %struct.wmKeyMapItem, ptr %72, i64 0, i32 17
  %74 = load ptr, ptr %73, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %74, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.159) #16
  %75 = load ptr, ptr %73, align 8, !tbaa !188
  tail call void @RNA_float_set(ptr noundef %75, ptr noundef nonnull @.str.147, float noundef 0x3FED1745C0000000) #16
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.160, i32 noundef 420, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %77 = getelementptr inbounds %struct.wmKeyMapItem, ptr %76, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %78, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.159) #16
  %79 = load ptr, ptr %77, align 8, !tbaa !188
  tail call void @RNA_float_set(ptr noundef %79, ptr noundef nonnull @.str.147, float noundef 1.500000e+00) #16
  %80 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.160, i32 noundef 421, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %81 = getelementptr inbounds %struct.wmKeyMapItem, ptr %80, i64 0, i32 17
  %82 = load ptr, ptr %81, align 8, !tbaa !188
  tail call void @RNA_string_set(ptr noundef %82, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.159) #16
  %83 = load ptr, ptr %81, align 8, !tbaa !188
  tail call void @RNA_float_set(ptr noundef %83, ptr noundef nonnull @.str.147, float noundef 0x3FE5555560000000) #16
  %84 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.398) #16
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %1
  %87 = getelementptr inbounds %struct.wmKeyMap, ptr %84, i64 0, i32 10
  %88 = load ptr, ptr %87, align 8, !tbaa !190
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %86, %1
  %91 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.398, ptr noundef nonnull @gesture_circle_modal_keymap.modal_items) #16
  %92 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #16
  %93 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 3, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #16
  %94 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #16
  %95 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 163, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 2) #16
  %96 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 3) #16
  %97 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 4) #16
  %98 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 5) #16
  %99 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 4) #16
  %100 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 5) #16
  %101 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 5) #16
  %102 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #16
  %103 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #16
  %104 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 11, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 6) #16
  %105 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 6) #16
  %106 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %91, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 11) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %91, ptr noundef nonnull @.str.399) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %91, ptr noundef nonnull @.str.400) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %91, ptr noundef nonnull @.str.401) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %91, ptr noundef nonnull @.str.402) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %91, ptr noundef nonnull @.str.403) #16
  br label %107

107:                                              ; preds = %86, %90
  %108 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.406) #16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.wmKeyMap, ptr %108, i64 0, i32 10
  %112 = load ptr, ptr %111, align 8, !tbaa !190
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %110, %107
  %115 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.406, ptr noundef nonnull @gesture_border_modal_keymap.modal_items) #16
  %116 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %115, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #16
  %117 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %115, i32 noundef 3, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #16
  %118 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %115, i32 noundef 3, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 3) #16
  %119 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %115, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 8) #16
  %120 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %115, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 4) #16
  %121 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %115, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #16
  %122 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %115, i32 noundef 1, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 3) #16
  %123 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %115, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #16
  %124 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %115, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 4) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.407) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.408) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.409) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.410) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.411) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.412) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.413) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.414) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.415) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.416) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.417) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.418) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.419) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.420) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.421) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.422) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.423) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.424) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.425) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.426) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.427) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.428) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.429) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %115, ptr noundef nonnull @.str.430) #16
  br label %125

125:                                              ; preds = %110, %114
  %126 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.435) #16
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.wmKeyMap, ptr %126, i64 0, i32 10
  %130 = load ptr, ptr %129, align 8, !tbaa !190
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %128, %125
  %133 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.435, ptr noundef nonnull @gesture_zoom_border_modal_keymap.modal_items) #16
  %134 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %133, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #16
  %135 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %133, i32 noundef 3, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #16
  %136 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %133, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #16
  %137 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %133, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 9) #16
  %138 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %133, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #16
  %139 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %133, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 10) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %133, ptr noundef nonnull @.str.425) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %133, ptr noundef nonnull @.str.429) #16
  br label %140

140:                                              ; preds = %128, %132
  %141 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.436) #16
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.wmKeyMap, ptr %141, i64 0, i32 10
  %145 = load ptr, ptr %144, align 8, !tbaa !190
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %143, %140
  %148 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.436, ptr noundef nonnull @gesture_straightline_modal_keymap.modal_items) #16
  %149 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %148, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #16
  %150 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %148, i32 noundef 3, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #16
  %151 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %148, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #16
  %152 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %148, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 3) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %148, ptr noundef nonnull @.str.437) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %148, ptr noundef nonnull @.str.438) #16
  tail call void @WM_modalkeymap_assign(ptr noundef %148, ptr noundef nonnull @.str.439) #16
  br label %153

153:                                              ; preds = %143, %147
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_action_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 34
  %12 = load ptr, ptr %11, align 8, !tbaa !192
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %23, %19 ]
  %21 = phi ptr [ %14, %16 ], [ %24, %19 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  store ptr %22, ptr %17, align 8, !tbaa !194
  store ptr %22, ptr %18, align 8, !tbaa !196
  %23 = add nuw nsw i32 %20, 1
  store i32 %20, ptr %5, align 8, !tbaa !197
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  %24 = load ptr, ptr %21, align 8, !tbaa !198
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %19, !llvm.loop !199

26:                                               ; preds = %19, %13
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  store i8 1, ptr %3, align 1, !tbaa !34
  %27 = load ptr, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret ptr %27
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_group_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 32
  %12 = load ptr, ptr %11, align 8, !tbaa !200
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %23, %19 ]
  %21 = phi ptr [ %14, %16 ], [ %24, %19 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  store ptr %22, ptr %17, align 8, !tbaa !194
  store ptr %22, ptr %18, align 8, !tbaa !196
  %23 = add nuw nsw i32 %20, 1
  store i32 %20, ptr %5, align 8, !tbaa !197
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  %24 = load ptr, ptr %21, align 8, !tbaa !198
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %19, !llvm.loop !199

26:                                               ; preds = %19, %13
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  store i8 1, ptr %3, align 1, !tbaa !34
  %27 = load ptr, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_group_local_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 32
  %12 = load ptr, ptr %11, align 8, !tbaa !200
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %19

19:                                               ; preds = %28, %16
  %20 = phi i32 [ 0, %16 ], [ %29, %28 ]
  %21 = phi ptr [ %14, %16 ], [ %30, %28 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !201
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  store ptr %26, ptr %17, align 8, !tbaa !194
  store ptr %26, ptr %18, align 8, !tbaa !196
  %27 = add nsw i32 %20, 1
  store i32 %20, ptr %5, align 8, !tbaa !197
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ %20, %19 ]
  %30 = load ptr, ptr %21, align 8, !tbaa !198
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !llvm.loop !199

32:                                               ; preds = %28, %13
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  store i8 1, ptr %3, align 1, !tbaa !34
  %33 = load ptr, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_image_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !202
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %23, %19 ]
  %21 = phi ptr [ %14, %16 ], [ %24, %19 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  store ptr %22, ptr %17, align 8, !tbaa !194
  store ptr %22, ptr %18, align 8, !tbaa !196
  %23 = add nuw nsw i32 %20, 1
  store i32 %20, ptr %5, align 8, !tbaa !197
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  %24 = load ptr, ptr %21, align 8, !tbaa !198
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %19, !llvm.loop !199

26:                                               ; preds = %19, %13
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  store i8 1, ptr %3, align 1, !tbaa !34
  %27 = load ptr, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_image_local_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !202
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %19

19:                                               ; preds = %28, %16
  %20 = phi i32 [ 0, %16 ], [ %29, %28 ]
  %21 = phi ptr [ %14, %16 ], [ %30, %28 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !201
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  store ptr %26, ptr %17, align 8, !tbaa !194
  store ptr %26, ptr %18, align 8, !tbaa !196
  %27 = add nsw i32 %20, 1
  store i32 %20, ptr %5, align 8, !tbaa !197
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ %20, %19 ]
  %30 = load ptr, ptr %21, align 8, !tbaa !198
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !llvm.loop !199

32:                                               ; preds = %28, %13
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  store i8 1, ptr %3, align 1, !tbaa !34
  %33 = load ptr, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_scene_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !203
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %23, %19 ]
  %21 = phi ptr [ %14, %16 ], [ %24, %19 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  store ptr %22, ptr %17, align 8, !tbaa !194
  store ptr %22, ptr %18, align 8, !tbaa !196
  %23 = add nuw nsw i32 %20, 1
  store i32 %20, ptr %5, align 8, !tbaa !197
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  %24 = load ptr, ptr %21, align 8, !tbaa !198
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %19, !llvm.loop !199

26:                                               ; preds = %19, %13
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  store i8 1, ptr %3, align 1, !tbaa !34
  %27 = load ptr, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_scene_local_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !203
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %19

19:                                               ; preds = %28, %16
  %20 = phi i32 [ 0, %16 ], [ %29, %28 ]
  %21 = phi ptr [ %14, %16 ], [ %30, %28 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !201
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  store ptr %26, ptr %17, align 8, !tbaa !194
  store ptr %26, ptr %18, align 8, !tbaa !196
  %27 = add nsw i32 %20, 1
  store i32 %20, ptr %5, align 8, !tbaa !197
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ %20, %19 ]
  %30 = load ptr, ptr %21, align 8, !tbaa !198
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !llvm.loop !199

32:                                               ; preds = %28, %13
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  store i8 1, ptr %3, align 1, !tbaa !34
  %33 = load ptr, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_movieclip_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 42
  %12 = load ptr, ptr %11, align 8, !tbaa !204
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %23, %19 ]
  %21 = phi ptr [ %14, %16 ], [ %24, %19 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  store ptr %22, ptr %17, align 8, !tbaa !194
  store ptr %22, ptr %18, align 8, !tbaa !196
  %23 = add nuw nsw i32 %20, 1
  store i32 %20, ptr %5, align 8, !tbaa !197
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  %24 = load ptr, ptr %21, align 8, !tbaa !198
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %19, !llvm.loop !199

26:                                               ; preds = %19, %13
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  store i8 1, ptr %3, align 1, !tbaa !34
  %27 = load ptr, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_movieclip_local_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 42
  %12 = load ptr, ptr %11, align 8, !tbaa !204
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %19

19:                                               ; preds = %28, %16
  %20 = phi i32 [ 0, %16 ], [ %29, %28 ]
  %21 = phi ptr [ %14, %16 ], [ %30, %28 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !201
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  store ptr %26, ptr %17, align 8, !tbaa !194
  store ptr %26, ptr %18, align 8, !tbaa !196
  %27 = add nsw i32 %20, 1
  store i32 %20, ptr %5, align 8, !tbaa !197
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ %20, %19 ]
  %30 = load ptr, ptr %21, align 8, !tbaa !198
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !llvm.loop !199

32:                                               ; preds = %28, %13
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  store i8 1, ptr %3, align 1, !tbaa !34
  %33 = load ptr, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_mask_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 43
  %12 = load ptr, ptr %11, align 8, !tbaa !205
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %23, %19 ]
  %21 = phi ptr [ %14, %16 ], [ %24, %19 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  store ptr %22, ptr %17, align 8, !tbaa !194
  store ptr %22, ptr %18, align 8, !tbaa !196
  %23 = add nuw nsw i32 %20, 1
  store i32 %20, ptr %5, align 8, !tbaa !197
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  %24 = load ptr, ptr %21, align 8, !tbaa !198
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %19, !llvm.loop !199

26:                                               ; preds = %19, %13
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  store i8 1, ptr %3, align 1, !tbaa !34
  %27 = load ptr, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_mask_local_itemf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_data_main(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 43
  %12 = load ptr, ptr %11, align 8, !tbaa !205
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %19

19:                                               ; preds = %28, %16
  %20 = phi i32 [ 0, %16 ], [ %29, %28 ]
  %21 = phi ptr [ %14, %16 ], [ %30, %28 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !201
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  store ptr %26, ptr %17, align 8, !tbaa !194
  store ptr %26, ptr %18, align 8, !tbaa !196
  %27 = add nsw i32 %20, 1
  store i32 %20, ptr %5, align 8, !tbaa !197
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ %20, %19 ]
  %30 = load ptr, ptr %21, align 8, !tbaa !198
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !llvm.loop !199

32:                                               ; preds = %28, %13
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  store i8 1, ptr %3, align 1, !tbaa !34
  %33 = load ptr, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret ptr %33
}

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @wm_event_free_handler(ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_grab_enable(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @CTX_data_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_path_struct_property_py(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiDefSearchButO_ptr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uiSearchBoxWidth() local_unnamed_addr #2

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uiSearchBoxHeight() local_unnamed_addr #2

declare void @uiPopupBoundsBlock(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wm_event_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @UI_GetStyle() local_unnamed_addr #2

declare void @uiBlockClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uiLayoutOperatorButs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @WM_operator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @wm_block_redo_cancel_cb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2, %15
  %8 = phi ptr [ %17, %15 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.wmOperator, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 19
  %12 = load i16, ptr %11, align 8, !tbaa !47
  %13 = and i16 %12, 3
  %14 = icmp eq i16 %13, 3
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.wmOperator, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !148

19:                                               ; preds = %7, %15, %2
  %20 = phi ptr [ %5, %2 ], [ %8, %7 ], [ %17, %15 ]
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @WM_operator_free(ptr noundef %1) #16
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wm_block_redo_cb(ptr noundef %0, ptr noundef %1, i32 %2) #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3, %16
  %9 = phi ptr [ %18, %16 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.wmOperator, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 19
  %13 = load i16, ptr %12, align 8, !tbaa !47
  %14 = and i16 %13, 3
  %15 = icmp eq i16 %14, 3
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.wmOperator, ptr %9, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !148

20:                                               ; preds = %8, %16, %3
  %21 = phi ptr [ %6, %3 ], [ %9, %8 ], [ %18, %16 ]
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call i32 @ED_undo_operator_repeat(ptr noundef %0, ptr noundef %1) #16
  br label %27

25:                                               ; preds = %20
  tail call void @ED_undo_push_op(ptr noundef %0, ptr noundef %1) #16
  tail call void @wm_operator_register(ptr noundef %0, ptr noundef %1) #16
  %26 = tail call i32 @WM_operator_repeat(ptr noundef %0, ptr noundef %1) #16
  br label %27

27:                                               ; preds = %25, %23
  ret void
}

declare i32 @ED_undo_operator_repeat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_undo_push_op(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wm_operator_register(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_repeat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @dialog_check_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !186
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = tail call zeroext i8 %7(ptr noundef %0, ptr noundef %1) #16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @CTX_wm_menu(ptr noundef %0) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @ED_region_tag_refresh_ui(ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %12, %15, %9, %3
  ret void
}

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @dialog_exec_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !149
  %5 = tail call i32 @WM_operator_call_ex(ptr noundef %0, ptr noundef %4, i8 noundef zeroext 1) #16
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %6(ptr noundef nonnull %1) #16
  tail call void @uiPupBlockClose(ptr noundef %0, ptr noundef %2) #16
  ret void
}

declare ptr @CTX_wm_menu(ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_refresh_ui(ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_call_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiPupBlockClose(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_file_autoexec_init(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @WM_file_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

declare i32 @wm_gesture_evaluate(ptr noundef) local_unnamed_addr #2

declare void @RNA_collection_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wm_window_duplicate_exec(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @wm_operator_winactive_normal(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 9
  %10 = load i16, ptr %9, align 8, !tbaa !207
  %11 = icmp eq i16 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %1, %4
  %14 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i32 %14
}

declare i32 @wm_history_read_exec(ptr noundef, ptr noundef) #2

declare i32 @wm_homefile_read_exec(ptr noundef, ptr noundef) #2

declare i32 @wm_homefile_write_exec(ptr noundef, ptr noundef) #2

declare i32 @wm_userpref_write_exec(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_userpref_autoexec_add_exec(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %4 = tail call ptr %3(i64 noundef 792, ptr noundef nonnull @.str.206) #16
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 44), ptr noundef %4) #16
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_userpref_autoexec_remove_exec(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call i32 @RNA_int_get(ptr noundef %4, ptr noundef nonnull @.str.210) #16
  %6 = tail call ptr @BLI_findlink(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 44), i32 noundef %5) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @BLI_freelinkN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 44), ptr noundef nonnull %6) #16
  br label %9

9:                                                ; preds = %8, %2
  ret i32 4
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wm_window_fullscreen_toggle_exec(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_exit_blender_exec(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @WM_operator_free(ptr noundef %1) #16
  tail call void @WM_exit(ptr noundef %0) #16
  ret i32 4
}

declare void @WM_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_open_mainfile_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = load ptr, ptr @G, align 8, !tbaa !158
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  tail call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.221) #16
  br label %22

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8, !tbaa !209
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.RecentFile, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !210
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %16, %14 ], [ %11, %10 ]
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  tail call void @RNA_string_set(ptr noundef %20, ptr noundef nonnull @.str.20, ptr noundef %18) #16
  tail call void @wm_open_init_load_ui(ptr noundef %1, i8 noundef zeroext 1) #16
  tail call void @wm_open_init_use_scripts(ptr noundef %1, i8 noundef zeroext 1) #16
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr null, ptr %21, align 8, !tbaa !54
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #16
  br label %22

22:                                               ; preds = %17, %7
  %23 = phi i32 [ 2, %7 ], [ 1, %17 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_open_mainfile_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #16
  call void @wm_open_init_load_ui(ptr noundef %1, i8 noundef zeroext 0) #16
  call void @wm_open_init_use_scripts(ptr noundef %1, i8 noundef zeroext 0) #16
  %6 = load ptr, ptr %4, align 8, !tbaa !68
  %7 = call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.192) #16
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %10 = and i32 %9, -1025
  %11 = select i1 %8, i32 1024, i32 0
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !156
  %13 = load ptr, ptr %4, align 8, !tbaa !68
  %14 = call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.218) #16
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8
  %17 = and i32 %16, -8193
  %18 = select i1 %15, i32 0, i32 8192
  %19 = or disjoint i32 %17, %18
  store i32 %19, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !212
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #16
  br i1 %15, label %22, label %23

22:                                               ; preds = %2
  call void @WM_file_autoexec_init(ptr noundef nonnull %3) #16
  br label %23

23:                                               ; preds = %2, %22
  %24 = call zeroext i8 @WM_file_read(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %21) #16
  %25 = load ptr, ptr %20, align 8, !tbaa !64
  call void @BKE_report_print_level_set(ptr noundef %25, i32 noundef 16) #16
  %26 = icmp eq i8 %24, 0
  %27 = select i1 %26, i32 2, i32 4
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #16
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @wm_open_mainfile_check(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %5, ptr noundef nonnull @.str.218) #16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #16
  %7 = load ptr, ptr %4, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #16
  %8 = call ptr @BLI_last_slash(ptr noundef nonnull %3) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 0, ptr %11, align 1, !tbaa !34
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !213
  %14 = and i32 %13, 4194304
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = call zeroext i8 @BKE_autoexec_match(ptr noundef nonnull %3) #16
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 8, !tbaa !68
  call void @RNA_property_boolean_set(ptr noundef %20, ptr noundef %6, i32 noundef 0) #16
  br label %21

21:                                               ; preds = %12, %19, %16
  %22 = phi i8 [ 1, %19 ], [ 0, %16 ], [ 0, %12 ]
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store i8 %22, ptr %23, align 1, !tbaa !214
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #16
  ret i8 %22
}

; Function Attrs: nounwind uwtable
define internal void @wm_open_mainfile_ui(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  tail call void @uiItemR(ptr noundef %5, ptr noundef %7, ptr noundef nonnull @.str.192, i32 noundef 0, ptr noundef null, i32 noundef 0) #16
  %8 = tail call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 0) #16
  %9 = load i8, ptr %3, align 1, !tbaa !214
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @uiLayoutSetActive(ptr noundef %8, i8 noundef zeroext 0) #16
  tail call void @uiLayoutSetEnabled(ptr noundef %8, i8 noundef zeroext 0) #16
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi ptr [ @.str.222, %11 ], [ @.str.219, %2 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !68
  tail call void @uiItemR(ptr noundef %8, ptr noundef %14, ptr noundef nonnull @.str.218, i32 noundef 0, ptr noundef nonnull %13, i32 noundef 0) #16
  ret void
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @wm_open_init_load_ui(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @wm_open_init_use_scripts(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report_print_level_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_last_slash(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_autoexec_match(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @wm_revert_mainfile_exec(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @wm_open_init_use_scripts(ptr noundef %1, i8 noundef zeroext 0) #16
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.218) #16
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8
  %8 = and i32 %7, -8193
  %9 = select i1 %6, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !212
  %11 = load ptr, ptr @G, align 8, !tbaa !158
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #16
  br i1 %6, label %15, label %16

15:                                               ; preds = %2
  tail call void @WM_file_autoexec_init(ptr noundef nonnull %12) #16
  br label %16

16:                                               ; preds = %2, %15
  %17 = tail call zeroext i8 @WM_file_read(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %14) #16
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 2, i32 4
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @wm_revert_mainfile_poll(ptr nocapture readnone %0) #9 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !160
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_link_append_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.20) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @WM_operator_call_notest(ptr noundef %0, ptr noundef %1) #16
  br label %26

11:                                               ; preds = %3
  %12 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 2), align 8, !tbaa !34
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8, !tbaa !68
  tail call void @RNA_string_set(ptr noundef %15, ptr noundef nonnull @.str.20, ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 2)) #16
  br label %25

16:                                               ; preds = %11
  %17 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !160
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #16
  %20 = load ptr, ptr @G, align 8, !tbaa !158
  %21 = getelementptr inbounds %struct.Main, ptr %20, i64 0, i32 2
  %22 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %21, i64 noundef 1024) #16
  %23 = call zeroext i8 @BLI_parent_dir(ptr noundef nonnull %4) #16
  %24 = load ptr, ptr %5, align 8, !tbaa !68
  call void @RNA_string_set(ptr noundef %24, ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #16
  br label %25

25:                                               ; preds = %16, %19, %14
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #16
  br label %26

26:                                               ; preds = %25, %9
  %27 = phi i32 [ %10, %9 ], [ 1, %25 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_link_append_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca %struct.CollectionPropertyIterator, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %13, ptr noundef nonnull @.str.38, ptr noundef nonnull %4) #16
  %14 = load ptr, ptr %12, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %14, ptr noundef nonnull @.str.35, ptr noundef nonnull %5) #16
  %15 = call zeroext i8 @BLO_is_a_library(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.228) #16
  br label %132

20:                                               ; preds = %2
  %21 = load i8, ptr %7, align 16, !tbaa !34
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.229) #16
  br label %132

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 2
  %28 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %6) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  call void @BKE_report(ptr noundef %32, i32 noundef 32, ptr noundef nonnull @.str.230) #16
  br label %132

33:                                               ; preds = %26
  %34 = load ptr, ptr %12, align 8, !tbaa !68
  %35 = call ptr @RNA_struct_find_property(ptr noundef %34, ptr noundef nonnull @.str.41) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %12, align 8, !tbaa !68
  %39 = call i32 @RNA_property_collection_length(ptr noundef %38, ptr noundef nonnull %35) #16
  %40 = icmp eq i32 %39, 0
  %41 = load i8, ptr %4, align 16
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !64
  call void @BKE_report(ptr noundef %46, i32 noundef 32, ptr noundef nonnull @.str.229) #16
  br label %132

47:                                               ; preds = %33
  %48 = load i8, ptr %4, align 16, !tbaa !34
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  call void @BKE_report(ptr noundef %52, i32 noundef 32, ptr noundef nonnull @.str.229) #16
  br label %132

53:                                               ; preds = %47, %37
  %54 = phi i32 [ %39, %37 ], [ 0, %47 ]
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !64
  %57 = call ptr @BLO_blendhandle_from_file(ptr noundef nonnull %6, ptr noundef %56) #16
  store ptr %57, ptr %3, align 8, !tbaa !37
  %58 = icmp eq ptr %57, null
  br i1 %58, label %132, label %59

59:                                               ; preds = %53
  %60 = call i32 @BKE_idcode_from_name(ptr noundef nonnull %7) #16
  %61 = load ptr, ptr %12, align 8, !tbaa !68
  %62 = call i32 @RNA_boolean_get(ptr noundef %61, ptr noundef nonnull @.str.231) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  call void @BKE_scene_base_deselect_all(ptr noundef %11) #16
  br label %65

65:                                               ; preds = %64, %59
  %66 = load ptr, ptr %12, align 8, !tbaa !68
  %67 = call i32 @RNA_boolean_get(ptr noundef %66, ptr noundef nonnull @.str.231) #16
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i16 0, i16 16
  %70 = load ptr, ptr %12, align 8, !tbaa !68
  %71 = call i32 @RNA_boolean_get(ptr noundef %70, ptr noundef nonnull @.str.234) #16
  %72 = icmp eq i32 %71, 0
  %73 = or disjoint i16 %69, 32
  %74 = select i1 %72, i16 %69, i16 %73
  %75 = load ptr, ptr %12, align 8, !tbaa !68
  %76 = call ptr @RNA_struct_find_property(ptr noundef %75, ptr noundef nonnull @.str.70) #16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %65
  %79 = load ptr, ptr %12, align 8, !tbaa !68
  %80 = call i32 @RNA_boolean_get(ptr noundef %79, ptr noundef nonnull @.str.70) #16
  %81 = icmp eq i32 %80, 0
  %82 = or disjoint i16 %74, 2
  %83 = select i1 %81, i16 %74, i16 %82
  br label %84

84:                                               ; preds = %65, %78
  %85 = phi i16 [ %74, %65 ], [ %83, %78 ]
  %86 = load ptr, ptr %12, align 8, !tbaa !68
  %87 = call i32 @RNA_boolean_get(ptr noundef %86, ptr noundef nonnull @.str.235) #16
  %88 = icmp eq i32 %87, 0
  %89 = or i16 %85, 4
  %90 = select i1 %88, i16 %85, i16 %89
  %91 = load ptr, ptr %12, align 8, !tbaa !68
  %92 = call i32 @RNA_boolean_get(ptr noundef %91, ptr noundef nonnull @.str.236) #16
  %93 = icmp eq i32 %92, 0
  %94 = or i16 %90, 1024
  %95 = select i1 %93, i16 %90, i16 %94
  %96 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !217
  %98 = icmp eq ptr %97, null
  %99 = icmp ult i16 %95, 1024
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %84
  %102 = load ptr, ptr %55, align 8, !tbaa !64
  %103 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %102, i32 noundef 16, ptr noundef nonnull @.str.232, ptr noundef nonnull %103) #16
  %104 = and i16 %95, 1023
  br label %105

105:                                              ; preds = %101, %84
  %106 = phi i16 [ %104, %101 ], [ %95, %84 ]
  call void @BKE_main_id_flag_all(ptr noundef %10, i16 noundef signext 2048, i8 noundef zeroext 1) #16
  %107 = call ptr @BLO_library_append_begin(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %6) #16
  %108 = getelementptr inbounds %struct.Main, ptr %107, i64 0, i32 10
  %109 = load ptr, ptr %108, align 8, !tbaa !218
  %110 = icmp eq i32 %54, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call ptr @BLO_library_append_named_part_ex(ptr noundef %0, ptr noundef %107, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %60, i16 noundef signext %106) #16
  br label %125

113:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %8) #16
  %114 = load ptr, ptr %12, align 8, !tbaa !68
  call void @RNA_collection_begin(ptr noundef %114, ptr noundef nonnull @.str.41, ptr noundef nonnull %8) #16
  %115 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %8, i64 0, i32 7
  %116 = load i32, ptr %115, align 8, !tbaa !90
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %8, i64 0, i32 6
  br label %120

120:                                              ; preds = %118, %120
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %119, i64 24, i1 false), !tbaa.struct !184
  call void @RNA_string_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.233, ptr noundef nonnull %4) #16
  %121 = call ptr @BLO_library_append_named_part_ex(ptr noundef %0, ptr noundef %107, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %60, i16 noundef signext %106) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  call void @RNA_property_collection_next(ptr noundef nonnull %8) #16
  %122 = load i32, ptr %115, align 8, !tbaa !90
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %120, !llvm.loop !219

124:                                              ; preds = %120, %113
  call void @RNA_property_collection_end(ptr noundef nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #16
  br label %125

125:                                              ; preds = %124, %111
  call void @BLO_library_append_end(ptr noundef %0, ptr noundef %107, ptr noundef nonnull %3, i32 noundef %60, i16 noundef signext %106) #16
  call void @BKE_main_lib_objects_recalc_all(ptr noundef %10) #16
  call void @IMB_colormanagement_check_file_config(ptr noundef %10) #16
  %126 = and i16 %106, 4
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @BKE_library_make_local(ptr noundef %10, ptr noundef %109, i8 noundef zeroext 1) #16
  br label %129

129:                                              ; preds = %128, %125
  call void @BKE_main_id_flag_all(ptr noundef %10, i16 noundef signext 2048, i8 noundef zeroext 0) #16
  call void @DAG_scene_relations_rebuild(ptr noundef %10, ptr noundef %11) #16
  %130 = load ptr, ptr %3, align 8, !tbaa !37
  call void @BLO_blendhandle_close(ptr noundef %130) #16
  %131 = call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 2), ptr noundef nonnull %5, i64 noundef 1024) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #16
  br label %132

132:                                              ; preds = %53, %129, %50, %44, %30, %23, %17
  %133 = phi i32 [ 2, %17 ], [ 2, %23 ], [ 2, %30 ], [ 2, %44 ], [ 4, %129 ], [ 2, %50 ], [ 2, %53 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_link_append_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_link_append_properties_common(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = zext nneg i8 %1 to i32
  %6 = tail call ptr @RNA_def_boolean(ptr noundef %4, ptr noundef nonnull @.str.235, i32 noundef %5, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.238) #16
  tail call void @RNA_def_property_flag(ptr noundef %6, i32 noundef 268959744) #16
  %7 = load ptr, ptr %3, align 8, !tbaa !39
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.231, i32 noundef 1, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.239) #16
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #16
  %9 = load ptr, ptr %3, align 8, !tbaa !39
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.234, i32 noundef 1, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.241) #16
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #16
  %11 = load ptr, ptr %3, align 8, !tbaa !39
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.236, i32 noundef %5, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.243) #16
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #16
  ret void
}

declare zeroext i8 @BLI_parent_dir(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLO_is_a_library(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @BLO_blendhandle_from_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_idcode_from_name(ptr noundef) local_unnamed_addr #2

declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #2

declare void @BKE_main_id_flag_all(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLO_library_append_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLO_library_append_named_part_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLO_library_append_end(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_main_lib_objects_recalc_all(ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_check_file_config(ptr noundef) local_unnamed_addr #2

declare void @BKE_library_make_local(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @DAG_scene_relations_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLO_blendhandle_close(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_recover_last_session_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  tail call void @WM_recover_last_session(ptr noundef %0, ptr noundef %4)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_recover_auto_save_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #16
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !156
  %7 = or i32 %6, 8388608
  store i32 %7, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !156
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #16
  call void @WM_file_autoexec_init(ptr noundef nonnull %3) #16
  %10 = call zeroext i8 @WM_file_read(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %9) #16
  %11 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !156
  %12 = and i32 %11, -8388609
  store i32 %12, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !156
  %13 = icmp eq i8 %10, 0
  %14 = select i1 %13, i32 2, i32 4
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #16
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_recover_auto_save_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #16
  call void @wm_autosave_location(ptr noundef nonnull %4) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #16
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #16
  ret i32 1
}

declare void @wm_autosave_location(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_save_as_mainfile_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.254) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !161
  %11 = icmp eq i8 %10, 0
  %12 = load ptr, ptr %5, align 8, !tbaa !68
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %14 = and i32 %13, 2
  %15 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8
  %16 = and i32 %15, 32768
  %17 = select i1 %11, i32 %16, i32 %14
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.254, i32 noundef %17) #16
  br label %18

18:                                               ; preds = %9, %3
  %19 = load ptr, ptr @G, align 8, !tbaa !158
  %20 = getelementptr inbounds %struct.Main, ptr %19, i64 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !34
  %22 = icmp eq i8 %21, 0
  %23 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8
  %24 = icmp ne ptr %23, null
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.RecentFile, ptr %23, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !210
  %29 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %28, i64 noundef 1024) #16
  br label %32

30:                                               ; preds = %18
  %31 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %20, i64 noundef 1024) #16
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !161
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call zeroext i8 @BLI_ensure_filename(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull @.str.265) #16
  br label %37

37:                                               ; preds = %32, %35
  %38 = load ptr, ptr %5, align 8, !tbaa !68
  call void @RNA_string_set(ptr noundef %38, ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #16
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_save_as_mainfile_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.254) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !161
  %10 = icmp eq i8 %9, 0
  %11 = load ptr, ptr %4, align 8, !tbaa !68
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %13 = and i32 %12, 2
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8
  %15 = and i32 %14, 32768
  %16 = select i1 %10, i32 %15, i32 %13
  tail call void @RNA_boolean_set(ptr noundef %11, ptr noundef nonnull @.str.254, i32 noundef %16) #16
  br label %17

17:                                               ; preds = %8, %2
  %18 = load ptr, ptr %4, align 8, !tbaa !68
  %19 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %18, ptr noundef nonnull @.str.20) #16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %22, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #16
  br label %31

23:                                               ; preds = %17
  %24 = load ptr, ptr @G, align 8, !tbaa !158
  %25 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 2
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %25, i64 noundef 1024) #16
  %27 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !161
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call zeroext i8 @BLI_ensure_filename(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef nonnull @.str.265) #16
  br label %31

31:                                               ; preds = %29, %23, %21
  %32 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !156
  %33 = load ptr, ptr %4, align 8, !tbaa !68
  %34 = call i32 @RNA_boolean_get(ptr noundef %33, ptr noundef nonnull @.str.254) #16
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %32, -515
  %37 = or disjoint i32 %36, 2
  %38 = select i1 %35, i32 %36, i32 %37
  %39 = load ptr, ptr %4, align 8, !tbaa !68
  %40 = call i32 @RNA_boolean_get(ptr noundef %39, ptr noundef nonnull @.str.257) #16
  %41 = icmp eq i32 %40, 0
  %42 = or i32 %38, 16777216
  %43 = and i32 %38, -16777729
  %44 = select i1 %41, i32 %43, i32 %42
  %45 = load ptr, ptr %4, align 8, !tbaa !68
  %46 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %45, ptr noundef nonnull @.str.137) #16
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %31
  %49 = load ptr, ptr %4, align 8, !tbaa !68
  %50 = call i32 @RNA_boolean_get(ptr noundef %49, ptr noundef nonnull @.str.137) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = or i32 %44, 134217728
  br label %56

54:                                               ; preds = %48, %31
  %55 = and i32 %44, -134218241
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load ptr, ptr %4, align 8, !tbaa !68
  %59 = call ptr @RNA_struct_find_property(ptr noundef %58, ptr noundef nonnull @.str.262) #16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %4, align 8, !tbaa !68
  %63 = call i32 @RNA_boolean_get(ptr noundef %62, ptr noundef nonnull @.str.262) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = or i32 %57, 67108864
  br label %69

67:                                               ; preds = %61, %56
  %68 = and i32 %57, -67108865
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !64
  %73 = call i32 @wm_file_write(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %70, ptr noundef %72) #16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 16908288, ptr noundef null) #16
  br label %76

76:                                               ; preds = %69, %75
  %77 = phi i32 [ 4, %75 ], [ 2, %69 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #16
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @blend_save_check(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #16
  %6 = call zeroext i8 @BLO_has_bfile_extension(ptr noundef nonnull %3) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = call zeroext i8 @BLI_ensure_extension(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef nonnull @.str.266) #16
  %10 = load ptr, ptr %4, align 8, !tbaa !68
  call void @RNA_string_set(ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #16
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i8 [ 1, %8 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #16
  ret i8 %12
}

declare zeroext i8 @BLI_ensure_filename(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wm_file_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLO_has_bfile_extension(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ensure_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_save_mainfile_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #16
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %83, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %10, ptr noundef nonnull @.str.254) #16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !161
  %15 = icmp eq i8 %14, 0
  %16 = load ptr, ptr %9, align 8, !tbaa !68
  %17 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %18 = and i32 %17, 2
  %19 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8
  %20 = and i32 %19, 32768
  %21 = select i1 %15, i32 %20, i32 %18
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.254, i32 noundef %21) #16
  br label %22

22:                                               ; preds = %13, %8
  %23 = load ptr, ptr @G, align 8, !tbaa !158
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 2
  %25 = load i8, ptr %24, align 8, !tbaa !34
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8
  %28 = icmp ne ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.RecentFile, ptr %27, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !210
  %33 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %32, i64 noundef 1024) #16
  br label %36

34:                                               ; preds = %22
  %35 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %24, i64 noundef 1024) #16
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !161
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call zeroext i8 @BLI_ensure_filename(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.265) #16
  br label %41

41:                                               ; preds = %36, %39
  %42 = load ptr, ptr %9, align 8, !tbaa !68
  call void @RNA_string_set(ptr noundef %42, ptr noundef nonnull @.str.20, ptr noundef nonnull %5) #16
  %43 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !160
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !213
  %47 = and i32 %46, 1048576
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %9, align 8, !tbaa !68
  %51 = call ptr @RNA_struct_find_property(ptr noundef %50, ptr noundef nonnull @.str.257) #16
  %52 = load ptr, ptr %9, align 8, !tbaa !68
  %53 = call zeroext i8 @RNA_property_is_set(ptr noundef %52, ptr noundef %51) #16
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load ptr, ptr %9, align 8, !tbaa !68
  call void @RNA_property_boolean_set(ptr noundef %56, ptr noundef %51, i32 noundef 1) #16
  br label %57

57:                                               ; preds = %49, %55, %45, %41
  %58 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !161
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %57
  %61 = call i32 @BLI_exists(ptr noundef nonnull %5) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %80, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %9, align 8, !tbaa !68
  %65 = getelementptr inbounds %struct.PointerRNA, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !69
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.IDProperty, ptr %66, i64 0, i32 8
  %70 = load i32, ptr %69, align 8, !tbaa !141
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = call ptr @IDP_CopyProperty(ptr noundef nonnull %66) #16
  br label %74

74:                                               ; preds = %63, %68, %72
  %75 = phi ptr [ %73, %72 ], [ null, %68 ], [ null, %63 ]
  %76 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.269, i32 noundef 1) #16
  %77 = call ptr @uiPupMenuLayout(ptr noundef %76) #16
  %78 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %77, ptr noundef %79, ptr noundef nonnull %5, i32 noundef 0, ptr noundef %75, i32 noundef 7, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %76) #16
  br label %83

80:                                               ; preds = %60
  %81 = call i32 @wm_save_as_mainfile_exec(ptr noundef %0, ptr noundef %1), !range !220
  br label %83

82:                                               ; preds = %57
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #16
  br label %83

83:                                               ; preds = %82, %80, %74, %3
  %84 = phi i32 [ 2, %3 ], [ 32, %74 ], [ %81, %80 ], [ 1, %82 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #16
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @redraw_timer_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %5 = tail call double @PIL_check_seconds_timer() #16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.272) #16
  %9 = load ptr, ptr %6, align 8, !tbaa !68
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.274) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr @.str.2, ptr %3, align 8, !tbaa !37
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #16
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %111

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br label %14

14:                                               ; preds = %12, %108
  %15 = phi i32 [ 0, %12 ], [ %109, %108 ]
  switch i32 %8, label %107 [
    i32 0, label %16
    i32 1, label %18
    i32 2, label %20
    i32 3, label %46
    i32 4, label %57
    i32 5, label %70
  ]

16:                                               ; preds = %14
  br i1 %13, label %108, label %17

17:                                               ; preds = %16
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %4) #16
  br label %108

18:                                               ; preds = %14
  %19 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #16
  tail call void @ED_region_tag_redraw(ptr noundef %4) #16
  tail call void @wm_draw_update(ptr noundef %0) #16
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %19) #16
  br label %108

20:                                               ; preds = %14
  %21 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %22 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %23 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #16
  %24 = tail call ptr @CTX_wm_screen(ptr noundef %0) #16
  %25 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  %27 = icmp eq ptr %26, null
  br i1 %27, label %45, label %31

28:                                               ; preds = %42, %31
  %29 = load ptr, ptr %32, align 8, !tbaa !37
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31, !llvm.loop !221

31:                                               ; preds = %20, %28
  %32 = phi ptr [ %29, %28 ], [ %26, %20 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %32) #16
  %33 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !37
  %35 = icmp eq ptr %34, null
  br i1 %35, label %28, label %36

36:                                               ; preds = %31, %42
  %37 = phi ptr [ %43, %42 ], [ %34, %31 ]
  %38 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 7
  %39 = load i16, ptr %38, align 4, !tbaa !222
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %37) #16
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %37) #16
  br label %42

42:                                               ; preds = %36, %41
  %43 = load ptr, ptr %37, align 8, !tbaa !37
  %44 = icmp eq ptr %43, null
  br i1 %44, label %28, label %36, !llvm.loop !223

45:                                               ; preds = %28, %20
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %21) #16
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %22) #16
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %23) #16
  br label %108

46:                                               ; preds = %14
  %47 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #16
  %48 = tail call ptr @CTX_wm_screen(ptr noundef %0) #16
  %49 = getelementptr inbounds %struct.bScreen, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !37
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %46, %52
  %53 = phi ptr [ %54, %52 ], [ %50, %46 ]
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %53) #16
  %54 = load ptr, ptr %53, align 8, !tbaa !37
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %52, !llvm.loop !224

56:                                               ; preds = %52, %46
  tail call void @wm_draw_update(ptr noundef %0) #16
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %47) #16
  br label %108

57:                                               ; preds = %14
  %58 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %59 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %60 = and i32 %15, 1
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.Scene, ptr %59, i64 0, i32 22, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !225
  %64 = select i1 %61, i32 1, i32 -1
  %65 = add nsw i32 %63, %64
  store i32 %65, ptr %62, align 8, !tbaa !225
  %66 = getelementptr inbounds %struct.Main, ptr %58, i64 0, i32 46
  %67 = load ptr, ptr %66, align 8, !tbaa !226
  %68 = getelementptr inbounds %struct.Scene, ptr %59, i64 0, i32 12
  %69 = load i32, ptr %68, align 8, !tbaa !227
  tail call void @BKE_scene_update_for_newframe(ptr noundef %67, ptr noundef %58, ptr noundef %59, i32 noundef %69) #16
  br label %108

70:                                               ; preds = %14
  %71 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %72 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %73 = getelementptr inbounds %struct.Scene, ptr %72, i64 0, i32 22, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !228
  %75 = getelementptr inbounds %struct.Scene, ptr %72, i64 0, i32 22, i32 6
  %76 = load i32, ptr %75, align 4, !tbaa !229
  %77 = add i32 %74, 1
  %78 = icmp eq i32 %77, %76
  br i1 %78, label %108, label %79

79:                                               ; preds = %70
  %80 = sub i32 %74, %76
  %81 = getelementptr inbounds %struct.Scene, ptr %72, i64 0, i32 22, i32 5
  %82 = getelementptr inbounds %struct.Main, ptr %71, i64 0, i32 46
  %83 = getelementptr inbounds %struct.Scene, ptr %72, i64 0, i32 12
  br label %84

84:                                               ; preds = %79, %104
  %85 = phi i32 [ %80, %79 ], [ %105, %104 ]
  %86 = load i32, ptr %81, align 8, !tbaa !225
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %81, align 8, !tbaa !225
  %88 = load i32, ptr %73, align 8, !tbaa !228
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = load i32, ptr %75, align 4, !tbaa !229
  store i32 %91, ptr %81, align 8, !tbaa !225
  br label %92

92:                                               ; preds = %90, %84
  %93 = load ptr, ptr %82, align 8, !tbaa !226
  %94 = load i32, ptr %83, align 8, !tbaa !227
  tail call void @BKE_scene_update_for_newframe(ptr noundef %93, ptr noundef %71, ptr noundef %72, i32 noundef %94) #16
  %95 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #16
  %96 = tail call ptr @CTX_wm_screen(ptr noundef %0) #16
  %97 = getelementptr inbounds %struct.bScreen, ptr %96, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !37
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %92, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %92 ]
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %101) #16
  %102 = load ptr, ptr %101, align 8, !tbaa !37
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %100, !llvm.loop !224

104:                                              ; preds = %100, %92
  tail call void @wm_draw_update(ptr noundef %0) #16
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %95) #16
  %105 = add nsw i32 %85, -1
  %106 = icmp eq i32 %85, 0
  br i1 %106, label %108, label %84, !llvm.loop !230

107:                                              ; preds = %14
  tail call void @ED_undo_pop(ptr noundef %0) #16
  tail call void @ED_undo_redo(ptr noundef %0) #16
  br label %108

108:                                              ; preds = %104, %70, %17, %16, %45, %57, %107, %56, %18
  %109 = add nuw nsw i32 %15, 1
  %110 = icmp eq i32 %109, %10
  br i1 %110, label %111, label %14, !llvm.loop !231

111:                                              ; preds = %108, %2
  %112 = tail call double @PIL_check_seconds_timer() #16
  %113 = fsub double %112, %5
  %114 = fmul double %113, 1.000000e+03
  %115 = fptrunc double %114 to float
  %116 = call zeroext i8 @RNA_enum_description(ptr noundef nonnull @redraw_timer_type_items, i32 noundef %8, ptr noundef nonnull %3) #16
  call void @WM_cursor_wait(i8 noundef zeroext 0) #16
  %117 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %118 = load ptr, ptr %117, align 8, !tbaa !64
  %119 = load ptr, ptr %3, align 8, !tbaa !37
  %120 = fpext float %115 to double
  %121 = sitofp i32 %10 to float
  %122 = fdiv float %115, %121
  %123 = fpext float %122 to double
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %118, i32 noundef 16, ptr noundef nonnull @.str.277, i32 noundef %10, ptr noundef %119, double noundef %120, double noundef %123) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 4
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_region_do_draw(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_menu_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @wm_draw_update(ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_undo_pop(ptr noundef) local_unnamed_addr #2

declare void @ED_undo_redo(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_enum_description(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @memory_statistics_exec(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr @MEM_printmemlist_stats, align 8, !tbaa !37
  tail call void %3() #16
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dependency_relations_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  tail call void @DAG_print_dependencies(ptr noundef %3, ptr noundef %4, ptr noundef %5) #16
  ret i32 4
}

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @DAG_print_dependencies(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_debug_menu_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !232
  %7 = sext i16 %6 to i32
  tail call void @RNA_int_set(ptr noundef %5, ptr noundef nonnull @.str.304, i32 noundef %7) #16
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %9 = sext i16 %8 to i32
  %10 = mul nsw i32 %9, 9
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %12 = tail call ptr %11(i64 noundef 24, ptr noundef nonnull @.str.117) #16
  store ptr %1, ptr %12, align 8, !tbaa !149
  %13 = getelementptr inbounds %struct.wmOpPopUp, ptr %12, i64 0, i32 1
  store i32 %10, ptr %13, align 8, !tbaa !151
  %14 = getelementptr inbounds %struct.wmOpPopUp, ptr %12, i64 0, i32 2
  store i32 %9, ptr %14, align 4, !tbaa !152
  %15 = getelementptr inbounds %struct.wmOpPopUp, ptr %12, i64 0, i32 3
  store i32 1, ptr %15, align 8, !tbaa !153
  tail call void @uiPupBlockEx(ptr noundef %0, ptr noundef nonnull @wm_block_dialog_create, ptr noundef nonnull @wm_operator_ui_popup_ok, ptr noundef nonnull @wm_operator_ui_popup_cancel, ptr noundef nonnull %12) #16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_debug_menu_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call i32 @RNA_int_get(ptr noundef %4, ptr noundef nonnull @.str.304) #16
  %6 = trunc i32 %5 to i16
  store i16 %6, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !232
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  tail call void @ED_screen_refresh(ptr noundef %7, ptr noundef %8) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #16
  ret i32 4
}

declare void @ED_screen_refresh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_operator_defaults_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.309, ptr noundef nonnull @RNA_Operator) #16
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.310) #16
  br label %11

10:                                               ; preds = %2
  call void @WM_operator_properties_reset(ptr noundef nonnull %5)
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i32 [ 4, %10 ], [ 2, %7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret i32 %12
}

declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_splash_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  tail call void @uiPupBlock(ptr noundef %0, ptr noundef nonnull @wm_block_create_splash, ptr noundef null) #16
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @wm_block_create_splash(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [96 x i8], align 16
  %5 = alloca %struct.Menu, align 8
  %6 = tail call ptr @UI_GetStyle() #16
  %7 = tail call ptr @WM_menutype_find(ptr noundef nonnull @.str.314, i8 noundef zeroext 1) #16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #16
  %8 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.174, i16 noundef signext 0) #16
  tail call void @uiBlockSetFlag(ptr noundef %8, i32 noundef 272) #16
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %10 = sitofp i16 %9 to float
  %11 = fmul float %10, 5.000000e-01
  %12 = fptosi float %11 to i32
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !233
  %14 = fmul float %13, 5.010000e+02
  %15 = fptosi float %14 to i16
  %16 = fmul float %13, 2.820000e+02
  %17 = fptosi float %16 to i16
  %18 = tail call ptr @uiDefBut(ptr noundef %8, i32 noundef 24064, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %12, i16 noundef signext %15, i16 noundef signext %17, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #16
  tail call void @uiButSetFunc(ptr noundef %18, ptr noundef nonnull @wm_block_splash_close, ptr noundef %8, ptr noundef null) #16
  tail call void @uiBlockSetFunc(ptr noundef %8, ptr noundef nonnull @wm_block_splash_refreshmenu, ptr noundef %8, ptr noundef null) #16
  %19 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !233
  %20 = fmul float %19, 4.800000e+02
  %21 = fptosi float %20 to i32
  %22 = fmul float %19, 1.100000e+02
  %23 = fptosi float %22 to i32
  %24 = tail call ptr @uiBlockLayout(ptr noundef %8, i32 noundef 1, i32 noundef 0, i32 noundef 10, i32 noundef 2, i32 noundef %21, i32 noundef %23, i32 noundef 0, ptr noundef %6) #16
  tail call void @uiBlockSetEmboss(ptr noundef %8, i8 noundef zeroext 0) #16
  %25 = icmp eq ptr %7, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.Menu, ptr %5, i64 0, i32 1
  store ptr %24, ptr %27, align 8, !tbaa !234
  store ptr %7, ptr %5, align 8, !tbaa !236
  %28 = getelementptr inbounds %struct.MenuType, ptr %7, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !237
  call void %29(ptr noundef %0, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %30

30:                                               ; preds = %26, %3
  call void @uiBlockSetEmboss(ptr noundef %8, i8 noundef zeroext 2) #16
  call void @uiLayoutSetOperatorContext(ptr noundef %24, i32 noundef 7) #16
  %31 = call ptr @uiLayoutSplit(ptr noundef %24, float noundef 0.000000e+00, i32 noundef 0) #16
  %32 = call ptr @uiLayoutColumn(ptr noundef %31, i32 noundef 0) #16
  call void @uiItemL(ptr noundef %32, ptr noundef nonnull @.str.315, i32 noundef 0) #16
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.316, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319) #16
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.320, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.321) #16
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.322, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.323) #16
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 96, ptr noundef nonnull @.str.324, i32 noundef 2, i32 noundef 72) #16
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.325, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull %4) #16
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.326, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.327) #16
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.328, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.329) #16
  %34 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 96, ptr noundef nonnull @.str.330, i32 noundef 2, i32 noundef 72, i32 noundef 1) #16
  call void @uiItemStringO(ptr noundef %32, ptr noundef nonnull @.str.331, i32 noundef 72, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, ptr noundef nonnull %4) #16
  call void @uiItemL(ptr noundef %32, ptr noundef nonnull @.str.2, i32 noundef 0) #16
  %35 = call ptr @uiLayoutColumn(ptr noundef %31, i32 noundef 0) #16
  %36 = call ptr @BLI_get_folder_version(i32 noundef 0, i32 noundef 272, i8 noundef zeroext 1) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = call ptr @BLI_get_folder_version(i32 noundef 0, i32 noundef 271, i8 noundef zeroext 1) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  call void @uiItemO(ptr noundef %35, ptr noundef null, i32 noundef 69, ptr noundef nonnull @.str.332) #16
  call void @uiItemS(ptr noundef %35) #16
  br label %42

42:                                               ; preds = %30, %41, %38
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.333, i32 noundef 0) #16
  %43 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8, !tbaa !37
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %42, %45
  %46 = phi ptr [ %56, %45 ], [ %43, %42 ]
  %47 = phi i32 [ %55, %45 ], [ 0, %42 ]
  %48 = getelementptr inbounds %struct.RecentFile, ptr %46, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !210
  %50 = call ptr @BLI_path_basename(ptr noundef %49) #16
  %51 = call zeroext i8 @BLO_has_bfile_extension(ptr noundef %50) #16
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 726, i32 695
  %54 = load ptr, ptr %48, align 8, !tbaa !210
  call void @uiItemStringO(ptr noundef %35, ptr noundef %50, i32 noundef %53, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.20, ptr noundef %54) #16
  %55 = add nuw nsw i32 %47, 1
  %56 = load ptr, ptr %46, align 8, !tbaa !37
  %57 = icmp ult i32 %47, 4
  %58 = icmp ne ptr %56, null
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %45, label %60, !llvm.loop !239

60:                                               ; preds = %45, %42
  call void @uiItemS(ptr noundef %35) #16
  call void @uiItemO(ptr noundef %35, ptr noundef null, i32 noundef 73, ptr noundef nonnull @.str.247) #16
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.2, i32 noundef 0) #16
  call void @uiCenteredBoundsBlock(ptr noundef %8, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #16
  ret ptr %8
}

declare ptr @WM_menutype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @wm_block_splash_close(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  tail call void @uiPupBlockClose(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @wm_block_splash_refreshmenu(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #10 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemStringO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemS(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #2

declare void @uiCenteredBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_get_folder_version(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @wm_search_menu_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  tail call void @uiPupBlock(ptr noundef %0, ptr noundef nonnull @wm_block_search_menu, ptr noundef %1) #16
  ret i32 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @wm_search_menu_exec(ptr nocapture readnone %0, ptr nocapture readnone %1) #10 {
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_search_menu_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !240
  %10 = icmp ne i8 %9, 18
  %11 = icmp ne i8 %9, 9
  %12 = and i1 %10, %11
  %13 = zext i1 %12 to i32
  br label %22

14:                                               ; preds = %4
  %15 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !242
  %20 = icmp eq i16 %19, 4
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %17
  br label %22

22:                                               ; preds = %21, %17, %7, %1
  %23 = phi i32 [ 0, %1 ], [ 1, %21 ], [ 0, %17 ], [ %13, %7 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @wm_block_search_menu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.wmEvent, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #16
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.174, i16 noundef signext 0) #16
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 133) #16
  %7 = tail call i32 @uiSearchBoxWidth() #16
  %8 = trunc i32 %7 to i16
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %10 = tail call ptr @uiDefSearchBut(ptr noundef %6, ptr noundef nonnull @wm_block_search_menu.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 10, i32 noundef 10, i16 noundef signext %8, i16 noundef signext %9, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #16
  tail call void @uiOperatorSearch_But(ptr noundef %10) #16
  %11 = tail call i32 @uiSearchBoxHeight() #16
  %12 = sub nsw i32 10, %11
  %13 = tail call i32 @uiSearchBoxWidth() #16
  %14 = trunc i32 %13 to i16
  %15 = tail call i32 @uiSearchBoxHeight() #16
  %16 = trunc i32 %15 to i16
  %17 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 10, i32 noundef %12, i16 noundef signext %14, i16 noundef signext %16, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #16
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !134
  %19 = sext i16 %18 to i32
  %20 = sub nsw i32 0, %19
  tail call void @uiPopupBoundsBlock(ptr noundef %6, i32 noundef 6, i32 noundef 0, i32 noundef %20) #16
  call void @wm_event_init_from_window(ptr noundef %5, ptr noundef nonnull %4) #16
  %21 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  store i16 20513, ptr %21, align 8, !tbaa !135
  %22 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  store i16 1, ptr %22, align 2, !tbaa !138
  %23 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  store ptr %10, ptr %23, align 8, !tbaa !139
  %24 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 26
  store i16 0, ptr %24, align 2, !tbaa !140
  call void @wm_event_add(ptr noundef %5, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #16
  ret ptr %6
}

declare ptr @uiDefSearchBut(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiOperatorSearch_But(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @wm_call_menu_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.233, ptr noundef nonnull %3) #16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = call i32 @uiPupMenuInvoke(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret i32 %8
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uiPupMenuInvoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @wm_call_pie_menu_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.233, ptr noundef nonnull %4) #16
  %7 = call i32 @uiPieMenuInvoke(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @wm_call_pie_menu_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.233, ptr noundef nonnull %3) #16
  %6 = call ptr @CTX_wm_window(ptr noundef %0) #16
  %7 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !243
  %9 = call i32 @uiPieMenuInvoke(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %8) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret i32 %9
}

declare i32 @uiPieMenuInvoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @radial_control_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %14 = tail call ptr %13(i64 noundef 288, ptr noundef nonnull @.str.375) #16
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %14, ptr %15, align 8, !tbaa !54
  %16 = icmp eq ptr %14, null
  br i1 %16, label %199, label %17

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr %7, align 8, !tbaa !37
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_Context, ptr noundef %0, ptr noundef nonnull %5) #16
  %18 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.354, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 5), !range !174
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %81, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %7, align 8, !tbaa !37
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i32 @RNA_property_boolean_get(ptr noundef nonnull %6, ptr noundef nonnull %21) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi ptr [ @.str.348, %26 ], [ @.str.351, %23 ]
  %29 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 2
  %30 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 8
  %31 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30, i32 noundef 0, i32 noundef 0), !range !174
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %81, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %30, align 8, !tbaa !244
  %35 = icmp eq ptr %34, null
  br i1 %35, label %81, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 5
  %38 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 11
  %39 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.357, ptr noundef nonnull %37, ptr noundef nonnull %38, i32 noundef 0, i32 noundef 2), !range !174
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 3
  %43 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 9
  %44 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.360, ptr noundef nonnull %42, ptr noundef nonnull %43, i32 noundef 3, i32 noundef 2), !range !174
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %81, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 4
  %48 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 10
  %49 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.363, ptr noundef nonnull %47, ptr noundef nonnull %48, i32 noundef 3, i32 noundef 2), !range !174
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 6
  %53 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 12
  %54 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.366, ptr noundef nonnull %52, ptr noundef nonnull %53, i32 noundef 2, i32 noundef 3), !range !174
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 7
  %58 = call fastcc i32 @radial_control_get_path(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.369, ptr noundef nonnull %57, ptr noundef null, i32 noundef 0, i32 noundef 0), !range !174
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 7, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !246
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 7, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !247
  %67 = call zeroext i8 @RNA_struct_is_ID(ptr noundef %66) #16
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %71 = load ptr, ptr %70, align 8, !tbaa !64
  call void @BKE_report(ptr noundef %71, i32 noundef 32, ptr noundef nonnull @.str.378) #16
  br label %81

72:                                               ; preds = %64, %60
  %73 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !68
  %75 = call i32 @RNA_boolean_get(ptr noundef %74, ptr noundef nonnull @.str.372) #16
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 24
  store i8 %76, ptr %77, align 8, !tbaa !248
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %78 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !244
  %80 = call i32 @RNA_property_type(ptr noundef %79) #16
  store i32 %80, ptr %14, align 8, !tbaa !249
  switch i32 %80, label %104 [
    i32 1, label %83
    i32 2, label %96
  ]

81:                                               ; preds = %17, %27, %33, %36, %41, %46, %51, %56, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %82(ptr noundef %14) #16
  br label %199

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 2
  %85 = load ptr, ptr %78, align 8, !tbaa !244
  %86 = call i32 @RNA_property_int_get(ptr noundef nonnull %84, ptr noundef %85) #16
  %87 = sitofp i32 %86 to float
  %88 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 14
  store float %87, ptr %88, align 8, !tbaa !250
  %89 = load ptr, ptr %78, align 8, !tbaa !244
  call void @RNA_property_int_ui_range(ptr noundef nonnull %84, ptr noundef %89, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %90 = load i32, ptr %8, align 4, !tbaa !83
  %91 = sitofp i32 %90 to float
  %92 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 16
  store float %91, ptr %92, align 8, !tbaa !251
  %93 = load i32, ptr %9, align 4, !tbaa !83
  %94 = sitofp i32 %93 to float
  %95 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 17
  store float %94, ptr %95, align 4, !tbaa !252
  br label %108

96:                                               ; preds = %72
  %97 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 2
  %98 = load ptr, ptr %78, align 8, !tbaa !244
  %99 = call float @RNA_property_float_get(ptr noundef nonnull %97, ptr noundef %98) #16
  %100 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 14
  store float %99, ptr %100, align 8, !tbaa !250
  %101 = load ptr, ptr %78, align 8, !tbaa !244
  %102 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 16
  %103 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 17
  call void @RNA_property_float_ui_range(ptr noundef nonnull %97, ptr noundef %101, ptr noundef nonnull %102, ptr noundef nonnull %103, ptr noundef nonnull %11, ptr noundef nonnull %12) #16
  br label %108

104:                                              ; preds = %72
  %105 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !64
  call void @BKE_report(ptr noundef %106, i32 noundef 32, ptr noundef nonnull @.str.376) #16
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %107(ptr noundef nonnull %14) #16
  br label %199

108:                                              ; preds = %96, %83
  %109 = load ptr, ptr %78, align 8, !tbaa !244
  %110 = call i32 @RNA_property_subtype(ptr noundef %109) #16
  %111 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 1
  store i32 %110, ptr %111, align 4, !tbaa !253
  switch i32 %110, label %112 [
    i32 0, label %116
    i32 65554, label %116
    i32 15, label %116
    i32 327696, label %116
    i32 12, label %116
  ]

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %114 = load ptr, ptr %113, align 8, !tbaa !64
  call void @BKE_report(ptr noundef %114, i32 noundef 32, ptr noundef nonnull @.str.377) #16
  %115 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %115(ptr noundef nonnull %14) #16
  br label %199

116:                                              ; preds = %108, %108, %108, %108, %108
  %117 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 14
  %118 = load float, ptr %117, align 8, !tbaa !250
  %119 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 15
  store float %118, ptr %119, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 4575657222473777152, ptr %4, align 8
  %120 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %121 = load i32, ptr %120, align 4, !tbaa !172
  %122 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 18
  store i32 %121, ptr %122, align 8, !tbaa !83
  %123 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %124 = load i32, ptr %123, align 8, !tbaa !173
  %125 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 18, i64 1
  store i32 %124, ptr %125, align 4, !tbaa !83
  %126 = load i32, ptr %111, align 4, !tbaa !253
  switch i32 %126, label %160 [
    i32 0, label %136
    i32 65554, label %136
    i32 12, label %136
    i32 15, label %127
    i32 327696, label %130
  ]

127:                                              ; preds = %116
  %128 = fsub float 1.000000e+00, %118
  %129 = call float @llvm.fmuladd.f32(float %128, float 1.650000e+02, float 3.500000e+01)
  br label %136

130:                                              ; preds = %116
  %131 = call float @cosf(float noundef %118) #16
  %132 = fmul float %131, 2.000000e+02
  %133 = load float, ptr %117, align 8, !tbaa !250
  %134 = call float @sinf(float noundef %133) #16
  %135 = fmul float %134, 2.000000e+02
  br label %136

136:                                              ; preds = %116, %116, %116, %130, %127
  %137 = phi float [ %132, %130 ], [ %129, %127 ], [ %118, %116 ], [ %118, %116 ], [ %118, %116 ]
  %138 = phi float [ %135, %130 ], [ 0.000000e+00, %127 ], [ 0.000000e+00, %116 ], [ 0.000000e+00, %116 ], [ 0.000000e+00, %116 ]
  %139 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 12
  %140 = load ptr, ptr %139, align 8, !tbaa !255
  %141 = icmp eq ptr %140, null
  br i1 %141, label %149, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 6
  call void @RNA_property_float_get_array(ptr noundef nonnull %143, ptr noundef nonnull %140, ptr noundef nonnull %4) #16
  %144 = load float, ptr %4, align 8, !tbaa !181
  %145 = fmul float %137, %144
  %146 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !181
  %148 = fmul float %138, %147
  br label %149

149:                                              ; preds = %142, %136
  %150 = phi float [ %145, %142 ], [ %137, %136 ]
  %151 = phi float [ %148, %142 ], [ %138, %136 ]
  %152 = load i32, ptr %122, align 8, !tbaa !83
  %153 = sitofp i32 %152 to float
  %154 = fsub float %153, %150
  %155 = fptosi float %154 to i32
  store i32 %155, ptr %122, align 8, !tbaa !83
  %156 = load i32, ptr %125, align 4, !tbaa !83
  %157 = sitofp i32 %156 to float
  %158 = fsub float %157, %151
  %159 = fptosi float %158 to i32
  store i32 %159, ptr %125, align 4, !tbaa !83
  br label %160

160:                                              ; preds = %116, %149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %161 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 7, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !247
  %163 = call signext i16 @RNA_type_to_ID_code(ptr noundef %162) #16
  %164 = icmp eq i16 %163, 21058
  br i1 %164, label %165, label %184

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 7, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !246
  %168 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 24
  %169 = load i8, ptr %168, align 8, !tbaa !248
  %170 = call ptr @BKE_brush_gen_radial_control_imbuf(ptr noundef %167, i8 noundef zeroext %169) #16
  %171 = icmp eq ptr %170, null
  br i1 %171, label %184, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 22
  call void @glGenTextures(i32 noundef 1, ptr noundef nonnull %173) #16
  %174 = load i32, ptr %173, align 8, !tbaa !256
  call void @glBindTexture(i32 noundef 3553, i32 noundef %174) #16
  %175 = getelementptr inbounds %struct.ImBuf, ptr %170, i64 0, i32 2
  %176 = load i32, ptr %175, align 8, !tbaa !257
  %177 = getelementptr inbounds %struct.ImBuf, ptr %170, i64 0, i32 3
  %178 = load i32, ptr %177, align 4, !tbaa !260
  %179 = getelementptr inbounds %struct.ImBuf, ptr %170, i64 0, i32 9
  %180 = load ptr, ptr %179, align 8, !tbaa !261
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6406, i32 noundef %176, i32 noundef %178, i32 noundef 0, i32 noundef 6406, i32 noundef 5126, ptr noundef %180) #16
  %181 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %182 = load ptr, ptr %179, align 8, !tbaa !261
  call void %181(ptr noundef %182) #16
  %183 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %183(ptr noundef nonnull %170) #16
  br label %184

184:                                              ; preds = %160, %165, %172
  %185 = call ptr @CTX_wm_manager(ptr noundef %0) #16
  %186 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 23
  %187 = getelementptr inbounds %struct.wmWindowManager, ptr %185, i64 0, i32 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %186, ptr noundef nonnull align 8 dereferenceable(16) %187, i64 16, i1 false), !tbaa.struct !262
  %188 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %187, i8 0, i64 16, i1 false)
  %189 = load ptr, ptr %188, align 8, !tbaa !56
  %190 = getelementptr inbounds %struct.wmOperatorType, ptr %189, i64 0, i32 9
  %191 = load ptr, ptr %190, align 8, !tbaa !52
  %192 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %193 = call ptr %192(i64 noundef 40, ptr noundef nonnull @.str.122) #16
  call void @BLI_addtail(ptr noundef nonnull %187, ptr noundef %193) #16
  %194 = getelementptr inbounds %struct.wmPaintCursor, ptr %193, i64 0, i32 2
  store ptr %14, ptr %194, align 8, !tbaa !162
  %195 = getelementptr inbounds %struct.wmPaintCursor, ptr %193, i64 0, i32 3
  store ptr %191, ptr %195, align 8, !tbaa !164
  %196 = getelementptr inbounds %struct.wmPaintCursor, ptr %193, i64 0, i32 4
  store ptr @radial_control_paint_cursor, ptr %196, align 8, !tbaa !165
  %197 = getelementptr inbounds %struct.RadialControl, ptr %14, i64 0, i32 25
  store ptr %193, ptr %197, align 8, !tbaa !263
  %198 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  br label %199

199:                                              ; preds = %3, %184, %112, %104, %81
  %200 = phi i32 [ 2, %104 ], [ 1, %184 ], [ 2, %112 ], [ 2, %81 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret i32 %200
}

; Function Attrs: nounwind uwtable
define internal i32 @radial_control_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %11 = load i16, ptr %10, align 2, !tbaa !264
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !135
  switch i16 %14, label %253 [
    i16 4, label %15
    i16 218, label %197
    i16 3, label %197
    i16 1, label %210
    i16 163, label %210
    i16 217, label %214
    i16 216, label %214
  ]

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 20
  %17 = load i8, ptr %16, align 8, !tbaa !265
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %98, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !253
  %22 = icmp eq i32 %21, 327696
  br i1 %22, label %23, label %48

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !172
  %26 = sitofp i32 %25 to float
  store float %26, ptr %5, align 4, !tbaa !181
  %27 = getelementptr inbounds float, ptr %5, i64 1
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !173
  %30 = sitofp i32 %29 to float
  store float %30, ptr %27, align 4, !tbaa !181
  %31 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 18
  %32 = load i32, ptr %31, align 8, !tbaa !83
  %33 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 19
  %34 = load i32, ptr %33, align 8, !tbaa !83
  %35 = sub nsw i32 %32, %34
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 18, i64 1
  %38 = load i32, ptr %37, align 4, !tbaa !83
  %39 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 19, i64 1
  %40 = load i32, ptr %39, align 4, !tbaa !83
  %41 = sub nsw i32 %38, %40
  %42 = sitofp i32 %41 to float
  %43 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 21
  %44 = load ptr, ptr %43, align 8, !tbaa !266
  %45 = call float @BLI_dial_angle(ptr noundef %44, ptr noundef nonnull %5) #16
  %46 = fmul float %45, 0xBFB99999A0000000
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %47 = fpext float %46 to double
  br label %127

48:                                               ; preds = %19
  %49 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 18
  %50 = load i32, ptr %49, align 8, !tbaa !83
  %51 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 19
  %52 = load i32, ptr %51, align 8, !tbaa !83
  %53 = sub nsw i32 %50, %52
  %54 = sitofp i32 %53 to float
  %55 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 18, i64 1
  %56 = load i32, ptr %55, align 4, !tbaa !83
  %57 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 19, i64 1
  %58 = load i32, ptr %57, align 4, !tbaa !83
  %59 = sub nsw i32 %56, %58
  %60 = sitofp i32 %59 to float
  %61 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !255
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 6
  call void @RNA_property_float_get_array(ptr noundef nonnull %65, ptr noundef nonnull %62, ptr noundef nonnull %4) #16
  %66 = load float, ptr %4, align 4, !tbaa !181
  %67 = fdiv float %54, %66
  %68 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !181
  %70 = fdiv float %60, %69
  br label %71

71:                                               ; preds = %64, %48
  %72 = phi float [ %60, %48 ], [ %70, %64 ]
  %73 = phi float [ %54, %48 ], [ %67, %64 ]
  %74 = fmul float %72, %72
  %75 = call float @llvm.fmuladd.f32(float %73, float %73, float %74)
  %76 = call float @sqrtf(float noundef %75) #16
  %77 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !172
  %79 = load i32, ptr %51, align 8, !tbaa !83
  %80 = sub nsw i32 %78, %79
  %81 = sitofp i32 %80 to float
  %82 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !173
  %84 = load i32, ptr %57, align 4, !tbaa !83
  %85 = sub nsw i32 %83, %84
  %86 = sitofp i32 %85 to float
  %87 = load ptr, ptr %61, align 8, !tbaa !255
  %88 = icmp eq ptr %87, null
  %89 = load float, ptr %4, align 4
  %90 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %91 = load float, ptr %90, align 4
  %92 = select i1 %88, float 1.000000e+00, float %91
  %93 = fdiv float %86, %92
  %94 = select i1 %88, float 1.000000e+00, float %89
  %95 = fdiv float %81, %94
  %96 = fadd float %95, %93
  %97 = call float @llvm.fmuladd.f32(float %96, float 0x3FB99999A0000000, float %76)
  br label %127

98:                                               ; preds = %15
  %99 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 18
  %100 = load i32, ptr %99, align 8, !tbaa !83
  %101 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %102 = load i32, ptr %101, align 4, !tbaa !172
  %103 = sub nsw i32 %100, %102
  %104 = sitofp i32 %103 to float
  %105 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 18, i64 1
  %106 = load i32, ptr %105, align 4, !tbaa !83
  %107 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %108 = load i32, ptr %107, align 8, !tbaa !173
  %109 = sub nsw i32 %106, %108
  %110 = sitofp i32 %109 to float
  %111 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 12
  %112 = load ptr, ptr %111, align 8, !tbaa !255
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %98
  %115 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 6
  call void @RNA_property_float_get_array(ptr noundef nonnull %115, ptr noundef nonnull %112, ptr noundef nonnull %4) #16
  %116 = load float, ptr %4, align 4, !tbaa !181
  %117 = fdiv float %104, %116
  %118 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !181
  %120 = fdiv float %110, %119
  br label %121

121:                                              ; preds = %114, %98
  %122 = phi float [ %110, %98 ], [ %120, %114 ]
  %123 = phi float [ %104, %98 ], [ %117, %114 ]
  %124 = fmul float %122, %122
  %125 = call float @llvm.fmuladd.f32(float %123, float %123, float %124)
  %126 = call float @sqrtf(float noundef %125) #16
  br label %127

127:                                              ; preds = %23, %71, %121
  %128 = phi float [ %122, %121 ], [ %42, %23 ], [ %93, %71 ]
  %129 = phi float [ %123, %121 ], [ %36, %23 ], [ %95, %71 ]
  %130 = phi float [ %126, %121 ], [ undef, %23 ], [ %97, %71 ]
  %131 = phi double [ 0.000000e+00, %121 ], [ %47, %23 ], [ 0.000000e+00, %71 ]
  %132 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !253
  switch i32 %133, label %173 [
    i32 0, label %134
    i32 65554, label %134
    i32 12, label %134
    i32 15, label %142
    i32 327696, label %152
  ]

134:                                              ; preds = %127, %127, %127
  br i1 %12, label %173, label %135

135:                                              ; preds = %134
  %136 = fptosi float %130 to i32
  %137 = freeze i32 %136
  %138 = add i32 %137, 5
  %139 = srem i32 %138, 10
  %140 = sub nsw i32 %138, %139
  %141 = sitofp i32 %140 to float
  br label %173

142:                                              ; preds = %127
  %143 = fsub float 2.000000e+02, %130
  %144 = fdiv float %143, 1.650000e+02
  br i1 %12, label %173, label %145

145:                                              ; preds = %142
  %146 = fmul float %144, 1.000000e+01
  %147 = call float @llvm.ceil.f32(float %146)
  %148 = fptosi float %147 to i32
  %149 = sitofp i32 %148 to float
  %150 = fmul float %149, 1.000000e+01
  %151 = fdiv float %150, 1.000000e+02
  br label %173

152:                                              ; preds = %127
  %153 = call float @atan2f(float noundef %128, float noundef %129) #16
  %154 = fpext float %153 to double
  %155 = fadd double %154, 0x400921FB54442D18
  %156 = fadd double %131, %155
  %157 = fptrunc double %156 to float
  %158 = fpext float %157 to double
  %159 = call double @fmod(double noundef %158, double noundef 0x401921FB60000000) #16
  %160 = fptrunc double %159 to float
  %161 = fcmp olt float %160, 0.000000e+00
  %162 = fadd float %160, 0x401921FB60000000
  %163 = select i1 %161, float %162, float %160
  br i1 %12, label %173, label %164

164:                                              ; preds = %152
  %165 = fmul float %163, 0x404CA5DC20000000
  %166 = fptosi float %165 to i32
  %167 = freeze i32 %166
  %168 = add i32 %167, 5
  %169 = srem i32 %168, 10
  %170 = sub nsw i32 %168, %169
  %171 = sitofp i32 %170 to float
  %172 = fmul float %171, 0x3F91DF46A0000000
  br label %173

173:                                              ; preds = %127, %152, %164, %142, %145, %134, %135
  %174 = phi float [ %172, %164 ], [ %163, %152 ], [ %151, %145 ], [ %144, %142 ], [ %141, %135 ], [ %130, %134 ], [ %130, %127 ]
  %175 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 16
  %176 = load float, ptr %175, align 8, !tbaa !251
  %177 = fcmp olt float %174, %176
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 17
  %180 = load float, ptr %179, align 4, !tbaa !252
  %181 = fcmp ogt float %174, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %183

183:                                              ; preds = %173, %178, %182
  %184 = phi float [ %180, %182 ], [ %174, %178 ], [ %176, %173 ]
  %185 = load i32, ptr %9, align 8, !tbaa !249
  switch i32 %185, label %195 [
    i32 1, label %186
    i32 2, label %191
  ]

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 2
  %188 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 8
  %189 = load ptr, ptr %188, align 8, !tbaa !244
  %190 = fptosi float %184 to i32
  call void @RNA_property_int_set(ptr noundef nonnull %187, ptr noundef %189, i32 noundef %190) #16
  br label %195

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 2
  %193 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 8
  %194 = load ptr, ptr %193, align 8, !tbaa !244
  call void @RNA_property_float_set(ptr noundef nonnull %192, ptr noundef %194, float noundef %184) #16
  br label %195

195:                                              ; preds = %183, %186, %191
  %196 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 15
  store float %184, ptr %196, align 4, !tbaa !254
  br label %253

197:                                              ; preds = %3, %3
  %198 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 14
  %199 = load float, ptr %198, align 8, !tbaa !250
  %200 = load i32, ptr %9, align 8, !tbaa !249
  switch i32 %200, label %253 [
    i32 1, label %201
    i32 2, label %206
  ]

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 2
  %203 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 8
  %204 = load ptr, ptr %203, align 8, !tbaa !244
  %205 = fptosi float %199 to i32
  tail call void @RNA_property_int_set(ptr noundef nonnull %202, ptr noundef %204, i32 noundef %205) #16
  br label %253

206:                                              ; preds = %197
  %207 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 2
  %208 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 8
  %209 = load ptr, ptr %208, align 8, !tbaa !244
  tail call void @RNA_property_float_set(ptr noundef nonnull %207, ptr noundef %209, float noundef %199) #16
  br label %253

210:                                              ; preds = %3, %3
  %211 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 2
  %212 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 8
  %213 = load ptr, ptr %212, align 8, !tbaa !244
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %211, ptr noundef %213) #16
  br label %253

214:                                              ; preds = %3, %3
  %215 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %216 = load i16, ptr %215, align 2, !tbaa !138
  %217 = icmp eq i16 %216, 1
  br i1 %217, label %218, label %243

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %220 = load i32, ptr %219, align 4, !tbaa !172
  %221 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 19
  store i32 %220, ptr %221, align 8, !tbaa !83
  %222 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %223 = load i32, ptr %222, align 8, !tbaa !173
  %224 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 19, i64 1
  store i32 %223, ptr %224, align 4, !tbaa !83
  %225 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 20
  store i8 1, ptr %225, align 8, !tbaa !265
  %226 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !253
  %228 = icmp eq i32 %227, 327696
  br i1 %228, label %229, label %243

229:                                              ; preds = %218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %230 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 18
  %231 = load i32, ptr %230, align 8, !tbaa !83
  %232 = sitofp i32 %231 to float
  store float %232, ptr %6, align 4, !tbaa !181
  %233 = getelementptr inbounds float, ptr %6, i64 1
  %234 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 18, i64 1
  %235 = load i32, ptr %234, align 4, !tbaa !83
  %236 = sitofp i32 %235 to float
  store float %236, ptr %233, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %237 = sitofp i32 %220 to float
  store float %237, ptr %7, align 4, !tbaa !181
  %238 = getelementptr inbounds float, ptr %7, i64 1
  %239 = sitofp i32 %223 to float
  store float %239, ptr %238, align 4, !tbaa !181
  %240 = call ptr @BLI_dial_initialize(ptr noundef nonnull %6, float noundef 0.000000e+00) #16
  %241 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 21
  store ptr %240, ptr %241, align 8, !tbaa !266
  %242 = call float @BLI_dial_angle(ptr noundef %240, ptr noundef nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %243

243:                                              ; preds = %218, %229, %214
  %244 = load i16, ptr %215, align 2, !tbaa !138
  %245 = icmp eq i16 %244, 2
  br i1 %245, label %246, label %253

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 20
  store i8 0, ptr %247, align 8, !tbaa !265
  %248 = getelementptr inbounds %struct.RadialControl, ptr %9, i64 0, i32 21
  %249 = load ptr, ptr %248, align 8, !tbaa !266
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %246
  %252 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %252(ptr noundef nonnull %249) #16
  store ptr null, ptr %248, align 8, !tbaa !266
  br label %253

253:                                              ; preds = %206, %201, %197, %243, %251, %246, %3, %210, %195
  %254 = phi float [ 1.000000e+00, %3 ], [ 1.000000e+00, %251 ], [ 1.000000e+00, %246 ], [ 1.000000e+00, %243 ], [ 4.000000e+00, %210 ], [ 1.000000e+00, %195 ], [ 2.000000e+00, %197 ], [ 2.000000e+00, %201 ], [ 2.000000e+00, %206 ]
  %255 = call ptr @CTX_wm_region(ptr noundef %0) #16
  call void @ED_region_tag_redraw(ptr noundef %255) #16
  %256 = fcmp une float %254, 1.000000e+00
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  call void @radial_control_cancel(ptr noundef %0, ptr noundef %1)
  br label %258

258:                                              ; preds = %257, %253
  %259 = fptosi float %254 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %259
}

; Function Attrs: nounwind uwtable
define internal void @radial_control_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.RadialControl, ptr %4, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !266
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %10(ptr noundef nonnull %7) #16
  store ptr null, ptr %6, align 8, !tbaa !266
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.RadialControl, ptr %4, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !263
  %14 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 11
  br label %15

15:                                               ; preds = %19, %11
  %16 = phi ptr [ %14, %11 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = icmp eq ptr %17, %13
  br i1 %20, label %21, label %15, !llvm.loop !166

21:                                               ; preds = %19
  tail call void @BLI_remlink(ptr noundef nonnull %14, ptr noundef nonnull %17) #16
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %22(ptr noundef nonnull %17) #16
  br label %23

23:                                               ; preds = %15, %21
  %24 = getelementptr inbounds %struct.RadialControl, ptr %4, i64 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !262
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #16
  %25 = getelementptr inbounds %struct.RadialControl, ptr %4, i64 0, i32 22
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull %25) #16
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %26(ptr noundef %4) #16
  ret void
}

declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_int_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @radial_control_paint_cursor(ptr noundef %0, i32 %1, i32 %2, ptr noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %12 = tail call ptr @UI_GetStyle() #16
  %13 = getelementptr inbounds %struct.uiStyle, ptr %12, i64 0, i32 6
  %14 = load i16, ptr %13, align 4, !tbaa !267
  %15 = getelementptr inbounds %struct.uiStyle, ptr %12, i64 0, i32 6, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !269
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) @__const.radial_control_paint_cursor.col, i64 12, i1 false)
  %17 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !253
  switch i32 %18, label %41 [
    i32 0, label %19
    i32 65554, label %19
    i32 12, label %19
    i32 15, label %24
    i32 327696, label %34
  ]

19:                                               ; preds = %4, %4, %4
  %20 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 15
  %21 = load float, ptr %20, align 4, !tbaa !254
  %22 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 14
  %23 = load float, ptr %22, align 8, !tbaa !250
  br label %41

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 15
  %26 = load float, ptr %25, align 4, !tbaa !254
  %27 = fsub float 1.000000e+00, %26
  %28 = tail call float @llvm.fmuladd.f32(float %27, float 1.650000e+02, float 3.500000e+01)
  %29 = fmul float %26, 5.000000e-01
  %30 = fadd float %29, 5.000000e-01
  %31 = fpext float %26 to double
  %32 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 6, ptr noundef nonnull @.str.383, double noundef %31) #16
  %33 = call i64 @BLI_strlen_utf8(ptr noundef nonnull %6) #16
  br label %41

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 15
  %36 = load float, ptr %35, align 4, !tbaa !254
  %37 = fmul float %36, 0x404CA5DC20000000
  %38 = fpext float %37 to double
  %39 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 6, ptr noundef nonnull @.str.384, double noundef %38) #16
  %40 = call i64 @BLI_strlen_utf8(ptr noundef nonnull %6) #16
  br label %41

41:                                               ; preds = %4, %34, %24, %19
  %42 = phi i64 [ %40, %34 ], [ %33, %24 ], [ 0, %19 ], [ 0, %4 ]
  %43 = phi float [ 2.000000e+02, %34 ], [ %28, %24 ], [ %21, %19 ], [ 0.000000e+00, %4 ]
  %44 = phi float [ 2.000000e+02, %34 ], [ 2.000000e+02, %24 ], [ %23, %19 ], [ 0.000000e+00, %4 ]
  %45 = phi float [ 3.500000e+01, %34 ], [ 3.500000e+01, %24 ], [ 0.000000e+00, %19 ], [ 0.000000e+00, %4 ]
  %46 = phi float [ 2.000000e+02, %34 ], [ 2.000000e+02, %24 ], [ %21, %19 ], [ 2.000000e+02, %4 ]
  %47 = phi float [ 7.500000e-01, %34 ], [ %30, %24 ], [ 7.500000e-01, %19 ], [ 7.500000e-01, %4 ]
  %48 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !233
  %49 = fmul float %43, %48
  %50 = fmul float %44, %48
  %51 = fmul float %46, %48
  %52 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 18
  %53 = load i32, ptr %52, align 8, !tbaa !83
  %54 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !78
  %56 = sub nsw i32 %53, %55
  %57 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 18, i64 1
  %58 = load i32, ptr %57, align 4, !tbaa !83
  %59 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 3, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !86
  %61 = sub nsw i32 %58, %60
  %62 = sitofp i32 %56 to float
  %63 = sitofp i32 %61 to float
  call void @glTranslatef(float noundef %62, float noundef %63, float noundef 0.000000e+00) #16
  call void @glEnable(i32 noundef 3042) #16
  call void @glEnable(i32 noundef 2848) #16
  %64 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 12
  %65 = load ptr, ptr %64, align 8, !tbaa !255
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %41
  %68 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 6
  call void @RNA_property_float_get_array(ptr noundef nonnull %68, ptr noundef nonnull %65, ptr noundef nonnull %9) #16
  %69 = load float, ptr %9, align 4, !tbaa !181
  %70 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !181
  call void @glScalef(float noundef %69, float noundef %71, float noundef 1.000000e+00) #16
  br label %72

72:                                               ; preds = %67, %41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %73 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 10
  %74 = load ptr, ptr %73, align 8, !tbaa !270
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 4
  call void @RNA_property_float_get_array(ptr noundef nonnull %77, ptr noundef nonnull %74, ptr noundef nonnull %5) #16
  br label %78

78:                                               ; preds = %76, %72
  %79 = load float, ptr %5, align 4, !tbaa !181
  %80 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !181
  %82 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !181
  call void @glColor4f(float noundef %79, float noundef %81, float noundef %83, float noundef %47) #16
  %84 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 22
  %85 = load i32, ptr %84, align 8, !tbaa !256
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %78
  call void @glBindTexture(i32 noundef 3553, i32 noundef %85) #16
  call void @glTexParameterf(i32 noundef 3553, i32 noundef 10241, float noundef 9.729000e+03) #16
  call void @glTexParameterf(i32 noundef 3553, i32 noundef 10240, float noundef 9.729000e+03) #16
  %88 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 11
  %89 = load ptr, ptr %88, align 8, !tbaa !271
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 5
  %93 = call float @RNA_property_float_get(ptr noundef nonnull %92, ptr noundef nonnull %89) #16
  call void @glPushMatrix() #16
  %94 = fmul float %93, 0x404CA5DC20000000
  call void @glRotatef(float noundef %94, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #16
  br label %95

95:                                               ; preds = %91, %87
  call void @glEnable(i32 noundef 3553) #16
  call void @glBegin(i32 noundef 7) #16
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #16
  %96 = fneg float %51
  call void @glVertex2f(float noundef %96, float noundef %96) #16
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 0.000000e+00) #16
  call void @glVertex2f(float noundef %51, float noundef %96) #16
  call void @glTexCoord2f(float noundef 1.000000e+00, float noundef 1.000000e+00) #16
  call void @glVertex2f(float noundef %51, float noundef %51) #16
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 1.000000e+00) #16
  call void @glVertex2f(float noundef %96, float noundef %51) #16
  call void @glEnd() #16
  call void @glDisable(i32 noundef 3553) #16
  %97 = load ptr, ptr %88, align 8, !tbaa !271
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  call void @glPopMatrix() #16
  br label %101

100:                                              ; preds = %78
  call void @glutil_draw_filled_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %51, i32 noundef 40) #16
  br label %101

101:                                              ; preds = %95, %99, %100
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  %102 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 9
  %103 = load ptr, ptr %102, align 8, !tbaa !272
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 3
  call void @RNA_property_float_get_array(ptr noundef nonnull %106, ptr noundef nonnull %103, ptr noundef nonnull %10) #16
  br label %107

107:                                              ; preds = %105, %101
  %108 = load float, ptr %10, align 4, !tbaa !181
  %109 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !181
  %111 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !181
  call void @glColor4f(float noundef %108, float noundef %110, float noundef %112, float noundef 5.000000e-01) #16
  %113 = load i32, ptr %17, align 4, !tbaa !253
  %114 = icmp eq i32 %113, 327696
  br i1 %114, label %115, label %124

115:                                              ; preds = %107
  call void @glPushMatrix() #16
  %116 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 14
  %117 = load float, ptr %116, align 8, !tbaa !250
  %118 = fmul float %117, 0x404CA5DC20000000
  call void @glRotatef(float noundef %118, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #16
  call void @fdrawline(float noundef 3.500000e+01, float noundef 0.000000e+00, float noundef 2.000000e+02, float noundef 0.000000e+00) #16
  %119 = getelementptr inbounds %struct.RadialControl, ptr %3, i64 0, i32 15
  %120 = load float, ptr %119, align 4, !tbaa !254
  %121 = load float, ptr %116, align 8, !tbaa !250
  %122 = fsub float %120, %121
  %123 = fmul float %122, 0x404CA5DC20000000
  call void @glRotatef(float noundef %123, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #16
  call void @fdrawline(float noundef 3.500000e+01, float noundef 0.000000e+00, float noundef 2.000000e+02, float noundef 0.000000e+00) #16
  call void @glPopMatrix() #16
  br label %124

124:                                              ; preds = %115, %107
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %49, i32 noundef 40) #16
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %50, i32 noundef 40) #16
  %125 = fcmp ogt float %45, 0.000000e+00
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %45, i32 noundef 40) #16
  br label %127

127:                                              ; preds = %126, %124
  %128 = sext i16 %14 to i32
  %129 = sitofp i16 %16 to double
  %130 = fmul double %129, 1.500000e+00
  %131 = fptosi double %130 to i32
  %132 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !273
  %133 = sitofp i32 %132 to float
  %134 = fdiv float 1.000000e+00, %133
  %135 = fptosi float %134 to i32
  call void @BLF_size(i32 noundef %128, i32 noundef %131, i32 noundef %135) #16
  %136 = shl i64 %42, 48
  %137 = ashr exact i64 %136, 48
  call void @BLF_width_and_height(i32 noundef %128, ptr noundef nonnull %6, i64 noundef %137, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  call void @BLF_enable(i32 noundef %128, i32 noundef 4) #16
  call void @BLF_shadow(i32 noundef %128, i32 noundef 3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #16
  call void @BLF_shadow_offset(i32 noundef %128, i32 noundef 1, i32 noundef -1) #16
  %138 = load float, ptr %7, align 4, !tbaa !181
  %139 = fmul float %138, -5.000000e-01
  %140 = load float, ptr %8, align 4, !tbaa !181
  %141 = fmul float %140, -5.000000e-01
  call void @BLF_position(i32 noundef %128, float noundef %139, float noundef %141, float noundef 0.000000e+00) #16
  call void @BLF_draw(i32 noundef %128, ptr noundef nonnull %6, i64 noundef %137) #16
  call void @BLF_disable(i32 noundef %128, i32 noundef 4) #16
  call void @glDisable(i32 noundef 3042) #16
  call void @glDisable(i32 noundef 2848) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @radial_control_get_path(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %9 = and i32 %6, 4
  %10 = icmp ne i32 %9, 0
  %11 = and i32 %6, 2
  %12 = and i32 %6, 6
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.379) #16
  br label %68

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = tail call ptr @RNA_string_get_alloc(ptr noundef %19, ptr noundef %2, ptr noundef null, i32 noundef 0) #16
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
  tail call void %29(ptr noundef nonnull %20) #16
  br label %68

30:                                               ; preds = %22
  %31 = select i1 %25, ptr %8, ptr %4
  %32 = call zeroext i8 @RNA_path_resolve(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %3, ptr noundef nonnull %31) #16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %35(ptr noundef nonnull %20) #16
  %36 = and i32 %6, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %40, i32 noundef 32, ptr noundef nonnull @.str.380, ptr noundef %2) #16
  br label %68

41:                                               ; preds = %30
  %42 = icmp eq i32 %12, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %31, align 8, !tbaa !37
  %45 = call i32 @RNA_property_type(ptr noundef %44) #16
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
  call void %53(ptr noundef nonnull %20) #16
  %54 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !64
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %55, i32 noundef 32, ptr noundef nonnull @.str.381, ptr noundef %2) #16
  br label %68

56:                                               ; preds = %48, %41
  %57 = load ptr, ptr %31, align 8, !tbaa !37
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = call i32 @RNA_property_array_length(ptr noundef %3, ptr noundef nonnull %57) #16
  %61 = icmp eq i32 %60, %5
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %63(ptr noundef nonnull %20) #16
  %64 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !64
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %65, i32 noundef 32, ptr noundef nonnull @.str.382, ptr noundef %2, i32 noundef %60, i32 noundef %5) #16
  br label %68

66:                                               ; preds = %59, %56
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %67(ptr noundef nonnull %20) #16
  br label %68

68:                                               ; preds = %52, %34, %17, %66, %62, %38, %28, %14
  %69 = phi i32 [ 0, %14 ], [ 1, %28 ], [ 0, %62 ], [ 1, %66 ], [ 0, %38 ], [ 1, %17 ], [ 1, %34 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  ret i32 %69
}

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_is_ID(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_path_resolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #13

declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i16 @RNA_type_to_ID_code(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_brush_gen_radial_control_imbuf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_strlen_utf8(ptr noundef) local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_width_and_height(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_shadow(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_shadow_offset(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glTexParameterf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @glutil_draw_filled_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare float @BLI_dial_angle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #13

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_dial_initialize(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { cold }

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
!54 = !{!55, !38, i64 96}
!55 = !{!"wmOperator", !38, i64 0, !38, i64 8, !35, i64 16, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !41, i64 128, !38, i64 144, !38, i64 152, !43, i64 160, !35, i64 162}
!56 = !{!55, !38, i64 88}
!57 = !{!58, !59, i64 0}
!58 = !{!"", !59, i64 0}
!59 = !{!"int", !35, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!55, !38, i64 128}
!64 = !{!55, !38, i64 120}
!65 = !{!55, !38, i64 0}
!66 = distinct !{!66, !61, !62}
!67 = !{!55, !38, i64 144}
!68 = !{!55, !38, i64 112}
!69 = !{!70, !38, i64 16}
!70 = !{!"PointerRNA", !71, i64 0, !38, i64 8, !38, i64 16}
!71 = !{!"", !38, i64 0}
!72 = !{!73, !59, i64 8484}
!73 = !{!"UserDef", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !35, i64 20, !35, i64 788, !35, i64 1556, !35, i64 2580, !35, i64 3348, !35, i64 4116, !35, i64 4884, !35, i64 5652, !35, i64 6420, !35, i64 7444, !59, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !59, i64 8484, !59, i64 8488, !59, i64 8492, !43, i64 8496, !43, i64 8498, !59, i64 8500, !59, i64 8504, !59, i64 8508, !59, i64 8512, !59, i64 8516, !59, i64 8520, !59, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !41, i64 8536, !41, i64 8552, !41, i64 8568, !41, i64 8584, !41, i64 8600, !41, i64 8616, !41, i64 8632, !35, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !35, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !59, i64 8912, !59, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !35, i64 8940, !35, i64 8941, !35, i64 8942, !35, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !74, i64 8956, !74, i64 8960, !59, i64 8964, !43, i64 8968, !43, i64 8970, !74, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !75, i64 8984, !35, i64 9760, !35, i64 9772, !43, i64 9788, !35, i64 9790, !35, i64 9791, !35, i64 9792, !35, i64 9872, !59, i64 10896, !59, i64 10900, !74, i64 10904, !74, i64 10908, !59, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !76, i64 10928}
!74 = !{!"float", !35, i64 0}
!75 = !{!"ColorBand", !43, i64 0, !43, i64 2, !35, i64 4, !35, i64 5, !35, i64 6, !35, i64 7, !35, i64 8}
!76 = !{!"WalkNavigation", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !43, i64 24, !35, i64 26}
!77 = !{!55, !43, i64 160}
!78 = !{!79, !59, i64 176}
!79 = !{!"ARegion", !38, i64 0, !38, i64 8, !80, i64 16, !82, i64 176, !82, i64 192, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !74, i64 220, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !43, i64 232, !43, i64 234, !43, i64 236, !43, i64 238, !38, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !38, i64 360, !38, i64 368, !38, i64 376}
!80 = !{!"View2D", !81, i64 0, !81, i64 16, !82, i64 32, !82, i64 48, !82, i64 64, !35, i64 80, !35, i64 88, !74, i64 96, !74, i64 100, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !38, i64 128, !59, i64 136, !59, i64 140, !38, i64 144, !38, i64 152}
!81 = !{!"rctf", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12}
!82 = !{!"rcti", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!83 = !{!59, !59, i64 0}
!84 = !{!79, !59, i64 188}
!85 = !{!79, !59, i64 180}
!86 = !{!79, !59, i64 184}
!87 = !{!88, !38, i64 88}
!88 = !{!"wmOperatorTypeMacro", !38, i64 0, !38, i64 8, !35, i64 16, !38, i64 80, !38, i64 88}
!89 = !{!70, !38, i64 8}
!90 = !{!91, !59, i64 128}
!91 = !{!"CollectionPropertyIterator", !70, i64 0, !70, i64 24, !38, i64 48, !35, i64 56, !59, i64 96, !59, i64 100, !70, i64 104, !59, i64 128}
!92 = !{!91, !38, i64 120}
!93 = distinct !{!93, !61, !62}
!94 = !{!40, !38, i64 96}
!95 = distinct !{!95, !61, !62}
!96 = !{!97, !38, i64 8}
!97 = !{!"GHashIterator", !38, i64 0, !38, i64 8, !59, i64 16}
!98 = !{!99, !38, i64 16}
!99 = !{!"_gh_Entry", !38, i64 0, !38, i64 8, !38, i64 16}
!100 = distinct !{!100, !61, !62}
!101 = distinct !{!101, !61, !62}
!102 = !{!40, !38, i64 112}
!103 = !{!70, !38, i64 0}
!104 = !{!43, !43, i64 0}
!105 = !{!106, !38, i64 296}
!106 = !{!"Object", !107, i64 0, !38, i64 120, !38, i64 128, !43, i64 136, !43, i64 138, !59, i64 140, !59, i64 144, !59, i64 148, !35, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !108, i64 312, !38, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !59, i64 432, !59, i64 436, !38, i64 440, !38, i64 448, !59, i64 456, !59, i64 460, !35, i64 464, !35, i64 476, !35, i64 488, !35, i64 500, !35, i64 512, !35, i64 524, !35, i64 536, !35, i64 548, !35, i64 560, !35, i64 576, !35, i64 592, !35, i64 604, !74, i64 616, !74, i64 620, !35, i64 624, !35, i64 688, !35, i64 752, !35, i64 816, !35, i64 880, !59, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !35, i64 966, !35, i64 967, !59, i64 968, !59, i64 972, !59, i64 976, !59, i64 980, !59, i64 984, !74, i64 988, !74, i64 992, !74, i64 996, !74, i64 1000, !74, i64 1004, !74, i64 1008, !74, i64 1012, !74, i64 1016, !74, i64 1020, !74, i64 1024, !74, i64 1028, !74, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !35, i64 1042, !35, i64 1043, !43, i64 1044, !35, i64 1046, !35, i64 1047, !74, i64 1048, !74, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !74, i64 1120, !43, i64 1124, !43, i64 1126, !35, i64 1128, !59, i64 1144, !59, i64 1148, !38, i64 1152, !35, i64 1160, !35, i64 1161, !43, i64 1162, !35, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !35, i64 1264, !35, i64 1265, !43, i64 1266, !74, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !109, i64 1304, !109, i64 1312, !59, i64 1320, !59, i64 1324, !41, i64 1328, !41, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !35, i64 1384, !38, i64 1392, !41, i64 1400, !38, i64 1416}
!107 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !35, i64 32, !43, i64 98, !59, i64 100, !59, i64 104, !59, i64 108, !38, i64 112}
!108 = !{!"bAnimVizSettings", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44}
!109 = !{!"long", !35, i64 0}
!110 = !{!106, !59, i64 460}
!111 = !{!112, !38, i64 136}
!112 = !{!"Scene", !107, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !41, i64 152, !38, i64 168, !38, i64 176, !35, i64 184, !35, i64 196, !35, i64 208, !35, i64 220, !59, i64 232, !59, i64 236, !59, i64 240, !43, i64 244, !35, i64 246, !35, i64 247, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !113, i64 280, !120, i64 4264, !41, i64 4296, !41, i64 4312, !38, i64 4328, !38, i64 4336, !38, i64 4344, !38, i64 4352, !38, i64 4360, !38, i64 4368, !43, i64 4376, !43, i64 4378, !59, i64 4380, !41, i64 4384, !121, i64 4400, !122, i64 4416, !125, i64 4600, !38, i64 4608, !126, i64 4616, !38, i64 4640, !109, i64 4648, !109, i64 4656, !115, i64 4664, !116, i64 4824, !127, i64 4888, !38, i64 4952}
!113 = !{!"RenderData", !114, i64 0, !38, i64 248, !38, i64 256, !117, i64 264, !118, i64 328, !59, i64 400, !59, i64 404, !59, i64 408, !74, i64 412, !59, i64 416, !59, i64 420, !59, i64 424, !59, i64 428, !43, i64 432, !43, i64 434, !74, i64 436, !74, i64 440, !74, i64 444, !74, i64 448, !74, i64 452, !43, i64 456, !43, i64 458, !43, i64 460, !43, i64 462, !43, i64 464, !43, i64 466, !59, i64 468, !43, i64 472, !43, i64 474, !43, i64 476, !43, i64 478, !43, i64 480, !43, i64 482, !59, i64 484, !59, i64 488, !43, i64 492, !43, i64 494, !59, i64 496, !59, i64 500, !43, i64 504, !43, i64 506, !43, i64 508, !43, i64 510, !43, i64 512, !35, i64 514, !35, i64 515, !59, i64 516, !59, i64 520, !59, i64 524, !43, i64 528, !43, i64 530, !43, i64 532, !43, i64 534, !43, i64 536, !43, i64 538, !43, i64 540, !43, i64 542, !81, i64 544, !81, i64 560, !82, i64 576, !41, i64 592, !43, i64 608, !43, i64 610, !74, i64 612, !74, i64 616, !74, i64 620, !74, i64 624, !59, i64 628, !74, i64 632, !74, i64 636, !74, i64 640, !74, i64 644, !43, i64 648, !43, i64 650, !43, i64 652, !43, i64 654, !43, i64 656, !43, i64 658, !74, i64 660, !74, i64 664, !43, i64 668, !43, i64 670, !74, i64 672, !74, i64 676, !35, i64 680, !59, i64 1704, !43, i64 1708, !43, i64 1710, !35, i64 1712, !35, i64 2480, !35, i64 2496, !35, i64 2512, !35, i64 2513, !35, i64 2514, !35, i64 2515, !59, i64 2520, !43, i64 2524, !43, i64 2526, !74, i64 2528, !74, i64 2532, !43, i64 2536, !43, i64 2538, !74, i64 2540, !43, i64 2544, !43, i64 2546, !59, i64 2548, !43, i64 2552, !43, i64 2554, !43, i64 2556, !43, i64 2558, !74, i64 2560, !74, i64 2564, !38, i64 2568, !59, i64 2576, !74, i64 2580, !35, i64 2584, !119, i64 2616, !59, i64 3976, !59, i64 3980}
!114 = !{!"ImageFormatData", !35, i64 0, !35, i64 1, !35, i64 2, !35, i64 3, !35, i64 4, !35, i64 5, !35, i64 6, !35, i64 7, !43, i64 8, !43, i64 10, !74, i64 12, !35, i64 16, !35, i64 17, !35, i64 18, !115, i64 24, !116, i64 184}
!115 = !{!"ColorManagedViewSettings", !59, i64 0, !59, i64 4, !35, i64 8, !35, i64 72, !74, i64 136, !74, i64 140, !38, i64 144, !38, i64 152}
!116 = !{!"ColorManagedDisplaySettings", !35, i64 0}
!117 = !{!"QuicktimeCodecSettings", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !43, i64 48, !43, i64 50, !59, i64 52, !59, i64 56, !59, i64 60}
!118 = !{!"FFMpegCodecData", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !74, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48, !59, i64 52, !59, i64 56, !59, i64 60, !38, i64 64}
!119 = !{!"BakeData", !114, i64 0, !35, i64 248, !43, i64 1272, !43, i64 1274, !43, i64 1276, !43, i64 1278, !74, i64 1280, !74, i64 1284, !35, i64 1288, !35, i64 1291, !35, i64 1292, !35, i64 1293, !35, i64 1296}
!120 = !{!"AudioData", !59, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !59, i64 16, !43, i64 20, !43, i64 22, !74, i64 24, !74, i64 28}
!121 = !{!"GameFraming", !35, i64 0, !35, i64 12, !35, i64 13, !35, i64 14, !35, i64 15}
!122 = !{!"GameData", !121, i64 0, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !43, i64 32, !35, i64 34, !123, i64 40, !43, i64 64, !43, i64 66, !74, i64 68, !124, i64 72, !74, i64 128, !74, i64 132, !59, i64 136, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !43, i64 148, !43, i64 150, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158, !43, i64 160, !43, i64 162, !74, i64 164, !74, i64 168, !74, i64 172, !74, i64 176, !74, i64 180}
!123 = !{!"GameDome", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !74, i64 8, !74, i64 12, !38, i64 16}
!124 = !{!"RecastData", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !74, i64 24, !74, i64 28, !74, i64 32, !74, i64 36, !59, i64 40, !74, i64 44, !74, i64 48, !43, i64 52, !43, i64 54}
!125 = !{!"UnitSettings", !74, i64 0, !35, i64 4, !35, i64 5, !43, i64 6}
!126 = !{!"PhysicsSettings", !35, i64 0, !59, i64 12, !59, i64 16, !59, i64 20}
!127 = !{!"ColorManagedColorspaceSettings", !35, i64 0}
!128 = !{i8 0, i8 2}
!129 = distinct !{!129, !61, !62}
!130 = !{i64 0, i64 8, !37}
!131 = distinct !{!131, !61, !62}
!132 = distinct !{!132, !61, !62}
!133 = !{!40, !38, i64 104}
!134 = !{!73, !43, i64 8948}
!135 = !{!136, !43, i64 16}
!136 = !{!"wmEvent", !38, i64 0, !38, i64 8, !43, i64 16, !43, i64 18, !59, i64 20, !59, i64 24, !35, i64 28, !35, i64 36, !35, i64 42, !35, i64 43, !43, i64 44, !43, i64 46, !59, i64 48, !59, i64 52, !137, i64 56, !59, i64 64, !59, i64 68, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !38, i64 88, !38, i64 96, !43, i64 104, !43, i64 106, !59, i64 108, !38, i64 112}
!137 = !{!"double", !35, i64 0}
!138 = !{!136, !43, i64 18}
!139 = !{!136, !38, i64 112}
!140 = !{!136, !43, i64 106}
!141 = !{!142, !59, i64 120}
!142 = !{!"IDProperty", !38, i64 0, !38, i64 8, !35, i64 16, !35, i64 17, !43, i64 18, !35, i64 20, !59, i64 84, !143, i64 88, !59, i64 120, !59, i64 124}
!143 = !{!"IDPropertyData", !38, i64 0, !41, i64 8, !59, i64 24, !59, i64 28}
!144 = !{!82, !59, i64 0}
!145 = !{!82, !59, i64 8}
!146 = !{!82, !59, i64 4}
!147 = !{!82, !59, i64 12}
!148 = distinct !{!148, !61, !62}
!149 = !{!150, !38, i64 0}
!150 = !{!"wmOpPopUp", !38, i64 0, !59, i64 8, !59, i64 12, !59, i64 16}
!151 = !{!150, !59, i64 8}
!152 = !{!150, !59, i64 12}
!153 = !{!150, !59, i64 16}
!154 = !{i32 1, i32 3}
!155 = distinct !{!155, !61, !62}
!156 = !{!157, !59, i64 2108}
!157 = !{!"Global", !38, i64 0, !35, i64 8, !35, i64 1032, !35, i64 2056, !35, i64 2057, !35, i64 2058, !41, i64 2064, !35, i64 2080, !35, i64 2081, !35, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !35, i64 2090, !43, i64 2092, !59, i64 2096, !59, i64 2100, !35, i64 2104, !59, i64 2108, !59, i64 2112, !35, i64 2116}
!158 = !{!157, !38, i64 0}
!159 = !{!157, !35, i64 2057}
!160 = !{!157, !35, i64 2056}
!161 = !{!157, !35, i64 2058}
!162 = !{!163, !38, i64 16}
!163 = !{!"wmPaintCursor", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32}
!164 = !{!163, !38, i64 24}
!165 = !{!163, !38, i64 32}
!166 = distinct !{!166, !61, !62}
!167 = !{!168, !38, i64 40}
!168 = !{!"wmGesture", !38, i64 0, !38, i64 8, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !38, i64 40, !38, i64 48}
!169 = !{!168, !59, i64 28}
!170 = !{!168, !59, i64 24}
!171 = !{!168, !59, i64 20}
!172 = !{!136, !59, i64 20}
!173 = !{!136, !59, i64 24}
!174 = !{i32 0, i32 2}
!175 = !{!136, !59, i64 52}
!176 = !{!177, !38, i64 152}
!177 = !{!"wmWindow", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !35, i64 40, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !59, i64 128, !43, i64 132, !43, i64 134, !38, i64 136, !38, i64 144, !38, i64 152, !59, i64 160, !59, i64 164, !38, i64 168, !41, i64 176, !41, i64 192, !41, i64 208, !41, i64 224, !41, i64 240}
!178 = !{!168, !59, i64 16}
!179 = !{!168, !59, i64 32}
!180 = !{!168, !59, i64 36}
!181 = !{!74, !74, i64 0}
!182 = distinct !{!182, !61, !62}
!183 = !{i32 1, i32 5}
!184 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37}
!185 = distinct !{!185, !61, !62}
!186 = !{!40, !38, i64 40}
!187 = !{!40, !38, i64 80}
!188 = !{!189, !38, i64 176}
!189 = !{!"wmKeyMapItem", !38, i64 0, !38, i64 8, !35, i64 16, !38, i64 80, !35, i64 88, !43, i64 152, !43, i64 154, !43, i64 156, !43, i64 158, !43, i64 160, !43, i64 162, !43, i64 164, !43, i64 166, !43, i64 168, !43, i64 170, !43, i64 172, !43, i64 174, !38, i64 176}
!190 = !{!191, !38, i64 128}
!191 = !{!"wmKeyMap", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 32, !35, i64 48, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !38, i64 120, !38, i64 128}
!192 = !{!193, !38, i64 1456}
!193 = !{!"Main", !38, i64 0, !38, i64 8, !35, i64 16, !43, i64 1040, !43, i64 1042, !43, i64 1044, !43, i64 1046, !109, i64 1048, !35, i64 1056, !43, i64 1072, !38, i64 1080, !41, i64 1088, !41, i64 1104, !41, i64 1120, !41, i64 1136, !41, i64 1152, !41, i64 1168, !41, i64 1184, !41, i64 1200, !41, i64 1216, !41, i64 1232, !41, i64 1248, !41, i64 1264, !41, i64 1280, !41, i64 1296, !41, i64 1312, !41, i64 1328, !41, i64 1344, !41, i64 1360, !41, i64 1376, !41, i64 1392, !41, i64 1408, !41, i64 1424, !41, i64 1440, !41, i64 1456, !41, i64 1472, !41, i64 1488, !41, i64 1504, !41, i64 1520, !41, i64 1536, !41, i64 1552, !41, i64 1568, !41, i64 1584, !41, i64 1600, !41, i64 1616, !35, i64 1632, !38, i64 1888, !38, i64 1896}
!194 = !{!195, !38, i64 24}
!195 = !{!"EnumPropertyItem", !59, i64 0, !38, i64 8, !59, i64 16, !38, i64 24, !38, i64 32}
!196 = !{!195, !38, i64 8}
!197 = !{!195, !59, i64 0}
!198 = !{!107, !38, i64 0}
!199 = distinct !{!199, !61, !62}
!200 = !{!193, !38, i64 1424}
!201 = !{!107, !38, i64 24}
!202 = !{!193, !38, i64 1216}
!203 = !{!193, !38, i64 1088}
!204 = !{!193, !38, i64 1584}
!205 = !{!193, !38, i64 1600}
!206 = !{!177, !38, i64 24}
!207 = !{!208, !43, i64 208}
!208 = !{!"bScreen", !107, i64 0, !41, i64 120, !41, i64 136, !41, i64 152, !41, i64 168, !38, i64 184, !38, i64 192, !59, i64 200, !59, i64 204, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !38, i64 232, !38, i64 240}
!209 = !{!157, !38, i64 2064}
!210 = !{!211, !38, i64 16}
!211 = !{!"RecentFile", !38, i64 0, !38, i64 8, !38, i64 16}
!212 = !{!157, !59, i64 2096}
!213 = !{!73, !59, i64 8}
!214 = !{!215, !35, i64 0}
!215 = !{!"FileRuntime", !35, i64 0}
!216 = !{!55, !38, i64 152}
!217 = !{!112, !38, i64 24}
!218 = !{!193, !38, i64 1080}
!219 = distinct !{!219, !61, !62}
!220 = !{i32 2, i32 5}
!221 = distinct !{!221, !61, !62}
!222 = !{!79, !43, i64 212}
!223 = distinct !{!223, !61, !62}
!224 = distinct !{!224, !61, !62}
!225 = !{!112, !59, i64 680}
!226 = !{!193, !38, i64 1888}
!227 = !{!112, !59, i64 232}
!228 = !{!112, !59, i64 688}
!229 = !{!112, !59, i64 684}
!230 = distinct !{!230, !61, !62}
!231 = distinct !{!231, !61, !62}
!232 = !{!157, !43, i64 2092}
!233 = !{!73, !74, i64 10908}
!234 = !{!235, !38, i64 8}
!235 = !{!"Menu", !38, i64 0, !38, i64 8}
!236 = !{!235, !38, i64 0}
!237 = !{!238, !38, i64 224}
!238 = !{!"MenuType", !38, i64 0, !38, i64 8, !35, i64 16, !35, i64 80, !35, i64 144, !38, i64 208, !38, i64 216, !38, i64 224, !42, i64 232}
!239 = distinct !{!239, !61, !62}
!240 = !{!241, !35, i64 72}
!241 = !{!"ScrArea", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !82, i64 56, !35, i64 72, !35, i64 73, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !43, i64 84, !35, i64 86, !35, i64 87, !38, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!242 = !{!106, !43, i64 136}
!243 = !{!177, !38, i64 136}
!244 = !{!245, !38, i64 152}
!245 = !{!"", !59, i64 0, !59, i64 4, !70, i64 8, !70, i64 32, !70, i64 56, !70, i64 80, !70, i64 104, !70, i64 128, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !74, i64 200, !74, i64 204, !74, i64 208, !74, i64 212, !35, i64 216, !35, i64 224, !35, i64 232, !38, i64 240, !59, i64 248, !41, i64 256, !35, i64 272, !38, i64 280}
!246 = !{!245, !38, i64 144}
!247 = !{!245, !38, i64 136}
!248 = !{!245, !35, i64 272}
!249 = !{!245, !59, i64 0}
!250 = !{!245, !74, i64 200}
!251 = !{!245, !74, i64 208}
!252 = !{!245, !74, i64 212}
!253 = !{!245, !59, i64 4}
!254 = !{!245, !74, i64 204}
!255 = !{!245, !38, i64 184}
!256 = !{!245, !59, i64 248}
!257 = !{!258, !59, i64 16}
!258 = !{!"ImBuf", !38, i64 0, !38, i64 8, !59, i64 16, !59, i64 20, !35, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !38, i64 40, !38, i64 48, !35, i64 56, !59, i64 72, !59, i64 76, !59, i64 80, !59, i64 84, !38, i64 88, !38, i64 96, !38, i64 104, !74, i64 112, !35, i64 120, !59, i64 280, !59, i64 284, !59, i64 288, !59, i64 292, !38, i64 296, !38, i64 304, !59, i64 312, !35, i64 316, !35, i64 1340, !38, i64 2368, !59, i64 2376, !38, i64 2384, !59, i64 2392, !59, i64 2396, !38, i64 2400, !38, i64 2408, !38, i64 2416, !38, i64 2424, !59, i64 2432, !82, i64 2436, !259, i64 2456}
!259 = !{!"DDSData", !59, i64 0, !59, i64 4, !38, i64 8, !59, i64 16}
!260 = !{!258, !59, i64 20}
!261 = !{!258, !38, i64 48}
!262 = !{i64 0, i64 8, !37, i64 8, i64 8, !37}
!263 = !{!245, !38, i64 280}
!264 = !{!136, !43, i64 74}
!265 = !{!245, !35, i64 232}
!266 = !{!245, !38, i64 240}
!267 = !{!268, !43, i64 0}
!268 = !{!"uiFontStyle", !43, i64 0, !43, i64 2, !43, i64 4, !35, i64 6, !43, i64 12, !43, i64 14, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !74, i64 24, !74, i64 28}
!269 = !{!268, !43, i64 2}
!270 = !{!245, !38, i64 168}
!271 = !{!245, !38, i64 176}
!272 = !{!245, !38, i64 160}
!273 = !{!73, !59, i64 8524}
