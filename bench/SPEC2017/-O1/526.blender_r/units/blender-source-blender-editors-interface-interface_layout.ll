; ModuleID = 'blender/source/blender/editors/interface/interface_layout.c'
source_filename = "blender/source/blender/editors/interface/interface_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.IDPropertyTemplate = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, i16, i8 }
%struct.uiLayout = type { %struct.uiItem, ptr, ptr, %struct.ListBase, i32, i32, i32, i32, [2 x float], i16, i8, i8, i8, i8, i8, i8 }
%struct.uiItem = type { ptr, ptr, i32, i32 }
%struct.uiLayoutRoot = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.uiLayoutItemSplit = type { %struct.uiLayout, float }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.CollItemSearch = type { ptr, ptr, ptr, i32, i32 }
%struct.MenuType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.Menu = type { ptr, ptr }
%struct.uiPopupBlockHandle = type { ptr, [2 x float], double, i8, i8, ptr, ptr, ptr, %struct.uiPopupBlockCreate, ptr, %struct.uiKeyNavLock, ptr, ptr, ptr, i32, i32, i32, i32, [4 x float], i32, i8, [2 x i32] }
%struct.uiPopupBlockCreate = type { ptr, ptr, ptr, [2 x i32], ptr }
%struct.uiKeyNavLock = type { i8, [2 x i32] }
%struct.MenuItemLevel = type { i32, [64 x i8], [64 x i8], %struct.PointerRNA }
%struct.uiLayoutItemFlow = type { %struct.uiLayout, i32, i32 }
%struct.uiLayoutItemBx = type { %struct.uiLayout, ptr }
%struct.uiButtonItem = type { %struct.uiItem, ptr }
%struct.bContextStore = type { ptr, ptr, %struct.ListBase, i8 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"wmOperatorProperties\00", align 1
@PointerRNA_NULL = external local_unnamed_addr constant %struct.PointerRNA, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: '%s' unknown operator\0A\00", align 1
@__func__.uiItemFullO = private unnamed_addr constant [12 x i8] c"uiItemFullO\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: %s.%s not found\0A\00", align 1
@__func__.uiItemEnumO_ptr = private unnamed_addr constant [16 x i8] c"uiItemEnumO_ptr\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: unknown operator '%s'\0A\00", align 1
@__func__.uiItemEnumO = private unnamed_addr constant [12 x i8] c"uiItemEnumO\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s: %s '%s'\0A\00", align 1
@__func__.uiItemsFullEnumO = private unnamed_addr constant [17 x i8] c"uiItemsFullEnumO\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"unknown operator\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"operator missing srna\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"%s: %s.%s, not an enum type\0A\00", align 1
@__func__.uiItemEnumO_value = private unnamed_addr constant [18 x i8] c"uiItemEnumO_value\00", align 1
@__func__.uiItemEnumO_string = private unnamed_addr constant [19 x i8] c"uiItemEnumO_string\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"%s: %s.%s, enum %s not found\0A\00", align 1
@__func__.uiItemBooleanO = private unnamed_addr constant [15 x i8] c"uiItemBooleanO\00", align 1
@__func__.uiItemIntO = private unnamed_addr constant [11 x i8] c"uiItemIntO\00", align 1
@__func__.uiItemFloatO = private unnamed_addr constant [13 x i8] c"uiItemFloatO\00", align 1
@__func__.uiItemStringO = private unnamed_addr constant [14 x i8] c"uiItemStringO\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%s: property not found: %s.%s\0A\00", align 1
@__func__.uiItemR = private unnamed_addr constant [8 x i8] c"uiItemR\00", align 1
@__func__.uiItemEnumR = private unnamed_addr constant [12 x i8] c"uiItemEnumR\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s: enum property not found: %s.%s\0A\00", align 1
@__func__.uiItemEnumR_string = private unnamed_addr constant [19 x i8] c"uiItemEnumR_string\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"%s: enum property value not found: %s\0A\00", align 1
@__func__.uiItemsEnumR = private unnamed_addr constant [13 x i8] c"uiItemsEnumR\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%s: not an enum property: %s.%s\0A\00", align 1
@__func__.uiItemPointerR = private unnamed_addr constant [15 x i8] c"uiItemPointerR\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"%s: Property %s must be a pointer, string or enum\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"%s: search collection property not found: %s.%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"%s: search collection property is not a collection type: %s.%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"%s: not found %s\0A\00", align 1
@__func__.uiItemM = private unnamed_addr constant [8 x i8] c"uiItemM\00", align 1
@__func__.uiItemMenuEnumO = private unnamed_addr constant [16 x i8] c"uiItemMenuEnumO\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"%s: operator missing srna '%s'\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [14 x i8] c"MenuItemLevel\00", align 1
@__func__.uiItemMenuEnumR = private unnamed_addr constant [16 x i8] c"uiItemMenuEnumR\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"uiLayoutRow\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"uiLayoutColumn\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"uiLayoutItemFlow\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"uiLayoutRadial\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"uiLayoutAbsolute\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"uiLayoutOverlap\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"uiLayoutItemSplit\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"uiLayoutRoot\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"uiLayout\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"uiButtonItem\00", align 1
@str = internal unnamed_addr global ptr null, align 8
@.str.30 = private unnamed_addr constant [21 x i8] c"Operator can't' redo\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"* Redo Unsupported *\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"WM_MT_operator_presets\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"WM_OT_operator_preset_add\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"remove_active\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"No Properties\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"non-empty text\00", align 1
@RNA_Armature = external global %struct.StructRNA, align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"ui_item_array\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"BUTTONS_OT_directory_browse\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"BUTTONS_OT_file_browse\00", align 1
@RNA_KeyMapItem = external global %struct.StructRNA, align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"alt\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"oskey\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.45 = private unnamed_addr constant [11 x i8] c"items_list\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"CollectionItemSearch\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.47 = private unnamed_addr constant [23 x i8] c"%s: opening menu \22%s\22\0A\00", align 1
@__func__.ui_item_menutype_func = private unnamed_addr constant [22 x i8] c"ui_item_menutype_func\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"uiLayoutItemBx\00", align 1
@ui_radial_dir_order = external local_unnamed_addr constant [8 x i8], align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"'type':'BUTTON', \00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"'type':'ROW', \00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"'type':'COLUMN', \00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"'type':'COLUMN_FLOW', \00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"'type':'ROW_FLOW', \00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"'type':'BOX', \00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"'type':'ABSOLUTE', \00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"'type':'SPLIT', \00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"'type':'OVERLAP', \00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"'type':'ROOT', \00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"'type':'UNKNOWN', \00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"'items':\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"], \00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"'type':%d, \00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"'draw_string':'''%s''', \00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"'tip':'''%s''', \00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"'operator':'''%s''', \00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"'rna':'%s.%s[%d]', \00", align 1
@reltable.ui_intro_items = private unnamed_addr constant [11 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.51 to i64), i64 ptrtoint (ptr @reltable.ui_intro_items to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.52 to i64), i64 ptrtoint (ptr @reltable.ui_intro_items to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.53 to i64), i64 ptrtoint (ptr @reltable.ui_intro_items to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.54 to i64), i64 ptrtoint (ptr @reltable.ui_intro_items to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.55 to i64), i64 ptrtoint (ptr @reltable.ui_intro_items to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.56 to i64), i64 ptrtoint (ptr @reltable.ui_intro_items to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.57 to i64), i64 ptrtoint (ptr @reltable.ui_intro_items to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.58 to i64), i64 ptrtoint (ptr @reltable.ui_intro_items to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @reltable.ui_intro_items to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.61 to i64), i64 ptrtoint (ptr @reltable.ui_intro_items to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.60 to i64), i64 ptrtoint (ptr @reltable.ui_intro_items to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local void @uiFileBrowseContextProperty(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store ptr null, ptr %2, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %13

10:                                               ; preds = %41, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13, !llvm.loop !38

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %15 = getelementptr inbounds %struct.uiBlock, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18

18:                                               ; preds = %13, %41
  %19 = phi ptr [ %42, %41 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = and i32 %23, 262144
  %25 = icmp ne i32 %24, 0
  %26 = icmp ne ptr %21, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %41

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.uiBut, ptr %21, i64 0, i32 54, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.uiBut, ptr %21, i64 0, i32 55
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  %35 = tail call i32 @RNA_property_type(ptr noundef %34) #16
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.uiBut, ptr %21, i64 0, i32 54
  %39 = getelementptr inbounds %struct.uiBut, ptr %21, i64 0, i32 55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %38, i64 24, i1 false), !tbaa.struct !52
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  store ptr %40, ptr %2, align 8, !tbaa !34
  br label %44

41:                                               ; preds = %18, %28, %32
  %42 = load ptr, ptr %19, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %10, label %18, !llvm.loop !53

44:                                               ; preds = %10, %6, %3, %37
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @uiItemFullO_ptr(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %union.IDPropertyTemplate, align 8
  %10 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp eq ptr %3, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = icmp eq ptr %2, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %2, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = icmp ne ptr %19, null
  %21 = and i32 %7, 16
  %22 = icmp eq i32 %21, 0
  %23 = and i1 %22, %20
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = tail call ptr @RNA_struct_ui_name(ptr noundef nonnull %19) #16
  br label %26

26:                                               ; preds = %15, %17, %24, %8
  %27 = phi ptr [ %3, %8 ], [ %25, %24 ], [ @.str, %17 ], [ @.str, %15 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.uiLayoutRoot, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !63
  %31 = icmp ne i32 %30, 2
  %32 = icmp ne i32 %4, 0
  %33 = or i1 %32, %31
  %34 = select i1 %33, i32 %4, i32 77
  %35 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 7
  store ptr %1, ptr %35, align 8, !tbaa !64
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %26
  %38 = load i8, ptr %27, align 1, !tbaa !68
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %42 = zext i16 %41 to i32
  br label %60

43:                                               ; preds = %37, %26
  switch i32 %30, label %44 [
    i32 1, label %48
    i32 4, label %48
  ]

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 15
  %46 = load i8, ptr %45, align 1, !tbaa !73
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44, %43, %43
  %49 = tail call i32 @UI_GetStringWidth(ptr noundef %27) #16
  %50 = sitofp i32 %49 to float
  %51 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %52 = sitofp i16 %51 to float
  %53 = select i1 %36, float 1.500000e+00, float 1.750000e+00
  %54 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %50)
  %55 = fptosi float %54 to i32
  br label %60

56:                                               ; preds = %44
  %57 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %58 = zext i16 %57 to i32
  %59 = mul nuw nsw i32 %58, 10
  br label %60

60:                                               ; preds = %40, %48, %56
  %61 = phi i32 [ %55, %48 ], [ %59, %56 ], [ %42, %40 ]
  %62 = and i32 %7, 128
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @uiBlockSetEmboss(ptr noundef %13, i8 noundef zeroext 1) #16
  br label %65

65:                                               ; preds = %64, %60
  %66 = icmp ne i32 %34, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %65
  %68 = load i8, ptr %27, align 1, !tbaa !68
  %69 = icmp eq i8 %68, 0
  %70 = trunc i32 %61 to i16
  %71 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  br i1 %69, label %74, label %72

72:                                               ; preds = %67
  %73 = tail call ptr @uiDefIconTextButO_ptr(ptr noundef %13, i32 noundef 512, ptr noundef %2, i32 noundef %6, i32 noundef %34, ptr noundef nonnull %27, i32 noundef 0, i32 noundef 0, i16 noundef signext %70, i16 noundef signext %71, ptr noundef null) #16
  br label %80

74:                                               ; preds = %67
  %75 = tail call ptr @uiDefIconButO_ptr(ptr noundef %13, i32 noundef 512, ptr noundef %2, i32 noundef %6, i32 noundef %34, i32 noundef 0, i32 noundef 0, i16 noundef signext %70, i16 noundef signext %71, ptr noundef null) #16
  br label %80

76:                                               ; preds = %65
  %77 = trunc i32 %61 to i16
  %78 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %79 = tail call ptr @uiDefButO_ptr(ptr noundef %13, i32 noundef 512, ptr noundef %2, i32 noundef %6, ptr noundef %27, i32 noundef 0, i32 noundef 0, i16 noundef signext %77, i16 noundef signext %78, ptr noundef null) #16
  br label %80

80:                                               ; preds = %72, %74, %76
  %81 = phi ptr [ %73, %72 ], [ %75, %74 ], [ %79, %76 ]
  %82 = load ptr, ptr %10, align 8, !tbaa !54
  %83 = getelementptr inbounds %struct.uiLayoutRoot, ptr %82, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !63
  %85 = icmp ne i32 %84, 3
  %86 = or i1 %66, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.uiBut, ptr %81, i64 0, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !74
  %90 = or i32 %89, 2
  store i32 %90, ptr %88, align 4, !tbaa !74
  br label %91

91:                                               ; preds = %87, %80
  br i1 %63, label %93, label %92

92:                                               ; preds = %91
  tail call void @uiBlockSetEmboss(ptr noundef %13, i8 noundef zeroext 0) #16
  br label %93

93:                                               ; preds = %92, %91
  %94 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 13
  %95 = load i8, ptr %94, align 1, !tbaa !75
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void @uiButSetFlag(ptr noundef %81, i32 noundef 65536) #16
  br label %98

98:                                               ; preds = %97, %93
  %99 = icmp eq ptr %5, null
  %100 = and i32 %7, 1
  %101 = icmp eq i32 %100, 0
  %102 = and i1 %99, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %98
  %104 = tail call ptr @uiButGetOperatorPtrRNA(ptr noundef %81) #16
  br i1 %99, label %107, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.PointerRNA, ptr %104, i64 0, i32 2
  store ptr %5, ptr %106, align 8, !tbaa !76
  br label %110

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %108 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %9, ptr noundef nonnull @.str.1) #16
  %109 = getelementptr inbounds %struct.PointerRNA, ptr %104, i64 0, i32 2
  store ptr %108, ptr %109, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  br label %110

110:                                              ; preds = %107, %105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %104, i64 24, i1 false), !tbaa.struct !52
  br label %112

111:                                              ; preds = %98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !52
  br label %112

112:                                              ; preds = %111, %110
  ret void
}

declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetCurLayout(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !64
  ret void
}

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiDefIconTextButO_ptr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefIconButO_ptr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButO_ptr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #2

declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemFullO(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %2, i8 noundef zeroext 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call fastcc void @ui_item_disabled(ptr noundef %1, ptr noundef %2)
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemFullO, ptr noundef %2) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !52
  br label %13

12:                                               ; preds = %8
  tail call void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7)
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.uiLayoutRoot, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 7
  store ptr %0, ptr %7, align 8, !tbaa !64
  %8 = icmp eq ptr %1, null
  %9 = select i1 %8, ptr @.str, ptr %1
  %10 = getelementptr inbounds %struct.uiLayoutRoot, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !63
  switch i32 %11, label %12 [
    i32 1, label %16
    i32 4, label %16
  ]

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %14 = load i8, ptr %13, align 1, !tbaa !73
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2, %2, %12
  %17 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %9) #16
  %18 = sitofp i32 %17 to float
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %20 = sitofp i16 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %20, float 1.500000e+00, float %18)
  %22 = fptosi float %21 to i32
  br label %27

23:                                               ; preds = %12
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %25 = zext i16 %24 to i32
  %26 = mul nuw nsw i32 %25, 10
  br label %27

27:                                               ; preds = %16, %23
  %28 = phi i32 [ %22, %16 ], [ %26, %23 ]
  %29 = trunc i32 %28 to i16
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %31 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, i16 noundef signext %29, i16 noundef signext %30, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  %32 = getelementptr inbounds %struct.uiBut, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !49
  %34 = or i32 %33, 2048
  store i32 %34, ptr %32, align 8, !tbaa !49
  %35 = getelementptr inbounds %struct.uiBut, ptr %31, i64 0, i32 45
  store i8 1, ptr %35, align 4, !tbaa !77
  %36 = getelementptr inbounds %struct.uiBut, ptr %31, i64 0, i32 43
  store ptr @.str, ptr %36, align 8, !tbaa !78
  ret void
}

declare void @_RNA_warning(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemEnumO_ptr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %10, ptr noundef %1) #16
  %12 = call ptr @RNA_struct_find_property(ptr noundef nonnull %10, ptr noundef %4) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = call ptr @RNA_struct_identifier(ptr noundef %16) #16
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.uiItemEnumO_ptr, ptr noundef %17, ptr noundef %4) #16
  br label %47

18:                                               ; preds = %6
  call void @RNA_property_enum_set(ptr noundef nonnull %10, ptr noundef nonnull %12, i32 noundef %5) #16
  %19 = icmp eq ptr %2, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %21 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.uiLayoutRoot, ptr %22, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.uiBlock, ptr %24, i64 0, i32 48
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  call void @RNA_property_enum_items(ptr noundef %26, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %8) #16
  %27 = load ptr, ptr %7, align 8, !tbaa !34
  %28 = call zeroext i8 @RNA_enum_name(ptr noundef %27, i32 noundef %5, ptr noundef nonnull %9) #16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store ptr @.str, ptr %9, align 8, !tbaa !34
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i8, ptr %8, align 1, !tbaa !68
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %36 = load ptr, ptr %7, align 8, !tbaa !34
  call void %35(ptr noundef %36) #16
  br label %37

37:                                               ; preds = %31, %34
  %38 = load ptr, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %39

39:                                               ; preds = %37, %18
  %40 = phi ptr [ %2, %18 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  %43 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = getelementptr inbounds %struct.uiLayoutRoot, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef %0, ptr noundef %1, ptr noundef %40, i32 noundef %3, ptr noundef %42, i32 noundef %46, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #16
  br label %47

47:                                               ; preds = %39, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  ret void
}

declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemEnumO(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @uiItemEnumO_ptr(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %11

10:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %1)
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.uiItemEnumO, ptr noundef %1) #16
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemsFullEnumO(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.uiLayoutRoot, ptr %14, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !82
  switch i32 %18, label %23 [
    i32 9, label %24
    i32 10, label %19
  ]

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.uiLayoutRoot, ptr %14, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !63
  %22 = icmp eq i32 %21, 4
  br label %24

23:                                               ; preds = %6
  br label %24

24:                                               ; preds = %6, %23, %19
  %25 = phi i1 [ true, %6 ], [ %22, %19 ], [ false, %23 ]
  %26 = icmp eq ptr %12, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.wmOperatorType, ptr %12, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %24
  %32 = phi ptr [ @.str.6, %27 ], [ @.str.7, %24 ]
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %1)
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.uiItemsFullEnumO, ptr noundef nonnull %32, ptr noundef %1) #16
  br label %276

33:                                               ; preds = %27
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %12) #16
  call void @WM_operator_properties_sanitize(ptr noundef nonnull %7, i8 noundef zeroext 0) #16
  %34 = call ptr @RNA_struct_find_property(ptr noundef nonnull %7, ptr noundef %2) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %272, label %36

36:                                               ; preds = %33
  %37 = call i32 @RNA_property_type(ptr noundef nonnull %34) #16
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %265

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr null, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #16
  br i1 %25, label %40, label %42

40:                                               ; preds = %39
  %41 = call ptr @uiLayoutRadial(ptr noundef %0)
  br label %103

42:                                               ; preds = %39
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %44 = call ptr %43(i64 noundef 96, ptr noundef nonnull @.str.26) #16
  %45 = getelementptr inbounds %struct.uiItem, ptr %44, i64 0, i32 2
  store i32 7, ptr %45, align 8, !tbaa !83
  %46 = load ptr, ptr %13, align 8, !tbaa !54
  %47 = getelementptr inbounds %struct.uiLayout, ptr %44, i64 0, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !85
  %48 = getelementptr inbounds %struct.uiLayout, ptr %44, i64 0, i32 10
  store i8 0, ptr %48, align 2, !tbaa !86
  %49 = getelementptr inbounds %struct.uiLayout, ptr %44, i64 0, i32 11
  store i8 1, ptr %49, align 1, !tbaa !87
  %50 = getelementptr inbounds %struct.uiLayout, ptr %44, i64 0, i32 12
  store i8 1, ptr %50, align 4, !tbaa !88
  %51 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !89
  %53 = getelementptr inbounds %struct.uiLayout, ptr %44, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !90
  %54 = load ptr, ptr %13, align 8, !tbaa !54
  %55 = getelementptr inbounds %struct.uiLayoutRoot, ptr %54, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !91
  %57 = getelementptr inbounds %struct.uiStyle, ptr %56, i64 0, i32 10
  %58 = load i16, ptr %57, align 8, !tbaa !92
  %59 = getelementptr inbounds %struct.uiLayout, ptr %44, i64 0, i32 9
  store i16 %58, ptr %59, align 8, !tbaa !95
  %60 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %61 = load i8, ptr %60, align 1, !tbaa !75
  %62 = getelementptr inbounds %struct.uiLayout, ptr %44, i64 0, i32 13
  store i8 %61, ptr %62, align 1, !tbaa !96
  %63 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !97
  %65 = getelementptr inbounds %struct.uiLayout, ptr %44, i64 0, i32 6
  store i32 %64, ptr %65, align 8, !tbaa !98
  %66 = getelementptr inbounds %struct.uiLayoutItemSplit, ptr %44, i64 0, i32 1
  store float 0.000000e+00, ptr %66, align 8, !tbaa !99
  %67 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %67, ptr noundef %44) #16
  %68 = load ptr, ptr %13, align 8, !tbaa !54
  %69 = getelementptr inbounds %struct.uiLayoutRoot, ptr %68, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8, !tbaa !58
  %71 = getelementptr inbounds %struct.uiBlock, ptr %70, i64 0, i32 7
  store ptr %44, ptr %71, align 8, !tbaa !64
  %72 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 10
  %73 = load i8, ptr %72, align 2, !tbaa !100
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %75 = call ptr %74(i64 noundef 88, ptr noundef nonnull @.str.21) #16
  %76 = getelementptr inbounds %struct.uiItem, ptr %75, i64 0, i32 2
  store i32 2, ptr %76, align 8, !tbaa !82
  %77 = load ptr, ptr %47, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct.uiLayout, ptr %75, i64 0, i32 1
  store ptr %77, ptr %78, align 8, !tbaa !54
  %79 = getelementptr inbounds %struct.uiLayout, ptr %75, i64 0, i32 10
  store i8 %73, ptr %79, align 2, !tbaa !100
  %80 = getelementptr inbounds %struct.uiLayout, ptr %75, i64 0, i32 11
  store i8 1, ptr %80, align 1, !tbaa !101
  %81 = getelementptr inbounds %struct.uiLayout, ptr %75, i64 0, i32 12
  store i8 1, ptr %81, align 4, !tbaa !102
  %82 = load ptr, ptr %53, align 8, !tbaa !89
  %83 = getelementptr inbounds %struct.uiLayout, ptr %75, i64 0, i32 2
  store ptr %82, ptr %83, align 8, !tbaa !89
  %84 = icmp eq i8 %73, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %42
  %86 = load ptr, ptr %47, align 8, !tbaa !54
  %87 = getelementptr inbounds %struct.uiLayoutRoot, ptr %86, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !91
  %89 = getelementptr inbounds %struct.uiStyle, ptr %88, i64 0, i32 14
  %90 = load i16, ptr %89, align 8, !tbaa !103
  br label %91

91:                                               ; preds = %42, %85
  %92 = phi i16 [ %90, %85 ], [ 0, %42 ]
  %93 = getelementptr inbounds %struct.uiLayout, ptr %75, i64 0, i32 9
  store i16 %92, ptr %93, align 8, !tbaa !104
  %94 = load i8, ptr %62, align 1, !tbaa !75
  %95 = getelementptr inbounds %struct.uiLayout, ptr %75, i64 0, i32 13
  store i8 %94, ptr %95, align 1, !tbaa !75
  %96 = load i32, ptr %65, align 8, !tbaa !97
  %97 = getelementptr inbounds %struct.uiLayout, ptr %75, i64 0, i32 6
  store i32 %96, ptr %97, align 8, !tbaa !97
  %98 = getelementptr inbounds %struct.uiLayout, ptr %44, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %98, ptr noundef %75) #16
  %99 = load ptr, ptr %47, align 8, !tbaa !54
  %100 = getelementptr inbounds %struct.uiLayoutRoot, ptr %99, i64 0, i32 10
  %101 = load ptr, ptr %100, align 8, !tbaa !58
  %102 = getelementptr inbounds %struct.uiBlock, ptr %101, i64 0, i32 7
  store ptr %75, ptr %102, align 8, !tbaa !64
  br label %103

103:                                              ; preds = %91, %40
  %104 = phi ptr [ undef, %40 ], [ %44, %91 ]
  %105 = phi ptr [ %41, %40 ], [ %75, %91 ]
  %106 = getelementptr inbounds %struct.uiBlock, ptr %16, i64 0, i32 48
  %107 = load ptr, ptr %106, align 8, !tbaa !80
  br i1 %25, label %108, label %109

108:                                              ; preds = %103
  call void @RNA_property_enum_items_gettexted_all(ptr noundef %107, ptr noundef nonnull %7, ptr noundef nonnull %34, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %9) #16
  br label %110

109:                                              ; preds = %103
  call void @RNA_property_enum_items_gettexted(ptr noundef %107, ptr noundef nonnull %7, ptr noundef nonnull %34, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %9) #16
  br label %110

110:                                              ; preds = %109, %108
  %111 = load ptr, ptr %8, align 8, !tbaa !34
  %112 = getelementptr inbounds %struct.EnumPropertyItem, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !105
  %114 = icmp eq ptr %113, null
  br i1 %114, label %258, label %115

115:                                              ; preds = %110
  %116 = icmp eq ptr %3, null
  %117 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %118 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %119 = getelementptr inbounds %struct.uiBlock, ptr %16, i64 0, i32 2, i32 1
  %120 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 10
  %121 = getelementptr inbounds %struct.uiLayout, ptr %104, i64 0, i32 1
  %122 = getelementptr inbounds %struct.uiLayout, ptr %104, i64 0, i32 2
  %123 = getelementptr inbounds %struct.uiLayout, ptr %104, i64 0, i32 13
  %124 = getelementptr inbounds %struct.uiLayout, ptr %104, i64 0, i32 6
  %125 = getelementptr inbounds %struct.uiLayout, ptr %104, i64 0, i32 3
  %126 = getelementptr inbounds %struct.uiBlock, ptr %16, i64 0, i32 27
  %127 = getelementptr inbounds %struct.uiBlock, ptr %16, i64 0, i32 2, i32 1
  br label %128

128:                                              ; preds = %115, %252
  %129 = phi ptr [ %113, %115 ], [ %256, %252 ]
  %130 = phi ptr [ %105, %115 ], [ %253, %252 ]
  %131 = phi ptr [ %111, %115 ], [ %254, %252 ]
  %132 = load i8, ptr %129, align 1, !tbaa !68
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %166, label %134

134:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %10, ptr noundef nonnull %12) #16
  br i1 %116, label %143, label %135

135:                                              ; preds = %134
  %136 = load ptr, ptr %117, align 8, !tbaa !76
  %137 = icmp eq ptr %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  call void @IDP_FreeProperty(ptr noundef nonnull %136) #16
  %139 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %140 = load ptr, ptr %117, align 8, !tbaa !76
  call void %139(ptr noundef %140) #16
  br label %141

141:                                              ; preds = %138, %135
  %142 = call ptr @IDP_CopyProperty(ptr noundef nonnull %3) #16
  store ptr %142, ptr %117, align 8, !tbaa !76
  br label %143

143:                                              ; preds = %141, %134
  %144 = load i32, ptr %131, align 8, !tbaa !107
  call void @RNA_property_enum_set(ptr noundef nonnull %10, ptr noundef nonnull %34, i32 noundef %144) #16
  %145 = getelementptr inbounds %struct.EnumPropertyItem, ptr %131, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !108
  %147 = getelementptr inbounds %struct.EnumPropertyItem, ptr %131, i64 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !109
  %149 = load ptr, ptr %118, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef %130, ptr noundef nonnull %12, ptr noundef %146, i32 noundef %148, ptr noundef %149, i32 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #16
  %150 = load ptr, ptr %119, align 8, !tbaa !110
  %151 = getelementptr inbounds %struct.uiBut, ptr %150, i64 0, i32 42
  %152 = load ptr, ptr %151, align 8, !tbaa !111
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %143
  %155 = load i8, ptr %152, align 1, !tbaa !68
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154, %143
  %158 = getelementptr inbounds %struct.EnumPropertyItem, ptr %131, i64 0, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !112
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = load i8, ptr %159, align 1, !tbaa !68
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  store ptr %159, ptr %151, align 8, !tbaa !111
  br label %165

165:                                              ; preds = %154, %157, %161, %164
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  br label %252

166:                                              ; preds = %128
  %167 = getelementptr inbounds %struct.EnumPropertyItem, ptr %131, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !108
  %169 = icmp eq ptr %168, null
  br i1 %169, label %236, label %170

170:                                              ; preds = %166
  %171 = load ptr, ptr %8, align 8, !tbaa !34
  %172 = icmp eq ptr %131, %171
  %173 = select i1 %172, i1 true, i1 %25
  br i1 %173, label %206, label %174

174:                                              ; preds = %170
  %175 = load i8, ptr %120, align 2, !tbaa !100
  %176 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %177 = call ptr %176(i64 noundef 88, ptr noundef nonnull @.str.21) #16
  %178 = getelementptr inbounds %struct.uiItem, ptr %177, i64 0, i32 2
  store i32 2, ptr %178, align 8, !tbaa !82
  %179 = load ptr, ptr %121, align 8, !tbaa !54
  %180 = getelementptr inbounds %struct.uiLayout, ptr %177, i64 0, i32 1
  store ptr %179, ptr %180, align 8, !tbaa !54
  %181 = getelementptr inbounds %struct.uiLayout, ptr %177, i64 0, i32 10
  store i8 %175, ptr %181, align 2, !tbaa !100
  %182 = getelementptr inbounds %struct.uiLayout, ptr %177, i64 0, i32 11
  store i8 1, ptr %182, align 1, !tbaa !101
  %183 = getelementptr inbounds %struct.uiLayout, ptr %177, i64 0, i32 12
  store i8 1, ptr %183, align 4, !tbaa !102
  %184 = load ptr, ptr %122, align 8, !tbaa !89
  %185 = getelementptr inbounds %struct.uiLayout, ptr %177, i64 0, i32 2
  store ptr %184, ptr %185, align 8, !tbaa !89
  %186 = icmp eq i8 %175, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %174
  %188 = load ptr, ptr %121, align 8, !tbaa !54
  %189 = getelementptr inbounds %struct.uiLayoutRoot, ptr %188, i64 0, i32 9
  %190 = load ptr, ptr %189, align 8, !tbaa !91
  %191 = getelementptr inbounds %struct.uiStyle, ptr %190, i64 0, i32 14
  %192 = load i16, ptr %191, align 8, !tbaa !103
  br label %193

193:                                              ; preds = %174, %187
  %194 = phi i16 [ %192, %187 ], [ 0, %174 ]
  %195 = getelementptr inbounds %struct.uiLayout, ptr %177, i64 0, i32 9
  store i16 %194, ptr %195, align 8, !tbaa !104
  %196 = load i8, ptr %123, align 1, !tbaa !75
  %197 = getelementptr inbounds %struct.uiLayout, ptr %177, i64 0, i32 13
  store i8 %196, ptr %197, align 1, !tbaa !75
  %198 = load i32, ptr %124, align 8, !tbaa !97
  %199 = getelementptr inbounds %struct.uiLayout, ptr %177, i64 0, i32 6
  store i32 %198, ptr %199, align 8, !tbaa !97
  call void @BLI_addtail(ptr noundef nonnull %125, ptr noundef %177) #16
  %200 = load ptr, ptr %121, align 8, !tbaa !54
  %201 = getelementptr inbounds %struct.uiLayoutRoot, ptr %200, i64 0, i32 10
  %202 = load ptr, ptr %201, align 8, !tbaa !58
  %203 = getelementptr inbounds %struct.uiBlock, ptr %202, i64 0, i32 7
  store ptr %177, ptr %203, align 8, !tbaa !64
  %204 = load i32, ptr %126, align 8, !tbaa !113
  %205 = or i32 %204, 2048
  store i32 %205, ptr %126, align 8, !tbaa !113
  br label %206

206:                                              ; preds = %193, %170
  %207 = phi ptr [ %130, %170 ], [ %177, %193 ]
  %208 = getelementptr inbounds %struct.EnumPropertyItem, ptr %131, i64 0, i32 2
  %209 = load i32, ptr %208, align 8, !tbaa !109
  %210 = icmp ne i32 %209, 0
  %211 = select i1 %210, i1 true, i1 %25
  %212 = load ptr, ptr %167, align 8, !tbaa !108
  br i1 %211, label %213, label %216

213:                                              ; preds = %206
  %214 = call fastcc ptr @uiItemL_(ptr noundef %207, ptr noundef %212, i32 noundef %209)
  %215 = load ptr, ptr %127, align 8, !tbaa !110
  br label %220

216:                                              ; preds = %206
  %217 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %218 = mul i16 %217, 5
  %219 = call ptr @uiDefBut(ptr noundef %16, i32 noundef 5120, i32 noundef 0, ptr noundef %212, i32 noundef 0, i32 noundef 0, i16 noundef signext %218, i16 noundef signext %217, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  br label %220

220:                                              ; preds = %216, %213
  %221 = phi ptr [ %215, %213 ], [ %219, %216 ]
  %222 = getelementptr inbounds %struct.uiBut, ptr %221, i64 0, i32 42
  %223 = load ptr, ptr %222, align 8, !tbaa !111
  %224 = icmp eq ptr %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %220
  %226 = load i8, ptr %223, align 1, !tbaa !68
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %252

228:                                              ; preds = %225, %220
  %229 = getelementptr inbounds %struct.EnumPropertyItem, ptr %131, i64 0, i32 4
  %230 = load ptr, ptr %229, align 8, !tbaa !112
  %231 = icmp eq ptr %230, null
  br i1 %231, label %252, label %232

232:                                              ; preds = %228
  %233 = load i8, ptr %230, align 1, !tbaa !68
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %252, label %235

235:                                              ; preds = %232
  store ptr %230, ptr %222, align 8, !tbaa !111
  br label %252

236:                                              ; preds = %166
  %237 = getelementptr inbounds %struct.uiLayout, ptr %130, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !54
  %239 = getelementptr inbounds %struct.uiLayoutRoot, ptr %238, i64 0, i32 10
  %240 = load ptr, ptr %239, align 8, !tbaa !58
  %241 = call zeroext i8 @ui_block_is_menu(ptr noundef %240) #16
  %242 = icmp eq i8 %241, 0
  %243 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %244 = sitofp i16 %243 to float
  %245 = select i1 %242, float 0x3FD3333340000000, float 0x3FDCCCCCC0000000
  %246 = select i1 %242, i32 10752, i32 27648
  %247 = fmul float %245, %244
  %248 = fptosi float %247 to i32
  %249 = getelementptr inbounds %struct.uiBlock, ptr %240, i64 0, i32 7
  store ptr %130, ptr %249, align 8, !tbaa !64
  %250 = trunc i32 %248 to i16
  %251 = call ptr @uiDefBut(ptr noundef %240, i32 noundef %246, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i16 noundef signext %250, i16 noundef signext %250, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  br label %252

252:                                              ; preds = %236, %235, %232, %228, %225, %165
  %253 = phi ptr [ %130, %165 ], [ %207, %225 ], [ %207, %228 ], [ %207, %232 ], [ %207, %235 ], [ %130, %236 ]
  %254 = getelementptr inbounds %struct.EnumPropertyItem, ptr %131, i64 1
  %255 = getelementptr inbounds %struct.EnumPropertyItem, ptr %131, i64 1, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !105
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %128, !llvm.loop !114

258:                                              ; preds = %252, %110
  %259 = load i8, ptr %9, align 1, !tbaa !68
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %258
  %262 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %263 = load ptr, ptr %8, align 8, !tbaa !34
  call void %262(ptr noundef %263) #16
  br label %264

264:                                              ; preds = %261, %258
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %276

265:                                              ; preds = %36
  %266 = call i32 @RNA_property_type(ptr noundef nonnull %34) #16
  %267 = icmp eq i32 %266, 4
  br i1 %267, label %272, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !79
  %271 = call ptr @RNA_struct_identifier(ptr noundef %270) #16
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.uiItemsFullEnumO, ptr noundef %271, ptr noundef %2) #16
  br label %276

272:                                              ; preds = %33, %265
  %273 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !79
  %275 = call ptr @RNA_struct_identifier(ptr noundef %274) #16
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.uiItemsFullEnumO, ptr noundef %275, ptr noundef %2) #16
  br label %276

276:                                              ; preds = %264, %272, %268, %31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

declare void @WM_operator_properties_sanitize(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @uiLayoutRadial(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %59, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !82
  switch i32 %9, label %10 [
    i32 1, label %26
    i32 10, label %26
    i32 8, label %26
  ]

10:                                               ; preds = %7
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 88, ptr noundef nonnull @.str.21) #16
  %13 = getelementptr inbounds %struct.uiItem, ptr %12, i64 0, i32 2
  store i32 2, ptr %13, align 8, !tbaa !82
  %14 = load ptr, ptr %2, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.uiLayout, ptr %12, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.uiLayout, ptr %12, i64 0, i32 10
  store i8 0, ptr %16, align 2, !tbaa !100
  %17 = getelementptr inbounds %struct.uiLayout, ptr %12, i64 0, i32 11
  store i8 1, ptr %17, align 1, !tbaa !101
  %18 = getelementptr inbounds %struct.uiLayout, ptr %12, i64 0, i32 12
  store i8 1, ptr %18, align 4, !tbaa !102
  %19 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = getelementptr inbounds %struct.uiLayout, ptr %12, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !89
  %22 = load ptr, ptr %2, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.uiLayoutRoot, ptr %22, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.uiStyle, ptr %24, i64 0, i32 14
  br label %42

26:                                               ; preds = %7, %7, %7
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 88, ptr noundef nonnull @.str.20) #16
  %29 = getelementptr inbounds %struct.uiItem, ptr %28, i64 0, i32 2
  store i32 1, ptr %29, align 8, !tbaa !82
  %30 = load ptr, ptr %2, align 8, !tbaa !54
  %31 = getelementptr inbounds %struct.uiLayout, ptr %28, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.uiLayout, ptr %28, i64 0, i32 10
  store i8 0, ptr %32, align 2, !tbaa !100
  %33 = getelementptr inbounds %struct.uiLayout, ptr %28, i64 0, i32 11
  store i8 1, ptr %33, align 1, !tbaa !101
  %34 = getelementptr inbounds %struct.uiLayout, ptr %28, i64 0, i32 12
  store i8 1, ptr %34, align 4, !tbaa !102
  %35 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = getelementptr inbounds %struct.uiLayout, ptr %28, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !89
  %38 = load ptr, ptr %2, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct.uiLayoutRoot, ptr %38, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !91
  %41 = getelementptr inbounds %struct.uiStyle, ptr %40, i64 0, i32 13
  br label %42

42:                                               ; preds = %26, %10
  %43 = phi ptr [ %28, %26 ], [ %12, %10 ]
  %44 = phi ptr [ %41, %26 ], [ %25, %10 ]
  %45 = load i16, ptr %44, align 2, !tbaa !115
  %46 = getelementptr inbounds %struct.uiLayout, ptr %43, i64 0, i32 9
  store i16 %45, ptr %46, align 8, !tbaa !104
  %47 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %48 = load i8, ptr %47, align 1, !tbaa !75
  %49 = getelementptr inbounds %struct.uiLayout, ptr %43, i64 0, i32 13
  store i8 %48, ptr %49, align 1, !tbaa !75
  %50 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %51 = load i32, ptr %50, align 8, !tbaa !97
  %52 = getelementptr inbounds %struct.uiLayout, ptr %43, i64 0, i32 6
  store i32 %51, ptr %52, align 8, !tbaa !97
  %53 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %53, ptr noundef %43) #16
  %54 = load ptr, ptr %2, align 8, !tbaa !54
  %55 = getelementptr inbounds %struct.uiLayoutRoot, ptr %54, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct.uiBlock, ptr %56, i64 0, i32 7
  store ptr %43, ptr %57, align 8, !tbaa !64
  %58 = getelementptr inbounds %struct.uiLayout, ptr %43, i64 0, i32 9
  store i16 0, ptr %58, align 8, !tbaa !104
  br label %100

59:                                               ; preds = %1
  %60 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 11
  %61 = load ptr, ptr %60, align 8, !tbaa !116
  %62 = getelementptr inbounds %struct.uiLayout, ptr %61, i64 0, i32 3
  br label %63

63:                                               ; preds = %67, %59
  %64 = phi ptr [ %62, %59 ], [ %65, %67 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.uiItem, ptr %65, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !82
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %63, !llvm.loop !117

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 10
  %73 = load ptr, ptr %72, align 8, !tbaa !58
  %74 = getelementptr inbounds %struct.uiBlock, ptr %73, i64 0, i32 7
  store ptr %65, ptr %74, align 8, !tbaa !64
  br label %100

75:                                               ; preds = %63
  %76 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %77 = tail call ptr %76(i64 noundef 88, ptr noundef nonnull @.str.23) #16
  %78 = getelementptr inbounds %struct.uiItem, ptr %77, i64 0, i32 2
  store i32 9, ptr %78, align 8, !tbaa !82
  %79 = load ptr, ptr %2, align 8, !tbaa !54
  %80 = getelementptr inbounds %struct.uiLayout, ptr %77, i64 0, i32 1
  store ptr %79, ptr %80, align 8, !tbaa !54
  %81 = getelementptr inbounds %struct.uiLayout, ptr %77, i64 0, i32 11
  store i8 1, ptr %81, align 1, !tbaa !101
  %82 = getelementptr inbounds %struct.uiLayout, ptr %77, i64 0, i32 12
  store i8 1, ptr %82, align 4, !tbaa !102
  %83 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !89
  %85 = getelementptr inbounds %struct.uiLayout, ptr %77, i64 0, i32 2
  store ptr %84, ptr %85, align 8, !tbaa !89
  %86 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %87 = load i8, ptr %86, align 1, !tbaa !75
  %88 = getelementptr inbounds %struct.uiLayout, ptr %77, i64 0, i32 13
  store i8 %87, ptr %88, align 1, !tbaa !75
  %89 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %90 = load i32, ptr %89, align 8, !tbaa !97
  %91 = getelementptr inbounds %struct.uiLayout, ptr %77, i64 0, i32 6
  store i32 %90, ptr %91, align 8, !tbaa !97
  %92 = load ptr, ptr %2, align 8, !tbaa !54
  %93 = getelementptr inbounds %struct.uiLayoutRoot, ptr %92, i64 0, i32 11
  %94 = load ptr, ptr %93, align 8, !tbaa !116
  %95 = getelementptr inbounds %struct.uiLayout, ptr %94, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %95, ptr noundef %77) #16
  %96 = load ptr, ptr %2, align 8, !tbaa !54
  %97 = getelementptr inbounds %struct.uiLayoutRoot, ptr %96, i64 0, i32 10
  %98 = load ptr, ptr %97, align 8, !tbaa !58
  %99 = getelementptr inbounds %struct.uiBlock, ptr %98, i64 0, i32 7
  store ptr %77, ptr %99, align 8, !tbaa !64
  br label %100

100:                                              ; preds = %75, %71, %42
  %101 = phi ptr [ %43, %42 ], [ %65, %71 ], [ %77, %75 ]
  ret ptr %101
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiLayoutSplit(ptr noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 96, ptr noundef nonnull @.str.26) #16
  %6 = getelementptr inbounds %struct.uiItem, ptr %5, i64 0, i32 2
  store i32 7, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !85
  %10 = trunc i32 %2 to i8
  %11 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 10
  store i8 %10, ptr %11, align 2, !tbaa !86
  %12 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 11
  store i8 1, ptr %12, align 1, !tbaa !87
  %13 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 12
  store i8 1, ptr %13, align 4, !tbaa !88
  %14 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !90
  %17 = load ptr, ptr %7, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.uiLayoutRoot, ptr %17, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.uiStyle, ptr %19, i64 0, i32 10
  %21 = load i16, ptr %20, align 8, !tbaa !92
  %22 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 9
  store i16 %21, ptr %22, align 8, !tbaa !95
  %23 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %24 = load i8, ptr %23, align 1, !tbaa !75
  %25 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 13
  store i8 %24, ptr %25, align 1, !tbaa !96
  %26 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !97
  %28 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 6
  store i32 %27, ptr %28, align 8, !tbaa !98
  %29 = getelementptr inbounds %struct.uiLayoutItemSplit, ptr %5, i64 0, i32 1
  store float %1, ptr %29, align 8, !tbaa !99
  %30 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef %5) #16
  %31 = load ptr, ptr %7, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.uiLayoutRoot, ptr %31, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.uiBlock, ptr %33, i64 0, i32 7
  store ptr %5, ptr %34, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiLayoutColumn(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 88, ptr noundef nonnull @.str.21) #16
  %5 = getelementptr inbounds %struct.uiItem, ptr %4, i64 0, i32 2
  store i32 2, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !54
  %9 = trunc i32 %1 to i8
  %10 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 10
  store i8 %9, ptr %10, align 2, !tbaa !100
  %11 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 11
  store i8 1, ptr %11, align 1, !tbaa !101
  %12 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 12
  store i8 1, ptr %12, align 4, !tbaa !102
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  %15 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !89
  %16 = icmp eq i8 %9, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load ptr, ptr %6, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.uiLayoutRoot, ptr %18, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.uiStyle, ptr %20, i64 0, i32 14
  %22 = load i16, ptr %21, align 8, !tbaa !103
  br label %23

23:                                               ; preds = %2, %17
  %24 = phi i16 [ %22, %17 ], [ 0, %2 ]
  %25 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 9
  store i16 %24, ptr %25, align 8, !tbaa !104
  %26 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %27 = load i8, ptr %26, align 1, !tbaa !75
  %28 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 13
  store i8 %27, ptr %28, align 1, !tbaa !75
  %29 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !97
  %31 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 6
  store i32 %30, ptr %31, align 8, !tbaa !97
  %32 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %32, ptr noundef %4) #16
  %33 = load ptr, ptr %6, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct.uiLayoutRoot, ptr %33, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.uiBlock, ptr %35, i64 0, i32 7
  store ptr %4, ptr %36, align 8, !tbaa !64
  ret ptr %4
}

declare void @RNA_property_enum_items_gettexted_all(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_enum_items_gettexted(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @uiItemL_(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemS(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = tail call zeroext i8 @ui_block_is_menu(ptr noundef %5) #16
  %7 = icmp eq i8 %6, 0
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %9 = sitofp i16 %8 to float
  %10 = select i1 %7, float 0x3FD3333340000000, float 0x3FDCCCCCC0000000
  %11 = select i1 %7, i32 10752, i32 27648
  %12 = fmul float %10, %9
  %13 = fptosi float %12 to i32
  %14 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 7
  store ptr %0, ptr %14, align 8, !tbaa !64
  %15 = trunc i32 %13 to i16
  %16 = tail call ptr @uiDefBut(ptr noundef %5, i32 noundef %11, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i16 noundef signext %15, i16 noundef signext %15, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemsEnumO(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !81
  tail call void @uiItemsFullEnumO(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef %7, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemEnumO_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3)
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemEnumO_value, ptr noundef %3) #16
  br label %51

15:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %10, ptr noundef nonnull %12) #16
  %16 = call ptr @RNA_struct_find_property(ptr noundef nonnull %10, ptr noundef %4) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !79
  %21 = call ptr @RNA_struct_identifier(ptr noundef %20) #16
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.uiItemEnumO_value, ptr noundef %21, ptr noundef %4) #16
  br label %51

22:                                               ; preds = %15
  call void @RNA_property_enum_set(ptr noundef nonnull %10, ptr noundef nonnull %16, i32 noundef %5) #16
  %23 = icmp eq ptr %1, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %25 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = getelementptr inbounds %struct.uiLayoutRoot, ptr %26, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 48
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  call void @RNA_property_enum_items(ptr noundef %30, ptr noundef nonnull %10, ptr noundef nonnull %16, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %8) #16
  %31 = load ptr, ptr %7, align 8, !tbaa !34
  %32 = call zeroext i8 @RNA_enum_name(ptr noundef %31, i32 noundef %5, ptr noundef nonnull %9) #16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store ptr @.str, ptr %9, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i8, ptr %8, align 1, !tbaa !68
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %40 = load ptr, ptr %7, align 8, !tbaa !34
  call void %39(ptr noundef %40) #16
  br label %41

41:                                               ; preds = %35, %38
  %42 = load ptr, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %43

43:                                               ; preds = %41, %22
  %44 = phi ptr [ %1, %22 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !76
  %47 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !54
  %49 = getelementptr inbounds %struct.uiLayoutRoot, ptr %48, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef %0, ptr noundef nonnull %12, ptr noundef %44, i32 noundef %2, ptr noundef %46, i32 noundef %50, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #16
  br label %51

51:                                               ; preds = %43, %18, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemEnumO_string(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca %struct.PointerRNA, align 8
  %15 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3)
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemEnumO_string, ptr noundef %3) #16
  br label %82

18:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %10, ptr noundef nonnull %15) #16
  %19 = call ptr @RNA_struct_find_property(ptr noundef nonnull %10, ptr noundef %4) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.uiLayoutRoot, ptr %23, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = getelementptr inbounds %struct.uiBlock, ptr %25, i64 0, i32 48
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  call void @RNA_property_enum_items(ptr noundef %27, ptr noundef nonnull %10, ptr noundef nonnull %19, ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %13) #16
  %28 = load ptr, ptr %11, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = call zeroext i8 @RNA_enum_value_from_id(ptr noundef nonnull %28, ptr noundef %5, ptr noundef nonnull %12) #16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %21
  %34 = load i8, ptr %13, align 1, !tbaa !68
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %38 = load ptr, ptr %11, align 8, !tbaa !34
  call void %37(ptr noundef %38) #16
  br label %39

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  %42 = call ptr @RNA_struct_identifier(ptr noundef %41) #16
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.uiItemEnumO_string, ptr noundef %42, ptr noundef %4, ptr noundef %5) #16
  br label %82

43:                                               ; preds = %30
  %44 = load i8, ptr %13, align 1, !tbaa !68
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %48 = load ptr, ptr %11, align 8, !tbaa !34
  call void %47(ptr noundef %48) #16
  br label %53

49:                                               ; preds = %18
  %50 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !79
  %52 = call ptr @RNA_struct_identifier(ptr noundef %51) #16
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.uiItemEnumO_string, ptr noundef %52, ptr noundef %4) #16
  br label %82

53:                                               ; preds = %43, %46
  %54 = load i32, ptr %12, align 4, !tbaa !118
  call void @RNA_property_enum_set(ptr noundef nonnull %10, ptr noundef nonnull %19, i32 noundef %54) #16
  %55 = icmp eq ptr %1, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load i32, ptr %12, align 4, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %58 = load ptr, ptr %22, align 8, !tbaa !54
  %59 = getelementptr inbounds %struct.uiLayoutRoot, ptr %58, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !58
  %61 = getelementptr inbounds %struct.uiBlock, ptr %60, i64 0, i32 48
  %62 = load ptr, ptr %61, align 8, !tbaa !80
  call void @RNA_property_enum_items(ptr noundef %62, ptr noundef nonnull %10, ptr noundef nonnull %19, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %8) #16
  %63 = load ptr, ptr %7, align 8, !tbaa !34
  %64 = call zeroext i8 @RNA_enum_name(ptr noundef %63, i32 noundef %57, ptr noundef nonnull %9) #16
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store ptr @.str, ptr %9, align 8, !tbaa !34
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i8, ptr %8, align 1, !tbaa !68
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %72 = load ptr, ptr %7, align 8, !tbaa !34
  call void %71(ptr noundef %72) #16
  br label %73

73:                                               ; preds = %67, %70
  %74 = load ptr, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %75

75:                                               ; preds = %73, %53
  %76 = phi ptr [ %1, %53 ], [ %74, %73 ]
  %77 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !76
  %79 = load ptr, ptr %22, align 8, !tbaa !54
  %80 = getelementptr inbounds %struct.uiLayoutRoot, ptr %79, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %14, ptr noundef %0, ptr noundef nonnull %15, ptr noundef %76, i32 noundef %2, ptr noundef %78, i32 noundef %81, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #16
  br label %82

82:                                               ; preds = %75, %49, %39, %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  ret void
}

declare void @RNA_property_enum_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_enum_value_from_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemBooleanO(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3)
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemBooleanO, ptr noundef %3) #16
  br label %19

12:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %9) #16
  call void @RNA_boolean_set(ptr noundef nonnull %7, ptr noundef %4, i32 noundef %5) #16
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, i32 noundef %2, ptr noundef %14, i32 noundef %18, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %19

19:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemIntO(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3)
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemIntO, ptr noundef %3) #16
  br label %19

12:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %9) #16
  call void @RNA_int_set(ptr noundef nonnull %7, ptr noundef %4, i32 noundef %5) #16
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, i32 noundef %2, ptr noundef %14, i32 noundef %18, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %19

19:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemFloatO(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3)
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemFloatO, ptr noundef %3) #16
  br label %19

12:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %9) #16
  call void @RNA_float_set(ptr noundef nonnull %7, ptr noundef %4, float noundef %5) #16
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, i32 noundef %2, ptr noundef %14, i32 noundef %18, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %19

19:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemStringO(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3)
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemStringO, ptr noundef %3) #16
  br label %19

12:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %9) #16
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef %4, ptr noundef %5) #16
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, i32 noundef %2, ptr noundef %14, i32 noundef %18, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %19

19:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemO(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.uiLayoutRoot, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %10 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #16, !noalias !119
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3), !noalias !119
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemFullO, ptr noundef %3) #16, !noalias !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !52
  br label %14

13:                                               ; preds = %4
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %0, ptr noundef nonnull %10, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef %9, i32 noundef 0)
  br label %14

14:                                               ; preds = %12, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemFullR(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca [128 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.uiLayoutRoot, ptr %17, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  %20 = getelementptr inbounds %struct.uiBlock, ptr %19, i64 0, i32 7
  store ptr %0, ptr %20, align 8, !tbaa !64
  %21 = tail call i32 @RNA_property_type(ptr noundef %2) #16
  %22 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %2) #16
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = tail call i32 @RNA_property_array_length(ptr noundef %1, ptr noundef %2) #16
  br label %26

26:                                               ; preds = %8, %24
  %27 = phi i32 [ %25, %24 ], [ 0, %8 ]
  %28 = icmp eq ptr %6, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = and i32 %5, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call ptr @RNA_property_ui_name(ptr noundef %2) #16
  br label %34

34:                                               ; preds = %29, %32, %26
  %35 = phi ptr [ %6, %26 ], [ %33, %32 ], [ @.str, %29 ]
  %36 = icmp eq i32 %7, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call i32 @RNA_property_ui_icon(ptr noundef %2) #16
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %38, %37 ], [ %7, %34 ]
  %41 = and i32 %5, 16
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %80, label %43

43:                                               ; preds = %39
  switch i32 %21, label %50 [
    i32 5, label %44
    i32 3, label %44
    i32 2, label %44
    i32 1, label %44
  ]

44:                                               ; preds = %43, %43, %43, %43
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #17
  %46 = trunc i64 %45 to i32
  %47 = icmp ne i32 %46, 0
  %48 = icmp slt i32 %46, 127
  %49 = and i1 %47, %48
  br i1 %49, label %71, label %80

50:                                               ; preds = %43
  %51 = icmp eq i32 %21, 0
  %52 = icmp eq i32 %3, -1
  %53 = and i1 %52, %51
  %54 = and i1 %53, %23
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #17
  %57 = trunc i64 %56 to i32
  %58 = icmp ne i32 %57, 0
  %59 = icmp slt i32 %57, 127
  %60 = and i1 %58, %59
  br i1 %60, label %71, label %80

61:                                               ; preds = %50
  %62 = icmp eq i32 %21, 4
  %63 = icmp ne i32 %3, -2
  %64 = and i1 %63, %62
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #17
  %67 = trunc i64 %66 to i32
  %68 = icmp ne i32 %67, 0
  %69 = icmp slt i32 %67, 127
  %70 = and i1 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65, %55, %44
  %72 = phi i64 [ %45, %44 ], [ %56, %55 ], [ %66, %65 ]
  %73 = call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef %35, i64 noundef 128) #16
  %74 = shl i64 %72, 32
  %75 = ashr exact i64 %74, 32
  %76 = getelementptr inbounds i8, ptr %13, i64 %75
  store i8 58, ptr %76, align 1, !tbaa !68
  %77 = add i64 %74, 4294967296
  %78 = ashr exact i64 %77, 32
  %79 = getelementptr inbounds i8, ptr %13, i64 %78
  store i8 0, ptr %79, align 1, !tbaa !68
  br label %80

80:                                               ; preds = %71, %65, %55, %44, %61, %39
  %81 = phi ptr [ %35, %39 ], [ %35, %61 ], [ %35, %44 ], [ %35, %55 ], [ %35, %65 ], [ %13, %71 ]
  %82 = load ptr, ptr %16, align 8, !tbaa !54
  %83 = getelementptr inbounds %struct.uiLayoutRoot, ptr %82, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !63
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %117

86:                                               ; preds = %80
  %87 = icmp eq i32 %21, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %86
  %89 = icmp eq i8 %22, 0
  %90 = icmp ne i32 %3, -1
  %91 = or i1 %90, %89
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  br i1 %89, label %97, label %93

93:                                               ; preds = %92
  %94 = call i32 @RNA_property_boolean_get_index(ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 38, i32 39
  br label %117

97:                                               ; preds = %92
  %98 = call i32 @RNA_property_boolean_get(ptr noundef %1, ptr noundef %2) #16
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 38, i32 39
  br label %117

101:                                              ; preds = %88, %86
  %102 = icmp eq i32 %21, 4
  %103 = icmp eq i32 %3, -2
  %104 = and i1 %103, %102
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = call i32 @RNA_property_enum_get(ptr noundef %1, ptr noundef %2) #16
  %107 = call i32 @RNA_property_flag(ptr noundef %2) #16
  %108 = and i32 %107, 2097152
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = and i32 %106, %4
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 38, i32 39
  br label %117

114:                                              ; preds = %105
  %115 = icmp eq i32 %106, %4
  %116 = select i1 %115, i32 39, i32 38
  br label %117

117:                                              ; preds = %110, %114, %97, %93, %101, %80
  %118 = phi i32 [ %96, %93 ], [ %100, %97 ], [ %40, %101 ], [ %40, %80 ], [ %113, %110 ], [ %116, %114 ]
  %119 = and i32 %5, 4
  %120 = and i32 %5, 8
  %121 = and i32 %5, 2
  %122 = and i32 %5, 128
  call fastcc void @ui_item_rna_size(ptr noundef %0, ptr noundef %81, i32 noundef %118, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %41, ptr noundef nonnull %14, ptr noundef nonnull %15)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  call void @uiBlockSetEmboss(ptr noundef %19, i8 noundef zeroext 1) #16
  br label %125

125:                                              ; preds = %124, %117
  %126 = icmp eq i32 %3, -1
  %127 = and i1 %126, %23
  br i1 %127, label %128, label %434

128:                                              ; preds = %125
  %129 = load i32, ptr %14, align 4, !tbaa !118
  %130 = load ptr, ptr %16, align 8, !tbaa !54
  %131 = getelementptr inbounds %struct.uiLayoutRoot, ptr %130, i64 0, i32 9
  %132 = load ptr, ptr %131, align 8, !tbaa !91
  %133 = call i32 @RNA_property_type(ptr noundef %2) #16
  %134 = call i32 @RNA_property_subtype(ptr noundef %2) #16
  %135 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !82
  switch i32 %136, label %138 [
    i32 1, label %137
    i32 10, label %137
    i32 8, label %137
  ]

137:                                              ; preds = %128, %128, %128
  br label %138

138:                                              ; preds = %128, %137
  %139 = phi ptr [ @.str.20, %137 ], [ @.str.21, %128 ]
  %140 = phi i32 [ 1, %137 ], [ 2, %128 ]
  %141 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %142 = call ptr %141(i64 noundef 88, ptr noundef nonnull %139) #16
  %143 = getelementptr inbounds %struct.uiItem, ptr %142, i64 0, i32 2
  store i32 %140, ptr %143, align 8, !tbaa !82
  %144 = load ptr, ptr %16, align 8, !tbaa !54
  %145 = getelementptr inbounds %struct.uiLayout, ptr %142, i64 0, i32 1
  store ptr %144, ptr %145, align 8, !tbaa !54
  %146 = getelementptr inbounds %struct.uiLayout, ptr %142, i64 0, i32 10
  store i8 1, ptr %146, align 2, !tbaa !100
  %147 = getelementptr inbounds %struct.uiLayout, ptr %142, i64 0, i32 11
  store i8 1, ptr %147, align 1, !tbaa !101
  %148 = getelementptr inbounds %struct.uiLayout, ptr %142, i64 0, i32 12
  store i8 1, ptr %148, align 4, !tbaa !102
  %149 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !89
  %151 = getelementptr inbounds %struct.uiLayout, ptr %142, i64 0, i32 2
  store ptr %150, ptr %151, align 8, !tbaa !89
  %152 = getelementptr inbounds %struct.uiLayout, ptr %142, i64 0, i32 9
  store i16 0, ptr %152, align 8, !tbaa !104
  %153 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %154 = load i8, ptr %153, align 1, !tbaa !75
  %155 = getelementptr inbounds %struct.uiLayout, ptr %142, i64 0, i32 13
  store i8 %154, ptr %155, align 1, !tbaa !75
  %156 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %157 = load i32, ptr %156, align 8, !tbaa !97
  %158 = getelementptr inbounds %struct.uiLayout, ptr %142, i64 0, i32 6
  store i32 %157, ptr %158, align 8, !tbaa !97
  %159 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %159, ptr noundef %142) #16
  %160 = load ptr, ptr %16, align 8, !tbaa !54
  %161 = getelementptr inbounds %struct.uiLayoutRoot, ptr %160, i64 0, i32 10
  %162 = load ptr, ptr %161, align 8, !tbaa !58
  %163 = getelementptr inbounds %struct.uiBlock, ptr %162, i64 0, i32 7
  store ptr %142, ptr %163, align 8, !tbaa !64
  %164 = getelementptr inbounds %struct.uiLayout, ptr %142, i64 0, i32 9
  store i16 0, ptr %164, align 8, !tbaa !104
  store ptr %142, ptr %20, align 8, !tbaa !64
  %165 = load i8, ptr %81, align 1, !tbaa !68
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %138
  %168 = trunc i32 %129 to i16
  %169 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %170 = call ptr @uiDefBut(ptr noundef %19, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %81, i32 noundef 0, i32 noundef 0, i16 noundef signext %168, i16 noundef signext %169, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  br label %171

171:                                              ; preds = %167, %138
  %172 = icmp eq i32 %133, 0
  br i1 %172, label %173, label %293

173:                                              ; preds = %171
  %174 = icmp eq i32 %134, 41
  %175 = and i32 %134, -2
  %176 = icmp eq i32 %175, 40
  br i1 %176, label %177, label %293

177:                                              ; preds = %173
  %178 = icmp sgt i32 %27, 19
  %179 = select i1 %178, i32 2, i32 1
  %180 = shl nuw nsw i32 %179, 1
  %181 = sdiv i32 %27, %180
  %182 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %183 = call ptr %182(i64 noundef 88, ptr noundef nonnull @.str.24) #16
  %184 = getelementptr inbounds %struct.uiItem, ptr %183, i64 0, i32 2
  store i32 6, ptr %184, align 8, !tbaa !82
  %185 = load ptr, ptr %16, align 8, !tbaa !54
  %186 = getelementptr inbounds %struct.uiLayout, ptr %183, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !54
  %187 = getelementptr inbounds %struct.uiLayout, ptr %183, i64 0, i32 10
  store i8 0, ptr %187, align 2, !tbaa !100
  %188 = getelementptr inbounds %struct.uiLayout, ptr %183, i64 0, i32 11
  store i8 1, ptr %188, align 1, !tbaa !101
  %189 = getelementptr inbounds %struct.uiLayout, ptr %183, i64 0, i32 12
  store i8 1, ptr %189, align 4, !tbaa !102
  %190 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !89
  %192 = getelementptr inbounds %struct.uiLayout, ptr %183, i64 0, i32 2
  store ptr %191, ptr %192, align 8, !tbaa !89
  %193 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %194 = load i8, ptr %193, align 1, !tbaa !75
  %195 = getelementptr inbounds %struct.uiLayout, ptr %183, i64 0, i32 13
  store i8 %194, ptr %195, align 1, !tbaa !75
  %196 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %196, ptr noundef %183) #16
  %197 = load ptr, ptr %16, align 8, !tbaa !54
  %198 = getelementptr inbounds %struct.uiLayoutRoot, ptr %197, i64 0, i32 10
  %199 = load ptr, ptr %198, align 8, !tbaa !58
  %200 = getelementptr inbounds %struct.uiBlock, ptr %199, i64 0, i32 7
  store ptr %183, ptr %200, align 8, !tbaa !64
  store ptr %183, ptr %20, align 8, !tbaa !64
  %201 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %202 = sitofp i16 %201 to double
  %203 = fmul double %202, 7.500000e-01
  %204 = fptosi double %203 to i32
  %205 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !79
  %207 = icmp eq ptr %206, @RNA_Armature
  br i1 %207, label %208, label %231

208:                                              ; preds = %177
  %209 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !76
  %211 = getelementptr inbounds %struct.bArmature, ptr %210, i64 0, i32 14
  %212 = load i32, ptr %211, align 4, !tbaa !122
  %213 = getelementptr inbounds %struct.bArmature, ptr %210, i64 0, i32 4
  %214 = load ptr, ptr %213, align 8, !tbaa !125
  %215 = icmp eq ptr %214, null
  br i1 %215, label %222, label %216

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.bArmature, ptr %210, i64 0, i32 6
  %218 = load ptr, ptr %217, align 8, !tbaa !126
  %219 = icmp eq ptr %218, null
  br i1 %219, label %231, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.EditBone, ptr %218, i64 0, i32 10
  br label %228

222:                                              ; preds = %208
  %223 = getelementptr inbounds %struct.bArmature, ptr %210, i64 0, i32 5
  %224 = load ptr, ptr %223, align 8, !tbaa !127
  %225 = icmp eq ptr %224, null
  br i1 %225, label %231, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.Bone, ptr %224, i64 0, i32 25
  br label %228

228:                                              ; preds = %220, %226
  %229 = phi ptr [ %227, %226 ], [ %221, %220 ]
  %230 = load i32, ptr %229, align 8, !tbaa !118
  br label %231

231:                                              ; preds = %228, %222, %216, %177
  %232 = phi i32 [ 0, %177 ], [ 0, %216 ], [ 0, %222 ], [ %230, %228 ]
  %233 = phi i32 [ 0, %177 ], [ %212, %216 ], [ %212, %222 ], [ %212, %228 ]
  %234 = icmp eq i32 %181, 0
  %235 = sdiv i32 %27, 2
  %236 = mul i32 %181, %204
  %237 = getelementptr inbounds %struct.uiStyle, ptr %132, i64 0, i32 13
  %238 = icmp eq i32 %181, 0
  br label %239

239:                                              ; preds = %231, %286
  %240 = phi i32 [ 0, %231 ], [ %290, %286 ]
  %241 = phi i32 [ 0, %231 ], [ %291, %286 ]
  call void @uiBlockBeginAlign(ptr noundef %19) #16
  br i1 %238, label %286, label %242

242:                                              ; preds = %239
  %243 = mul nuw nsw i32 %241, %181
  br label %248

244:                                              ; preds = %264
  br i1 %234, label %286, label %245

245:                                              ; preds = %244
  %246 = mul nuw nsw i32 %241, %181
  %247 = add i32 %246, %235
  br label %267

248:                                              ; preds = %242, %264
  %249 = phi i32 [ 0, %242 ], [ %265, %264 ]
  %250 = add i32 %249, %243
  %251 = shl nuw i32 1, %250
  %252 = and i32 %251, %233
  %253 = icmp eq i32 %252, 0
  %254 = and i32 %251, %232
  %255 = icmp eq i32 %254, 0
  %256 = select i1 %255, i32 643, i32 644
  %257 = select i1 %253, i32 77, i32 %256
  %258 = mul i32 %249, %204
  %259 = add i32 %258, %240
  %260 = call ptr @uiDefAutoButR(ptr noundef %19, ptr noundef %1, ptr noundef %2, i32 noundef %250, ptr noundef nonnull @.str, i32 noundef %257, i32 noundef %259, i32 noundef %204, i32 noundef %204, i32 noundef %204) #16
  br i1 %174, label %261, label %264

261:                                              ; preds = %248
  %262 = sext i32 %250 to i64
  %263 = inttoptr i64 %262 to ptr
  call void @uiButSetFunc(ptr noundef %260, ptr noundef nonnull @ui_layer_but_cb, ptr noundef %260, ptr noundef %263) #16
  br label %264

264:                                              ; preds = %261, %248
  %265 = add nuw i32 %249, 1
  %266 = icmp eq i32 %265, %181
  br i1 %266, label %244, label %248, !llvm.loop !128

267:                                              ; preds = %245, %283
  %268 = phi i32 [ 0, %245 ], [ %284, %283 ]
  %269 = add i32 %247, %268
  %270 = shl nuw i32 1, %269
  %271 = and i32 %270, %233
  %272 = icmp eq i32 %271, 0
  %273 = and i32 %270, %232
  %274 = icmp eq i32 %273, 0
  %275 = select i1 %274, i32 643, i32 644
  %276 = select i1 %272, i32 77, i32 %275
  %277 = mul i32 %268, %204
  %278 = add i32 %277, %240
  %279 = call ptr @uiDefAutoButR(ptr noundef %19, ptr noundef %1, ptr noundef %2, i32 noundef %269, ptr noundef nonnull @.str, i32 noundef %276, i32 noundef %278, i32 noundef 0, i32 noundef %204, i32 noundef %204) #16
  br i1 %174, label %280, label %283

280:                                              ; preds = %267
  %281 = sext i32 %269 to i64
  %282 = inttoptr i64 %281 to ptr
  call void @uiButSetFunc(ptr noundef %279, ptr noundef nonnull @ui_layer_but_cb, ptr noundef %279, ptr noundef %282) #16
  br label %283

283:                                              ; preds = %280, %267
  %284 = add nuw i32 %268, 1
  %285 = icmp eq i32 %284, %181
  br i1 %285, label %286, label %267, !llvm.loop !129

286:                                              ; preds = %283, %239, %244
  call void @uiBlockEndAlign(ptr noundef %19) #16
  %287 = load i16, ptr %237, align 2, !tbaa !130
  %288 = sext i16 %287 to i32
  %289 = add i32 %240, %236
  %290 = add i32 %289, %288
  %291 = add nuw nsw i32 %241, 1
  %292 = icmp eq i32 %291, %179
  br i1 %292, label %432, label %239, !llvm.loop !131

293:                                              ; preds = %173, %171
  %294 = icmp eq i32 %134, 25
  br i1 %294, label %295, label %345

295:                                              ; preds = %293
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  %296 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %297 = call ptr %296(i64 noundef 88, ptr noundef nonnull @.str.24) #16
  %298 = getelementptr inbounds %struct.uiItem, ptr %297, i64 0, i32 2
  store i32 6, ptr %298, align 8, !tbaa !82
  %299 = load ptr, ptr %16, align 8, !tbaa !54
  %300 = getelementptr inbounds %struct.uiLayout, ptr %297, i64 0, i32 1
  store ptr %299, ptr %300, align 8, !tbaa !54
  %301 = getelementptr inbounds %struct.uiLayout, ptr %297, i64 0, i32 10
  store i8 1, ptr %301, align 2, !tbaa !100
  %302 = getelementptr inbounds %struct.uiLayout, ptr %297, i64 0, i32 11
  store i8 1, ptr %302, align 1, !tbaa !101
  %303 = getelementptr inbounds %struct.uiLayout, ptr %297, i64 0, i32 12
  store i8 1, ptr %303, align 4, !tbaa !102
  %304 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !89
  %306 = getelementptr inbounds %struct.uiLayout, ptr %297, i64 0, i32 2
  store ptr %305, ptr %306, align 8, !tbaa !89
  %307 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %308 = load i8, ptr %307, align 1, !tbaa !75
  %309 = getelementptr inbounds %struct.uiLayout, ptr %297, i64 0, i32 13
  store i8 %308, ptr %309, align 1, !tbaa !75
  %310 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %310, ptr noundef %297) #16
  %311 = load ptr, ptr %16, align 8, !tbaa !54
  %312 = getelementptr inbounds %struct.uiLayoutRoot, ptr %311, i64 0, i32 10
  %313 = load ptr, ptr %312, align 8, !tbaa !58
  %314 = getelementptr inbounds %struct.uiBlock, ptr %313, i64 0, i32 7
  store ptr %297, ptr %314, align 8, !tbaa !64
  store ptr %297, ptr %20, align 8, !tbaa !64
  %315 = call i32 @RNA_property_array_dimension(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %11) #16
  %316 = icmp eq i32 %315, 2
  br i1 %316, label %317, label %433

317:                                              ; preds = %295
  %318 = load i32, ptr %11, align 4, !tbaa !118
  %319 = sdiv i32 %129, %318
  %320 = icmp eq i32 %27, 0
  br i1 %320, label %344, label %321

321:                                              ; preds = %317
  %322 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 1
  %323 = icmp eq i32 %119, 0
  br label %324

324:                                              ; preds = %321, %341
  %325 = phi i32 [ 0, %321 ], [ %342, %341 ]
  %326 = load i32, ptr %11, align 4, !tbaa !118
  %327 = urem i32 %325, %326
  %328 = udiv i32 %325, %326
  %329 = mul nsw i32 %327, %319
  %330 = load i32, ptr %322, align 4, !tbaa !118
  %331 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %332 = sext i16 %331 to i32
  %333 = sub i32 %330, %328
  %334 = mul i32 %333, %332
  %335 = call ptr @uiDefAutoButR(ptr noundef %19, ptr noundef %1, ptr noundef %2, i32 noundef %325, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %329, i32 noundef %334, i32 noundef %319, i32 noundef %332) #16
  br i1 %323, label %341, label %336

336:                                              ; preds = %324
  %337 = getelementptr inbounds %struct.uiBut, ptr %335, i64 0, i32 4
  %338 = load i32, ptr %337, align 8, !tbaa !132
  %339 = icmp eq i32 %338, 2560
  br i1 %339, label %340, label %341

340:                                              ; preds = %336
  store i32 7168, ptr %337, align 8, !tbaa !132
  br label %341

341:                                              ; preds = %340, %336, %324
  %342 = add nuw i32 %325, 1
  %343 = icmp eq i32 %342, %27
  br i1 %343, label %344, label %324, !llvm.loop !133

344:                                              ; preds = %341, %317
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  br label %432

345:                                              ; preds = %293
  %346 = icmp ne i32 %134, 22
  %347 = icmp ne i32 %121, 0
  %348 = or i1 %347, %346
  br i1 %348, label %353, label %349

349:                                              ; preds = %345
  %350 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %351 = mul i16 %350, 3
  %352 = call ptr @uiDefButR_prop(ptr noundef %19, i32 noundef 15872, i32 noundef 0, ptr noundef nonnull %81, i32 noundef 0, i32 noundef 0, i16 noundef signext %351, i16 noundef signext %351, ptr noundef %1, ptr noundef %2, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #16
  br label %432

353:                                              ; preds = %345
  %354 = icmp ne i32 %134, 20
  %355 = icmp ne i32 %134, 30
  %356 = and i1 %354, %355
  %357 = or i1 %347, %356
  br i1 %357, label %362, label %358

358:                                              ; preds = %353
  %359 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %360 = sext i16 %359 to i32
  %361 = call ptr @uiDefAutoButR(ptr noundef %19, ptr noundef %1, ptr noundef %2, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %129, i32 noundef %360) #16
  br label %432

362:                                              ; preds = %353
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %12, i8 0, i64 3, i1 false)
  %363 = icmp eq i32 %41, 0
  %364 = icmp ne i32 %133, 0
  %365 = select i1 %363, i1 %364, i1 false
  br i1 %365, label %366, label %368

366:                                              ; preds = %362
  %367 = getelementptr inbounds [3 x i8], ptr %12, i64 0, i64 1
  store i8 58, ptr %367, align 1, !tbaa !68
  br label %368

368:                                              ; preds = %366, %362
  br i1 %172, label %369, label %382

369:                                              ; preds = %368
  %370 = load ptr, ptr %16, align 8, !tbaa !54
  %371 = getelementptr inbounds %struct.uiLayoutRoot, ptr %370, i64 0, i32 10
  %372 = load ptr, ptr %371, align 8, !tbaa !58
  %373 = getelementptr inbounds %struct.uiBlock, ptr %372, i64 0, i32 30
  %374 = load i8, ptr %373, align 1, !tbaa !134
  %375 = add i8 %374, -1
  %376 = icmp ult i8 %375, 2
  br i1 %376, label %377, label %382

377:                                              ; preds = %369
  %378 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %379 = sext i32 %27 to i64
  %380 = shl nsw i64 %379, 2
  %381 = call ptr %378(i64 noundef %380, ptr noundef nonnull @.str.38) #16
  call void @RNA_property_boolean_get_array(ptr noundef %1, ptr noundef %2, ptr noundef %381) #16
  br label %382

382:                                              ; preds = %377, %369, %368
  %383 = phi ptr [ %381, %377 ], [ null, %368 ], [ null, %369 ]
  %384 = icmp eq i32 %27, 0
  br i1 %384, label %427, label %385

385:                                              ; preds = %382
  %386 = icmp eq ptr %383, null
  %387 = icmp eq i32 %119, 0
  %388 = icmp eq i32 %120, 0
  %389 = icmp eq i32 %134, 28
  %390 = zext i32 %27 to i64
  br label %391

391:                                              ; preds = %385, %424
  %392 = phi i64 [ 0, %385 ], [ %425, %424 ]
  %393 = phi i32 [ %118, %385 ], [ %404, %424 ]
  br i1 %363, label %394, label %397

394:                                              ; preds = %391
  %395 = trunc i64 %392 to i32
  %396 = call zeroext i8 @RNA_property_array_item_char(ptr noundef %2, i32 noundef %395) #16
  store i8 %396, ptr %12, align 1, !tbaa !68
  br label %397

397:                                              ; preds = %394, %391
  br i1 %386, label %403, label %398

398:                                              ; preds = %397
  %399 = getelementptr inbounds i32, ptr %383, i64 %392
  %400 = load i32, ptr %399, align 4, !tbaa !118
  %401 = icmp eq i32 %400, 0
  %402 = select i1 %401, i32 38, i32 39
  br label %403

403:                                              ; preds = %398, %397
  %404 = phi i32 [ %402, %398 ], [ %393, %397 ]
  %405 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %406 = sext i16 %405 to i32
  %407 = trunc i64 %392 to i32
  %408 = call ptr @uiDefAutoButR(ptr noundef %19, ptr noundef %1, ptr noundef %2, i32 noundef %407, ptr noundef nonnull %12, i32 noundef %404, i32 noundef 0, i32 noundef 0, i32 noundef %129, i32 noundef %406) #16
  br i1 %387, label %414, label %409

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.uiBut, ptr %408, i64 0, i32 4
  %411 = load i32, ptr %410, align 8, !tbaa !132
  %412 = icmp eq i32 %411, 2560
  br i1 %412, label %413, label %414

413:                                              ; preds = %409
  store i32 7168, ptr %410, align 8, !tbaa !132
  br label %414

414:                                              ; preds = %413, %409, %403
  br i1 %388, label %420, label %415

415:                                              ; preds = %414
  %416 = getelementptr inbounds %struct.uiBut, ptr %408, i64 0, i32 4
  %417 = load i32, ptr %416, align 8, !tbaa !132
  %418 = icmp eq i32 %417, 19456
  br i1 %418, label %419, label %420

419:                                              ; preds = %415
  store i32 1536, ptr %416, align 8, !tbaa !132
  br label %420

420:                                              ; preds = %419, %415, %414
  %421 = icmp eq i64 %392, 0
  %422 = select i1 %421, i1 %389, i1 false
  br i1 %422, label %423, label %424

423:                                              ; preds = %420
  call void @uiButSetUnitType(ptr noundef %408, i32 noundef 327680) #16
  br label %424

424:                                              ; preds = %423, %420
  %425 = add nuw nsw i64 %392, 1
  %426 = icmp eq i64 %425, %390
  br i1 %426, label %427, label %391, !llvm.loop !135

427:                                              ; preds = %424, %382
  %428 = icmp eq ptr %383, null
  br i1 %428, label %431, label %429

429:                                              ; preds = %427
  %430 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %430(ptr noundef nonnull %383) #16
  br label %431

431:                                              ; preds = %429, %427
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #16
  br label %432

432:                                              ; preds = %286, %431, %358, %349, %344
  store ptr %0, ptr %20, align 8, !tbaa !64
  br label %666

433:                                              ; preds = %295
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  br label %666

434:                                              ; preds = %125
  %435 = icmp eq i32 %21, 4
  %436 = icmp eq i32 %3, -2
  %437 = and i1 %436, %435
  br i1 %437, label %438, label %460

438:                                              ; preds = %434
  %439 = icmp eq i32 %118, 0
  br i1 %439, label %453, label %440

440:                                              ; preds = %438
  %441 = load i8, ptr %81, align 1, !tbaa !68
  %442 = icmp eq i8 %441, 0
  %443 = or i1 %42, %442
  %444 = load i32, ptr %14, align 4, !tbaa !118
  %445 = trunc i32 %444 to i16
  %446 = load i32, ptr %15, align 4, !tbaa !118
  %447 = trunc i32 %446 to i16
  %448 = sitofp i32 %4 to float
  br i1 %443, label %451, label %449

449:                                              ; preds = %440
  %450 = call ptr @uiDefIconTextButR_prop(ptr noundef %19, i32 noundef 1024, i32 noundef 0, i32 noundef %118, ptr noundef nonnull %81, i32 noundef 0, i32 noundef 0, i16 noundef signext %445, i16 noundef signext %447, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef %448, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #16
  br label %666

451:                                              ; preds = %440
  %452 = call ptr @uiDefIconButR_prop(ptr noundef %19, i32 noundef 1024, i32 noundef 0, i32 noundef %118, i32 noundef 0, i32 noundef 0, i16 noundef signext %445, i16 noundef signext %447, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef %448, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #16
  br label %666

453:                                              ; preds = %438
  %454 = load i32, ptr %14, align 4, !tbaa !118
  %455 = trunc i32 %454 to i16
  %456 = load i32, ptr %15, align 4, !tbaa !118
  %457 = trunc i32 %456 to i16
  %458 = sitofp i32 %4 to float
  %459 = call ptr @uiDefButR_prop(ptr noundef %19, i32 noundef 1024, i32 noundef 0, ptr noundef %81, i32 noundef 0, i32 noundef 0, i16 noundef signext %455, i16 noundef signext %457, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef %458, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #16
  br label %666

460:                                              ; preds = %434
  br i1 %435, label %461, label %635

461:                                              ; preds = %460
  %462 = icmp eq i32 %121, 0
  br i1 %462, label %463, label %467

463:                                              ; preds = %461
  %464 = call i32 @RNA_property_flag(ptr noundef %2) #16
  %465 = and i32 %464, 2097152
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %635, label %467

467:                                              ; preds = %463, %461
  %468 = load i32, ptr %15, align 4, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #16
  %469 = load ptr, ptr %16, align 8, !tbaa !54
  %470 = getelementptr inbounds %struct.uiLayoutRoot, ptr %469, i64 0, i32 2
  %471 = load i32, ptr %470, align 8, !tbaa !63
  %472 = icmp eq i32 %471, 4
  %473 = getelementptr inbounds %struct.uiBlock, ptr %19, i64 0, i32 48
  %474 = load ptr, ptr %473, align 8, !tbaa !80
  br i1 %472, label %475, label %476

475:                                              ; preds = %467
  call void @RNA_property_enum_items_gettexted_all(ptr noundef %474, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %10) #16
  br label %477

476:                                              ; preds = %467
  call void @RNA_property_enum_items_gettexted(ptr noundef %474, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %10) #16
  br label %477

477:                                              ; preds = %476, %475
  br i1 %472, label %478, label %480

478:                                              ; preds = %477
  %479 = call ptr @uiLayoutRadial(ptr noundef %0)
  br label %516

480:                                              ; preds = %477
  %481 = load ptr, ptr %16, align 8, !tbaa !54
  %482 = getelementptr inbounds %struct.uiLayoutRoot, ptr %481, i64 0, i32 2
  %483 = load i32, ptr %482, align 8, !tbaa !63
  %484 = icmp eq i32 %483, 2
  br i1 %484, label %516, label %485

485:                                              ; preds = %480
  %486 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %487 = load i32, ptr %486, align 8, !tbaa !82
  switch i32 %487, label %489 [
    i32 1, label %488
    i32 10, label %488
    i32 8, label %488
  ]

488:                                              ; preds = %485, %485, %485
  br label %489

489:                                              ; preds = %485, %488
  %490 = phi ptr [ @.str.20, %488 ], [ @.str.21, %485 ]
  %491 = phi i32 [ 1, %488 ], [ 2, %485 ]
  %492 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %493 = call ptr %492(i64 noundef 88, ptr noundef nonnull %490) #16
  %494 = getelementptr inbounds %struct.uiItem, ptr %493, i64 0, i32 2
  store i32 %491, ptr %494, align 8, !tbaa !82
  %495 = load ptr, ptr %16, align 8, !tbaa !54
  %496 = getelementptr inbounds %struct.uiLayout, ptr %493, i64 0, i32 1
  store ptr %495, ptr %496, align 8, !tbaa !54
  %497 = getelementptr inbounds %struct.uiLayout, ptr %493, i64 0, i32 10
  store i8 1, ptr %497, align 2, !tbaa !100
  %498 = getelementptr inbounds %struct.uiLayout, ptr %493, i64 0, i32 11
  store i8 1, ptr %498, align 1, !tbaa !101
  %499 = getelementptr inbounds %struct.uiLayout, ptr %493, i64 0, i32 12
  store i8 1, ptr %499, align 4, !tbaa !102
  %500 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %501 = load ptr, ptr %500, align 8, !tbaa !89
  %502 = getelementptr inbounds %struct.uiLayout, ptr %493, i64 0, i32 2
  store ptr %501, ptr %502, align 8, !tbaa !89
  %503 = getelementptr inbounds %struct.uiLayout, ptr %493, i64 0, i32 9
  store i16 0, ptr %503, align 8, !tbaa !104
  %504 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %505 = load i8, ptr %504, align 1, !tbaa !75
  %506 = getelementptr inbounds %struct.uiLayout, ptr %493, i64 0, i32 13
  store i8 %505, ptr %506, align 1, !tbaa !75
  %507 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %508 = load i32, ptr %507, align 8, !tbaa !97
  %509 = getelementptr inbounds %struct.uiLayout, ptr %493, i64 0, i32 6
  store i32 %508, ptr %509, align 8, !tbaa !97
  %510 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %510, ptr noundef %493) #16
  %511 = load ptr, ptr %16, align 8, !tbaa !54
  %512 = getelementptr inbounds %struct.uiLayoutRoot, ptr %511, i64 0, i32 10
  %513 = load ptr, ptr %512, align 8, !tbaa !58
  %514 = getelementptr inbounds %struct.uiBlock, ptr %513, i64 0, i32 7
  store ptr %493, ptr %514, align 8, !tbaa !64
  %515 = getelementptr inbounds %struct.uiLayout, ptr %493, i64 0, i32 9
  store i16 0, ptr %515, align 8, !tbaa !104
  br label %516

516:                                              ; preds = %480, %489, %478
  %517 = phi ptr [ %493, %489 ], [ %479, %478 ], [ %0, %480 ]
  %518 = phi ptr [ null, %489 ], [ %479, %478 ], [ null, %480 ]
  store ptr %517, ptr %20, align 8, !tbaa !64
  %519 = load ptr, ptr %9, align 8, !tbaa !34
  %520 = getelementptr inbounds %struct.EnumPropertyItem, ptr %519, i64 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !105
  %522 = icmp eq ptr %521, null
  br i1 %522, label %628, label %523

523:                                              ; preds = %516
  %524 = icmp eq ptr %81, null
  %525 = trunc i32 %468 to i16
  %526 = trunc i32 %468 to i16
  %527 = trunc i32 %468 to i16
  %528 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %529 = getelementptr inbounds %struct.uiLayout, ptr %518, i64 0, i32 1
  br label %530

530:                                              ; preds = %523, %623
  %531 = phi ptr [ %521, %523 ], [ %626, %623 ]
  %532 = phi ptr [ %519, %523 ], [ %624, %623 ]
  %533 = load i8, ptr %531, align 1, !tbaa !68
  %534 = icmp eq i8 %533, 0
  br i1 %534, label %535, label %551

535:                                              ; preds = %530
  br i1 %472, label %536, label %623

536:                                              ; preds = %535
  %537 = load ptr, ptr %529, align 8, !tbaa !54
  %538 = getelementptr inbounds %struct.uiLayoutRoot, ptr %537, i64 0, i32 10
  %539 = load ptr, ptr %538, align 8, !tbaa !58
  %540 = call zeroext i8 @ui_block_is_menu(ptr noundef %539) #16
  %541 = icmp eq i8 %540, 0
  %542 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %543 = sitofp i16 %542 to float
  %544 = select i1 %541, float 0x3FD3333340000000, float 0x3FDCCCCCC0000000
  %545 = select i1 %541, i32 10752, i32 27648
  %546 = fmul float %544, %543
  %547 = fptosi float %546 to i32
  %548 = getelementptr inbounds %struct.uiBlock, ptr %539, i64 0, i32 7
  store ptr %518, ptr %548, align 8, !tbaa !64
  %549 = trunc i32 %547 to i16
  %550 = call ptr @uiDefBut(ptr noundef %539, i32 noundef %545, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i16 noundef signext %549, i16 noundef signext %549, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  br label %623

551:                                              ; preds = %530
  br i1 %524, label %555, label %552

552:                                              ; preds = %551
  %553 = load i8, ptr %81, align 1, !tbaa !68
  %554 = icmp eq i8 %553, 0
  br i1 %554, label %558, label %555

555:                                              ; preds = %552, %551
  %556 = getelementptr inbounds %struct.EnumPropertyItem, ptr %532, i64 0, i32 3
  %557 = load ptr, ptr %556, align 8, !tbaa !108
  br label %558

558:                                              ; preds = %555, %552
  %559 = phi ptr [ %557, %555 ], [ @.str, %552 ]
  %560 = getelementptr inbounds %struct.EnumPropertyItem, ptr %532, i64 0, i32 2
  %561 = load i32, ptr %560, align 8, !tbaa !109
  %562 = load i32, ptr %532, align 8, !tbaa !107
  %563 = load ptr, ptr %20, align 8, !tbaa !64
  %564 = select i1 %42, ptr @.str, ptr %559
  %565 = icmp eq i32 %561, 0
  br i1 %565, label %572, label %566

566:                                              ; preds = %558
  %567 = load i8, ptr %564, align 1, !tbaa !68
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %569, label %572

569:                                              ; preds = %566
  %570 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %571 = zext i16 %570 to i32
  br label %593

572:                                              ; preds = %566, %558
  %573 = getelementptr inbounds %struct.uiLayout, ptr %563, i64 0, i32 1
  %574 = load ptr, ptr %573, align 8, !tbaa !54
  %575 = getelementptr inbounds %struct.uiLayoutRoot, ptr %574, i64 0, i32 2
  %576 = load i32, ptr %575, align 8, !tbaa !63
  switch i32 %576, label %577 [
    i32 1, label %581
    i32 4, label %581
  ]

577:                                              ; preds = %572
  %578 = getelementptr inbounds %struct.uiLayout, ptr %563, i64 0, i32 15
  %579 = load i8, ptr %578, align 1, !tbaa !73
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %589, label %581

581:                                              ; preds = %577, %572, %572
  %582 = call i32 @UI_GetStringWidth(ptr noundef %564) #16
  %583 = sitofp i32 %582 to float
  %584 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %585 = sitofp i16 %584 to float
  %586 = select i1 %565, float 1.500000e+00, float 1.750000e+00
  %587 = call float @llvm.fmuladd.f32(float %585, float %586, float %583)
  %588 = fptosi float %587 to i32
  br label %593

589:                                              ; preds = %577
  %590 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %591 = zext i16 %590 to i32
  %592 = mul nuw nsw i32 %591, 10
  br label %593

593:                                              ; preds = %569, %581, %589
  %594 = phi i32 [ %588, %581 ], [ %592, %589 ], [ %571, %569 ]
  br i1 %565, label %605, label %595

595:                                              ; preds = %593
  %596 = load i8, ptr %559, align 1, !tbaa !68
  %597 = icmp eq i8 %596, 0
  %598 = or i1 %42, %597
  %599 = trunc i32 %594 to i16
  %600 = sitofp i32 %562 to float
  br i1 %598, label %603, label %601

601:                                              ; preds = %595
  %602 = call ptr @uiDefIconTextButR_prop(ptr noundef %19, i32 noundef 1024, i32 noundef 0, i32 noundef %561, ptr noundef nonnull %559, i32 noundef 0, i32 noundef 0, i16 noundef signext %599, i16 noundef signext %525, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef %600, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #16
  br label %609

603:                                              ; preds = %595
  %604 = call ptr @uiDefIconButR_prop(ptr noundef %19, i32 noundef 1024, i32 noundef 0, i32 noundef %561, i32 noundef 0, i32 noundef 0, i16 noundef signext %599, i16 noundef signext %526, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef %600, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #16
  br label %609

605:                                              ; preds = %593
  %606 = trunc i32 %594 to i16
  %607 = sitofp i32 %562 to float
  %608 = call ptr @uiDefButR_prop(ptr noundef %19, i32 noundef 1024, i32 noundef 0, ptr noundef %559, i32 noundef 0, i32 noundef 0, i16 noundef signext %606, i16 noundef signext %527, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef %607, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #16
  br label %609

609:                                              ; preds = %605, %603, %601
  %610 = phi ptr [ %604, %603 ], [ %608, %605 ], [ %602, %601 ]
  %611 = call i32 @RNA_property_flag(ptr noundef %2) #16
  %612 = and i32 %611, 2097152
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %617, label %614

614:                                              ; preds = %609
  %615 = sext i32 %562 to i64
  %616 = inttoptr i64 %615 to ptr
  call void @uiButSetFunc(ptr noundef %610, ptr noundef nonnull @ui_item_enum_expand_handle, ptr noundef %610, ptr noundef %616) #16
  br label %617

617:                                              ; preds = %614, %609
  %618 = load i32, ptr %528, align 8, !tbaa !82
  switch i32 %618, label %619 [
    i32 1, label %623
    i32 10, label %623
    i32 8, label %623
  ]

619:                                              ; preds = %617
  %620 = getelementptr inbounds %struct.uiBut, ptr %610, i64 0, i32 3
  %621 = load i32, ptr %620, align 4, !tbaa !74
  %622 = or i32 %621, 2
  store i32 %622, ptr %620, align 4, !tbaa !74
  br label %623

623:                                              ; preds = %617, %617, %617, %619, %536, %535
  %624 = getelementptr inbounds %struct.EnumPropertyItem, ptr %532, i64 1
  %625 = getelementptr inbounds %struct.EnumPropertyItem, ptr %532, i64 1, i32 1
  %626 = load ptr, ptr %625, align 8, !tbaa !105
  %627 = icmp eq ptr %626, null
  br i1 %627, label %628, label %530, !llvm.loop !136

628:                                              ; preds = %623, %516
  store ptr %0, ptr %20, align 8, !tbaa !64
  %629 = load i8, ptr %10, align 1, !tbaa !68
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %634, label %631

631:                                              ; preds = %628
  %632 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %633 = load ptr, ptr %9, align 8, !tbaa !34
  call void %632(ptr noundef %633) #16
  br label %634

634:                                              ; preds = %628, %631
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %666

635:                                              ; preds = %463, %460
  %636 = add i32 %21, -3
  %637 = icmp ult i32 %636, 3
  %638 = load i32, ptr %14, align 4, !tbaa !118
  %639 = load i32, ptr %15, align 4, !tbaa !118
  br i1 %637, label %640, label %646

640:                                              ; preds = %635
  %641 = call fastcc ptr @ui_item_with_label(ptr noundef %0, ptr noundef %19, ptr noundef %81, i32 noundef %118, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %638, i32 noundef %639, i32 noundef %5)
  call void @ui_but_add_search(ptr noundef %641, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null)
  %642 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %643 = load i8, ptr %642, align 1, !tbaa !75
  %644 = icmp eq i8 %643, 0
  br i1 %644, label %666, label %645

645:                                              ; preds = %640
  call void @uiButSetFlag(ptr noundef %641, i32 noundef 65536) #16
  br label %666

646:                                              ; preds = %635
  %647 = call ptr @uiDefAutoButR(ptr noundef %19, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %81, i32 noundef %118, i32 noundef 0, i32 noundef 0, i32 noundef %638, i32 noundef %639) #16
  %648 = icmp eq i32 %119, 0
  br i1 %648, label %654, label %649

649:                                              ; preds = %646
  %650 = getelementptr inbounds %struct.uiBut, ptr %647, i64 0, i32 4
  %651 = load i32, ptr %650, align 8, !tbaa !132
  %652 = icmp eq i32 %651, 2560
  br i1 %652, label %653, label %654

653:                                              ; preds = %649
  store i32 7168, ptr %650, align 8, !tbaa !132
  br label %654

654:                                              ; preds = %653, %649, %646
  %655 = icmp eq i32 %120, 0
  br i1 %655, label %661, label %656

656:                                              ; preds = %654
  %657 = getelementptr inbounds %struct.uiBut, ptr %647, i64 0, i32 4
  %658 = load i32, ptr %657, align 8, !tbaa !132
  %659 = icmp eq i32 %658, 19456
  br i1 %659, label %660, label %661

660:                                              ; preds = %656
  store i32 1536, ptr %657, align 8, !tbaa !132
  br label %661

661:                                              ; preds = %660, %656, %654
  %662 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %663 = load i8, ptr %662, align 1, !tbaa !75
  %664 = icmp eq i8 %663, 0
  br i1 %664, label %666, label %665

665:                                              ; preds = %661
  call void @uiButSetFlag(ptr noundef %647, i32 noundef 65536) #16
  br label %666

666:                                              ; preds = %433, %432, %451, %453, %449, %645, %640, %665, %661, %634
  %667 = phi ptr [ null, %451 ], [ null, %453 ], [ null, %449 ], [ null, %634 ], [ %641, %645 ], [ %641, %640 ], [ %647, %665 ], [ %647, %661 ], [ null, %432 ], [ null, %433 ]
  %668 = icmp eq ptr %667, null
  br i1 %668, label %684, label %669

669:                                              ; preds = %666
  %670 = getelementptr inbounds %struct.uiBlock, ptr %19, i64 0, i32 27
  %671 = load i32, ptr %670, align 8, !tbaa !113
  %672 = and i32 %671, 524288
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %684, label %674

674:                                              ; preds = %669
  %675 = getelementptr inbounds %struct.uiBut, ptr %667, i64 0, i32 4
  %676 = load i32, ptr %675, align 8, !tbaa !132
  %677 = icmp eq i32 %676, 3072
  br i1 %677, label %678, label %684

678:                                              ; preds = %674
  %679 = getelementptr inbounds %struct.uiBut, ptr %667, i64 0, i32 46
  %680 = load i8, ptr %679, align 1, !tbaa !137
  %681 = and i8 %680, 1
  %682 = icmp eq i8 %681, 0
  br i1 %682, label %684, label %683

683:                                              ; preds = %678
  call void @uiButSetFlag(ptr noundef nonnull %667, i32 noundef 16777216) #16
  br label %684

684:                                              ; preds = %683, %678, %674, %669, %666
  br i1 %123, label %686, label %685

685:                                              ; preds = %684
  call void @uiBlockSetEmboss(ptr noundef %19, i8 noundef zeroext 0) #16
  br label %686

686:                                              ; preds = %685, %684
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %13) #16
  ret void
}

declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_property_ui_name(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_ui_icon(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_item_rna_size(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) unnamed_addr #0 {
  %10 = alloca ptr, align 8
  %11 = alloca i8, align 1
  %12 = tail call i32 @RNA_property_type(ptr noundef %4) #16
  %13 = tail call i32 @RNA_property_subtype(ptr noundef %4) #16
  %14 = tail call i32 @RNA_property_array_length(ptr noundef %3, ptr noundef %4) #16
  %15 = load i8, ptr %1, align 1, !tbaa !68
  %16 = icmp ne i8 %15, 0
  %17 = icmp ne i32 %6, 0
  %18 = or i1 %17, %16
  br i1 %18, label %89, label %19

19:                                               ; preds = %9
  switch i32 %12, label %88 [
    i32 5, label %89
    i32 3, label %89
    i32 0, label %20
    i32 4, label %21
  ]

20:                                               ; preds = %19
  br label %89

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #16
  %22 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.uiLayoutRoot, ptr %23, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = getelementptr inbounds %struct.uiBlock, ptr %25, i64 0, i32 48
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  call void @RNA_property_enum_items_gettexted(ptr noundef %27, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %11) #16
  %28 = load ptr, ptr %10, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.EnumPropertyItem, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !105
  %31 = icmp eq ptr %30, null
  br i1 %31, label %80, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  br label %34

34:                                               ; preds = %32, %74
  %35 = phi ptr [ %30, %32 ], [ %78, %74 ]
  %36 = phi ptr [ %28, %32 ], [ %76, %74 ]
  %37 = phi i32 [ 0, %32 ], [ %75, %74 ]
  %38 = load i8, ptr %35, align 1, !tbaa !68
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %74, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.EnumPropertyItem, ptr %36, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !108
  %43 = getelementptr inbounds %struct.EnumPropertyItem, ptr %36, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !109
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8, ptr %42, align 1, !tbaa !68
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %51 = sext i16 %50 to i32
  br label %71

52:                                               ; preds = %46, %40
  %53 = load ptr, ptr %22, align 8, !tbaa !54
  %54 = getelementptr inbounds %struct.uiLayoutRoot, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !63
  switch i32 %55, label %56 [
    i32 1, label %59
    i32 4, label %59
  ]

56:                                               ; preds = %52
  %57 = load i8, ptr %33, align 1, !tbaa !73
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56, %52, %52
  %60 = call i32 @UI_GetStringWidth(ptr noundef %42) #16
  %61 = sitofp i32 %60 to float
  %62 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %63 = sitofp i16 %62 to float
  %64 = select i1 %45, float 1.500000e+00, float 1.750000e+00
  %65 = call float @llvm.fmuladd.f32(float %63, float %64, float %61)
  %66 = fptosi float %65 to i32
  br label %71

67:                                               ; preds = %56
  %68 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %69 = sext i16 %68 to i32
  %70 = mul nsw i32 %69, 10
  br label %71

71:                                               ; preds = %49, %59, %67
  %72 = phi i32 [ %66, %59 ], [ %70, %67 ], [ %51, %49 ]
  %73 = call i32 @llvm.smax.i32(i32 %72, i32 %37)
  br label %74

74:                                               ; preds = %34, %71
  %75 = phi i32 [ %73, %71 ], [ %37, %34 ]
  %76 = getelementptr inbounds %struct.EnumPropertyItem, ptr %36, i64 1
  %77 = getelementptr inbounds %struct.EnumPropertyItem, ptr %36, i64 1, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !105
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %34, !llvm.loop !138

80:                                               ; preds = %74, %21
  %81 = phi i32 [ 0, %21 ], [ %75, %74 ]
  %82 = load i8, ptr %11, align 1, !tbaa !68
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %86 = load ptr, ptr %10, align 8, !tbaa !34
  call void %85(ptr noundef %86) #16
  br label %87

87:                                               ; preds = %84, %80
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %89

88:                                               ; preds = %19
  br label %89

89:                                               ; preds = %19, %19, %88, %87, %20, %9
  %90 = phi i32 [ %2, %9 ], [ 17, %20 ], [ %2, %87 ], [ %2, %19 ], [ %2, %19 ], [ %2, %88 ]
  %91 = phi ptr [ %1, %9 ], [ %1, %20 ], [ %1, %87 ], [ @.str.37, %19 ], [ @.str.37, %19 ], [ %1, %88 ]
  %92 = phi i32 [ 0, %9 ], [ 0, %20 ], [ %81, %87 ], [ 0, %19 ], [ 0, %19 ], [ 0, %88 ]
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %89
  %95 = icmp eq i32 %90, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %94
  %97 = load i8, ptr %91, align 1, !tbaa !68
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %101 = sext i16 %100 to i32
  br label %123

102:                                              ; preds = %96, %94
  %103 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !54
  %105 = getelementptr inbounds %struct.uiLayoutRoot, ptr %104, i64 0, i32 2
  %106 = load i32, ptr %105, align 8, !tbaa !63
  switch i32 %106, label %107 [
    i32 1, label %111
    i32 4, label %111
  ]

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %109 = load i8, ptr %108, align 1, !tbaa !73
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %107, %102, %102
  %112 = call i32 @UI_GetStringWidth(ptr noundef nonnull %91) #16
  %113 = sitofp i32 %112 to float
  %114 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %115 = sitofp i16 %114 to float
  %116 = select i1 %95, float 1.500000e+00, float 1.750000e+00
  %117 = call float @llvm.fmuladd.f32(float %115, float %116, float %113)
  %118 = fptosi float %117 to i32
  br label %123

119:                                              ; preds = %107
  %120 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %121 = sext i16 %120 to i32
  %122 = mul nsw i32 %121, 10
  br label %123

123:                                              ; preds = %119, %111, %99, %89
  %124 = phi i32 [ %92, %89 ], [ %118, %111 ], [ %122, %119 ], [ %101, %99 ]
  %125 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %126 = sext i16 %125 to i32
  %127 = icmp eq i32 %5, -1
  %128 = icmp sgt i32 %14, 0
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %155

130:                                              ; preds = %123
  %131 = load i8, ptr %91, align 1, !tbaa !68
  %132 = icmp eq i8 %131, 0
  %133 = icmp eq i32 %90, 0
  %134 = and i1 %133, %132
  %135 = select i1 %134, i32 0, i32 %126
  %136 = and i32 %13, -2
  %137 = icmp eq i32 %136, 40
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = shl nsw i32 %126, 1
  %140 = add nsw i32 %135, %139
  br label %184

141:                                              ; preds = %130
  %142 = icmp eq i32 %13, 25
  br i1 %142, label %143, label %152

143:                                              ; preds = %141
  %144 = sitofp i32 %14 to float
  %145 = call float @sqrtf(float noundef %144) #16
  %146 = call float @llvm.ceil.f32(float %145)
  %147 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %148 = sitofp i16 %147 to float
  %149 = sitofp i32 %135 to float
  %150 = call float @llvm.fmuladd.f32(float %146, float %148, float %149)
  %151 = fptosi float %150 to i32
  br label %184

152:                                              ; preds = %141
  %153 = mul nsw i32 %14, %126
  %154 = add nsw i32 %135, %153
  br label %184

155:                                              ; preds = %123
  %156 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !54
  %158 = getelementptr inbounds %struct.uiLayoutRoot, ptr %157, i64 0, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !63
  switch i32 %159, label %160 [
    i32 1, label %164
    i32 4, label %164
  ]

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %162 = load i8, ptr %161, align 1, !tbaa !73
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %184, label %164

164:                                              ; preds = %155, %155, %160
  switch i32 %12, label %178 [
    i32 0, label %165
    i32 4, label %174
  ]

165:                                              ; preds = %164
  %166 = load i8, ptr %91, align 1, !tbaa !68
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = sdiv i16 %125, 5
  %170 = sext i16 %169 to i32
  %171 = add nsw i32 %124, %170
  br label %184

172:                                              ; preds = %165
  %173 = icmp eq i32 %12, 4
  br i1 %173, label %174, label %178

174:                                              ; preds = %164, %172
  %175 = sdiv i16 %125, 4
  %176 = sext i16 %175 to i32
  %177 = add nsw i32 %124, %176
  br label %184

178:                                              ; preds = %164, %172
  %179 = add i32 %12, -1
  %180 = icmp ult i32 %179, 2
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = mul nsw i32 %126, 3
  %183 = add nsw i32 %182, %124
  br label %184

184:                                              ; preds = %160, %174, %178, %181, %168, %138, %152, %143
  %185 = phi i32 [ %124, %138 ], [ %124, %143 ], [ %124, %152 ], [ %171, %168 ], [ %177, %174 ], [ %183, %181 ], [ %124, %178 ], [ %124, %160 ]
  %186 = phi i32 [ %140, %138 ], [ %151, %143 ], [ %154, %152 ], [ %126, %168 ], [ %126, %174 ], [ %126, %181 ], [ %126, %178 ], [ %126, %160 ]
  store i32 %185, ptr %7, align 4, !tbaa !118
  store i32 %186, ptr %8, align 4, !tbaa !118
  ret void
}

declare ptr @uiDefIconTextButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefIconButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButR_prop(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ui_item_with_label(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = alloca [128 x i8], align 16
  %12 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 10
  %13 = load i8, ptr %12, align 2, !tbaa !100
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = tail call ptr %14(i64 noundef 88, ptr noundef nonnull @.str.20) #16
  %16 = getelementptr inbounds %struct.uiItem, ptr %15, i64 0, i32 2
  store i32 1, ptr %16, align 8, !tbaa !82
  %17 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.uiLayout, ptr %15, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.uiLayout, ptr %15, i64 0, i32 10
  store i8 %13, ptr %20, align 2, !tbaa !100
  %21 = getelementptr inbounds %struct.uiLayout, ptr %15, i64 0, i32 11
  store i8 1, ptr %21, align 1, !tbaa !101
  %22 = getelementptr inbounds %struct.uiLayout, ptr %15, i64 0, i32 12
  store i8 1, ptr %22, align 4, !tbaa !102
  %23 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = getelementptr inbounds %struct.uiLayout, ptr %15, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !89
  %26 = icmp eq i8 %13, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %10
  %28 = load ptr, ptr %17, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.uiLayoutRoot, ptr %28, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = getelementptr inbounds %struct.uiStyle, ptr %30, i64 0, i32 13
  %32 = load i16, ptr %31, align 2, !tbaa !130
  br label %33

33:                                               ; preds = %10, %27
  %34 = phi i16 [ %32, %27 ], [ 0, %10 ]
  %35 = getelementptr inbounds %struct.uiLayout, ptr %15, i64 0, i32 9
  store i16 %34, ptr %35, align 8, !tbaa !104
  %36 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %37 = load i8, ptr %36, align 1, !tbaa !75
  %38 = getelementptr inbounds %struct.uiLayout, ptr %15, i64 0, i32 13
  store i8 %37, ptr %38, align 1, !tbaa !75
  %39 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !97
  %41 = getelementptr inbounds %struct.uiLayout, ptr %15, i64 0, i32 6
  store i32 %40, ptr %41, align 8, !tbaa !97
  %42 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %42, ptr noundef %15) #16
  %43 = load ptr, ptr %17, align 8, !tbaa !54
  %44 = getelementptr inbounds %struct.uiLayoutRoot, ptr %43, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.uiBlock, ptr %45, i64 0, i32 7
  store ptr %15, ptr %46, align 8, !tbaa !64
  %47 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 7
  store ptr %15, ptr %47, align 8, !tbaa !64
  %48 = load i8, ptr %2, align 1, !tbaa !68
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %33
  %51 = sdiv i32 %7, 3
  %52 = trunc i32 %51 to i16
  %53 = trunc i32 %8 to i16
  %54 = tail call ptr @uiDefBut(ptr noundef %1, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, i16 noundef signext %52, i16 noundef signext %53, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  %55 = sub nsw i32 %7, %51
  br label %56

56:                                               ; preds = %50, %33
  %57 = phi i32 [ %55, %50 ], [ %7, %33 ]
  %58 = tail call i32 @RNA_property_type(ptr noundef %5) #16
  %59 = tail call i32 @RNA_property_subtype(ptr noundef %5) #16
  %60 = add i32 %59, -1
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = icmp eq i32 %59, 2
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %65 = tail call ptr %64(i64 noundef 88, ptr noundef nonnull @.str.20) #16
  %66 = getelementptr inbounds %struct.uiItem, ptr %65, i64 0, i32 2
  store i32 1, ptr %66, align 8, !tbaa !82
  %67 = load ptr, ptr %19, align 8, !tbaa !54
  %68 = getelementptr inbounds %struct.uiLayout, ptr %65, i64 0, i32 1
  store ptr %67, ptr %68, align 8, !tbaa !54
  %69 = getelementptr inbounds %struct.uiLayout, ptr %65, i64 0, i32 10
  store i8 1, ptr %69, align 2, !tbaa !100
  %70 = getelementptr inbounds %struct.uiLayout, ptr %65, i64 0, i32 11
  store i8 1, ptr %70, align 1, !tbaa !101
  %71 = getelementptr inbounds %struct.uiLayout, ptr %65, i64 0, i32 12
  store i8 1, ptr %71, align 4, !tbaa !102
  %72 = load ptr, ptr %25, align 8, !tbaa !89
  %73 = getelementptr inbounds %struct.uiLayout, ptr %65, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !89
  %74 = getelementptr inbounds %struct.uiLayout, ptr %65, i64 0, i32 9
  store i16 0, ptr %74, align 8, !tbaa !104
  %75 = load i8, ptr %38, align 1, !tbaa !75
  %76 = getelementptr inbounds %struct.uiLayout, ptr %65, i64 0, i32 13
  store i8 %75, ptr %76, align 1, !tbaa !75
  %77 = load i32, ptr %41, align 8, !tbaa !97
  %78 = getelementptr inbounds %struct.uiLayout, ptr %65, i64 0, i32 6
  store i32 %77, ptr %78, align 8, !tbaa !97
  %79 = getelementptr inbounds %struct.uiLayout, ptr %15, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %79, ptr noundef %65) #16
  %80 = load ptr, ptr %19, align 8, !tbaa !54
  %81 = getelementptr inbounds %struct.uiLayoutRoot, ptr %80, i64 0, i32 10
  %82 = load ptr, ptr %81, align 8, !tbaa !58
  %83 = getelementptr inbounds %struct.uiBlock, ptr %82, i64 0, i32 7
  store ptr %65, ptr %83, align 8, !tbaa !64
  store ptr %65, ptr %47, align 8, !tbaa !64
  %84 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %85 = sext i16 %84 to i32
  %86 = sub nsw i32 %57, %85
  %87 = tail call ptr @uiDefAutoButR(ptr noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %86, i32 noundef %8) #16
  %88 = select i1 %63, ptr @.str.39, ptr @.str.40
  %89 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %90 = trunc i32 %8 to i16
  %91 = tail call ptr @uiDefIconButO(ptr noundef %1, i32 noundef 512, ptr noundef nonnull %88, i32 noundef 0, i32 noundef 108, i32 noundef 0, i32 noundef 0, i16 noundef signext %89, i16 noundef signext %90, ptr noundef null) #16
  br label %125

92:                                               ; preds = %56
  %93 = and i32 %9, 32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = trunc i32 %57 to i16
  %97 = trunc i32 %8 to i16
  %98 = tail call ptr @uiDefButR_prop(ptr noundef %1, i32 noundef 12288, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, i16 noundef signext %96, i16 noundef signext %97, ptr noundef %4, ptr noundef %5, i32 noundef %6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #16
  br label %125

99:                                               ; preds = %92
  %100 = and i32 %9, 64
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !79
  %105 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %104, ptr noundef nonnull @RNA_KeyMapItem) #16
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #16
  %108 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !76
  %110 = call i32 @WM_keymap_item_to_string(ptr noundef %109, ptr noundef nonnull %11, i32 noundef 128) #16
  %111 = trunc i32 %57 to i16
  %112 = trunc i32 %8 to i16
  %113 = call ptr @uiDefButR_prop(ptr noundef %1, i32 noundef 23552, i32 noundef 0, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0, i16 noundef signext %111, i16 noundef signext %112, ptr noundef %4, ptr noundef %5, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #16
  call void @uiButSetFunc(ptr noundef %113, ptr noundef nonnull @ui_keymap_but_cb, ptr noundef %113, ptr noundef null) #16
  %114 = and i32 %9, 256
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %107
  call void @uiButSetFlag(ptr noundef %113, i32 noundef 1048576) #16
  br label %117

117:                                              ; preds = %116, %107
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #16
  br label %125

118:                                              ; preds = %99
  %119 = icmp eq i32 %58, 4
  %120 = and i32 %9, 16
  %121 = icmp eq i32 %120, 0
  %122 = and i1 %121, %119
  %123 = select i1 %122, ptr null, ptr @.str
  %124 = tail call ptr @uiDefAutoButR(ptr noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %123, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %57, i32 noundef %8) #16
  br label %125

125:                                              ; preds = %95, %102, %117, %118, %62
  %126 = phi ptr [ %87, %62 ], [ null, %95 ], [ %113, %117 ], [ null, %102 ], [ %124, %118 ]
  store ptr %0, ptr %47, align 8, !tbaa !64
  ret ptr %126
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_but_add_search(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %8 = icmp eq ptr %4, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = tail call i32 @RNA_property_type(ptr noundef %2) #16
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = tail call ptr @RNA_property_pointer_type(ptr noundef %1, ptr noundef %2) #16
  %14 = load ptr, ptr @G, align 8, !tbaa !139
  call void @RNA_main_pointer_create(ptr noundef %14, ptr noundef nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #16
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = call ptr @RNA_struct_iterator_property(ptr noundef %16) #16
  call void @RNA_property_collection_begin(ptr noundef nonnull %7, ptr noundef %17, ptr noundef nonnull %6) #16
  %18 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !141
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %23

23:                                               ; preds = %21, %35
  %24 = phi ptr [ null, %21 ], [ %33, %35 ]
  %25 = load ptr, ptr %22, align 8, !tbaa !143
  %26 = call i32 @RNA_property_type(ptr noundef %25) #16
  %27 = icmp eq i32 %26, 6
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call ptr @RNA_property_pointer_type(ptr noundef nonnull %7, ptr noundef %25) #16
  %30 = icmp ne ptr %29, %13
  %31 = select i1 %30, ptr %24, ptr %25
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi ptr [ %24, %23 ], [ %31, %28 ]
  %34 = phi i1 [ true, %23 ], [ %30, %28 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  call void @RNA_property_collection_next(ptr noundef nonnull %6) #16
  %36 = load i32, ptr %18, align 8, !tbaa !141
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %23, !llvm.loop !144

38:                                               ; preds = %32, %35, %12
  %39 = phi ptr [ null, %12 ], [ %33, %35 ], [ %33, %32 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #16
  br label %40

40:                                               ; preds = %9, %38, %5
  %41 = phi ptr [ %39, %38 ], [ %4, %9 ], [ %4, %5 ]
  %42 = phi ptr [ %7, %38 ], [ %3, %9 ], [ %3, %5 ]
  %43 = icmp eq ptr %41, null
  br i1 %43, label %64, label %44

44:                                               ; preds = %40
  %45 = call zeroext i8 @RNA_property_is_unlink(ptr noundef %2) #16
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i32 20992, i32 26624
  %48 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  store i32 %47, ptr %48, align 8, !tbaa !132
  %49 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %50 = load float, ptr %49, align 4, !tbaa !145
  %51 = fcmp ogt float %50, 2.560000e+02
  %52 = select i1 %51, float %50, float 2.560000e+02
  store float %52, ptr %49, align 4, !tbaa !145
  %53 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(24) %42, i64 24, i1 false), !tbaa.struct !52
  %54 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 58
  store ptr %41, ptr %54, align 8, !tbaa !146
  %55 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !74
  %57 = or i32 %56, 6
  store i32 %57, ptr %55, align 4, !tbaa !74
  %58 = call i32 @RNA_property_type(ptr noundef %2) #16
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %62 = load ptr, ptr %61, align 8, !tbaa !147
  store i8 0, ptr %62, align 1, !tbaa !68
  br label %63

63:                                               ; preds = %60, %44
  call void @uiButSetSearchFunc(ptr noundef %0, ptr noundef nonnull @rna_search_cb, ptr noundef %0, ptr noundef null, ptr noundef null) #16
  br label %64

64:                                               ; preds = %63, %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

declare ptr @uiDefAutoButR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2)
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = tail call ptr @RNA_struct_identifier(ptr noundef %11) #16
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.uiItemR, ptr noundef %12, ptr noundef %2) #16
  br label %14

13:                                               ; preds = %6
  tail call void @uiItemFullR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, i32 noundef -1, i32 noundef 0, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemEnumR(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %3, ptr noundef %4) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @RNA_property_type(ptr noundef nonnull %7) #16
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %16, label %12

12:                                               ; preds = %9, %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %4)
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = tail call ptr @RNA_struct_identifier(ptr noundef %14) #16
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.uiItemEnumR, ptr noundef %15, ptr noundef %4) #16
  br label %17

16:                                               ; preds = %9
  tail call void @uiItemFullR(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %7, i32 noundef -2, i32 noundef %5, i32 noundef 0, ptr noundef %1, i32 noundef %2)
  br label %17

17:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemEnumR_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @RNA_property_type(ptr noundef nonnull %10) #16
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %19, label %15

15:                                               ; preds = %12, %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2)
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = tail call ptr @RNA_struct_identifier(ptr noundef %17) #16
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.uiItemEnumR_string, ptr noundef %18, ptr noundef %2) #16
  br label %72

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.uiLayoutRoot, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 48
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  call void @RNA_property_enum_items(ptr noundef %25, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %9) #16
  %26 = load ptr, ptr %7, align 8, !tbaa !34
  %27 = call zeroext i8 @RNA_enum_value_from_id(ptr noundef %26, ptr noundef %3, ptr noundef nonnull %8) #16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr %7, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.EnumPropertyItem, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !105
  %33 = icmp eq ptr %32, null
  br i1 %33, label %66, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %8, align 4, !tbaa !118
  br label %48

36:                                               ; preds = %19
  %37 = load i8, ptr %9, align 1, !tbaa !68
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %41 = load ptr, ptr %7, align 8, !tbaa !34
  call void %40(ptr noundef %41) #16
  br label %42

42:                                               ; preds = %39, %36
  call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2)
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.uiItemEnumR_string, ptr noundef %3) #16
  br label %72

43:                                               ; preds = %48
  %44 = add nuw i64 %49, 1
  %45 = getelementptr inbounds %struct.EnumPropertyItem, ptr %30, i64 %44, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !105
  %47 = icmp eq ptr %46, null
  br i1 %47, label %66, label %48, !llvm.loop !148

48:                                               ; preds = %34, %43
  %49 = phi i64 [ 0, %34 ], [ %44, %43 ]
  %50 = getelementptr inbounds %struct.EnumPropertyItem, ptr %30, i64 %49
  %51 = load i32, ptr %50, align 8, !tbaa !107
  %52 = icmp eq i32 %51, %35
  br i1 %52, label %53, label %43

53:                                               ; preds = %48
  %54 = icmp eq ptr %4, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.EnumPropertyItem, ptr %30, i64 %49, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !108
  br label %58

58:                                               ; preds = %53, %55
  %59 = phi ptr [ %57, %55 ], [ %4, %53 ]
  %60 = icmp eq i32 %5, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.EnumPropertyItem, ptr %30, i64 %49, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !109
  br label %64

64:                                               ; preds = %58, %61
  %65 = phi i32 [ %63, %61 ], [ %5, %58 ]
  call void @uiItemFullR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i32 noundef -2, i32 noundef %35, i32 noundef 0, ptr noundef %59, i32 noundef %65)
  br label %66

66:                                               ; preds = %43, %29, %64
  %67 = load i8, ptr %9, align 1, !tbaa !68
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %71 = load ptr, ptr %7, align 8, !tbaa !34
  call void %70(ptr noundef %71) #16
  br label %72

72:                                               ; preds = %66, %69, %42, %15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemsEnumR(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.uiLayoutRoot, ptr %8, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2)
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = tail call ptr @RNA_struct_identifier(ptr noundef %15) #16
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.uiItemsEnumR, ptr noundef %16, ptr noundef %2) #16
  br label %201

17:                                               ; preds = %3
  %18 = tail call i32 @RNA_property_type(ptr noundef nonnull %11) #16
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = tail call ptr @RNA_struct_identifier(ptr noundef %22) #16
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.uiItemsEnumR, ptr noundef %23, ptr noundef %2) #16
  br label %201

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = tail call ptr %25(i64 noundef 96, ptr noundef nonnull @.str.26) #16
  %27 = getelementptr inbounds %struct.uiItem, ptr %26, i64 0, i32 2
  store i32 7, ptr %27, align 8, !tbaa !83
  %28 = load ptr, ptr %7, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !85
  %30 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 10
  store i8 0, ptr %30, align 2, !tbaa !86
  %31 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 11
  store i8 1, ptr %31, align 1, !tbaa !87
  %32 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 12
  store i8 1, ptr %32, align 4, !tbaa !88
  %33 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !89
  %35 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !90
  %36 = load ptr, ptr %7, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.uiLayoutRoot, ptr %36, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = getelementptr inbounds %struct.uiStyle, ptr %38, i64 0, i32 10
  %40 = load i16, ptr %39, align 8, !tbaa !92
  %41 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 9
  store i16 %40, ptr %41, align 8, !tbaa !95
  %42 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %43 = load i8, ptr %42, align 1, !tbaa !75
  %44 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 13
  store i8 %43, ptr %44, align 1, !tbaa !96
  %45 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !97
  %47 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 6
  store i32 %46, ptr %47, align 8, !tbaa !98
  %48 = getelementptr inbounds %struct.uiLayoutItemSplit, ptr %26, i64 0, i32 1
  store float 0.000000e+00, ptr %48, align 8, !tbaa !99
  %49 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %49, ptr noundef %26) #16
  %50 = load ptr, ptr %7, align 8, !tbaa !54
  %51 = getelementptr inbounds %struct.uiLayoutRoot, ptr %50, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !58
  %53 = getelementptr inbounds %struct.uiBlock, ptr %52, i64 0, i32 7
  store ptr %26, ptr %53, align 8, !tbaa !64
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %55 = tail call ptr %54(i64 noundef 88, ptr noundef nonnull @.str.21) #16
  %56 = getelementptr inbounds %struct.uiItem, ptr %55, i64 0, i32 2
  store i32 2, ptr %56, align 8, !tbaa !82
  %57 = load ptr, ptr %29, align 8, !tbaa !54
  %58 = getelementptr inbounds %struct.uiLayout, ptr %55, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !54
  %59 = getelementptr inbounds %struct.uiLayout, ptr %55, i64 0, i32 10
  store i8 0, ptr %59, align 2, !tbaa !100
  %60 = getelementptr inbounds %struct.uiLayout, ptr %55, i64 0, i32 11
  store i8 1, ptr %60, align 1, !tbaa !101
  %61 = getelementptr inbounds %struct.uiLayout, ptr %55, i64 0, i32 12
  store i8 1, ptr %61, align 4, !tbaa !102
  %62 = load ptr, ptr %35, align 8, !tbaa !89
  %63 = getelementptr inbounds %struct.uiLayout, ptr %55, i64 0, i32 2
  store ptr %62, ptr %63, align 8, !tbaa !89
  %64 = load ptr, ptr %29, align 8, !tbaa !54
  %65 = getelementptr inbounds %struct.uiLayoutRoot, ptr %64, i64 0, i32 9
  %66 = load ptr, ptr %65, align 8, !tbaa !91
  %67 = getelementptr inbounds %struct.uiStyle, ptr %66, i64 0, i32 14
  %68 = load i16, ptr %67, align 8, !tbaa !103
  %69 = getelementptr inbounds %struct.uiLayout, ptr %55, i64 0, i32 9
  store i16 %68, ptr %69, align 8, !tbaa !104
  %70 = load i8, ptr %44, align 1, !tbaa !75
  %71 = getelementptr inbounds %struct.uiLayout, ptr %55, i64 0, i32 13
  store i8 %70, ptr %71, align 1, !tbaa !75
  %72 = load i32, ptr %47, align 8, !tbaa !97
  %73 = getelementptr inbounds %struct.uiLayout, ptr %55, i64 0, i32 6
  store i32 %72, ptr %73, align 8, !tbaa !97
  %74 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %74, ptr noundef %55) #16
  %75 = load ptr, ptr %29, align 8, !tbaa !54
  %76 = getelementptr inbounds %struct.uiLayoutRoot, ptr %75, i64 0, i32 10
  %77 = load ptr, ptr %76, align 8, !tbaa !58
  %78 = getelementptr inbounds %struct.uiBlock, ptr %77, i64 0, i32 7
  store ptr %55, ptr %78, align 8, !tbaa !64
  %79 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 48
  %80 = load ptr, ptr %79, align 8, !tbaa !80
  call void @RNA_property_enum_items_gettexted(ptr noundef %80, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %81 = load i32, ptr %5, align 4, !tbaa !118
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %194

83:                                               ; preds = %24
  %84 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 2, i32 1
  %85 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 27
  %86 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 2, i32 1
  br label %87

87:                                               ; preds = %83, %188
  %88 = phi i64 [ 0, %83 ], [ %190, %188 ]
  %89 = phi ptr [ %55, %83 ], [ %189, %188 ]
  %90 = load ptr, ptr %4, align 8, !tbaa !34
  %91 = getelementptr inbounds %struct.EnumPropertyItem, ptr %90, i64 %88, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !105
  %93 = load i8, ptr %92, align 1, !tbaa !68
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.EnumPropertyItem, ptr %90, i64 %88
  %97 = getelementptr inbounds %struct.EnumPropertyItem, ptr %90, i64 %88, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !108
  %99 = load i32, ptr %96, align 8, !tbaa !107
  call void @uiItemEnumR(ptr noundef %89, ptr noundef %98, i32 noundef 0, ptr noundef %1, ptr noundef %2, i32 noundef %99)
  %100 = load ptr, ptr %84, align 8, !tbaa !110
  %101 = load ptr, ptr %4, align 8, !tbaa !34
  %102 = getelementptr inbounds %struct.uiBut, ptr %100, i64 0, i32 42
  %103 = load ptr, ptr %102, align 8, !tbaa !111
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %95
  %106 = load i8, ptr %103, align 1, !tbaa !68
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %188

108:                                              ; preds = %105, %95
  %109 = getelementptr inbounds %struct.EnumPropertyItem, ptr %101, i64 %88, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !112
  %111 = icmp eq ptr %110, null
  br i1 %111, label %188, label %112

112:                                              ; preds = %108
  %113 = load i8, ptr %110, align 1, !tbaa !68
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %188, label %115

115:                                              ; preds = %112
  store ptr %110, ptr %102, align 8, !tbaa !111
  br label %188

116:                                              ; preds = %87
  %117 = getelementptr inbounds %struct.EnumPropertyItem, ptr %90, i64 %88, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !108
  %119 = icmp eq ptr %118, null
  br i1 %119, label %172, label %120

120:                                              ; preds = %116
  %121 = icmp eq i64 %88, 0
  br i1 %121, label %149, label %122

122:                                              ; preds = %120
  %123 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %124 = call ptr %123(i64 noundef 88, ptr noundef nonnull @.str.21) #16
  %125 = getelementptr inbounds %struct.uiItem, ptr %124, i64 0, i32 2
  store i32 2, ptr %125, align 8, !tbaa !82
  %126 = load ptr, ptr %29, align 8, !tbaa !54
  %127 = getelementptr inbounds %struct.uiLayout, ptr %124, i64 0, i32 1
  store ptr %126, ptr %127, align 8, !tbaa !54
  %128 = getelementptr inbounds %struct.uiLayout, ptr %124, i64 0, i32 10
  store i8 0, ptr %128, align 2, !tbaa !100
  %129 = getelementptr inbounds %struct.uiLayout, ptr %124, i64 0, i32 11
  store i8 1, ptr %129, align 1, !tbaa !101
  %130 = getelementptr inbounds %struct.uiLayout, ptr %124, i64 0, i32 12
  store i8 1, ptr %130, align 4, !tbaa !102
  %131 = load ptr, ptr %35, align 8, !tbaa !89
  %132 = getelementptr inbounds %struct.uiLayout, ptr %124, i64 0, i32 2
  store ptr %131, ptr %132, align 8, !tbaa !89
  %133 = load ptr, ptr %29, align 8, !tbaa !54
  %134 = getelementptr inbounds %struct.uiLayoutRoot, ptr %133, i64 0, i32 9
  %135 = load ptr, ptr %134, align 8, !tbaa !91
  %136 = getelementptr inbounds %struct.uiStyle, ptr %135, i64 0, i32 14
  %137 = load i16, ptr %136, align 8, !tbaa !103
  %138 = getelementptr inbounds %struct.uiLayout, ptr %124, i64 0, i32 9
  store i16 %137, ptr %138, align 8, !tbaa !104
  %139 = load i8, ptr %44, align 1, !tbaa !75
  %140 = getelementptr inbounds %struct.uiLayout, ptr %124, i64 0, i32 13
  store i8 %139, ptr %140, align 1, !tbaa !75
  %141 = load i32, ptr %47, align 8, !tbaa !97
  %142 = getelementptr inbounds %struct.uiLayout, ptr %124, i64 0, i32 6
  store i32 %141, ptr %142, align 8, !tbaa !97
  call void @BLI_addtail(ptr noundef nonnull %74, ptr noundef %124) #16
  %143 = load ptr, ptr %29, align 8, !tbaa !54
  %144 = getelementptr inbounds %struct.uiLayoutRoot, ptr %143, i64 0, i32 10
  %145 = load ptr, ptr %144, align 8, !tbaa !58
  %146 = getelementptr inbounds %struct.uiBlock, ptr %145, i64 0, i32 7
  store ptr %124, ptr %146, align 8, !tbaa !64
  %147 = load i32, ptr %85, align 8, !tbaa !113
  %148 = or i32 %147, 2048
  store i32 %148, ptr %85, align 8, !tbaa !113
  br label %149

149:                                              ; preds = %122, %120
  %150 = phi ptr [ %124, %122 ], [ %89, %120 ]
  %151 = load ptr, ptr %4, align 8, !tbaa !34
  %152 = getelementptr inbounds %struct.EnumPropertyItem, ptr %151, i64 %88, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !108
  %154 = call fastcc ptr @uiItemL_(ptr noundef %150, ptr noundef %153, i32 noundef 0)
  %155 = load ptr, ptr %86, align 8, !tbaa !110
  %156 = getelementptr inbounds %struct.uiBut, ptr %155, i64 0, i32 3
  store i32 2, ptr %156, align 4, !tbaa !74
  %157 = load ptr, ptr %4, align 8, !tbaa !34
  %158 = getelementptr inbounds %struct.uiBut, ptr %155, i64 0, i32 42
  %159 = load ptr, ptr %158, align 8, !tbaa !111
  %160 = icmp eq ptr %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %149
  %162 = load i8, ptr %159, align 1, !tbaa !68
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %188

164:                                              ; preds = %161, %149
  %165 = getelementptr inbounds %struct.EnumPropertyItem, ptr %157, i64 %88, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !112
  %167 = icmp eq ptr %166, null
  br i1 %167, label %188, label %168

168:                                              ; preds = %164
  %169 = load i8, ptr %166, align 1, !tbaa !68
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %188, label %171

171:                                              ; preds = %168
  store ptr %166, ptr %158, align 8, !tbaa !111
  br label %188

172:                                              ; preds = %116
  %173 = getelementptr inbounds %struct.uiLayout, ptr %89, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !54
  %175 = getelementptr inbounds %struct.uiLayoutRoot, ptr %174, i64 0, i32 10
  %176 = load ptr, ptr %175, align 8, !tbaa !58
  %177 = call zeroext i8 @ui_block_is_menu(ptr noundef %176) #16
  %178 = icmp eq i8 %177, 0
  %179 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %180 = sitofp i16 %179 to float
  %181 = select i1 %178, float 0x3FD3333340000000, float 0x3FDCCCCCC0000000
  %182 = select i1 %178, i32 10752, i32 27648
  %183 = fmul float %181, %180
  %184 = fptosi float %183 to i32
  %185 = getelementptr inbounds %struct.uiBlock, ptr %176, i64 0, i32 7
  store ptr %89, ptr %185, align 8, !tbaa !64
  %186 = trunc i32 %184 to i16
  %187 = call ptr @uiDefBut(ptr noundef %176, i32 noundef %182, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i16 noundef signext %186, i16 noundef signext %186, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  br label %188

188:                                              ; preds = %171, %168, %164, %161, %115, %112, %108, %105, %172
  %189 = phi ptr [ %89, %172 ], [ %89, %105 ], [ %89, %108 ], [ %89, %112 ], [ %89, %115 ], [ %150, %161 ], [ %150, %164 ], [ %150, %168 ], [ %150, %171 ]
  %190 = add nuw nsw i64 %88, 1
  %191 = load i32, ptr %5, align 4, !tbaa !118
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %190, %192
  br i1 %193, label %87, label %194, !llvm.loop !149

194:                                              ; preds = %188, %24
  %195 = load i8, ptr %6, align 1, !tbaa !68
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %199 = load ptr, ptr %4, align 8, !tbaa !34
  call void %198(ptr noundef %199) #16
  br label %200

200:                                              ; preds = %197, %194
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %201

201:                                              ; preds = %200, %20, %13
  ret void
}

declare ptr @RNA_property_pointer_type(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_unlink(ptr noundef) local_unnamed_addr #2

declare void @uiButSetSearchFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @rna_search_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca [66 x i8], align 16
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = tail call i32 @RNA_property_flag(ptr noundef %9) #16
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 16, ptr noundef nonnull @.str.45) #16
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 48
  %14 = load i8, ptr %13, align 1, !tbaa !150
  %15 = icmp eq i8 %14, 0
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #16
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 57
  %17 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 58
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  call void @RNA_property_collection_begin(ptr noundef nonnull %16, ptr noundef %18, ptr noundef nonnull %5) #16
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !141
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %83, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  %24 = and i32 %10, 1048576
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %27 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %28 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %29 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 1
  %30 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  br label %31

31:                                               ; preds = %22, %79
  %32 = phi i32 [ 0, %22 ], [ %80, %79 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false), !tbaa.struct !52
  br i1 %25, label %37, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %26, align 8, !tbaa !76
  %35 = load ptr, ptr %27, align 8, !tbaa !151
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %79, label %37

37:                                               ; preds = %33, %31
  %38 = load ptr, ptr %8, align 8, !tbaa !51
  %39 = call i32 @RNA_property_type(ptr noundef %38) #16
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load ptr, ptr %8, align 8, !tbaa !51
  %43 = call i32 @RNA_property_pointer_poll(ptr noundef nonnull %28, ptr noundef %42, ptr noundef nonnull %6) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %41, %37
  %46 = load ptr, ptr %29, align 8, !tbaa !79
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = call zeroext i8 @RNA_struct_is_ID(ptr noundef nonnull %46) #16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %30, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %7) #16
  %53 = getelementptr inbounds %struct.ID, ptr %52, i64 0, i32 4, i64 2
  %54 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %53, i64 noundef 66) #16
  %55 = call ptr @BLI_strdup(ptr noundef nonnull %7) #16
  %56 = call i32 @ui_id_icon_get(ptr noundef %0, ptr noundef %52, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %7) #16
  br label %59

57:                                               ; preds = %48, %45
  %58 = call ptr @RNA_struct_name_get_alloc(ptr noundef nonnull %6, ptr noundef null, i32 noundef 0, ptr noundef null) #16
  br label %59

59:                                               ; preds = %57, %51
  %60 = phi i32 [ %56, %51 ], [ 0, %57 ]
  %61 = phi ptr [ %55, %51 ], [ %58, %57 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %77, label %63

63:                                               ; preds = %59
  br i1 %15, label %67, label %64

64:                                               ; preds = %63
  %65 = call ptr @BLI_strcasestr(ptr noundef nonnull %61, ptr noundef %2) #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %64, %63
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %69 = call ptr %68(i64 noundef 32, ptr noundef nonnull @.str.46) #16
  %70 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %71 = call ptr %70(ptr noundef nonnull %61) #16
  %72 = getelementptr inbounds %struct.CollItemSearch, ptr %69, i64 0, i32 2
  store ptr %71, ptr %72, align 8, !tbaa !152
  %73 = getelementptr inbounds %struct.CollItemSearch, ptr %69, i64 0, i32 3
  store i32 %32, ptr %73, align 8, !tbaa !154
  %74 = getelementptr inbounds %struct.CollItemSearch, ptr %69, i64 0, i32 4
  store i32 %60, ptr %74, align 4, !tbaa !155
  call void @BLI_addtail(ptr noundef %12, ptr noundef %69) #16
  br label %75

75:                                               ; preds = %67, %64
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %76(ptr noundef nonnull %61) #16
  br label %77

77:                                               ; preds = %75, %59
  %78 = add nsw i32 %32, 1
  br label %79

79:                                               ; preds = %41, %33, %77
  %80 = phi i32 [ %78, %77 ], [ %32, %33 ], [ %32, %41 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @RNA_property_collection_next(ptr noundef nonnull %5) #16
  %81 = load i32, ptr %19, align 8, !tbaa !141
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %31, !llvm.loop !156

83:                                               ; preds = %79, %4
  call void @RNA_property_collection_end(ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #16
  call void @BLI_sortlist(ptr noundef %12, ptr noundef nonnull @sort_search_items_list) #16
  br label %84

84:                                               ; preds = %88, %83
  %85 = phi ptr [ %12, %83 ], [ %86, %88 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %99, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.CollItemSearch, ptr %86, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !152
  %91 = getelementptr inbounds %struct.CollItemSearch, ptr %86, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !154
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to ptr
  %95 = getelementptr inbounds %struct.CollItemSearch, ptr %86, i64 0, i32 4
  %96 = load i32, ptr %95, align 4, !tbaa !155
  %97 = call zeroext i8 @uiSearchItemAdd(ptr noundef %3, ptr noundef %90, ptr noundef %94, i32 noundef %96) #16
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %84, !llvm.loop !157

99:                                               ; preds = %88, %84
  %100 = load ptr, ptr %12, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %99, %102
  %103 = phi ptr [ %107, %102 ], [ %100, %99 ]
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %105 = getelementptr inbounds %struct.CollItemSearch, ptr %103, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !152
  call void %104(ptr noundef %106) #16
  %107 = load ptr, ptr %103, align 8, !tbaa !34
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %102, !llvm.loop !158

109:                                              ; preds = %102, %99
  call void @BLI_freelistN(ptr noundef nonnull %12) #16
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %110(ptr noundef nonnull %12) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemPointerR(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #16
  %11 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = tail call ptr @RNA_struct_identifier(ptr noundef %15) #16
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.uiItemPointerR, ptr noundef %16, ptr noundef %2) #16
  br label %98

17:                                               ; preds = %7
  %18 = tail call i32 @RNA_property_type(ptr noundef nonnull %11) #16
  %19 = icmp eq i32 %18, 5
  %20 = add i32 %18, -3
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.uiItemPointerR, ptr noundef %2) #16
  br label %98

23:                                               ; preds = %17
  %24 = tail call ptr @RNA_struct_find_property(ptr noundef %3, ptr noundef %4) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = tail call ptr @RNA_struct_identifier(ptr noundef %28) #16
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.uiItemPointerR, ptr noundef %29, ptr noundef %4) #16
  br label %98

30:                                               ; preds = %23
  %31 = tail call i32 @RNA_property_type(ptr noundef nonnull %24) #16
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = tail call ptr @RNA_struct_identifier(ptr noundef %35) #16
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.uiItemPointerR, ptr noundef %36, ptr noundef %4) #16
  br label %98

37:                                               ; preds = %30
  %38 = icmp eq i32 %6, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %37
  br i1 %19, label %40, label %42

40:                                               ; preds = %39
  %41 = tail call ptr @RNA_property_pointer_type(ptr noundef %1, ptr noundef nonnull %11) #16
  br label %44

42:                                               ; preds = %39
  %43 = tail call ptr @RNA_property_pointer_type(ptr noundef %3, ptr noundef nonnull %24) #16
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi ptr [ %41, %40 ], [ %43, %42 ]
  %46 = tail call i32 @RNA_struct_ui_icon(ptr noundef %45) #16
  br label %47

47:                                               ; preds = %44, %37
  %48 = phi i32 [ %46, %44 ], [ %6, %37 ]
  %49 = icmp eq ptr %5, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = tail call ptr @RNA_property_ui_name(ptr noundef nonnull %11) #16
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi ptr [ %5, %47 ], [ %51, %50 ]
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #17
  %55 = trunc i64 %54 to i32
  %56 = icmp ne i32 %55, 0
  %57 = icmp slt i32 %55, 127
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %53, i64 noundef 128) #16
  %61 = shl i64 %54, 32
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds i8, ptr %10, i64 %62
  store i8 58, ptr %63, align 1, !tbaa !68
  %64 = add i64 %61, 4294967296
  %65 = ashr exact i64 %64, 32
  %66 = getelementptr inbounds i8, ptr %10, i64 %65
  store i8 0, ptr %66, align 1, !tbaa !68
  br label %67

67:                                               ; preds = %52, %59
  %68 = phi ptr [ %10, %59 ], [ %53, %52 ]
  %69 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !54
  %71 = getelementptr inbounds %struct.uiLayoutRoot, ptr %70, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !58
  call fastcc void @ui_item_rna_size(ptr noundef %0, ptr noundef %68, i32 noundef %48, ptr noundef %1, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %73 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %74 = sext i16 %73 to i32
  %75 = load i32, ptr %8, align 4, !tbaa !118
  %76 = add nsw i32 %75, %74
  store i32 %76, ptr %8, align 4, !tbaa !118
  %77 = load i32, ptr %9, align 4, !tbaa !118
  %78 = call fastcc ptr @ui_item_with_label(ptr noundef %0, ptr noundef %72, ptr noundef %68, i32 noundef %48, ptr noundef %1, ptr noundef nonnull %11, i32 noundef 0, i32 noundef %76, i32 noundef %77, i32 noundef 0)
  %79 = call zeroext i8 @RNA_property_is_unlink(ptr noundef nonnull %11) #16
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i32 20992, i32 26624
  %82 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 4
  store i32 %81, ptr %82, align 8, !tbaa !132
  %83 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 21
  %84 = load float, ptr %83, align 4, !tbaa !145
  %85 = fcmp ogt float %84, 2.560000e+02
  %86 = select i1 %85, float %84, float 2.560000e+02
  store float %86, ptr %83, align 4, !tbaa !145
  %87 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %87, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !52
  %88 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 58
  store ptr %24, ptr %88, align 8, !tbaa !146
  %89 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !74
  %91 = or i32 %90, 6
  store i32 %91, ptr %89, align 4, !tbaa !74
  %92 = call i32 @RNA_property_type(ptr noundef nonnull %11) #16
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %97

94:                                               ; preds = %67
  %95 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 15
  %96 = load ptr, ptr %95, align 8, !tbaa !147
  store i8 0, ptr %96, align 1, !tbaa !68
  br label %97

97:                                               ; preds = %94, %67
  call void @uiButSetSearchFunc(ptr noundef %78, ptr noundef nonnull @rna_search_cb, ptr noundef %78, ptr noundef null, ptr noundef null) #16
  br label %98

98:                                               ; preds = %97, %33, %26, %22, %13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret void
}

declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @uiLayoutGetBlock(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemM(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @WM_menutype_find(ptr noundef %2, i8 noundef zeroext 0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.uiItemM, ptr noundef %2) #16
  br label %24

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, null
  %11 = getelementptr inbounds %struct.MenuType, ptr %6, i64 0, i32 3
  %12 = select i1 %10, ptr %11, ptr %3
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.uiLayoutRoot, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !63
  %17 = icmp ne i32 %16, 2
  %18 = icmp ne i32 %4, 0
  %19 = or i1 %18, %17
  %20 = select i1 %19, i32 %4, i32 77
  %21 = getelementptr inbounds %struct.MenuType, ptr %6, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !159
  %23 = tail call fastcc ptr @ui_item_menu(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %20, ptr noundef nonnull @ui_item_menutype_func, ptr noundef nonnull %6, ptr noundef null, ptr noundef %22, i8 noundef zeroext 0)
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare ptr @WM_menutype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ui_item_menu(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7) unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.uiLayoutRoot, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 7
  store ptr %0, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.uiLayoutRoot, ptr %10, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !63
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  tail call void @uiBlockSetEmboss(ptr noundef %12, i8 noundef zeroext 0) #16
  br label %18

18:                                               ; preds = %17, %8
  %19 = icmp eq ptr %1, null
  %20 = select i1 %19, ptr @.str, ptr %1
  %21 = load ptr, ptr %9, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.uiLayoutRoot, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !63
  %24 = icmp ne i32 %23, 2
  %25 = icmp ne i32 %2, 0
  %26 = or i1 %25, %24
  %27 = select i1 %26, i32 %2, i32 77
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %18
  %30 = load i8, ptr %20, align 1, !tbaa !68
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %34 = zext i16 %33 to i32
  br label %52

35:                                               ; preds = %29, %18
  switch i32 %23, label %36 [
    i32 1, label %40
    i32 4, label %40
  ]

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %38 = load i8, ptr %37, align 1, !tbaa !73
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36, %35, %35
  %41 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %20) #16
  %42 = sitofp i32 %41 to float
  %43 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %44 = sitofp i16 %43 to float
  %45 = select i1 %28, float 1.250000e+00, float 1.500000e+00
  %46 = tail call float @llvm.fmuladd.f32(float %44, float %45, float %42)
  %47 = fptosi float %46 to i32
  br label %52

48:                                               ; preds = %36
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %50 = zext i16 %49 to i32
  %51 = mul nuw nsw i32 %50, 10
  br label %52

52:                                               ; preds = %32, %40, %48
  %53 = phi i32 [ %47, %40 ], [ %51, %48 ], [ %34, %32 ]
  %54 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %55 = sext i16 %54 to i32
  %56 = load ptr, ptr %9, align 8, !tbaa !54
  %57 = getelementptr inbounds %struct.uiLayoutRoot, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !63
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = icmp eq i8 %7, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  %63 = add i32 %53, %55
  br label %70

64:                                               ; preds = %60
  %65 = load i8, ptr %20, align 1, !tbaa !68
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = sdiv i32 %55, -2
  %69 = add i32 %68, %53
  br label %70

70:                                               ; preds = %62, %67, %64, %52
  %71 = phi i32 [ %63, %62 ], [ %69, %67 ], [ %53, %64 ], [ %53, %52 ]
  %72 = load i8, ptr %20, align 1, !tbaa !68
  %73 = icmp ne i8 %72, 0
  %74 = icmp ne i32 %27, 0
  %75 = and i1 %74, %73
  %76 = trunc i32 %71 to i16
  br i1 %75, label %77, label %79

77:                                               ; preds = %70
  %78 = tail call ptr @uiDefIconTextMenuBut(ptr noundef %12, ptr noundef %3, ptr noundef %4, i32 noundef %27, ptr noundef nonnull %20, i32 noundef 0, i32 noundef 0, i16 noundef signext %76, i16 noundef signext %54, ptr noundef %6) #16
  br label %84

79:                                               ; preds = %70
  br i1 %74, label %80, label %82

80:                                               ; preds = %79
  %81 = tail call ptr @uiDefIconMenuBut(ptr noundef %12, ptr noundef %3, ptr noundef %4, i32 noundef %27, i32 noundef 0, i32 noundef 0, i16 noundef signext %76, i16 noundef signext %54, ptr noundef %6) #16
  br label %84

82:                                               ; preds = %79
  %83 = tail call ptr @uiDefMenuBut(ptr noundef %12, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %20, i32 noundef 0, i32 noundef 0, i16 noundef signext %76, i16 noundef signext %54, ptr noundef %6) #16
  br label %84

84:                                               ; preds = %80, %82, %77
  %85 = phi ptr [ %78, %77 ], [ %81, %80 ], [ %83, %82 ]
  %86 = icmp eq ptr %5, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.uiBut, ptr %85, i64 0, i32 19
  store ptr %85, ptr %88, align 8, !tbaa !161
  %89 = getelementptr inbounds %struct.uiBut, ptr %85, i64 0, i32 31
  store ptr %5, ptr %89, align 8, !tbaa !162
  br label %90

90:                                               ; preds = %87, %84
  %91 = load ptr, ptr %9, align 8, !tbaa !54
  %92 = getelementptr inbounds %struct.uiLayoutRoot, ptr %91, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !63
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  tail call void @uiBlockSetEmboss(ptr noundef %12, i8 noundef zeroext 0) #16
  br label %96

96:                                               ; preds = %95, %90
  %97 = load ptr, ptr %9, align 8, !tbaa !54
  %98 = getelementptr inbounds %struct.uiLayoutRoot, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !63
  switch i32 %99, label %100 [
    i32 0, label %104
    i32 3, label %104
  ]

100:                                              ; preds = %96
  %101 = icmp eq i8 %7, 0
  %102 = icmp eq i32 %99, 2
  %103 = or i1 %101, %102
  br i1 %103, label %105, label %104

104:                                              ; preds = %100, %96, %96
  tail call void @uiButSetMenuFromPulldown(ptr noundef %85) #16
  br label %105

105:                                              ; preds = %104, %100
  ret ptr %85
}

; Function Attrs: nounwind uwtable
define internal void @ui_item_menutype_func(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.Menu, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %2, ptr %4, align 8, !tbaa !163
  %5 = getelementptr inbounds %struct.Menu, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !165
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !166
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 2
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull @__func__.ui_item_menutype_func, ptr noundef nonnull %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @CTX_store_set(ptr noundef %0, ptr noundef nonnull %14) #16
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !167
  call void %19(ptr noundef %0, ptr noundef nonnull %4) #16
  %20 = load ptr, ptr %13, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void @CTX_store_set(ptr noundef %0, ptr noundef null) #16
  br label %23

23:                                               ; preds = %22, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @uiItemL_(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 7
  store ptr %0, ptr %8, align 8, !tbaa !64
  %9 = icmp eq ptr %1, null
  %10 = select i1 %9, ptr @.str, ptr %1
  %11 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !63
  %13 = icmp ne i32 %12, 2
  %14 = icmp ne i32 %2, 0
  %15 = or i1 %14, %13
  %16 = select i1 %15, i32 %2, i32 77
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i8, ptr %10, align 1, !tbaa !68
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %23 = zext i16 %22 to i32
  br label %41

24:                                               ; preds = %18, %3
  switch i32 %12, label %25 [
    i32 1, label %29
    i32 4, label %29
  ]

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %27 = load i8, ptr %26, align 1, !tbaa !73
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25, %24, %24
  %30 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %10) #16
  %31 = sitofp i32 %30 to float
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %33 = sitofp i16 %32 to float
  %34 = select i1 %17, float 1.500000e+00, float 1.750000e+00
  %35 = tail call float @llvm.fmuladd.f32(float %33, float %34, float %31)
  %36 = fptosi float %35 to i32
  br label %41

37:                                               ; preds = %25
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %39 = zext i16 %38 to i32
  %40 = mul nuw nsw i32 %39, 10
  br label %41

41:                                               ; preds = %21, %29, %37
  %42 = phi i32 [ %36, %29 ], [ %40, %37 ], [ %23, %21 ]
  br i1 %17, label %52, label %43

43:                                               ; preds = %41
  %44 = load i8, ptr %10, align 1, !tbaa !68
  %45 = icmp eq i8 %44, 0
  %46 = trunc i32 %42 to i16
  %47 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  br i1 %45, label %50, label %48

48:                                               ; preds = %43
  %49 = tail call ptr @uiDefIconTextBut(ptr noundef %7, i32 noundef 5120, i32 noundef 0, i32 noundef %16, ptr noundef nonnull %10, i32 noundef 0, i32 noundef 0, i16 noundef signext %46, i16 noundef signext %47, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  br label %56

50:                                               ; preds = %43
  %51 = tail call ptr @uiDefIconBut(ptr noundef %7, i32 noundef 5120, i32 noundef 0, i32 noundef %16, i32 noundef 0, i32 noundef 0, i16 noundef signext %46, i16 noundef signext %47, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  br label %56

52:                                               ; preds = %41
  %53 = trunc i32 %42 to i16
  %54 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %55 = tail call ptr @uiDefBut(ptr noundef %7, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %10, i32 noundef 0, i32 noundef 0, i16 noundef signext %53, i16 noundef signext %54, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  br label %56

56:                                               ; preds = %50, %52, %48
  %57 = phi ptr [ %49, %48 ], [ %51, %50 ], [ %55, %52 ]
  %58 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %59 = load i8, ptr %58, align 1, !tbaa !73
  %60 = icmp eq i8 %59, 3
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.uiBut, ptr %57, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !74
  %64 = and i32 %63, -11
  %65 = or disjoint i32 %64, 8
  store i32 %65, ptr %62, align 4, !tbaa !74
  br label %66

66:                                               ; preds = %61, %56
  %67 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 27
  %68 = load i32, ptr %67, align 8, !tbaa !113
  %69 = and i32 %68, 524288
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.uiBut, ptr %57, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !49
  %74 = or i32 %73, 16777216
  store i32 %74, ptr %72, align 8, !tbaa !49
  br label %75

75:                                               ; preds = %71, %66
  ret ptr %57
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemLDrag(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @uiItemL_(ptr noundef %0, ptr noundef %2, i32 noundef %3)
  %6 = icmp eq ptr %1, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef nonnull %9) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 8, !tbaa !168
  tail call void @uiButSetDragID(ptr noundef %5, ptr noundef %15) #16
  br label %16

16:                                               ; preds = %11, %14, %7, %4
  ret void
}

declare zeroext i8 @RNA_struct_is_ID(ptr noundef) local_unnamed_addr #2

declare void @uiButSetDragID(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemV(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.uiLayoutRoot, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 46
  %10 = load ptr, ptr %9, align 8, !tbaa !169
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %10, i64 0, i32 17
  %13 = select i1 %11, ptr null, ptr %12
  %14 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 7
  store ptr %0, ptr %14, align 8, !tbaa !64
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, ptr @.str, ptr %1
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %6, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !63
  %19 = icmp ne i32 %18, 2
  %20 = icmp ne i32 %2, 0
  %21 = or i1 %20, %19
  %22 = select i1 %21, i32 %2, i32 77
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load i8, ptr %16, align 1, !tbaa !68
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %29 = zext i16 %28 to i32
  br label %47

30:                                               ; preds = %24, %4
  switch i32 %18, label %31 [
    i32 1, label %35
    i32 4, label %35
  ]

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %33 = load i8, ptr %32, align 1, !tbaa !73
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31, %30, %30
  %36 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %16) #16
  %37 = sitofp i32 %36 to float
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %39 = sitofp i16 %38 to float
  %40 = select i1 %23, float 1.500000e+00, float 1.750000e+00
  %41 = tail call float @llvm.fmuladd.f32(float %39, float %40, float %37)
  %42 = fptosi float %41 to i32
  br label %47

43:                                               ; preds = %31
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %45 = zext i16 %44 to i32
  %46 = mul nuw nsw i32 %45, 10
  br label %47

47:                                               ; preds = %27, %35, %43
  %48 = phi i32 [ %42, %35 ], [ %46, %43 ], [ %29, %27 ]
  br i1 %23, label %58, label %49

49:                                               ; preds = %47
  %50 = load i8, ptr %16, align 1, !tbaa !68
  %51 = icmp eq i8 %50, 0
  %52 = trunc i32 %48 to i16
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  br i1 %51, label %56, label %54

54:                                               ; preds = %49
  %55 = tail call ptr @uiDefIconTextButI(ptr noundef %8, i32 noundef 512, i32 noundef %3, i32 noundef %22, ptr noundef nonnull %16, i32 noundef 0, i32 noundef 0, i16 noundef signext %52, i16 noundef signext %53, ptr noundef %13, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str) #16
  br label %62

56:                                               ; preds = %49
  %57 = tail call ptr @uiDefIconButI(ptr noundef %8, i32 noundef 512, i32 noundef %3, i32 noundef %22, i32 noundef 0, i32 noundef 0, i16 noundef signext %52, i16 noundef signext %53, ptr noundef %13, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str) #16
  br label %62

58:                                               ; preds = %47
  %59 = trunc i32 %48 to i16
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %61 = tail call ptr @uiDefButI(ptr noundef %8, i32 noundef 512, i32 noundef %3, ptr noundef nonnull %16, i32 noundef 0, i32 noundef 0, i16 noundef signext %59, i16 noundef signext %60, ptr noundef %13, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str) #16
  br label %62

62:                                               ; preds = %56, %58, %54
  ret void
}

declare ptr @uiDefIconTextButI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefIconButI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButI(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ui_block_is_menu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemMenuF(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call fastcc ptr @ui_item_menu(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef null, ptr noundef nonnull @.str, i8 noundef zeroext 0)
  br label %9

9:                                                ; preds = %5, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiItemMenuEnumO(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [128 x i8], align 16
  %8 = tail call ptr @WM_operatortype_find(ptr noundef %2, i8 noundef zeroext 0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2)
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemMenuEnumO, ptr noundef %2) #16
  br label %66

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2)
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.uiItemMenuEnumO, ptr noundef %2) #16
  br label %66

16:                                               ; preds = %11
  %17 = icmp eq ptr %4, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = tail call ptr @RNA_struct_ui_name(ptr noundef nonnull %13) #16
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %19, %18 ], [ %4, %16 ]
  %22 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.uiLayoutRoot, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !63
  %26 = icmp ne i32 %25, 2
  %27 = icmp ne i32 %5, 0
  %28 = or i1 %27, %26
  %29 = select i1 %28, i32 %5, i32 77
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %31 = tail call ptr %30(i64 noundef 160, ptr noundef nonnull @.str.19) #16
  %32 = getelementptr inbounds %struct.MenuItemLevel, ptr %31, i64 0, i32 1
  %33 = tail call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef %2, i64 noundef 64) #16
  %34 = getelementptr inbounds %struct.MenuItemLevel, ptr %31, i64 0, i32 2
  %35 = tail call ptr @BLI_strncpy(ptr noundef nonnull %34, ptr noundef %3, i64 noundef 64) #16
  %36 = load ptr, ptr %22, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.uiLayoutRoot, ptr %36, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !81
  store i32 %38, ptr %31, align 8, !tbaa !170
  %39 = load ptr, ptr %12, align 8, !tbaa !60
  %40 = tail call ptr @RNA_struct_ui_description(ptr noundef %39) #16
  %41 = tail call fastcc ptr @ui_item_menu(ptr noundef %0, ptr noundef %21, i32 noundef %29, ptr noundef nonnull @menu_item_enum_opname_menu, ptr noundef null, ptr noundef nonnull %31, ptr noundef %40, i8 noundef zeroext 1)
  %42 = load ptr, ptr %22, align 8, !tbaa !54
  %43 = getelementptr inbounds %struct.uiLayoutRoot, ptr %42, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.uiBlock, ptr %44, i64 0, i32 27
  %46 = load i32, ptr %45, align 8, !tbaa !113
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %20
  %50 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 13
  %51 = load ptr, ptr %50, align 8, !tbaa !172
  %52 = icmp eq ptr %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !173
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #16
  %58 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !174
  %60 = getelementptr inbounds %struct.uiLayoutRoot, ptr %42, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !81
  %62 = call ptr @WM_key_event_operator_string(ptr noundef %1, ptr noundef %59, i32 noundef %61, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %7, i32 noundef 128) #16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  call void @ui_but_add_shortcut(ptr noundef %41, ptr noundef nonnull %7, i8 noundef zeroext 0) #16
  br label %65

65:                                               ; preds = %64, %57
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #16
  br label %66

66:                                               ; preds = %20, %49, %53, %65, %15, %10
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @menu_item_enum_opname_menu(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 31
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = load i32, ptr %5, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.uiLayoutRoot, ptr %8, i64 0, i32 3
  store i32 %6, ptr %9, align 4, !tbaa !81
  %10 = getelementptr inbounds %struct.MenuItemLevel, ptr %5, i64 0, i32 1
  %11 = getelementptr inbounds %struct.MenuItemLevel, ptr %5, i64 0, i32 2
  tail call void @uiItemsFullEnumO(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef null, i32 noundef %6, i32 noundef 0)
  %12 = load ptr, ptr %7, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.uiLayoutRoot, ptr %12, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  tail call void @uiBlockSetDirection(ptr noundef %14, i8 noundef zeroext 2) #16
  ret void
}

declare ptr @RNA_struct_ui_description(ptr noundef) local_unnamed_addr #2

declare ptr @WM_key_event_operator_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ui_but_add_shortcut(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiItemMenuEnumR(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2)
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = tail call ptr @RNA_struct_identifier(ptr noundef %10) #16
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.uiItemMenuEnumR, ptr noundef %11, ptr noundef %2) #16
  br label %36

12:                                               ; preds = %5
  %13 = icmp eq ptr %3, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = tail call ptr @RNA_property_ui_name(ptr noundef nonnull %6) #16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %3, %12 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.uiLayoutRoot, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !63
  %22 = icmp ne i32 %21, 2
  %23 = icmp ne i32 %4, 0
  %24 = or i1 %23, %22
  %25 = select i1 %24, i32 %4, i32 77
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %27 = tail call ptr %26(i64 noundef 160, ptr noundef nonnull @.str.19) #16
  %28 = getelementptr inbounds %struct.MenuItemLevel, ptr %27, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !52
  %29 = getelementptr inbounds %struct.MenuItemLevel, ptr %27, i64 0, i32 2
  %30 = tail call ptr @BLI_strncpy(ptr noundef nonnull %29, ptr noundef %2, i64 noundef 64) #16
  %31 = load ptr, ptr %18, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.uiLayoutRoot, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !81
  store i32 %33, ptr %27, align 8, !tbaa !170
  %34 = tail call ptr @RNA_property_description(ptr noundef nonnull %6) #16
  %35 = tail call fastcc ptr @ui_item_menu(ptr noundef %0, ptr noundef %17, i32 noundef %25, ptr noundef nonnull @menu_item_enum_rna_menu, ptr noundef null, ptr noundef nonnull %27, ptr noundef %34, i8 noundef zeroext 0)
  br label %36

36:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @menu_item_enum_rna_menu(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 31
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = load i32, ptr %5, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.uiLayoutRoot, ptr %8, i64 0, i32 3
  store i32 %6, ptr %9, align 4, !tbaa !81
  %10 = getelementptr inbounds %struct.MenuItemLevel, ptr %5, i64 0, i32 3
  %11 = getelementptr inbounds %struct.MenuItemLevel, ptr %5, i64 0, i32 2
  tail call void @uiItemsEnumR(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11)
  ret void
}

declare ptr @RNA_property_description(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @uiLayoutRow(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 88, ptr noundef nonnull @.str.20) #16
  %5 = getelementptr inbounds %struct.uiItem, ptr %4, i64 0, i32 2
  store i32 1, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !54
  %9 = trunc i32 %1 to i8
  %10 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 10
  store i8 %9, ptr %10, align 2, !tbaa !100
  %11 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 11
  store i8 1, ptr %11, align 1, !tbaa !101
  %12 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 12
  store i8 1, ptr %12, align 4, !tbaa !102
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  %15 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !89
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load ptr, ptr %6, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.uiLayoutRoot, ptr %18, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.uiStyle, ptr %20, i64 0, i32 13
  %22 = load i16, ptr %21, align 2, !tbaa !130
  br label %23

23:                                               ; preds = %2, %17
  %24 = phi i16 [ %22, %17 ], [ 0, %2 ]
  %25 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 9
  store i16 %24, ptr %25, align 8, !tbaa !104
  %26 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %27 = load i8, ptr %26, align 1, !tbaa !75
  %28 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 13
  store i8 %27, ptr %28, align 1, !tbaa !75
  %29 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !97
  %31 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 6
  store i32 %30, ptr %31, align 8, !tbaa !97
  %32 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %32, ptr noundef %4) #16
  %33 = load ptr, ptr %6, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct.uiLayoutRoot, ptr %33, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.uiBlock, ptr %35, i64 0, i32 7
  store ptr %4, ptr %36, align 8, !tbaa !64
  ret ptr %4
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @uiLayoutColumnFlow(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 96, ptr noundef nonnull @.str.22) #16
  %6 = getelementptr inbounds %struct.uiItem, ptr %5, i64 0, i32 2
  store i32 3, ptr %6, align 8, !tbaa !175
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !177
  %10 = trunc i32 %2 to i8
  %11 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 10
  store i8 %10, ptr %11, align 2, !tbaa !178
  %12 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 11
  store i8 1, ptr %12, align 1, !tbaa !179
  %13 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 12
  store i8 1, ptr %13, align 4, !tbaa !180
  %14 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !181
  %17 = icmp eq i8 %10, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load ptr, ptr %7, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.uiLayoutRoot, ptr %19, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.uiStyle, ptr %21, i64 0, i32 10
  %23 = load i16, ptr %22, align 8, !tbaa !92
  br label %24

24:                                               ; preds = %3, %18
  %25 = phi i16 [ %23, %18 ], [ 0, %3 ]
  %26 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 9
  store i16 %25, ptr %26, align 8, !tbaa !182
  %27 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %28 = load i8, ptr %27, align 1, !tbaa !75
  %29 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 13
  store i8 %28, ptr %29, align 1, !tbaa !183
  %30 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !97
  %32 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 6
  store i32 %31, ptr %32, align 8, !tbaa !184
  %33 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %5, i64 0, i32 1
  store i32 %1, ptr %33, align 8, !tbaa !185
  %34 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %34, ptr noundef %5) #16
  %35 = load ptr, ptr %7, align 8, !tbaa !54
  %36 = getelementptr inbounds %struct.uiLayoutRoot, ptr %35, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.uiBlock, ptr %37, i64 0, i32 7
  store ptr %5, ptr %38, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiLayoutBox(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 96, ptr noundef nonnull @.str.48) #16
  %4 = getelementptr inbounds %struct.uiItem, ptr %3, i64 0, i32 2
  store i32 5, ptr %4, align 8, !tbaa !186
  %5 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !188
  %8 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 11
  store i8 1, ptr %8, align 1, !tbaa !189
  %9 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 12
  store i8 1, ptr %9, align 4, !tbaa !190
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !191
  %13 = load ptr, ptr %5, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.uiLayoutRoot, ptr %13, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.uiStyle, ptr %15, i64 0, i32 10
  %17 = load i16, ptr %16, align 8, !tbaa !92
  %18 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 9
  store i16 %17, ptr %18, align 8, !tbaa !192
  %19 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %20 = load i8, ptr %19, align 1, !tbaa !75
  %21 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 13
  store i8 %20, ptr %21, align 1, !tbaa !193
  %22 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !97
  %24 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 6
  store i32 %23, ptr %24, align 8, !tbaa !194
  %25 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %25, ptr noundef %3) #16
  %26 = load ptr, ptr %5, align 8, !tbaa !54
  %27 = getelementptr inbounds %struct.uiLayoutRoot, ptr %26, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 7
  store ptr %3, ptr %29, align 8, !tbaa !64
  %30 = tail call ptr @uiDefBut(ptr noundef %28, i32 noundef 14336, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  %31 = getelementptr inbounds %struct.uiLayoutItemBx, ptr %3, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !195
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_layout_list_set_labels_active(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1, %19
  %6 = phi ptr [ %20, %19 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.uiItem, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !196
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @ui_layout_list_set_labels_active(ptr noundef nonnull %6)
  br label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.uiButtonItem, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !198
  %14 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !49
  %16 = and i32 %15, 16777216
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  tail call void @uiButSetFlag(ptr noundef %13, i32 noundef 1) #16
  br label %19

19:                                               ; preds = %10, %18, %11
  %20 = load ptr, ptr %6, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %5, !llvm.loop !199

22:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiLayoutListBox(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 96, ptr noundef nonnull @.str.48) #16
  %9 = getelementptr inbounds %struct.uiItem, ptr %8, i64 0, i32 2
  store i32 5, ptr %9, align 8, !tbaa !186
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.uiLayout, ptr %8, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !188
  %13 = getelementptr inbounds %struct.uiLayout, ptr %8, i64 0, i32 11
  store i8 1, ptr %13, align 1, !tbaa !189
  %14 = getelementptr inbounds %struct.uiLayout, ptr %8, i64 0, i32 12
  store i8 1, ptr %14, align 4, !tbaa !190
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = getelementptr inbounds %struct.uiLayout, ptr %8, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !191
  %18 = load ptr, ptr %10, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.uiLayoutRoot, ptr %18, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.uiStyle, ptr %20, i64 0, i32 10
  %22 = load i16, ptr %21, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct.uiLayout, ptr %8, i64 0, i32 9
  store i16 %22, ptr %23, align 8, !tbaa !192
  %24 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %25 = load i8, ptr %24, align 1, !tbaa !75
  %26 = getelementptr inbounds %struct.uiLayout, ptr %8, i64 0, i32 13
  store i8 %25, ptr %26, align 1, !tbaa !193
  %27 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !97
  %29 = getelementptr inbounds %struct.uiLayout, ptr %8, i64 0, i32 6
  store i32 %28, ptr %29, align 8, !tbaa !194
  %30 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef %8) #16
  %31 = load ptr, ptr %10, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.uiLayoutRoot, ptr %31, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.uiBlock, ptr %33, i64 0, i32 7
  store ptr %8, ptr %34, align 8, !tbaa !64
  %35 = tail call ptr @uiDefBut(ptr noundef %33, i32 noundef 17920, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  %36 = getelementptr inbounds %struct.uiLayoutItemBx, ptr %8, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !195
  %37 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 68
  store ptr %1, ptr %37, align 8, !tbaa !200
  %38 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 57
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !52
  %39 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 58
  store ptr %3, ptr %39, align 8, !tbaa !146
  %40 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !52
  %41 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 55
  store ptr %5, ptr %41, align 8, !tbaa !51
  %42 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !49
  %44 = and i32 %43, 524288
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %6
  %47 = tail call ptr @RNA_property_description(ptr noundef %5) #16
  %48 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 42
  store ptr %47, ptr %48, align 8, !tbaa !111
  br label %49

49:                                               ; preds = %46, %6
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiLayoutAbsolute(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 88, ptr noundef nonnull @.str.24) #16
  %5 = getelementptr inbounds %struct.uiItem, ptr %4, i64 0, i32 2
  store i32 6, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !54
  %9 = trunc i32 %1 to i8
  %10 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 10
  store i8 %9, ptr %10, align 2, !tbaa !100
  %11 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 11
  store i8 1, ptr %11, align 1, !tbaa !101
  %12 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 12
  store i8 1, ptr %12, align 4, !tbaa !102
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  %15 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %17 = load i8, ptr %16, align 1, !tbaa !75
  %18 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 13
  store i8 %17, ptr %18, align 1, !tbaa !75
  %19 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef %4) #16
  %20 = load ptr, ptr %6, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.uiLayoutRoot, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 7
  store ptr %4, ptr %23, align 8, !tbaa !64
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiLayoutAbsoluteBlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 88, ptr noundef nonnull @.str.24) #16
  %8 = getelementptr inbounds %struct.uiItem, ptr %7, i64 0, i32 2
  store i32 6, ptr %8, align 8, !tbaa !82
  %9 = load ptr, ptr %2, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.uiLayout, ptr %7, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.uiLayout, ptr %7, i64 0, i32 10
  store i8 0, ptr %11, align 2, !tbaa !100
  %12 = getelementptr inbounds %struct.uiLayout, ptr %7, i64 0, i32 11
  store i8 1, ptr %12, align 1, !tbaa !101
  %13 = getelementptr inbounds %struct.uiLayout, ptr %7, i64 0, i32 12
  store i8 1, ptr %13, align 4, !tbaa !102
  %14 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.uiLayout, ptr %7, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !89
  %17 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %18 = load i8, ptr %17, align 1, !tbaa !75
  %19 = getelementptr inbounds %struct.uiLayout, ptr %7, i64 0, i32 13
  store i8 %18, ptr %19, align 1, !tbaa !75
  %20 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %7) #16
  %21 = load ptr, ptr %2, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.uiLayoutRoot, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 7
  store ptr %7, ptr %24, align 8, !tbaa !64
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiLayoutOverlap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 88, ptr noundef nonnull @.str.25) #16
  %4 = getelementptr inbounds %struct.uiItem, ptr %3, i64 0, i32 2
  store i32 8, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 11
  store i8 1, ptr %8, align 1, !tbaa !101
  %9 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 12
  store i8 1, ptr %9, align 4, !tbaa !102
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !89
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %14 = load i8, ptr %13, align 1, !tbaa !75
  %15 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 13
  store i8 %14, ptr %15, align 1, !tbaa !75
  %16 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %16, ptr noundef %3) #16
  %17 = load ptr, ptr %5, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.uiLayoutRoot, ptr %17, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.uiBlock, ptr %19, i64 0, i32 7
  store ptr %3, ptr %20, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetActive(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 11
  store i8 %1, ptr %3, align 1, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetEnabled(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 12
  store i8 %1, ptr %3, align 4, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetRedAlert(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  store i8 %1, ptr %3, align 1, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetKeepAspect(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 14
  store i8 %1, ptr %3, align 2, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetAlignment(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  store i8 %1, ptr %3, align 1, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetScaleX(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8
  store float %1, ptr %3, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetScaleY(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8, i64 1
  store float %1, ptr %3, align 4, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @uiLayoutGetActive(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 11
  %3 = load i8, ptr %2, align 1, !tbaa !101
  ret i8 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @uiLayoutGetEnabled(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 12
  %3 = load i8, ptr %2, align 4, !tbaa !102
  ret i8 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @uiLayoutGetRedAlert(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !75
  ret i8 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @uiLayoutGetKeepAspect(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 14
  %3 = load i8, ptr %2, align 2, !tbaa !201
  ret i8 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @uiLayoutGetAlignment(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %3 = load i8, ptr %2, align 1, !tbaa !73
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @uiLayoutGetWidth(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !97
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @uiLayoutGetScaleX(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8
  %3 = load float, ptr %2, align 8, !tbaa !202
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @uiLayoutGetScaleY(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8, i64 1
  %3 = load float, ptr %2, align 4, !tbaa !202
  ret float %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiBlockLayout(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 80, ptr noundef nonnull @.str.27) #16
  %12 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 2
  store i32 %2, ptr %12, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 9
  store ptr %8, ptr %13, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 10
  store ptr %0, ptr %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 6
  store i32 %7, ptr %15, align 8, !tbaa !203
  %16 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 3
  store i32 1, ptr %16, align 4, !tbaa !81
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 88, ptr noundef nonnull @.str.28) #16
  %19 = getelementptr inbounds %struct.uiItem, ptr %18, i64 0, i32 2
  store i32 10, ptr %19, align 8, !tbaa !82
  %20 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 4
  store i32 %3, ptr %20, align 8, !tbaa !204
  %21 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 5
  store i32 %4, ptr %21, align 4, !tbaa !205
  %22 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 1
  store ptr %11, ptr %22, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.uiStyle, ptr %8, i64 0, i32 11
  %24 = load i16, ptr %23, align 2, !tbaa !206
  %25 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 9
  store i16 %24, ptr %25, align 8, !tbaa !104
  %26 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 11
  store i8 1, ptr %26, align 1, !tbaa !101
  %27 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 12
  store i8 1, ptr %27, align 4, !tbaa !102
  %28 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !89
  switch i32 %2, label %30 [
    i32 4, label %29
    i32 2, label %29
  ]

29:                                               ; preds = %9, %9
  store i16 0, ptr %25, align 8, !tbaa !104
  br label %30

30:                                               ; preds = %9, %29
  %31 = icmp eq i32 %1, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 7
  store i32 %5, ptr %33, align 4, !tbaa !207
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %35 = sext i16 %34 to i32
  %36 = mul nsw i32 %35, %6
  %37 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 5
  store i32 %36, ptr %37, align 4, !tbaa !208
  br label %44

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 6
  store i32 %5, ptr %39, align 8, !tbaa !97
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %41 = sext i16 %40 to i32
  %42 = mul nsw i32 %41, %6
  %43 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 4
  store i32 %42, ptr %43, align 8, !tbaa !209
  br label %44

44:                                               ; preds = %38, %32
  %45 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 7
  store ptr %18, ptr %45, align 8, !tbaa !64
  %46 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 11
  store ptr %18, ptr %46, align 8, !tbaa !116
  %47 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 6
  tail call void @BLI_addtail(ptr noundef nonnull %47, ptr noundef %11) #16
  %48 = load i32, ptr %15, align 8, !tbaa !203
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %14, align 8, !tbaa !58
  %52 = getelementptr inbounds %struct.uiBlock, ptr %51, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !64
  %54 = load ptr, ptr %46, align 8, !tbaa !116
  store ptr %54, ptr %52, align 8, !tbaa !64
  %55 = trunc i32 %48 to i16
  %56 = tail call ptr @uiDefBut(ptr noundef %51, i32 noundef 10752, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i16 noundef signext %55, i16 noundef signext %55, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  store ptr %53, ptr %52, align 8, !tbaa !64
  br label %57

57:                                               ; preds = %44, %50
  ret ptr %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @uiLayoutGetOperatorContext(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !81
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_layout_add_but(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str.29) #16
  %5 = getelementptr inbounds %struct.uiItem, ptr %4, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !196
  %6 = getelementptr inbounds %struct.uiButtonItem, ptr %4, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !198
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %4) #16
  %8 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 32
  store ptr %9, ptr %12, align 8, !tbaa !210
  %13 = getelementptr inbounds %struct.bContextStore, ptr %9, i64 0, i32 3
  store i8 1, ptr %13, align 8, !tbaa !211
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @uiLayoutSetOperatorContext(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.uiLayoutRoot, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @uiLayoutSetFunc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 7
  store ptr %1, ptr %6, align 8, !tbaa !213
  %7 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 8
  store ptr %2, ptr %7, align 8, !tbaa !214
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiBlockLayoutResolve(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !118
  br label %6

6:                                                ; preds = %5, %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store i32 0, ptr %2, align 4, !tbaa !118
  br label %9

9:                                                ; preds = %8, %6
  %10 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 7
  store ptr null, ptr %10, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %9, %47
  %15 = phi ptr [ %49, %47 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.uiLayoutRoot, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !203
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.uiLayoutRoot, ptr %15, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.uiBlock, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.uiLayoutRoot, ptr %15, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !116
  store ptr %25, ptr %22, align 8, !tbaa !64
  %26 = trunc i32 %17 to i16
  %27 = tail call ptr @uiDefBut(ptr noundef %21, i32 noundef 10752, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i16 noundef signext %26, i16 noundef signext %26, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16
  store ptr %23, ptr %22, align 8, !tbaa !64
  br label %28

28:                                               ; preds = %14, %19
  %29 = getelementptr inbounds %struct.uiLayoutRoot, ptr %15, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  %31 = getelementptr inbounds %struct.uiLayout, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = getelementptr inbounds %struct.uiLayoutRoot, ptr %32, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !213
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.uiLayoutRoot, ptr %32, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !214
  tail call void @uiBlockSetHandleFunc(ptr noundef %0, ptr noundef nonnull %34, ptr noundef %38) #16
  br label %39

39:                                               ; preds = %36, %28
  tail call fastcc void @ui_item_estimate(ptr noundef %30)
  tail call fastcc void @ui_item_layout(ptr noundef %30)
  br i1 %4, label %43, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.uiLayout, ptr %30, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !204
  store i32 %42, ptr %1, align 4, !tbaa !118
  br label %43

43:                                               ; preds = %40, %39
  br i1 %7, label %47, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.uiLayout, ptr %30, i64 0, i32 5
  %46 = load i32, ptr %45, align 4, !tbaa !205
  store i32 %46, ptr %2, align 4, !tbaa !118
  br label %47

47:                                               ; preds = %43, %44
  %48 = load ptr, ptr %29, align 8, !tbaa !116
  tail call fastcc void @ui_layout_free(ptr noundef %48)
  %49 = load ptr, ptr %15, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %14, !llvm.loop !215

51:                                               ; preds = %47, %9
  tail call void @BLI_freelistN(ptr noundef nonnull %11) #16
  tail call void @UI_template_fix_linking() #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_layout_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %14
  %6 = phi ptr [ %7, %14 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !217
  %8 = getelementptr inbounds %struct.uiItem, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !218
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %6) #16
  br label %14

13:                                               ; preds = %5
  tail call fastcc void @ui_layout_free(ptr noundef nonnull %6)
  br label %14

14:                                               ; preds = %11, %13
  %15 = icmp eq ptr %7, null
  br i1 %15, label %16, label %5, !llvm.loop !219

16:                                               ; preds = %14, %1
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef %0) #16
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @UI_template_fix_linking() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiLayoutSetContextPointer(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 8
  %9 = tail call ptr @CTX_store_add(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2) #16
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !89
  ret void
}

declare ptr @CTX_store_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiLayoutContextCopy(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.uiLayoutRoot, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 8
  %8 = tail call ptr @CTX_store_add_all(ptr noundef nonnull %7, ptr noundef %1) #16
  %9 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !89
  ret void
}

declare ptr @CTX_store_add_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @uiLayoutIntrospect(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_dynstr_new() #16
  %3 = load ptr, ptr @str, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call fastcc void @ui_intro_items(ptr noundef %2, ptr noundef nonnull %8)
  %9 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %2) #16
  store ptr %9, ptr @str, align 8, !tbaa !34
  tail call void @BLI_dynstr_free(ptr noundef %2) #16
  %10 = load ptr, ptr @str, align 8, !tbaa !34
  ret ptr %10
}

declare ptr @BLI_dynstr_new() local_unnamed_addr #2

declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #2

declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = alloca %union.IDPropertyTemplate, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !220
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %16 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %7, ptr noundef nonnull @.str.1) #16
  store ptr %16, ptr %12, align 8, !tbaa !220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  br label %17

17:                                               ; preds = %15, %6
  %18 = zext i16 %5 to i32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !222
  %24 = getelementptr inbounds %struct.wmOperatorType, ptr %23, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = call ptr @RNA_struct_ui_name(ptr noundef %25) #16
  %27 = call fastcc ptr @uiItemL_(ptr noundef %1, ptr noundef %26, i32 noundef 0)
  br label %28

28:                                               ; preds = %21, %17
  %29 = call zeroext i8 @WM_operator_repeat_check(ptr noundef %0, ptr noundef %2) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct.uiLayoutRoot, ptr %33, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  call void @uiBlockSetButLock(ptr noundef %35, i8 noundef zeroext 1, ptr noundef nonnull @.str.30) #16
  %36 = call fastcc ptr @uiItemL_(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef 0)
  br label %37

37:                                               ; preds = %31, %28
  %38 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !222
  %40 = getelementptr inbounds %struct.wmOperatorType, ptr %39, i64 0, i32 19
  %41 = load i16, ptr %40, align 8, !tbaa !223
  %42 = and i16 %41, 32
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %168, label %44

44:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  %45 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = getelementptr inbounds %struct.uiLayoutRoot, ptr %46, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  %49 = getelementptr inbounds %struct.uiBlock, ptr %48, i64 0, i32 47
  store ptr %2, ptr %49, align 8, !tbaa !224
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %51 = call ptr %50(i64 noundef 88, ptr noundef nonnull @.str.20) #16
  %52 = getelementptr inbounds %struct.uiItem, ptr %51, i64 0, i32 2
  store i32 1, ptr %52, align 8, !tbaa !82
  %53 = load ptr, ptr %45, align 8, !tbaa !54
  %54 = getelementptr inbounds %struct.uiLayout, ptr %51, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !54
  %55 = getelementptr inbounds %struct.uiLayout, ptr %51, i64 0, i32 10
  store i8 1, ptr %55, align 2, !tbaa !100
  %56 = getelementptr inbounds %struct.uiLayout, ptr %51, i64 0, i32 11
  store i8 1, ptr %56, align 1, !tbaa !101
  %57 = getelementptr inbounds %struct.uiLayout, ptr %51, i64 0, i32 12
  store i8 1, ptr %57, align 4, !tbaa !102
  %58 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !89
  %60 = getelementptr inbounds %struct.uiLayout, ptr %51, i64 0, i32 2
  store ptr %59, ptr %60, align 8, !tbaa !89
  %61 = getelementptr inbounds %struct.uiLayout, ptr %51, i64 0, i32 9
  store i16 0, ptr %61, align 8, !tbaa !104
  %62 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 13
  %63 = load i8, ptr %62, align 1, !tbaa !75
  %64 = getelementptr inbounds %struct.uiLayout, ptr %51, i64 0, i32 13
  store i8 %63, ptr %64, align 1, !tbaa !75
  %65 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 6
  %66 = load i32, ptr %65, align 8, !tbaa !97
  %67 = getelementptr inbounds %struct.uiLayout, ptr %51, i64 0, i32 6
  store i32 %66, ptr %67, align 8, !tbaa !97
  %68 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %68, ptr noundef %51) #16
  %69 = load ptr, ptr %45, align 8, !tbaa !54
  %70 = getelementptr inbounds %struct.uiLayoutRoot, ptr %69, i64 0, i32 10
  %71 = load ptr, ptr %70, align 8, !tbaa !58
  %72 = getelementptr inbounds %struct.uiBlock, ptr %71, i64 0, i32 7
  store ptr %51, ptr %72, align 8, !tbaa !64
  %73 = call ptr @WM_menutype_find(ptr noundef nonnull @.str.32, i8 noundef zeroext 0) #16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %44
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.uiItemM, ptr noundef nonnull @.str.32) #16
  br label %86

76:                                               ; preds = %44
  %77 = getelementptr inbounds %struct.MenuType, ptr %73, i64 0, i32 3
  %78 = load ptr, ptr %54, align 8, !tbaa !54
  %79 = getelementptr inbounds %struct.uiLayoutRoot, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !63
  %81 = icmp eq i32 %80, 2
  %82 = select i1 %81, i32 77, i32 0
  %83 = getelementptr inbounds %struct.MenuType, ptr %73, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !159
  %85 = call fastcc ptr @ui_item_menu(ptr noundef %51, ptr noundef nonnull %77, i32 noundef %82, ptr noundef nonnull @ui_item_menutype_func, ptr noundef nonnull %73, ptr noundef null, ptr noundef %84, i8 noundef zeroext 0)
  br label %86

86:                                               ; preds = %75, %76
  call void @WM_operator_properties_create(ptr noundef nonnull %8, ptr noundef nonnull @.str.33) #16
  %87 = load ptr, ptr %38, align 8, !tbaa !222
  %88 = getelementptr inbounds %struct.wmOperatorType, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !174
  call void @RNA_string_set(ptr noundef nonnull %8, ptr noundef nonnull @.str.34, ptr noundef %89) #16
  %90 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  %92 = call ptr @WM_operatortype_find(ptr noundef nonnull @.str.33, i8 noundef zeroext 0) #16, !noalias !225
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %126

94:                                               ; preds = %86
  %95 = load ptr, ptr %54, align 8, !tbaa !54, !noalias !225
  %96 = getelementptr inbounds %struct.uiLayoutRoot, ptr %95, i64 0, i32 10
  %97 = load ptr, ptr %96, align 8, !tbaa !58, !noalias !225
  %98 = getelementptr inbounds %struct.uiBlock, ptr %97, i64 0, i32 7
  store ptr %51, ptr %98, align 8, !tbaa !64, !noalias !225
  %99 = getelementptr inbounds %struct.uiLayoutRoot, ptr %95, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !63, !noalias !225
  switch i32 %100, label %101 [
    i32 1, label %105
    i32 4, label %105
  ]

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.uiLayout, ptr %51, i64 0, i32 15
  %103 = load i8, ptr %102, align 1, !tbaa !73, !noalias !225
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %101, %94, %94
  %106 = call i32 @UI_GetStringWidth(ptr noundef nonnull @.str.33) #16, !noalias !225
  %107 = sitofp i32 %106 to float
  %108 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69, !noalias !225
  %109 = sitofp i16 %108 to float
  %110 = call float @llvm.fmuladd.f32(float %109, float 1.500000e+00, float %107)
  %111 = fptosi float %110 to i32
  br label %116

112:                                              ; preds = %101
  %113 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69, !noalias !225
  %114 = zext i16 %113 to i32
  %115 = mul nuw nsw i32 %114, 10
  br label %116

116:                                              ; preds = %105, %112
  %117 = phi i32 [ %111, %105 ], [ %115, %112 ]
  %118 = trunc i32 %117 to i16
  %119 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69, !noalias !225
  %120 = call ptr @uiDefBut(ptr noundef %97, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, i16 noundef signext %118, i16 noundef signext %119, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16, !noalias !225
  %121 = getelementptr inbounds %struct.uiBut, ptr %120, i64 0, i32 2
  %122 = load i32, ptr %121, align 8, !tbaa !49, !noalias !225
  %123 = or i32 %122, 2048
  store i32 %123, ptr %121, align 8, !tbaa !49, !noalias !225
  %124 = getelementptr inbounds %struct.uiBut, ptr %120, i64 0, i32 45
  store i8 1, ptr %124, align 4, !tbaa !77, !noalias !225
  %125 = getelementptr inbounds %struct.uiBut, ptr %120, i64 0, i32 43
  store ptr @.str, ptr %125, align 8, !tbaa !78, !noalias !225
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemFullO, ptr noundef nonnull @.str.33) #16, !noalias !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !52
  br label %127

126:                                              ; preds = %86
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef %51, ptr noundef nonnull %92, ptr noundef nonnull @.str, i32 noundef 31, ptr noundef %91, i32 noundef 0, i32 noundef 0)
  br label %127

127:                                              ; preds = %116, %126
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  call void @WM_operator_properties_create(ptr noundef nonnull %8, ptr noundef nonnull @.str.33) #16
  %128 = load ptr, ptr %38, align 8, !tbaa !222
  %129 = getelementptr inbounds %struct.wmOperatorType, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !174
  call void @RNA_string_set(ptr noundef nonnull %8, ptr noundef nonnull @.str.34, ptr noundef %130) #16
  call void @RNA_boolean_set(ptr noundef nonnull %8, ptr noundef nonnull @.str.35, i32 noundef 1) #16
  %131 = load ptr, ptr %90, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %132 = call ptr @WM_operatortype_find(ptr noundef nonnull @.str.33, i8 noundef zeroext 0) #16, !noalias !228
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %166

134:                                              ; preds = %127
  %135 = load ptr, ptr %54, align 8, !tbaa !54, !noalias !228
  %136 = getelementptr inbounds %struct.uiLayoutRoot, ptr %135, i64 0, i32 10
  %137 = load ptr, ptr %136, align 8, !tbaa !58, !noalias !228
  %138 = getelementptr inbounds %struct.uiBlock, ptr %137, i64 0, i32 7
  store ptr %51, ptr %138, align 8, !tbaa !64, !noalias !228
  %139 = getelementptr inbounds %struct.uiLayoutRoot, ptr %135, i64 0, i32 2
  %140 = load i32, ptr %139, align 8, !tbaa !63, !noalias !228
  switch i32 %140, label %141 [
    i32 1, label %145
    i32 4, label %145
  ]

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.uiLayout, ptr %51, i64 0, i32 15
  %143 = load i8, ptr %142, align 1, !tbaa !73, !noalias !228
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %141, %134, %134
  %146 = call i32 @UI_GetStringWidth(ptr noundef nonnull @.str.33) #16, !noalias !228
  %147 = sitofp i32 %146 to float
  %148 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69, !noalias !228
  %149 = sitofp i16 %148 to float
  %150 = call float @llvm.fmuladd.f32(float %149, float 1.500000e+00, float %147)
  %151 = fptosi float %150 to i32
  br label %156

152:                                              ; preds = %141
  %153 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69, !noalias !228
  %154 = zext i16 %153 to i32
  %155 = mul nuw nsw i32 %154, 10
  br label %156

156:                                              ; preds = %145, %152
  %157 = phi i32 [ %151, %145 ], [ %155, %152 ]
  %158 = trunc i32 %157 to i16
  %159 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69, !noalias !228
  %160 = call ptr @uiDefBut(ptr noundef %137, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, i16 noundef signext %158, i16 noundef signext %159, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #16, !noalias !228
  %161 = getelementptr inbounds %struct.uiBut, ptr %160, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !49, !noalias !228
  %163 = or i32 %162, 2048
  store i32 %163, ptr %161, align 8, !tbaa !49, !noalias !228
  %164 = getelementptr inbounds %struct.uiBut, ptr %160, i64 0, i32 45
  store i8 1, ptr %164, align 4, !tbaa !77, !noalias !228
  %165 = getelementptr inbounds %struct.uiBut, ptr %160, i64 0, i32 43
  store ptr @.str, ptr %165, align 8, !tbaa !78, !noalias !228
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemFullO, ptr noundef nonnull @.str.33) #16, !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !52
  br label %167

166:                                              ; preds = %127
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %10, ptr noundef %51, ptr noundef nonnull %132, ptr noundef nonnull @.str, i32 noundef 32, ptr noundef %131, i32 noundef 0, i32 noundef 0)
  br label %167

167:                                              ; preds = %156, %166
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %168

168:                                              ; preds = %167, %37
  %169 = load ptr, ptr %38, align 8, !tbaa !222
  %170 = getelementptr inbounds %struct.wmOperatorType, ptr %169, i64 0, i32 10
  %171 = load ptr, ptr %170, align 8, !tbaa !231
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 11
  store ptr %1, ptr %174, align 8, !tbaa !232
  call void %171(ptr noundef %0, ptr noundef %2) #16
  store ptr null, ptr %174, align 8, !tbaa !232
  br label %189

175:                                              ; preds = %168
  %176 = call ptr @CTX_wm_manager(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #16
  %177 = load ptr, ptr %38, align 8, !tbaa !222
  %178 = getelementptr inbounds %struct.wmOperatorType, ptr %177, i64 0, i32 11
  %179 = load ptr, ptr %178, align 8, !tbaa !60
  %180 = load ptr, ptr %12, align 8, !tbaa !220
  call void @RNA_pointer_create(ptr noundef %176, ptr noundef %179, ptr noundef %180, ptr noundef nonnull %11) #16
  %181 = call i32 @uiDefAutoButsRNA(ptr noundef %1, ptr noundef nonnull %11, ptr noundef %3, i8 noundef zeroext %4) #16
  %182 = icmp ne i32 %181, 0
  %183 = and i32 %18, 2
  %184 = icmp eq i32 %183, 0
  %185 = or i1 %184, %182
  br i1 %185, label %188, label %186

186:                                              ; preds = %175
  %187 = call fastcc ptr @uiItemL_(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef 0)
  br label %188

188:                                              ; preds = %186, %175
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #16
  br label %189

189:                                              ; preds = %188, %173
  %190 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !54
  %192 = getelementptr inbounds %struct.uiLayoutRoot, ptr %191, i64 0, i32 10
  %193 = load ptr, ptr %192, align 8, !tbaa !58
  %194 = getelementptr inbounds %struct.uiBlock, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !34
  %196 = icmp eq ptr %195, null
  br i1 %196, label %220, label %197

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.uiBlock, ptr %193, i64 0, i32 27
  %199 = load i32, ptr %198, align 8, !tbaa !113
  %200 = and i32 %199, 256
  %201 = icmp eq i32 %200, 0
  br label %202

202:                                              ; preds = %197, %217
  %203 = phi ptr [ %195, %197 ], [ %218, %217 ]
  call void @uiButClearFlag(ptr noundef nonnull %203, i32 noundef 524288) #16
  br i1 %201, label %217, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.uiBut, ptr %203, i64 0, i32 55
  %206 = load ptr, ptr %205, align 8, !tbaa !51
  %207 = load ptr, ptr %38, align 8, !tbaa !222
  %208 = getelementptr inbounds %struct.wmOperatorType, ptr %207, i64 0, i32 13
  %209 = load ptr, ptr %208, align 8, !tbaa !172
  %210 = icmp eq ptr %206, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.uiBut, ptr %203, i64 0, i32 4
  %213 = load i32, ptr %212, align 8, !tbaa !132
  %214 = icmp eq i32 %213, 3072
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = call ptr @CTX_wm_window(ptr noundef %0) #16
  call void @uiButSetFocusOnEnter(ptr noundef %216, ptr noundef nonnull %203) #16
  br label %217

217:                                              ; preds = %202, %215, %211, %204
  %218 = load ptr, ptr %203, align 8, !tbaa !34
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %202, !llvm.loop !233

220:                                              ; preds = %217, %189
  ret void
}

declare zeroext i8 @WM_operator_repeat_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetButLock(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiButClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiButSetFocusOnEnter(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @uiButGetMenuType(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 53
  %3 = load ptr, ptr %2, align 8, !tbaa !234
  %4 = icmp eq ptr %3, @ui_item_menutype_func
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare zeroext i8 @RNA_enum_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #9

declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ui_layer_but_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = ptrtoint ptr %2 to i64
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !235
  %12 = getelementptr inbounds %struct.wmEvent, ptr %11, i64 0, i32 17
  %13 = load i16, ptr %12, align 8, !tbaa !237
  %14 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %5, ptr noundef %7) #16
  %15 = icmp eq i16 %13, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %5, ptr noundef %7, i32 noundef %9, i32 noundef 1) #16
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %16, %22
  %19 = phi i32 [ %23, %22 ], [ 0, %16 ]
  %20 = icmp eq i32 %19, %9
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %5, ptr noundef %7, i32 noundef %19, i32 noundef 0) #16
  br label %22

22:                                               ; preds = %18, %21
  %23 = add nuw nsw i32 %19, 1
  %24 = icmp eq i32 %23, %14
  br i1 %24, label %25, label %18, !llvm.loop !239

25:                                               ; preds = %22, %16
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %7) #16
  %26 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %27 = load ptr, ptr %26, align 8, !tbaa !240
  %28 = getelementptr inbounds %struct.uiBlock, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25, %31
  %32 = phi ptr [ %33, %31 ], [ %29, %25 ]
  tail call void @ui_check_but(ptr noundef nonnull %32) #16
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %31, !llvm.loop !241

35:                                               ; preds = %31, %25, %3
  ret void
}

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_array_dimension(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_boolean_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_array_item_char(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiButSetUnitType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_property_boolean_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ui_check_but(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ui_item_enum_expand_handle(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !235
  %7 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 17
  %8 = load i16, ptr %7, align 8, !tbaa !237
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = ptrtoint ptr %2 to i64
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = tail call i32 @RNA_property_enum_get(ptr noundef nonnull %13, ptr noundef %15) #16
  %17 = and i32 %16, %12
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %12, i32 %17
  %20 = load ptr, ptr %14, align 8, !tbaa !51
  tail call void @RNA_property_enum_set(ptr noundef nonnull %13, ptr noundef %20, i32 noundef %19) #16
  br label %21

21:                                               ; preds = %10, %3
  ret void
}

declare ptr @uiDefIconButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_keymap_item_to_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ui_keymap_but_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 50
  %6 = load i16, ptr %5, align 2, !tbaa !242
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  tail call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.41, i32 noundef %8) #16
  %9 = load i16, ptr %5, align 2, !tbaa !242
  %10 = lshr i16 %9, 1
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  tail call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.42, i32 noundef %12) #16
  %13 = load i16, ptr %5, align 2, !tbaa !242
  %14 = lshr i16 %13, 2
  %15 = and i16 %14, 1
  %16 = zext nneg i16 %15 to i32
  tail call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.43, i32 noundef %16) #16
  %17 = load i16, ptr %5, align 2, !tbaa !242
  %18 = lshr i16 %17, 3
  %19 = and i16 %18, 1
  %20 = zext nneg i16 %19 to i32
  tail call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.44, i32 noundef %20) #16
  ret void
}

declare void @RNA_main_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_pointer_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

declare i32 @ui_id_icon_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @sort_search_items_list(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.CollItemSearch, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.CollItemSearch, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = tail call i32 @BLI_strcasecmp(ptr noundef %4, ptr noundef %6) #16
  %8 = icmp sgt i32 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

declare zeroext i8 @uiSearchItemAdd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefIconTextMenuBut(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefIconMenuBut(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefMenuBut(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @uiButSetMenuFromPulldown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

declare void @CTX_store_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetDirection(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_item_estimate(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !218
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %567, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %11, %9 ], [ %7, %5 ]
  tail call fastcc void @ui_item_estimate(ptr noundef nonnull %10)
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %9, !llvm.loop !243

13:                                               ; preds = %9, %5
  %14 = load ptr, ptr %6, align 8, !tbaa !244
  %15 = icmp eq ptr %14, null
  br i1 %15, label %567, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8
  %18 = load float, ptr %17, align 8, !tbaa !202
  %19 = fcmp une float %18, 0.000000e+00
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !202
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %24, label %117

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %117, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8, i64 1
  br label %30

30:                                               ; preds = %28, %113
  %31 = phi ptr [ %26, %28 ], [ %115, %113 ]
  %32 = getelementptr inbounds %struct.uiItem, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !218
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.uiButtonItem, ptr %31, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !198
  %38 = getelementptr inbounds %struct.uiBut, ptr %37, i64 0, i32 18
  %39 = getelementptr inbounds %struct.uiBut, ptr %37, i64 0, i32 18, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !245
  %41 = load float, ptr %38, align 4, !tbaa !246
  %42 = fsub float %40, %41
  %43 = fptosi float %42 to i32
  %44 = getelementptr inbounds %struct.uiBut, ptr %37, i64 0, i32 18, i32 3
  %45 = load float, ptr %44, align 4, !tbaa !247
  %46 = getelementptr inbounds %struct.uiBut, ptr %37, i64 0, i32 18, i32 2
  %47 = load float, ptr %46, align 4, !tbaa !248
  %48 = fsub float %45, %47
  %49 = fptosi float %48 to i32
  br label %55

50:                                               ; preds = %30
  %51 = getelementptr inbounds %struct.uiLayout, ptr %31, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !97
  %53 = getelementptr inbounds %struct.uiLayout, ptr %31, i64 0, i32 7
  %54 = load i32, ptr %53, align 4, !tbaa !207
  br label %55

55:                                               ; preds = %50, %35
  %56 = phi i32 [ %43, %35 ], [ %52, %50 ]
  %57 = phi i32 [ %49, %35 ], [ %54, %50 ]
  br i1 %34, label %58, label %67

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.uiButtonItem, ptr %31, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !198
  %61 = getelementptr inbounds %struct.uiBut, ptr %60, i64 0, i32 18
  %62 = load float, ptr %61, align 8, !tbaa !249
  %63 = fptosi float %62 to i32
  %64 = getelementptr inbounds %struct.uiBut, ptr %60, i64 0, i32 18, i32 2
  %65 = load float, ptr %64, align 8, !tbaa !250
  %66 = fptosi float %65 to i32
  br label %67

67:                                               ; preds = %58, %55
  %68 = phi i32 [ %63, %58 ], [ 0, %55 ]
  %69 = phi i32 [ %66, %58 ], [ 0, %55 ]
  %70 = load float, ptr %17, align 4, !tbaa !202
  %71 = fcmp une float %70, 0.000000e+00
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = sitofp i32 %68 to float
  %74 = fmul float %70, %73
  %75 = fptosi float %74 to i32
  %76 = sitofp i32 %56 to float
  %77 = fmul float %70, %76
  %78 = fptosi float %77 to i32
  br label %79

79:                                               ; preds = %72, %67
  %80 = phi i32 [ %75, %72 ], [ %68, %67 ]
  %81 = phi i32 [ %78, %72 ], [ %56, %67 ]
  %82 = load float, ptr %29, align 4, !tbaa !202
  %83 = fcmp une float %82, 0.000000e+00
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = sitofp i32 %69 to float
  %86 = fmul float %82, %85
  %87 = fptosi float %86 to i32
  %88 = sitofp i32 %57 to float
  %89 = fmul float %82, %88
  %90 = fptosi float %89 to i32
  br label %91

91:                                               ; preds = %84, %79
  %92 = phi i32 [ %87, %84 ], [ %69, %79 ]
  %93 = phi i32 [ %90, %84 ], [ %57, %79 ]
  br i1 %34, label %94, label %107

94:                                               ; preds = %91
  %95 = sitofp i32 %80 to float
  %96 = getelementptr inbounds %struct.uiButtonItem, ptr %31, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !198
  %98 = getelementptr inbounds %struct.uiBut, ptr %97, i64 0, i32 18
  store float %95, ptr %98, align 8, !tbaa !249
  %99 = sitofp i32 %92 to float
  %100 = getelementptr inbounds %struct.uiBut, ptr %97, i64 0, i32 18, i32 2
  store float %99, ptr %100, align 8, !tbaa !250
  %101 = add nsw i32 %81, %80
  %102 = sitofp i32 %101 to float
  %103 = getelementptr inbounds %struct.uiBut, ptr %97, i64 0, i32 18, i32 1
  store float %102, ptr %103, align 4, !tbaa !251
  %104 = add nsw i32 %93, %92
  %105 = sitofp i32 %104 to float
  %106 = getelementptr inbounds %struct.uiBut, ptr %97, i64 0, i32 18, i32 3
  store float %105, ptr %106, align 4, !tbaa !252
  tail call void @ui_check_but(ptr noundef %97) #16
  br label %113

107:                                              ; preds = %91
  %108 = getelementptr inbounds %struct.uiLayout, ptr %31, i64 0, i32 4
  store i32 %80, ptr %108, align 8, !tbaa !204
  %109 = add nsw i32 %93, %92
  %110 = getelementptr inbounds %struct.uiLayout, ptr %31, i64 0, i32 5
  store i32 %109, ptr %110, align 4, !tbaa !205
  %111 = getelementptr inbounds %struct.uiLayout, ptr %31, i64 0, i32 6
  store i32 %81, ptr %111, align 8, !tbaa !97
  %112 = getelementptr inbounds %struct.uiLayout, ptr %31, i64 0, i32 7
  store i32 %93, ptr %112, align 4, !tbaa !207
  br label %113

113:                                              ; preds = %94, %107
  %114 = getelementptr inbounds %struct.uiItem, ptr %31, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !34
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %30, !llvm.loop !253

117:                                              ; preds = %113, %24, %20
  %118 = load i32, ptr %2, align 8, !tbaa !82
  switch i32 %118, label %567 [
    i32 2, label %119
    i32 3, label %166
    i32 1, label %306
    i32 5, label %353
    i32 8, label %526
    i32 6, label %413
    i32 7, label %479
  ]

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 0, ptr %120, align 8, !tbaa !97
  %121 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 0, ptr %121, align 4, !tbaa !207
  %122 = load ptr, ptr %6, align 8, !tbaa !34
  %123 = icmp eq ptr %122, null
  br i1 %123, label %567, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  br label %126

126:                                              ; preds = %164, %124
  %127 = phi i32 [ 0, %124 ], [ %165, %164 ]
  %128 = phi i32 [ 0, %124 ], [ %156, %164 ]
  %129 = phi ptr [ %122, %124 ], [ %158, %164 ]
  %130 = getelementptr inbounds %struct.uiItem, ptr %129, i64 0, i32 2
  %131 = load i32, ptr %130, align 8, !tbaa !218
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.uiButtonItem, ptr %129, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !198
  %136 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 18
  %137 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 18, i32 1
  %138 = load float, ptr %137, align 4, !tbaa !245
  %139 = load float, ptr %136, align 4, !tbaa !246
  %140 = fsub float %138, %139
  %141 = fptosi float %140 to i32
  %142 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 18, i32 3
  %143 = load float, ptr %142, align 4, !tbaa !247
  %144 = getelementptr inbounds %struct.uiBut, ptr %135, i64 0, i32 18, i32 2
  %145 = load float, ptr %144, align 4, !tbaa !248
  %146 = fsub float %143, %145
  %147 = fptosi float %146 to i32
  br label %153

148:                                              ; preds = %126
  %149 = getelementptr inbounds %struct.uiLayout, ptr %129, i64 0, i32 6
  %150 = load i32, ptr %149, align 8, !tbaa !97
  %151 = getelementptr inbounds %struct.uiLayout, ptr %129, i64 0, i32 7
  %152 = load i32, ptr %151, align 4, !tbaa !207
  br label %153

153:                                              ; preds = %148, %133
  %154 = phi i32 [ %141, %133 ], [ %150, %148 ]
  %155 = phi i32 [ %147, %133 ], [ %152, %148 ]
  %156 = tail call i32 @llvm.smax.i32(i32 %128, i32 %154)
  store i32 %156, ptr %120, align 8, !tbaa !97
  %157 = add nsw i32 %155, %127
  store i32 %157, ptr %121, align 4, !tbaa !207
  %158 = load ptr, ptr %129, align 8, !tbaa !34
  %159 = icmp eq ptr %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %153
  %161 = load i16, ptr %125, align 8, !tbaa !104
  %162 = sext i16 %161 to i32
  %163 = add nsw i32 %157, %162
  store i32 %163, ptr %121, align 4, !tbaa !207
  br label %164

164:                                              ; preds = %160, %153
  %165 = phi i32 [ %157, %153 ], [ %163, %160 ]
  br i1 %159, label %567, label %126, !llvm.loop !254

166:                                              ; preds = %117
  %167 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !54
  %169 = getelementptr inbounds %struct.uiLayoutRoot, ptr %168, i64 0, i32 9
  %170 = load ptr, ptr %169, align 8, !tbaa !91
  %171 = load ptr, ptr %6, align 8, !tbaa !34
  %172 = icmp eq ptr %171, null
  br i1 %172, label %209, label %173

173:                                              ; preds = %166, %201
  %174 = phi ptr [ %207, %201 ], [ %171, %166 ]
  %175 = phi i32 [ %206, %201 ], [ 0, %166 ]
  %176 = phi i32 [ %205, %201 ], [ 0, %166 ]
  %177 = phi i32 [ %204, %201 ], [ 0, %166 ]
  %178 = getelementptr inbounds %struct.uiItem, ptr %174, i64 0, i32 2
  %179 = load i32, ptr %178, align 8, !tbaa !218
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %196

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.uiButtonItem, ptr %174, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !198
  %184 = getelementptr inbounds %struct.uiBut, ptr %183, i64 0, i32 18
  %185 = getelementptr inbounds %struct.uiBut, ptr %183, i64 0, i32 18, i32 1
  %186 = load float, ptr %185, align 4, !tbaa !245
  %187 = load float, ptr %184, align 4, !tbaa !246
  %188 = fsub float %186, %187
  %189 = fptosi float %188 to i32
  %190 = getelementptr inbounds %struct.uiBut, ptr %183, i64 0, i32 18, i32 3
  %191 = load float, ptr %190, align 4, !tbaa !247
  %192 = getelementptr inbounds %struct.uiBut, ptr %183, i64 0, i32 18, i32 2
  %193 = load float, ptr %192, align 4, !tbaa !248
  %194 = fsub float %191, %193
  %195 = fptosi float %194 to i32
  br label %201

196:                                              ; preds = %173
  %197 = getelementptr inbounds %struct.uiLayout, ptr %174, i64 0, i32 6
  %198 = load i32, ptr %197, align 8, !tbaa !97
  %199 = getelementptr inbounds %struct.uiLayout, ptr %174, i64 0, i32 7
  %200 = load i32, ptr %199, align 4, !tbaa !207
  br label %201

201:                                              ; preds = %196, %181
  %202 = phi i32 [ %189, %181 ], [ %198, %196 ]
  %203 = phi i32 [ %195, %181 ], [ %200, %196 ]
  %204 = tail call i32 @llvm.smax.i32(i32 %177, i32 %202)
  %205 = add nsw i32 %203, %176
  %206 = add nuw nsw i32 %175, 1
  %207 = load ptr, ptr %174, align 8, !tbaa !34
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %173, !llvm.loop !255

209:                                              ; preds = %201, %166
  %210 = phi i32 [ 0, %166 ], [ %204, %201 ]
  %211 = phi i32 [ 0, %166 ], [ %205, %201 ]
  %212 = phi i32 [ 0, %166 ], [ %206, %201 ]
  %213 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 1
  %214 = load i32, ptr %213, align 8, !tbaa !185
  %215 = icmp slt i32 %214, 1
  br i1 %215, label %216, label %227

216:                                              ; preds = %209
  %217 = icmp eq i32 %210, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 2
  store i32 1, ptr %219, align 4, !tbaa !256
  br label %567

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.uiLayoutRoot, ptr %168, i64 0, i32 4
  %222 = load i32, ptr %221, align 8, !tbaa !209
  %223 = sdiv i32 %222, %210
  %224 = tail call i32 @llvm.smax.i32(i32 %223, i32 1)
  %225 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 2
  %226 = tail call i32 @llvm.smin.i32(i32 %224, i32 %212)
  store i32 %226, ptr %225, align 4, !tbaa !256
  br label %229

227:                                              ; preds = %209
  %228 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 2
  store i32 %214, ptr %228, align 4, !tbaa !256
  br label %229

229:                                              ; preds = %227, %220
  %230 = load ptr, ptr %6, align 8, !tbaa !34
  %231 = icmp eq ptr %230, null
  br i1 %231, label %298, label %232

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 2
  %234 = load i32, ptr %233, align 4, !tbaa !256
  %235 = sdiv i32 %211, %234
  %236 = getelementptr inbounds %struct.uiStyle, ptr %170, i64 0, i32 14
  %237 = load i16, ptr %236, align 8, !tbaa !103
  %238 = sext i16 %237 to i32
  %239 = add nsw i32 %234, -1
  %240 = sub nsw i32 0, %235
  %241 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  br label %242

242:                                              ; preds = %232, %290
  %243 = phi ptr [ %230, %232 ], [ %296, %290 ]
  %244 = phi i32 [ 0, %232 ], [ %295, %290 ]
  %245 = phi i32 [ 0, %232 ], [ %278, %290 ]
  %246 = phi i32 [ 0, %232 ], [ %294, %290 ]
  %247 = phi i32 [ 0, %232 ], [ %293, %290 ]
  %248 = phi i32 [ 0, %232 ], [ %292, %290 ]
  %249 = phi i32 [ 0, %232 ], [ %291, %290 ]
  %250 = getelementptr inbounds %struct.uiItem, ptr %243, i64 0, i32 2
  %251 = load i32, ptr %250, align 8, !tbaa !218
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %268

253:                                              ; preds = %242
  %254 = getelementptr inbounds %struct.uiButtonItem, ptr %243, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !198
  %256 = getelementptr inbounds %struct.uiBut, ptr %255, i64 0, i32 18
  %257 = getelementptr inbounds %struct.uiBut, ptr %255, i64 0, i32 18, i32 1
  %258 = load float, ptr %257, align 4, !tbaa !245
  %259 = load float, ptr %256, align 4, !tbaa !246
  %260 = fsub float %258, %259
  %261 = fptosi float %260 to i32
  %262 = getelementptr inbounds %struct.uiBut, ptr %255, i64 0, i32 18, i32 3
  %263 = load float, ptr %262, align 4, !tbaa !247
  %264 = getelementptr inbounds %struct.uiBut, ptr %255, i64 0, i32 18, i32 2
  %265 = load float, ptr %264, align 4, !tbaa !248
  %266 = fsub float %263, %265
  %267 = fptosi float %266 to i32
  br label %273

268:                                              ; preds = %242
  %269 = getelementptr inbounds %struct.uiLayout, ptr %243, i64 0, i32 6
  %270 = load i32, ptr %269, align 8, !tbaa !97
  %271 = getelementptr inbounds %struct.uiLayout, ptr %243, i64 0, i32 7
  %272 = load i32, ptr %271, align 4, !tbaa !207
  br label %273

273:                                              ; preds = %268, %253
  %274 = phi i32 [ %261, %253 ], [ %270, %268 ]
  %275 = phi i32 [ %267, %253 ], [ %272, %268 ]
  %276 = add i32 %275, %238
  %277 = sub i32 %247, %276
  %278 = tail call i32 @llvm.smin.i32(i32 %245, i32 %277)
  %279 = sub nsw i32 %246, %275
  %280 = tail call i32 @llvm.smax.i32(i32 %244, i32 %274)
  %281 = icmp sge i32 %249, %239
  %282 = icmp sgt i32 %279, %240
  %283 = select i1 %281, i1 true, i1 %282
  br i1 %283, label %290, label %284

284:                                              ; preds = %273
  %285 = load i16, ptr %241, align 8, !tbaa !104
  %286 = sext i16 %285 to i32
  %287 = add i32 %280, %248
  %288 = add i32 %287, %286
  %289 = add nsw i32 %249, 1
  br label %290

290:                                              ; preds = %284, %273
  %291 = phi i32 [ %289, %284 ], [ %249, %273 ]
  %292 = phi i32 [ %288, %284 ], [ %248, %273 ]
  %293 = phi i32 [ 0, %284 ], [ %277, %273 ]
  %294 = phi i32 [ 0, %284 ], [ %279, %273 ]
  %295 = phi i32 [ 0, %284 ], [ %280, %273 ]
  %296 = load ptr, ptr %243, align 8, !tbaa !34
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %242, !llvm.loop !257

298:                                              ; preds = %290, %229
  %299 = phi i32 [ 0, %229 ], [ %292, %290 ]
  %300 = phi i32 [ 0, %229 ], [ %278, %290 ]
  %301 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 %299, ptr %301, align 8, !tbaa !97
  %302 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %303 = load i32, ptr %302, align 4, !tbaa !205
  %304 = sub nsw i32 %303, %300
  %305 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %304, ptr %305, align 4, !tbaa !207
  br label %567

306:                                              ; preds = %117
  %307 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 0, ptr %307, align 8, !tbaa !97
  %308 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 0, ptr %308, align 4, !tbaa !207
  %309 = load ptr, ptr %6, align 8, !tbaa !34
  %310 = icmp eq ptr %309, null
  br i1 %310, label %567, label %311

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  br label %313

313:                                              ; preds = %351, %311
  %314 = phi i32 [ 0, %311 ], [ %344, %351 ]
  %315 = phi i32 [ 0, %311 ], [ %352, %351 ]
  %316 = phi ptr [ %309, %311 ], [ %345, %351 ]
  %317 = getelementptr inbounds %struct.uiItem, ptr %316, i64 0, i32 2
  %318 = load i32, ptr %317, align 8, !tbaa !218
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %335

320:                                              ; preds = %313
  %321 = getelementptr inbounds %struct.uiButtonItem, ptr %316, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !198
  %323 = getelementptr inbounds %struct.uiBut, ptr %322, i64 0, i32 18
  %324 = getelementptr inbounds %struct.uiBut, ptr %322, i64 0, i32 18, i32 1
  %325 = load float, ptr %324, align 4, !tbaa !245
  %326 = load float, ptr %323, align 4, !tbaa !246
  %327 = fsub float %325, %326
  %328 = fptosi float %327 to i32
  %329 = getelementptr inbounds %struct.uiBut, ptr %322, i64 0, i32 18, i32 3
  %330 = load float, ptr %329, align 4, !tbaa !247
  %331 = getelementptr inbounds %struct.uiBut, ptr %322, i64 0, i32 18, i32 2
  %332 = load float, ptr %331, align 4, !tbaa !248
  %333 = fsub float %330, %332
  %334 = fptosi float %333 to i32
  br label %340

335:                                              ; preds = %313
  %336 = getelementptr inbounds %struct.uiLayout, ptr %316, i64 0, i32 6
  %337 = load i32, ptr %336, align 8, !tbaa !97
  %338 = getelementptr inbounds %struct.uiLayout, ptr %316, i64 0, i32 7
  %339 = load i32, ptr %338, align 4, !tbaa !207
  br label %340

340:                                              ; preds = %335, %320
  %341 = phi i32 [ %328, %320 ], [ %337, %335 ]
  %342 = phi i32 [ %334, %320 ], [ %339, %335 ]
  %343 = add nsw i32 %341, %315
  store i32 %343, ptr %307, align 8, !tbaa !97
  %344 = tail call i32 @llvm.smax.i32(i32 %342, i32 %314)
  store i32 %344, ptr %308, align 4, !tbaa !207
  %345 = load ptr, ptr %316, align 8, !tbaa !34
  %346 = icmp eq ptr %345, null
  br i1 %346, label %351, label %347

347:                                              ; preds = %340
  %348 = load i16, ptr %312, align 8, !tbaa !104
  %349 = sext i16 %348 to i32
  %350 = add nsw i32 %343, %349
  store i32 %350, ptr %307, align 8, !tbaa !97
  br label %351

351:                                              ; preds = %347, %340
  %352 = phi i32 [ %343, %340 ], [ %350, %347 ]
  br i1 %346, label %567, label %313, !llvm.loop !258

353:                                              ; preds = %117
  %354 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !54
  %356 = getelementptr inbounds %struct.uiLayoutRoot, ptr %355, i64 0, i32 9
  %357 = load ptr, ptr %356, align 8, !tbaa !91
  %358 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 0, ptr %358, align 8, !tbaa !97
  %359 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 0, ptr %359, align 4, !tbaa !207
  %360 = load ptr, ptr %6, align 8, !tbaa !34
  %361 = icmp eq ptr %360, null
  br i1 %361, label %404, label %362

362:                                              ; preds = %353
  %363 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  br label %364

364:                                              ; preds = %402, %362
  %365 = phi i32 [ 0, %362 ], [ %403, %402 ]
  %366 = phi i32 [ 0, %362 ], [ %394, %402 ]
  %367 = phi ptr [ %360, %362 ], [ %396, %402 ]
  %368 = getelementptr inbounds %struct.uiItem, ptr %367, i64 0, i32 2
  %369 = load i32, ptr %368, align 8, !tbaa !218
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %386

371:                                              ; preds = %364
  %372 = getelementptr inbounds %struct.uiButtonItem, ptr %367, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !198
  %374 = getelementptr inbounds %struct.uiBut, ptr %373, i64 0, i32 18
  %375 = getelementptr inbounds %struct.uiBut, ptr %373, i64 0, i32 18, i32 1
  %376 = load float, ptr %375, align 4, !tbaa !245
  %377 = load float, ptr %374, align 4, !tbaa !246
  %378 = fsub float %376, %377
  %379 = fptosi float %378 to i32
  %380 = getelementptr inbounds %struct.uiBut, ptr %373, i64 0, i32 18, i32 3
  %381 = load float, ptr %380, align 4, !tbaa !247
  %382 = getelementptr inbounds %struct.uiBut, ptr %373, i64 0, i32 18, i32 2
  %383 = load float, ptr %382, align 4, !tbaa !248
  %384 = fsub float %381, %383
  %385 = fptosi float %384 to i32
  br label %391

386:                                              ; preds = %364
  %387 = getelementptr inbounds %struct.uiLayout, ptr %367, i64 0, i32 6
  %388 = load i32, ptr %387, align 8, !tbaa !97
  %389 = getelementptr inbounds %struct.uiLayout, ptr %367, i64 0, i32 7
  %390 = load i32, ptr %389, align 4, !tbaa !207
  br label %391

391:                                              ; preds = %386, %371
  %392 = phi i32 [ %379, %371 ], [ %388, %386 ]
  %393 = phi i32 [ %385, %371 ], [ %390, %386 ]
  %394 = tail call i32 @llvm.smax.i32(i32 %366, i32 %392)
  store i32 %394, ptr %358, align 8, !tbaa !97
  %395 = add nsw i32 %393, %365
  store i32 %395, ptr %359, align 4, !tbaa !207
  %396 = load ptr, ptr %367, align 8, !tbaa !34
  %397 = icmp eq ptr %396, null
  br i1 %397, label %402, label %398

398:                                              ; preds = %391
  %399 = load i16, ptr %363, align 8, !tbaa !104
  %400 = sext i16 %399 to i32
  %401 = add nsw i32 %395, %400
  store i32 %401, ptr %359, align 4, !tbaa !207
  br label %402

402:                                              ; preds = %398, %391
  %403 = phi i32 [ %395, %391 ], [ %401, %398 ]
  br i1 %397, label %404, label %364, !llvm.loop !254

404:                                              ; preds = %402, %353
  %405 = getelementptr inbounds %struct.uiStyle, ptr %357, i64 0, i32 12
  %406 = load i16, ptr %405, align 4, !tbaa !259
  %407 = sext i16 %406 to i32
  %408 = shl nsw i32 %407, 1
  %409 = load i32, ptr %358, align 8, !tbaa !97
  %410 = add nsw i32 %408, %409
  store i32 %410, ptr %358, align 8, !tbaa !97
  %411 = load i32, ptr %359, align 4, !tbaa !207
  %412 = add nsw i32 %411, %407
  store i32 %412, ptr %359, align 4, !tbaa !207
  br label %567

413:                                              ; preds = %117
  %414 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 0, ptr %414, align 8, !tbaa !97
  %415 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 0, ptr %415, align 4, !tbaa !207
  %416 = load ptr, ptr %6, align 8, !tbaa !34
  %417 = icmp eq ptr %416, null
  br i1 %417, label %474, label %418

418:                                              ; preds = %413
  %419 = load i32, ptr %414, align 8, !tbaa !97
  br label %420

420:                                              ; preds = %418, %461
  %421 = phi i32 [ %419, %418 ], [ %467, %461 ]
  %422 = phi ptr [ %416, %418 ], [ %470, %461 ]
  %423 = phi i32 [ 1000000, %418 ], [ %465, %461 ]
  %424 = phi i32 [ 1000000, %418 ], [ %464, %461 ]
  %425 = phi i32 [ 0, %418 ], [ %469, %461 ]
  %426 = getelementptr inbounds %struct.uiItem, ptr %422, i64 0, i32 2
  %427 = load i32, ptr %426, align 8, !tbaa !218
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %438

429:                                              ; preds = %420
  %430 = getelementptr inbounds %struct.uiButtonItem, ptr %422, i64 0, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !198
  %432 = getelementptr inbounds %struct.uiBut, ptr %431, i64 0, i32 18
  %433 = load float, ptr %432, align 8, !tbaa !249
  %434 = fptosi float %433 to i32
  %435 = getelementptr inbounds %struct.uiBut, ptr %431, i64 0, i32 18, i32 2
  %436 = load float, ptr %435, align 8, !tbaa !250
  %437 = fptosi float %436 to i32
  br label %438

438:                                              ; preds = %429, %420
  %439 = phi i32 [ %434, %429 ], [ 0, %420 ]
  %440 = phi i32 [ %437, %429 ], [ 0, %420 ]
  br i1 %428, label %441, label %456

441:                                              ; preds = %438
  %442 = getelementptr inbounds %struct.uiButtonItem, ptr %422, i64 0, i32 1
  %443 = load ptr, ptr %442, align 8, !tbaa !198
  %444 = getelementptr inbounds %struct.uiBut, ptr %443, i64 0, i32 18
  %445 = getelementptr inbounds %struct.uiBut, ptr %443, i64 0, i32 18, i32 1
  %446 = load float, ptr %445, align 4, !tbaa !245
  %447 = load float, ptr %444, align 4, !tbaa !246
  %448 = fsub float %446, %447
  %449 = fptosi float %448 to i32
  %450 = getelementptr inbounds %struct.uiBut, ptr %443, i64 0, i32 18, i32 3
  %451 = load float, ptr %450, align 4, !tbaa !247
  %452 = getelementptr inbounds %struct.uiBut, ptr %443, i64 0, i32 18, i32 2
  %453 = load float, ptr %452, align 4, !tbaa !248
  %454 = fsub float %451, %453
  %455 = fptosi float %454 to i32
  br label %461

456:                                              ; preds = %438
  %457 = getelementptr inbounds %struct.uiLayout, ptr %422, i64 0, i32 6
  %458 = load i32, ptr %457, align 8, !tbaa !97
  %459 = getelementptr inbounds %struct.uiLayout, ptr %422, i64 0, i32 7
  %460 = load i32, ptr %459, align 4, !tbaa !207
  br label %461

461:                                              ; preds = %456, %441
  %462 = phi i32 [ %449, %441 ], [ %458, %456 ]
  %463 = phi i32 [ %455, %441 ], [ %460, %456 ]
  %464 = tail call i32 @llvm.smin.i32(i32 %424, i32 %439)
  %465 = tail call i32 @llvm.smin.i32(i32 %423, i32 %440)
  %466 = add nsw i32 %462, %439
  %467 = tail call i32 @llvm.smax.i32(i32 %421, i32 %466)
  store i32 %467, ptr %414, align 8, !tbaa !97
  %468 = add nsw i32 %463, %440
  %469 = tail call i32 @llvm.smax.i32(i32 %425, i32 %468)
  store i32 %469, ptr %415, align 4, !tbaa !207
  %470 = load ptr, ptr %422, align 8, !tbaa !34
  %471 = icmp eq ptr %470, null
  br i1 %471, label %472, label %420, !llvm.loop !260

472:                                              ; preds = %461
  %473 = sub nsw i32 %469, %465
  br label %474

474:                                              ; preds = %472, %413
  %475 = phi i32 [ 1000000, %413 ], [ %464, %472 ]
  %476 = phi i32 [ -1000000, %413 ], [ %473, %472 ]
  %477 = load i32, ptr %414, align 8, !tbaa !97
  %478 = sub nsw i32 %477, %475
  store i32 %478, ptr %414, align 8, !tbaa !97
  store i32 %476, ptr %415, align 4, !tbaa !207
  br label %567

479:                                              ; preds = %117
  %480 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 0, ptr %480, align 8, !tbaa !97
  %481 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 0, ptr %481, align 4, !tbaa !207
  %482 = load ptr, ptr %6, align 8, !tbaa !34
  %483 = icmp eq ptr %482, null
  br i1 %483, label %567, label %484

484:                                              ; preds = %479
  %485 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  br label %486

486:                                              ; preds = %524, %484
  %487 = phi i32 [ 0, %484 ], [ %517, %524 ]
  %488 = phi i32 [ 0, %484 ], [ %525, %524 ]
  %489 = phi ptr [ %482, %484 ], [ %518, %524 ]
  %490 = getelementptr inbounds %struct.uiItem, ptr %489, i64 0, i32 2
  %491 = load i32, ptr %490, align 8, !tbaa !218
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %508

493:                                              ; preds = %486
  %494 = getelementptr inbounds %struct.uiButtonItem, ptr %489, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !198
  %496 = getelementptr inbounds %struct.uiBut, ptr %495, i64 0, i32 18
  %497 = getelementptr inbounds %struct.uiBut, ptr %495, i64 0, i32 18, i32 1
  %498 = load float, ptr %497, align 4, !tbaa !245
  %499 = load float, ptr %496, align 4, !tbaa !246
  %500 = fsub float %498, %499
  %501 = fptosi float %500 to i32
  %502 = getelementptr inbounds %struct.uiBut, ptr %495, i64 0, i32 18, i32 3
  %503 = load float, ptr %502, align 4, !tbaa !247
  %504 = getelementptr inbounds %struct.uiBut, ptr %495, i64 0, i32 18, i32 2
  %505 = load float, ptr %504, align 4, !tbaa !248
  %506 = fsub float %503, %505
  %507 = fptosi float %506 to i32
  br label %513

508:                                              ; preds = %486
  %509 = getelementptr inbounds %struct.uiLayout, ptr %489, i64 0, i32 6
  %510 = load i32, ptr %509, align 8, !tbaa !97
  %511 = getelementptr inbounds %struct.uiLayout, ptr %489, i64 0, i32 7
  %512 = load i32, ptr %511, align 4, !tbaa !207
  br label %513

513:                                              ; preds = %508, %493
  %514 = phi i32 [ %501, %493 ], [ %510, %508 ]
  %515 = phi i32 [ %507, %493 ], [ %512, %508 ]
  %516 = add nsw i32 %514, %488
  store i32 %516, ptr %480, align 8, !tbaa !97
  %517 = tail call i32 @llvm.smax.i32(i32 %515, i32 %487)
  store i32 %517, ptr %481, align 4, !tbaa !207
  %518 = load ptr, ptr %489, align 8, !tbaa !34
  %519 = icmp eq ptr %518, null
  br i1 %519, label %524, label %520

520:                                              ; preds = %513
  %521 = load i16, ptr %485, align 8, !tbaa !104
  %522 = sext i16 %521 to i32
  %523 = add nsw i32 %516, %522
  store i32 %523, ptr %480, align 8, !tbaa !97
  br label %524

524:                                              ; preds = %520, %513
  %525 = phi i32 [ %516, %513 ], [ %523, %520 ]
  br i1 %519, label %567, label %486, !llvm.loop !258

526:                                              ; preds = %117
  %527 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 0, ptr %527, align 8, !tbaa !97
  %528 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 0, ptr %528, align 4, !tbaa !207
  %529 = load ptr, ptr %6, align 8, !tbaa !34
  %530 = icmp eq ptr %529, null
  br i1 %530, label %567, label %531

531:                                              ; preds = %526
  %532 = load i32, ptr %527, align 8, !tbaa !97
  br label %533

533:                                              ; preds = %531, %560
  %534 = phi i32 [ %532, %531 ], [ %563, %560 ]
  %535 = phi ptr [ %529, %531 ], [ %565, %560 ]
  %536 = phi i32 [ 0, %531 ], [ %564, %560 ]
  %537 = getelementptr inbounds %struct.uiItem, ptr %535, i64 0, i32 2
  %538 = load i32, ptr %537, align 8, !tbaa !218
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %555

540:                                              ; preds = %533
  %541 = getelementptr inbounds %struct.uiButtonItem, ptr %535, i64 0, i32 1
  %542 = load ptr, ptr %541, align 8, !tbaa !198
  %543 = getelementptr inbounds %struct.uiBut, ptr %542, i64 0, i32 18
  %544 = getelementptr inbounds %struct.uiBut, ptr %542, i64 0, i32 18, i32 1
  %545 = load float, ptr %544, align 4, !tbaa !245
  %546 = load float, ptr %543, align 4, !tbaa !246
  %547 = fsub float %545, %546
  %548 = fptosi float %547 to i32
  %549 = getelementptr inbounds %struct.uiBut, ptr %542, i64 0, i32 18, i32 3
  %550 = load float, ptr %549, align 4, !tbaa !247
  %551 = getelementptr inbounds %struct.uiBut, ptr %542, i64 0, i32 18, i32 2
  %552 = load float, ptr %551, align 4, !tbaa !248
  %553 = fsub float %550, %552
  %554 = fptosi float %553 to i32
  br label %560

555:                                              ; preds = %533
  %556 = getelementptr inbounds %struct.uiLayout, ptr %535, i64 0, i32 6
  %557 = load i32, ptr %556, align 8, !tbaa !97
  %558 = getelementptr inbounds %struct.uiLayout, ptr %535, i64 0, i32 7
  %559 = load i32, ptr %558, align 4, !tbaa !207
  br label %560

560:                                              ; preds = %555, %540
  %561 = phi i32 [ %548, %540 ], [ %557, %555 ]
  %562 = phi i32 [ %554, %540 ], [ %559, %555 ]
  %563 = tail call i32 @llvm.smax.i32(i32 %561, i32 %534)
  store i32 %563, ptr %527, align 8, !tbaa !97
  %564 = tail call i32 @llvm.smax.i32(i32 %562, i32 %536)
  store i32 %564, ptr %528, align 4, !tbaa !207
  %565 = load ptr, ptr %535, align 8, !tbaa !34
  %566 = icmp eq ptr %565, null
  br i1 %566, label %567, label %533, !llvm.loop !261

567:                                              ; preds = %524, %560, %351, %164, %526, %479, %306, %119, %298, %218, %117, %474, %404, %13, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_item_layout(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x float], align 4
  %3 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !218
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %993, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !244
  %9 = icmp eq ptr %8, null
  br i1 %9, label %993, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 10
  %12 = load i8, ptr %11, align 2, !tbaa !100
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %16, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.uiBlock, ptr %18, i64 0, i32 28
  %20 = load i16, ptr %19, align 4, !tbaa !262
  %21 = add i16 %20, 1
  store i16 %21, ptr %19, align 4, !tbaa !262
  tail call fastcc void @ui_item_align(ptr noundef %0, i16 noundef signext %21)
  br label %22

22:                                               ; preds = %14, %10
  %23 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 11
  %24 = load i8, ptr %23, align 1, !tbaa !101
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call fastcc void @ui_item_flag(ptr noundef %0, i32 noundef 131072)
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 12
  %29 = load i8, ptr %28, align 4, !tbaa !102
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call fastcc void @ui_item_flag(ptr noundef %0, i32 noundef 2048)
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, ptr %3, align 8, !tbaa !82
  switch i32 %33, label %986 [
    i32 2, label %37
    i32 3, label %100
    i32 1, label %249
    i32 5, label %250
    i32 10, label %359
    i32 6, label %34
    i32 7, label %659
    i32 8, label %750
    i32 9, label %807
  ]

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %519, label %467

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !204
  %40 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !205
  %42 = load ptr, ptr %7, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %95, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %46 = sitofp i32 %39 to float
  %47 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  br label %48

48:                                               ; preds = %93, %44
  %49 = phi ptr [ %42, %44 ], [ %87, %93 ]
  %50 = phi i32 [ %41, %44 ], [ %94, %93 ]
  %51 = getelementptr inbounds %struct.uiItem, ptr %49, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !218
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.uiButtonItem, ptr %49, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !198
  %57 = getelementptr inbounds %struct.uiBut, ptr %56, i64 0, i32 18, i32 3
  %58 = load float, ptr %57, align 4, !tbaa !247
  %59 = getelementptr inbounds %struct.uiBut, ptr %56, i64 0, i32 18, i32 2
  %60 = load float, ptr %59, align 4, !tbaa !248
  %61 = fsub float %58, %60
  %62 = fptosi float %61 to i32
  br label %66

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.uiLayout, ptr %49, i64 0, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !207
  br label %66

66:                                               ; preds = %63, %54
  %67 = phi i32 [ %62, %54 ], [ %65, %63 ]
  %68 = sub nsw i32 %50, %67
  %69 = load i32, ptr %45, align 8, !tbaa !97
  br i1 %53, label %70, label %81

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.uiButtonItem, ptr %49, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !198
  %73 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18
  store float %46, ptr %73, align 8, !tbaa !249
  %74 = sitofp i32 %68 to float
  %75 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 2
  store float %74, ptr %75, align 8, !tbaa !250
  %76 = add nsw i32 %69, %39
  %77 = sitofp i32 %76 to float
  %78 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 1
  store float %77, ptr %78, align 4, !tbaa !251
  %79 = sitofp i32 %50 to float
  %80 = getelementptr inbounds %struct.uiBut, ptr %72, i64 0, i32 18, i32 3
  store float %79, ptr %80, align 4, !tbaa !252
  tail call void @ui_check_but(ptr noundef %72) #16
  br label %86

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.uiLayout, ptr %49, i64 0, i32 4
  store i32 %39, ptr %82, align 8, !tbaa !204
  %83 = getelementptr inbounds %struct.uiLayout, ptr %49, i64 0, i32 5
  store i32 %50, ptr %83, align 4, !tbaa !205
  %84 = getelementptr inbounds %struct.uiLayout, ptr %49, i64 0, i32 6
  store i32 %69, ptr %84, align 8, !tbaa !97
  %85 = getelementptr inbounds %struct.uiLayout, ptr %49, i64 0, i32 7
  store i32 %67, ptr %85, align 4, !tbaa !207
  br label %86

86:                                               ; preds = %81, %70
  %87 = load ptr, ptr %49, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i16, ptr %47, align 8, !tbaa !104
  %91 = sext i16 %90 to i32
  %92 = sub nsw i32 %68, %91
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i32 [ %92, %89 ], [ %68, %86 ]
  br i1 %88, label %95, label %48, !llvm.loop !263

95:                                               ; preds = %93, %37
  %96 = phi i32 [ %41, %37 ], [ %94, %93 ]
  %97 = load i32, ptr %40, align 4, !tbaa !205
  %98 = sub nsw i32 %97, %96
  %99 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %98, ptr %99, align 4, !tbaa !207
  store i32 %39, ptr %38, align 8, !tbaa !204
  store i32 %96, ptr %40, align 4, !tbaa !205
  br label %986

100:                                              ; preds = %32
  %101 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !54
  %103 = getelementptr inbounds %struct.uiLayoutRoot, ptr %102, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !91
  %105 = load ptr, ptr %7, align 8, !tbaa !34
  %106 = icmp eq ptr %105, null
  br i1 %106, label %130, label %107

107:                                              ; preds = %100, %125
  %108 = phi ptr [ %128, %125 ], [ %105, %100 ]
  %109 = phi i32 [ %127, %125 ], [ 0, %100 ]
  %110 = getelementptr inbounds %struct.uiItem, ptr %108, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !218
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.uiButtonItem, ptr %108, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !198
  %116 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 18, i32 3
  %117 = load float, ptr %116, align 4, !tbaa !247
  %118 = getelementptr inbounds %struct.uiBut, ptr %115, i64 0, i32 18, i32 2
  %119 = load float, ptr %118, align 4, !tbaa !248
  %120 = fsub float %117, %119
  %121 = fptosi float %120 to i32
  br label %125

122:                                              ; preds = %107
  %123 = getelementptr inbounds %struct.uiLayout, ptr %108, i64 0, i32 7
  %124 = load i32, ptr %123, align 4, !tbaa !207
  br label %125

125:                                              ; preds = %122, %113
  %126 = phi i32 [ %121, %113 ], [ %124, %122 ]
  %127 = add nsw i32 %126, %109
  %128 = load ptr, ptr %108, align 8, !tbaa !34
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %107, !llvm.loop !264

130:                                              ; preds = %125, %100
  %131 = phi i32 [ 0, %100 ], [ %127, %125 ]
  %132 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %133 = load i32, ptr %132, align 8, !tbaa !204
  %134 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %135 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %136 = load i32, ptr %135, align 8, !tbaa !97
  %137 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 2
  %138 = load i32, ptr %137, align 4, !tbaa !256
  %139 = add nsw i32 %138, -1
  %140 = getelementptr inbounds %struct.uiStyle, ptr %104, i64 0, i32 10
  %141 = load i16, ptr %140, align 8, !tbaa !92
  %142 = sext i16 %141 to i32
  %143 = mul nsw i32 %139, %142
  %144 = sub nsw i32 %136, %143
  %145 = load ptr, ptr %7, align 8, !tbaa !34
  %146 = icmp eq ptr %145, null
  br i1 %146, label %243, label %147

147:                                              ; preds = %130
  %148 = sdiv i32 %131, %138
  %149 = load i32, ptr %134, align 4, !tbaa !205
  %150 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %151 = icmp eq i32 %136, %143
  %152 = getelementptr inbounds %struct.uiStyle, ptr %104, i64 0, i32 14
  %153 = sub nsw i32 0, %148
  br label %154

154:                                              ; preds = %147, %236
  %155 = phi ptr [ %145, %147 ], [ %241, %236 ]
  %156 = phi i32 [ 0, %147 ], [ %223, %236 ]
  %157 = phi i32 [ 0, %147 ], [ %240, %236 ]
  %158 = phi i32 [ 0, %147 ], [ %239, %236 ]
  %159 = phi i32 [ %149, %147 ], [ %238, %236 ]
  %160 = phi i32 [ %133, %147 ], [ %237, %236 ]
  %161 = getelementptr inbounds %struct.uiItem, ptr %155, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !218
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %154
  %165 = getelementptr inbounds %struct.uiButtonItem, ptr %155, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !198
  %167 = getelementptr inbounds %struct.uiBut, ptr %166, i64 0, i32 18, i32 3
  %168 = load float, ptr %167, align 4, !tbaa !247
  %169 = getelementptr inbounds %struct.uiBut, ptr %166, i64 0, i32 18, i32 2
  %170 = load float, ptr %169, align 4, !tbaa !248
  %171 = fsub float %168, %170
  %172 = fptosi float %171 to i32
  br label %176

173:                                              ; preds = %154
  %174 = getelementptr inbounds %struct.uiLayout, ptr %155, i64 0, i32 7
  %175 = load i32, ptr %174, align 4, !tbaa !207
  br label %176

176:                                              ; preds = %173, %164
  %177 = phi i32 [ %172, %164 ], [ %175, %173 ]
  %178 = load i32, ptr %132, align 8, !tbaa !204
  %179 = sub nsw i32 %160, %178
  %180 = load i32, ptr %137, align 4, !tbaa !256
  %181 = add nsw i32 %180, -1
  %182 = icmp eq i32 %158, %181
  %183 = load i8, ptr %150, align 1, !tbaa !73
  br i1 %151, label %198, label %184

184:                                              ; preds = %176
  %185 = icmp sgt i32 %180, %144
  br i1 %185, label %186, label %191

186:                                              ; preds = %184
  br i1 %182, label %187, label %189

187:                                              ; preds = %186
  %188 = sub nsw i32 %144, %179
  br label %198

189:                                              ; preds = %186
  %190 = sdiv i32 %144, %180
  br label %198

191:                                              ; preds = %184
  %192 = icmp eq i8 %183, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %191
  br i1 %182, label %194, label %196

194:                                              ; preds = %193
  %195 = sub nsw i32 %144, %179
  br label %198

196:                                              ; preds = %193
  %197 = sdiv i32 %144, %180
  br label %198

198:                                              ; preds = %196, %194, %191, %189, %187, %176
  %199 = phi i32 [ %188, %187 ], [ %190, %189 ], [ %195, %194 ], [ %197, %196 ], [ 1, %176 ], [ 1, %191 ]
  %200 = sub nsw i32 %159, %177
  %201 = sub nsw i32 %157, %177
  br i1 %163, label %202, label %214

202:                                              ; preds = %198
  %203 = sitofp i32 %160 to float
  %204 = getelementptr inbounds %struct.uiButtonItem, ptr %155, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !198
  %206 = getelementptr inbounds %struct.uiBut, ptr %205, i64 0, i32 18
  store float %203, ptr %206, align 8, !tbaa !249
  %207 = sitofp i32 %200 to float
  %208 = getelementptr inbounds %struct.uiBut, ptr %205, i64 0, i32 18, i32 2
  store float %207, ptr %208, align 8, !tbaa !250
  %209 = add nsw i32 %199, %160
  %210 = sitofp i32 %209 to float
  %211 = getelementptr inbounds %struct.uiBut, ptr %205, i64 0, i32 18, i32 1
  store float %210, ptr %211, align 4, !tbaa !251
  %212 = sitofp i32 %159 to float
  %213 = getelementptr inbounds %struct.uiBut, ptr %205, i64 0, i32 18, i32 3
  store float %212, ptr %213, align 4, !tbaa !252
  tail call void @ui_check_but(ptr noundef %205) #16
  br label %219

214:                                              ; preds = %198
  %215 = getelementptr inbounds %struct.uiLayout, ptr %155, i64 0, i32 4
  store i32 %160, ptr %215, align 8, !tbaa !204
  %216 = getelementptr inbounds %struct.uiLayout, ptr %155, i64 0, i32 5
  store i32 %159, ptr %216, align 4, !tbaa !205
  %217 = getelementptr inbounds %struct.uiLayout, ptr %155, i64 0, i32 6
  store i32 %199, ptr %217, align 8, !tbaa !97
  %218 = getelementptr inbounds %struct.uiLayout, ptr %155, i64 0, i32 7
  store i32 %177, ptr %218, align 4, !tbaa !207
  br label %219

219:                                              ; preds = %202, %214
  %220 = load i16, ptr %152, align 8, !tbaa !103
  %221 = sext i16 %220 to i32
  %222 = sub nsw i32 %200, %221
  %223 = tail call i32 @llvm.smin.i32(i32 %156, i32 %222)
  %224 = load i32, ptr %137, align 4, !tbaa !256
  %225 = add nsw i32 %224, -1
  %226 = icmp sge i32 %158, %225
  %227 = icmp sgt i32 %201, %153
  %228 = select i1 %226, i1 true, i1 %227
  br i1 %228, label %236, label %229

229:                                              ; preds = %219
  %230 = load i16, ptr %140, align 8, !tbaa !92
  %231 = sext i16 %230 to i32
  %232 = add i32 %199, %160
  %233 = add i32 %232, %231
  %234 = load i32, ptr %134, align 4, !tbaa !205
  %235 = add nsw i32 %158, 1
  br label %236

236:                                              ; preds = %229, %219
  %237 = phi i32 [ %233, %229 ], [ %160, %219 ]
  %238 = phi i32 [ %234, %229 ], [ %222, %219 ]
  %239 = phi i32 [ %235, %229 ], [ %158, %219 ]
  %240 = phi i32 [ 0, %229 ], [ %201, %219 ]
  %241 = load ptr, ptr %155, align 8, !tbaa !34
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %154, !llvm.loop !265

243:                                              ; preds = %236, %130
  %244 = phi i32 [ %133, %130 ], [ %237, %236 ]
  %245 = phi i32 [ 0, %130 ], [ %223, %236 ]
  %246 = load i32, ptr %134, align 4, !tbaa !205
  %247 = sub nsw i32 %246, %245
  %248 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %247, ptr %248, align 4, !tbaa !207
  store i32 %244, ptr %132, align 8, !tbaa !204
  store i32 %245, ptr %134, align 4, !tbaa !205
  br label %986

249:                                              ; preds = %32
  tail call fastcc void @ui_litem_layout_row(ptr noundef %0)
  br label %986

250:                                              ; preds = %32
  %251 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !54
  %253 = getelementptr inbounds %struct.uiLayoutRoot, ptr %252, i64 0, i32 9
  %254 = load ptr, ptr %253, align 8, !tbaa !91
  %255 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %256 = load i32, ptr %255, align 8, !tbaa !97
  %257 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  %258 = load i32, ptr %257, align 4, !tbaa !207
  %259 = getelementptr inbounds %struct.uiStyle, ptr %254, i64 0, i32 12
  %260 = load i16, ptr %259, align 4, !tbaa !259
  %261 = sext i16 %260 to i32
  %262 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %263 = load i32, ptr %262, align 8, !tbaa !204
  %264 = add nsw i32 %263, %261
  store i32 %264, ptr %262, align 8, !tbaa !204
  %265 = icmp eq i32 %256, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %250
  %267 = shl nsw i32 %261, 1
  %268 = sub nsw i32 %256, %267
  store i32 %268, ptr %255, align 8, !tbaa !97
  br label %269

269:                                              ; preds = %266, %250
  %270 = icmp eq i32 %258, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %269
  %272 = shl nsw i32 %261, 1
  %273 = sub nsw i32 %258, %272
  store i32 %273, ptr %257, align 4, !tbaa !207
  br label %274

274:                                              ; preds = %271, %269
  %275 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %276 = load i32, ptr %275, align 4, !tbaa !205
  %277 = load ptr, ptr %7, align 8, !tbaa !34
  %278 = icmp eq ptr %277, null
  br i1 %278, label %329, label %279

279:                                              ; preds = %274
  %280 = sitofp i32 %264 to float
  %281 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  br label %282

282:                                              ; preds = %327, %279
  %283 = phi ptr [ %277, %279 ], [ %321, %327 ]
  %284 = phi i32 [ %276, %279 ], [ %328, %327 ]
  %285 = getelementptr inbounds %struct.uiItem, ptr %283, i64 0, i32 2
  %286 = load i32, ptr %285, align 8, !tbaa !218
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.uiButtonItem, ptr %283, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !198
  %291 = getelementptr inbounds %struct.uiBut, ptr %290, i64 0, i32 18, i32 3
  %292 = load float, ptr %291, align 4, !tbaa !247
  %293 = getelementptr inbounds %struct.uiBut, ptr %290, i64 0, i32 18, i32 2
  %294 = load float, ptr %293, align 4, !tbaa !248
  %295 = fsub float %292, %294
  %296 = fptosi float %295 to i32
  br label %300

297:                                              ; preds = %282
  %298 = getelementptr inbounds %struct.uiLayout, ptr %283, i64 0, i32 7
  %299 = load i32, ptr %298, align 4, !tbaa !207
  br label %300

300:                                              ; preds = %297, %288
  %301 = phi i32 [ %296, %288 ], [ %299, %297 ]
  %302 = sub nsw i32 %284, %301
  %303 = load i32, ptr %255, align 8, !tbaa !97
  br i1 %287, label %304, label %315

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.uiButtonItem, ptr %283, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !198
  %307 = getelementptr inbounds %struct.uiBut, ptr %306, i64 0, i32 18
  store float %280, ptr %307, align 8, !tbaa !249
  %308 = sitofp i32 %302 to float
  %309 = getelementptr inbounds %struct.uiBut, ptr %306, i64 0, i32 18, i32 2
  store float %308, ptr %309, align 8, !tbaa !250
  %310 = add nsw i32 %303, %264
  %311 = sitofp i32 %310 to float
  %312 = getelementptr inbounds %struct.uiBut, ptr %306, i64 0, i32 18, i32 1
  store float %311, ptr %312, align 4, !tbaa !251
  %313 = sitofp i32 %284 to float
  %314 = getelementptr inbounds %struct.uiBut, ptr %306, i64 0, i32 18, i32 3
  store float %313, ptr %314, align 4, !tbaa !252
  tail call void @ui_check_but(ptr noundef %306) #16
  br label %320

315:                                              ; preds = %300
  %316 = getelementptr inbounds %struct.uiLayout, ptr %283, i64 0, i32 4
  store i32 %264, ptr %316, align 8, !tbaa !204
  %317 = getelementptr inbounds %struct.uiLayout, ptr %283, i64 0, i32 5
  store i32 %284, ptr %317, align 4, !tbaa !205
  %318 = getelementptr inbounds %struct.uiLayout, ptr %283, i64 0, i32 6
  store i32 %303, ptr %318, align 8, !tbaa !97
  %319 = getelementptr inbounds %struct.uiLayout, ptr %283, i64 0, i32 7
  store i32 %301, ptr %319, align 4, !tbaa !207
  br label %320

320:                                              ; preds = %315, %304
  %321 = load ptr, ptr %283, align 8, !tbaa !34
  %322 = icmp eq ptr %321, null
  br i1 %322, label %327, label %323

323:                                              ; preds = %320
  %324 = load i16, ptr %281, align 8, !tbaa !104
  %325 = sext i16 %324 to i32
  %326 = sub nsw i32 %302, %325
  br label %327

327:                                              ; preds = %323, %320
  %328 = phi i32 [ %326, %323 ], [ %302, %320 ]
  br i1 %322, label %329, label %282, !llvm.loop !263

329:                                              ; preds = %327, %274
  %330 = phi i32 [ %276, %274 ], [ %328, %327 ]
  %331 = load i32, ptr %275, align 4, !tbaa !205
  %332 = sub nsw i32 %331, %330
  store i32 %332, ptr %257, align 4, !tbaa !207
  store i32 %264, ptr %262, align 8, !tbaa !204
  store i32 %330, ptr %275, align 4, !tbaa !205
  %333 = load i16, ptr %259, align 4, !tbaa !259
  %334 = sext i16 %333 to i32
  %335 = sub nsw i32 %264, %334
  store i32 %335, ptr %262, align 8, !tbaa !204
  %336 = sub nsw i32 %330, %334
  store i32 %336, ptr %275, align 4, !tbaa !205
  br i1 %265, label %341, label %337

337:                                              ; preds = %329
  %338 = shl nsw i32 %334, 1
  %339 = load i32, ptr %255, align 8, !tbaa !97
  %340 = add nsw i32 %339, %338
  store i32 %340, ptr %255, align 8, !tbaa !97
  br label %341

341:                                              ; preds = %337, %329
  br i1 %270, label %344, label %342

342:                                              ; preds = %341
  %343 = add nsw i32 %332, %334
  store i32 %343, ptr %257, align 4, !tbaa !207
  br label %344

344:                                              ; preds = %341, %342
  %345 = getelementptr inbounds %struct.uiLayoutItemBx, ptr %0, i64 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !195
  %347 = sitofp i32 %335 to float
  %348 = getelementptr inbounds %struct.uiBut, ptr %346, i64 0, i32 18
  store float %347, ptr %348, align 8, !tbaa !249
  %349 = sitofp i32 %336 to float
  %350 = getelementptr inbounds %struct.uiBut, ptr %346, i64 0, i32 18, i32 2
  store float %349, ptr %350, align 8, !tbaa !250
  %351 = load i32, ptr %255, align 8, !tbaa !97
  %352 = add nsw i32 %351, %335
  %353 = sitofp i32 %352 to float
  %354 = getelementptr inbounds %struct.uiBut, ptr %346, i64 0, i32 18, i32 1
  store float %353, ptr %354, align 4, !tbaa !251
  %355 = load i32, ptr %257, align 4, !tbaa !207
  %356 = add nsw i32 %355, %336
  %357 = sitofp i32 %356 to float
  %358 = getelementptr inbounds %struct.uiBut, ptr %346, i64 0, i32 18, i32 3
  store float %357, ptr %358, align 4, !tbaa !252
  br label %986

359:                                              ; preds = %32
  %360 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !54
  %362 = getelementptr inbounds %struct.uiLayoutRoot, ptr %361, i64 0, i32 2
  %363 = load i32, ptr %362, align 8, !tbaa !63
  switch i32 %363, label %404 [
    i32 1, label %364
    i32 4, label %365
  ]

364:                                              ; preds = %359
  tail call fastcc void @ui_litem_layout_row(ptr noundef %0)
  br label %986

365:                                              ; preds = %359
  %366 = load ptr, ptr %7, align 8, !tbaa !216
  %367 = getelementptr inbounds %struct.uiItem, ptr %366, i64 0, i32 2
  %368 = load i32, ptr %367, align 8, !tbaa !218
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %986

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %372 = load i32, ptr %371, align 8, !tbaa !204
  %373 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %374 = load i32, ptr %373, align 4, !tbaa !205
  %375 = getelementptr inbounds %struct.uiButtonItem, ptr %366, i64 0, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !198
  %377 = getelementptr inbounds %struct.uiBut, ptr %376, i64 0, i32 18
  %378 = getelementptr inbounds %struct.uiBut, ptr %376, i64 0, i32 18, i32 1
  %379 = load float, ptr %378, align 4, !tbaa !245
  %380 = load float, ptr %377, align 4, !tbaa !246
  %381 = fsub float %379, %380
  %382 = fptosi float %381 to i32
  %383 = getelementptr inbounds %struct.uiBut, ptr %376, i64 0, i32 18, i32 3
  %384 = load float, ptr %383, align 4, !tbaa !247
  %385 = getelementptr inbounds %struct.uiBut, ptr %376, i64 0, i32 18, i32 2
  %386 = load float, ptr %385, align 4, !tbaa !248
  %387 = fsub float %384, %386
  %388 = fptosi float %387 to i32
  %389 = sdiv i32 %382, -2
  %390 = add i32 %389, %372
  %391 = sitofp i32 %374 to float
  %392 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !266
  %393 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 113), align 2, !tbaa !267
  %394 = sitofp i16 %393 to float
  %395 = fadd float %394, 9.000000e+00
  %396 = tail call float @llvm.fmuladd.f32(float %392, float %395, float %391)
  %397 = fptosi float %396 to i32
  %398 = sitofp i32 %390 to float
  store float %398, ptr %377, align 8, !tbaa !249
  %399 = sitofp i32 %397 to float
  store float %399, ptr %385, align 8, !tbaa !250
  %400 = add nsw i32 %390, %382
  %401 = sitofp i32 %400 to float
  store float %401, ptr %378, align 4, !tbaa !251
  %402 = add nsw i32 %397, %388
  %403 = sitofp i32 %402 to float
  store float %403, ptr %383, align 4, !tbaa !252
  tail call void @ui_check_but(ptr noundef %376) #16
  br label %986

404:                                              ; preds = %359
  %405 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %406 = load i32, ptr %405, align 8, !tbaa !204
  %407 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %408 = load i32, ptr %407, align 4, !tbaa !205
  %409 = load ptr, ptr %7, align 8, !tbaa !34
  %410 = icmp eq ptr %409, null
  br i1 %410, label %462, label %411

411:                                              ; preds = %404
  %412 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %413 = sitofp i32 %406 to float
  %414 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  br label %415

415:                                              ; preds = %460, %411
  %416 = phi ptr [ %409, %411 ], [ %454, %460 ]
  %417 = phi i32 [ %408, %411 ], [ %461, %460 ]
  %418 = getelementptr inbounds %struct.uiItem, ptr %416, i64 0, i32 2
  %419 = load i32, ptr %418, align 8, !tbaa !218
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %415
  %422 = getelementptr inbounds %struct.uiButtonItem, ptr %416, i64 0, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !198
  %424 = getelementptr inbounds %struct.uiBut, ptr %423, i64 0, i32 18, i32 3
  %425 = load float, ptr %424, align 4, !tbaa !247
  %426 = getelementptr inbounds %struct.uiBut, ptr %423, i64 0, i32 18, i32 2
  %427 = load float, ptr %426, align 4, !tbaa !248
  %428 = fsub float %425, %427
  %429 = fptosi float %428 to i32
  br label %433

430:                                              ; preds = %415
  %431 = getelementptr inbounds %struct.uiLayout, ptr %416, i64 0, i32 7
  %432 = load i32, ptr %431, align 4, !tbaa !207
  br label %433

433:                                              ; preds = %430, %421
  %434 = phi i32 [ %429, %421 ], [ %432, %430 ]
  %435 = sub nsw i32 %417, %434
  %436 = load i32, ptr %412, align 8, !tbaa !97
  br i1 %420, label %437, label %448

437:                                              ; preds = %433
  %438 = getelementptr inbounds %struct.uiButtonItem, ptr %416, i64 0, i32 1
  %439 = load ptr, ptr %438, align 8, !tbaa !198
  %440 = getelementptr inbounds %struct.uiBut, ptr %439, i64 0, i32 18
  store float %413, ptr %440, align 8, !tbaa !249
  %441 = sitofp i32 %435 to float
  %442 = getelementptr inbounds %struct.uiBut, ptr %439, i64 0, i32 18, i32 2
  store float %441, ptr %442, align 8, !tbaa !250
  %443 = add nsw i32 %436, %406
  %444 = sitofp i32 %443 to float
  %445 = getelementptr inbounds %struct.uiBut, ptr %439, i64 0, i32 18, i32 1
  store float %444, ptr %445, align 4, !tbaa !251
  %446 = sitofp i32 %417 to float
  %447 = getelementptr inbounds %struct.uiBut, ptr %439, i64 0, i32 18, i32 3
  store float %446, ptr %447, align 4, !tbaa !252
  tail call void @ui_check_but(ptr noundef %439) #16
  br label %453

448:                                              ; preds = %433
  %449 = getelementptr inbounds %struct.uiLayout, ptr %416, i64 0, i32 4
  store i32 %406, ptr %449, align 8, !tbaa !204
  %450 = getelementptr inbounds %struct.uiLayout, ptr %416, i64 0, i32 5
  store i32 %417, ptr %450, align 4, !tbaa !205
  %451 = getelementptr inbounds %struct.uiLayout, ptr %416, i64 0, i32 6
  store i32 %436, ptr %451, align 8, !tbaa !97
  %452 = getelementptr inbounds %struct.uiLayout, ptr %416, i64 0, i32 7
  store i32 %434, ptr %452, align 4, !tbaa !207
  br label %453

453:                                              ; preds = %448, %437
  %454 = load ptr, ptr %416, align 8, !tbaa !34
  %455 = icmp eq ptr %454, null
  br i1 %455, label %460, label %456

456:                                              ; preds = %453
  %457 = load i16, ptr %414, align 8, !tbaa !104
  %458 = sext i16 %457 to i32
  %459 = sub nsw i32 %435, %458
  br label %460

460:                                              ; preds = %456, %453
  %461 = phi i32 [ %459, %456 ], [ %435, %453 ]
  br i1 %455, label %462, label %415, !llvm.loop !263

462:                                              ; preds = %460, %404
  %463 = phi i32 [ %408, %404 ], [ %461, %460 ]
  %464 = load i32, ptr %407, align 4, !tbaa !205
  %465 = sub nsw i32 %464, %463
  %466 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %465, ptr %466, align 4, !tbaa !207
  store i32 %406, ptr %405, align 8, !tbaa !204
  store i32 %463, ptr %407, align 4, !tbaa !205
  br label %986

467:                                              ; preds = %34, %508
  %468 = phi ptr [ %517, %508 ], [ %35, %34 ]
  %469 = phi i32 [ %516, %508 ], [ 0, %34 ]
  %470 = phi i32 [ %514, %508 ], [ 0, %34 ]
  %471 = phi i32 [ %512, %508 ], [ 1000000, %34 ]
  %472 = phi i32 [ %511, %508 ], [ 1000000, %34 ]
  %473 = getelementptr inbounds %struct.uiItem, ptr %468, i64 0, i32 2
  %474 = load i32, ptr %473, align 8, !tbaa !218
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %485

476:                                              ; preds = %467
  %477 = getelementptr inbounds %struct.uiButtonItem, ptr %468, i64 0, i32 1
  %478 = load ptr, ptr %477, align 8, !tbaa !198
  %479 = getelementptr inbounds %struct.uiBut, ptr %478, i64 0, i32 18
  %480 = load float, ptr %479, align 8, !tbaa !249
  %481 = fptosi float %480 to i32
  %482 = getelementptr inbounds %struct.uiBut, ptr %478, i64 0, i32 18, i32 2
  %483 = load float, ptr %482, align 8, !tbaa !250
  %484 = fptosi float %483 to i32
  br label %485

485:                                              ; preds = %476, %467
  %486 = phi i32 [ %481, %476 ], [ 0, %467 ]
  %487 = phi i32 [ %484, %476 ], [ 0, %467 ]
  br i1 %475, label %488, label %503

488:                                              ; preds = %485
  %489 = getelementptr inbounds %struct.uiButtonItem, ptr %468, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !198
  %491 = getelementptr inbounds %struct.uiBut, ptr %490, i64 0, i32 18
  %492 = getelementptr inbounds %struct.uiBut, ptr %490, i64 0, i32 18, i32 1
  %493 = load float, ptr %492, align 4, !tbaa !245
  %494 = load float, ptr %491, align 4, !tbaa !246
  %495 = fsub float %493, %494
  %496 = fptosi float %495 to i32
  %497 = getelementptr inbounds %struct.uiBut, ptr %490, i64 0, i32 18, i32 3
  %498 = load float, ptr %497, align 4, !tbaa !247
  %499 = getelementptr inbounds %struct.uiBut, ptr %490, i64 0, i32 18, i32 2
  %500 = load float, ptr %499, align 4, !tbaa !248
  %501 = fsub float %498, %500
  %502 = fptosi float %501 to i32
  br label %508

503:                                              ; preds = %485
  %504 = getelementptr inbounds %struct.uiLayout, ptr %468, i64 0, i32 6
  %505 = load i32, ptr %504, align 8, !tbaa !97
  %506 = getelementptr inbounds %struct.uiLayout, ptr %468, i64 0, i32 7
  %507 = load i32, ptr %506, align 4, !tbaa !207
  br label %508

508:                                              ; preds = %503, %488
  %509 = phi i32 [ %502, %488 ], [ %507, %503 ]
  %510 = phi i32 [ %496, %488 ], [ %505, %503 ]
  %511 = tail call i32 @llvm.smin.i32(i32 %472, i32 %486)
  %512 = tail call i32 @llvm.smin.i32(i32 %471, i32 %487)
  %513 = add nsw i32 %510, %486
  %514 = tail call i32 @llvm.smax.i32(i32 %513, i32 %470)
  %515 = add nsw i32 %509, %487
  %516 = tail call i32 @llvm.smax.i32(i32 %515, i32 %469)
  %517 = load ptr, ptr %468, align 8, !tbaa !34
  %518 = icmp eq ptr %517, null
  br i1 %518, label %519, label %467, !llvm.loop !268

519:                                              ; preds = %508, %34
  %520 = phi i32 [ 1000000, %34 ], [ %511, %508 ]
  %521 = phi i32 [ 1000000, %34 ], [ %512, %508 ]
  %522 = phi i32 [ 0, %34 ], [ %514, %508 ]
  %523 = phi i32 [ 0, %34 ], [ %516, %508 ]
  %524 = sub nsw i32 %522, %520
  %525 = sub nsw i32 %523, %521
  %526 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %527 = load i32, ptr %526, align 8, !tbaa !97
  %528 = icmp ne i32 %527, 0
  %529 = icmp sgt i32 %524, 0
  %530 = select i1 %528, i1 %529, i1 false
  %531 = sitofp i32 %527 to float
  %532 = sitofp i32 %524 to float
  %533 = fdiv float %531, %532
  %534 = select i1 %530, float %533, float 1.000000e+00
  %535 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  %536 = load i32, ptr %535, align 4, !tbaa !207
  %537 = icmp ne i32 %536, 0
  %538 = icmp sgt i32 %525, 0
  %539 = select i1 %537, i1 %538, i1 false
  %540 = sitofp i32 %536 to float
  %541 = sitofp i32 %525 to float
  %542 = fdiv float %540, %541
  %543 = select i1 %539, float %542, float 1.000000e+00
  %544 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %545 = load i32, ptr %544, align 8, !tbaa !204
  %546 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %547 = load i32, ptr %546, align 4, !tbaa !205
  %548 = sitofp i32 %547 to float
  %549 = fneg float %543
  %550 = tail call float @llvm.fmuladd.f32(float %549, float %541, float %548)
  %551 = fptosi float %550 to i32
  %552 = load ptr, ptr %7, align 8, !tbaa !34
  %553 = icmp eq ptr %552, null
  br i1 %553, label %653, label %554

554:                                              ; preds = %519
  %555 = fcmp une float %534, 1.000000e+00
  %556 = fcmp une float %543, 1.000000e+00
  %557 = sub i32 %545, %520
  %558 = sub i32 %551, %521
  br label %559

559:                                              ; preds = %554, %650
  %560 = phi ptr [ %552, %554 ], [ %651, %650 ]
  %561 = getelementptr inbounds %struct.uiItem, ptr %560, i64 0, i32 2
  %562 = load i32, ptr %561, align 8, !tbaa !218
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %573

564:                                              ; preds = %559
  %565 = getelementptr inbounds %struct.uiButtonItem, ptr %560, i64 0, i32 1
  %566 = load ptr, ptr %565, align 8, !tbaa !198
  %567 = getelementptr inbounds %struct.uiBut, ptr %566, i64 0, i32 18
  %568 = load float, ptr %567, align 8, !tbaa !249
  %569 = fptosi float %568 to i32
  %570 = getelementptr inbounds %struct.uiBut, ptr %566, i64 0, i32 18, i32 2
  %571 = load float, ptr %570, align 8, !tbaa !250
  %572 = fptosi float %571 to i32
  br label %573

573:                                              ; preds = %564, %559
  %574 = phi i32 [ %569, %564 ], [ 0, %559 ]
  %575 = phi i32 [ %572, %564 ], [ 0, %559 ]
  br i1 %563, label %576, label %591

576:                                              ; preds = %573
  %577 = getelementptr inbounds %struct.uiButtonItem, ptr %560, i64 0, i32 1
  %578 = load ptr, ptr %577, align 8, !tbaa !198
  %579 = getelementptr inbounds %struct.uiBut, ptr %578, i64 0, i32 18
  %580 = getelementptr inbounds %struct.uiBut, ptr %578, i64 0, i32 18, i32 1
  %581 = load float, ptr %580, align 4, !tbaa !245
  %582 = load float, ptr %579, align 4, !tbaa !246
  %583 = fsub float %581, %582
  %584 = fptosi float %583 to i32
  %585 = getelementptr inbounds %struct.uiBut, ptr %578, i64 0, i32 18, i32 3
  %586 = load float, ptr %585, align 4, !tbaa !247
  %587 = getelementptr inbounds %struct.uiBut, ptr %578, i64 0, i32 18, i32 2
  %588 = load float, ptr %587, align 4, !tbaa !248
  %589 = fsub float %586, %588
  %590 = fptosi float %589 to i32
  br label %596

591:                                              ; preds = %573
  %592 = getelementptr inbounds %struct.uiLayout, ptr %560, i64 0, i32 6
  %593 = load i32, ptr %592, align 8, !tbaa !97
  %594 = getelementptr inbounds %struct.uiLayout, ptr %560, i64 0, i32 7
  %595 = load i32, ptr %594, align 4, !tbaa !207
  br label %596

596:                                              ; preds = %591, %576
  %597 = phi i32 [ %590, %576 ], [ %595, %591 ]
  %598 = phi i32 [ %584, %576 ], [ %593, %591 ]
  br i1 %555, label %599, label %611

599:                                              ; preds = %596
  %600 = sub nsw i32 %574, %520
  %601 = sitofp i32 %600 to float
  %602 = fmul float %534, %601
  %603 = fptosi float %602 to i32
  %604 = add nsw i32 %598, %600
  %605 = sitofp i32 %604 to float
  %606 = sitofp i32 %603 to float
  %607 = fneg float %606
  %608 = tail call float @llvm.fmuladd.f32(float %605, float %534, float %607)
  %609 = fptosi float %608 to i32
  %610 = add nsw i32 %520, %603
  br label %611

611:                                              ; preds = %599, %596
  %612 = phi i32 [ %610, %599 ], [ %574, %596 ]
  %613 = phi i32 [ %609, %599 ], [ %598, %596 ]
  br i1 %556, label %614, label %626

614:                                              ; preds = %611
  %615 = sub nsw i32 %575, %521
  %616 = sitofp i32 %615 to float
  %617 = fmul float %543, %616
  %618 = fptosi float %617 to i32
  %619 = add nsw i32 %597, %615
  %620 = sitofp i32 %619 to float
  %621 = sitofp i32 %618 to float
  %622 = fneg float %621
  %623 = tail call float @llvm.fmuladd.f32(float %620, float %543, float %622)
  %624 = fptosi float %623 to i32
  %625 = add nsw i32 %521, %618
  br label %626

626:                                              ; preds = %614, %611
  %627 = phi i32 [ %625, %614 ], [ %575, %611 ]
  %628 = phi i32 [ %624, %614 ], [ %597, %611 ]
  %629 = add i32 %557, %612
  %630 = add i32 %558, %627
  br i1 %563, label %631, label %644

631:                                              ; preds = %626
  %632 = sitofp i32 %629 to float
  %633 = getelementptr inbounds %struct.uiButtonItem, ptr %560, i64 0, i32 1
  %634 = load ptr, ptr %633, align 8, !tbaa !198
  %635 = getelementptr inbounds %struct.uiBut, ptr %634, i64 0, i32 18
  store float %632, ptr %635, align 8, !tbaa !249
  %636 = sitofp i32 %630 to float
  %637 = getelementptr inbounds %struct.uiBut, ptr %634, i64 0, i32 18, i32 2
  store float %636, ptr %637, align 8, !tbaa !250
  %638 = add nsw i32 %613, %629
  %639 = sitofp i32 %638 to float
  %640 = getelementptr inbounds %struct.uiBut, ptr %634, i64 0, i32 18, i32 1
  store float %639, ptr %640, align 4, !tbaa !251
  %641 = add nsw i32 %628, %630
  %642 = sitofp i32 %641 to float
  %643 = getelementptr inbounds %struct.uiBut, ptr %634, i64 0, i32 18, i32 3
  store float %642, ptr %643, align 4, !tbaa !252
  tail call void @ui_check_but(ptr noundef %634) #16
  br label %650

644:                                              ; preds = %626
  %645 = getelementptr inbounds %struct.uiLayout, ptr %560, i64 0, i32 4
  store i32 %629, ptr %645, align 8, !tbaa !204
  %646 = add nsw i32 %628, %630
  %647 = getelementptr inbounds %struct.uiLayout, ptr %560, i64 0, i32 5
  store i32 %646, ptr %647, align 4, !tbaa !205
  %648 = getelementptr inbounds %struct.uiLayout, ptr %560, i64 0, i32 6
  store i32 %613, ptr %648, align 8, !tbaa !97
  %649 = getelementptr inbounds %struct.uiLayout, ptr %560, i64 0, i32 7
  store i32 %628, ptr %649, align 4, !tbaa !207
  br label %650

650:                                              ; preds = %631, %644
  %651 = load ptr, ptr %560, align 8, !tbaa !34
  %652 = icmp eq ptr %651, null
  br i1 %652, label %653, label %559, !llvm.loop !269

653:                                              ; preds = %650, %519
  %654 = fmul float %534, %532
  %655 = fptosi float %654 to i32
  store i32 %655, ptr %526, align 8, !tbaa !97
  %656 = load i32, ptr %546, align 4, !tbaa !205
  %657 = sub nsw i32 %656, %551
  store i32 %657, ptr %535, align 4, !tbaa !207
  %658 = add nsw i32 %545, %655
  store i32 %658, ptr %544, align 8, !tbaa !204
  store i32 %551, ptr %546, align 4, !tbaa !205
  br label %986

659:                                              ; preds = %32
  %660 = tail call i32 @BLI_countlist(ptr noundef nonnull %7) #16
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %986, label %662

662:                                              ; preds = %659
  %663 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %664 = load i32, ptr %663, align 8, !tbaa !204
  %665 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %666 = load i32, ptr %665, align 4, !tbaa !205
  %667 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %668 = add nsw i32 %660, -1
  %669 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  %670 = load ptr, ptr %7, align 8, !tbaa !34
  %671 = icmp eq ptr %670, null
  br i1 %671, label %743, label %672

672:                                              ; preds = %662
  %673 = getelementptr inbounds %struct.uiLayoutItemSplit, ptr %0, i64 0, i32 1
  %674 = load float, ptr %673, align 8, !tbaa !99
  %675 = fcmp oeq float %674, 0.000000e+00
  %676 = sitofp i32 %660 to float
  %677 = fdiv float 1.000000e+00, %676
  %678 = select i1 %675, float %677, float %674
  %679 = load i32, ptr %667, align 8, !tbaa !97
  %680 = load i16, ptr %669, align 8, !tbaa !104
  %681 = sext i16 %680 to i32
  %682 = mul nsw i32 %668, %681
  %683 = sub nsw i32 %679, %682
  %684 = sitofp i32 %683 to float
  %685 = fmul float %678, %684
  %686 = fptosi float %685 to i32
  %687 = tail call i32 @llvm.smax.i32(i32 %686, i32 0)
  %688 = sitofp i32 %666 to float
  %689 = sub nsw i32 %683, %686
  br label %690

690:                                              ; preds = %672, %738
  %691 = phi ptr [ %670, %672 ], [ %741, %738 ]
  %692 = phi i32 [ %687, %672 ], [ %740, %738 ]
  %693 = phi i32 [ %664, %672 ], [ %739, %738 ]
  %694 = getelementptr inbounds %struct.uiItem, ptr %691, i64 0, i32 2
  %695 = load i32, ptr %694, align 8, !tbaa !218
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %706

697:                                              ; preds = %690
  %698 = getelementptr inbounds %struct.uiButtonItem, ptr %691, i64 0, i32 1
  %699 = load ptr, ptr %698, align 8, !tbaa !198
  %700 = getelementptr inbounds %struct.uiBut, ptr %699, i64 0, i32 18, i32 3
  %701 = load float, ptr %700, align 4, !tbaa !247
  %702 = getelementptr inbounds %struct.uiBut, ptr %699, i64 0, i32 18, i32 2
  %703 = load float, ptr %702, align 4, !tbaa !248
  %704 = fsub float %701, %703
  %705 = fptosi float %704 to i32
  br label %709

706:                                              ; preds = %690
  %707 = getelementptr inbounds %struct.uiLayout, ptr %691, i64 0, i32 7
  %708 = load i32, ptr %707, align 4, !tbaa !207
  br label %709

709:                                              ; preds = %706, %697
  %710 = phi i32 [ %705, %697 ], [ %708, %706 ]
  br i1 %696, label %711, label %723

711:                                              ; preds = %709
  %712 = sub nsw i32 %666, %710
  %713 = sitofp i32 %693 to float
  %714 = getelementptr inbounds %struct.uiButtonItem, ptr %691, i64 0, i32 1
  %715 = load ptr, ptr %714, align 8, !tbaa !198
  %716 = getelementptr inbounds %struct.uiBut, ptr %715, i64 0, i32 18
  store float %713, ptr %716, align 8, !tbaa !249
  %717 = sitofp i32 %712 to float
  %718 = getelementptr inbounds %struct.uiBut, ptr %715, i64 0, i32 18, i32 2
  store float %717, ptr %718, align 8, !tbaa !250
  %719 = add nsw i32 %692, %693
  %720 = sitofp i32 %719 to float
  %721 = getelementptr inbounds %struct.uiBut, ptr %715, i64 0, i32 18, i32 1
  store float %720, ptr %721, align 4, !tbaa !251
  %722 = getelementptr inbounds %struct.uiBut, ptr %715, i64 0, i32 18, i32 3
  store float %688, ptr %722, align 4, !tbaa !252
  tail call void @ui_check_but(ptr noundef %715) #16
  br label %728

723:                                              ; preds = %709
  %724 = getelementptr inbounds %struct.uiLayout, ptr %691, i64 0, i32 4
  store i32 %693, ptr %724, align 8, !tbaa !204
  %725 = getelementptr inbounds %struct.uiLayout, ptr %691, i64 0, i32 5
  store i32 %666, ptr %725, align 4, !tbaa !205
  %726 = getelementptr inbounds %struct.uiLayout, ptr %691, i64 0, i32 6
  store i32 %692, ptr %726, align 8, !tbaa !97
  %727 = getelementptr inbounds %struct.uiLayout, ptr %691, i64 0, i32 7
  store i32 %710, ptr %727, align 4, !tbaa !207
  br label %728

728:                                              ; preds = %711, %723
  %729 = add nsw i32 %692, %693
  %730 = load ptr, ptr %691, align 8, !tbaa !217
  %731 = icmp eq ptr %730, null
  br i1 %731, label %738, label %732

732:                                              ; preds = %728
  %733 = sdiv i32 %689, %668
  %734 = tail call i32 @llvm.smax.i32(i32 %733, i32 0)
  %735 = load i16, ptr %669, align 8, !tbaa !104
  %736 = sext i16 %735 to i32
  %737 = add nsw i32 %729, %736
  br label %738

738:                                              ; preds = %732, %728
  %739 = phi i32 [ %737, %732 ], [ %729, %728 ]
  %740 = phi i32 [ %734, %732 ], [ %692, %728 ]
  %741 = load ptr, ptr %691, align 8, !tbaa !34
  %742 = icmp eq ptr %741, null
  br i1 %742, label %743, label %690, !llvm.loop !270

743:                                              ; preds = %738, %662
  %744 = phi i32 [ %664, %662 ], [ %739, %738 ]
  %745 = load i32, ptr %663, align 8, !tbaa !204
  %746 = sub nsw i32 %744, %745
  store i32 %746, ptr %667, align 8, !tbaa !97
  %747 = load i32, ptr %665, align 4, !tbaa !205
  %748 = sub nsw i32 %747, %666
  %749 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %748, ptr %749, align 4, !tbaa !207
  store i32 %744, ptr %663, align 8, !tbaa !204
  store i32 %666, ptr %665, align 4, !tbaa !205
  br label %986

750:                                              ; preds = %32
  %751 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %752 = load i32, ptr %751, align 8, !tbaa !204
  %753 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %754 = load i32, ptr %753, align 4, !tbaa !205
  %755 = load ptr, ptr %7, align 8, !tbaa !34
  %756 = icmp eq ptr %755, null
  br i1 %756, label %803, label %757

757:                                              ; preds = %750
  %758 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %759 = sitofp i32 %752 to float
  %760 = sitofp i32 %754 to float
  %761 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  br label %762

762:                                              ; preds = %757, %798
  %763 = phi ptr [ %755, %757 ], [ %801, %798 ]
  %764 = getelementptr inbounds %struct.uiItem, ptr %763, i64 0, i32 2
  %765 = load i32, ptr %764, align 8, !tbaa !218
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %776

767:                                              ; preds = %762
  %768 = getelementptr inbounds %struct.uiButtonItem, ptr %763, i64 0, i32 1
  %769 = load ptr, ptr %768, align 8, !tbaa !198
  %770 = getelementptr inbounds %struct.uiBut, ptr %769, i64 0, i32 18, i32 3
  %771 = load float, ptr %770, align 4, !tbaa !247
  %772 = getelementptr inbounds %struct.uiBut, ptr %769, i64 0, i32 18, i32 2
  %773 = load float, ptr %772, align 4, !tbaa !248
  %774 = fsub float %771, %773
  %775 = fptosi float %774 to i32
  br label %779

776:                                              ; preds = %762
  %777 = getelementptr inbounds %struct.uiLayout, ptr %763, i64 0, i32 7
  %778 = load i32, ptr %777, align 4, !tbaa !207
  br label %779

779:                                              ; preds = %776, %767
  %780 = phi i32 [ %775, %767 ], [ %778, %776 ]
  %781 = load i32, ptr %758, align 8, !tbaa !97
  br i1 %766, label %782, label %793

782:                                              ; preds = %779
  %783 = sub nsw i32 %754, %780
  %784 = getelementptr inbounds %struct.uiButtonItem, ptr %763, i64 0, i32 1
  %785 = load ptr, ptr %784, align 8, !tbaa !198
  %786 = getelementptr inbounds %struct.uiBut, ptr %785, i64 0, i32 18
  store float %759, ptr %786, align 8, !tbaa !249
  %787 = sitofp i32 %783 to float
  %788 = getelementptr inbounds %struct.uiBut, ptr %785, i64 0, i32 18, i32 2
  store float %787, ptr %788, align 8, !tbaa !250
  %789 = add nsw i32 %781, %752
  %790 = sitofp i32 %789 to float
  %791 = getelementptr inbounds %struct.uiBut, ptr %785, i64 0, i32 18, i32 1
  store float %790, ptr %791, align 4, !tbaa !251
  %792 = getelementptr inbounds %struct.uiBut, ptr %785, i64 0, i32 18, i32 3
  store float %760, ptr %792, align 4, !tbaa !252
  tail call void @ui_check_but(ptr noundef %785) #16
  br label %798

793:                                              ; preds = %779
  %794 = getelementptr inbounds %struct.uiLayout, ptr %763, i64 0, i32 4
  store i32 %752, ptr %794, align 8, !tbaa !204
  %795 = getelementptr inbounds %struct.uiLayout, ptr %763, i64 0, i32 5
  store i32 %754, ptr %795, align 4, !tbaa !205
  %796 = getelementptr inbounds %struct.uiLayout, ptr %763, i64 0, i32 6
  store i32 %781, ptr %796, align 8, !tbaa !97
  %797 = getelementptr inbounds %struct.uiLayout, ptr %763, i64 0, i32 7
  store i32 %780, ptr %797, align 4, !tbaa !207
  br label %798

798:                                              ; preds = %782, %793
  %799 = load i32, ptr %761, align 4, !tbaa !207
  %800 = tail call i32 @llvm.smax.i32(i32 %799, i32 %780)
  store i32 %800, ptr %761, align 4, !tbaa !207
  %801 = load ptr, ptr %763, align 8, !tbaa !34
  %802 = icmp eq ptr %801, null
  br i1 %802, label %803, label %762, !llvm.loop !271

803:                                              ; preds = %798, %750
  store i32 %752, ptr %751, align 8, !tbaa !204
  %804 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  %805 = load i32, ptr %804, align 4, !tbaa !207
  %806 = sub nsw i32 %754, %805
  store i32 %806, ptr %753, align 4, !tbaa !205
  br label %986

807:                                              ; preds = %32
  %808 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 112), align 4, !tbaa !272
  %809 = sitofp i16 %808 to float
  %810 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !266
  %811 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !273
  %812 = sitofp i32 %811 to float
  %813 = fmul float %810, %812
  %814 = fdiv float %813, 7.200000e+01
  %815 = fmul float %814, %809
  %816 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %817 = load i32, ptr %816, align 8, !tbaa !204
  %818 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %819 = load i32, ptr %818, align 4, !tbaa !205
  br label %820

820:                                              ; preds = %820, %807
  %821 = phi i32 [ 0, %807 ], [ %825, %820 ]
  %822 = phi ptr [ %7, %807 ], [ %823, %820 ]
  %823 = load ptr, ptr %822, align 8, !tbaa !34
  %824 = icmp eq ptr %823, null
  %825 = add nuw nsw i32 %821, 1
  br i1 %824, label %826, label %820, !llvm.loop !274

826:                                              ; preds = %820
  %827 = fptosi float %815 to i32
  %828 = icmp ult i32 %821, 5
  br i1 %828, label %829, label %837

829:                                              ; preds = %826
  %830 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %831 = load ptr, ptr %830, align 8, !tbaa !54
  %832 = getelementptr inbounds %struct.uiLayoutRoot, ptr %831, i64 0, i32 10
  %833 = load ptr, ptr %832, align 8, !tbaa !58
  %834 = getelementptr inbounds %struct.uiBlock, ptr %833, i64 0, i32 53, i32 5
  %835 = load i32, ptr %834, align 8, !tbaa !275
  %836 = or i32 %835, 1
  store i32 %836, ptr %834, align 8, !tbaa !275
  br label %837

837:                                              ; preds = %829, %826
  %838 = load ptr, ptr %7, align 8, !tbaa !34
  %839 = icmp eq ptr %838, null
  br i1 %839, label %977, label %840

840:                                              ; preds = %837
  %841 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %842 = sitofp i32 %817 to float
  %843 = sitofp i32 %827 to float
  %844 = sitofp i32 %819 to float
  br label %845

845:                                              ; preds = %840, %969
  %846 = phi ptr [ %838, %840 ], [ %975, %969 ]
  %847 = phi i32 [ 0, %840 ], [ %974, %969 ]
  %848 = phi i32 [ %817, %840 ], [ %973, %969 ]
  %849 = phi i32 [ %819, %840 ], [ %972, %969 ]
  %850 = phi i32 [ %819, %840 ], [ %971, %969 ]
  %851 = phi i32 [ %817, %840 ], [ %970, %969 ]
  %852 = getelementptr inbounds %struct.uiItem, ptr %846, i64 0, i32 2
  %853 = load i32, ptr %852, align 8, !tbaa !218
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %855, label %861

855:                                              ; preds = %845
  %856 = getelementptr inbounds %struct.uiButtonItem, ptr %846, i64 0, i32 1
  %857 = load ptr, ptr %856, align 8, !tbaa !198
  %858 = getelementptr inbounds %struct.uiBut, ptr %857, i64 0, i32 4
  %859 = load i32, ptr %858, align 8, !tbaa !132
  %860 = icmp eq i32 %859, 5120
  br i1 %860, label %969, label %861

861:                                              ; preds = %855, %845
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %862 = zext i32 %847 to i64
  %863 = shl i64 %862, 48
  %864 = ashr exact i64 %863, 48
  %865 = getelementptr inbounds [8 x i8], ptr @ui_radial_dir_order, i64 0, i64 %864
  %866 = load i8, ptr %865, align 1, !tbaa !68
  %867 = zext i8 %866 to i32
  call void @ui_but_pie_dir(i32 noundef %867, ptr noundef nonnull %2) #16
  %868 = load float, ptr %2, align 4, !tbaa !202
  %869 = fcmp ogt float %868, 0x3F847AE140000000
  %870 = fcmp olt float %868, 0xBF847AE140000000
  %871 = select i1 %870, float -1.000000e+00, float -5.000000e-01
  %872 = select i1 %869, float 0.000000e+00, float %871
  %873 = load float, ptr %841, align 4, !tbaa !202
  %874 = fcmp ogt float %873, 0x3FEFAE1480000000
  %875 = fcmp olt float %873, 0xBFEFAE1480000000
  %876 = select i1 %875, float -1.000000e+00, float -5.000000e-01
  %877 = select i1 %874, float 0.000000e+00, float %876
  %878 = add nsw i32 %847, 1
  %879 = load i32, ptr %852, align 8, !tbaa !218
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %881, label %913

881:                                              ; preds = %861
  %882 = getelementptr inbounds %struct.uiButtonItem, ptr %846, i64 0, i32 1
  %883 = load ptr, ptr %882, align 8, !tbaa !198
  %884 = getelementptr inbounds %struct.uiBut, ptr %883, i64 0, i32 47
  store i8 %866, ptr %884, align 2, !tbaa !276
  %885 = getelementptr inbounds %struct.uiBut, ptr %883, i64 0, i32 18, i32 3
  %886 = load float, ptr %885, align 4, !tbaa !252
  %887 = fmul float %886, 1.500000e+00
  store float %887, ptr %885, align 4, !tbaa !252
  %888 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !69
  %889 = sitofp i16 %888 to float
  %890 = getelementptr inbounds %struct.uiBut, ptr %883, i64 0, i32 18, i32 1
  %891 = load float, ptr %890, align 4, !tbaa !251
  %892 = call float @llvm.fmuladd.f32(float %889, float 1.500000e+00, float %891)
  store float %892, ptr %890, align 4, !tbaa !251
  %893 = getelementptr inbounds %struct.uiBut, ptr %883, i64 0, i32 4
  %894 = load i32, ptr %893, align 8, !tbaa !132
  switch i32 %894, label %895 [
    i32 27648, label %897
    i32 10752, label %897
  ]

895:                                              ; preds = %881
  %896 = getelementptr inbounds %struct.uiBut, ptr %883, i64 0, i32 46
  store i8 4, ptr %896, align 1, !tbaa !137
  br label %897

897:                                              ; preds = %881, %881, %895
  br i1 %880, label %898, label %913

898:                                              ; preds = %897
  %899 = getelementptr inbounds %struct.uiButtonItem, ptr %846, i64 0, i32 1
  %900 = load ptr, ptr %899, align 8, !tbaa !198
  %901 = getelementptr inbounds %struct.uiBut, ptr %900, i64 0, i32 18
  %902 = getelementptr inbounds %struct.uiBut, ptr %900, i64 0, i32 18, i32 1
  %903 = load float, ptr %902, align 4, !tbaa !245
  %904 = load float, ptr %901, align 4, !tbaa !246
  %905 = fsub float %903, %904
  %906 = fptosi float %905 to i32
  %907 = getelementptr inbounds %struct.uiBut, ptr %900, i64 0, i32 18, i32 3
  %908 = load float, ptr %907, align 4, !tbaa !247
  %909 = getelementptr inbounds %struct.uiBut, ptr %900, i64 0, i32 18, i32 2
  %910 = load float, ptr %909, align 4, !tbaa !248
  %911 = fsub float %908, %910
  %912 = fptosi float %911 to i32
  br label %918

913:                                              ; preds = %861, %897
  %914 = getelementptr inbounds %struct.uiLayout, ptr %846, i64 0, i32 6
  %915 = load i32, ptr %914, align 8, !tbaa !97
  %916 = getelementptr inbounds %struct.uiLayout, ptr %846, i64 0, i32 7
  %917 = load i32, ptr %916, align 4, !tbaa !207
  br label %918

918:                                              ; preds = %913, %898
  %919 = phi i32 [ %912, %898 ], [ %917, %913 ]
  %920 = phi i32 [ %906, %898 ], [ %915, %913 ]
  %921 = call float @llvm.fmuladd.f32(float %868, float %843, float %842)
  %922 = sitofp i32 %920 to float
  %923 = call float @llvm.fmuladd.f32(float %872, float %922, float %921)
  %924 = fptosi float %923 to i32
  %925 = call float @llvm.fmuladd.f32(float %873, float %843, float %844)
  %926 = sitofp i32 %919 to float
  %927 = call float @llvm.fmuladd.f32(float %877, float %926, float %925)
  %928 = fptosi float %927 to i32
  br i1 %880, label %929, label %942

929:                                              ; preds = %918
  %930 = sitofp i32 %924 to float
  %931 = getelementptr inbounds %struct.uiButtonItem, ptr %846, i64 0, i32 1
  %932 = load ptr, ptr %931, align 8, !tbaa !198
  %933 = getelementptr inbounds %struct.uiBut, ptr %932, i64 0, i32 18
  store float %930, ptr %933, align 8, !tbaa !249
  %934 = sitofp i32 %928 to float
  %935 = getelementptr inbounds %struct.uiBut, ptr %932, i64 0, i32 18, i32 2
  store float %934, ptr %935, align 8, !tbaa !250
  %936 = add nsw i32 %920, %924
  %937 = sitofp i32 %936 to float
  %938 = getelementptr inbounds %struct.uiBut, ptr %932, i64 0, i32 18, i32 1
  store float %937, ptr %938, align 4, !tbaa !251
  %939 = add nsw i32 %919, %928
  %940 = sitofp i32 %939 to float
  %941 = getelementptr inbounds %struct.uiBut, ptr %932, i64 0, i32 18, i32 3
  store float %940, ptr %941, align 4, !tbaa !252
  call void @ui_check_but(ptr noundef %932) #16
  br label %948

942:                                              ; preds = %918
  %943 = getelementptr inbounds %struct.uiLayout, ptr %846, i64 0, i32 4
  store i32 %924, ptr %943, align 8, !tbaa !204
  %944 = add nsw i32 %919, %928
  %945 = getelementptr inbounds %struct.uiLayout, ptr %846, i64 0, i32 5
  store i32 %944, ptr %945, align 4, !tbaa !205
  %946 = getelementptr inbounds %struct.uiLayout, ptr %846, i64 0, i32 6
  store i32 %920, ptr %946, align 8, !tbaa !97
  %947 = getelementptr inbounds %struct.uiLayout, ptr %846, i64 0, i32 7
  store i32 %919, ptr %947, align 4, !tbaa !207
  br label %948

948:                                              ; preds = %929, %942
  %949 = load float, ptr %2, align 4, !tbaa !202
  %950 = call float @llvm.fmuladd.f32(float %949, float %843, float %842)
  %951 = sdiv i32 %920, 2
  %952 = sitofp i32 %951 to float
  %953 = fsub float %950, %952
  %954 = fptosi float %953 to i32
  %955 = call i32 @llvm.smin.i32(i32 %848, i32 %954)
  %956 = fadd float %950, %952
  %957 = fptosi float %956 to i32
  %958 = call i32 @llvm.smax.i32(i32 %957, i32 %851)
  %959 = load float, ptr %841, align 4, !tbaa !202
  %960 = call float @llvm.fmuladd.f32(float %959, float %843, float %844)
  %961 = sdiv i32 %919, 2
  %962 = sitofp i32 %961 to float
  %963 = fsub float %960, %962
  %964 = fptosi float %963 to i32
  %965 = call i32 @llvm.smin.i32(i32 %849, i32 %964)
  %966 = fadd float %960, %962
  %967 = fptosi float %966 to i32
  %968 = call i32 @llvm.smax.i32(i32 %967, i32 %850)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %969

969:                                              ; preds = %855, %948
  %970 = phi i32 [ %958, %948 ], [ %851, %855 ]
  %971 = phi i32 [ %968, %948 ], [ %850, %855 ]
  %972 = phi i32 [ %965, %948 ], [ %849, %855 ]
  %973 = phi i32 [ %955, %948 ], [ %848, %855 ]
  %974 = phi i32 [ %878, %948 ], [ %847, %855 ]
  %975 = load ptr, ptr %846, align 8, !tbaa !34
  %976 = icmp eq ptr %975, null
  br i1 %976, label %977, label %845, !llvm.loop !277

977:                                              ; preds = %969, %837
  %978 = phi i32 [ %817, %837 ], [ %970, %969 ]
  %979 = phi i32 [ %819, %837 ], [ %971, %969 ]
  %980 = phi i32 [ %819, %837 ], [ %972, %969 ]
  %981 = phi i32 [ %817, %837 ], [ %973, %969 ]
  store i32 %981, ptr %816, align 8, !tbaa !204
  store i32 %980, ptr %818, align 4, !tbaa !205
  %982 = sub nsw i32 %978, %981
  %983 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 %982, ptr %983, align 8, !tbaa !97
  %984 = sub nsw i32 %979, %980
  %985 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %984, ptr %985, align 4, !tbaa !207
  br label %986

986:                                              ; preds = %743, %659, %462, %370, %365, %364, %32, %977, %803, %653, %344, %249, %243, %95
  %987 = load ptr, ptr %7, align 8, !tbaa !34
  %988 = icmp eq ptr %987, null
  br i1 %988, label %993, label %989

989:                                              ; preds = %986, %989
  %990 = phi ptr [ %991, %989 ], [ %987, %986 ]
  call fastcc void @ui_item_layout(ptr noundef nonnull %990)
  %991 = load ptr, ptr %990, align 8, !tbaa !34
  %992 = icmp eq ptr %991, null
  br i1 %992, label %993, label %989, !llvm.loop !278

993:                                              ; preds = %989, %986, %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_item_align(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %41
  %9 = phi ptr [ %4, %6 ], [ %43, %41 ]
  %10 = getelementptr inbounds %struct.uiItem, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !218
  switch i32 %11, label %36 [
    i32 0, label %12
    i32 6, label %41
    i32 8, label %41
    i32 5, label %23
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uiButtonItem, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !198
  %15 = tail call zeroext i8 @ui_but_can_align(ptr noundef %14) #16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 8, !tbaa !198
  %19 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 10
  %20 = load i16, ptr %19, align 8, !tbaa !279
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  store i16 %1, ptr %19, align 8, !tbaa !279
  br label %41

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.uiLayoutItemBx, ptr %9, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !195
  %26 = getelementptr inbounds %struct.uiBut, ptr %25, i64 0, i32 10
  store i16 %1, ptr %26, align 8, !tbaa !279
  %27 = load ptr, ptr %7, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.uiLayoutRoot, ptr %27, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = getelementptr inbounds %struct.uiBlock, ptr %29, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %30, ptr noundef %25) #16
  %31 = load ptr, ptr %7, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.uiLayoutRoot, ptr %31, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.uiBlock, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %24, align 8, !tbaa !195
  tail call void @BLI_addhead(ptr noundef nonnull %34, ptr noundef %35) #16
  br label %41

36:                                               ; preds = %8
  %37 = getelementptr inbounds %struct.uiLayout, ptr %9, i64 0, i32 10
  %38 = load i8, ptr %37, align 2, !tbaa !100
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call fastcc void @ui_item_align(ptr noundef nonnull %9, i16 noundef signext %1)
  br label %41

41:                                               ; preds = %8, %8, %17, %22, %12, %36, %40, %23
  %42 = getelementptr inbounds %struct.uiItem, ptr %9, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %8, !llvm.loop !280

45:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_item_flag(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %20, %18 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.uiItem, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !218
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.uiButtonItem, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !198
  %14 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !49
  %16 = or i32 %15, %1
  store i32 %16, ptr %14, align 8, !tbaa !49
  br label %18

17:                                               ; preds = %6
  tail call fastcc void @ui_item_flag(ptr noundef nonnull %7, i32 noundef %1)
  br label %18

18:                                               ; preds = %11, %17
  %19 = getelementptr inbounds %struct.uiItem, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !281

22:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_litem_layout_row(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !205
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %1, %28
  %10 = phi ptr [ %32, %28 ], [ %7, %1 ]
  %11 = phi i32 [ %30, %28 ], [ 0, %1 ]
  %12 = phi i32 [ %31, %28 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.uiItem, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !218
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.uiButtonItem, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !198
  %19 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 18
  %20 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 18, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !245
  %22 = load float, ptr %19, align 4, !tbaa !246
  %23 = fsub float %21, %22
  %24 = fptosi float %23 to i32
  br label %28

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.uiLayout, ptr %10, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !97
  br label %28

28:                                               ; preds = %16, %25
  %29 = phi i32 [ %24, %16 ], [ %27, %25 ]
  %30 = add nsw i32 %29, %11
  %31 = add nuw nsw i32 %12, 1
  %32 = load ptr, ptr %10, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %9, !llvm.loop !282

34:                                               ; preds = %28, %1
  %35 = phi i32 [ -1, %1 ], [ %12, %28 ]
  %36 = phi i32 [ 0, %1 ], [ %30, %28 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %293, label %38

38:                                               ; preds = %34
  %39 = icmp eq i32 %5, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  %42 = load i16, ptr %41, align 8, !tbaa !104
  %43 = sext i16 %42 to i32
  %44 = mul nsw i32 %35, %43
  %45 = sub nsw i32 %5, %44
  br label %46

46:                                               ; preds = %40, %38
  %47 = phi i32 [ %45, %40 ], [ 0, %38 ]
  %48 = load ptr, ptr %6, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %51 = icmp ne i32 %47, 0
  %52 = icmp eq i32 %47, 0
  br label %53

53:                                               ; preds = %131, %46
  %54 = phi i32 [ %36, %46 ], [ %132, %131 ]
  %55 = phi i32 [ 0, %46 ], [ %133, %131 ]
  br i1 %49, label %131, label %56

56:                                               ; preds = %53
  %57 = sub nsw i32 %47, %55
  %58 = icmp sgt i32 %57, 0
  %59 = icmp sgt i32 %54, %57
  br label %60

60:                                               ; preds = %56, %123
  %61 = phi ptr [ %48, %56 ], [ %129, %123 ]
  %62 = phi i32 [ 0, %56 ], [ %128, %123 ]
  %63 = phi i32 [ 0, %56 ], [ %127, %123 ]
  %64 = phi i32 [ %55, %56 ], [ %126, %123 ]
  %65 = phi i32 [ %54, %56 ], [ %125, %123 ]
  %66 = phi i32 [ 0, %56 ], [ %124, %123 ]
  %67 = getelementptr inbounds %struct.uiItem, ptr %61, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !283
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %123

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.uiItem, ptr %61, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !218
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.uiButtonItem, ptr %61, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !198
  %77 = getelementptr inbounds %struct.uiBut, ptr %76, i64 0, i32 18
  %78 = getelementptr inbounds %struct.uiBut, ptr %76, i64 0, i32 18, i32 1
  %79 = load float, ptr %78, align 4, !tbaa !245
  %80 = load float, ptr %77, align 4, !tbaa !246
  %81 = fsub float %79, %80
  %82 = fptosi float %81 to i32
  br label %86

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.uiLayout, ptr %61, i64 0, i32 6
  %85 = load i32, ptr %84, align 8, !tbaa !97
  br label %86

86:                                               ; preds = %74, %83
  %87 = phi i32 [ %82, %74 ], [ %85, %83 ]
  %88 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %89 = sext i16 %88 to i32
  %90 = shl nsw i32 %89, 1
  %91 = tail call i32 @llvm.smin.i32(i32 %90, i32 %87)
  br i1 %58, label %92, label %110

92:                                               ; preds = %86
  %93 = load ptr, ptr %61, align 8, !tbaa !217
  %94 = icmp eq ptr %93, null
  br i1 %59, label %95, label %101

95:                                               ; preds = %92
  br i1 %94, label %96, label %98

96:                                               ; preds = %95
  %97 = sub nsw i32 %57, %66
  br label %110

98:                                               ; preds = %95
  %99 = mul nsw i32 %87, %57
  %100 = sdiv i32 %99, %54
  br label %110

101:                                              ; preds = %92
  %102 = load i8, ptr %50, align 1, !tbaa !73
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  br i1 %94, label %105, label %107

105:                                              ; preds = %104
  %106 = sub nsw i32 %57, %66
  br label %110

107:                                              ; preds = %104
  %108 = mul nsw i32 %87, %57
  %109 = sdiv i32 %108, %54
  br label %110

110:                                              ; preds = %107, %105, %101, %98, %96, %86
  %111 = phi i32 [ 0, %86 ], [ %97, %96 ], [ %100, %98 ], [ %106, %105 ], [ %109, %107 ], [ %87, %101 ]
  %112 = add nsw i32 %111, %66
  %113 = icmp slt i32 %111, %91
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = icmp sle i32 %87, %90
  %116 = select i1 %115, i1 %51, i1 false
  br i1 %116, label %118, label %121

117:                                              ; preds = %110
  br i1 %52, label %121, label %118

118:                                              ; preds = %114, %117
  store i32 1, ptr %67, align 4, !tbaa !283
  %119 = add nsw i32 %91, %64
  %120 = sub nsw i32 %65, %87
  br label %123

121:                                              ; preds = %117, %114
  store i32 0, ptr %67, align 4, !tbaa !283
  %122 = add nsw i32 %87, %63
  br label %123

123:                                              ; preds = %118, %121, %60
  %124 = phi i32 [ %66, %60 ], [ %112, %118 ], [ %112, %121 ]
  %125 = phi i32 [ %65, %60 ], [ %120, %118 ], [ %65, %121 ]
  %126 = phi i32 [ %64, %60 ], [ %119, %118 ], [ %64, %121 ]
  %127 = phi i32 [ %63, %60 ], [ %63, %118 ], [ %122, %121 ]
  %128 = phi i32 [ %62, %60 ], [ 1, %118 ], [ %62, %121 ]
  %129 = load ptr, ptr %61, align 8, !tbaa !34
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %60, !llvm.loop !284

131:                                              ; preds = %123, %53
  %132 = phi i32 [ %54, %53 ], [ %125, %123 ]
  %133 = phi i32 [ %55, %53 ], [ %126, %123 ]
  %134 = phi i32 [ 0, %53 ], [ %127, %123 ]
  %135 = phi i32 [ 0, %53 ], [ %128, %123 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %53, !llvm.loop !285

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %139 = load i32, ptr %138, align 8, !tbaa !204
  %140 = load ptr, ptr %6, align 8, !tbaa !34
  %141 = icmp eq ptr %140, null
  br i1 %141, label %286, label %142

142:                                              ; preds = %137
  %143 = tail call i32 @llvm.smin.i32(i32 %47, i32 %133)
  %144 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %145 = icmp eq i32 %143, 0
  %146 = icmp slt i32 %47, %133
  %147 = sub nsw i32 %47, %133
  %148 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %149 = icmp eq i32 %47, %133
  %150 = icmp sgt i32 %134, %147
  %151 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %152 = add nsw i32 %134, %133
  %153 = icmp sgt i32 %152, 0
  %154 = icmp slt i32 %152, %47
  %155 = select i1 %153, i1 %154, i1 false
  %156 = sub nsw i32 %47, %152
  %157 = sdiv i32 %156, 2
  %158 = add nsw i32 %134, %133
  %159 = icmp sgt i32 %158, 0
  %160 = icmp slt i32 %158, %47
  %161 = select i1 %159, i1 %160, i1 false
  %162 = sub nsw i32 %47, %158
  %163 = select i1 %161, i32 %162, i32 0
  %164 = sitofp i32 %3 to float
  %165 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  %166 = select i1 %155, i32 %157, i32 0
  br label %167

167:                                              ; preds = %142, %282
  %168 = phi ptr [ %140, %142 ], [ %284, %282 ]
  %169 = phi i32 [ 0, %142 ], [ %250, %282 ]
  %170 = phi i32 [ 0, %142 ], [ %249, %282 ]
  %171 = phi i32 [ %139, %142 ], [ %283, %282 ]
  %172 = getelementptr inbounds %struct.uiItem, ptr %168, i64 0, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !218
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.uiButtonItem, ptr %168, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !198
  %178 = getelementptr inbounds %struct.uiBut, ptr %177, i64 0, i32 18
  %179 = getelementptr inbounds %struct.uiBut, ptr %177, i64 0, i32 18, i32 1
  %180 = load float, ptr %179, align 4, !tbaa !245
  %181 = load float, ptr %178, align 4, !tbaa !246
  %182 = fsub float %180, %181
  %183 = fptosi float %182 to i32
  %184 = getelementptr inbounds %struct.uiBut, ptr %177, i64 0, i32 18, i32 3
  %185 = load float, ptr %184, align 4, !tbaa !247
  %186 = getelementptr inbounds %struct.uiBut, ptr %177, i64 0, i32 18, i32 2
  %187 = load float, ptr %186, align 4, !tbaa !248
  %188 = fsub float %185, %187
  %189 = fptosi float %188 to i32
  br label %195

190:                                              ; preds = %167
  %191 = getelementptr inbounds %struct.uiLayout, ptr %168, i64 0, i32 6
  %192 = load i32, ptr %191, align 8, !tbaa !97
  %193 = getelementptr inbounds %struct.uiLayout, ptr %168, i64 0, i32 7
  %194 = load i32, ptr %193, align 4, !tbaa !207
  br label %195

195:                                              ; preds = %175, %190
  %196 = phi i32 [ %183, %175 ], [ %192, %190 ]
  %197 = phi i32 [ %189, %175 ], [ %194, %190 ]
  %198 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %199 = sext i16 %198 to i32
  %200 = shl nsw i32 %199, 1
  %201 = tail call i32 @llvm.smin.i32(i32 %200, i32 %196)
  %202 = getelementptr inbounds %struct.uiItem, ptr %168, i64 0, i32 3
  %203 = load i32, ptr %202, align 4, !tbaa !283
  %204 = icmp eq i32 %203, 0
  %205 = load ptr, ptr %168, align 8, !tbaa !217
  %206 = icmp eq ptr %205, null
  br i1 %204, label %227, label %207

207:                                              ; preds = %195
  %208 = load i8, ptr %144, align 1, !tbaa !73
  br i1 %145, label %224, label %209

209:                                              ; preds = %207
  br i1 %146, label %210, label %216

210:                                              ; preds = %209
  br i1 %206, label %211, label %213

211:                                              ; preds = %210
  %212 = sub nsw i32 %143, %170
  br label %224

213:                                              ; preds = %210
  %214 = mul nsw i32 %201, %143
  %215 = sdiv i32 %214, %133
  br label %224

216:                                              ; preds = %209
  %217 = icmp eq i8 %208, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %216
  br i1 %206, label %219, label %221

219:                                              ; preds = %218
  %220 = sub nsw i32 %143, %170
  br label %224

221:                                              ; preds = %218
  %222 = mul nsw i32 %201, %143
  %223 = sdiv i32 %222, %133
  br label %224

224:                                              ; preds = %207, %211, %213, %216, %219, %221
  %225 = phi i32 [ %212, %211 ], [ %215, %213 ], [ %220, %219 ], [ %223, %221 ], [ %201, %207 ], [ %201, %216 ]
  %226 = add nsw i32 %225, %170
  br label %247

227:                                              ; preds = %195
  %228 = load i8, ptr %148, align 1, !tbaa !73
  br i1 %149, label %244, label %229

229:                                              ; preds = %227
  br i1 %150, label %230, label %236

230:                                              ; preds = %229
  br i1 %206, label %231, label %233

231:                                              ; preds = %230
  %232 = sub nsw i32 %147, %169
  br label %244

233:                                              ; preds = %230
  %234 = mul nsw i32 %196, %147
  %235 = sdiv i32 %234, %134
  br label %244

236:                                              ; preds = %229
  %237 = icmp eq i8 %228, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %236
  br i1 %206, label %239, label %241

239:                                              ; preds = %238
  %240 = sub nsw i32 %147, %169
  br label %244

241:                                              ; preds = %238
  %242 = mul nsw i32 %196, %147
  %243 = sdiv i32 %242, %134
  br label %244

244:                                              ; preds = %227, %231, %233, %236, %239, %241
  %245 = phi i32 [ %232, %231 ], [ %235, %233 ], [ %240, %239 ], [ %243, %241 ], [ %196, %227 ], [ %196, %236 ]
  %246 = add nsw i32 %245, %169
  br label %247

247:                                              ; preds = %244, %224
  %248 = phi i32 [ %245, %244 ], [ %225, %224 ]
  %249 = phi i32 [ %170, %244 ], [ %226, %224 ]
  %250 = phi i32 [ %246, %244 ], [ %169, %224 ]
  %251 = load i8, ptr %151, align 1, !tbaa !73
  switch i8 %251, label %254 [
    i8 3, label %252
    i8 2, label %253
  ]

252:                                              ; preds = %247
  br label %254

253:                                              ; preds = %247
  br label %254

254:                                              ; preds = %253, %252, %247
  %255 = phi i32 [ 0, %247 ], [ %163, %252 ], [ %166, %253 ]
  %256 = add nsw i32 %255, %171
  br i1 %174, label %257, label %269

257:                                              ; preds = %254
  %258 = sub nsw i32 %3, %197
  %259 = sitofp i32 %256 to float
  %260 = getelementptr inbounds %struct.uiButtonItem, ptr %168, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !198
  %262 = getelementptr inbounds %struct.uiBut, ptr %261, i64 0, i32 18
  store float %259, ptr %262, align 8, !tbaa !249
  %263 = sitofp i32 %258 to float
  %264 = getelementptr inbounds %struct.uiBut, ptr %261, i64 0, i32 18, i32 2
  store float %263, ptr %264, align 8, !tbaa !250
  %265 = add nsw i32 %256, %248
  %266 = sitofp i32 %265 to float
  %267 = getelementptr inbounds %struct.uiBut, ptr %261, i64 0, i32 18, i32 1
  store float %266, ptr %267, align 4, !tbaa !251
  %268 = getelementptr inbounds %struct.uiBut, ptr %261, i64 0, i32 18, i32 3
  store float %164, ptr %268, align 4, !tbaa !252
  tail call void @ui_check_but(ptr noundef %261) #16
  br label %274

269:                                              ; preds = %254
  %270 = getelementptr inbounds %struct.uiLayout, ptr %168, i64 0, i32 4
  store i32 %256, ptr %270, align 8, !tbaa !204
  %271 = getelementptr inbounds %struct.uiLayout, ptr %168, i64 0, i32 5
  store i32 %3, ptr %271, align 4, !tbaa !205
  %272 = getelementptr inbounds %struct.uiLayout, ptr %168, i64 0, i32 6
  store i32 %248, ptr %272, align 8, !tbaa !97
  %273 = getelementptr inbounds %struct.uiLayout, ptr %168, i64 0, i32 7
  store i32 %197, ptr %273, align 4, !tbaa !207
  br label %274

274:                                              ; preds = %257, %269
  %275 = add nsw i32 %248, %171
  %276 = load ptr, ptr %168, align 8, !tbaa !217
  %277 = icmp eq ptr %276, null
  br i1 %277, label %282, label %278

278:                                              ; preds = %274
  %279 = load i16, ptr %165, align 8, !tbaa !104
  %280 = sext i16 %279 to i32
  %281 = add nsw i32 %275, %280
  br label %282

282:                                              ; preds = %274, %278
  %283 = phi i32 [ %281, %278 ], [ %275, %274 ]
  %284 = load ptr, ptr %168, align 8, !tbaa !34
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %167, !llvm.loop !286

286:                                              ; preds = %282, %137
  %287 = phi i32 [ %139, %137 ], [ %283, %282 ]
  %288 = load i32, ptr %138, align 8, !tbaa !204
  %289 = sub nsw i32 %287, %288
  store i32 %289, ptr %4, align 8, !tbaa !97
  %290 = load i32, ptr %2, align 4, !tbaa !205
  %291 = sub nsw i32 %290, %3
  %292 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %291, ptr %292, align 4, !tbaa !207
  store i32 %287, ptr %138, align 8, !tbaa !204
  store i32 %3, ptr %2, align 4, !tbaa !205
  br label %293

293:                                              ; preds = %34, %286
  ret void
}

declare zeroext i8 @ui_but_can_align(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @ui_but_pie_dir(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_intro_items(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.49) #16
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %62
  %8 = phi ptr [ %3, %5 ], [ %63, %62 ]
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.50) #16
  %9 = getelementptr inbounds %struct.uiItem, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !218
  %11 = icmp ult i32 %10, 11
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = zext nneg i32 %10 to i64
  %14 = shl i64 %13, 2
  %15 = call ptr @llvm.load.relative.i64(ptr @reltable.ui_intro_items, i64 %14)
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi ptr [ %15, %12 ], [ @.str.61, %7 ]
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull %17) #16
  %18 = load i32, ptr %9, align 8, !tbaa !218
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.uiButtonItem, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !198
  %23 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.66, i32 noundef %24) #16
  %25 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 17
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef nonnull %25) #16
  %26 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 42
  %27 = load ptr, ptr %26, align 8, !tbaa !111
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @.str, ptr %27
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull %29) #16
  %30 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 59
  %31 = load ptr, ptr %30, align 8, !tbaa !287
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 74
  %35 = load ptr, ptr %34, align 8, !tbaa !240
  %36 = getelementptr inbounds %struct.uiBlock, ptr %35, i64 0, i32 48
  %37 = load ptr, ptr %36, align 8, !tbaa !80
  %38 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 60
  %39 = load ptr, ptr %38, align 8, !tbaa !288
  %40 = tail call ptr @WM_operator_pystring_ex(ptr noundef %37, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %31, ptr noundef %39) #16
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, ptr @.str, ptr %40
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef nonnull %42) #16
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %43(ptr noundef %40) #16
  br label %44

44:                                               ; preds = %33, %20
  %45 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 55
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 54, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !289
  %51 = tail call ptr @RNA_struct_identifier(ptr noundef %50) #16
  %52 = load ptr, ptr %45, align 8, !tbaa !51
  %53 = tail call ptr @RNA_property_identifier(ptr noundef %52) #16
  %54 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 56
  %55 = load i32, ptr %54, align 8, !tbaa !290
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef %51, ptr noundef %53, i32 noundef %55) #16
  br label %58

56:                                               ; preds = %16
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.62) #16
  %57 = getelementptr inbounds %struct.uiLayout, ptr %8, i64 0, i32 3
  tail call fastcc void @ui_intro_items(ptr noundef %0, ptr noundef nonnull %57)
  br label %58

58:                                               ; preds = %48, %44, %56
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.63) #16
  %59 = load ptr, ptr %6, align 8, !tbaa !291
  %60 = icmp eq ptr %8, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.64) #16
  br label %62

62:                                               ; preds = %58, %61
  %63 = load ptr, ptr %8, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %7, !llvm.loop !292

65:                                               ; preds = %62, %2
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.65) #16
  ret void
}

declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_dynstr_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @WM_operator_pystring_ex(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

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
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !35, i64 8}
!42 = !{!"uiBut", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !44, i64 32, !44, i64 34, !44, i64 36, !44, i64 38, !44, i64 40, !44, i64 42, !44, i64 44, !44, i64 46, !44, i64 48, !35, i64 56, !36, i64 64, !36, i64 192, !45, i64 592, !35, i64 608, !46, i64 616, !46, i64 620, !46, i64 624, !46, i64 628, !46, i64 632, !46, i64 636, !36, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !35, i64 720, !35, i64 728, !35, i64 736, !35, i64 744, !35, i64 752, !36, i64 760, !35, i64 768, !35, i64 776, !43, i64 784, !36, i64 788, !36, i64 789, !36, i64 790, !36, i64 791, !36, i64 792, !44, i64 794, !44, i64 796, !35, i64 800, !35, i64 808, !47, i64 816, !35, i64 840, !43, i64 848, !47, i64 856, !35, i64 880, !35, i64 888, !35, i64 896, !44, i64 904, !36, i64 906, !36, i64 907, !35, i64 912, !35, i64 920, !46, i64 928, !35, i64 936, !35, i64 944, !35, i64 952, !35, i64 960, !35, i64 968, !35, i64 976, !35, i64 984, !35, i64 992}
!43 = !{!"int", !36, i64 0}
!44 = !{!"short", !36, i64 0}
!45 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!46 = !{!"float", !36, i64 0}
!47 = !{!"PointerRNA", !48, i64 0, !35, i64 8, !35, i64 16}
!48 = !{!"", !35, i64 0}
!49 = !{!42, !43, i64 16}
!50 = !{!42, !35, i64 832}
!51 = !{!42, !35, i64 840}
!52 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!53 = distinct !{!53, !39, !40}
!54 = !{!55, !35, i64 24}
!55 = !{!"uiLayout", !56, i64 0, !35, i64 24, !35, i64 32, !57, i64 40, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !36, i64 72, !44, i64 80, !36, i64 82, !36, i64 83, !36, i64 84, !36, i64 85, !36, i64 86, !36, i64 87}
!56 = !{!"uiItem", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20}
!57 = !{!"ListBase", !35, i64 0, !35, i64 8}
!58 = !{!59, !35, i64 64}
!59 = !{!"uiLayoutRoot", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72}
!60 = !{!61, !35, i64 88}
!61 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !57, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !62, i64 152, !44, i64 184}
!62 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!63 = !{!59, !43, i64 16}
!64 = !{!65, !35, i64 80}
!65 = !{!"uiBlock", !35, i64 0, !35, i64 8, !57, i64 16, !35, i64 32, !35, i64 40, !57, i64 48, !57, i64 64, !35, i64 80, !57, i64 88, !36, i64 104, !36, i64 232, !45, i64 296, !46, i64 312, !43, i64 316, !35, i64 320, !35, i64 328, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !43, i64 424, !44, i64 428, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !66, i64 440, !35, i64 448, !36, i64 456, !36, i64 457, !36, i64 458, !36, i64 459, !43, i64 460, !43, i64 464, !43, i64 468, !43, i64 472, !43, i64 476, !45, i64 480, !57, i64 496, !35, i64 512, !35, i64 520, !35, i64 528, !35, i64 536, !36, i64 544, !36, i64 556, !36, i64 557, !67, i64 624}
!66 = !{!"double", !36, i64 0}
!67 = !{!"PieMenuData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !66, i64 32, !43, i64 40, !43, i64 44, !46, i64 48}
!68 = !{!36, !36, i64 0}
!69 = !{!70, !44, i64 8948}
!70 = !{!"UserDef", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !43, i64 8468, !44, i64 8472, !44, i64 8474, !44, i64 8476, !44, i64 8478, !44, i64 8480, !44, i64 8482, !43, i64 8484, !43, i64 8488, !43, i64 8492, !44, i64 8496, !44, i64 8498, !43, i64 8500, !43, i64 8504, !43, i64 8508, !43, i64 8512, !43, i64 8516, !43, i64 8520, !43, i64 8524, !44, i64 8528, !44, i64 8530, !44, i64 8532, !44, i64 8534, !57, i64 8536, !57, i64 8552, !57, i64 8568, !57, i64 8584, !57, i64 8600, !57, i64 8616, !57, i64 8632, !36, i64 8648, !44, i64 8712, !44, i64 8714, !44, i64 8716, !44, i64 8718, !44, i64 8720, !44, i64 8722, !44, i64 8724, !44, i64 8726, !36, i64 8728, !44, i64 8896, !44, i64 8898, !44, i64 8900, !44, i64 8902, !44, i64 8904, !44, i64 8906, !44, i64 8908, !44, i64 8910, !43, i64 8912, !43, i64 8916, !44, i64 8920, !44, i64 8922, !44, i64 8924, !44, i64 8926, !44, i64 8928, !44, i64 8930, !44, i64 8932, !44, i64 8934, !44, i64 8936, !44, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !44, i64 8944, !44, i64 8946, !44, i64 8948, !44, i64 8950, !44, i64 8952, !44, i64 8954, !46, i64 8956, !46, i64 8960, !43, i64 8964, !44, i64 8968, !44, i64 8970, !46, i64 8972, !44, i64 8976, !44, i64 8978, !44, i64 8980, !44, i64 8982, !71, i64 8984, !36, i64 9760, !36, i64 9772, !44, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !43, i64 10896, !43, i64 10900, !46, i64 10904, !46, i64 10908, !43, i64 10912, !44, i64 10916, !44, i64 10918, !44, i64 10920, !44, i64 10922, !44, i64 10924, !44, i64 10926, !72, i64 10928}
!71 = !{!"ColorBand", !44, i64 0, !44, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!72 = !{!"WalkNavigation", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !44, i64 24, !36, i64 26}
!73 = !{!55, !36, i64 87}
!74 = !{!42, !43, i64 20}
!75 = !{!55, !36, i64 85}
!76 = !{!47, !35, i64 16}
!77 = !{!42, !36, i64 788}
!78 = !{!42, !35, i64 776}
!79 = !{!47, !35, i64 8}
!80 = !{!65, !35, i64 528}
!81 = !{!59, !43, i64 20}
!82 = !{!55, !43, i64 16}
!83 = !{!84, !43, i64 16}
!84 = !{!"uiLayoutItemSplit", !55, i64 0, !46, i64 88}
!85 = !{!84, !35, i64 24}
!86 = !{!84, !36, i64 82}
!87 = !{!84, !36, i64 83}
!88 = !{!84, !36, i64 84}
!89 = !{!55, !35, i64 32}
!90 = !{!84, !35, i64 32}
!91 = !{!59, !35, i64 56}
!92 = !{!93, !44, i64 216}
!93 = !{!"uiStyle", !35, i64 0, !35, i64 8, !36, i64 16, !94, i64 80, !94, i64 112, !94, i64 144, !94, i64 176, !46, i64 208, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230}
!94 = !{!"uiFontStyle", !44, i64 0, !44, i64 2, !44, i64 4, !36, i64 6, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !46, i64 24, !46, i64 28}
!95 = !{!84, !44, i64 80}
!96 = !{!84, !36, i64 85}
!97 = !{!55, !43, i64 64}
!98 = !{!84, !43, i64 64}
!99 = !{!84, !46, i64 88}
!100 = !{!55, !36, i64 82}
!101 = !{!55, !36, i64 83}
!102 = !{!55, !36, i64 84}
!103 = !{!93, !44, i64 224}
!104 = !{!55, !44, i64 80}
!105 = !{!106, !35, i64 8}
!106 = !{!"EnumPropertyItem", !43, i64 0, !35, i64 8, !43, i64 16, !35, i64 24, !35, i64 32}
!107 = !{!106, !43, i64 0}
!108 = !{!106, !35, i64 24}
!109 = !{!106, !43, i64 16}
!110 = !{!65, !35, i64 24}
!111 = !{!42, !35, i64 768}
!112 = !{!106, !35, i64 32}
!113 = !{!65, !43, i64 424}
!114 = distinct !{!114, !39, !40}
!115 = !{!44, !44, i64 0}
!116 = !{!59, !35, i64 72}
!117 = distinct !{!117, !39, !40}
!118 = !{!43, !43, i64 0}
!119 = !{!120}
!120 = distinct !{!120, !121, !"uiItemFullO: argument 0"}
!121 = distinct !{!121, !"uiItemFullO"}
!122 = !{!123, !43, i64 212}
!123 = !{!"bArmature", !124, i64 0, !35, i64 120, !57, i64 128, !57, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !44, i64 208, !44, i64 210, !43, i64 212, !43, i64 216, !43, i64 220, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252}
!124 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !44, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!125 = !{!123, !35, i64 160}
!126 = !{!123, !35, i64 176}
!127 = !{!123, !35, i64 168}
!128 = distinct !{!128, !39, !40}
!129 = distinct !{!129, !39, !40}
!130 = !{!93, !44, i64 222}
!131 = distinct !{!131, !39, !40}
!132 = !{!42, !43, i64 24}
!133 = distinct !{!133, !39, !40}
!134 = !{!65, !36, i64 431}
!135 = distinct !{!135, !39, !40}
!136 = distinct !{!136, !39, !40}
!137 = !{!42, !36, i64 789}
!138 = distinct !{!138, !39, !40}
!139 = !{!140, !35, i64 0}
!140 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !57, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !44, i64 2084, !44, i64 2086, !44, i64 2088, !36, i64 2090, !44, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!141 = !{!142, !43, i64 128}
!142 = !{!"CollectionPropertyIterator", !47, i64 0, !47, i64 24, !35, i64 48, !36, i64 56, !43, i64 96, !43, i64 100, !47, i64 104, !43, i64 128}
!143 = !{!142, !35, i64 120}
!144 = distinct !{!144, !39, !40}
!145 = !{!42, !46, i64 620}
!146 = !{!42, !35, i64 880}
!147 = !{!42, !35, i64 56}
!148 = distinct !{!148, !39, !40}
!149 = distinct !{!149, !39, !40}
!150 = !{!42, !36, i64 791}
!151 = !{!42, !35, i64 816}
!152 = !{!153, !35, i64 16}
!153 = !{!"CollItemSearch", !35, i64 0, !35, i64 8, !35, i64 16, !43, i64 24, !43, i64 28}
!154 = !{!153, !43, i64 24}
!155 = !{!153, !43, i64 28}
!156 = distinct !{!156, !39, !40}
!157 = distinct !{!157, !39, !40}
!158 = distinct !{!158, !39, !40}
!159 = !{!160, !35, i64 208}
!160 = !{!"MenuType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !35, i64 208, !35, i64 216, !35, i64 224, !62, i64 232}
!161 = !{!42, !35, i64 608}
!162 = !{!42, !35, i64 680}
!163 = !{!164, !35, i64 0}
!164 = !{!"Menu", !35, i64 0, !35, i64 8}
!165 = !{!164, !35, i64 8}
!166 = !{!140, !43, i64 2100}
!167 = !{!160, !35, i64 224}
!168 = !{!47, !35, i64 0}
!169 = !{!65, !35, i64 512}
!170 = !{!171, !43, i64 0}
!171 = !{!"MenuItemLevel", !43, i64 0, !36, i64 4, !36, i64 68, !47, i64 136}
!172 = !{!61, !35, i64 104}
!173 = !{!61, !35, i64 48}
!174 = !{!61, !35, i64 8}
!175 = !{!176, !43, i64 16}
!176 = !{!"uiLayoutItemFlow", !55, i64 0, !43, i64 88, !43, i64 92}
!177 = !{!176, !35, i64 24}
!178 = !{!176, !36, i64 82}
!179 = !{!176, !36, i64 83}
!180 = !{!176, !36, i64 84}
!181 = !{!176, !35, i64 32}
!182 = !{!176, !44, i64 80}
!183 = !{!176, !36, i64 85}
!184 = !{!176, !43, i64 64}
!185 = !{!176, !43, i64 88}
!186 = !{!187, !43, i64 16}
!187 = !{!"uiLayoutItemBx", !55, i64 0, !35, i64 88}
!188 = !{!187, !35, i64 24}
!189 = !{!187, !36, i64 83}
!190 = !{!187, !36, i64 84}
!191 = !{!187, !35, i64 32}
!192 = !{!187, !44, i64 80}
!193 = !{!187, !36, i64 85}
!194 = !{!187, !43, i64 64}
!195 = !{!187, !35, i64 88}
!196 = !{!197, !43, i64 16}
!197 = !{!"uiButtonItem", !56, i64 0, !35, i64 24}
!198 = !{!197, !35, i64 24}
!199 = distinct !{!199, !39, !40}
!200 = !{!42, !35, i64 944}
!201 = !{!55, !36, i64 86}
!202 = !{!46, !46, i64 0}
!203 = !{!59, !43, i64 32}
!204 = !{!55, !43, i64 56}
!205 = !{!55, !43, i64 60}
!206 = !{!93, !44, i64 218}
!207 = !{!55, !43, i64 68}
!208 = !{!59, !43, i64 28}
!209 = !{!59, !43, i64 24}
!210 = !{!42, !35, i64 688}
!211 = !{!212, !36, i64 32}
!212 = !{!"bContextStore", !35, i64 0, !35, i64 8, !57, i64 16, !36, i64 32}
!213 = !{!59, !35, i64 40}
!214 = !{!59, !35, i64 48}
!215 = distinct !{!215, !39, !40}
!216 = !{!55, !35, i64 40}
!217 = !{!56, !35, i64 0}
!218 = !{!56, !43, i64 16}
!219 = distinct !{!219, !39, !40}
!220 = !{!221, !35, i64 80}
!221 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !57, i64 128, !35, i64 144, !35, i64 152, !44, i64 160, !36, i64 162}
!222 = !{!221, !35, i64 88}
!223 = !{!61, !44, i64 184}
!224 = !{!65, !35, i64 520}
!225 = !{!226}
!226 = distinct !{!226, !227, !"uiItemFullO: argument 0"}
!227 = distinct !{!227, !"uiItemFullO"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"uiItemFullO: argument 0"}
!230 = distinct !{!230, !"uiItemFullO"}
!231 = !{!61, !35, i64 80}
!232 = !{!221, !35, i64 152}
!233 = distinct !{!233, !39, !40}
!234 = !{!42, !35, i64 808}
!235 = !{!236, !35, i64 136}
!236 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !44, i64 112, !44, i64 114, !44, i64 116, !44, i64 118, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !43, i64 128, !44, i64 132, !44, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !43, i64 160, !43, i64 164, !35, i64 168, !57, i64 176, !57, i64 192, !57, i64 208, !57, i64 224, !57, i64 240}
!237 = !{!238, !44, i64 72}
!238 = !{!"wmEvent", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 18, !43, i64 20, !43, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !44, i64 44, !44, i64 46, !43, i64 48, !43, i64 52, !66, i64 56, !43, i64 64, !43, i64 68, !44, i64 72, !44, i64 74, !44, i64 76, !44, i64 78, !44, i64 80, !44, i64 82, !35, i64 88, !35, i64 96, !44, i64 104, !44, i64 106, !43, i64 108, !35, i64 112}
!239 = distinct !{!239, !39, !40}
!240 = !{!42, !35, i64 992}
!241 = distinct !{!241, !39, !40}
!242 = !{!42, !44, i64 794}
!243 = distinct !{!243, !39, !40}
!244 = !{!57, !35, i64 0}
!245 = !{!45, !46, i64 4}
!246 = !{!45, !46, i64 0}
!247 = !{!45, !46, i64 12}
!248 = !{!45, !46, i64 8}
!249 = !{!42, !46, i64 592}
!250 = !{!42, !46, i64 600}
!251 = !{!42, !46, i64 596}
!252 = !{!42, !46, i64 604}
!253 = distinct !{!253, !39, !40}
!254 = distinct !{!254, !39, !40}
!255 = distinct !{!255, !39, !40}
!256 = !{!176, !43, i64 92}
!257 = distinct !{!257, !39, !40}
!258 = distinct !{!258, !39, !40}
!259 = !{!93, !44, i64 220}
!260 = distinct !{!260, !39, !40}
!261 = distinct !{!261, !39, !40}
!262 = !{!65, !44, i64 428}
!263 = distinct !{!263, !39, !40}
!264 = distinct !{!264, !39, !40}
!265 = distinct !{!265, !39, !40}
!266 = !{!70, !46, i64 10908}
!267 = !{!70, !44, i64 10926}
!268 = distinct !{!268, !39, !40}
!269 = distinct !{!269, !39, !40}
!270 = distinct !{!270, !39, !40}
!271 = distinct !{!271, !39, !40}
!272 = !{!70, !44, i64 10924}
!273 = !{!70, !43, i64 8524}
!274 = distinct !{!274, !39, !40}
!275 = !{!65, !43, i64 664}
!276 = !{!42, !36, i64 790}
!277 = distinct !{!277, !39, !40}
!278 = distinct !{!278, !39, !40}
!279 = !{!42, !44, i64 40}
!280 = distinct !{!280, !39, !40}
!281 = distinct !{!281, !39, !40}
!282 = distinct !{!282, !39, !40}
!283 = !{!56, !43, i64 20}
!284 = distinct !{!284, !39, !40}
!285 = distinct !{!285, !39, !40}
!286 = distinct !{!286, !39, !40}
!287 = !{!42, !35, i64 888}
!288 = !{!42, !35, i64 896}
!289 = !{!42, !35, i64 824}
!290 = !{!42, !43, i64 848}
!291 = !{!57, !35, i64 8}
!292 = distinct !{!292, !39, !40}
