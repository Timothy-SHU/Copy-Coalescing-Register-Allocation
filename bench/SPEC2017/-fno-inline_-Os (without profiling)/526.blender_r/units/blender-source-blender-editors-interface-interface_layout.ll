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
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.uiLayoutItemSplit = type { %struct.uiLayout, float }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiFileBrowseContextProperty(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store ptr null, ptr %2, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %13

10:                                               ; preds = %41, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13, !llvm.loop !9

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %15 = getelementptr inbounds %struct.uiBlock, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18

18:                                               ; preds = %13, %41
  %19 = phi ptr [ %42, %41 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !19
  %24 = and i32 %23, 262144
  %25 = icmp ne i32 %24, 0
  %26 = icmp ne ptr %21, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %41

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.uiBut, ptr %21, i64 0, i32 54, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.uiBut, ptr %21, i64 0, i32 55
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  %35 = tail call i32 @RNA_property_type(ptr noundef %34) #20
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.uiBut, ptr %21, i64 0, i32 55
  %39 = getelementptr inbounds %struct.uiBut, ptr %21, i64 0, i32 54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %39, i64 24, i1 false), !tbaa.struct !22
  %40 = load ptr, ptr %38, align 8, !tbaa !21
  store ptr %40, ptr %2, align 8, !tbaa !5
  br label %44

41:                                               ; preds = %18, %28, %32
  %42 = load ptr, ptr %19, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %10, label %18, !llvm.loop !23

44:                                               ; preds = %10, %6, %3, %37
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemFullO_ptr(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %union.IDPropertyTemplate, align 8
  %10 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !28
  %14 = icmp eq ptr %3, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = icmp eq ptr %2, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %2, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = icmp ne ptr %19, null
  %21 = and i32 %7, 16
  %22 = icmp eq i32 %21, 0
  %23 = and i1 %22, %20
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = tail call ptr @RNA_struct_ui_name(ptr noundef nonnull %19) #20
  %26 = load ptr, ptr %10, align 8, !tbaa !24
  br label %27

27:                                               ; preds = %15, %17, %24, %8
  %28 = phi ptr [ %11, %8 ], [ %26, %24 ], [ %11, %17 ], [ %11, %15 ]
  %29 = phi ptr [ %3, %8 ], [ %25, %24 ], [ @.str, %17 ], [ @.str, %15 ]
  %30 = getelementptr inbounds %struct.uiLayoutRoot, ptr %28, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !33
  %32 = icmp ne i32 %31, 2
  %33 = icmp ne i32 %4, 0
  %34 = or i1 %33, %32
  %35 = select i1 %34, i32 %4, i32 77
  tail call void @uiBlockSetCurLayout(ptr noundef %13, ptr noundef nonnull %1) #21
  %36 = tail call fastcc i32 @ui_text_icon_width(ptr noundef nonnull %1, ptr noundef %29, i32 noundef %35, i8 noundef zeroext 0) #21
  %37 = and i32 %7, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  tail call void @uiBlockSetEmboss(ptr noundef %13, i8 noundef zeroext 1) #20
  br label %40

40:                                               ; preds = %39, %27
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %40
  %43 = load i8, ptr %29, align 1, !tbaa !34
  %44 = icmp eq i8 %43, 0
  %45 = trunc i32 %36 to i16
  %46 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  br i1 %44, label %49, label %47

47:                                               ; preds = %42
  %48 = tail call ptr @uiDefIconTextButO_ptr(ptr noundef %13, i32 noundef 512, ptr noundef %2, i32 noundef %6, i32 noundef %35, ptr noundef nonnull %29, i32 noundef 0, i32 noundef 0, i16 noundef signext %45, i16 noundef signext %46, ptr noundef null) #20
  br label %63

49:                                               ; preds = %42
  %50 = tail call ptr @uiDefIconButO_ptr(ptr noundef %13, i32 noundef 512, ptr noundef %2, i32 noundef %6, i32 noundef %35, i32 noundef 0, i32 noundef 0, i16 noundef signext %45, i16 noundef signext %46, ptr noundef null) #20
  br label %63

51:                                               ; preds = %40
  %52 = trunc i32 %36 to i16
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %54 = tail call ptr @uiDefButO_ptr(ptr noundef %13, i32 noundef 512, ptr noundef %2, i32 noundef %6, ptr noundef %29, i32 noundef 0, i32 noundef 0, i16 noundef signext %52, i16 noundef signext %53, ptr noundef null) #20
  %55 = load ptr, ptr %10, align 8, !tbaa !24
  %56 = getelementptr inbounds %struct.uiLayoutRoot, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !33
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.uiBut, ptr %54, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !39
  %62 = or i32 %61, 2
  store i32 %62, ptr %60, align 4, !tbaa !39
  br label %63

63:                                               ; preds = %49, %47, %59, %51
  %64 = phi ptr [ %54, %59 ], [ %54, %51 ], [ %50, %49 ], [ %48, %47 ]
  br i1 %38, label %66, label %65

65:                                               ; preds = %63
  tail call void @uiBlockSetEmboss(ptr noundef %13, i8 noundef zeroext 0) #20
  br label %66

66:                                               ; preds = %65, %63
  %67 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 13
  %68 = load i8, ptr %67, align 1, !tbaa !40
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @uiButSetFlag(ptr noundef %64, i32 noundef 65536) #20
  br label %71

71:                                               ; preds = %70, %66
  %72 = icmp eq ptr %5, null
  %73 = and i32 %7, 1
  %74 = icmp eq i32 %73, 0
  %75 = and i1 %72, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = tail call ptr @uiButGetOperatorPtrRNA(ptr noundef %64) #20
  br i1 %72, label %78, label %80

78:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %79 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %9, ptr noundef nonnull @.str.1) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  br label %80

80:                                               ; preds = %76, %78
  %81 = phi ptr [ %79, %78 ], [ %5, %76 ]
  %82 = getelementptr inbounds %struct.PointerRNA, ptr %77, i64 0, i32 2
  store ptr %81, ptr %82, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %77, i64 24, i1 false), !tbaa.struct !22
  br label %84

83:                                               ; preds = %71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !22
  br label %84

84:                                               ; preds = %83, %80
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiBlockSetCurLayout(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_text_icon_width(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %1, align 1, !tbaa !34
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %11 = sext i16 %10 to i32
  br label %30

12:                                               ; preds = %6, %4
  %13 = tail call fastcc i32 @ui_layout_vary_direction(ptr noundef %0) #21, !range !45
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = tail call i32 @UI_GetStringWidth(ptr noundef %1) #20
  %17 = sitofp i32 %16 to float
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %19 = sitofp i16 %18 to float
  %20 = icmp eq i8 %3, 0
  %21 = select i1 %20, float 1.500000e+00, float 1.250000e+00
  %22 = select i1 %5, float 0.000000e+00, float 2.500000e-01
  %23 = fadd float %22, %21
  %24 = tail call float @llvm.fmuladd.f32(float %19, float %23, float %17)
  %25 = fptosi float %24 to i32
  br label %30

26:                                               ; preds = %12
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %28, 10
  br label %30

30:                                               ; preds = %26, %15, %9
  %31 = phi i32 [ %25, %15 ], [ %29, %26 ], [ %11, %9 ]
  ret i32 %31
}

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconTextButO_ptr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconButO_ptr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButO_ptr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemFullO(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %2, i8 noundef zeroext 0) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call fastcc void @ui_item_disabled(ptr noundef %1, ptr noundef %2) #21
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemFullO, ptr noundef %2) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !22
  br label %13

12:                                               ; preds = %8
  tail call void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #21
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.uiLayoutRoot, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %0) #21
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr @.str, ptr %1
  %9 = tail call fastcc i32 @ui_text_icon_width(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0, i8 noundef zeroext 0) #21
  %10 = trunc i32 %9 to i16
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %12 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0, i16 noundef signext %10, i16 noundef signext %11, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #20
  %13 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !19
  %15 = or i32 %14, 2048
  store i32 %15, ptr %13, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 45
  store i8 1, ptr %16, align 4, !tbaa !46
  %17 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 43
  store ptr @.str, ptr %17, align 8, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare void @_RNA_warning(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemEnumO_ptr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef %1) #20
  %9 = call ptr @RNA_struct_find_property(ptr noundef nonnull %7, ptr noundef %4) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = call ptr @RNA_struct_identifier(ptr noundef %13) #20
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.uiItemEnumO_ptr, ptr noundef %14, ptr noundef %4) #20
  br label %27

15:                                               ; preds = %6
  call void @RNA_property_enum_set(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %5) #20
  %16 = icmp eq ptr %2, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call fastcc ptr @ui_menu_enumpropname(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %5) #21
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %2, %15 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct.uiLayoutRoot, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef %1, ptr noundef %20, i32 noundef %3, ptr noundef %22, i32 noundef %26, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %27

27:                                               ; preds = %19, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_menu_enumpropname(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %8 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.uiLayoutRoot, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = getelementptr inbounds %struct.uiBlock, ptr %11, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  call void @RNA_property_enum_items(ptr noundef %13, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %6) #20
  %14 = load ptr, ptr %5, align 8, !tbaa !5
  %15 = call zeroext i8 @RNA_enum_name(ptr noundef %14, i32 noundef %3, ptr noundef nonnull %7) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store ptr @.str, ptr %7, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %4, %17
  %19 = load i8, ptr %6, align 1, !tbaa !34
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %23 = load ptr, ptr %5, align 8, !tbaa !5
  call void %22(ptr noundef %23) #20
  br label %24

24:                                               ; preds = %21, %18
  %25 = load ptr, ptr %7, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemEnumO(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @uiItemEnumO_ptr(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #21
  br label %11

10:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %1) #21
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.uiItemEnumO, ptr noundef %1) #20
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemsFullEnumO(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.uiLayoutRoot, ptr %14, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !52
  switch i32 %18, label %23 [
    i32 9, label %24
    i32 10, label %19
  ]

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.uiLayoutRoot, ptr %14, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !33
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
  %29 = load ptr, ptr %28, align 8, !tbaa !30
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %24
  %32 = phi ptr [ @.str.6, %27 ], [ @.str.7, %24 ]
  tail call fastcc void @ui_item_disabled(ptr noundef nonnull %0, ptr noundef %1) #21
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.uiItemsFullEnumO, ptr noundef nonnull %32, ptr noundef %1) #20
  br label %142

33:                                               ; preds = %27
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %12) #20
  call void @WM_operator_properties_sanitize(ptr noundef nonnull %7, i8 noundef zeroext 0) #20
  %34 = call ptr @RNA_struct_find_property(ptr noundef nonnull %7, ptr noundef %2) #20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %138, label %36

36:                                               ; preds = %33
  %37 = call i32 @RNA_property_type(ptr noundef nonnull %34) #20
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %131

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store ptr null, ptr %8, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  br i1 %25, label %40, label %44

40:                                               ; preds = %39
  %41 = call ptr @uiLayoutRadial(ptr noundef nonnull %0) #21
  %42 = getelementptr inbounds %struct.uiBlock, ptr %16, i64 0, i32 48
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  call void @RNA_property_enum_items_gettexted_all(ptr noundef %43, ptr noundef nonnull %7, ptr noundef nonnull %34, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %9) #20
  br label %52

44:                                               ; preds = %39
  %45 = call ptr @uiLayoutSplit(ptr noundef nonnull %0, float noundef 0.000000e+00, i32 noundef 0) #21
  %46 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 10
  %47 = load i8, ptr %46, align 2, !tbaa !53
  %48 = zext i8 %47 to i32
  %49 = call ptr @uiLayoutColumn(ptr noundef %45, i32 noundef %48) #21
  %50 = getelementptr inbounds %struct.uiBlock, ptr %16, i64 0, i32 48
  %51 = load ptr, ptr %50, align 8, !tbaa !51
  call void @RNA_property_enum_items_gettexted(ptr noundef %51, ptr noundef nonnull %7, ptr noundef nonnull %34, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %9) #20
  br label %52

52:                                               ; preds = %44, %40
  %53 = phi ptr [ %49, %44 ], [ %41, %40 ]
  %54 = phi ptr [ %45, %44 ], [ undef, %40 ]
  %55 = load ptr, ptr %8, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.EnumPropertyItem, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !54
  %58 = icmp eq ptr %57, null
  br i1 %58, label %124, label %59

59:                                               ; preds = %52
  %60 = icmp eq ptr %3, null
  %61 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %62 = getelementptr inbounds %struct.uiBlock, ptr %16, i64 0, i32 2, i32 1
  %63 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 10
  %64 = getelementptr inbounds %struct.uiBlock, ptr %16, i64 0, i32 27
  br label %65

65:                                               ; preds = %59, %118
  %66 = phi ptr [ %57, %59 ], [ %122, %118 ]
  %67 = phi ptr [ %53, %59 ], [ %119, %118 ]
  %68 = phi ptr [ %55, %59 ], [ %120, %118 ]
  %69 = load i8, ptr %66, align 1, !tbaa !34
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #22
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %10, ptr noundef nonnull %12) #20
  br i1 %60, label %80, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %61, align 8, !tbaa !49
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  call void @IDP_FreeProperty(ptr noundef nonnull %73) #20
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %77 = load ptr, ptr %61, align 8, !tbaa !49
  call void %76(ptr noundef %77) #20
  br label %78

78:                                               ; preds = %75, %72
  %79 = call ptr @IDP_CopyProperty(ptr noundef nonnull %3) #20
  store ptr %79, ptr %61, align 8, !tbaa !49
  br label %80

80:                                               ; preds = %78, %71
  %81 = load i32, ptr %68, align 8, !tbaa !56
  call void @RNA_property_enum_set(ptr noundef nonnull %10, ptr noundef nonnull %34, i32 noundef %81) #20
  %82 = getelementptr inbounds %struct.EnumPropertyItem, ptr %68, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !57
  %84 = getelementptr inbounds %struct.EnumPropertyItem, ptr %68, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !58
  %86 = load ptr, ptr %61, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #22
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef %67, ptr noundef nonnull %12, ptr noundef %83, i32 noundef %85, ptr noundef %86, i32 noundef %4, i32 noundef %5) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #22
  %87 = load ptr, ptr %62, align 8, !tbaa !59
  call fastcc void @ui_but_tip_from_enum_item(ptr noundef %87, ptr noundef nonnull %68) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #22
  br label %118

88:                                               ; preds = %65
  %89 = getelementptr inbounds %struct.EnumPropertyItem, ptr %68, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !57
  %91 = icmp eq ptr %90, null
  br i1 %91, label %117, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %8, align 8, !tbaa !5
  %94 = icmp eq ptr %68, %93
  %95 = select i1 %94, i1 true, i1 %25
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = load i8, ptr %63, align 2, !tbaa !53
  %98 = zext i8 %97 to i32
  %99 = call ptr @uiLayoutColumn(ptr noundef %54, i32 noundef %98) #21
  %100 = load i32, ptr %64, align 8, !tbaa !60
  %101 = or i32 %100, 2048
  store i32 %101, ptr %64, align 8, !tbaa !60
  br label %102

102:                                              ; preds = %96, %92
  %103 = phi ptr [ %67, %92 ], [ %99, %96 ]
  %104 = getelementptr inbounds %struct.EnumPropertyItem, ptr %68, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !58
  %106 = icmp ne i32 %105, 0
  %107 = select i1 %106, i1 true, i1 %25
  %108 = load ptr, ptr %89, align 8, !tbaa !57
  br i1 %107, label %109, label %111

109:                                              ; preds = %102
  call void @uiItemL(ptr noundef %103, ptr noundef %108, i32 noundef %105) #21
  %110 = load ptr, ptr %62, align 8, !tbaa !59
  br label %115

111:                                              ; preds = %102
  %112 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %113 = mul i16 %112, 5
  %114 = call ptr @uiDefBut(ptr noundef %16, i32 noundef 5120, i32 noundef 0, ptr noundef %108, i32 noundef 0, i32 noundef 0, i16 noundef signext %113, i16 noundef signext %112, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #20
  br label %115

115:                                              ; preds = %111, %109
  %116 = phi ptr [ %110, %109 ], [ %114, %111 ]
  call fastcc void @ui_but_tip_from_enum_item(ptr noundef %116, ptr noundef nonnull %68) #21
  br label %118

117:                                              ; preds = %88
  call void @uiItemS(ptr noundef %67) #21
  br label %118

118:                                              ; preds = %117, %80, %115
  %119 = phi ptr [ %67, %80 ], [ %103, %115 ], [ %67, %117 ]
  %120 = getelementptr inbounds %struct.EnumPropertyItem, ptr %68, i64 1
  %121 = getelementptr inbounds %struct.EnumPropertyItem, ptr %68, i64 1, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !54
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %65, !llvm.loop !61

124:                                              ; preds = %118, %52
  %125 = load i8, ptr %9, align 1, !tbaa !34
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %129 = load ptr, ptr %8, align 8, !tbaa !5
  call void %128(ptr noundef %129) #20
  br label %130

130:                                              ; preds = %127, %124
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  br label %142

131:                                              ; preds = %36
  %132 = call i32 @RNA_property_type(ptr noundef nonnull %34) #20
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !48
  %137 = call ptr @RNA_struct_identifier(ptr noundef %136) #20
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.uiItemsFullEnumO, ptr noundef %137, ptr noundef %2) #20
  br label %142

138:                                              ; preds = %33, %131
  %139 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !48
  %141 = call ptr @RNA_struct_identifier(ptr noundef %140) #20
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.uiItemsFullEnumO, ptr noundef %141, ptr noundef %2) #20
  br label %142

142:                                              ; preds = %130, %138, %134, %31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare void @WM_operator_properties_sanitize(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiLayoutRadial(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !33
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @ui_item_local_sublayout(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef 0) #21
  br label %47

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.uiLayout, ptr %11, i64 0, i32 3
  br label %13

13:                                               ; preds = %17, %9
  %14 = phi ptr [ %12, %9 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uiItem, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !52
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %13, !llvm.loop !63

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %23, ptr noundef nonnull %15) #21
  br label %47

24:                                               ; preds = %13
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %26 = tail call ptr %25(i64 noundef 88, ptr noundef nonnull @.str.23) #20
  %27 = getelementptr inbounds %struct.uiItem, ptr %26, i64 0, i32 2
  store i32 9, ptr %27, align 8, !tbaa !52
  %28 = load ptr, ptr %2, align 8, !tbaa !24
  %29 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 11
  store i8 1, ptr %30, align 1, !tbaa !64
  %31 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 12
  store i8 1, ptr %31, align 4, !tbaa !65
  %32 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !66
  %34 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !66
  %35 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %36 = load i8, ptr %35, align 1, !tbaa !40
  %37 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 13
  store i8 %36, ptr %37, align 1, !tbaa !40
  %38 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !67
  %40 = getelementptr inbounds %struct.uiLayout, ptr %26, i64 0, i32 6
  store i32 %39, ptr %40, align 8, !tbaa !67
  %41 = getelementptr inbounds %struct.uiLayoutRoot, ptr %28, i64 0, i32 11
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  %43 = getelementptr inbounds %struct.uiLayout, ptr %42, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %43, ptr noundef %26) #20
  %44 = load ptr, ptr %2, align 8, !tbaa !24
  %45 = getelementptr inbounds %struct.uiLayoutRoot, ptr %44, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %46, ptr noundef %26) #21
  br label %47

47:                                               ; preds = %24, %21, %7
  %48 = phi ptr [ %8, %7 ], [ %15, %21 ], [ %26, %24 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiLayoutSplit(ptr noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %5 = tail call ptr %4(i64 noundef 96, ptr noundef nonnull @.str.26) #20
  %6 = getelementptr inbounds %struct.uiItem, ptr %5, i64 0, i32 2
  store i32 7, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !70
  %10 = trunc i32 %2 to i8
  %11 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 10
  store i8 %10, ptr %11, align 2, !tbaa !71
  %12 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 11
  store i8 1, ptr %12, align 1, !tbaa !72
  %13 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 12
  store i8 1, ptr %13, align 4, !tbaa !73
  %14 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !74
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %8, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.uiStyle, ptr %18, i64 0, i32 10
  %20 = load i16, ptr %19, align 8, !tbaa !76
  %21 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 9
  store i16 %20, ptr %21, align 8, !tbaa !79
  %22 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %23 = load i8, ptr %22, align 1, !tbaa !40
  %24 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 13
  store i8 %23, ptr %24, align 1, !tbaa !80
  %25 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !67
  %27 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 6
  store i32 %26, ptr %27, align 8, !tbaa !81
  %28 = getelementptr inbounds %struct.uiLayoutItemSplit, ptr %5, i64 0, i32 1
  store float %1, ptr %28, align 8, !tbaa !82
  %29 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %29, ptr noundef %5) #20
  %30 = load ptr, ptr %7, align 8, !tbaa !24
  %31 = getelementptr inbounds %struct.uiLayoutRoot, ptr %30, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %32, ptr noundef %5) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiLayoutColumn(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 88, ptr noundef nonnull @.str.21) #20
  %5 = getelementptr inbounds %struct.uiItem, ptr %4, i64 0, i32 2
  store i32 2, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !24
  %9 = trunc i32 %1 to i8
  %10 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 10
  store i8 %9, ptr %10, align 2, !tbaa !53
  %11 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 11
  store i8 1, ptr %11, align 1, !tbaa !64
  %12 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 12
  store i8 1, ptr %12, align 4, !tbaa !65
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !66
  %16 = icmp eq i8 %9, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.uiLayoutRoot, ptr %7, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.uiStyle, ptr %19, i64 0, i32 14
  %21 = load i16, ptr %20, align 8, !tbaa !83
  br label %22

22:                                               ; preds = %2, %17
  %23 = phi i16 [ %21, %17 ], [ 0, %2 ]
  %24 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 9
  store i16 %23, ptr %24, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %26 = load i8, ptr %25, align 1, !tbaa !40
  %27 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 13
  store i8 %26, ptr %27, align 1, !tbaa !40
  %28 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 6
  store i32 %29, ptr %30, align 8, !tbaa !67
  %31 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %31, ptr noundef nonnull %4) #20
  %32 = load ptr, ptr %6, align 8, !tbaa !24
  %33 = getelementptr inbounds %struct.uiLayoutRoot, ptr %32, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %34, ptr noundef nonnull %4) #21
  ret ptr %4
}

; Function Attrs: optsize
declare void @RNA_property_enum_items_gettexted_all(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_enum_items_gettexted(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_but_tip_from_enum_item(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 42
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 1, !tbaa !34
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8, ptr %11, align 1, !tbaa !34
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store ptr %11, ptr %3, align 8, !tbaa !85
  br label %17

17:                                               ; preds = %9, %13, %16, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @uiItemL_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemS(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = tail call zeroext i8 @ui_block_is_menu(ptr noundef %5) #20
  %7 = icmp eq i8 %6, 0
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %9 = sitofp i16 %8 to float
  %10 = select i1 %7, float 0x3FD3333340000000, float 0x3FDCCCCCC0000000
  %11 = select i1 %7, i32 10752, i32 27648
  %12 = fmul float %10, %9
  %13 = fptosi float %12 to i32
  tail call void @uiBlockSetCurLayout(ptr noundef %5, ptr noundef nonnull %0) #21
  %14 = trunc i32 %13 to i16
  %15 = tail call ptr @uiDefBut(ptr noundef %5, i32 noundef %11, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemsEnumO(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !50
  tail call void @uiItemsFullEnumO(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef %7, i32 noundef 0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemEnumO_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3) #21
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemEnumO_value, ptr noundef %3) #20
  br label %31

12:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %9) #20
  %13 = call ptr @RNA_struct_find_property(ptr noundef nonnull %7, ptr noundef %4) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = call ptr @RNA_struct_identifier(ptr noundef %17) #20
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.uiItemEnumO_value, ptr noundef %18, ptr noundef %4) #20
  br label %31

19:                                               ; preds = %12
  call void @RNA_property_enum_set(ptr noundef nonnull %7, ptr noundef nonnull %13, i32 noundef %5) #20
  %20 = icmp eq ptr %1, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = call fastcc ptr @ui_menu_enumpropname(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %13, i32 noundef %5) #21
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %1, %19 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = getelementptr inbounds %struct.uiLayoutRoot, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %24, i32 noundef %2, ptr noundef %26, i32 noundef %30, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %31

31:                                               ; preds = %23, %15, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemEnumO_string(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.PointerRNA, align 8
  %12 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3) #21
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemEnumO_string, ptr noundef %3) #20
  br label %63

15:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %12) #20
  %16 = call ptr @RNA_struct_find_property(ptr noundef nonnull %7, ptr noundef %4) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.uiLayoutRoot, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 48
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  call void @RNA_property_enum_items(ptr noundef %24, ptr noundef nonnull %7, ptr noundef nonnull %16, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %10) #20
  %25 = load ptr, ptr %8, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = call zeroext i8 @RNA_enum_value_from_id(ptr noundef nonnull %25, ptr noundef %5, ptr noundef nonnull %9) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27, %18
  %31 = load i8, ptr %10, align 1, !tbaa !34
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %35 = load ptr, ptr %8, align 8, !tbaa !5
  call void %34(ptr noundef %35) #20
  br label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  %39 = call ptr @RNA_struct_identifier(ptr noundef %38) #20
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.uiItemEnumO_string, ptr noundef %39, ptr noundef %4, ptr noundef %5) #20
  br label %63

40:                                               ; preds = %27
  %41 = load i8, ptr %10, align 1, !tbaa !34
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %45 = load ptr, ptr %8, align 8, !tbaa !5
  call void %44(ptr noundef %45) #20
  br label %50

46:                                               ; preds = %15
  %47 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = call ptr @RNA_struct_identifier(ptr noundef %48) #20
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.uiItemEnumO_string, ptr noundef %49, ptr noundef %4) #20
  br label %63

50:                                               ; preds = %40, %43
  %51 = load i32, ptr %9, align 4, !tbaa !87
  call void @RNA_property_enum_set(ptr noundef nonnull %7, ptr noundef nonnull %16, i32 noundef %51) #20
  %52 = icmp eq ptr %1, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, ptr %9, align 4, !tbaa !87
  %55 = call fastcc ptr @ui_menu_enumpropname(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %16, i32 noundef %54) #21
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi ptr [ %1, %50 ], [ %55, %53 ]
  %58 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = load ptr, ptr %19, align 8, !tbaa !24
  %61 = getelementptr inbounds %struct.uiLayoutRoot, ptr %60, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #22
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef %57, i32 noundef %2, ptr noundef %59, i32 noundef %62, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #22
  br label %63

63:                                               ; preds = %56, %46, %36, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_enum_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_enum_value_from_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemBooleanO(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3) #21
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemBooleanO, ptr noundef %3) #20
  br label %19

12:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %9) #20
  call void @RNA_boolean_set(ptr noundef nonnull %7, ptr noundef %4, i32 noundef %5) #20
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, i32 noundef %2, ptr noundef %14, i32 noundef %18, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %19

19:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemIntO(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3) #21
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemIntO, ptr noundef %3) #20
  br label %19

12:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %9) #20
  call void @RNA_int_set(ptr noundef nonnull %7, ptr noundef %4, i32 noundef %5) #20
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, i32 noundef %2, ptr noundef %14, i32 noundef %18, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %19

19:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemFloatO(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3) #21
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemFloatO, ptr noundef %3) #20
  br label %19

12:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %9) #20
  call void @RNA_float_set(ptr noundef nonnull %7, ptr noundef %4, float noundef %5) #20
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, i32 noundef %2, ptr noundef %14, i32 noundef %18, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %19

19:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemStringO(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %3, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %3) #21
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemStringO, ptr noundef %3) #20
  br label %19

12:                                               ; preds = %6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %7, ptr noundef nonnull %9) #20
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef %4, ptr noundef %5) #20
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, i32 noundef %2, ptr noundef %14, i32 noundef %18, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %19

19:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemO(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.uiLayoutRoot, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %0, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef %9, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemFullR(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.uiLayoutRoot, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  tail call void @uiBlockSetCurLayout(ptr noundef %15, ptr noundef %0) #21
  %16 = tail call i32 @RNA_property_type(ptr noundef %2) #20
  %17 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %2) #20
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %8
  %20 = tail call i32 @RNA_property_array_length(ptr noundef %1, ptr noundef %2) #20
  br label %21

21:                                               ; preds = %8, %19
  %22 = phi i32 [ %20, %19 ], [ 0, %8 ]
  %23 = icmp eq ptr %6, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = and i32 %5, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call ptr @RNA_property_ui_name(ptr noundef %2) #20
  br label %29

29:                                               ; preds = %24, %27, %21
  %30 = phi ptr [ %6, %21 ], [ %28, %27 ], [ @.str, %24 ]
  %31 = icmp eq i32 %7, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 @RNA_property_ui_icon(ptr noundef %2) #20
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %33, %32 ], [ %7, %29 ]
  %36 = and i32 %5, 16
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  switch i32 %16, label %41 [
    i32 5, label %39
    i32 3, label %39
    i32 2, label %39
    i32 1, label %39
  ]

39:                                               ; preds = %38, %38, %38, %38
  %40 = call fastcc ptr @ui_item_name_add_colon(ptr noundef %30, ptr noundef nonnull %9) #21
  br label %50

41:                                               ; preds = %38
  %42 = icmp eq i32 %16, 0
  %43 = icmp eq i32 %3, -1
  %44 = and i1 %43, %42
  %45 = and i1 %44, %18
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = icmp eq i32 %16, 4
  %48 = icmp ne i32 %3, -2
  %49 = and i1 %48, %47
  br i1 %49, label %62, label %50

50:                                               ; preds = %39, %46, %34
  %51 = phi ptr [ %30, %34 ], [ %40, %39 ], [ %30, %46 ]
  %52 = load ptr, ptr %12, align 8, !tbaa !24
  %53 = getelementptr inbounds %struct.uiLayoutRoot, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !33
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %64, label %96

56:                                               ; preds = %41
  %57 = call fastcc ptr @ui_item_name_add_colon(ptr noundef %30, ptr noundef nonnull %9) #21
  %58 = load ptr, ptr %12, align 8, !tbaa !24
  %59 = getelementptr inbounds %struct.uiLayoutRoot, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !33
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %66, label %96

62:                                               ; preds = %46
  %63 = call fastcc ptr @ui_item_name_add_colon(ptr noundef %30, ptr noundef nonnull %9) #21
  br label %96

64:                                               ; preds = %50
  %65 = icmp eq i32 %16, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %56, %64
  %67 = phi ptr [ %51, %64 ], [ %57, %56 ]
  %68 = icmp eq i8 %17, 0
  %69 = icmp ne i32 %3, -1
  %70 = or i1 %69, %68
  br i1 %70, label %71, label %96

71:                                               ; preds = %66
  br i1 %68, label %76, label %72

72:                                               ; preds = %71
  %73 = call i32 @RNA_property_boolean_get_index(ptr noundef %1, ptr noundef %2, i32 noundef %3) #20
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 38, i32 39
  br label %96

76:                                               ; preds = %71
  %77 = call i32 @RNA_property_boolean_get(ptr noundef %1, ptr noundef %2) #20
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 38, i32 39
  br label %96

80:                                               ; preds = %64
  %81 = icmp eq i32 %16, 4
  %82 = icmp eq i32 %3, -2
  %83 = and i1 %82, %81
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = call i32 @RNA_property_enum_get(ptr noundef %1, ptr noundef %2) #20
  %86 = call i32 @RNA_property_flag(ptr noundef %2) #20
  %87 = and i32 %86, 2097152
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = and i32 %85, %4
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 38, i32 39
  br label %96

93:                                               ; preds = %84
  %94 = icmp eq i32 %85, %4
  %95 = select i1 %94, i32 39, i32 38
  br label %96

96:                                               ; preds = %62, %66, %56, %89, %93, %76, %72, %80, %50
  %97 = phi ptr [ %67, %72 ], [ %67, %76 ], [ %51, %80 ], [ %51, %50 ], [ %51, %89 ], [ %51, %93 ], [ %57, %56 ], [ %67, %66 ], [ %63, %62 ]
  %98 = phi i32 [ %75, %72 ], [ %79, %76 ], [ %35, %80 ], [ %35, %50 ], [ %92, %89 ], [ %95, %93 ], [ %35, %56 ], [ %35, %66 ], [ %35, %62 ]
  %99 = and i32 %5, 4
  %100 = and i32 %5, 8
  %101 = and i32 %5, 2
  %102 = and i32 %5, 128
  call fastcc void @ui_item_rna_size(ptr noundef nonnull %0, ptr noundef %97, i32 noundef %98, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %36, ptr noundef nonnull %10, ptr noundef nonnull %11) #21
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %96
  call void @uiBlockSetEmboss(ptr noundef %15, i8 noundef zeroext 1) #20
  br label %105

105:                                              ; preds = %104, %96
  %106 = icmp eq i32 %3, -1
  %107 = and i1 %106, %18
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, ptr %10, align 4, !tbaa !87
  call fastcc void @ui_item_array(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %97, i32 noundef %98, ptr noundef %1, ptr noundef %2, i32 noundef %22, i32 noundef %109, i32 noundef %101, i32 noundef %99, i32 noundef %100, i32 noundef %36) #21
  br label %196

110:                                              ; preds = %105
  %111 = icmp eq i32 %16, 4
  %112 = icmp eq i32 %3, -2
  %113 = and i1 %112, %111
  br i1 %113, label %114, label %136

114:                                              ; preds = %110
  %115 = icmp eq i32 %98, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %114
  %117 = load i8, ptr %97, align 1, !tbaa !34
  %118 = icmp eq i8 %117, 0
  %119 = or i1 %37, %118
  %120 = load i32, ptr %10, align 4, !tbaa !87
  %121 = trunc i32 %120 to i16
  %122 = load i32, ptr %11, align 4, !tbaa !87
  %123 = trunc i32 %122 to i16
  %124 = sitofp i32 %4 to float
  br i1 %119, label %127, label %125

125:                                              ; preds = %116
  %126 = call ptr @uiDefIconTextButR_prop(ptr noundef %15, i32 noundef 1024, i32 noundef 0, i32 noundef %98, ptr noundef nonnull %97, i32 noundef 0, i32 noundef 0, i16 noundef signext %121, i16 noundef signext %123, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef %124, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #20
  br label %196

127:                                              ; preds = %116
  %128 = call ptr @uiDefIconButR_prop(ptr noundef %15, i32 noundef 1024, i32 noundef 0, i32 noundef %98, i32 noundef 0, i32 noundef 0, i16 noundef signext %121, i16 noundef signext %123, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef %124, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #20
  br label %196

129:                                              ; preds = %114
  %130 = load i32, ptr %10, align 4, !tbaa !87
  %131 = trunc i32 %130 to i16
  %132 = load i32, ptr %11, align 4, !tbaa !87
  %133 = trunc i32 %132 to i16
  %134 = sitofp i32 %4 to float
  %135 = call ptr @uiDefButR_prop(ptr noundef %15, i32 noundef 1024, i32 noundef 0, ptr noundef %97, i32 noundef 0, i32 noundef 0, i16 noundef signext %131, i16 noundef signext %133, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef %134, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #20
  br label %196

136:                                              ; preds = %110
  br i1 %111, label %137, label %145

137:                                              ; preds = %136
  %138 = icmp eq i32 %101, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %137
  %140 = call i32 @RNA_property_flag(ptr noundef %2) #20
  %141 = and i32 %140, 2097152
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %139, %137
  %144 = load i32, ptr %11, align 4, !tbaa !87
  call fastcc void @ui_item_enum_expand(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %1, ptr noundef %2, ptr noundef %97, i32 noundef %144, i32 noundef %36) #21
  br label %196

145:                                              ; preds = %136
  %146 = add i32 %16, -3
  %147 = icmp ult i32 %146, 3
  br i1 %147, label %148, label %155

148:                                              ; preds = %139, %145
  %149 = load i32, ptr %10, align 4, !tbaa !87
  %150 = load i32, ptr %11, align 4, !tbaa !87
  %151 = call fastcc ptr @ui_item_with_label(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %97, i32 noundef %98, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %149, i32 noundef %150, i32 noundef %5) #21
  call void @ui_but_add_search(ptr noundef %151, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #21
  %152 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %153 = load i8, ptr %152, align 1, !tbaa !40
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %178, label %176

155:                                              ; preds = %145
  %156 = load i32, ptr %10, align 4, !tbaa !87
  %157 = load i32, ptr %11, align 4, !tbaa !87
  %158 = call ptr @uiDefAutoButR(ptr noundef %15, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %97, i32 noundef %98, i32 noundef 0, i32 noundef 0, i32 noundef %156, i32 noundef %157) #20
  %159 = icmp eq i32 %99, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.uiBut, ptr %158, i64 0, i32 4
  %162 = load i32, ptr %161, align 8, !tbaa !88
  %163 = icmp eq i32 %162, 2560
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 7168, ptr %161, align 8, !tbaa !88
  br label %165

165:                                              ; preds = %164, %160, %155
  %166 = icmp eq i32 %100, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.uiBut, ptr %158, i64 0, i32 4
  %169 = load i32, ptr %168, align 8, !tbaa !88
  %170 = icmp eq i32 %169, 19456
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 1536, ptr %168, align 8, !tbaa !88
  br label %172

172:                                              ; preds = %171, %167, %165
  %173 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %174 = load i8, ptr %173, align 1, !tbaa !40
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172, %148
  %177 = phi ptr [ %151, %148 ], [ %158, %172 ]
  call void @uiButSetFlag(ptr noundef %177, i32 noundef 65536) #20
  br label %178

178:                                              ; preds = %176, %148, %172
  %179 = phi ptr [ %151, %148 ], [ %158, %172 ], [ %177, %176 ]
  %180 = icmp eq ptr %179, null
  br i1 %180, label %196, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 27
  %183 = load i32, ptr %182, align 8, !tbaa !60
  %184 = and i32 %183, 524288
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %196, label %186

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.uiBut, ptr %179, i64 0, i32 4
  %188 = load i32, ptr %187, align 8, !tbaa !88
  %189 = icmp eq i32 %188, 3072
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.uiBut, ptr %179, i64 0, i32 46
  %192 = load i8, ptr %191, align 1, !tbaa !89
  %193 = and i8 %192, 1
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %190
  call void @uiButSetFlag(ptr noundef nonnull %179, i32 noundef 16777216) #20
  br label %196

196:                                              ; preds = %143, %125, %129, %127, %108, %195, %190, %186, %181, %178
  br i1 %103, label %198, label %197

197:                                              ; preds = %196
  call void @uiBlockSetEmboss(ptr noundef %15, i8 noundef zeroext 0) #20
  br label %198

198:                                              ; preds = %197, %196
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_property_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_ui_icon(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ui_item_name_add_colon(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %4 = trunc i64 %3 to i32
  %5 = icmp ne i32 %4, 0
  %6 = icmp slt i32 %4, 127
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %0, i64 noundef 128) #20
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  store i8 58, ptr %12, align 1, !tbaa !34
  %13 = add i64 %10, 4294967296
  %14 = ashr exact i64 %13, 32
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  store i8 0, ptr %15, align 1, !tbaa !34
  br label %16

16:                                               ; preds = %2, %8
  %17 = phi ptr [ %1, %8 ], [ %0, %2 ]
  ret ptr %17
}

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_item_rna_size(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) unnamed_addr #0 {
  %10 = alloca ptr, align 8
  %11 = alloca i8, align 1
  %12 = tail call i32 @RNA_property_type(ptr noundef %4) #20
  %13 = tail call i32 @RNA_property_subtype(ptr noundef %4) #20
  %14 = tail call i32 @RNA_property_array_length(ptr noundef %3, ptr noundef %4) #20
  %15 = load i8, ptr %1, align 1, !tbaa !34
  %16 = icmp ne i8 %15, 0
  %17 = icmp ne i32 %6, 0
  %18 = or i1 %17, %16
  br i1 %18, label %61, label %19

19:                                               ; preds = %9
  switch i32 %12, label %58 [
    i32 5, label %61
    i32 3, label %61
    i32 0, label %20
    i32 4, label %21
  ]

20:                                               ; preds = %19
  br label %61

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #22
  %22 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.uiLayoutRoot, ptr %23, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !28
  %26 = getelementptr inbounds %struct.uiBlock, ptr %25, i64 0, i32 48
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  call void @RNA_property_enum_items_gettexted(ptr noundef %27, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %11) #20
  %28 = load ptr, ptr %10, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.EnumPropertyItem, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %21, %45
  %33 = phi ptr [ %49, %45 ], [ %30, %21 ]
  %34 = phi ptr [ %47, %45 ], [ %28, %21 ]
  %35 = phi i32 [ %46, %45 ], [ 0, %21 ]
  %36 = load i8, ptr %33, align 1, !tbaa !34
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.EnumPropertyItem, ptr %34, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = getelementptr inbounds %struct.EnumPropertyItem, ptr %34, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !58
  %43 = call fastcc i32 @ui_text_icon_width(ptr noundef %0, ptr noundef %40, i32 noundef %42, i8 noundef zeroext 0) #21
  %44 = call fastcc i32 @max_ii(i32 noundef %35, i32 noundef %43) #21
  br label %45

45:                                               ; preds = %32, %38
  %46 = phi i32 [ %44, %38 ], [ %35, %32 ]
  %47 = getelementptr inbounds %struct.EnumPropertyItem, ptr %34, i64 1
  %48 = getelementptr inbounds %struct.EnumPropertyItem, ptr %34, i64 1, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %32, !llvm.loop !90

51:                                               ; preds = %45, %21
  %52 = phi i32 [ 0, %21 ], [ %46, %45 ]
  %53 = load i8, ptr %11, align 1, !tbaa !34
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %57 = load ptr, ptr %10, align 8, !tbaa !5
  call void %56(ptr noundef %57) #20
  br label %59

58:                                               ; preds = %19
  br label %61

59:                                               ; preds = %51, %55
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  %60 = icmp eq i32 %52, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58, %19, %19, %20, %9, %59
  %62 = phi ptr [ %1, %59 ], [ %1, %58 ], [ @.str.37, %19 ], [ @.str.37, %19 ], [ %1, %20 ], [ %1, %9 ]
  %63 = phi i32 [ %2, %59 ], [ %2, %58 ], [ %2, %19 ], [ %2, %19 ], [ 17, %20 ], [ %2, %9 ]
  %64 = call fastcc i32 @ui_text_icon_width(ptr noundef %0, ptr noundef nonnull %62, i32 noundef %63, i8 noundef zeroext 0) #21
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi ptr [ %1, %59 ], [ %62, %61 ]
  %67 = phi i32 [ %2, %59 ], [ %63, %61 ]
  %68 = phi i32 [ %52, %59 ], [ %64, %61 ]
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %70 = sext i16 %69 to i32
  %71 = icmp eq i32 %5, -1
  %72 = icmp sgt i32 %14, 0
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %99

74:                                               ; preds = %65
  %75 = load i8, ptr %66, align 1, !tbaa !34
  %76 = icmp eq i8 %75, 0
  %77 = icmp eq i32 %67, 0
  %78 = and i1 %77, %76
  %79 = select i1 %78, i32 0, i32 %70
  %80 = and i32 %13, -2
  %81 = icmp eq i32 %80, 40
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = shl nsw i32 %70, 1
  %84 = add nsw i32 %79, %83
  br label %120

85:                                               ; preds = %74
  %86 = icmp eq i32 %13, 25
  br i1 %86, label %87, label %96

87:                                               ; preds = %85
  %88 = sitofp i32 %14 to float
  %89 = call float @sqrtf(float noundef %88) #20
  %90 = call float @llvm.ceil.f32(float %89)
  %91 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %92 = sitofp i16 %91 to float
  %93 = sitofp i32 %79 to float
  %94 = call float @llvm.fmuladd.f32(float %90, float %92, float %93)
  %95 = fptosi float %94 to i32
  br label %120

96:                                               ; preds = %85
  %97 = mul nsw i32 %14, %70
  %98 = add nsw i32 %79, %97
  br label %120

99:                                               ; preds = %65
  %100 = call fastcc i32 @ui_layout_vary_direction(ptr noundef %0) #21, !range !45
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %120

102:                                              ; preds = %99
  switch i32 %12, label %114 [
    i32 0, label %103
    i32 4, label %110
  ]

103:                                              ; preds = %102
  %104 = load i8, ptr %66, align 1, !tbaa !34
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %103
  %107 = sdiv i16 %69, 5
  %108 = sext i16 %107 to i32
  %109 = add nsw i32 %68, %108
  br label %120

110:                                              ; preds = %102
  %111 = sdiv i16 %69, 4
  %112 = sext i16 %111 to i32
  %113 = add nsw i32 %68, %112
  br label %120

114:                                              ; preds = %102
  %115 = add i32 %12, -1
  %116 = icmp ult i32 %115, 2
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = mul nsw i32 %70, 3
  %119 = add nsw i32 %118, %68
  br label %120

120:                                              ; preds = %103, %99, %110, %114, %117, %106, %82, %96, %87
  %121 = phi i32 [ %68, %82 ], [ %68, %87 ], [ %68, %96 ], [ %109, %106 ], [ %113, %110 ], [ %119, %117 ], [ %68, %114 ], [ %68, %99 ], [ %68, %103 ]
  %122 = phi i32 [ %84, %82 ], [ %95, %87 ], [ %98, %96 ], [ %70, %106 ], [ %70, %110 ], [ %70, %117 ], [ %70, %114 ], [ %70, %99 ], [ %70, %103 ]
  store i32 %121, ptr %7, align 4, !tbaa !87
  store i32 %122, ptr %8, align 4, !tbaa !87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_item_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 {
  %13 = alloca [3 x i32], align 4
  %14 = alloca [3 x i8], align 1
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = tail call i32 @RNA_property_type(ptr noundef %5) #20
  %20 = tail call i32 @RNA_property_subtype(ptr noundef %5) #20
  %21 = tail call fastcc ptr @ui_item_local_sublayout(ptr noundef %0, ptr noundef %0, i32 noundef 1) #21
  tail call void @uiBlockSetCurLayout(ptr noundef %1, ptr noundef %21) #21
  %22 = load i8, ptr %2, align 1, !tbaa !34
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %12
  %25 = trunc i32 %7 to i16
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %27 = tail call ptr @uiDefBut(ptr noundef %1, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, i16 noundef signext %25, i16 noundef signext %26, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #20
  br label %28

28:                                               ; preds = %24, %12
  %29 = icmp eq i32 %19, 0
  br i1 %29, label %30, label %130

30:                                               ; preds = %28
  %31 = icmp eq i32 %20, 41
  %32 = and i32 %20, -2
  %33 = icmp eq i32 %32, 40
  br i1 %33, label %34, label %130

34:                                               ; preds = %30
  %35 = icmp sgt i32 %6, 19
  %36 = select i1 %35, i32 2, i32 1
  %37 = shl nuw nsw i32 %36, 1
  %38 = sdiv i32 %6, %37
  %39 = tail call ptr @uiLayoutAbsolute(ptr noundef nonnull %0, i32 noundef 0) #21
  tail call void @uiBlockSetCurLayout(ptr noundef %1, ptr noundef %39) #21
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %41 = sitofp i16 %40 to double
  %42 = fmul double %41, 7.500000e-01
  %43 = fptosi double %42 to i32
  %44 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp eq ptr %45, @RNA_Armature
  br i1 %46, label %47, label %70

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = getelementptr inbounds %struct.bArmature, ptr %49, i64 0, i32 14
  %51 = load i32, ptr %50, align 4, !tbaa !91
  %52 = getelementptr inbounds %struct.bArmature, ptr %49, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !94
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.bArmature, ptr %49, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !95
  %58 = icmp eq ptr %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 10
  br label %67

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.bArmature, ptr %49, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !96
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.Bone, ptr %63, i64 0, i32 25
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi ptr [ %60, %59 ], [ %66, %65 ]
  %69 = load i32, ptr %68, align 8, !tbaa !87
  br label %70

70:                                               ; preds = %67, %55, %61, %34
  %71 = phi i32 [ 0, %34 ], [ 0, %55 ], [ 0, %61 ], [ %69, %67 ]
  %72 = phi i32 [ 0, %34 ], [ %51, %55 ], [ %51, %61 ], [ %51, %67 ]
  %73 = icmp eq i32 %38, 0
  %74 = sdiv i32 %6, 2
  %75 = mul i32 %38, %43
  %76 = getelementptr inbounds %struct.uiStyle, ptr %18, i64 0, i32 13
  br label %77

77:                                               ; preds = %70, %123
  %78 = phi i32 [ 0, %70 ], [ %127, %123 ]
  %79 = phi i32 [ 0, %70 ], [ %128, %123 ]
  tail call void @uiBlockBeginAlign(ptr noundef %1) #20
  br i1 %73, label %123, label %80

80:                                               ; preds = %77
  %81 = mul nuw nsw i32 %79, %38
  br label %85

82:                                               ; preds = %101
  %83 = mul nuw nsw i32 %79, %38
  %84 = add i32 %83, %74
  br label %104

85:                                               ; preds = %80, %101
  %86 = phi i32 [ 0, %80 ], [ %102, %101 ]
  %87 = add i32 %86, %81
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %72
  %90 = icmp eq i32 %89, 0
  %91 = and i32 %88, %71
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 643, i32 644
  %94 = select i1 %90, i32 77, i32 %93
  %95 = mul i32 %86, %43
  %96 = add i32 %95, %78
  %97 = tail call ptr @uiDefAutoButR(ptr noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef %87, ptr noundef nonnull @.str, i32 noundef %94, i32 noundef %96, i32 noundef %43, i32 noundef %43, i32 noundef %43) #20
  br i1 %31, label %98, label %101

98:                                               ; preds = %85
  %99 = sext i32 %87 to i64
  %100 = inttoptr i64 %99 to ptr
  tail call void @uiButSetFunc(ptr noundef %97, ptr noundef nonnull @ui_layer_but_cb, ptr noundef %97, ptr noundef %100) #20
  br label %101

101:                                              ; preds = %98, %85
  %102 = add nuw i32 %86, 1
  %103 = icmp eq i32 %102, %38
  br i1 %103, label %82, label %85, !llvm.loop !97

104:                                              ; preds = %82, %120
  %105 = phi i32 [ 0, %82 ], [ %121, %120 ]
  %106 = add i32 %84, %105
  %107 = shl nuw i32 1, %106
  %108 = and i32 %107, %72
  %109 = icmp eq i32 %108, 0
  %110 = and i32 %107, %71
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i32 643, i32 644
  %113 = select i1 %109, i32 77, i32 %112
  %114 = mul i32 %105, %43
  %115 = add i32 %114, %78
  %116 = tail call ptr @uiDefAutoButR(ptr noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef %106, ptr noundef nonnull @.str, i32 noundef %113, i32 noundef %115, i32 noundef 0, i32 noundef %43, i32 noundef %43) #20
  br i1 %31, label %117, label %120

117:                                              ; preds = %104
  %118 = sext i32 %106 to i64
  %119 = inttoptr i64 %118 to ptr
  tail call void @uiButSetFunc(ptr noundef %116, ptr noundef nonnull @ui_layer_but_cb, ptr noundef %116, ptr noundef %119) #20
  br label %120

120:                                              ; preds = %117, %104
  %121 = add nuw i32 %105, 1
  %122 = icmp eq i32 %121, %38
  br i1 %122, label %123, label %104, !llvm.loop !98

123:                                              ; preds = %120, %77
  tail call void @uiBlockEndAlign(ptr noundef %1) #20
  %124 = load i16, ptr %76, align 2, !tbaa !99
  %125 = sext i16 %124 to i32
  %126 = add i32 %78, %75
  %127 = add i32 %126, %125
  %128 = add nuw nsw i32 %79, 1
  %129 = icmp eq i32 %128, %36
  br i1 %129, label %251, label %77, !llvm.loop !100

130:                                              ; preds = %30, %28
  %131 = icmp eq i32 %20, 25
  br i1 %131, label %132, label %164

132:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #22
  %133 = tail call ptr @uiLayoutAbsolute(ptr noundef nonnull %0, i32 noundef 1) #21
  tail call void @uiBlockSetCurLayout(ptr noundef %1, ptr noundef %133) #21
  %134 = call i32 @RNA_property_array_dimension(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %13) #20
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %252

136:                                              ; preds = %132
  %137 = load i32, ptr %13, align 4, !tbaa !87
  %138 = sdiv i32 %7, %137
  %139 = icmp eq i32 %6, 0
  br i1 %139, label %163, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 1
  %142 = icmp eq i32 %9, 0
  br label %143

143:                                              ; preds = %140, %160
  %144 = phi i32 [ 0, %140 ], [ %161, %160 ]
  %145 = load i32, ptr %13, align 4, !tbaa !87
  %146 = urem i32 %144, %145
  %147 = udiv i32 %144, %145
  %148 = mul nsw i32 %146, %138
  %149 = load i32, ptr %141, align 4, !tbaa !87
  %150 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %151 = sext i16 %150 to i32
  %152 = sub i32 %149, %147
  %153 = mul i32 %152, %151
  %154 = call ptr @uiDefAutoButR(ptr noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef %144, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %148, i32 noundef %153, i32 noundef %138, i32 noundef %151) #20
  br i1 %142, label %160, label %155

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.uiBut, ptr %154, i64 0, i32 4
  %157 = load i32, ptr %156, align 8, !tbaa !88
  %158 = icmp eq i32 %157, 2560
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 7168, ptr %156, align 8, !tbaa !88
  br label %160

160:                                              ; preds = %143, %155, %159
  %161 = add nuw i32 %144, 1
  %162 = icmp eq i32 %161, %6
  br i1 %162, label %163, label %143, !llvm.loop !101

163:                                              ; preds = %160, %136
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #22
  br label %251

164:                                              ; preds = %130
  %165 = icmp ne i32 %20, 22
  %166 = icmp ne i32 %8, 0
  %167 = or i1 %166, %165
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %170 = mul i16 %169, 3
  %171 = tail call ptr @uiDefButR_prop(ptr noundef %1, i32 noundef 15872, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, i16 noundef signext %170, i16 noundef signext %170, ptr noundef %4, ptr noundef %5, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #20
  br label %251

172:                                              ; preds = %164
  %173 = icmp ne i32 %20, 20
  %174 = icmp ne i32 %20, 30
  %175 = and i1 %173, %174
  %176 = or i1 %166, %175
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %179 = sext i16 %178 to i32
  %180 = tail call ptr @uiDefAutoButR(ptr noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %7, i32 noundef %179) #20
  br label %251

181:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %14) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %14, i8 0, i64 3, i1 false)
  %182 = icmp eq i32 %11, 0
  %183 = icmp ne i32 %19, 0
  %184 = select i1 %182, i1 %183, i1 false
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = getelementptr inbounds [3 x i8], ptr %14, i64 0, i64 1
  store i8 58, ptr %186, align 1, !tbaa !34
  br label %201

187:                                              ; preds = %181
  br i1 %29, label %188, label %201

188:                                              ; preds = %187
  %189 = load ptr, ptr %15, align 8, !tbaa !24
  %190 = getelementptr inbounds %struct.uiLayoutRoot, ptr %189, i64 0, i32 10
  %191 = load ptr, ptr %190, align 8, !tbaa !28
  %192 = getelementptr inbounds %struct.uiBlock, ptr %191, i64 0, i32 30
  %193 = load i8, ptr %192, align 1, !tbaa !102
  %194 = add i8 %193, -1
  %195 = icmp ult i8 %194, 2
  br i1 %195, label %196, label %201

196:                                              ; preds = %188
  %197 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %198 = sext i32 %6 to i64
  %199 = shl nsw i64 %198, 2
  %200 = tail call ptr %197(i64 noundef %199, ptr noundef nonnull @.str.38) #20
  tail call void @RNA_property_boolean_get_array(ptr noundef %4, ptr noundef %5, ptr noundef %200) #20
  br label %201

201:                                              ; preds = %185, %188, %196, %187
  %202 = phi ptr [ %200, %196 ], [ null, %187 ], [ null, %188 ], [ null, %185 ]
  %203 = icmp eq i32 %6, 0
  br i1 %203, label %246, label %204

204:                                              ; preds = %201
  %205 = icmp eq ptr %202, null
  %206 = icmp eq i32 %9, 0
  %207 = icmp eq i32 %10, 0
  %208 = icmp eq i32 %20, 28
  %209 = zext i32 %6 to i64
  br label %210

210:                                              ; preds = %204, %243
  %211 = phi i64 [ 0, %204 ], [ %244, %243 ]
  %212 = phi i32 [ %3, %204 ], [ %223, %243 ]
  br i1 %182, label %213, label %216

213:                                              ; preds = %210
  %214 = trunc i64 %211 to i32
  %215 = call zeroext i8 @RNA_property_array_item_char(ptr noundef %5, i32 noundef %214) #20
  store i8 %215, ptr %14, align 1, !tbaa !34
  br label %216

216:                                              ; preds = %213, %210
  br i1 %205, label %222, label %217

217:                                              ; preds = %216
  %218 = getelementptr inbounds i32, ptr %202, i64 %211
  %219 = load i32, ptr %218, align 4, !tbaa !87
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %220, i32 38, i32 39
  br label %222

222:                                              ; preds = %217, %216
  %223 = phi i32 [ %221, %217 ], [ %212, %216 ]
  %224 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %225 = sext i16 %224 to i32
  %226 = trunc i64 %211 to i32
  %227 = call ptr @uiDefAutoButR(ptr noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef %226, ptr noundef nonnull %14, i32 noundef %223, i32 noundef 0, i32 noundef 0, i32 noundef %7, i32 noundef %225) #20
  br i1 %206, label %233, label %228

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.uiBut, ptr %227, i64 0, i32 4
  %230 = load i32, ptr %229, align 8, !tbaa !88
  %231 = icmp eq i32 %230, 2560
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  store i32 7168, ptr %229, align 8, !tbaa !88
  br label %233

233:                                              ; preds = %232, %228, %222
  br i1 %207, label %239, label %234

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.uiBut, ptr %227, i64 0, i32 4
  %236 = load i32, ptr %235, align 8, !tbaa !88
  %237 = icmp eq i32 %236, 19456
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store i32 1536, ptr %235, align 8, !tbaa !88
  br label %239

239:                                              ; preds = %238, %234, %233
  %240 = icmp eq i64 %211, 0
  %241 = select i1 %240, i1 %208, i1 false
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  call void @uiButSetUnitType(ptr noundef %227, i32 noundef 327680) #20
  br label %243

243:                                              ; preds = %239, %242
  %244 = add nuw nsw i64 %211, 1
  %245 = icmp eq i64 %244, %209
  br i1 %245, label %246, label %210, !llvm.loop !103

246:                                              ; preds = %243, %201
  %247 = icmp eq ptr %202, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %246
  %249 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  call void %249(ptr noundef nonnull %202) #20
  br label %250

250:                                              ; preds = %248, %246
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #22
  br label %251

251:                                              ; preds = %123, %163, %177, %250, %168
  call void @uiBlockSetCurLayout(ptr noundef %1, ptr noundef %0) #21
  br label %253

252:                                              ; preds = %132
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #22
  br label %253

253:                                              ; preds = %252, %251
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefIconTextButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButR_prop(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_item_enum_expand(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !33
  %14 = icmp eq i32 %13, 4
  %15 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 48
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  br i1 %14, label %17, label %19

17:                                               ; preds = %7
  call void @RNA_property_enum_items_gettexted_all(ptr noundef %16, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %9) #20
  %18 = call ptr @uiLayoutRadial(ptr noundef nonnull %0) #21
  call void @uiBlockSetCurLayout(ptr noundef %1, ptr noundef %18) #21
  br label %27

19:                                               ; preds = %7
  call void @RNA_property_enum_items_gettexted(ptr noundef %16, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %9) #20
  %20 = load ptr, ptr %10, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.uiLayoutRoot, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !33
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call fastcc ptr @ui_item_local_sublayout(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef 1) #21
  call void @uiBlockSetCurLayout(ptr noundef nonnull %1, ptr noundef %25) #21
  br label %27

26:                                               ; preds = %19
  call void @uiBlockSetCurLayout(ptr noundef nonnull %1, ptr noundef nonnull %0) #21
  br label %27

27:                                               ; preds = %24, %26, %17
  %28 = phi ptr [ %18, %17 ], [ null, %24 ], [ null, %26 ]
  %29 = load ptr, ptr %8, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.EnumPropertyItem, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %95, label %33

33:                                               ; preds = %27
  %34 = icmp eq ptr %4, null
  %35 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 7
  %36 = icmp ne i32 %6, 0
  %37 = trunc i32 %5 to i16
  br label %38

38:                                               ; preds = %33, %90
  %39 = phi ptr [ %31, %33 ], [ %93, %90 ]
  %40 = phi ptr [ %29, %33 ], [ %91, %90 ]
  %41 = load i8, ptr %39, align 1, !tbaa !34
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  br i1 %14, label %44, label %90

44:                                               ; preds = %43
  call void @uiItemS(ptr noundef %28) #21
  br label %90

45:                                               ; preds = %38
  br i1 %34, label %49, label %46

46:                                               ; preds = %45
  %47 = load i8, ptr %4, align 1, !tbaa !34
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %45
  %50 = getelementptr inbounds %struct.EnumPropertyItem, ptr %40, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  br label %52

52:                                               ; preds = %46, %49
  %53 = phi ptr [ %51, %49 ], [ @.str, %46 ]
  %54 = getelementptr inbounds %struct.EnumPropertyItem, ptr %40, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !58
  %56 = load i32, ptr %40, align 8, !tbaa !56
  %57 = load ptr, ptr %35, align 8, !tbaa !41
  %58 = select i1 %36, ptr @.str, ptr %53
  %59 = call fastcc i32 @ui_text_icon_width(ptr noundef %57, ptr noundef %58, i32 noundef %55, i8 noundef zeroext 0) #21
  %60 = icmp eq i32 %55, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %52
  %62 = load i8, ptr %53, align 1, !tbaa !34
  %63 = icmp eq i8 %62, 0
  %64 = or i1 %36, %63
  %65 = trunc i32 %59 to i16
  %66 = sitofp i32 %56 to float
  br i1 %64, label %69, label %67

67:                                               ; preds = %61
  %68 = call ptr @uiDefIconTextButR_prop(ptr noundef nonnull %1, i32 noundef 1024, i32 noundef 0, i32 noundef %55, ptr noundef nonnull %53, i32 noundef 0, i32 noundef 0, i16 noundef signext %65, i16 noundef signext %37, ptr noundef %2, ptr noundef %3, i32 noundef -1, float noundef 0.000000e+00, float noundef %66, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #20
  br label %75

69:                                               ; preds = %61
  %70 = call ptr @uiDefIconButR_prop(ptr noundef nonnull %1, i32 noundef 1024, i32 noundef 0, i32 noundef %55, i32 noundef 0, i32 noundef 0, i16 noundef signext %65, i16 noundef signext %37, ptr noundef %2, ptr noundef %3, i32 noundef -1, float noundef 0.000000e+00, float noundef %66, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #20
  br label %75

71:                                               ; preds = %52
  %72 = trunc i32 %59 to i16
  %73 = sitofp i32 %56 to float
  %74 = call ptr @uiDefButR_prop(ptr noundef nonnull %1, i32 noundef 1024, i32 noundef 0, ptr noundef %53, i32 noundef 0, i32 noundef 0, i16 noundef signext %72, i16 noundef signext %37, ptr noundef %2, ptr noundef %3, i32 noundef -1, float noundef 0.000000e+00, float noundef %73, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #20
  br label %75

75:                                               ; preds = %69, %71, %67
  %76 = phi ptr [ %70, %69 ], [ %74, %71 ], [ %68, %67 ]
  %77 = call i32 @RNA_property_flag(ptr noundef %3) #20
  %78 = and i32 %77, 2097152
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = sext i32 %56 to i64
  %82 = inttoptr i64 %81 to ptr
  call void @uiButSetFunc(ptr noundef %76, ptr noundef nonnull @ui_item_enum_expand_handle, ptr noundef %76, ptr noundef %82) #20
  br label %83

83:                                               ; preds = %80, %75
  %84 = call fastcc i32 @ui_layout_local_dir(ptr noundef %0) #21, !range !104
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.uiBut, ptr %76, i64 0, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !39
  %89 = or i32 %88, 2
  store i32 %89, ptr %87, align 4, !tbaa !39
  br label %90

90:                                               ; preds = %83, %86, %43, %44
  %91 = getelementptr inbounds %struct.EnumPropertyItem, ptr %40, i64 1
  %92 = getelementptr inbounds %struct.EnumPropertyItem, ptr %40, i64 1, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !54
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %38, !llvm.loop !105

95:                                               ; preds = %90, %27
  call void @uiBlockSetCurLayout(ptr noundef %1, ptr noundef %0) #21
  %96 = load i8, ptr %9, align 1, !tbaa !34
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %100 = load ptr, ptr %8, align 8, !tbaa !5
  call void %99(ptr noundef %100) #20
  br label %101

101:                                              ; preds = %98, %95
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_item_with_label(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = alloca [128 x i8], align 16
  %12 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 10
  %13 = load i8, ptr %12, align 2, !tbaa !53
  %14 = zext i8 %13 to i32
  %15 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef %14) #21
  tail call void @uiBlockSetCurLayout(ptr noundef %1, ptr noundef %15) #21
  %16 = load i8, ptr %2, align 1, !tbaa !34
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %10
  %19 = sdiv i32 %7, 3
  %20 = trunc i32 %19 to i16
  %21 = trunc i32 %8 to i16
  %22 = tail call ptr @uiDefBut(ptr noundef %1, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, i16 noundef signext %20, i16 noundef signext %21, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #20
  %23 = sub nsw i32 %7, %19
  br label %24

24:                                               ; preds = %18, %10
  %25 = phi i32 [ %23, %18 ], [ %7, %10 ]
  %26 = tail call i32 @RNA_property_type(ptr noundef %5) #20
  %27 = tail call i32 @RNA_property_subtype(ptr noundef %5) #20
  %28 = add i32 %27, -1
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = icmp eq i32 %27, 2
  %32 = tail call ptr @uiLayoutRow(ptr noundef %15, i32 noundef 1) #21
  tail call void @uiBlockSetCurLayout(ptr noundef %1, ptr noundef %32) #21
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %34 = sext i16 %33 to i32
  %35 = sub nsw i32 %25, %34
  %36 = tail call ptr @uiDefAutoButR(ptr noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %35, i32 noundef %8) #20
  %37 = select i1 %31, ptr @.str.39, ptr @.str.40
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %39 = trunc i32 %8 to i16
  %40 = tail call ptr @uiDefIconButO(ptr noundef %1, i32 noundef 512, ptr noundef nonnull %37, i32 noundef 0, i32 noundef 108, i32 noundef 0, i32 noundef 0, i16 noundef signext %38, i16 noundef signext %39, ptr noundef null) #20
  br label %74

41:                                               ; preds = %24
  %42 = and i32 %9, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = trunc i32 %25 to i16
  %46 = trunc i32 %8 to i16
  %47 = tail call ptr @uiDefButR_prop(ptr noundef %1, i32 noundef 12288, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, i16 noundef signext %45, i16 noundef signext %46, ptr noundef %4, ptr noundef %5, i32 noundef %6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #20
  br label %74

48:                                               ; preds = %41
  %49 = and i32 %9, 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  %54 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %53, ptr noundef nonnull @RNA_KeyMapItem) #20
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #22
  %57 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !49
  %59 = call i32 @WM_keymap_item_to_string(ptr noundef %58, ptr noundef nonnull %11, i32 noundef 128) #20
  %60 = trunc i32 %25 to i16
  %61 = trunc i32 %8 to i16
  %62 = call ptr @uiDefButR_prop(ptr noundef %1, i32 noundef 23552, i32 noundef 0, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0, i16 noundef signext %60, i16 noundef signext %61, ptr noundef nonnull %4, ptr noundef %5, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #20
  call void @uiButSetFunc(ptr noundef %62, ptr noundef nonnull @ui_keymap_but_cb, ptr noundef %62, ptr noundef null) #20
  %63 = and i32 %9, 256
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  call void @uiButSetFlag(ptr noundef %62, i32 noundef 1048576) #20
  br label %66

66:                                               ; preds = %65, %56
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #22
  br label %74

67:                                               ; preds = %48
  %68 = icmp eq i32 %26, 4
  %69 = and i32 %9, 16
  %70 = icmp eq i32 %69, 0
  %71 = and i1 %70, %68
  %72 = select i1 %71, ptr null, ptr @.str
  %73 = tail call ptr @uiDefAutoButR(ptr noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %72, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %25, i32 noundef %8) #20
  br label %74

74:                                               ; preds = %44, %51, %66, %67, %30
  %75 = phi ptr [ %36, %30 ], [ null, %44 ], [ %62, %66 ], [ null, %51 ], [ %73, %67 ]
  call void @uiBlockSetCurLayout(ptr noundef %1, ptr noundef nonnull %0) #21
  ret ptr %75
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_add_search(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.PointerRNA, align 8
  store ptr %4, ptr %6, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %8 = icmp eq ptr %4, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = tail call i32 @RNA_property_type(ptr noundef %2) #20
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  %13 = tail call ptr @RNA_property_pointer_type(ptr noundef %1, ptr noundef %2) #20
  call fastcc void @search_id_collection(ptr noundef %13, ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  %14 = load ptr, ptr %6, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %5, %12
  %17 = phi ptr [ %7, %12 ], [ %3, %5 ]
  %18 = phi ptr [ %14, %12 ], [ %4, %5 ]
  %19 = call zeroext i8 @RNA_property_is_unlink(ptr noundef %2) #20
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 20992, i32 26624
  %22 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  store i32 %21, ptr %22, align 8, !tbaa !88
  %23 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  %24 = load float, ptr %23, align 4, !tbaa !106
  %25 = fcmp ogt float %24, 2.560000e+02
  %26 = select i1 %25, float %24, float 2.560000e+02
  store float %26, ptr %23, align 4, !tbaa !106
  %27 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !22
  %28 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 58
  store ptr %18, ptr %28, align 8, !tbaa !107
  %29 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !39
  %31 = or i32 %30, 6
  store i32 %31, ptr %29, align 4, !tbaa !39
  %32 = call i32 @RNA_property_type(ptr noundef %2) #20
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !108
  store i8 0, ptr %36, align 1, !tbaa !34
  br label %37

37:                                               ; preds = %34, %16
  call void @uiButSetSearchFunc(ptr noundef nonnull %0, ptr noundef nonnull @rna_search_cb, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #20
  br label %38

38:                                               ; preds = %9, %37, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefAutoButR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2) #21
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call ptr @RNA_struct_identifier(ptr noundef %11) #20
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.uiItemR, ptr noundef %12, ptr noundef %2) #20
  br label %14

13:                                               ; preds = %6
  tail call void @uiItemFullR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, i32 noundef -1, i32 noundef 0, i32 noundef %3, ptr noundef %4, i32 noundef %5) #21
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemEnumR(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %3, ptr noundef %4) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @RNA_property_type(ptr noundef nonnull %7) #20
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %16, label %12

12:                                               ; preds = %9, %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %4) #21
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = tail call ptr @RNA_struct_identifier(ptr noundef %14) #20
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.uiItemEnumR, ptr noundef %15, ptr noundef %4) #20
  br label %17

16:                                               ; preds = %9
  tail call void @uiItemFullR(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %7, i32 noundef -2, i32 noundef %5, i32 noundef 0, ptr noundef %1, i32 noundef %2) #21
  br label %17

17:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemEnumR_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @RNA_property_type(ptr noundef nonnull %10) #20
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %19, label %15

15:                                               ; preds = %12, %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2) #21
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = tail call ptr @RNA_struct_identifier(ptr noundef %17) #20
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.uiItemEnumR_string, ptr noundef %18, ptr noundef %2) #20
  br label %72

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.uiLayoutRoot, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 48
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  call void @RNA_property_enum_items(ptr noundef %25, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %9) #20
  %26 = load ptr, ptr %7, align 8, !tbaa !5
  %27 = call zeroext i8 @RNA_enum_value_from_id(ptr noundef %26, ptr noundef %3, ptr noundef nonnull %8) #20
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr %7, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.EnumPropertyItem, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = icmp eq ptr %32, null
  br i1 %33, label %66, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %8, align 4, !tbaa !87
  br label %48

36:                                               ; preds = %19
  %37 = load i8, ptr %9, align 1, !tbaa !34
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %41 = load ptr, ptr %7, align 8, !tbaa !5
  call void %40(ptr noundef %41) #20
  br label %42

42:                                               ; preds = %39, %36
  call fastcc void @ui_item_disabled(ptr noundef nonnull %0, ptr noundef %2) #21
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.uiItemEnumR_string, ptr noundef %3) #20
  br label %72

43:                                               ; preds = %48
  %44 = add nuw i64 %49, 1
  %45 = getelementptr inbounds %struct.EnumPropertyItem, ptr %30, i64 %44, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = icmp eq ptr %46, null
  br i1 %47, label %66, label %48, !llvm.loop !109

48:                                               ; preds = %34, %43
  %49 = phi i64 [ 0, %34 ], [ %44, %43 ]
  %50 = getelementptr inbounds %struct.EnumPropertyItem, ptr %30, i64 %49
  %51 = load i32, ptr %50, align 8, !tbaa !56
  %52 = icmp eq i32 %51, %35
  br i1 %52, label %53, label %43

53:                                               ; preds = %48
  %54 = icmp eq ptr %4, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.EnumPropertyItem, ptr %30, i64 %49, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !57
  br label %58

58:                                               ; preds = %53, %55
  %59 = phi ptr [ %57, %55 ], [ %4, %53 ]
  %60 = icmp eq i32 %5, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.EnumPropertyItem, ptr %30, i64 %49, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !58
  br label %64

64:                                               ; preds = %58, %61
  %65 = phi i32 [ %63, %61 ], [ %5, %58 ]
  call void @uiItemFullR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i32 noundef -2, i32 noundef %35, i32 noundef 0, ptr noundef %59, i32 noundef %65) #21
  br label %66

66:                                               ; preds = %43, %29, %64
  %67 = load i8, ptr %9, align 1, !tbaa !34
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %71 = load ptr, ptr %7, align 8, !tbaa !5
  call void %70(ptr noundef %71) #20
  br label %72

72:                                               ; preds = %66, %69, %42, %15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemsEnumR(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.uiLayoutRoot, ptr %8, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  tail call fastcc void @ui_item_disabled(ptr noundef nonnull %0, ptr noundef %2) #21
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = tail call ptr @RNA_struct_identifier(ptr noundef %15) #20
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.uiItemsEnumR, ptr noundef %16, ptr noundef %2) #20
  br label %84

17:                                               ; preds = %3
  %18 = tail call i32 @RNA_property_type(ptr noundef nonnull %11) #20
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = tail call ptr @RNA_struct_identifier(ptr noundef %22) #20
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.uiItemsEnumR, ptr noundef %23, ptr noundef %2) #20
  br label %84

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  %25 = tail call ptr @uiLayoutSplit(ptr noundef nonnull %0, float noundef 0.000000e+00, i32 noundef 0) #21
  %26 = tail call ptr @uiLayoutColumn(ptr noundef %25, i32 noundef 0) #21
  %27 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 48
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  call void @RNA_property_enum_items_gettexted(ptr noundef %28, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %29 = load i32, ptr %5, align 4, !tbaa !87
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 2, i32 1
  %33 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 27
  br label %34

34:                                               ; preds = %31, %71
  %35 = phi i64 [ 0, %31 ], [ %73, %71 ]
  %36 = phi ptr [ %26, %31 ], [ %72, %71 ]
  %37 = load ptr, ptr %4, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.EnumPropertyItem, ptr %37, i64 %35, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = load i8, ptr %39, align 1, !tbaa !34
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.EnumPropertyItem, ptr %37, i64 %35
  %44 = getelementptr inbounds %struct.EnumPropertyItem, ptr %37, i64 %35, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !57
  %46 = load i32, ptr %43, align 8, !tbaa !56
  call void @uiItemEnumR(ptr noundef %36, ptr noundef %45, i32 noundef 0, ptr noundef %1, ptr noundef %2, i32 noundef %46) #21
  %47 = load ptr, ptr %32, align 8, !tbaa !59
  %48 = load ptr, ptr %4, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.EnumPropertyItem, ptr %48, i64 %35
  call fastcc void @ui_but_tip_from_enum_item(ptr noundef %47, ptr noundef %49) #21
  br label %71

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.EnumPropertyItem, ptr %37, i64 %35, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !57
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %50
  %55 = icmp eq i64 %35, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %54
  %57 = call ptr @uiLayoutColumn(ptr noundef %25, i32 noundef 0) #21
  %58 = load i32, ptr %33, align 8, !tbaa !60
  %59 = or i32 %58, 2048
  store i32 %59, ptr %33, align 8, !tbaa !60
  %60 = load ptr, ptr %4, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.EnumPropertyItem, ptr %60, i64 %35, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !57
  br label %63

63:                                               ; preds = %56, %54
  %64 = phi ptr [ %62, %56 ], [ %52, %54 ]
  %65 = phi ptr [ %57, %56 ], [ %36, %54 ]
  call void @uiItemL(ptr noundef %65, ptr noundef %64, i32 noundef 0) #21
  %66 = load ptr, ptr %32, align 8, !tbaa !59
  %67 = getelementptr inbounds %struct.uiBut, ptr %66, i64 0, i32 3
  store i32 2, ptr %67, align 4, !tbaa !39
  %68 = load ptr, ptr %4, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.EnumPropertyItem, ptr %68, i64 %35
  call fastcc void @ui_but_tip_from_enum_item(ptr noundef %66, ptr noundef %69) #21
  br label %71

70:                                               ; preds = %50
  call void @uiItemS(ptr noundef %36) #21
  br label %71

71:                                               ; preds = %42, %70, %63
  %72 = phi ptr [ %36, %42 ], [ %65, %63 ], [ %36, %70 ]
  %73 = add nuw nsw i64 %35, 1
  %74 = load i32, ptr %5, align 4, !tbaa !87
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %34, label %77, !llvm.loop !110

77:                                               ; preds = %71, %24
  %78 = load i8, ptr %6, align 1, !tbaa !34
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %82 = load ptr, ptr %4, align 8, !tbaa !5
  call void %81(ptr noundef %82) #20
  br label %83

83:                                               ; preds = %80, %77
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %84

84:                                               ; preds = %83, %20, %13
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_property_pointer_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @search_id_collection(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = load ptr, ptr @G, align 8, !tbaa !111
  tail call void @RNA_main_pointer_create(ptr noundef %5, ptr noundef %1) #20
  store ptr null, ptr %2, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #22
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call ptr @RNA_struct_iterator_property(ptr noundef %7) #20
  call void @RNA_property_collection_begin(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %4) #20
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !113
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %14

14:                                               ; preds = %12, %22
  %15 = load ptr, ptr %13, align 8, !tbaa !115
  %16 = call i32 @RNA_property_type(ptr noundef %15) #20
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = call ptr @RNA_property_pointer_type(ptr noundef %1, ptr noundef %15) #20
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store ptr %15, ptr %2, align 8, !tbaa !5
  br label %25

22:                                               ; preds = %18, %14
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #20
  %23 = load i32, ptr %9, align 8, !tbaa !113
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %14, !llvm.loop !116

25:                                               ; preds = %22, %3, %21
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetSearchFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_search_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca [66 x i8], align 16
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = tail call i32 @RNA_property_flag(ptr noundef %9) #20
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %12 = tail call ptr %11(i64 noundef 16, ptr noundef nonnull @.str.45) #20
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 48
  %14 = load i8, ptr %13, align 1, !tbaa !117
  %15 = icmp eq i8 %14, 0
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #22
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 57
  %17 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 58
  %18 = load ptr, ptr %17, align 8, !tbaa !107
  call void @RNA_property_collection_begin(ptr noundef nonnull %16, ptr noundef %18, ptr noundef nonnull %5) #20
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !113
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %81, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  %24 = and i32 %10, 1048576
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %27 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %28 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 1
  br label %29

29:                                               ; preds = %22, %77
  %30 = phi i32 [ 0, %22 ], [ %78, %77 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false), !tbaa.struct !22
  br i1 %25, label %35, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %26, align 8, !tbaa !49
  %33 = load ptr, ptr %27, align 8, !tbaa !118
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %77, label %35

35:                                               ; preds = %31, %29
  %36 = load ptr, ptr %8, align 8, !tbaa !21
  %37 = call i32 @RNA_property_type(ptr noundef %36) #20
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load ptr, ptr %8, align 8, !tbaa !21
  %41 = call i32 @RNA_property_pointer_poll(ptr noundef nonnull %27, ptr noundef %40, ptr noundef nonnull %6) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %77, label %43

43:                                               ; preds = %39, %35
  %44 = load ptr, ptr %28, align 8, !tbaa !48
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = call zeroext i8 @RNA_struct_is_ID(ptr noundef nonnull %44) #20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %26, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %7) #22
  %51 = getelementptr inbounds %struct.ID, ptr %50, i64 0, i32 4, i64 2
  %52 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %51, i64 noundef 66) #20
  %53 = call ptr @BLI_strdup(ptr noundef nonnull %7) #20
  %54 = call i32 @ui_id_icon_get(ptr noundef %0, ptr noundef %50, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %7) #22
  br label %57

55:                                               ; preds = %46, %43
  %56 = call ptr @RNA_struct_name_get_alloc(ptr noundef nonnull %6, ptr noundef null, i32 noundef 0, ptr noundef null) #20
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi i32 [ %54, %49 ], [ 0, %55 ]
  %59 = phi ptr [ %53, %49 ], [ %56, %55 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %75, label %61

61:                                               ; preds = %57
  br i1 %15, label %65, label %62

62:                                               ; preds = %61
  %63 = call ptr @BLI_strcasestr(ptr noundef nonnull %59, ptr noundef %2) #20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %62, %61
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %67 = call ptr %66(i64 noundef 32, ptr noundef nonnull @.str.46) #20
  %68 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %69 = call ptr %68(ptr noundef nonnull %59) #20
  %70 = getelementptr inbounds %struct.CollItemSearch, ptr %67, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !119
  %71 = getelementptr inbounds %struct.CollItemSearch, ptr %67, i64 0, i32 3
  store i32 %30, ptr %71, align 8, !tbaa !121
  %72 = getelementptr inbounds %struct.CollItemSearch, ptr %67, i64 0, i32 4
  store i32 %58, ptr %72, align 4, !tbaa !122
  call void @BLI_addtail(ptr noundef %12, ptr noundef %67) #20
  br label %73

73:                                               ; preds = %65, %62
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  call void %74(ptr noundef nonnull %59) #20
  br label %75

75:                                               ; preds = %73, %57
  %76 = add nsw i32 %30, 1
  br label %77

77:                                               ; preds = %39, %31, %75
  %78 = phi i32 [ %76, %75 ], [ %30, %31 ], [ %30, %39 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  call void @RNA_property_collection_next(ptr noundef nonnull %5) #20
  %79 = load i32, ptr %19, align 8, !tbaa !113
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %29, !llvm.loop !123

81:                                               ; preds = %77, %4
  call void @RNA_property_collection_end(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #22
  call void @BLI_sortlist(ptr noundef %12, ptr noundef nonnull @sort_search_items_list) #20
  br label %82

82:                                               ; preds = %86, %81
  %83 = phi ptr [ %12, %81 ], [ %84, %86 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = icmp eq ptr %84, null
  br i1 %85, label %97, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.CollItemSearch, ptr %84, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !119
  %89 = getelementptr inbounds %struct.CollItemSearch, ptr %84, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !121
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to ptr
  %93 = getelementptr inbounds %struct.CollItemSearch, ptr %84, i64 0, i32 4
  %94 = load i32, ptr %93, align 4, !tbaa !122
  %95 = call zeroext i8 @uiSearchItemAdd(ptr noundef %3, ptr noundef %88, ptr noundef %92, i32 noundef %94) #20
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %82, !llvm.loop !124

97:                                               ; preds = %86, %82
  %98 = load ptr, ptr %12, align 8, !tbaa !5
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %97, %100
  %101 = phi ptr [ %105, %100 ], [ %98, %97 ]
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %103 = getelementptr inbounds %struct.CollItemSearch, ptr %101, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !119
  call void %102(ptr noundef %104) #20
  %105 = load ptr, ptr %101, align 8, !tbaa !5
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %100, !llvm.loop !125

107:                                              ; preds = %100, %97
  call void @BLI_freelistN(ptr noundef nonnull %12) #20
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  call void %108(ptr noundef nonnull %12) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemPointerR(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #22
  %11 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = tail call ptr @RNA_struct_identifier(ptr noundef %15) #20
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.uiItemPointerR, ptr noundef %16, ptr noundef %2) #20
  br label %62

17:                                               ; preds = %7
  %18 = tail call i32 @RNA_property_type(ptr noundef nonnull %11) #20
  %19 = icmp eq i32 %18, 5
  %20 = add i32 %18, -3
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.uiItemPointerR, ptr noundef %2) #20
  br label %62

23:                                               ; preds = %17
  %24 = tail call ptr @RNA_struct_find_property(ptr noundef %3, ptr noundef %4) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = tail call ptr @RNA_struct_identifier(ptr noundef %28) #20
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.uiItemPointerR, ptr noundef %29, ptr noundef %4) #20
  br label %62

30:                                               ; preds = %23
  %31 = tail call i32 @RNA_property_type(ptr noundef nonnull %24) #20
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = tail call ptr @RNA_struct_identifier(ptr noundef %35) #20
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.uiItemPointerR, ptr noundef %36, ptr noundef %4) #20
  br label %62

37:                                               ; preds = %30
  %38 = icmp eq i32 %6, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %37
  br i1 %19, label %40, label %42

40:                                               ; preds = %39
  %41 = tail call ptr @RNA_property_pointer_type(ptr noundef %1, ptr noundef nonnull %11) #20
  br label %44

42:                                               ; preds = %39
  %43 = tail call ptr @RNA_property_pointer_type(ptr noundef %3, ptr noundef nonnull %24) #20
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi ptr [ %41, %40 ], [ %43, %42 ]
  %46 = tail call i32 @RNA_struct_ui_icon(ptr noundef %45) #20
  br label %47

47:                                               ; preds = %44, %37
  %48 = phi i32 [ %46, %44 ], [ %6, %37 ]
  %49 = icmp eq ptr %5, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = tail call ptr @RNA_property_ui_name(ptr noundef nonnull %11) #20
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi ptr [ %5, %47 ], [ %51, %50 ]
  %54 = call fastcc ptr @ui_item_name_add_colon(ptr noundef %53, ptr noundef nonnull %10) #21
  %55 = call ptr @uiLayoutGetBlock(ptr noundef %0) #21
  call fastcc void @ui_item_rna_size(ptr noundef %0, ptr noundef %54, i32 noundef %48, ptr noundef %1, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %8, ptr noundef nonnull %9) #21
  %56 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %57 = sext i16 %56 to i32
  %58 = load i32, ptr %8, align 4, !tbaa !87
  %59 = add nsw i32 %58, %57
  %60 = load i32, ptr %9, align 4, !tbaa !87
  %61 = call fastcc ptr @ui_item_with_label(ptr noundef %0, ptr noundef %55, ptr noundef %54, i32 noundef %48, ptr noundef %1, ptr noundef nonnull %11, i32 noundef 0, i32 noundef %59, i32 noundef %60, i32 noundef 0) #21
  call void @ui_but_add_search(ptr noundef %61, ptr noundef %1, ptr noundef nonnull %11, ptr noundef %3, ptr noundef nonnull %24) #21
  br label %62

62:                                               ; preds = %52, %33, %26, %22, %13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @uiLayoutGetBlock(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemM(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @WM_menutype_find(ptr noundef %2, i8 noundef zeroext 0) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.uiItemM, ptr noundef %2) #20
  br label %24

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, null
  %11 = getelementptr inbounds %struct.MenuType, ptr %6, i64 0, i32 3
  %12 = select i1 %10, ptr %11, ptr %3
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.uiLayoutRoot, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !33
  %17 = icmp ne i32 %16, 2
  %18 = icmp ne i32 %4, 0
  %19 = or i1 %18, %17
  %20 = select i1 %19, i32 %4, i32 77
  %21 = getelementptr inbounds %struct.MenuType, ptr %6, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !126
  %23 = tail call fastcc ptr @ui_item_menu(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %20, ptr noundef nonnull @ui_item_menutype_func, ptr noundef nonnull %6, ptr noundef null, ptr noundef %22, i8 noundef zeroext 0) #21
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: optsize
declare ptr @WM_menutype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_item_menu(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7) unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.uiLayoutRoot, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %12, ptr noundef %0) #21
  %13 = load ptr, ptr %9, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.uiLayoutRoot, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !33
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  tail call void @uiBlockSetEmboss(ptr noundef %12, i8 noundef zeroext 0) #20
  %18 = load ptr, ptr %9, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.uiLayoutRoot, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !33
  br label %21

21:                                               ; preds = %17, %8
  %22 = phi i32 [ %20, %17 ], [ %15, %8 ]
  %23 = icmp eq ptr %1, null
  %24 = select i1 %23, ptr @.str, ptr %1
  %25 = icmp ne i32 %22, 2
  %26 = icmp ne i32 %2, 0
  %27 = or i1 %26, %25
  %28 = select i1 %27, i32 %2, i32 77
  %29 = tail call fastcc i32 @ui_text_icon_width(ptr noundef nonnull %0, ptr noundef nonnull %24, i32 noundef %28, i8 noundef zeroext 1) #21
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %31 = zext i16 %30 to i32
  %32 = load ptr, ptr %9, align 8, !tbaa !24
  %33 = getelementptr inbounds %struct.uiLayoutRoot, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !33
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %47

36:                                               ; preds = %21
  %37 = icmp eq i8 %7, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = add i32 %29, %31
  br label %47

40:                                               ; preds = %36
  %41 = load i8, ptr %24, align 1, !tbaa !34
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = sdiv i16 %30, -2
  %45 = zext i16 %44 to i32
  %46 = add i32 %29, %45
  br label %47

47:                                               ; preds = %38, %43, %40, %21
  %48 = phi i32 [ %39, %38 ], [ %46, %43 ], [ %29, %40 ], [ %29, %21 ]
  %49 = load i8, ptr %24, align 1, !tbaa !34
  %50 = icmp ne i8 %49, 0
  %51 = icmp ne i32 %28, 0
  %52 = and i1 %51, %50
  %53 = trunc i32 %48 to i16
  br i1 %52, label %54, label %56

54:                                               ; preds = %47
  %55 = tail call ptr @uiDefIconTextMenuBut(ptr noundef %12, ptr noundef %3, ptr noundef %4, i32 noundef %28, ptr noundef nonnull %24, i32 noundef 0, i32 noundef 0, i16 noundef signext %53, i16 noundef signext %30, ptr noundef %6) #20
  br label %61

56:                                               ; preds = %47
  br i1 %51, label %57, label %59

57:                                               ; preds = %56
  %58 = tail call ptr @uiDefIconMenuBut(ptr noundef %12, ptr noundef %3, ptr noundef %4, i32 noundef %28, i32 noundef 0, i32 noundef 0, i16 noundef signext %53, i16 noundef signext %30, ptr noundef %6) #20
  br label %61

59:                                               ; preds = %56
  %60 = tail call ptr @uiDefMenuBut(ptr noundef %12, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %24, i32 noundef 0, i32 noundef 0, i16 noundef signext %53, i16 noundef signext %30, ptr noundef %6) #20
  br label %61

61:                                               ; preds = %57, %59, %54
  %62 = phi ptr [ %55, %54 ], [ %58, %57 ], [ %60, %59 ]
  %63 = icmp eq ptr %5, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.uiBut, ptr %62, i64 0, i32 19
  store ptr %62, ptr %65, align 8, !tbaa !128
  %66 = getelementptr inbounds %struct.uiBut, ptr %62, i64 0, i32 31
  store ptr %5, ptr %66, align 8, !tbaa !129
  br label %67

67:                                               ; preds = %64, %61
  %68 = load ptr, ptr %9, align 8, !tbaa !24
  %69 = getelementptr inbounds %struct.uiLayoutRoot, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !33
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  tail call void @uiBlockSetEmboss(ptr noundef %12, i8 noundef zeroext 0) #20
  %73 = load ptr, ptr %9, align 8, !tbaa !24
  %74 = getelementptr inbounds %struct.uiLayoutRoot, ptr %73, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !33
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi i32 [ %75, %72 ], [ %70, %67 ]
  switch i32 %77, label %78 [
    i32 0, label %82
    i32 3, label %82
  ]

78:                                               ; preds = %76
  %79 = icmp eq i8 %7, 0
  %80 = icmp eq i32 %77, 2
  %81 = or i1 %79, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %78, %76, %76
  tail call void @uiButSetMenuFromPulldown(ptr noundef %62) #20
  br label %83

83:                                               ; preds = %82, %78
  ret ptr %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_item_menutype_func(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.Menu, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  store ptr %2, ptr %4, align 8, !tbaa !130
  %5 = getelementptr inbounds %struct.Menu, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !132
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !133
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 2
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull @__func__.ui_item_menutype_func, ptr noundef nonnull %10) #21
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @CTX_store_set(ptr noundef %0, ptr noundef nonnull %14) #20
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.MenuType, ptr %2, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !134
  call void %19(ptr noundef %0, ptr noundef nonnull %4) #20
  %20 = load ptr, ptr %13, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void @CTX_store_set(ptr noundef %0, ptr noundef null) #20
  br label %23

23:                                               ; preds = %22, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @uiItemL_(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %7, ptr noundef %0) #21
  %8 = icmp eq ptr %1, null
  %9 = select i1 %8, ptr @.str, ptr %1
  %10 = load ptr, ptr %4, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.uiLayoutRoot, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !33
  %13 = icmp ne i32 %12, 2
  %14 = icmp ne i32 %2, 0
  %15 = or i1 %14, %13
  %16 = select i1 %15, i32 %2, i32 77
  %17 = tail call fastcc i32 @ui_text_icon_width(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %16, i8 noundef zeroext 0) #21
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load i8, ptr %9, align 1, !tbaa !34
  %21 = icmp eq i8 %20, 0
  %22 = trunc i32 %17 to i16
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  br i1 %21, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call ptr @uiDefIconTextBut(ptr noundef %7, i32 noundef 5120, i32 noundef 0, i32 noundef %16, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, i16 noundef signext %22, i16 noundef signext %23, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #20
  br label %32

26:                                               ; preds = %19
  %27 = tail call ptr @uiDefIconBut(ptr noundef %7, i32 noundef 5120, i32 noundef 0, i32 noundef %16, i32 noundef 0, i32 noundef 0, i16 noundef signext %22, i16 noundef signext %23, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #20
  br label %32

28:                                               ; preds = %3
  %29 = trunc i32 %17 to i16
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %31 = tail call ptr @uiDefBut(ptr noundef %7, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, i16 noundef signext %29, i16 noundef signext %30, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #20
  br label %32

32:                                               ; preds = %26, %28, %24
  %33 = phi ptr [ %25, %24 ], [ %27, %26 ], [ %31, %28 ]
  %34 = tail call i32 @uiLayoutGetAlignment(ptr noundef nonnull %0) #21, !range !135
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.uiBut, ptr %33, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !39
  %39 = and i32 %38, -11
  %40 = or disjoint i32 %39, 8
  store i32 %40, ptr %37, align 4, !tbaa !39
  br label %41

41:                                               ; preds = %36, %32
  %42 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 27
  %43 = load i32, ptr %42, align 8, !tbaa !60
  %44 = and i32 %43, 524288
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.uiBut, ptr %33, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !19
  %49 = or i32 %48, 16777216
  store i32 %49, ptr %47, align 8, !tbaa !19
  br label %50

50:                                               ; preds = %46, %41
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemLDrag(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @uiItemL_(ptr noundef %0, ptr noundef %2, i32 noundef %3) #21
  %6 = icmp eq ptr %1, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef nonnull %9) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 8, !tbaa !136
  tail call void @uiButSetDragID(ptr noundef %5, ptr noundef %15) #20
  br label %16

16:                                               ; preds = %11, %14, %7, %4
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_ID(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetDragID(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemV(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.uiLayoutRoot, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 46
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %10, i64 0, i32 17
  %13 = select i1 %11, ptr null, ptr %12
  tail call void @uiBlockSetCurLayout(ptr noundef %8, ptr noundef %0) #21
  %14 = icmp eq ptr %1, null
  %15 = select i1 %14, ptr @.str, ptr %1
  %16 = load ptr, ptr %5, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.uiLayoutRoot, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !33
  %19 = icmp ne i32 %18, 2
  %20 = icmp ne i32 %2, 0
  %21 = or i1 %20, %19
  %22 = select i1 %21, i32 %2, i32 77
  %23 = tail call fastcc i32 @ui_text_icon_width(ptr noundef %0, ptr noundef nonnull %15, i32 noundef %22, i8 noundef zeroext 0) #21
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %4
  %26 = load i8, ptr %15, align 1, !tbaa !34
  %27 = icmp eq i8 %26, 0
  %28 = trunc i32 %23 to i16
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  br i1 %27, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @uiDefIconTextButI(ptr noundef nonnull %8, i32 noundef 512, i32 noundef %3, i32 noundef %22, ptr noundef nonnull %15, i32 noundef 0, i32 noundef 0, i16 noundef signext %28, i16 noundef signext %29, ptr noundef %13, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str) #20
  br label %38

32:                                               ; preds = %25
  %33 = tail call ptr @uiDefIconButI(ptr noundef nonnull %8, i32 noundef 512, i32 noundef %3, i32 noundef %22, i32 noundef 0, i32 noundef 0, i16 noundef signext %28, i16 noundef signext %29, ptr noundef %13, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str) #20
  br label %38

34:                                               ; preds = %4
  %35 = trunc i32 %23 to i16
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %37 = tail call ptr @uiDefButI(ptr noundef nonnull %8, i32 noundef 512, i32 noundef %3, ptr noundef nonnull %15, i32 noundef 0, i32 noundef 0, i16 noundef signext %35, i16 noundef signext %36, ptr noundef %13, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, ptr noundef nonnull @.str) #20
  br label %38

38:                                               ; preds = %32, %34, %30
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefIconTextButI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconButI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButI(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ui_block_is_menu(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemMenuF(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call fastcc ptr @ui_item_menu(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef null, ptr noundef nonnull @.str, i8 noundef zeroext 0) #21
  br label %9

9:                                                ; preds = %5, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemMenuEnumO(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [128 x i8], align 16
  %8 = tail call ptr @WM_operatortype_find(ptr noundef %2, i8 noundef zeroext 0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2) #21
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uiItemMenuEnumO, ptr noundef %2) #20
  br label %66

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2) #21
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.uiItemMenuEnumO, ptr noundef %2) #20
  br label %66

16:                                               ; preds = %11
  %17 = icmp eq ptr %4, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = tail call ptr @RNA_struct_ui_name(ptr noundef nonnull %13) #20
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %19, %18 ], [ %4, %16 ]
  %22 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.uiLayoutRoot, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !33
  %26 = icmp ne i32 %25, 2
  %27 = icmp ne i32 %5, 0
  %28 = or i1 %27, %26
  %29 = select i1 %28, i32 %5, i32 77
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %31 = tail call ptr %30(i64 noundef 160, ptr noundef nonnull @.str.19) #20
  %32 = getelementptr inbounds %struct.MenuItemLevel, ptr %31, i64 0, i32 1
  %33 = tail call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef %2, i64 noundef 64) #20
  %34 = getelementptr inbounds %struct.MenuItemLevel, ptr %31, i64 0, i32 2
  %35 = tail call ptr @BLI_strncpy(ptr noundef nonnull %34, ptr noundef %3, i64 noundef 64) #20
  %36 = load ptr, ptr %22, align 8, !tbaa !24
  %37 = getelementptr inbounds %struct.uiLayoutRoot, ptr %36, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !50
  store i32 %38, ptr %31, align 8, !tbaa !138
  %39 = load ptr, ptr %12, align 8, !tbaa !30
  %40 = tail call ptr @RNA_struct_ui_description(ptr noundef %39) #20
  %41 = tail call fastcc ptr @ui_item_menu(ptr noundef %0, ptr noundef %21, i32 noundef %29, ptr noundef nonnull @menu_item_enum_opname_menu, ptr noundef null, ptr noundef nonnull %31, ptr noundef %40, i8 noundef zeroext 1) #21
  %42 = load ptr, ptr %22, align 8, !tbaa !24
  %43 = getelementptr inbounds %struct.uiLayoutRoot, ptr %42, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !28
  %45 = getelementptr inbounds %struct.uiBlock, ptr %44, i64 0, i32 27
  %46 = load i32, ptr %45, align 8, !tbaa !60
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %20
  %50 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 13
  %51 = load ptr, ptr %50, align 8, !tbaa !140
  %52 = icmp eq ptr %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !141
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #22
  %58 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !142
  %60 = getelementptr inbounds %struct.uiLayoutRoot, ptr %42, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = call ptr @WM_key_event_operator_string(ptr noundef %1, ptr noundef %59, i32 noundef %61, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %7, i32 noundef 128) #20
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  call void @ui_but_add_shortcut(ptr noundef %41, ptr noundef nonnull %7, i8 noundef zeroext 0) #20
  br label %65

65:                                               ; preds = %64, %57
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #22
  br label %66

66:                                               ; preds = %20, %49, %53, %65, %15, %10
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @menu_item_enum_opname_menu(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 31
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = load i32, ptr %5, align 8, !tbaa !138
  tail call void @uiLayoutSetOperatorContext(ptr noundef %1, i32 noundef %6) #21
  %7 = getelementptr inbounds %struct.MenuItemLevel, ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %struct.MenuItemLevel, ptr %5, i64 0, i32 2
  tail call void @uiItemsEnumO(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %9 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.uiLayoutRoot, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !28
  tail call void @uiBlockSetDirection(ptr noundef %12, i8 noundef zeroext 2) #20
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_struct_ui_description(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_key_event_operator_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_but_add_shortcut(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiItemMenuEnumR(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  tail call fastcc void @ui_item_disabled(ptr noundef %0, ptr noundef %2) #21
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = tail call ptr @RNA_struct_identifier(ptr noundef %10) #20
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.uiItemMenuEnumR, ptr noundef %11, ptr noundef %2) #20
  br label %36

12:                                               ; preds = %5
  %13 = icmp eq ptr %3, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = tail call ptr @RNA_property_ui_name(ptr noundef nonnull %6) #20
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %3, %12 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.uiLayoutRoot, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !33
  %22 = icmp ne i32 %21, 2
  %23 = icmp ne i32 %4, 0
  %24 = or i1 %23, %22
  %25 = select i1 %24, i32 %4, i32 77
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %27 = tail call ptr %26(i64 noundef 160, ptr noundef nonnull @.str.19) #20
  %28 = getelementptr inbounds %struct.MenuItemLevel, ptr %27, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !22
  %29 = getelementptr inbounds %struct.MenuItemLevel, ptr %27, i64 0, i32 2
  %30 = tail call ptr @BLI_strncpy(ptr noundef nonnull %29, ptr noundef %2, i64 noundef 64) #20
  %31 = load ptr, ptr %18, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.uiLayoutRoot, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !50
  store i32 %33, ptr %27, align 8, !tbaa !138
  %34 = tail call ptr @RNA_property_description(ptr noundef nonnull %6) #20
  %35 = tail call fastcc ptr @ui_item_menu(ptr noundef %0, ptr noundef %17, i32 noundef %25, ptr noundef nonnull @menu_item_enum_rna_menu, ptr noundef null, ptr noundef nonnull %27, ptr noundef %34, i8 noundef zeroext 0) #21
  br label %36

36:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @menu_item_enum_rna_menu(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 31
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = load i32, ptr %5, align 8, !tbaa !138
  tail call void @uiLayoutSetOperatorContext(ptr noundef %1, i32 noundef %6) #21
  %7 = getelementptr inbounds %struct.MenuItemLevel, ptr %5, i64 0, i32 3
  %8 = getelementptr inbounds %struct.MenuItemLevel, ptr %5, i64 0, i32 2
  tail call void @uiItemsEnumR(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_property_description(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiLayoutRow(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 88, ptr noundef nonnull @.str.20) #20
  %5 = getelementptr inbounds %struct.uiItem, ptr %4, i64 0, i32 2
  store i32 1, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !24
  %9 = trunc i32 %1 to i8
  %10 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 10
  store i8 %9, ptr %10, align 2, !tbaa !53
  %11 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 11
  store i8 1, ptr %11, align 1, !tbaa !64
  %12 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 12
  store i8 1, ptr %12, align 4, !tbaa !65
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !66
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.uiLayoutRoot, ptr %7, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.uiStyle, ptr %19, i64 0, i32 13
  %21 = load i16, ptr %20, align 2, !tbaa !99
  br label %22

22:                                               ; preds = %2, %17
  %23 = phi i16 [ %21, %17 ], [ 0, %2 ]
  %24 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 9
  store i16 %23, ptr %24, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %26 = load i8, ptr %25, align 1, !tbaa !40
  %27 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 13
  store i8 %26, ptr %27, align 1, !tbaa !40
  %28 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 6
  store i32 %29, ptr %30, align 8, !tbaa !67
  %31 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %31, ptr noundef nonnull %4) #20
  %32 = load ptr, ptr %6, align 8, !tbaa !24
  %33 = getelementptr inbounds %struct.uiLayoutRoot, ptr %32, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %34, ptr noundef nonnull %4) #21
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiLayoutColumnFlow(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %5 = tail call ptr %4(i64 noundef 96, ptr noundef nonnull @.str.22) #20
  %6 = getelementptr inbounds %struct.uiItem, ptr %5, i64 0, i32 2
  store i32 3, ptr %6, align 8, !tbaa !143
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !145
  %10 = trunc i32 %2 to i8
  %11 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 10
  store i8 %10, ptr %11, align 2, !tbaa !146
  %12 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 11
  store i8 1, ptr %12, align 1, !tbaa !147
  %13 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 12
  store i8 1, ptr %13, align 4, !tbaa !148
  %14 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !149
  %17 = icmp eq i8 %10, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.uiLayoutRoot, ptr %8, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.uiStyle, ptr %20, i64 0, i32 10
  %22 = load i16, ptr %21, align 8, !tbaa !76
  br label %23

23:                                               ; preds = %3, %18
  %24 = phi i16 [ %22, %18 ], [ 0, %3 ]
  %25 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 9
  store i16 %24, ptr %25, align 8, !tbaa !150
  %26 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %27 = load i8, ptr %26, align 1, !tbaa !40
  %28 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 13
  store i8 %27, ptr %28, align 1, !tbaa !151
  %29 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !67
  %31 = getelementptr inbounds %struct.uiLayout, ptr %5, i64 0, i32 6
  store i32 %30, ptr %31, align 8, !tbaa !152
  %32 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %5, i64 0, i32 1
  store i32 %1, ptr %32, align 8, !tbaa !153
  %33 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %33, ptr noundef nonnull %5) #20
  %34 = load ptr, ptr %7, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct.uiLayoutRoot, ptr %34, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %36, ptr noundef nonnull %5) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_item_local_sublayout(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @ui_layout_local_dir(ptr noundef %0) #21, !range !104
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef %2) #21
  br label %10

8:                                                ; preds = %3
  %9 = tail call ptr @uiLayoutColumn(ptr noundef %1, i32 noundef %2) #21
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.uiLayout, ptr %11, i64 0, i32 9
  store i16 0, ptr %12, align 8, !tbaa !84
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiLayoutBox(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @ui_layout_box(ptr noundef %0, i32 noundef 14336) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ui_layout_box(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 96, ptr noundef nonnull @.str.48) #20
  %5 = getelementptr inbounds %struct.uiItem, ptr %4, i64 0, i32 2
  store i32 5, ptr %5, align 8, !tbaa !154
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !156
  %9 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 11
  store i8 1, ptr %9, align 1, !tbaa !157
  %10 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 12
  store i8 1, ptr %10, align 4, !tbaa !158
  %11 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !159
  %14 = getelementptr inbounds %struct.uiLayoutRoot, ptr %7, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.uiStyle, ptr %15, i64 0, i32 10
  %17 = load i16, ptr %16, align 8, !tbaa !76
  %18 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 9
  store i16 %17, ptr %18, align 8, !tbaa !160
  %19 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %20 = load i8, ptr %19, align 1, !tbaa !40
  %21 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 13
  store i8 %20, ptr %21, align 1, !tbaa !161
  %22 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 6
  store i32 %23, ptr %24, align 8, !tbaa !162
  %25 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %25, ptr noundef %4) #20
  %26 = load ptr, ptr %6, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.uiLayoutRoot, ptr %26, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %28, ptr noundef %4) #21
  %29 = load ptr, ptr %6, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct.uiLayoutRoot, ptr %29, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = tail call ptr @uiDefBut(ptr noundef %31, i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #20
  %33 = getelementptr inbounds %struct.uiLayoutItemBx, ptr %4, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !163
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_layout_list_set_labels_active(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1, %19
  %6 = phi ptr [ %20, %19 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.uiItem, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !164
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @ui_layout_list_set_labels_active(ptr noundef nonnull %6) #21
  br label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.uiButtonItem, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !166
  %14 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !19
  %16 = and i32 %15, 16777216
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  tail call void @uiButSetFlag(ptr noundef nonnull %13, i32 noundef 1) #20
  br label %19

19:                                               ; preds = %10, %18, %11
  %20 = load ptr, ptr %6, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %5, !llvm.loop !167

22:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiLayoutListBox(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc ptr @ui_layout_box(ptr noundef %0, i32 noundef 17920) #21
  %8 = getelementptr inbounds %struct.uiLayoutItemBx, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !163
  %10 = getelementptr inbounds %struct.uiBut, ptr %9, i64 0, i32 68
  store ptr %1, ptr %10, align 8, !tbaa !168
  %11 = getelementptr inbounds %struct.uiBut, ptr %9, i64 0, i32 57
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !22
  %12 = getelementptr inbounds %struct.uiBut, ptr %9, i64 0, i32 58
  store ptr %3, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.uiBut, ptr %9, i64 0, i32 54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !22
  %14 = getelementptr inbounds %struct.uiBut, ptr %9, i64 0, i32 55
  store ptr %5, ptr %14, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.uiBut, ptr %9, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !19
  %17 = and i32 %16, 524288
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = tail call ptr @RNA_property_description(ptr noundef %5) #20
  %21 = getelementptr inbounds %struct.uiBut, ptr %9, i64 0, i32 42
  store ptr %20, ptr %21, align 8, !tbaa !85
  br label %22

22:                                               ; preds = %19, %6
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiLayoutAbsolute(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 88, ptr noundef nonnull @.str.24) #20
  %5 = getelementptr inbounds %struct.uiItem, ptr %4, i64 0, i32 2
  store i32 6, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 1
  %8 = trunc i32 %1 to i8
  %9 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 10
  store i8 %8, ptr %9, align 2, !tbaa !53
  %10 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 11
  store i8 1, ptr %10, align 1, !tbaa !64
  %11 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 12
  store i8 1, ptr %11, align 4, !tbaa !65
  %12 = load <2 x ptr>, ptr %6, align 8, !tbaa !5
  store <2 x ptr> %12, ptr %7, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %14 = load i8, ptr %13, align 1, !tbaa !40
  %15 = getelementptr inbounds %struct.uiLayout, ptr %4, i64 0, i32 13
  store i8 %14, ptr %15, align 1, !tbaa !40
  %16 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %16, ptr noundef %4) #20
  %17 = load ptr, ptr %6, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct.uiLayoutRoot, ptr %17, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %19, ptr noundef %4) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiLayoutAbsoluteBlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #21
  %3 = tail call ptr @uiLayoutAbsolute(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiLayoutOverlap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 88, ptr noundef nonnull @.str.25) #20
  %4 = getelementptr inbounds %struct.uiItem, ptr %3, i64 0, i32 2
  store i32 8, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 1
  %7 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 11
  store i8 1, ptr %7, align 1, !tbaa !64
  %8 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 12
  store i8 1, ptr %8, align 4, !tbaa !65
  %9 = load <2 x ptr>, ptr %5, align 8, !tbaa !5
  store <2 x ptr> %9, ptr %6, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %11 = load i8, ptr %10, align 1, !tbaa !40
  %12 = getelementptr inbounds %struct.uiLayout, ptr %3, i64 0, i32 13
  store i8 %11, ptr %12, align 1, !tbaa !40
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %3) #20
  %14 = load ptr, ptr %5, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.uiLayoutRoot, ptr %14, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  tail call void @uiBlockSetCurLayout(ptr noundef %16, ptr noundef %3) #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetActive(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 11
  store i8 %1, ptr %3, align 1, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetEnabled(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 12
  store i8 %1, ptr %3, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetRedAlert(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  store i8 %1, ptr %3, align 1, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetKeepAspect(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 14
  store i8 %1, ptr %3, align 2, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetAlignment(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  store i8 %1, ptr %3, align 1, !tbaa !170
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetScaleX(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8
  store float %1, ptr %3, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @uiLayoutSetScaleY(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8, i64 1
  store float %1, ptr %3, align 4, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @uiLayoutGetActive(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 11
  %3 = load i8, ptr %2, align 1, !tbaa !64
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @uiLayoutGetEnabled(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 12
  %3 = load i8, ptr %2, align 4, !tbaa !65
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @uiLayoutGetRedAlert(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !40
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @uiLayoutGetKeepAspect(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 14
  %3 = load i8, ptr %2, align 2, !tbaa !169
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @uiLayoutGetAlignment(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %3 = load i8, ptr %2, align 1, !tbaa !170
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @uiLayoutGetWidth(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !67
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @uiLayoutGetScaleX(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8
  %3 = load float, ptr %2, align 8, !tbaa !171
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @uiLayoutGetScaleY(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8, i64 1
  %3 = load float, ptr %2, align 4, !tbaa !171
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiBlockLayout(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %11 = tail call ptr %10(i64 noundef 80, ptr noundef nonnull @.str.27) #20
  %12 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 2
  store i32 %2, ptr %12, align 8, !tbaa !33
  %13 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 9
  store ptr %8, ptr %13, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 10
  store ptr %0, ptr %14, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 6
  store i32 %7, ptr %15, align 8, !tbaa !172
  %16 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 3
  store i32 1, ptr %16, align 4, !tbaa !50
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %18 = tail call ptr %17(i64 noundef 88, ptr noundef nonnull @.str.28) #20
  %19 = getelementptr inbounds %struct.uiItem, ptr %18, i64 0, i32 2
  store i32 10, ptr %19, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 4
  store i32 %3, ptr %20, align 8, !tbaa !173
  %21 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 5
  store i32 %4, ptr %21, align 4, !tbaa !174
  %22 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 1
  store ptr %11, ptr %22, align 8, !tbaa !24
  %23 = getelementptr inbounds %struct.uiStyle, ptr %8, i64 0, i32 11
  %24 = load i16, ptr %23, align 2, !tbaa !175
  %25 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 9
  store i16 %24, ptr %25, align 8, !tbaa !84
  %26 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 11
  store i8 1, ptr %26, align 1, !tbaa !64
  %27 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 12
  store i8 1, ptr %27, align 4, !tbaa !65
  %28 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !66
  switch i32 %2, label %30 [
    i32 4, label %29
    i32 2, label %29
  ]

29:                                               ; preds = %9, %9
  store i16 0, ptr %25, align 8, !tbaa !84
  br label %30

30:                                               ; preds = %9, %29
  %31 = icmp eq i32 %1, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 7
  store i32 %5, ptr %33, align 4, !tbaa !176
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %35 = sext i16 %34 to i32
  %36 = mul nsw i32 %35, %6
  %37 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 5
  store i32 %36, ptr %37, align 4, !tbaa !177
  br label %44

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.uiLayout, ptr %18, i64 0, i32 6
  store i32 %5, ptr %39, align 8, !tbaa !67
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %41 = sext i16 %40 to i32
  %42 = mul nsw i32 %41, %6
  %43 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 4
  store i32 %42, ptr %43, align 8, !tbaa !178
  br label %44

44:                                               ; preds = %38, %32
  %45 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 7
  store ptr %18, ptr %45, align 8, !tbaa !41
  %46 = getelementptr inbounds %struct.uiLayoutRoot, ptr %11, i64 0, i32 11
  store ptr %18, ptr %46, align 8, !tbaa !62
  %47 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 6
  tail call void @BLI_addtail(ptr noundef nonnull %47, ptr noundef nonnull %11) #20
  tail call fastcc void @ui_layout_add_padding_button(ptr noundef nonnull %11) #21
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_layout_add_padding_button(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayoutRoot, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !172
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiLayoutRoot, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.uiLayoutRoot, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  store ptr %11, ptr %8, align 8, !tbaa !41
  %12 = trunc i32 %3 to i16
  %13 = tail call ptr @uiDefBut(ptr noundef %7, i32 noundef 10752, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i16 noundef signext %12, i16 noundef signext %12, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str) #20
  store ptr %9, ptr %8, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @uiLayoutGetOperatorContext(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !50
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_layout_add_but(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str.29) #20
  %5 = getelementptr inbounds %struct.uiItem, ptr %4, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !164
  %6 = getelementptr inbounds %struct.uiButtonItem, ptr %4, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !166
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %4) #20
  %8 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 32
  store ptr %9, ptr %12, align 8, !tbaa !179
  %13 = getelementptr inbounds %struct.bContextStore, ptr %9, i64 0, i32 3
  store i8 1, ptr %13, align 8, !tbaa !180
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @uiLayoutSetOperatorContext(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.uiLayoutRoot, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @uiLayoutSetFunc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 7
  store ptr %1, ptr %6, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 8
  store ptr %2, ptr %7, align 8, !tbaa !183
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiBlockLayoutResolve(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !87
  br label %6

6:                                                ; preds = %5, %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store i32 0, ptr %2, align 4, !tbaa !87
  br label %9

9:                                                ; preds = %8, %6
  %10 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 7
  store ptr null, ptr %10, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %19, %14 ], [ %12, %9 ]
  tail call fastcc void @ui_layout_add_padding_button(ptr noundef nonnull %15) #21
  %16 = getelementptr inbounds %struct.uiLayoutRoot, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  tail call fastcc void @ui_layout_end(ptr noundef %0, ptr noundef %17, ptr noundef %1, ptr noundef %2) #21
  %18 = load ptr, ptr %16, align 8, !tbaa !62
  tail call fastcc void @ui_layout_free(ptr noundef %18) #21
  %19 = load ptr, ptr %15, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %14, !llvm.loop !184

21:                                               ; preds = %14, %9
  tail call void @BLI_freelistN(ptr noundef nonnull %11) #20
  tail call void @UI_template_fix_linking() #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_layout_end(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.uiLayoutRoot, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.uiLayoutRoot, ptr %6, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !183
  tail call void @uiBlockSetHandleFunc(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %12) #20
  br label %13

13:                                               ; preds = %10, %4
  tail call fastcc void @ui_item_estimate(ptr noundef nonnull %1) #21
  tail call fastcc void @ui_item_layout(ptr noundef nonnull %1) #21
  %14 = icmp eq ptr %2, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !173
  store i32 %17, ptr %2, align 4, !tbaa !87
  br label %18

18:                                               ; preds = %15, %13
  %19 = icmp eq ptr %3, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !174
  store i32 %22, ptr %3, align 4, !tbaa !87
  br label %23

23:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_layout_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %14
  %6 = phi ptr [ %7, %14 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !186
  %8 = getelementptr inbounds %struct.uiItem, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !187
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %12(ptr noundef nonnull %6) #20
  br label %14

13:                                               ; preds = %5
  tail call fastcc void @ui_layout_free(ptr noundef nonnull %6) #21
  br label %14

14:                                               ; preds = %11, %13
  %15 = icmp eq ptr %7, null
  br i1 %15, label %16, label %5, !llvm.loop !188

16:                                               ; preds = %14, %1
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %17(ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_template_fix_linking() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiLayoutSetContextPointer(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 8
  %9 = tail call ptr @CTX_store_add(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2) #20
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_store_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiLayoutContextCopy(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.uiLayoutRoot, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 8
  %8 = tail call ptr @CTX_store_add_all(ptr noundef nonnull %7, ptr noundef %1) #20
  %9 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_store_add_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiLayoutIntrospect(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_dynstr_new() #20
  %3 = load ptr, ptr @str, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %6(ptr noundef nonnull %3) #20
  br label %7

7:                                                ; preds = %5, %1
  tail call fastcc void @ui_intro_uiLayout(ptr noundef %2, ptr noundef %0) #21
  %8 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %2) #20
  store ptr %8, ptr @str, align 8, !tbaa !5
  tail call void @BLI_dynstr_free(ptr noundef %2) #20
  %9 = load ptr, ptr @str, align 8, !tbaa !5
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @BLI_dynstr_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_intro_uiLayout(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %1, i64 0, i32 3
  tail call fastcc void @ui_intro_items(ptr noundef %0, ptr noundef nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiLayoutOperatorButs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = alloca %union.IDPropertyTemplate, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !189
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %16 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %7, ptr noundef nonnull @.str.1) #20
  store ptr %16, ptr %12, align 8, !tbaa !189
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  br label %17

17:                                               ; preds = %15, %6
  %18 = zext i16 %5 to i32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !191
  %24 = getelementptr inbounds %struct.wmOperatorType, ptr %23, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  %26 = call ptr @RNA_struct_ui_name(ptr noundef %25) #20
  call void @uiItemL(ptr noundef %1, ptr noundef %26, i32 noundef 0) #21
  br label %27

27:                                               ; preds = %21, %17
  %28 = call zeroext i8 @WM_operator_repeat_check(ptr noundef %0, ptr noundef nonnull %2) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call ptr @uiLayoutGetBlock(ptr noundef %1) #21
  call void @uiBlockSetButLock(ptr noundef %31, i8 noundef zeroext 1, ptr noundef nonnull @.str.30) #20
  call void @uiItemL(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef 0) #21
  br label %32

32:                                               ; preds = %30, %27
  %33 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !191
  %35 = getelementptr inbounds %struct.wmOperatorType, ptr %34, i64 0, i32 19
  %36 = load i16, ptr %35, align 8, !tbaa !192
  %37 = and i16 %36, 32
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  %40 = call ptr @uiLayoutGetBlock(ptr noundef %1) #21
  %41 = getelementptr inbounds %struct.uiBlock, ptr %40, i64 0, i32 47
  store ptr %2, ptr %41, align 8, !tbaa !193
  %42 = call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #21
  call void @uiItemM(ptr noundef %42, ptr poison, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0) #21
  call void @WM_operator_properties_create(ptr noundef nonnull %8, ptr noundef nonnull @.str.33) #20
  %43 = load ptr, ptr %33, align 8, !tbaa !191
  %44 = getelementptr inbounds %struct.wmOperatorType, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !142
  call void @RNA_string_set(ptr noundef nonnull %8, ptr noundef nonnull @.str.34, ptr noundef %45) #20
  %46 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #22
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef %42, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str, i32 noundef 31, ptr noundef %47, i32 noundef 0, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #22
  call void @WM_operator_properties_create(ptr noundef nonnull %8, ptr noundef nonnull @.str.33) #20
  %48 = load ptr, ptr %33, align 8, !tbaa !191
  %49 = getelementptr inbounds %struct.wmOperatorType, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !142
  call void @RNA_string_set(ptr noundef nonnull %8, ptr noundef nonnull @.str.34, ptr noundef %50) #20
  call void @RNA_boolean_set(ptr noundef nonnull %8, ptr noundef nonnull @.str.35, i32 noundef 1) #20
  %51 = load ptr, ptr %46, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #22
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %10, ptr noundef %42, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str, i32 noundef 32, ptr noundef %51, i32 noundef 0, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  %52 = load ptr, ptr %33, align 8, !tbaa !191
  br label %53

53:                                               ; preds = %39, %32
  %54 = phi ptr [ %52, %39 ], [ %34, %32 ]
  %55 = getelementptr inbounds %struct.wmOperatorType, ptr %54, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !194
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 11
  store ptr %1, ptr %59, align 8, !tbaa !195
  call void %56(ptr noundef %0, ptr noundef nonnull %2) #20
  store ptr null, ptr %59, align 8, !tbaa !195
  br label %73

60:                                               ; preds = %53
  %61 = call ptr @CTX_wm_manager(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #22
  %62 = load ptr, ptr %33, align 8, !tbaa !191
  %63 = getelementptr inbounds %struct.wmOperatorType, ptr %62, i64 0, i32 11
  %64 = load ptr, ptr %63, align 8, !tbaa !30
  %65 = load ptr, ptr %12, align 8, !tbaa !189
  call void @RNA_pointer_create(ptr noundef %61, ptr noundef %64, ptr noundef %65, ptr noundef nonnull %11) #20
  %66 = call i32 @uiDefAutoButsRNA(ptr noundef %1, ptr noundef nonnull %11, ptr noundef %3, i8 noundef zeroext %4) #20
  %67 = icmp ne i32 %66, 0
  %68 = and i32 %18, 2
  %69 = icmp eq i32 %68, 0
  %70 = or i1 %69, %67
  br i1 %70, label %72, label %71

71:                                               ; preds = %60
  call void @uiItemL(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef 0) #21
  br label %72

72:                                               ; preds = %71, %60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #22
  br label %73

73:                                               ; preds = %72, %58
  %74 = call ptr @uiLayoutGetBlock(ptr noundef %1) #21
  %75 = getelementptr inbounds %struct.uiBlock, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = icmp eq ptr %76, null
  br i1 %77, label %101, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.uiBlock, ptr %74, i64 0, i32 27
  %80 = load i32, ptr %79, align 8, !tbaa !60
  %81 = and i32 %80, 256
  %82 = icmp eq i32 %81, 0
  br label %83

83:                                               ; preds = %78, %98
  %84 = phi ptr [ %76, %78 ], [ %99, %98 ]
  call void @uiButClearFlag(ptr noundef nonnull %84, i32 noundef 524288) #20
  br i1 %82, label %98, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.uiBut, ptr %84, i64 0, i32 55
  %87 = load ptr, ptr %86, align 8, !tbaa !21
  %88 = load ptr, ptr %33, align 8, !tbaa !191
  %89 = getelementptr inbounds %struct.wmOperatorType, ptr %88, i64 0, i32 13
  %90 = load ptr, ptr %89, align 8, !tbaa !140
  %91 = icmp eq ptr %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.uiBut, ptr %84, i64 0, i32 4
  %94 = load i32, ptr %93, align 8, !tbaa !88
  %95 = icmp eq i32 %94, 3072
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call ptr @CTX_wm_window(ptr noundef %0) #20
  call void @uiButSetFocusOnEnter(ptr noundef %97, ptr noundef nonnull %84) #20
  br label %98

98:                                               ; preds = %83, %96, %92, %85
  %99 = load ptr, ptr %84, align 8, !tbaa !5
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %83, !llvm.loop !196

101:                                              ; preds = %98, %73
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @WM_operator_repeat_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetButLock(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFocusOnEnter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @uiButGetMenuType(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 53
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = icmp eq ptr %3, @ui_item_menutype_func
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @ui_layout_vary_direction(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !33
  switch i32 %5, label %6 [
    i32 1, label %11
    i32 4, label %11
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %8 = load i8, ptr %7, align 1, !tbaa !170
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 2, i32 1
  br label %11

11:                                               ; preds = %1, %1, %6
  %12 = phi i32 [ 1, %1 ], [ %10, %6 ], [ 1, %1 ]
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: optsize
declare zeroext i8 @RNA_enum_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #10

; Function Attrs: optsize
declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_layer_but_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = ptrtoint ptr %2 to i64
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !198
  %12 = getelementptr inbounds %struct.wmEvent, ptr %11, i64 0, i32 17
  %13 = load i16, ptr %12, align 8, !tbaa !200
  %14 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %5, ptr noundef %7) #20
  %15 = icmp eq i16 %13, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %5, ptr noundef %7, i32 noundef %9, i32 noundef 1) #20
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %16, %22
  %19 = phi i32 [ %23, %22 ], [ 0, %16 ]
  %20 = icmp eq i32 %19, %9
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %5, ptr noundef %7, i32 noundef %19, i32 noundef 0) #20
  br label %22

22:                                               ; preds = %18, %21
  %23 = add nuw nsw i32 %19, 1
  %24 = icmp eq i32 %23, %14
  br i1 %24, label %25, label %18, !llvm.loop !202

25:                                               ; preds = %22, %16
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %7) #20
  %26 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %27 = load ptr, ptr %26, align 8, !tbaa !203
  %28 = getelementptr inbounds %struct.uiBlock, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25, %31
  %32 = phi ptr [ %33, %31 ], [ %29, %25 ]
  tail call void @ui_check_but(ptr noundef nonnull %32) #20
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %31, !llvm.loop !204

35:                                               ; preds = %31, %25, %3
  ret void
}

; Function Attrs: optsize
declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_array_dimension(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_boolean_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_item_char(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetUnitType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_boolean_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ui_check_but(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_item_enum_expand_handle(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !198
  %7 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 17
  %8 = load i16, ptr %7, align 8, !tbaa !200
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = ptrtoint ptr %2 to i64
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = tail call i32 @RNA_property_enum_get(ptr noundef nonnull %13, ptr noundef %15) #20
  %17 = and i32 %16, %12
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %12, i32 %17
  %20 = load ptr, ptr %14, align 8, !tbaa !21
  tail call void @RNA_property_enum_set(ptr noundef nonnull %13, ptr noundef %20, i32 noundef %19) #20
  br label %21

21:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @ui_layout_local_dir(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !52
  switch i32 %3, label %4 [
    i32 1, label %5
    i32 10, label %5
    i32 8, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %4
  %6 = phi i32 [ 1, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @uiDefIconButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_keymap_item_to_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_keymap_but_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 50
  %6 = load i16, ptr %5, align 2, !tbaa !205
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  tail call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.41, i32 noundef %8) #20
  %9 = load i16, ptr %5, align 2, !tbaa !205
  %10 = lshr i16 %9, 1
  %11 = and i16 %10, 1
  %12 = zext nneg i16 %11 to i32
  tail call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.42, i32 noundef %12) #20
  %13 = load i16, ptr %5, align 2, !tbaa !205
  %14 = lshr i16 %13, 2
  %15 = and i16 %14, 1
  %16 = zext nneg i16 %15 to i32
  tail call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.43, i32 noundef %16) #20
  %17 = load i16, ptr %5, align 2, !tbaa !205
  %18 = lshr i16 %17, 3
  %19 = and i16 %18, 1
  %20 = zext nneg i16 %19 to i32
  tail call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.44, i32 noundef %20) #20
  ret void
}

; Function Attrs: optsize
declare void @RNA_main_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_pointer_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ui_id_icon_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sort_search_items_list(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.CollItemSearch, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.CollItemSearch, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = tail call i32 @BLI_strcasecmp(ptr noundef %4, ptr noundef %6) #20
  %8 = icmp sgt i32 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: optsize
declare zeroext i8 @uiSearchItemAdd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconTextMenuBut(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconMenuBut(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefMenuBut(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetMenuFromPulldown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: optsize
declare void @CTX_store_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetDirection(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_item_estimate(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !187
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %11, %9 ], [ %7, %5 ]
  tail call fastcc void @ui_item_estimate(ptr noundef nonnull %10) #21
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %9, !llvm.loop !206

13:                                               ; preds = %9, %5
  %14 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %6) #21, !range !207
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8
  %18 = load float, ptr %17, align 8, !tbaa !171
  %19 = fcmp une float %18, 0.000000e+00
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 8, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !171
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  tail call fastcc void @ui_item_scale(ptr noundef nonnull %0, ptr noundef nonnull %17) #21
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, ptr %2, align 8, !tbaa !52
  switch i32 %26, label %34 [
    i32 2, label %27
    i32 3, label %28
    i32 1, label %29
    i32 5, label %30
    i32 8, label %33
    i32 6, label %31
    i32 7, label %32
  ]

27:                                               ; preds = %25
  tail call fastcc void @ui_litem_estimate_column(ptr noundef nonnull %0) #21
  br label %34

28:                                               ; preds = %25
  tail call fastcc void @ui_litem_estimate_column_flow(ptr noundef nonnull %0) #21
  br label %34

29:                                               ; preds = %25
  tail call fastcc void @ui_litem_estimate_row(ptr noundef nonnull %0) #21
  br label %34

30:                                               ; preds = %25
  tail call fastcc void @ui_litem_estimate_box(ptr noundef nonnull %0) #21
  br label %34

31:                                               ; preds = %25
  tail call fastcc void @ui_litem_estimate_absolute(ptr noundef nonnull %0) #21
  br label %34

32:                                               ; preds = %25
  tail call fastcc void @ui_litem_estimate_split(ptr noundef nonnull %0) #21
  br label %34

33:                                               ; preds = %25
  tail call fastcc void @ui_litem_estimate_overlap(ptr noundef nonnull %0) #21
  br label %34

34:                                               ; preds = %25, %33, %32, %31, %30, %29, %28, %27, %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_item_layout(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !187
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %7 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %6) #21, !range !207
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 10
  %11 = load i8, ptr %10, align 2, !tbaa !53
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.uiLayoutRoot, ptr %15, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct.uiBlock, ptr %17, i64 0, i32 28
  %19 = load i16, ptr %18, align 4, !tbaa !208
  %20 = add i16 %19, 1
  store i16 %20, ptr %18, align 4, !tbaa !208
  tail call fastcc void @ui_item_align(ptr noundef nonnull %0, i16 noundef signext %20) #21
  br label %21

21:                                               ; preds = %13, %9
  %22 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 11
  %23 = load i8, ptr %22, align 1, !tbaa !64
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call fastcc void @ui_item_flag(ptr noundef nonnull %0, i32 noundef 131072) #21
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 12
  %28 = load i8, ptr %27, align 4, !tbaa !65
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call fastcc void @ui_item_flag(ptr noundef nonnull %0, i32 noundef 2048) #21
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, ptr %2, align 8, !tbaa !52
  switch i32 %32, label %42 [
    i32 2, label %33
    i32 3, label %34
    i32 1, label %35
    i32 5, label %36
    i32 10, label %37
    i32 6, label %38
    i32 7, label %39
    i32 8, label %40
    i32 9, label %41
  ]

33:                                               ; preds = %31
  tail call fastcc void @ui_litem_layout_column(ptr noundef nonnull %0) #21
  br label %42

34:                                               ; preds = %31
  tail call fastcc void @ui_litem_layout_column_flow(ptr noundef nonnull %0) #21
  br label %42

35:                                               ; preds = %31
  tail call fastcc void @ui_litem_layout_row(ptr noundef nonnull %0) #21
  br label %42

36:                                               ; preds = %31
  tail call fastcc void @ui_litem_layout_box(ptr noundef nonnull %0) #21
  br label %42

37:                                               ; preds = %31
  tail call fastcc void @ui_litem_layout_root(ptr noundef nonnull %0) #21
  br label %42

38:                                               ; preds = %31
  tail call fastcc void @ui_litem_layout_absolute(ptr noundef nonnull %0) #21
  br label %42

39:                                               ; preds = %31
  tail call fastcc void @ui_litem_layout_split(ptr noundef nonnull %0) #21
  br label %42

40:                                               ; preds = %31
  tail call fastcc void @ui_litem_layout_overlap(ptr noundef nonnull %0) #21
  br label %42

41:                                               ; preds = %31
  tail call fastcc void @ui_litem_layout_radial(ptr noundef nonnull %0) #21
  br label %42

42:                                               ; preds = %31, %41, %40, %39, %38, %37, %36, %35, %34, %33
  %43 = load ptr, ptr %6, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42, %45
  %46 = phi ptr [ %47, %45 ], [ %43, %42 ]
  tail call fastcc void @ui_item_layout(ptr noundef nonnull %46) #21
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %45, !llvm.loop !209

49:                                               ; preds = %45, %42, %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !210
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_item_scale(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds float, ptr %1, i64 1
  br label %12

12:                                               ; preds = %10, %37
  %13 = phi ptr [ %8, %10 ], [ %43, %37 ]
  call fastcc void @ui_item_size(ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  call fastcc void @ui_item_offset(ptr noundef nonnull %13, ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %14 = load float, ptr %1, align 4, !tbaa !171
  %15 = fcmp une float %14, 0.000000e+00
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, ptr %3, align 4, !tbaa !87
  %18 = sitofp i32 %17 to float
  %19 = fmul float %14, %18
  %20 = fptosi float %19 to i32
  store i32 %20, ptr %3, align 4, !tbaa !87
  %21 = load i32, ptr %5, align 4, !tbaa !87
  %22 = sitofp i32 %21 to float
  %23 = fmul float %14, %22
  %24 = fptosi float %23 to i32
  store i32 %24, ptr %5, align 4, !tbaa !87
  br label %25

25:                                               ; preds = %16, %12
  %26 = load float, ptr %11, align 4, !tbaa !171
  %27 = fcmp une float %26, 0.000000e+00
  %28 = load i32, ptr %4, align 4, !tbaa !87
  %29 = load i32, ptr %6, align 4, !tbaa !87
  br i1 %27, label %30, label %37

30:                                               ; preds = %25
  %31 = sitofp i32 %28 to float
  %32 = fmul float %26, %31
  %33 = fptosi float %32 to i32
  store i32 %33, ptr %4, align 4, !tbaa !87
  %34 = sitofp i32 %29 to float
  %35 = fmul float %26, %34
  %36 = fptosi float %35 to i32
  store i32 %36, ptr %6, align 4, !tbaa !87
  br label %37

37:                                               ; preds = %30, %25
  %38 = phi i32 [ %36, %30 ], [ %29, %25 ]
  %39 = phi i32 [ %33, %30 ], [ %28, %25 ]
  %40 = load i32, ptr %3, align 4, !tbaa !87
  %41 = load i32, ptr %5, align 4, !tbaa !87
  call fastcc void @ui_item_position(ptr noundef nonnull %13, i32 noundef %40, i32 noundef %39, i32 noundef %41, i32 noundef %38) #21
  %42 = getelementptr inbounds %struct.uiItem, ptr %13, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %12, !llvm.loop !211

45:                                               ; preds = %37, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_litem_estimate_column(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 0, ptr %5, align 4, !tbaa !176
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  call fastcc void @ui_item_size(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %11 = load i32, ptr %2, align 4, !tbaa !87
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 0)
  store i32 %12, ptr %4, align 8, !tbaa !67
  %13 = load i32, ptr %3, align 4, !tbaa !87
  store i32 %13, ptr %5, align 4, !tbaa !176
  %14 = load ptr, ptr %7, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %9
  %17 = load i16, ptr %10, align 8, !tbaa !84
  %18 = sext i16 %17 to i32
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %28, %19 ], [ %14, %16 ]
  %21 = phi i32 [ %27, %19 ], [ %13, %16 ]
  %22 = phi i32 [ %25, %19 ], [ %12, %16 ]
  %23 = add nsw i32 %21, %18
  store i32 %23, ptr %5, align 4, !tbaa !176
  call fastcc void @ui_item_size(ptr noundef nonnull %20, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %24 = load i32, ptr %2, align 4, !tbaa !87
  %25 = call i32 @llvm.smax.i32(i32 %22, i32 %24)
  store i32 %25, ptr %4, align 8, !tbaa !67
  %26 = load i32, ptr %3, align 4, !tbaa !87
  %27 = add nsw i32 %23, %26
  store i32 %27, ptr %5, align 4, !tbaa !176
  %28 = load ptr, ptr %20, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %19, !llvm.loop !212

30:                                               ; preds = %19, %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_litem_estimate_column_flow(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %8 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %21, %11 ], [ %9, %1 ]
  %13 = phi i32 [ %20, %11 ], [ 0, %1 ]
  %14 = phi i32 [ %19, %11 ], [ 0, %1 ]
  %15 = phi i32 [ %17, %11 ], [ 0, %1 ]
  call fastcc void @ui_item_size(ptr noundef nonnull %12, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %16 = load i32, ptr %2, align 4
  %17 = call i32 @llvm.smax.i32(i32 %15, i32 %16)
  %18 = load i32, ptr %3, align 4, !tbaa !87
  %19 = add nsw i32 %18, %14
  %20 = add nuw nsw i32 %13, 1
  %21 = load ptr, ptr %12, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %11, !llvm.loop !213

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !153
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %31, label %42

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !153
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %33, label %42

31:                                               ; preds = %23
  %32 = icmp eq i32 %17, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %31
  %34 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 2
  store i32 1, ptr %34, align 4, !tbaa !214
  br label %97

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.uiLayoutRoot, ptr %5, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !178
  %38 = sdiv i32 %37, %17
  %39 = call fastcc i32 @max_ii(i32 noundef %38, i32 noundef 1) #21
  %40 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 2
  %41 = call fastcc i32 @min_ii(i32 noundef %39, i32 noundef %20) #21
  store i32 %41, ptr %40, align 4, !tbaa !214
  br label %46

42:                                               ; preds = %27, %23
  %43 = phi i32 [ %29, %27 ], [ %25, %23 ]
  %44 = phi i32 [ 0, %27 ], [ %19, %23 ]
  %45 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 2
  store i32 %43, ptr %45, align 4, !tbaa !214
  br label %46

46:                                               ; preds = %42, %35
  %47 = phi i32 [ %44, %42 ], [ %19, %35 ]
  %48 = phi i32 [ %43, %42 ], [ %41, %35 ]
  br i1 %10, label %89, label %49

49:                                               ; preds = %46
  %50 = sdiv i32 %47, %48
  %51 = getelementptr inbounds %struct.uiStyle, ptr %7, i64 0, i32 14
  %52 = add nsw i32 %48, -1
  %53 = sub nsw i32 0, %50
  %54 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  %55 = load i16, ptr %51, align 8, !tbaa !83
  %56 = sext i16 %55 to i32
  br label %57

57:                                               ; preds = %49, %81
  %58 = phi ptr [ %9, %49 ], [ %87, %81 ]
  %59 = phi i32 [ 0, %49 ], [ %86, %81 ]
  %60 = phi i32 [ 0, %49 ], [ %68, %81 ]
  %61 = phi i32 [ 0, %49 ], [ %85, %81 ]
  %62 = phi i32 [ 0, %49 ], [ %84, %81 ]
  %63 = phi i32 [ 0, %49 ], [ %83, %81 ]
  %64 = phi i32 [ 0, %49 ], [ %82, %81 ]
  call fastcc void @ui_item_size(ptr noundef nonnull %58, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %65 = load i32, ptr %3, align 4, !tbaa !87
  %66 = add i32 %65, %56
  %67 = sub i32 %62, %66
  %68 = call fastcc i32 @min_ii(i32 noundef %60, i32 noundef %67) #21
  %69 = sub nsw i32 %61, %65
  %70 = load i32, ptr %2, align 4, !tbaa !87
  %71 = call fastcc i32 @max_ii(i32 noundef %70, i32 noundef %59) #21
  %72 = icmp sge i32 %64, %52
  %73 = icmp sgt i32 %69, %53
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %57
  %76 = load i16, ptr %54, align 8, !tbaa !84
  %77 = sext i16 %76 to i32
  %78 = add i32 %71, %63
  %79 = add i32 %78, %77
  %80 = add nsw i32 %64, 1
  br label %81

81:                                               ; preds = %57, %75
  %82 = phi i32 [ %80, %75 ], [ %64, %57 ]
  %83 = phi i32 [ %79, %75 ], [ %63, %57 ]
  %84 = phi i32 [ 0, %75 ], [ %67, %57 ]
  %85 = phi i32 [ 0, %75 ], [ %69, %57 ]
  %86 = phi i32 [ 0, %75 ], [ %71, %57 ]
  %87 = load ptr, ptr %58, align 8, !tbaa !5
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %57, !llvm.loop !215

89:                                               ; preds = %81, %46
  %90 = phi i32 [ 0, %46 ], [ %83, %81 ]
  %91 = phi i32 [ 0, %46 ], [ %68, %81 ]
  %92 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 %90, ptr %92, align 8, !tbaa !67
  %93 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %94 = load i32, ptr %93, align 4, !tbaa !174
  %95 = sub nsw i32 %94, %91
  %96 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %95, ptr %96, align 4, !tbaa !176
  br label %97

97:                                               ; preds = %89, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_litem_estimate_row(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 0, ptr %5, align 4, !tbaa !176
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  call fastcc void @ui_item_size(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %11 = load i32, ptr %2, align 4, !tbaa !87
  store i32 %11, ptr %4, align 8, !tbaa !67
  %12 = load i32, ptr %3, align 4, !tbaa !87
  %13 = call i32 @llvm.smax.i32(i32 %12, i32 0)
  store i32 %13, ptr %5, align 4, !tbaa !176
  %14 = load ptr, ptr %7, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %9
  %17 = load i16, ptr %10, align 8, !tbaa !84
  %18 = sext i16 %17 to i32
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %28, %19 ], [ %14, %16 ]
  %21 = phi i32 [ %27, %19 ], [ %13, %16 ]
  %22 = phi i32 [ %25, %19 ], [ %11, %16 ]
  %23 = add nsw i32 %22, %18
  store i32 %23, ptr %4, align 8, !tbaa !67
  call fastcc void @ui_item_size(ptr noundef nonnull %20, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %24 = load i32, ptr %2, align 4, !tbaa !87
  %25 = add nsw i32 %23, %24
  store i32 %25, ptr %4, align 8, !tbaa !67
  %26 = load i32, ptr %3, align 4, !tbaa !87
  %27 = call i32 @llvm.smax.i32(i32 %26, i32 %21)
  store i32 %27, ptr %5, align 4, !tbaa !176
  %28 = load ptr, ptr %20, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %19, !llvm.loop !216

30:                                               ; preds = %19, %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_litem_estimate_box(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  tail call fastcc void @ui_litem_estimate_column(ptr noundef %0) #21
  %6 = getelementptr inbounds %struct.uiStyle, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 4, !tbaa !217
  %8 = sext i16 %7 to i32
  %9 = shl nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = add nsw i32 %9, %11
  store i32 %12, ptr %10, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !176
  %15 = add nsw i32 %14, %8
  store i32 %15, ptr %13, align 4, !tbaa !176
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_litem_estimate_absolute(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 0, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 0, ptr %7, align 4, !tbaa !176
  %8 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %1, %11
  %12 = phi i32 [ %26, %11 ], [ 0, %1 ]
  %13 = phi i32 [ %23, %11 ], [ 0, %1 ]
  %14 = phi ptr [ %27, %11 ], [ %9, %1 ]
  %15 = phi i32 [ %20, %11 ], [ 1000000, %1 ]
  %16 = phi i32 [ %18, %11 ], [ 1000000, %1 ]
  call fastcc void @ui_item_offset(ptr noundef nonnull %14, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  call fastcc void @ui_item_size(ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %17 = load i32, ptr %2, align 4, !tbaa !87
  %18 = call fastcc i32 @min_ii(i32 noundef %16, i32 noundef %17) #21
  %19 = load i32, ptr %3, align 4, !tbaa !87
  %20 = call fastcc i32 @min_ii(i32 noundef %15, i32 noundef %19) #21
  %21 = load i32, ptr %4, align 4, !tbaa !87
  %22 = add nsw i32 %21, %17
  %23 = call i32 @llvm.smax.i32(i32 %13, i32 %22)
  store i32 %23, ptr %6, align 8, !tbaa !67
  %24 = load i32, ptr %5, align 4, !tbaa !87
  %25 = add nsw i32 %24, %19
  %26 = call i32 @llvm.smax.i32(i32 %12, i32 %25)
  store i32 %26, ptr %7, align 4, !tbaa !176
  %27 = load ptr, ptr %14, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %11, !llvm.loop !218

29:                                               ; preds = %11
  %30 = sub nsw i32 %23, %18
  %31 = sub nsw i32 %26, %20
  br label %32

32:                                               ; preds = %29, %1
  %33 = phi i32 [ -1000000, %1 ], [ %30, %29 ]
  %34 = phi i32 [ -1000000, %1 ], [ %31, %29 ]
  store i32 %33, ptr %6, align 8, !tbaa !67
  store i32 %34, ptr %7, align 4, !tbaa !176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_litem_estimate_split(ptr nocapture noundef %0) unnamed_addr #15 {
  tail call fastcc void @ui_litem_estimate_row(ptr noundef %0) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_litem_estimate_overlap(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 0, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 0, ptr %5, align 4, !tbaa !176
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1, %9
  %10 = phi i32 [ %16, %9 ], [ 0, %1 ]
  %11 = phi i32 [ %14, %9 ], [ 0, %1 ]
  %12 = phi ptr [ %17, %9 ], [ %7, %1 ]
  call fastcc void @ui_item_size(ptr noundef nonnull %12, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %13 = load i32, ptr %2, align 4, !tbaa !87
  %14 = call i32 @llvm.smax.i32(i32 %13, i32 %11)
  store i32 %14, ptr %4, align 8, !tbaa !67
  %15 = load i32, ptr %3, align 4, !tbaa !87
  %16 = call i32 @llvm.smax.i32(i32 %15, i32 %10)
  store i32 %16, ptr %5, align 4, !tbaa !176
  %17 = load ptr, ptr %12, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !219

19:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_item_size(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !187
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq ptr %1, null
  br i1 %6, label %8, label %23

8:                                                ; preds = %3
  br i1 %7, label %15, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.uiButtonItem, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !166
  %12 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 18
  %13 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %12) #21
  %14 = fptosi float %13 to i32
  store i32 %14, ptr %1, align 4, !tbaa !87
  br label %15

15:                                               ; preds = %9, %8
  %16 = icmp eq ptr %2, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.uiButtonItem, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !166
  %20 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 18
  %21 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %20) #21
  %22 = fptosi float %21 to i32
  br label %32

23:                                               ; preds = %3
  br i1 %7, label %27, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !67
  store i32 %26, ptr %1, align 4, !tbaa !87
  br label %27

27:                                               ; preds = %24, %23
  %28 = icmp eq ptr %2, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !176
  br label %32

32:                                               ; preds = %17, %29
  %33 = phi i32 [ %31, %29 ], [ %22, %17 ]
  store i32 %33, ptr %2, align 4, !tbaa !87
  br label %34

34:                                               ; preds = %32, %27, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_item_offset(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !187
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq ptr %1, null
  br i1 %6, label %8, label %23

8:                                                ; preds = %3
  br i1 %7, label %15, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.uiButtonItem, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !166
  %12 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 18
  %13 = load float, ptr %12, align 8, !tbaa !220
  %14 = fptosi float %13 to i32
  store i32 %14, ptr %1, align 4, !tbaa !87
  br label %15

15:                                               ; preds = %9, %8
  %16 = icmp eq ptr %2, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.uiButtonItem, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !166
  %20 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 18, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !221
  %22 = fptosi float %21 to i32
  br label %27

23:                                               ; preds = %3
  br i1 %7, label %25, label %24

24:                                               ; preds = %23
  store i32 0, ptr %1, align 4, !tbaa !87
  br label %25

25:                                               ; preds = %24, %23
  %26 = icmp eq ptr %2, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %25, %17
  %28 = phi i32 [ %22, %17 ], [ 0, %25 ]
  store i32 %28, ptr %2, align 4, !tbaa !87
  br label %29

29:                                               ; preds = %27, %15, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_item_position(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !187
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiButtonItem, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !166
  %12 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 18
  %13 = add nsw i32 %3, %1
  %14 = add nsw i32 %4, %2
  %15 = insertelement <4 x i32> poison, i32 %1, i64 0
  %16 = insertelement <4 x i32> %15, i32 %13, i64 1
  %17 = insertelement <4 x i32> %16, i32 %2, i64 2
  %18 = insertelement <4 x i32> %17, i32 %14, i64 3
  %19 = sitofp <4 x i32> %18 to <4 x float>
  store <4 x float> %19, ptr %12, align 8, !tbaa !171
  tail call void @ui_check_but(ptr noundef %11) #20
  br label %26

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  store i32 %1, ptr %21, align 8, !tbaa !173
  %22 = add nsw i32 %4, %2
  %23 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  store i32 %22, ptr %23, align 4, !tbaa !174
  %24 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 %3, ptr %24, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %4, ptr %25, align 4, !tbaa !176
  br label %26

26:                                               ; preds = %20, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !222
  %4 = load float, ptr %0, align 4, !tbaa !223
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !224
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !225
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_item_align(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %41
  %9 = phi ptr [ %4, %6 ], [ %43, %41 ]
  %10 = getelementptr inbounds %struct.uiItem, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !187
  switch i32 %11, label %36 [
    i32 0, label %12
    i32 6, label %41
    i32 8, label %41
    i32 5, label %23
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uiButtonItem, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !166
  %15 = tail call zeroext i8 @ui_but_can_align(ptr noundef %14) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 8, !tbaa !166
  %19 = getelementptr inbounds %struct.uiBut, ptr %18, i64 0, i32 10
  %20 = load i16, ptr %19, align 8, !tbaa !226
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  store i16 %1, ptr %19, align 8, !tbaa !226
  br label %41

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.uiLayoutItemBx, ptr %9, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !163
  %26 = getelementptr inbounds %struct.uiBut, ptr %25, i64 0, i32 10
  store i16 %1, ptr %26, align 8, !tbaa !226
  %27 = load ptr, ptr %7, align 8, !tbaa !24
  %28 = getelementptr inbounds %struct.uiLayoutRoot, ptr %27, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  %30 = getelementptr inbounds %struct.uiBlock, ptr %29, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %30, ptr noundef %25) #20
  %31 = load ptr, ptr %7, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.uiLayoutRoot, ptr %31, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !28
  %34 = getelementptr inbounds %struct.uiBlock, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %24, align 8, !tbaa !163
  tail call void @BLI_addhead(ptr noundef nonnull %34, ptr noundef %35) #20
  br label %41

36:                                               ; preds = %8
  %37 = getelementptr inbounds %struct.uiLayout, ptr %9, i64 0, i32 10
  %38 = load i8, ptr %37, align 2, !tbaa !53
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call fastcc void @ui_item_align(ptr noundef nonnull %9, i16 noundef signext %1) #21
  br label %41

41:                                               ; preds = %8, %8, %17, %22, %12, %36, %40, %23
  %42 = getelementptr inbounds %struct.uiItem, ptr %9, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %8, !llvm.loop !227

45:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_item_flag(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %20, %18 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.uiItem, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !187
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.uiButtonItem, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !166
  %14 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !19
  %16 = or i32 %15, %1
  store i32 %16, ptr %14, align 8, !tbaa !19
  br label %18

17:                                               ; preds = %6
  tail call fastcc void @ui_item_flag(ptr noundef nonnull %7, i32 noundef %1) #21
  br label %18

18:                                               ; preds = %11, %17
  %19 = getelementptr inbounds %struct.uiItem, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !228

22:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_litem_layout_column(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !173
  %5 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !174
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %12 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  call fastcc void @ui_item_size(ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %2) #21
  %13 = load i32, ptr %2, align 4, !tbaa !87
  %14 = sub nsw i32 %6, %13
  %15 = load i32, ptr %11, align 8, !tbaa !67
  call fastcc void @ui_item_position(ptr noundef nonnull %8, i32 noundef %4, i32 noundef %14, i32 noundef %15, i32 noundef %13) #21
  %16 = load ptr, ptr %8, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %10, %18
  %19 = phi ptr [ %27, %18 ], [ %16, %10 ]
  %20 = phi i32 [ %25, %18 ], [ %14, %10 ]
  %21 = load i16, ptr %12, align 8, !tbaa !84
  %22 = sext i16 %21 to i32
  call fastcc void @ui_item_size(ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %2) #21
  %23 = load i32, ptr %2, align 4, !tbaa !87
  %24 = add i32 %23, %22
  %25 = sub i32 %20, %24
  %26 = load i32, ptr %11, align 8, !tbaa !67
  call fastcc void @ui_item_position(ptr noundef nonnull %19, i32 noundef %4, i32 noundef %25, i32 noundef %26, i32 noundef %23) #21
  %27 = load ptr, ptr %19, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18, !llvm.loop !229

29:                                               ; preds = %18, %10
  %30 = phi i32 [ %14, %10 ], [ %25, %18 ]
  %31 = load i32, ptr %5, align 4, !tbaa !174
  br label %32

32:                                               ; preds = %29, %1
  %33 = phi i32 [ %6, %1 ], [ %31, %29 ]
  %34 = phi i32 [ %6, %1 ], [ %30, %29 ]
  %35 = sub nsw i32 %33, %34
  %36 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %35, ptr %36, align 4, !tbaa !176
  store i32 %4, ptr %3, align 8, !tbaa !173
  store i32 %34, ptr %5, align 4, !tbaa !174
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_litem_layout_column_flow(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.uiLayoutRoot, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %9 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %17, %12 ], [ %10, %1 ]
  %14 = phi i32 [ %16, %12 ], [ 0, %1 ]
  call fastcc void @ui_item_size(ptr noundef nonnull %13, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %15 = load i32, ptr %3, align 4, !tbaa !87
  %16 = add nsw i32 %15, %14
  %17 = load ptr, ptr %13, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !llvm.loop !230

19:                                               ; preds = %12, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %12 ]
  %21 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !173
  %23 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %24 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.uiLayoutItemFlow, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !214
  %28 = add nsw i32 %27, -1
  %29 = getelementptr inbounds %struct.uiStyle, ptr %8, i64 0, i32 10
  %30 = load i16, ptr %29, align 8, !tbaa !76
  %31 = sext i16 %30 to i32
  %32 = mul nsw i32 %28, %31
  %33 = sub nsw i32 %25, %32
  %34 = load i32, ptr %23, align 4, !tbaa !174
  br i1 %11, label %87, label %35

35:                                               ; preds = %19
  %36 = sdiv i32 %20, %27
  %37 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %38 = getelementptr inbounds %struct.uiStyle, ptr %8, i64 0, i32 14
  %39 = sub nsw i32 0, %36
  br label %40

40:                                               ; preds = %35, %78
  %41 = phi i32 [ %27, %35 ], [ %65, %78 ]
  %42 = phi ptr [ %10, %35 ], [ %83, %78 ]
  %43 = phi i32 [ 0, %35 ], [ %64, %78 ]
  %44 = phi i32 [ 0, %35 ], [ %82, %78 ]
  %45 = phi i32 [ 0, %35 ], [ %81, %78 ]
  %46 = phi i32 [ %34, %35 ], [ %80, %78 ]
  %47 = phi i32 [ %22, %35 ], [ %79, %78 ]
  call fastcc void @ui_item_size(ptr noundef nonnull %42, ptr noundef null, ptr noundef nonnull %3) #21
  %48 = load i32, ptr %21, align 8, !tbaa !173
  %49 = sub nsw i32 %47, %48
  %50 = add nsw i32 %41, -1
  %51 = icmp eq i32 %45, %50
  %52 = zext i1 %51 to i32
  %53 = load i8, ptr %37, align 1, !tbaa !170
  %54 = zext i8 %53 to i32
  %55 = call fastcc i32 @ui_item_fit(i32 noundef 1, i32 noundef %49, i32 noundef %41, i32 noundef %33, i32 noundef %52, i32 noundef %54, ptr noundef nonnull %4) #21
  store i32 %55, ptr %2, align 4, !tbaa !87
  %56 = load i32, ptr %3, align 4, !tbaa !87
  %57 = sub nsw i32 %46, %56
  %58 = sub nsw i32 %44, %56
  %59 = load i32, ptr %4, align 4, !tbaa !87
  %60 = add nsw i32 %59, %47
  call fastcc void @ui_item_position(ptr noundef nonnull %42, i32 noundef %60, i32 noundef %57, i32 noundef %55, i32 noundef %56) #21
  %61 = load i16, ptr %38, align 8, !tbaa !83
  %62 = sext i16 %61 to i32
  %63 = sub nsw i32 %57, %62
  %64 = call fastcc i32 @min_ii(i32 noundef %43, i32 noundef %63) #21
  %65 = load i32, ptr %26, align 4, !tbaa !214
  %66 = add nsw i32 %65, -1
  %67 = icmp sge i32 %45, %66
  %68 = icmp sgt i32 %58, %39
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %40
  %71 = load i32, ptr %2, align 4, !tbaa !87
  %72 = load i16, ptr %29, align 8, !tbaa !76
  %73 = sext i16 %72 to i32
  %74 = add i32 %71, %47
  %75 = add i32 %74, %73
  %76 = load i32, ptr %23, align 4, !tbaa !174
  %77 = add nsw i32 %45, 1
  br label %78

78:                                               ; preds = %40, %70
  %79 = phi i32 [ %75, %70 ], [ %47, %40 ]
  %80 = phi i32 [ %76, %70 ], [ %63, %40 ]
  %81 = phi i32 [ %77, %70 ], [ %45, %40 ]
  %82 = phi i32 [ 0, %70 ], [ %58, %40 ]
  %83 = load ptr, ptr %42, align 8, !tbaa !5
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %40, !llvm.loop !231

85:                                               ; preds = %78
  %86 = load i32, ptr %23, align 4, !tbaa !174
  br label %87

87:                                               ; preds = %85, %19
  %88 = phi i32 [ %34, %19 ], [ %86, %85 ]
  %89 = phi i32 [ %22, %19 ], [ %79, %85 ]
  %90 = phi i32 [ 0, %19 ], [ %64, %85 ]
  %91 = sub nsw i32 %88, %90
  %92 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %91, ptr %92, align 4, !tbaa !176
  store i32 %89, ptr %21, align 8, !tbaa !173
  store i32 %90, ptr %23, align 4, !tbaa !174
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_litem_layout_row(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !174
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %159, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %18, %11 ], [ %9, %1 ]
  %13 = phi i32 [ %16, %11 ], [ 0, %1 ]
  %14 = phi i32 [ %17, %11 ], [ 0, %1 ]
  call fastcc void @ui_item_size(ptr noundef nonnull %12, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %15 = load i32, ptr %2, align 4, !tbaa !87
  %16 = add nsw i32 %15, %13
  %17 = add nuw nsw i32 %14, 1
  %18 = load ptr, ptr %12, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11, !llvm.loop !232

20:                                               ; preds = %11
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %159, label %22

22:                                               ; preds = %20
  %23 = icmp eq i32 %7, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  %26 = load i16, ptr %25, align 8, !tbaa !84
  %27 = sext i16 %26 to i32
  %28 = mul nsw i32 %14, %27
  %29 = sub nsw i32 %7, %28
  br label %30

30:                                               ; preds = %24, %22
  %31 = phi i32 [ %29, %24 ], [ 0, %22 ]
  %32 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 15
  %33 = icmp ne i32 %31, 0
  %34 = icmp eq i32 %31, 0
  br label %35

35:                                               ; preds = %85, %30
  %36 = phi i32 [ %16, %30 ], [ %79, %85 ]
  %37 = phi i32 [ 0, %30 ], [ %80, %85 ]
  br i1 %10, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !173
  br label %151

41:                                               ; preds = %35
  %42 = sub nsw i32 %31, %37
  %43 = icmp sgt i32 %42, 0
  br label %44

44:                                               ; preds = %41, %77
  %45 = phi ptr [ %9, %41 ], [ %83, %77 ]
  %46 = phi i32 [ 0, %41 ], [ %82, %77 ]
  %47 = phi i32 [ 0, %41 ], [ %81, %77 ]
  %48 = phi i32 [ %37, %41 ], [ %80, %77 ]
  %49 = phi i32 [ %36, %41 ], [ %79, %77 ]
  %50 = phi i32 [ 0, %41 ], [ %78, %77 ]
  %51 = getelementptr inbounds %struct.uiItem, ptr %45, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !233
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %44
  call fastcc void @ui_item_size(ptr noundef nonnull %45, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %55 = load i32, ptr %2, align 4, !tbaa !87
  %56 = call fastcc i32 @ui_litem_min_width(i32 noundef %55) #21
  br i1 %43, label %57, label %64

57:                                               ; preds = %54
  %58 = load ptr, ptr %45, align 8, !tbaa !186
  %59 = icmp eq ptr %58, null
  %60 = zext i1 %59 to i32
  %61 = load i8, ptr %32, align 1, !tbaa !170
  %62 = zext i8 %61 to i32
  %63 = call fastcc i32 @ui_item_fit(i32 noundef %55, i32 noundef %50, i32 noundef %36, i32 noundef %42, i32 noundef %60, i32 noundef %62, ptr noundef null) #21
  br label %64

64:                                               ; preds = %54, %57
  %65 = phi i32 [ %63, %57 ], [ 0, %54 ]
  %66 = add nsw i32 %65, %50
  %67 = icmp slt i32 %65, %56
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = icmp eq i32 %55, %56
  %70 = select i1 %69, i1 %33, i1 false
  br i1 %70, label %72, label %75

71:                                               ; preds = %64
  br i1 %34, label %75, label %72

72:                                               ; preds = %68, %71
  store i32 1, ptr %51, align 4, !tbaa !233
  %73 = add nsw i32 %56, %48
  %74 = sub nsw i32 %49, %55
  br label %77

75:                                               ; preds = %71, %68
  store i32 0, ptr %51, align 4, !tbaa !233
  %76 = add nsw i32 %55, %47
  br label %77

77:                                               ; preds = %72, %75, %44
  %78 = phi i32 [ %50, %44 ], [ %66, %72 ], [ %66, %75 ]
  %79 = phi i32 [ %49, %44 ], [ %74, %72 ], [ %49, %75 ]
  %80 = phi i32 [ %48, %44 ], [ %73, %72 ], [ %48, %75 ]
  %81 = phi i32 [ %47, %44 ], [ %47, %72 ], [ %76, %75 ]
  %82 = phi i32 [ %46, %44 ], [ 1, %72 ], [ %46, %75 ]
  %83 = load ptr, ptr %45, align 8, !tbaa !5
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %44, !llvm.loop !234

85:                                               ; preds = %77
  %86 = icmp eq i32 %82, 0
  br i1 %86, label %87, label %35, !llvm.loop !235

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %89 = load i32, ptr %88, align 8, !tbaa !173
  br i1 %10, label %151, label %90

90:                                               ; preds = %87
  %91 = sub nsw i32 %31, %80
  %92 = add nsw i32 %81, %80
  %93 = icmp sgt i32 %92, 0
  %94 = icmp slt i32 %92, %31
  %95 = select i1 %93, i1 %94, i1 false
  %96 = sub nsw i32 %31, %92
  %97 = sdiv i32 %96, 2
  %98 = select i1 %95, i32 %96, i32 0
  %99 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  %100 = select i1 %95, i32 %97, i32 0
  br label %101

101:                                              ; preds = %144, %90
  %102 = phi ptr [ %9, %90 ], [ %142, %144 ]
  %103 = phi i32 [ 0, %90 ], [ %132, %144 ]
  %104 = phi i32 [ 0, %90 ], [ %131, %144 ]
  %105 = phi i32 [ %89, %90 ], [ %147, %144 ]
  call fastcc void @ui_item_size(ptr noundef nonnull %102, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %106 = load i32, ptr %2, align 4, !tbaa !87
  %107 = getelementptr inbounds %struct.uiItem, ptr %102, i64 0, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !233
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %101
  %111 = call fastcc i32 @ui_litem_min_width(i32 noundef %106) #21
  %112 = call fastcc i32 @min_ii(i32 noundef %31, i32 noundef %80) #21
  %113 = load ptr, ptr %102, align 8, !tbaa !186
  %114 = icmp eq ptr %113, null
  %115 = zext i1 %114 to i32
  %116 = load i8, ptr %32, align 1, !tbaa !170
  %117 = zext i8 %116 to i32
  %118 = call fastcc i32 @ui_item_fit(i32 noundef %111, i32 noundef %104, i32 noundef %80, i32 noundef %112, i32 noundef %115, i32 noundef %117, ptr noundef null) #21
  %119 = add nsw i32 %118, %104
  br label %128

120:                                              ; preds = %101
  %121 = load ptr, ptr %102, align 8, !tbaa !186
  %122 = icmp eq ptr %121, null
  %123 = zext i1 %122 to i32
  %124 = load i8, ptr %32, align 1, !tbaa !170
  %125 = zext i8 %124 to i32
  %126 = call fastcc i32 @ui_item_fit(i32 noundef %106, i32 noundef %103, i32 noundef %81, i32 noundef %91, i32 noundef %123, i32 noundef %125, ptr noundef null) #21
  %127 = add nsw i32 %126, %103
  br label %128

128:                                              ; preds = %120, %110
  %129 = phi i8 [ %124, %120 ], [ %116, %110 ]
  %130 = phi i32 [ %126, %120 ], [ %118, %110 ]
  %131 = phi i32 [ %104, %120 ], [ %119, %110 ]
  %132 = phi i32 [ %127, %120 ], [ %103, %110 ]
  store i32 %130, ptr %2, align 4
  switch i8 %129, label %135 [
    i8 3, label %133
    i8 2, label %134
  ]

133:                                              ; preds = %128
  br label %135

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %133, %128
  %136 = phi i32 [ 0, %128 ], [ %98, %133 ], [ %100, %134 ]
  %137 = add nsw i32 %136, %105
  %138 = load i32, ptr %3, align 4, !tbaa !87
  %139 = sub nsw i32 %5, %138
  call fastcc void @ui_item_position(ptr noundef nonnull %102, i32 noundef %137, i32 noundef %139, i32 noundef %130, i32 noundef %138) #21
  %140 = load i32, ptr %2, align 4, !tbaa !87
  %141 = add nsw i32 %140, %105
  %142 = load ptr, ptr %102, align 8, !tbaa !5
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %135
  %145 = load i16, ptr %99, align 8, !tbaa !84
  %146 = sext i16 %145 to i32
  %147 = add nsw i32 %141, %146
  br label %101, !llvm.loop !236

148:                                              ; preds = %135
  %149 = load i32, ptr %88, align 8, !tbaa !173
  %150 = load i32, ptr %4, align 4, !tbaa !174
  br label %151

151:                                              ; preds = %38, %148, %87
  %152 = phi ptr [ %88, %87 ], [ %88, %148 ], [ %39, %38 ]
  %153 = phi i32 [ %5, %87 ], [ %150, %148 ], [ %5, %38 ]
  %154 = phi i32 [ %89, %87 ], [ %149, %148 ], [ %40, %38 ]
  %155 = phi i32 [ %89, %87 ], [ %141, %148 ], [ %40, %38 ]
  %156 = sub nsw i32 %155, %154
  store i32 %156, ptr %6, align 8, !tbaa !67
  %157 = sub nsw i32 %153, %5
  %158 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %157, ptr %158, align 4, !tbaa !176
  store i32 %155, ptr %152, align 8, !tbaa !173
  store i32 %5, ptr %4, align 4, !tbaa !174
  br label %159

159:                                              ; preds = %1, %20, %151
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_litem_layout_box(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !176
  %10 = getelementptr inbounds %struct.uiStyle, ptr %5, i64 0, i32 12
  %11 = load i16, ptr %10, align 4, !tbaa !217
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !173
  %15 = add nsw i32 %14, %12
  store i32 %15, ptr %13, align 8, !tbaa !173
  %16 = icmp eq i32 %7, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = shl nsw i32 %12, 1
  %19 = sub nsw i32 %7, %18
  store i32 %19, ptr %6, align 8, !tbaa !67
  br label %20

20:                                               ; preds = %17, %1
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = shl nsw i32 %12, 1
  %24 = sub nsw i32 %9, %23
  store i32 %24, ptr %8, align 4, !tbaa !176
  br label %25

25:                                               ; preds = %22, %20
  tail call fastcc void @ui_litem_layout_column(ptr noundef nonnull %0) #21
  %26 = load i16, ptr %10, align 4, !tbaa !217
  %27 = sext i16 %26 to i32
  %28 = load <2 x i32>, ptr %13, align 8, !tbaa !87
  %29 = insertelement <2 x i32> poison, i32 %27, i64 0
  %30 = shufflevector <2 x i32> %29, <2 x i32> poison, <2 x i32> zeroinitializer
  %31 = sub nsw <2 x i32> %28, %30
  store <2 x i32> %31, ptr %13, align 8, !tbaa !87
  br i1 %16, label %36, label %32

32:                                               ; preds = %25
  %33 = shl nsw i32 %27, 1
  %34 = load i32, ptr %6, align 8, !tbaa !67
  %35 = add nsw i32 %34, %33
  store i32 %35, ptr %6, align 8, !tbaa !67
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32, ptr %8, align 4, !tbaa !176
  br i1 %21, label %40, label %38

38:                                               ; preds = %36
  %39 = add nsw i32 %37, %27
  store i32 %39, ptr %8, align 4, !tbaa !176
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %39, %38 ], [ %37, %36 ]
  %42 = getelementptr inbounds %struct.uiLayoutItemBx, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !163
  %44 = getelementptr inbounds %struct.uiBut, ptr %43, i64 0, i32 18
  %45 = load i32, ptr %6, align 8, !tbaa !67
  %46 = extractelement <2 x i32> %31, i64 0
  %47 = add nsw i32 %45, %46
  %48 = extractelement <2 x i32> %31, i64 1
  %49 = add nsw i32 %41, %48
  %50 = shufflevector <2 x i32> %31, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %51 = insertelement <4 x i32> %50, i32 %47, i64 1
  %52 = insertelement <4 x i32> %51, i32 %49, i64 3
  %53 = sitofp <4 x i32> %52 to <4 x float>
  store <4 x float> %53, ptr %44, align 8, !tbaa !171
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_litem_layout_root(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.uiLayoutRoot, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !33
  switch i32 %5, label %8 [
    i32 1, label %6
    i32 4, label %7
  ]

6:                                                ; preds = %1
  tail call fastcc void @ui_litem_layout_row(ptr noundef nonnull %0) #21
  br label %9

7:                                                ; preds = %1
  tail call fastcc void @ui_litem_layout_root_radial(ptr noundef nonnull %0) #21
  br label %9

8:                                                ; preds = %1
  tail call fastcc void @ui_litem_layout_column(ptr noundef nonnull %0) #21
  br label %9

9:                                                ; preds = %7, %8, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_litem_layout_absolute(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %25, %9 ], [ %7, %1 ]
  %11 = phi i32 [ %24, %9 ], [ 0, %1 ]
  %12 = phi i32 [ %21, %9 ], [ 0, %1 ]
  %13 = phi i32 [ %18, %9 ], [ 1000000, %1 ]
  %14 = phi i32 [ %16, %9 ], [ 1000000, %1 ]
  call fastcc void @ui_item_offset(ptr noundef nonnull %10, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  call fastcc void @ui_item_size(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  %15 = load i32, ptr %2, align 4, !tbaa !87
  %16 = call fastcc i32 @min_ii(i32 noundef %14, i32 noundef %15) #21
  %17 = load i32, ptr %3, align 4, !tbaa !87
  %18 = call fastcc i32 @min_ii(i32 noundef %13, i32 noundef %17) #21
  %19 = load i32, ptr %5, align 4, !tbaa !87
  %20 = add nsw i32 %19, %15
  %21 = call fastcc i32 @max_ii(i32 noundef %12, i32 noundef %20) #21
  %22 = load i32, ptr %4, align 4, !tbaa !87
  %23 = add nsw i32 %22, %17
  %24 = call fastcc i32 @max_ii(i32 noundef %11, i32 noundef %23) #21
  %25 = load ptr, ptr %10, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9, !llvm.loop !237

27:                                               ; preds = %9
  %28 = insertelement <2 x i32> poison, i32 %16, i64 0
  %29 = insertelement <2 x i32> %28, i32 %18, i64 1
  %30 = insertelement <2 x i32> poison, i32 %21, i64 0
  %31 = insertelement <2 x i32> %30, i32 %24, i64 1
  br label %32

32:                                               ; preds = %27, %1
  %33 = phi <2 x i32> [ zeroinitializer, %1 ], [ %31, %27 ]
  %34 = phi <2 x i32> [ <i32 1000000, i32 1000000>, %1 ], [ %29, %27 ]
  %35 = sub nsw <2 x i32> %33, %34
  %36 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %37 = load <2 x i32>, ptr %36, align 8, !tbaa !87
  %38 = icmp ne <2 x i32> %37, zeroinitializer
  %39 = icmp sgt <2 x i32> %35, zeroinitializer
  %40 = select <2 x i1> %38, <2 x i1> %39, <2 x i1> zeroinitializer
  %41 = sitofp <2 x i32> %37 to <2 x float>
  %42 = sitofp <2 x i32> %35 to <2 x float>
  %43 = fdiv <2 x float> %41, %42
  %44 = select <2 x i1> %40, <2 x float> %43, <2 x float> <float 1.000000e+00, float 1.000000e+00>
  %45 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !173
  %47 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !174
  %49 = sitofp i32 %48 to float
  %50 = extractelement <2 x float> %44, i64 1
  %51 = fneg float %50
  %52 = extractelement <2 x float> %42, i64 1
  %53 = call float @llvm.fmuladd.f32(float %51, float %52, float %49)
  %54 = fptosi float %53 to i32
  br i1 %8, label %106, label %55

55:                                               ; preds = %32
  %56 = fcmp une <2 x float> %44, <float 1.000000e+00, float 1.000000e+00>
  %57 = extractelement <2 x i32> %34, i64 0
  %58 = sub i32 %46, %57
  %59 = extractelement <2 x i32> %34, i64 1
  %60 = sub i32 %54, %59
  %61 = extractelement <2 x i1> %56, i64 0
  %62 = extractelement <2 x i1> %56, i64 1
  %63 = extractelement <2 x float> %44, i64 0
  br label %64

64:                                               ; preds = %55, %95
  %65 = phi ptr [ %7, %55 ], [ %102, %95 ]
  call fastcc void @ui_item_offset(ptr noundef nonnull %65, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  call fastcc void @ui_item_size(ptr noundef nonnull %65, ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  br i1 %61, label %66, label %80

66:                                               ; preds = %64
  %67 = load i32, ptr %2, align 4, !tbaa !87
  %68 = sub nsw i32 %67, %57
  %69 = sitofp i32 %68 to float
  %70 = fmul float %63, %69
  %71 = fptosi float %70 to i32
  %72 = load i32, ptr %5, align 4, !tbaa !87
  %73 = add nsw i32 %68, %72
  %74 = sitofp i32 %73 to float
  %75 = sitofp i32 %71 to float
  %76 = fneg float %75
  %77 = call float @llvm.fmuladd.f32(float %74, float %63, float %76)
  %78 = fptosi float %77 to i32
  store i32 %78, ptr %5, align 4, !tbaa !87
  %79 = add nsw i32 %57, %71
  store i32 %79, ptr %2, align 4, !tbaa !87
  br label %80

80:                                               ; preds = %66, %64
  %81 = load i32, ptr %3, align 4, !tbaa !87
  %82 = load i32, ptr %4, align 4, !tbaa !87
  br i1 %62, label %83, label %95

83:                                               ; preds = %80
  %84 = sub nsw i32 %81, %59
  %85 = sitofp i32 %84 to float
  %86 = fmul float %50, %85
  %87 = fptosi float %86 to i32
  %88 = add nsw i32 %84, %82
  %89 = sitofp i32 %88 to float
  %90 = sitofp i32 %87 to float
  %91 = fneg float %90
  %92 = call float @llvm.fmuladd.f32(float %89, float %50, float %91)
  %93 = fptosi float %92 to i32
  store i32 %93, ptr %4, align 4, !tbaa !87
  %94 = add nsw i32 %59, %87
  store i32 %94, ptr %3, align 4, !tbaa !87
  br label %95

95:                                               ; preds = %83, %80
  %96 = phi i32 [ %93, %83 ], [ %82, %80 ]
  %97 = phi i32 [ %94, %83 ], [ %81, %80 ]
  %98 = load i32, ptr %2, align 4, !tbaa !87
  %99 = add i32 %58, %98
  %100 = add i32 %60, %97
  %101 = load i32, ptr %5, align 4, !tbaa !87
  call fastcc void @ui_item_position(ptr noundef nonnull %65, i32 noundef %99, i32 noundef %100, i32 noundef %101, i32 noundef %96) #21
  %102 = load ptr, ptr %65, align 8, !tbaa !5
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %64, !llvm.loop !238

104:                                              ; preds = %95
  %105 = load i32, ptr %47, align 4, !tbaa !174
  br label %106

106:                                              ; preds = %104, %32
  %107 = phi i32 [ %105, %104 ], [ %48, %32 ]
  %108 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  %109 = fmul <2 x float> %44, %42
  %110 = extractelement <2 x float> %109, i64 0
  %111 = fptosi float %110 to i32
  store i32 %111, ptr %36, align 8, !tbaa !67
  %112 = sub nsw i32 %107, %54
  store i32 %112, ptr %108, align 4, !tbaa !176
  %113 = add nsw i32 %46, %111
  store i32 %113, ptr %45, align 8, !tbaa !173
  store i32 %54, ptr %47, align 4, !tbaa !174
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_litem_layout_split(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %4 = tail call i32 @BLI_countlist(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %63, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !173
  %9 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !174
  %11 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %12 = add nsw i32 %4, -1
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %3, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.uiLayoutItemSplit, ptr %0, i64 0, i32 1
  %18 = load float, ptr %17, align 8, !tbaa !82
  %19 = fcmp oeq float %18, 0.000000e+00
  %20 = sitofp i32 %4 to float
  %21 = fdiv float 1.000000e+00, %20
  %22 = select i1 %19, float %21, float %18
  %23 = load i32, ptr %11, align 8, !tbaa !67
  %24 = load i16, ptr %13, align 8, !tbaa !84
  %25 = sext i16 %24 to i32
  %26 = mul nsw i32 %12, %25
  %27 = sub nsw i32 %23, %26
  %28 = sitofp i32 %27 to float
  %29 = fmul float %22, %28
  %30 = fptosi float %29 to i32
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 0)
  %32 = sub nsw i32 %27, %30
  call fastcc void @ui_item_size(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %2) #21
  %33 = load i32, ptr %2, align 4, !tbaa !87
  %34 = sub nsw i32 %10, %33
  call fastcc void @ui_item_position(ptr noundef nonnull %14, i32 noundef %8, i32 noundef %34, i32 noundef %31, i32 noundef %33) #21
  %35 = add nsw i32 %31, %8
  %36 = load ptr, ptr %14, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %16
  %39 = sdiv i32 %32, %12
  %40 = call i32 @llvm.smax.i32(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi ptr [ %50, %41 ], [ %36, %38 ]
  %43 = phi i32 [ %49, %41 ], [ %35, %38 ]
  %44 = load i16, ptr %13, align 8, !tbaa !84
  %45 = sext i16 %44 to i32
  %46 = add nsw i32 %43, %45
  call fastcc void @ui_item_size(ptr noundef nonnull %42, ptr noundef null, ptr noundef nonnull %2) #21
  %47 = load i32, ptr %2, align 4, !tbaa !87
  %48 = sub nsw i32 %10, %47
  call fastcc void @ui_item_position(ptr noundef nonnull %42, i32 noundef %46, i32 noundef %48, i32 noundef %40, i32 noundef %47) #21
  %49 = add nsw i32 %40, %46
  %50 = load ptr, ptr %42, align 8, !tbaa !5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %41, !llvm.loop !239

52:                                               ; preds = %41, %16
  %53 = phi i32 [ %35, %16 ], [ %49, %41 ]
  %54 = load i32, ptr %7, align 8, !tbaa !173
  %55 = load i32, ptr %9, align 4, !tbaa !174
  br label %56

56:                                               ; preds = %52, %6
  %57 = phi i32 [ %10, %6 ], [ %55, %52 ]
  %58 = phi i32 [ %8, %6 ], [ %54, %52 ]
  %59 = phi i32 [ %8, %6 ], [ %53, %52 ]
  %60 = sub nsw i32 %59, %58
  store i32 %60, ptr %11, align 8, !tbaa !67
  %61 = sub nsw i32 %57, %10
  %62 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %61, ptr %62, align 4, !tbaa !176
  store i32 %59, ptr %7, align 8, !tbaa !173
  store i32 %10, ptr %9, align 4, !tbaa !174
  br label %63

63:                                               ; preds = %1, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_litem_layout_overlap(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !173
  %6 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !174
  %8 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !176
  br label %27

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %9, %14 ], [ %25, %17 ]
  call fastcc void @ui_item_size(ptr noundef nonnull %18, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %19 = load i32, ptr %3, align 4, !tbaa !87
  %20 = sub nsw i32 %7, %19
  %21 = load i32, ptr %15, align 8, !tbaa !67
  call fastcc void @ui_item_position(ptr noundef nonnull %18, i32 noundef %5, i32 noundef %20, i32 noundef %21, i32 noundef %19) #21
  %22 = load i32, ptr %16, align 4, !tbaa !176
  %23 = load i32, ptr %3, align 4, !tbaa !87
  %24 = call i32 @llvm.smax.i32(i32 %22, i32 %23)
  store i32 %24, ptr %16, align 4, !tbaa !176
  %25 = load ptr, ptr %18, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %17, !llvm.loop !240

27:                                               ; preds = %17, %11
  %28 = phi i32 [ %13, %11 ], [ %24, %17 ]
  store i32 %5, ptr %4, align 8, !tbaa !173
  %29 = sub nsw i32 %7, %28
  store i32 %29, ptr %6, align 4, !tbaa !174
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_litem_layout_radial(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 112), align 4, !tbaa !241
  %6 = sitofp i16 %5 to float
  %7 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !242
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !243
  %9 = sitofp i32 %8 to float
  %10 = fmul float %7, %9
  %11 = fdiv float %10, 7.200000e+01
  %12 = fmul float %11, %6
  %13 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !173
  %15 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !174
  %17 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %18, %1
  %19 = phi i32 [ 0, %1 ], [ %23, %18 ]
  %20 = phi ptr [ %17, %1 ], [ %21, %18 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  %23 = add nuw nsw i32 %19, 1
  br i1 %22, label %24, label %18, !llvm.loop !244

24:                                               ; preds = %18
  %25 = fptosi float %12 to i32
  %26 = icmp ult i32 %19, 5
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct.uiLayoutRoot, ptr %29, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = getelementptr inbounds %struct.uiBlock, ptr %31, i64 0, i32 53, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !245
  %34 = or i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !245
  br label %35

35:                                               ; preds = %27, %24
  %36 = load ptr, ptr %17, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %126, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %40 = sitofp i32 %14 to float
  %41 = sitofp i32 %25 to float
  %42 = sitofp i32 %16 to float
  br label %43

43:                                               ; preds = %38, %118
  %44 = phi ptr [ %36, %38 ], [ %124, %118 ]
  %45 = phi i16 [ 0, %38 ], [ %123, %118 ]
  %46 = phi i32 [ %14, %38 ], [ %122, %118 ]
  %47 = phi i32 [ %16, %38 ], [ %121, %118 ]
  %48 = phi i32 [ %16, %38 ], [ %120, %118 ]
  %49 = phi i32 [ %14, %38 ], [ %119, %118 ]
  %50 = call fastcc zeroext i8 @ui_item_is_radial_displayable(ptr noundef nonnull %44) #21, !range !207
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %118, label %52

52:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %53 = call fastcc i32 @ui_get_radialbut_vec(ptr noundef nonnull %4, i16 noundef signext %45) #21, !range !135
  %54 = load float, ptr %4, align 4, !tbaa !171
  %55 = fcmp ogt float %54, 0x3F847AE140000000
  %56 = fcmp olt float %54, 0xBF847AE140000000
  %57 = select i1 %56, float -1.000000e+00, float -5.000000e-01
  %58 = select i1 %55, float 0.000000e+00, float %57
  %59 = load float, ptr %39, align 4, !tbaa !171
  %60 = fcmp ogt float %59, 0x3FEFAE1480000000
  %61 = fcmp olt float %59, 0xBFEFAE1480000000
  %62 = select i1 %61, float -1.000000e+00, float -5.000000e-01
  %63 = select i1 %60, float 0.000000e+00, float %62
  %64 = add i16 %45, 1
  %65 = getelementptr inbounds %struct.uiItem, ptr %44, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !187
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %52
  %69 = trunc i32 %53 to i8
  %70 = getelementptr inbounds %struct.uiButtonItem, ptr %44, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !166
  %72 = getelementptr inbounds %struct.uiBut, ptr %71, i64 0, i32 47
  store i8 %69, ptr %72, align 2, !tbaa !246
  %73 = getelementptr inbounds %struct.uiBut, ptr %71, i64 0, i32 18, i32 3
  %74 = load float, ptr %73, align 4, !tbaa !247
  %75 = fmul float %74, 1.500000e+00
  store float %75, ptr %73, align 4, !tbaa !247
  %76 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !35
  %77 = sitofp i16 %76 to float
  %78 = getelementptr inbounds %struct.uiBut, ptr %71, i64 0, i32 18, i32 1
  %79 = load float, ptr %78, align 4, !tbaa !248
  %80 = call float @llvm.fmuladd.f32(float %77, float 1.500000e+00, float %79)
  store float %80, ptr %78, align 4, !tbaa !248
  %81 = call fastcc zeroext i8 @ui_item_is_radial_drawable(ptr noundef nonnull %44) #21, !range !207
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.uiBut, ptr %71, i64 0, i32 46
  store i8 4, ptr %84, align 1, !tbaa !89
  br label %85

85:                                               ; preds = %68, %83, %52
  call fastcc void @ui_item_size(ptr noundef nonnull %44, ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %86 = call float @llvm.fmuladd.f32(float %54, float %41, float %40)
  %87 = load i32, ptr %3, align 4, !tbaa !87
  %88 = sitofp i32 %87 to float
  %89 = call float @llvm.fmuladd.f32(float %58, float %88, float %86)
  %90 = fptosi float %89 to i32
  %91 = call float @llvm.fmuladd.f32(float %59, float %41, float %42)
  %92 = load i32, ptr %2, align 4, !tbaa !87
  %93 = sitofp i32 %92 to float
  %94 = call float @llvm.fmuladd.f32(float %63, float %93, float %91)
  %95 = fptosi float %94 to i32
  call fastcc void @ui_item_position(ptr noundef nonnull %44, i32 noundef %90, i32 noundef %95, i32 noundef %87, i32 noundef %92) #21
  %96 = load float, ptr %4, align 4, !tbaa !171
  %97 = call float @llvm.fmuladd.f32(float %96, float %41, float %40)
  %98 = load i32, ptr %3, align 4, !tbaa !87
  %99 = sdiv i32 %98, 2
  %100 = sitofp i32 %99 to float
  %101 = fsub float %97, %100
  %102 = fptosi float %101 to i32
  %103 = call fastcc i32 @min_ii(i32 noundef %46, i32 noundef %102) #21
  %104 = fadd float %97, %100
  %105 = fptosi float %104 to i32
  %106 = call fastcc i32 @max_ii(i32 noundef %49, i32 noundef %105) #21
  %107 = load float, ptr %39, align 4, !tbaa !171
  %108 = call float @llvm.fmuladd.f32(float %107, float %41, float %42)
  %109 = load i32, ptr %2, align 4, !tbaa !87
  %110 = sdiv i32 %109, 2
  %111 = sitofp i32 %110 to float
  %112 = fsub float %108, %111
  %113 = fptosi float %112 to i32
  %114 = call fastcc i32 @min_ii(i32 noundef %47, i32 noundef %113) #21
  %115 = fadd float %108, %111
  %116 = fptosi float %115 to i32
  %117 = call fastcc i32 @max_ii(i32 noundef %48, i32 noundef %116) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %118

118:                                              ; preds = %43, %85
  %119 = phi i32 [ %106, %85 ], [ %49, %43 ]
  %120 = phi i32 [ %117, %85 ], [ %48, %43 ]
  %121 = phi i32 [ %114, %85 ], [ %47, %43 ]
  %122 = phi i32 [ %103, %85 ], [ %46, %43 ]
  %123 = phi i16 [ %64, %85 ], [ %45, %43 ]
  %124 = load ptr, ptr %44, align 8, !tbaa !5
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %43, !llvm.loop !249

126:                                              ; preds = %118, %35
  %127 = phi i32 [ %14, %35 ], [ %119, %118 ]
  %128 = phi i32 [ %16, %35 ], [ %120, %118 ]
  %129 = phi i32 [ %16, %35 ], [ %121, %118 ]
  %130 = phi i32 [ %14, %35 ], [ %122, %118 ]
  store i32 %130, ptr %13, align 8, !tbaa !173
  store i32 %129, ptr %15, align 4, !tbaa !174
  %131 = sub nsw i32 %127, %130
  %132 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 6
  store i32 %131, ptr %132, align 8, !tbaa !67
  %133 = sub nsw i32 %128, %129
  %134 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 7
  store i32 %133, ptr %134, align 4, !tbaa !176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ui_but_can_align(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc i32 @ui_item_fit(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef writeonly %6) unnamed_addr #5 {
  %8 = icmp eq ptr %6, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store i32 0, ptr %6, align 4, !tbaa !87
  br label %10

10:                                               ; preds = %9, %7
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %10
  %13 = icmp sgt i32 %2, %3
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = sub nsw i32 %3, %1
  br label %30

18:                                               ; preds = %14
  %19 = mul nsw i32 %3, %0
  %20 = sdiv i32 %19, %2
  br label %30

21:                                               ; preds = %12
  %22 = icmp eq i32 %5, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = sub nsw i32 %3, %1
  br label %30

27:                                               ; preds = %23
  %28 = mul nsw i32 %3, %0
  %29 = sdiv i32 %28, %2
  br label %30

30:                                               ; preds = %21, %10, %27, %25, %18, %16
  %31 = phi i32 [ %17, %16 ], [ %20, %18 ], [ %26, %25 ], [ %29, %27 ], [ %0, %10 ], [ %0, %21 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @ui_litem_min_width(i32 noundef %0) unnamed_addr #17 {
  %2 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %3 = sext i16 %2 to i32
  %4 = shl nsw i32 %3, 1
  %5 = tail call i32 @llvm.smin.i32(i32 %4, i32 %0)
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_litem_layout_root_radial(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = getelementptr inbounds %struct.uiItem, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !187
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %10 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !173
  %12 = getelementptr inbounds %struct.uiLayout, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !174
  call fastcc void @ui_item_size(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %14 = load i32, ptr %3, align 4, !tbaa !87
  %15 = sdiv i32 %14, -2
  %16 = add i32 %15, %11
  %17 = sitofp i32 %13 to float
  %18 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !242
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 113), align 2, !tbaa !250
  %20 = sitofp i16 %19 to float
  %21 = fadd float %20, 9.000000e+00
  %22 = call float @llvm.fmuladd.f32(float %18, float %21, float %17)
  %23 = fptosi float %22 to i32
  %24 = load i32, ptr %2, align 4, !tbaa !87
  call fastcc void @ui_item_position(ptr noundef nonnull %5, i32 noundef %16, i32 noundef %23, i32 noundef %14, i32 noundef %24) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  br label %25

25:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ui_item_is_radial_displayable(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiItem, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !187
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiButtonItem, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !166
  %8 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !88
  %10 = icmp eq i32 %9, 5120
  br i1 %10, label %12, label %11

11:                                               ; preds = %5, %1
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi i8 [ 1, %11 ], [ 0, %5 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_get_radialbut_vec(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = sext i16 %1 to i64
  %4 = getelementptr inbounds [8 x i8], ptr @ui_radial_dir_order, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  tail call void @ui_but_pie_dir(i32 noundef %6, ptr noundef %0) #20
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ui_item_is_radial_drawable(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiButtonItem, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !88
  %6 = icmp ne i32 %5, 10752
  %7 = icmp ne i32 %5, 27648
  %8 = and i1 %6, %7
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: optsize
declare void @ui_but_pie_dir(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_intro_items(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.49) #20
  %3 = load ptr, ptr %1, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %27
  %8 = phi ptr [ %3, %5 ], [ %28, %27 ]
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.50) #20
  %9 = getelementptr inbounds %struct.uiItem, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !187
  %11 = icmp ult i32 %10, 11
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = zext nneg i32 %10 to i64
  %14 = shl i64 %13, 2
  %15 = call ptr @llvm.load.relative.i64(ptr @reltable.ui_intro_items, i64 %14)
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi ptr [ %15, %12 ], [ @.str.61, %7 ]
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull %17) #20
  %18 = load i32, ptr %9, align 8, !tbaa !187
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call fastcc void @ui_intro_button(ptr noundef %0, ptr noundef nonnull %8) #21
  br label %23

21:                                               ; preds = %16
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.62) #20
  %22 = getelementptr inbounds %struct.uiLayout, ptr %8, i64 0, i32 3
  tail call fastcc void @ui_intro_items(ptr noundef %0, ptr noundef nonnull %22) #21
  br label %23

23:                                               ; preds = %21, %20
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.63) #20
  %24 = load ptr, ptr %6, align 8, !tbaa !251
  %25 = icmp eq ptr %8, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.64) #20
  br label %27

27:                                               ; preds = %23, %26
  %28 = load ptr, ptr %8, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %7, !llvm.loop !252

30:                                               ; preds = %27, %2
  tail call void @BLI_dynstr_append(ptr noundef %0, ptr noundef nonnull @.str.65) #20
  ret void
}

; Function Attrs: optsize
declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_intro_button(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiButtonItem, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !166
  %5 = getelementptr inbounds %struct.uiBut, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !88
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.66, i32 noundef %6) #20
  %7 = getelementptr inbounds %struct.uiBut, ptr %4, i64 0, i32 17
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef nonnull %7) #20
  %8 = getelementptr inbounds %struct.uiBut, ptr %4, i64 0, i32 42
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @.str, ptr %9
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull %11) #20
  %12 = getelementptr inbounds %struct.uiBut, ptr %4, i64 0, i32 59
  %13 = load ptr, ptr %12, align 8, !tbaa !253
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.uiBut, ptr %4, i64 0, i32 74
  %17 = load ptr, ptr %16, align 8, !tbaa !203
  %18 = getelementptr inbounds %struct.uiBlock, ptr %17, i64 0, i32 48
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = getelementptr inbounds %struct.uiBut, ptr %4, i64 0, i32 60
  %21 = load ptr, ptr %20, align 8, !tbaa !254
  %22 = tail call ptr @WM_operator_pystring_ex(ptr noundef %19, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %13, ptr noundef %21) #20
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @.str, ptr %22
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef nonnull %24) #20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %25(ptr noundef %22) #20
  br label %26

26:                                               ; preds = %15, %2
  %27 = getelementptr inbounds %struct.uiBut, ptr %4, i64 0, i32 55
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.uiBut, ptr %4, i64 0, i32 54, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !255
  %33 = tail call ptr @RNA_struct_identifier(ptr noundef %32) #20
  %34 = load ptr, ptr %27, align 8, !tbaa !21
  %35 = tail call ptr @RNA_property_identifier(ptr noundef %34) #20
  %36 = getelementptr inbounds %struct.uiBut, ptr %4, i64 0, i32 56
  %37 = load i32, ptr %36, align 8, !tbaa !256
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef %33, ptr noundef %35, i32 noundef %37) #20
  br label %38

38:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: optsize
declare void @BLI_dynstr_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operator_pystring_ex(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !6, i64 8}
!12 = !{!"uiBut", !6, i64 0, !6, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !14, i64 32, !14, i64 34, !14, i64 36, !14, i64 38, !14, i64 40, !14, i64 42, !14, i64 44, !14, i64 46, !14, i64 48, !6, i64 56, !7, i64 64, !7, i64 192, !15, i64 592, !6, i64 608, !16, i64 616, !16, i64 620, !16, i64 624, !16, i64 628, !16, i64 632, !16, i64 636, !7, i64 640, !6, i64 648, !6, i64 656, !6, i64 664, !6, i64 672, !6, i64 680, !6, i64 688, !6, i64 696, !6, i64 704, !6, i64 712, !6, i64 720, !6, i64 728, !6, i64 736, !6, i64 744, !6, i64 752, !7, i64 760, !6, i64 768, !6, i64 776, !13, i64 784, !7, i64 788, !7, i64 789, !7, i64 790, !7, i64 791, !7, i64 792, !14, i64 794, !14, i64 796, !6, i64 800, !6, i64 808, !17, i64 816, !6, i64 840, !13, i64 848, !17, i64 856, !6, i64 880, !6, i64 888, !6, i64 896, !14, i64 904, !7, i64 906, !7, i64 907, !6, i64 912, !6, i64 920, !16, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992}
!13 = !{!"int", !7, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!"rctf", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!16 = !{!"float", !7, i64 0}
!17 = !{!"PointerRNA", !18, i64 0, !6, i64 8, !6, i64 16}
!18 = !{!"", !6, i64 0}
!19 = !{!12, !13, i64 16}
!20 = !{!12, !6, i64 832}
!21 = !{!12, !6, i64 840}
!22 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5}
!23 = distinct !{!23, !10}
!24 = !{!25, !6, i64 24}
!25 = !{!"uiLayout", !26, i64 0, !6, i64 24, !6, i64 32, !27, i64 40, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !7, i64 72, !14, i64 80, !7, i64 82, !7, i64 83, !7, i64 84, !7, i64 85, !7, i64 86, !7, i64 87}
!26 = !{!"uiItem", !6, i64 0, !6, i64 8, !13, i64 16, !13, i64 20}
!27 = !{!"ListBase", !6, i64 0, !6, i64 8}
!28 = !{!29, !6, i64 64}
!29 = !{!"uiLayoutRoot", !6, i64 0, !6, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!30 = !{!31, !6, i64 88}
!31 = !{!"wmOperatorType", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !27, i64 112, !6, i64 128, !6, i64 136, !6, i64 144, !32, i64 152, !14, i64 184}
!32 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!33 = !{!29, !13, i64 16}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !14, i64 8948}
!36 = !{!"UserDef", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !13, i64 8468, !14, i64 8472, !14, i64 8474, !14, i64 8476, !14, i64 8478, !14, i64 8480, !14, i64 8482, !13, i64 8484, !13, i64 8488, !13, i64 8492, !14, i64 8496, !14, i64 8498, !13, i64 8500, !13, i64 8504, !13, i64 8508, !13, i64 8512, !13, i64 8516, !13, i64 8520, !13, i64 8524, !14, i64 8528, !14, i64 8530, !14, i64 8532, !14, i64 8534, !27, i64 8536, !27, i64 8552, !27, i64 8568, !27, i64 8584, !27, i64 8600, !27, i64 8616, !27, i64 8632, !7, i64 8648, !14, i64 8712, !14, i64 8714, !14, i64 8716, !14, i64 8718, !14, i64 8720, !14, i64 8722, !14, i64 8724, !14, i64 8726, !7, i64 8728, !14, i64 8896, !14, i64 8898, !14, i64 8900, !14, i64 8902, !14, i64 8904, !14, i64 8906, !14, i64 8908, !14, i64 8910, !13, i64 8912, !13, i64 8916, !14, i64 8920, !14, i64 8922, !14, i64 8924, !14, i64 8926, !14, i64 8928, !14, i64 8930, !14, i64 8932, !14, i64 8934, !14, i64 8936, !14, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !14, i64 8944, !14, i64 8946, !14, i64 8948, !14, i64 8950, !14, i64 8952, !14, i64 8954, !16, i64 8956, !16, i64 8960, !13, i64 8964, !14, i64 8968, !14, i64 8970, !16, i64 8972, !14, i64 8976, !14, i64 8978, !14, i64 8980, !14, i64 8982, !37, i64 8984, !7, i64 9760, !7, i64 9772, !14, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !13, i64 10896, !13, i64 10900, !16, i64 10904, !16, i64 10908, !13, i64 10912, !14, i64 10916, !14, i64 10918, !14, i64 10920, !14, i64 10922, !14, i64 10924, !14, i64 10926, !38, i64 10928}
!37 = !{!"ColorBand", !14, i64 0, !14, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!38 = !{!"WalkNavigation", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !14, i64 24, !7, i64 26}
!39 = !{!12, !13, i64 20}
!40 = !{!25, !7, i64 85}
!41 = !{!42, !6, i64 80}
!42 = !{!"uiBlock", !6, i64 0, !6, i64 8, !27, i64 16, !6, i64 32, !6, i64 40, !27, i64 48, !27, i64 64, !6, i64 80, !27, i64 88, !7, i64 104, !7, i64 232, !15, i64 296, !16, i64 312, !13, i64 316, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !13, i64 424, !14, i64 428, !7, i64 430, !7, i64 431, !7, i64 432, !7, i64 433, !43, i64 440, !6, i64 448, !7, i64 456, !7, i64 457, !7, i64 458, !7, i64 459, !13, i64 460, !13, i64 464, !13, i64 468, !13, i64 472, !13, i64 476, !15, i64 480, !27, i64 496, !6, i64 512, !6, i64 520, !6, i64 528, !6, i64 536, !7, i64 544, !7, i64 556, !7, i64 557, !44, i64 624}
!43 = !{!"double", !7, i64 0}
!44 = !{!"PieMenuData", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !43, i64 32, !13, i64 40, !13, i64 44, !16, i64 48}
!45 = !{i32 1, i32 3}
!46 = !{!12, !7, i64 788}
!47 = !{!12, !6, i64 776}
!48 = !{!17, !6, i64 8}
!49 = !{!17, !6, i64 16}
!50 = !{!29, !13, i64 20}
!51 = !{!42, !6, i64 528}
!52 = !{!25, !13, i64 16}
!53 = !{!25, !7, i64 82}
!54 = !{!55, !6, i64 8}
!55 = !{!"EnumPropertyItem", !13, i64 0, !6, i64 8, !13, i64 16, !6, i64 24, !6, i64 32}
!56 = !{!55, !13, i64 0}
!57 = !{!55, !6, i64 24}
!58 = !{!55, !13, i64 16}
!59 = !{!42, !6, i64 24}
!60 = !{!42, !13, i64 424}
!61 = distinct !{!61, !10}
!62 = !{!29, !6, i64 72}
!63 = distinct !{!63, !10}
!64 = !{!25, !7, i64 83}
!65 = !{!25, !7, i64 84}
!66 = !{!25, !6, i64 32}
!67 = !{!25, !13, i64 64}
!68 = !{!69, !13, i64 16}
!69 = !{!"uiLayoutItemSplit", !25, i64 0, !16, i64 88}
!70 = !{!69, !6, i64 24}
!71 = !{!69, !7, i64 82}
!72 = !{!69, !7, i64 83}
!73 = !{!69, !7, i64 84}
!74 = !{!69, !6, i64 32}
!75 = !{!29, !6, i64 56}
!76 = !{!77, !14, i64 216}
!77 = !{!"uiStyle", !6, i64 0, !6, i64 8, !7, i64 16, !78, i64 80, !78, i64 112, !78, i64 144, !78, i64 176, !16, i64 208, !14, i64 212, !14, i64 214, !14, i64 216, !14, i64 218, !14, i64 220, !14, i64 222, !14, i64 224, !14, i64 226, !14, i64 228, !14, i64 230}
!78 = !{!"uiFontStyle", !14, i64 0, !14, i64 2, !14, i64 4, !7, i64 6, !14, i64 12, !14, i64 14, !14, i64 16, !14, i64 18, !14, i64 20, !14, i64 22, !16, i64 24, !16, i64 28}
!79 = !{!69, !14, i64 80}
!80 = !{!69, !7, i64 85}
!81 = !{!69, !13, i64 64}
!82 = !{!69, !16, i64 88}
!83 = !{!77, !14, i64 224}
!84 = !{!25, !14, i64 80}
!85 = !{!12, !6, i64 768}
!86 = !{!55, !6, i64 32}
!87 = !{!13, !13, i64 0}
!88 = !{!12, !13, i64 24}
!89 = !{!12, !7, i64 789}
!90 = distinct !{!90, !10}
!91 = !{!92, !13, i64 212}
!92 = !{!"bArmature", !93, i64 0, !6, i64 120, !27, i64 128, !27, i64 144, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !13, i64 192, !13, i64 196, !13, i64 200, !13, i64 204, !14, i64 208, !14, i64 210, !13, i64 212, !13, i64 216, !13, i64 220, !14, i64 224, !14, i64 226, !14, i64 228, !14, i64 230, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !13, i64 248, !13, i64 252}
!93 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !14, i64 98, !13, i64 100, !13, i64 104, !13, i64 108, !6, i64 112}
!94 = !{!92, !6, i64 160}
!95 = !{!92, !6, i64 176}
!96 = !{!92, !6, i64 168}
!97 = distinct !{!97, !10}
!98 = distinct !{!98, !10}
!99 = !{!77, !14, i64 222}
!100 = distinct !{!100, !10}
!101 = distinct !{!101, !10}
!102 = !{!42, !7, i64 431}
!103 = distinct !{!103, !10}
!104 = !{i32 0, i32 2}
!105 = distinct !{!105, !10}
!106 = !{!12, !16, i64 620}
!107 = !{!12, !6, i64 880}
!108 = !{!12, !6, i64 56}
!109 = distinct !{!109, !10}
!110 = distinct !{!110, !10}
!111 = !{!112, !6, i64 0}
!112 = !{!"Global", !6, i64 0, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 2057, !7, i64 2058, !27, i64 2064, !7, i64 2080, !7, i64 2081, !7, i64 2082, !14, i64 2084, !14, i64 2086, !14, i64 2088, !7, i64 2090, !14, i64 2092, !13, i64 2096, !13, i64 2100, !7, i64 2104, !13, i64 2108, !13, i64 2112, !7, i64 2116}
!113 = !{!114, !13, i64 128}
!114 = !{!"CollectionPropertyIterator", !17, i64 0, !17, i64 24, !6, i64 48, !7, i64 56, !13, i64 96, !13, i64 100, !17, i64 104, !13, i64 128}
!115 = !{!114, !6, i64 120}
!116 = distinct !{!116, !10}
!117 = !{!12, !7, i64 791}
!118 = !{!12, !6, i64 816}
!119 = !{!120, !6, i64 16}
!120 = !{!"CollItemSearch", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28}
!121 = !{!120, !13, i64 24}
!122 = !{!120, !13, i64 28}
!123 = distinct !{!123, !10}
!124 = distinct !{!124, !10}
!125 = distinct !{!125, !10}
!126 = !{!127, !6, i64 208}
!127 = !{!"MenuType", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 80, !7, i64 144, !6, i64 208, !6, i64 216, !6, i64 224, !32, i64 232}
!128 = !{!12, !6, i64 608}
!129 = !{!12, !6, i64 680}
!130 = !{!131, !6, i64 0}
!131 = !{!"Menu", !6, i64 0, !6, i64 8}
!132 = !{!131, !6, i64 8}
!133 = !{!112, !13, i64 2100}
!134 = !{!127, !6, i64 224}
!135 = !{i32 0, i32 256}
!136 = !{!17, !6, i64 0}
!137 = !{!42, !6, i64 512}
!138 = !{!139, !13, i64 0}
!139 = !{!"MenuItemLevel", !13, i64 0, !7, i64 4, !7, i64 68, !17, i64 136}
!140 = !{!31, !6, i64 104}
!141 = !{!31, !6, i64 48}
!142 = !{!31, !6, i64 8}
!143 = !{!144, !13, i64 16}
!144 = !{!"uiLayoutItemFlow", !25, i64 0, !13, i64 88, !13, i64 92}
!145 = !{!144, !6, i64 24}
!146 = !{!144, !7, i64 82}
!147 = !{!144, !7, i64 83}
!148 = !{!144, !7, i64 84}
!149 = !{!144, !6, i64 32}
!150 = !{!144, !14, i64 80}
!151 = !{!144, !7, i64 85}
!152 = !{!144, !13, i64 64}
!153 = !{!144, !13, i64 88}
!154 = !{!155, !13, i64 16}
!155 = !{!"uiLayoutItemBx", !25, i64 0, !6, i64 88}
!156 = !{!155, !6, i64 24}
!157 = !{!155, !7, i64 83}
!158 = !{!155, !7, i64 84}
!159 = !{!155, !6, i64 32}
!160 = !{!155, !14, i64 80}
!161 = !{!155, !7, i64 85}
!162 = !{!155, !13, i64 64}
!163 = !{!155, !6, i64 88}
!164 = !{!165, !13, i64 16}
!165 = !{!"uiButtonItem", !26, i64 0, !6, i64 24}
!166 = !{!165, !6, i64 24}
!167 = distinct !{!167, !10}
!168 = !{!12, !6, i64 944}
!169 = !{!25, !7, i64 86}
!170 = !{!25, !7, i64 87}
!171 = !{!16, !16, i64 0}
!172 = !{!29, !13, i64 32}
!173 = !{!25, !13, i64 56}
!174 = !{!25, !13, i64 60}
!175 = !{!77, !14, i64 218}
!176 = !{!25, !13, i64 68}
!177 = !{!29, !13, i64 28}
!178 = !{!29, !13, i64 24}
!179 = !{!12, !6, i64 688}
!180 = !{!181, !7, i64 32}
!181 = !{!"bContextStore", !6, i64 0, !6, i64 8, !27, i64 16, !7, i64 32}
!182 = !{!29, !6, i64 40}
!183 = !{!29, !6, i64 48}
!184 = distinct !{!184, !10}
!185 = !{!25, !6, i64 40}
!186 = !{!26, !6, i64 0}
!187 = !{!26, !13, i64 16}
!188 = distinct !{!188, !10}
!189 = !{!190, !6, i64 80}
!190 = !{!"wmOperator", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !27, i64 128, !6, i64 144, !6, i64 152, !14, i64 160, !7, i64 162}
!191 = !{!190, !6, i64 88}
!192 = !{!31, !14, i64 184}
!193 = !{!42, !6, i64 520}
!194 = !{!31, !6, i64 80}
!195 = !{!190, !6, i64 152}
!196 = distinct !{!196, !10}
!197 = !{!12, !6, i64 808}
!198 = !{!199, !6, i64 136}
!199 = !{!"wmWindow", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !14, i64 104, !14, i64 106, !14, i64 108, !14, i64 110, !14, i64 112, !14, i64 114, !14, i64 116, !14, i64 118, !14, i64 120, !14, i64 122, !14, i64 124, !14, i64 126, !13, i64 128, !14, i64 132, !14, i64 134, !6, i64 136, !6, i64 144, !6, i64 152, !13, i64 160, !13, i64 164, !6, i64 168, !27, i64 176, !27, i64 192, !27, i64 208, !27, i64 224, !27, i64 240}
!200 = !{!201, !14, i64 72}
!201 = !{!"wmEvent", !6, i64 0, !6, i64 8, !14, i64 16, !14, i64 18, !13, i64 20, !13, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !14, i64 44, !14, i64 46, !13, i64 48, !13, i64 52, !43, i64 56, !13, i64 64, !13, i64 68, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !14, i64 80, !14, i64 82, !6, i64 88, !6, i64 96, !14, i64 104, !14, i64 106, !13, i64 108, !6, i64 112}
!202 = distinct !{!202, !10}
!203 = !{!12, !6, i64 992}
!204 = distinct !{!204, !10}
!205 = !{!12, !14, i64 794}
!206 = distinct !{!206, !10}
!207 = !{i8 0, i8 2}
!208 = !{!42, !14, i64 428}
!209 = distinct !{!209, !10}
!210 = !{!27, !6, i64 0}
!211 = distinct !{!211, !10}
!212 = distinct !{!212, !10}
!213 = distinct !{!213, !10}
!214 = !{!144, !13, i64 92}
!215 = distinct !{!215, !10}
!216 = distinct !{!216, !10}
!217 = !{!77, !14, i64 220}
!218 = distinct !{!218, !10}
!219 = distinct !{!219, !10}
!220 = !{!12, !16, i64 592}
!221 = !{!12, !16, i64 600}
!222 = !{!15, !16, i64 4}
!223 = !{!15, !16, i64 0}
!224 = !{!15, !16, i64 12}
!225 = !{!15, !16, i64 8}
!226 = !{!12, !14, i64 40}
!227 = distinct !{!227, !10}
!228 = distinct !{!228, !10}
!229 = distinct !{!229, !10}
!230 = distinct !{!230, !10}
!231 = distinct !{!231, !10}
!232 = distinct !{!232, !10}
!233 = !{!26, !13, i64 20}
!234 = distinct !{!234, !10}
!235 = distinct !{!235, !10}
!236 = distinct !{!236, !10}
!237 = distinct !{!237, !10}
!238 = distinct !{!238, !10}
!239 = distinct !{!239, !10}
!240 = distinct !{!240, !10}
!241 = !{!36, !14, i64 10924}
!242 = !{!36, !16, i64 10908}
!243 = !{!36, !13, i64 8524}
!244 = distinct !{!244, !10}
!245 = !{!42, !13, i64 664}
!246 = !{!12, !7, i64 790}
!247 = !{!12, !16, i64 604}
!248 = !{!12, !16, i64 596}
!249 = distinct !{!249, !10}
!250 = !{!36, !14, i64 10926}
!251 = !{!27, !6, i64 8}
!252 = distinct !{!252, !10}
!253 = !{!12, !6, i64 888}
!254 = !{!12, !6, i64 896}
!255 = !{!12, !6, i64 824}
!256 = !{!12, !13, i64 848}
