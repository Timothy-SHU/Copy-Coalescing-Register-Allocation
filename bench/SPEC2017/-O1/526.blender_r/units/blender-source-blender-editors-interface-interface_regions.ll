; ModuleID = 'blender/source/blender/editors/interface/interface_regions.c'
source_filename = "blender/source/blender/editors/interface/interface_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.uiStringInfo = type { i32, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.StructRNA = type opaque
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.uiTooltipData = type { %struct.rcti, %struct.uiFontStyle, [8 x [512 x i8]], [512 x i8], [512 x i8], [8 x %struct.anon.0], i32, i32, i32 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.anon.0 = type { i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.uiWidgetColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i16, i16, i16, i16 }
%struct.uiSearchItems = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.uiSearchboxData = type { %struct.rcti, %struct.uiFontStyle, %struct.uiSearchItems, i32, i8, i8, i8, i32, i32 }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.uiPopupBlockHandle = type { ptr, [2 x float], double, i8, i8, ptr, ptr, ptr, %struct.uiPopupBlockCreate, ptr, %struct.uiKeyNavLock, ptr, ptr, ptr, i32, i32, i32, i32, [4 x float], i32, i8, [2 x i32] }
%struct.uiPopupBlockCreate = type { ptr, ptr, ptr, [2 x i32], ptr }
%struct.uiKeyNavLock = type { i8, [2 x i32] }
%struct.uiSafetyRct = type { ptr, ptr, %struct.rctf, %struct.rctf }
%struct.uiPopupMenu = type { ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.uiPieMenu = type { ptr, ptr, i32, i32 }
%struct.Menu = type { ptr, ptr }
%struct.MenuType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.Report = type { ptr, ptr, i16, i16, i32, ptr, ptr }

@.str = private unnamed_addr constant [29 x i8] c"%s: cannot cycle button '%s'\00", align 1
@__func__.ui_step_name_menu = private unnamed_addr constant [18 x i8] c"ui_step_name_menu\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@ui_tooltip_create.type = internal global %struct.ARegionType zeroinitializer, align 8
@__const.ui_tooltip_create.but_tip = private unnamed_addr constant %struct.uiStringInfo { i32 8, ptr null }, align 8
@__const.ui_tooltip_create.enum_label = private unnamed_addr constant %struct.uiStringInfo { i32 6, ptr null }, align 8
@__const.ui_tooltip_create.enum_tip = private unnamed_addr constant %struct.uiStringInfo { i32 10, ptr null }, align 8
@__const.ui_tooltip_create.op_keymap = private unnamed_addr constant %struct.uiStringInfo { i32 11, ptr null }, align 8
@__const.ui_tooltip_create.prop_keymap = private unnamed_addr constant %struct.uiStringInfo { i32 12, ptr null }, align 8
@__const.ui_tooltip_create.rna_struct = private unnamed_addr constant %struct.uiStringInfo { i32 2, ptr null }, align 8
@__const.ui_tooltip_create.rna_prop = private unnamed_addr constant %struct.uiStringInfo { i32 1, ptr null }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"uiTooltipData\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:  \00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"(Shift-click to select multiple)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Shortcut: %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Value: %s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Radians: %f\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Expression: %s\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Library: %s\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Python: %s\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"Disabled: %s\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Python: %s.%s\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%s ... %s\00", align 1
@blf_mono_font = external local_unnamed_addr global i32, align 4
@ui_searchbox_create.type = internal global %struct.ARegionType zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"uiSearchboxData\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"search names\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"search pointers\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"search icons\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"search items\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"uiSafetyRct\00", align 1
@ui_popup_block_create.type = internal global %struct.ARegionType zeroinitializer, align 8
@.str.20 = private unnamed_addr constant [19 x i8] c"uiPopupBlockHandle\00", align 1
@__func__.ui_block_func_COLOR = private unnamed_addr constant [20 x i8] c"ui_block_func_COLOR\00", align 1
@__func__.ui_popup_menu_create = private unnamed_addr constant [21 x i8] c"ui_popup_menu_create\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"popup menu\00", align 1
@__func__.uiPupMenuBegin = private unnamed_addr constant [15 x i8] c"uiPupMenuBegin\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"pie menu\00", align 1
@__func__.uiPieMenuBegin = private unnamed_addr constant [15 x i8] c"uiPieMenuBegin\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"%s: named menu \22%s\22 not found\0A\00", align 1
@__func__.uiPieMenuInvoke = private unnamed_addr constant [16 x i8] c"uiPieMenuInvoke\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.26 = private unnamed_addr constant [23 x i8] c"%s: opening menu \22%s\22\0A\00", align 1
@RNA_Context = external global %struct.StructRNA, align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Report\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Menu \22%s\22 not found\00", align 1
@__func__.uiPupMenuInvoke = private unnamed_addr constant [16 x i8] c"uiPupMenuInvoke\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"area region\00", align 1
@uiBlockPicker.colormode = internal global i16 0, align 2
@uiBlockPicker.tip = internal global [50 x i8] zeroinitializer, align 16
@uiBlockPicker.hexcol = internal global [128 x i8] zeroinitializer, align 16
@.str.31 = private unnamed_addr constant [29 x i8] c"Value in Display Color Space\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Value in Linear RGB Color Space\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"HSL\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"HSV\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"Hex\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"UI_OT_eyedropper_color\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"R:\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"G:\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"B:\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"H:\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"S:\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"L:\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"Lightness\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"V:\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"A: \00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"%02X%02X%02X\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"Hex: \00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"Hex triplet for color (#RRGGBB)\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"(Gamma Corrected)\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@ui_popup_menu_memory__internal.mem = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@ui_popup_menu_memory__internal.first = internal unnamed_addr global i1 false, align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ui_step_name_menu(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @RNA_property_type(ptr noundef nonnull %7) #17
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %16, label %12

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.ui_step_name_menu, ptr noundef %14)
  br label %58

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.uiBlock, ptr %18, i64 0, i32 48
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %22 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #17
  %23 = icmp sgt i32 %1, -1
  %24 = select i1 %23, i32 1, i32 -1
  call void @RNA_property_enum_items(ptr noundef %20, ptr noundef nonnull %21, ptr noundef %22, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %25 = call i32 @RNA_property_enum_get(ptr noundef nonnull %21, ptr noundef %22) #17
  %26 = load ptr, ptr %3, align 8, !tbaa !52
  %27 = call i32 @RNA_enum_from_value(ptr noundef %26, i32 noundef %25) #17
  %28 = load i32, ptr %4, align 4, !tbaa !53
  %29 = load ptr, ptr %3, align 8, !tbaa !52
  br label %30

30:                                               ; preds = %30, %16
  %31 = phi i32 [ %27, %16 ], [ %36, %30 ]
  %32 = phi i32 [ 0, %16 ], [ %43, %30 ]
  %33 = add nsw i32 %31, %24
  %34 = srem i32 %33, %28
  %35 = add nsw i32 %34, %28
  %36 = srem i32 %35, %28
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.EnumPropertyItem, ptr %29, i64 %37, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = load i8, ptr %39, align 1, !tbaa !56
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i32 0, i32 %24
  %43 = add nsw i32 %42, %32
  %44 = icmp ne i32 %36, %27
  %45 = icmp ne i32 %43, %1
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %30, label %47, !llvm.loop !57

47:                                               ; preds = %30
  br i1 %44, label %48, label %51

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.EnumPropertyItem, ptr %29, i64 %37
  %50 = load i32, ptr %49, align 8, !tbaa !60
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i32 [ %50, %48 ], [ %25, %47 ]
  %53 = load i8, ptr %5, align 1, !tbaa !56
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %56(ptr noundef %29) #17
  br label %57

57:                                               ; preds = %51, %55
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %58

58:                                               ; preds = %57, %12
  %59 = phi i32 [ 0, %12 ], [ %52, %57 ]
  ret i32 %59
}

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ui_tooltip_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [512 x i8], align 16
  %5 = alloca %struct.rctf, align 4
  %6 = alloca %struct.rcti, align 4
  %7 = alloca %struct.uiStringInfo, align 8
  %8 = alloca %struct.uiStringInfo, align 8
  %9 = alloca %struct.uiStringInfo, align 8
  %10 = alloca %struct.uiStringInfo, align 8
  %11 = alloca %struct.uiStringInfo, align 8
  %12 = alloca %struct.uiStringInfo, align 8
  %13 = alloca %struct.uiStringInfo, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %17 = sitofp i16 %16 to float
  %18 = fmul float %17, 0x3FF4CCCCC0000000
  %19 = fptosi float %18 to i32
  %20 = sitofp i32 %19 to float
  %21 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %22 = tail call ptr @UI_GetStyle() #17
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #17
  %23 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.uiBlock, ptr %24, i64 0, i32 12
  %26 = load float, ptr %25, align 8, !tbaa !65
  %27 = fcmp ogt float %26, 1.000000e+00
  %28 = select i1 %27, float 1.000000e+00, float %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.but_tip, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.enum_label, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.enum_tip, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.op_keymap, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.prop_keymap, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.rna_struct, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.rna_prop, i64 16, i1 false)
  %29 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !66
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %547

33:                                               ; preds = %3
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %35 = tail call ptr %34(i64 noundef 5244, ptr noundef nonnull @.str.1) #17
  call void (ptr, ptr, ...) @uiButGetStrInfo(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef null) #17
  %36 = getelementptr inbounds %struct.uiStringInfo, ptr %7, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !67
  %38 = icmp eq ptr %37, null
  br i1 %38, label %78, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 3
  %41 = call ptr @BLI_strncpy(ptr noundef nonnull %40, ptr noundef nonnull %37, i64 noundef 512) #17
  %42 = getelementptr inbounds %struct.uiStringInfo, ptr %8, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %36, align 8, !tbaa !67
  %47 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %40, i64 noundef 512, ptr noundef nonnull @.str.2, ptr noundef %46) #17
  %48 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 4
  %49 = load ptr, ptr %42, align 8, !tbaa !67
  %50 = call ptr @BLI_strncpy(ptr noundef nonnull %48, ptr noundef %49, i64 noundef 512) #17
  br label %51

51:                                               ; preds = %45, %39
  %52 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !69
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %54
  store i32 1, ptr %55, align 4, !tbaa !73
  %56 = add nsw i32 %53, 1
  store i32 %56, ptr %52, align 4, !tbaa !69
  %57 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !75
  %59 = and i32 %58, 1024
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  %66 = call i32 @RNA_property_flag(ptr noundef nonnull %63) #17
  %67 = and i32 %66, 2097152
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %52, align 4, !tbaa !69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %71
  %73 = call ptr @BLI_strncpy(ptr noundef nonnull %72, ptr noundef nonnull @.str.3, i64 noundef 512) #17
  %74 = load i32, ptr %52, align 4, !tbaa !69
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %75, i32 1
  store i32 3, ptr %76, align 4, !tbaa !76
  %77 = add nsw i32 %74, 1
  store i32 %77, ptr %52, align 4, !tbaa !69
  br label %78

78:                                               ; preds = %51, %61, %65, %69, %33
  %79 = getelementptr inbounds %struct.uiStringInfo, ptr %9, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !67
  %81 = icmp eq ptr %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %84 = load i32, ptr %83, align 4, !tbaa !69
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %85
  %87 = call ptr @BLI_strncpy(ptr noundef nonnull %86, ptr noundef nonnull %80, i64 noundef 512) #17
  %88 = load i32, ptr %83, align 4, !tbaa !69
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %89, i32 1
  store i32 1, ptr %90, align 4, !tbaa !76
  %91 = add nsw i32 %88, 1
  store i32 %91, ptr %83, align 4, !tbaa !69
  br label %92

92:                                               ; preds = %82, %78
  %93 = getelementptr inbounds %struct.uiStringInfo, ptr %10, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !67
  %95 = icmp eq ptr %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %98 = load i32, ptr %97, align 4, !tbaa !69
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %99
  %101 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %100, i64 noundef 512, ptr noundef nonnull @.str.4, ptr noundef nonnull %94) #17
  %102 = load i32, ptr %97, align 4, !tbaa !69
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %103, i32 1
  store i32 1, ptr %104, align 4, !tbaa !76
  %105 = add nsw i32 %102, 1
  store i32 %105, ptr %97, align 4, !tbaa !69
  br label %106

106:                                              ; preds = %96, %92
  %107 = getelementptr inbounds %struct.uiStringInfo, ptr %11, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !67
  %109 = icmp eq ptr %108, null
  br i1 %109, label %120, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %112 = load i32, ptr %111, align 4, !tbaa !69
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %113
  %115 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %114, i64 noundef 512, ptr noundef nonnull @.str.4, ptr noundef nonnull %108) #17
  %116 = load i32, ptr %111, align 4, !tbaa !69
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %117, i32 1
  store i32 1, ptr %118, align 4, !tbaa !76
  %119 = add nsw i32 %116, 1
  store i32 %119, ptr %111, align 4, !tbaa !69
  br label %120

120:                                              ; preds = %110, %106
  %121 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %122 = load i32, ptr %121, align 8, !tbaa !75
  switch i32 %122, label %143 [
    i32 3072, label %123
    i32 20992, label %123
    i32 26624, label %123
  ]

123:                                              ; preds = %120, %120, %120
  %124 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %125 = load ptr, ptr %124, align 8, !tbaa !34
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = call i32 @RNA_property_subtype(ptr noundef nonnull %125) #17
  %129 = icmp eq i32 %128, 6
  br i1 %129, label %143, label %130

130:                                              ; preds = %123, %127
  call void @ui_get_but_string(ptr noundef %2, ptr noundef nonnull %4, i64 noundef 512) #17
  %131 = load i8, ptr %4, align 16, !tbaa !56
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %135 = load i32, ptr %134, align 4, !tbaa !69
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %136
  %138 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %137, i64 noundef 512, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #17
  %139 = load i32, ptr %134, align 4, !tbaa !69
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %140, i32 1
  store i32 1, ptr %141, align 4, !tbaa !76
  %142 = add nsw i32 %139, 1
  store i32 %142, ptr %134, align 4, !tbaa !69
  br label %143

143:                                              ; preds = %120, %127, %133, %130
  %144 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %145 = load ptr, ptr %144, align 8, !tbaa !34
  %146 = icmp eq ptr %145, null
  br i1 %146, label %211, label %147

147:                                              ; preds = %143
  %148 = call i32 @uiButGetUnitType(ptr noundef %2) #17
  %149 = icmp eq i32 %148, 327680
  br i1 %149, label %150, label %178

150:                                              ; preds = %147
  %151 = load ptr, ptr %144, align 8, !tbaa !34
  %152 = call i32 @RNA_property_type(ptr noundef %151) #17
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %178

154:                                              ; preds = %150
  %155 = load ptr, ptr %144, align 8, !tbaa !34
  %156 = call zeroext i8 @RNA_property_array_check(ptr noundef %155) #17
  %157 = icmp eq i8 %156, 0
  %158 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %159 = load ptr, ptr %144, align 8, !tbaa !34
  br i1 %157, label %164, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 56
  %162 = load i32, ptr %161, align 8, !tbaa !77
  %163 = call float @RNA_property_float_get_index(ptr noundef nonnull %158, ptr noundef %159, i32 noundef %162) #17
  br label %166

164:                                              ; preds = %154
  %165 = call float @RNA_property_float_get(ptr noundef nonnull %158, ptr noundef %159) #17
  br label %166

166:                                              ; preds = %164, %160
  %167 = phi float [ %163, %160 ], [ %165, %164 ]
  %168 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %169 = load i32, ptr %168, align 4, !tbaa !69
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %170
  %172 = fpext float %167 to double
  %173 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %171, i64 noundef 512, ptr noundef nonnull @.str.6, double noundef %172) #17
  %174 = load i32, ptr %168, align 4, !tbaa !69
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %175, i32 1
  store i32 3, ptr %176, align 4, !tbaa !76
  %177 = add nsw i32 %174, 1
  store i32 %177, ptr %168, align 4, !tbaa !69
  br label %178

178:                                              ; preds = %150, %166, %147
  %179 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %180 = load i32, ptr %179, align 8, !tbaa !78
  %181 = and i32 %180, 32768
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %178
  %184 = call zeroext i8 @ui_but_anim_expression_get(ptr noundef %2, ptr noundef nonnull %4, i64 noundef 512) #17
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %196, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %188 = load i32, ptr %187, align 4, !tbaa !69
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %189
  %191 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %190, i64 noundef 512, ptr noundef nonnull @.str.7, ptr noundef nonnull %4) #17
  %192 = load i32, ptr %187, align 4, !tbaa !69
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %193, i32 1
  store i32 3, ptr %194, align 4, !tbaa !76
  %195 = add nsw i32 %192, 1
  store i32 %195, ptr %187, align 4, !tbaa !69
  br label %196

196:                                              ; preds = %183, %186, %178
  %197 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %198 = load ptr, ptr %197, align 8, !tbaa !79
  %199 = icmp eq ptr %198, null
  br i1 %199, label %260, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.ID, ptr %198, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !80
  %203 = icmp eq ptr %202, null
  br i1 %203, label %260, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %206 = load i32, ptr %205, align 4, !tbaa !69
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %207
  %209 = getelementptr inbounds %struct.Library, ptr %202, i64 0, i32 3
  %210 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %208, i64 noundef 512, ptr noundef nonnull @.str.8, ptr noundef nonnull %209) #17
  br label %253

211:                                              ; preds = %143
  %212 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 59
  %213 = load ptr, ptr %212, align 8, !tbaa !82
  %214 = icmp eq ptr %213, null
  br i1 %214, label %260, label %215

215:                                              ; preds = %211
  %216 = call ptr @uiButGetOperatorPtrRNA(ptr noundef %2) #17
  call void @WM_operator_properties_sanitize(ptr noundef %216, i8 noundef zeroext 0) #17
  %217 = load ptr, ptr %212, align 8, !tbaa !82
  %218 = call ptr @WM_operator_pystring_ex(ptr noundef %0, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %217, ptr noundef %216) #17
  %219 = call zeroext i8 @WM_operator_pystring_abbreviate(ptr noundef %218, i32 noundef 32) #17
  %220 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !83
  %221 = and i32 %220, 67108864
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %225 = load i32, ptr %224, align 4, !tbaa !69
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %226
  %228 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %227, i64 noundef 512, ptr noundef nonnull @.str.9, ptr noundef %218) #17
  %229 = load i32, ptr %224, align 4, !tbaa !69
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %230
  store i32 2, ptr %231, align 4, !tbaa !73
  %232 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %230, i32 1
  store i32 4, ptr %232, align 4, !tbaa !76
  %233 = add nsw i32 %229, 1
  store i32 %233, ptr %224, align 4, !tbaa !69
  br label %234

234:                                              ; preds = %223, %215
  %235 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %235(ptr noundef %218) #17
  %236 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %237 = load i32, ptr %236, align 8, !tbaa !78
  %238 = and i32 %237, 2048
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %260, label %240

240:                                              ; preds = %234
  call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef null) #17
  %241 = load ptr, ptr %212, align 8, !tbaa !82
  %242 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 61
  %243 = load i16, ptr %242, align 8, !tbaa !84
  %244 = call i32 @WM_operator_poll_context(ptr noundef %0, ptr noundef %241, i16 noundef signext %243) #17
  %245 = call ptr @CTX_wm_operator_poll_msg_get(ptr noundef %0) #17
  %246 = icmp eq ptr %245, null
  br i1 %246, label %260, label %247

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %249 = load i32, ptr %248, align 4, !tbaa !69
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %250
  %252 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %251, i64 noundef 512, ptr noundef nonnull @.str.10, ptr noundef nonnull %245) #17
  br label %253

253:                                              ; preds = %204, %247
  %254 = phi ptr [ %205, %204 ], [ %248, %247 ]
  %255 = phi i32 [ 3, %204 ], [ 5, %247 ]
  %256 = load i32, ptr %254, align 4, !tbaa !69
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %257, i32 1
  store i32 %255, ptr %258, align 4, !tbaa !76
  %259 = add nsw i32 %256, 1
  store i32 %259, ptr %254, align 4, !tbaa !69
  br label %260

260:                                              ; preds = %253, %234, %240, %196, %200, %211
  %261 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !83
  %262 = and i32 %261, 67108864
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %332

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 59
  %266 = load ptr, ptr %265, align 8, !tbaa !82
  %267 = icmp eq ptr %266, null
  %268 = getelementptr inbounds %struct.uiStringInfo, ptr %12, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8
  %270 = icmp ne ptr %269, null
  %271 = select i1 %267, i1 %270, i1 false
  br i1 %271, label %272, label %332

272:                                              ; preds = %264
  %273 = getelementptr inbounds %struct.uiStringInfo, ptr %13, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !67
  %275 = icmp eq ptr %274, null
  %276 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %277 = load i32, ptr %276, align 4, !tbaa !69
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %278
  br i1 %275, label %282, label %280

280:                                              ; preds = %272
  %281 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %279, i64 noundef 512, ptr noundef nonnull @.str.11, ptr noundef nonnull %269, ptr noundef nonnull %274) #17
  br label %284

282:                                              ; preds = %272
  %283 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %279, i64 noundef 512, ptr noundef nonnull @.str.9, ptr noundef nonnull %269) #17
  br label %284

284:                                              ; preds = %282, %280
  %285 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %286 = load i32, ptr %285, align 4, !tbaa !69
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %287
  store i32 2, ptr %288, align 4, !tbaa !73
  %289 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %287, i32 1
  store i32 4, ptr %289, align 4, !tbaa !76
  %290 = add nsw i32 %286, 1
  store i32 %290, ptr %285, align 4, !tbaa !69
  %291 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %292 = load ptr, ptr %291, align 8, !tbaa !85
  %293 = icmp eq ptr %292, null
  br i1 %293, label %332, label %294

294:                                              ; preds = %284
  %295 = load ptr, ptr %144, align 8, !tbaa !34
  %296 = call ptr @RNA_path_full_ID_py(ptr noundef nonnull %292) #17
  %297 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !86
  %299 = icmp ne ptr %298, null
  %300 = icmp ne ptr %295, null
  %301 = select i1 %299, i1 %300, i1 false
  br i1 %301, label %302, label %304

302:                                              ; preds = %294
  %303 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %291, ptr noundef nonnull %295) #17
  br label %304

304:                                              ; preds = %302, %294
  %305 = phi ptr [ %303, %302 ], [ null, %294 ]
  %306 = icmp eq ptr %305, null
  br i1 %306, label %313, label %307

307:                                              ; preds = %304
  %308 = load i32, ptr %285, align 4, !tbaa !69
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %309
  %311 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %310, i64 noundef 512, ptr noundef nonnull @.str.12, ptr noundef %296, ptr noundef nonnull %305) #17
  %312 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %312(ptr noundef nonnull %305) #17
  br label %325

313:                                              ; preds = %304
  br i1 %300, label %314, label %325

314:                                              ; preds = %313
  %315 = load i32, ptr %285, align 4, !tbaa !69
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %316
  %318 = load ptr, ptr %273, align 8, !tbaa !67
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %322

320:                                              ; preds = %314
  %321 = call ptr @RNA_property_identifier(ptr noundef nonnull %295) #17
  br label %322

322:                                              ; preds = %314, %320
  %323 = phi ptr [ %321, %320 ], [ %318, %314 ]
  %324 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %317, i64 noundef 512, ptr noundef nonnull @.str.13, ptr noundef %296, ptr noundef %323) #17
  br label %325

325:                                              ; preds = %313, %322, %307
  %326 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %326(ptr noundef %296) #17
  %327 = load i32, ptr %285, align 4, !tbaa !69
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %328
  store i32 2, ptr %329, align 4, !tbaa !73
  %330 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %328, i32 1
  store i32 4, ptr %330, align 4, !tbaa !76
  %331 = add nsw i32 %327, 1
  store i32 %331, ptr %285, align 4, !tbaa !69
  br label %332

332:                                              ; preds = %284, %325, %264, %260
  %333 = load ptr, ptr %36, align 8, !tbaa !67
  %334 = icmp eq ptr %333, null
  br i1 %334, label %337, label %335

335:                                              ; preds = %332
  %336 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %336(ptr noundef nonnull %333) #17
  br label %337

337:                                              ; preds = %335, %332
  %338 = getelementptr inbounds %struct.uiStringInfo, ptr %8, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !67
  %340 = icmp eq ptr %339, null
  br i1 %340, label %343, label %341

341:                                              ; preds = %337
  %342 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %342(ptr noundef nonnull %339) #17
  br label %343

343:                                              ; preds = %341, %337
  %344 = load ptr, ptr %79, align 8, !tbaa !67
  %345 = icmp eq ptr %344, null
  br i1 %345, label %348, label %346

346:                                              ; preds = %343
  %347 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %347(ptr noundef nonnull %344) #17
  br label %348

348:                                              ; preds = %346, %343
  %349 = load ptr, ptr %93, align 8, !tbaa !67
  %350 = icmp eq ptr %349, null
  br i1 %350, label %353, label %351

351:                                              ; preds = %348
  %352 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %352(ptr noundef nonnull %349) #17
  br label %353

353:                                              ; preds = %351, %348
  %354 = load ptr, ptr %107, align 8, !tbaa !67
  %355 = icmp eq ptr %354, null
  br i1 %355, label %358, label %356

356:                                              ; preds = %353
  %357 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %357(ptr noundef nonnull %354) #17
  br label %358

358:                                              ; preds = %356, %353
  %359 = getelementptr inbounds %struct.uiStringInfo, ptr %12, i64 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !67
  %361 = icmp eq ptr %360, null
  br i1 %361, label %364, label %362

362:                                              ; preds = %358
  %363 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %363(ptr noundef nonnull %360) #17
  br label %364

364:                                              ; preds = %362, %358
  %365 = getelementptr inbounds %struct.uiStringInfo, ptr %13, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !67
  %367 = icmp eq ptr %366, null
  br i1 %367, label %370, label %368

368:                                              ; preds = %364
  %369 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %369(ptr noundef nonnull %366) #17
  br label %370

370:                                              ; preds = %368, %364
  %371 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 6
  %372 = load i32, ptr %371, align 4, !tbaa !69
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %370
  %375 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %375(ptr noundef %35) #17
  br label %547

376:                                              ; preds = %370
  %377 = call ptr @CTX_wm_screen(ptr noundef %0) #17
  %378 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %379 = call ptr %378(i64 noundef 384, ptr noundef nonnull @.str.30) #17
  %380 = getelementptr inbounds %struct.bScreen, ptr %377, i64 0, i32 4
  call void @BLI_addtail(ptr noundef nonnull %380, ptr noundef %379) #17
  %381 = getelementptr inbounds %struct.ARegion, ptr %379, i64 0, i32 8
  store i16 3, ptr %381, align 2, !tbaa !87
  %382 = getelementptr inbounds %struct.ARegion, ptr %379, i64 0, i32 9
  store i16 7, ptr %382, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) @ui_tooltip_create.type, i8 0, i64 184, i1 false)
  store ptr @ui_tooltip_region_draw_cb, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_tooltip_create.type, i64 0, i32 5), align 8, !tbaa !91
  store ptr @ui_tooltip_region_free_cb, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_tooltip_create.type, i64 0, i32 7), align 8, !tbaa !93
  store i32 3, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_tooltip_create.type, i64 0, i32 2), align 8, !tbaa !94
  %383 = getelementptr inbounds %struct.ARegion, ptr %379, i64 0, i32 20
  store ptr @ui_tooltip_create.type, ptr %383, align 8, !tbaa !95
  %384 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 1
  %385 = getelementptr inbounds %struct.uiStyle, ptr %22, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %384, ptr noundef nonnull align 8 dereferenceable(32) %385, i64 32, i1 false), !tbaa.struct !96
  %386 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 1, i32 1
  call void @ui_fontscale(ptr noundef nonnull %386, float noundef %28) #17
  call void @uiStyleFontSet(ptr noundef nonnull %384) #17
  %387 = load i16, ptr %384, align 4, !tbaa !99
  %388 = sext i16 %387 to i32
  %389 = call float @BLF_height_max(i32 noundef %388) #17
  %390 = fptosi float %389 to i32
  %391 = load i32, ptr %371, align 4, !tbaa !69
  %392 = icmp sgt i32 %391, 0
  br i1 %392, label %393, label %445

393:                                              ; preds = %376
  %394 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 3
  %395 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 4
  %396 = sitofp i32 %390 to float
  br label %397

397:                                              ; preds = %393, %435
  %398 = phi i64 [ 0, %393 ], [ %441, %435 ]
  %399 = phi float [ 0.000000e+00, %393 ], [ %440, %435 ]
  %400 = phi float [ 0.000000e+00, %393 ], [ %439, %435 ]
  %401 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 5, i64 %398
  %402 = load i32, ptr %401, align 4, !tbaa !73
  switch i32 %402, label %429 [
    i32 1, label %403
    i32 2, label %417
  ]

403:                                              ; preds = %397
  %404 = load i16, ptr %384, align 4, !tbaa !99
  %405 = sext i16 %404 to i32
  %406 = call float @BLF_width(i32 noundef %405, ptr noundef nonnull %394, i64 noundef 512) #17
  %407 = fptosi float %406 to i32
  %408 = load ptr, ptr %338, align 8, !tbaa !67
  %409 = icmp eq ptr %408, null
  br i1 %409, label %435, label %410

410:                                              ; preds = %403
  %411 = load i16, ptr %384, align 4, !tbaa !99
  %412 = sext i16 %411 to i32
  %413 = call float @BLF_width(i32 noundef %412, ptr noundef nonnull %395, i64 noundef 512) #17
  %414 = sitofp i32 %407 to float
  %415 = fadd float %413, %414
  %416 = fptosi float %415 to i32
  br label %435

417:                                              ; preds = %397
  %418 = load i32, ptr @blf_mono_font, align 4, !tbaa !53
  %419 = load i16, ptr %386, align 2, !tbaa !100
  %420 = sitofp i16 %419 to float
  %421 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !101
  %422 = fmul float %421, %420
  %423 = fptosi float %422 to i32
  %424 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !102
  call void @BLF_size(i32 noundef %418, i32 noundef %423, i32 noundef %424) #17
  %425 = load i32, ptr @blf_mono_font, align 4, !tbaa !53
  %426 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %398
  %427 = call float @BLF_width(i32 noundef %425, ptr noundef nonnull %426, i64 noundef 512) #17
  %428 = fptosi float %427 to i32
  br label %435

429:                                              ; preds = %397
  %430 = load i16, ptr %384, align 4, !tbaa !99
  %431 = sext i16 %430 to i32
  %432 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 2, i64 %398
  %433 = call float @BLF_width(i32 noundef %431, ptr noundef nonnull %432, i64 noundef 512) #17
  %434 = fptosi float %433 to i32
  br label %435

435:                                              ; preds = %417, %429, %403, %410
  %436 = phi i32 [ %416, %410 ], [ %407, %403 ], [ %428, %417 ], [ %434, %429 ]
  %437 = sitofp i32 %436 to float
  %438 = fcmp ogt float %400, %437
  %439 = select i1 %438, float %400, float %437
  %440 = fadd float %399, %396
  %441 = add nuw nsw i64 %398, 1
  %442 = load i32, ptr %371, align 4, !tbaa !69
  %443 = sext i32 %442 to i64
  %444 = icmp slt i64 %441, %443
  br i1 %444, label %397, label %445, !llvm.loop !103

445:                                              ; preds = %435, %376
  %446 = phi float [ 0.000000e+00, %376 ], [ %439, %435 ]
  %447 = phi float [ 0.000000e+00, %376 ], [ %440, %435 ]
  %448 = getelementptr inbounds %struct.ARegion, ptr %379, i64 0, i32 30
  store ptr %35, ptr %448, align 8, !tbaa !104
  %449 = fptosi float %447 to i32
  %450 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 7
  store i32 %449, ptr %450, align 4, !tbaa !105
  %451 = getelementptr inbounds %struct.uiTooltipData, ptr %35, i64 0, i32 8
  store i32 %390, ptr %451, align 4, !tbaa !106
  %452 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %453 = load float, ptr %452, align 4, !tbaa !107
  %454 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 1
  %455 = load float, ptr %454, align 4, !tbaa !108
  %456 = fadd float %453, %455
  %457 = fmul float %456, 5.000000e-01
  %458 = fadd float %457, 0.000000e+00
  %459 = fdiv float 1.600000e+01, %28
  %460 = fsub float %458, %459
  store float %460, ptr %5, align 4, !tbaa !107
  %461 = fadd float %446, %460
  %462 = fadd float %461, %20
  %463 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  store float %462, ptr %463, align 4, !tbaa !108
  %464 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 2
  %465 = load float, ptr %464, align 8, !tbaa !109
  %466 = fadd float %465, 0.000000e+00
  %467 = fdiv float 6.000000e+00, %28
  %468 = fsub float %466, %467
  %469 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  store float %468, ptr %469, align 4, !tbaa !110
  %470 = fsub float %468, %447
  %471 = fsub float %470, %467
  %472 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  store float %471, ptr %472, align 4, !tbaa !111
  %473 = icmp eq ptr %1, null
  br i1 %473, label %490, label %474

474:                                              ; preds = %445
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #17
  store float %460, ptr %14, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #17
  store float %468, ptr %15, align 4, !tbaa !98
  %475 = load ptr, ptr %23, align 8, !tbaa !46
  call void @ui_block_to_window_fl(ptr noundef nonnull %1, ptr noundef %475, ptr noundef nonnull %14, ptr noundef nonnull %15) #17
  %476 = getelementptr inbounds %struct.wmWindow, ptr %21, i64 0, i32 21
  %477 = load ptr, ptr %476, align 8, !tbaa !112
  %478 = getelementptr inbounds %struct.wmEvent, ptr %477, i64 0, i32 4
  %479 = load i32, ptr %478, align 4, !tbaa !114
  %480 = sitofp i32 %479 to float
  %481 = call float @llvm.fmuladd.f32(float %459, float 2.000000e+00, float %480)
  %482 = load float, ptr %452, align 4, !tbaa !107
  %483 = load float, ptr %454, align 4, !tbaa !108
  %484 = fadd float %482, %483
  %485 = fmul float %484, 5.000000e-01
  %486 = fsub float %481, %485
  %487 = load float, ptr %15, align 4, !tbaa !98
  %488 = load float, ptr %469, align 4, !tbaa !110
  %489 = fsub float %487, %488
  call void @BLI_rctf_translate(ptr noundef nonnull %5, float noundef %486, float noundef %489) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #17
  br label %490

490:                                              ; preds = %474, %445
  call void @BLI_rcti_rctf_copy(ptr noundef nonnull %6, ptr noundef nonnull %5) #17
  %491 = call i32 @WM_window_pixels_x(ptr noundef %21) #17
  %492 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %493 = load i32, ptr %492, align 4, !tbaa !116
  %494 = icmp sgt i32 %493, %491
  br i1 %494, label %495, label %503

495:                                              ; preds = %490
  %496 = load i32, ptr %6, align 4, !tbaa !117
  %497 = add nsw i32 %496, %491
  %498 = icmp sgt i32 %493, %497
  br i1 %498, label %499, label %500

499:                                              ; preds = %495
  store i32 %491, ptr %492, align 4, !tbaa !116
  store i32 0, ptr %6, align 4, !tbaa !117
  br label %503

500:                                              ; preds = %495
  %501 = sub i32 %491, %493
  %502 = add i32 %501, %496
  store i32 %502, ptr %6, align 4, !tbaa !117
  store i32 %491, ptr %492, align 4, !tbaa !116
  br label %503

503:                                              ; preds = %499, %500, %490
  %504 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %505 = load i32, ptr %504, align 4, !tbaa !118
  %506 = icmp slt i32 %505, 5
  br i1 %506, label %507, label %512

507:                                              ; preds = %503
  %508 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %509 = load i32, ptr %508, align 4, !tbaa !119
  %510 = sub i32 %509, %505
  %511 = add i32 %510, 30
  store i32 %511, ptr %508, align 4, !tbaa !119
  store i32 30, ptr %504, align 4, !tbaa !118
  br label %512

512:                                              ; preds = %507, %503
  %513 = load i32, ptr %492, align 4, !tbaa !116
  %514 = load i32, ptr %6, align 4, !tbaa !117
  %515 = sub nsw i32 %513, %514
  %516 = sitofp i32 %515 to float
  %517 = fadd float %20, %516
  %518 = fptosi float %517 to i32
  %519 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %520 = load i32, ptr %519, align 4, !tbaa !119
  %521 = load i32, ptr %504, align 4, !tbaa !118
  %522 = sub nsw i32 %520, %521
  %523 = sitofp i32 %522 to float
  %524 = fadd float %20, %523
  %525 = fptosi float %524 to i32
  call void @BLI_rcti_resize(ptr noundef nonnull %6, i32 noundef %518, i32 noundef %525) #17
  %526 = call i32 @UI_ThemeMenuShadowWidth() #17
  store i32 %526, ptr %35, align 4, !tbaa !120
  %527 = load i32, ptr %492, align 4, !tbaa !116
  %528 = load i32, ptr %6, align 4, !tbaa !117
  %529 = add i32 %526, %528
  %530 = sub i32 %527, %529
  %531 = getelementptr inbounds %struct.rcti, ptr %35, i64 0, i32 1
  store i32 %530, ptr %531, align 4, !tbaa !121
  %532 = getelementptr inbounds %struct.rcti, ptr %35, i64 0, i32 2
  store i32 %526, ptr %532, align 4, !tbaa !122
  %533 = load i32, ptr %519, align 4, !tbaa !119
  %534 = load i32, ptr %504, align 4, !tbaa !118
  %535 = sub nsw i32 %533, %534
  %536 = getelementptr inbounds %struct.rcti, ptr %35, i64 0, i32 3
  store i32 %535, ptr %536, align 4, !tbaa !123
  %537 = sub nsw i32 %528, %526
  %538 = getelementptr inbounds %struct.ARegion, ptr %379, i64 0, i32 3
  store i32 %537, ptr %538, align 8, !tbaa !124
  %539 = load i32, ptr %492, align 4, !tbaa !116
  %540 = add nsw i32 %539, %526
  %541 = getelementptr inbounds %struct.ARegion, ptr %379, i64 0, i32 3, i32 1
  store i32 %540, ptr %541, align 4, !tbaa !125
  %542 = sub nsw i32 %534, %526
  %543 = getelementptr inbounds %struct.ARegion, ptr %379, i64 0, i32 3, i32 2
  store i32 %542, ptr %543, align 8, !tbaa !126
  %544 = load i32, ptr %519, align 4, !tbaa !119
  %545 = add nsw i32 %544, %526
  %546 = getelementptr inbounds %struct.ARegion, ptr %379, i64 0, i32 3, i32 3
  store i32 %545, ptr %546, align 4, !tbaa !127
  call void @ED_region_init(ptr noundef %0, ptr noundef %379) #17
  call void @ED_region_tag_redraw(ptr noundef %379) #17
  br label %547

547:                                              ; preds = %3, %512, %374
  %548 = phi ptr [ null, %374 ], [ %379, %512 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #17
  ret ptr %548
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare ptr @UI_GetStyle() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @uiButGetStrInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #1

declare void @ui_get_but_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @uiButGetUnitType(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #1

declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare zeroext i8 @ui_but_anim_expression_get(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #1

declare void @WM_operator_properties_sanitize(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @WM_operator_pystring_ex(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @WM_operator_pystring_abbreviate(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WM_operator_poll_context(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare ptr @CTX_wm_operator_poll_msg_get(ptr noundef) local_unnamed_addr #1

declare ptr @RNA_path_full_ID_py(ptr noundef) local_unnamed_addr #1

declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal void @ui_tooltip_region_draw_cb(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca %struct.rcti, align 4
  %14 = alloca [6 x [3 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca %struct.uiFontStyle, align 4
  %17 = alloca %struct.uiFontStyle, align 4
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %19 = sitofp i16 %18 to float
  %20 = fmul float %19, 0x3FF4CCCCC0000000
  %21 = fptosi float %20 to i32
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %24 = load ptr, ptr %23, align 8, !tbaa !104
  %25 = tail call ptr @ui_tooltip_get_theme() #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %14) #17
  %26 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 1
  %27 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 2
  %28 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 3
  %29 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 4
  %30 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  %31 = tail call zeroext i8 @glIsEnabled(i32 noundef 32925) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  tail call void @glDisable(i32 noundef 32925) #17
  br label %34

34:                                               ; preds = %33, %2
  tail call void @wmOrtho2_region_ui(ptr noundef %1) #17
  %35 = tail call ptr @UI_GetStyle() #17
  call void @ui_draw_tooltip_background(ptr noundef %35, ptr noundef null, ptr noundef nonnull %13) #17
  %36 = getelementptr inbounds %struct.uiWidgetColors, ptr %25, i64 0, i32 1
  call void @rgb_uchar_to_float(ptr noundef nonnull %15, ptr noundef nonnull %36) #17
  %37 = getelementptr inbounds %struct.uiWidgetColors, ptr %25, i64 0, i32 4
  call void @rgb_uchar_to_float(ptr noundef nonnull %14, ptr noundef nonnull %37) #17
  %38 = load float, ptr %14, align 16, !tbaa !98
  store float %38, ptr %27, align 8, !tbaa !98
  %39 = getelementptr inbounds float, ptr %14, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !98
  %41 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 2, i64 1
  store float %40, ptr %41, align 4, !tbaa !98
  %42 = getelementptr inbounds float, ptr %14, i64 2
  %43 = load float, ptr %42, align 8, !tbaa !98
  %44 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 2, i64 2
  store float %43, ptr %44, align 16, !tbaa !98
  store float %38, ptr %28, align 4, !tbaa !98
  %45 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 3, i64 1
  store float %40, ptr %45, align 8, !tbaa !98
  %46 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 3, i64 2
  store float %43, ptr %46, align 4, !tbaa !98
  store float %38, ptr %29, align 16, !tbaa !98
  %47 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 4, i64 1
  store float %40, ptr %47, align 4, !tbaa !98
  %48 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 4, i64 2
  store float %43, ptr %48, align 8, !tbaa !98
  store float %38, ptr %30, align 4, !tbaa !98
  %49 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 5, i64 1
  store float %40, ptr %49, align 16, !tbaa !98
  %50 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 5, i64 2
  store float %43, ptr %50, align 4, !tbaa !98
  store float %38, ptr %26, align 4, !tbaa !98
  %51 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 1, i64 1
  store float %40, ptr %51, align 16, !tbaa !98
  %52 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 1, i64 2
  store float %43, ptr %52, align 4, !tbaa !98
  %53 = load float, ptr %15, align 4, !tbaa !98
  %54 = getelementptr inbounds float, ptr %15, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !98
  %56 = fmul float %55, 0x3FE28F5C20000000
  %57 = call float @llvm.fmuladd.f32(float %53, float 0x3FD3333340000000, float %56)
  %58 = getelementptr inbounds float, ptr %15, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !98
  %60 = call float @llvm.fmuladd.f32(float %59, float 0x3FBEB851E0000000, float %57)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  call void @rgb_to_hsv_v(ptr noundef nonnull %26, ptr noundef nonnull %11) #17
  store float 0.000000e+00, ptr %12, align 4, !tbaa !98
  %61 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  store float 0.000000e+00, ptr %61, align 4, !tbaa !98
  %62 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !98
  %64 = fmul float %60, 0x3FC99999A0000000
  %65 = call float @llvm.fmuladd.f32(float %63, float 0x3FE99999A0000000, float %64)
  %66 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float %65, ptr %66, align 4, !tbaa !98
  call void @hsv_to_rgb_v(ptr noundef nonnull %12, ptr noundef nonnull %26) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @rgb_to_hsv_v(ptr noundef nonnull %27, ptr noundef nonnull %9) #17
  store float 0x3FE3333340000000, ptr %10, align 4, !tbaa !98
  %67 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float 0x3FC99999A0000000, ptr %67, align 4, !tbaa !98
  %68 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !98
  %70 = call float @llvm.fmuladd.f32(float %69, float 0x3FE99999A0000000, float %64)
  %71 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %70, ptr %71, align 4, !tbaa !98
  call void @hsv_to_rgb_v(ptr noundef nonnull %10, ptr noundef nonnull %27) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @rgb_to_hsv_v(ptr noundef nonnull %28, ptr noundef nonnull %7) #17
  store float 0.000000e+00, ptr %8, align 4, !tbaa !98
  %72 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float 0.000000e+00, ptr %72, align 4, !tbaa !98
  %73 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !98
  %75 = fmul float %60, 0x3FD99999A0000000
  %76 = call float @llvm.fmuladd.f32(float %74, float 0x3FE3333340000000, float %75)
  %77 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %76, ptr %77, align 4, !tbaa !98
  call void @hsv_to_rgb_v(ptr noundef nonnull %8, ptr noundef nonnull %28) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @rgb_to_hsv_v(ptr noundef nonnull %29, ptr noundef nonnull %5) #17
  store float 0.000000e+00, ptr %6, align 4, !tbaa !98
  %78 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float 0.000000e+00, ptr %78, align 4, !tbaa !98
  %79 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !98
  %81 = fmul float %60, 5.000000e-01
  %82 = call float @llvm.fmuladd.f32(float %80, float 5.000000e-01, float %81)
  %83 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %82, ptr %83, align 4, !tbaa !98
  call void @hsv_to_rgb_v(ptr noundef nonnull %6, ptr noundef nonnull %29) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @rgb_to_hsv_v(ptr noundef nonnull %30, ptr noundef nonnull %3) #17
  store float 0.000000e+00, ptr %4, align 4, !tbaa !98
  %84 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0x3FE99999A0000000, ptr %84, align 4, !tbaa !98
  %85 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !98
  %87 = fmul float %60, 0x3FB99999A0000000
  %88 = call float @llvm.fmuladd.f32(float %86, float 0x3FECCCCCC0000000, float %87)
  %89 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %88, ptr %89, align 4, !tbaa !98
  call void @hsv_to_rgb_v(ptr noundef nonnull %4, ptr noundef nonnull %30) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  %90 = load i32, ptr %13, align 4, !tbaa !117
  %91 = sitofp i32 %90 to float
  %92 = call float @llvm.fmuladd.f32(float %22, float 5.000000e-01, float %91)
  %93 = fptosi float %92 to i32
  store i32 %93, ptr %13, align 4, !tbaa !117
  %94 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 3
  %95 = load i32, ptr %94, align 4, !tbaa !119
  %96 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !118
  %98 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 7
  %99 = load i32, ptr %98, align 4, !tbaa !105
  %100 = add i32 %97, %99
  %101 = sub i32 %95, %100
  %102 = sitofp i32 %101 to float
  %103 = sitofp i32 %95 to float
  %104 = call float @llvm.fmuladd.f32(float %102, float -5.000000e-01, float %103)
  %105 = fptosi float %104 to i32
  store i32 %105, ptr %94, align 4, !tbaa !119
  %106 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 8
  %107 = load i32, ptr %106, align 4, !tbaa !106
  %108 = sub nsw i32 %105, %107
  store i32 %108, ptr %96, align 4, !tbaa !118
  %109 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 6
  %110 = load i32, ptr %109, align 4, !tbaa !69
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %178

112:                                              ; preds = %34
  %113 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 1
  %114 = getelementptr inbounds %struct.uiFontStyle, ptr %17, i64 0, i32 1
  %115 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 1
  %116 = getelementptr inbounds %struct.uiFontStyle, ptr %16, i64 0, i32 6
  %117 = getelementptr inbounds %struct.uiFontStyle, ptr %16, i64 0, i32 11
  %118 = getelementptr inbounds %struct.uiFontStyle, ptr %16, i64 0, i32 8
  %119 = getelementptr inbounds %struct.uiFontStyle, ptr %16, i64 0, i32 7
  %120 = getelementptr inbounds %struct.uiFontStyle, ptr %16, i64 0, i32 10
  %121 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 3
  %122 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 4
  %123 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 1
  br label %124

124:                                              ; preds = %112, %168
  %125 = phi i64 [ 0, %112 ], [ %174, %168 ]
  %126 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 5, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !73
  switch i32 %127, label %162 [
    i32 1, label %128
    i32 2, label %146
  ]

128:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %16, ptr noundef nonnull align 4 dereferenceable(32) %115, i64 32, i1 false), !tbaa.struct !96
  store i16 1, ptr %116, align 4, !tbaa !129
  %129 = load float, ptr %14, align 16, !tbaa !98
  %130 = load float, ptr %39, align 4, !tbaa !98
  %131 = fmul float %130, 0x3FE2C8B440000000
  %132 = call float @llvm.fmuladd.f32(float %129, float 0x3FD322D0E0000000, float %131)
  %133 = load float, ptr %42, align 8, !tbaa !98
  %134 = call float @llvm.fmuladd.f32(float %133, float 0x3FBD2F1AA0000000, float %132)
  store float %134, ptr %117, align 4, !tbaa !130
  store i16 0, ptr %118, align 4, !tbaa !131
  store i16 0, ptr %119, align 2, !tbaa !132
  store float 1.000000e+00, ptr %120, align 4, !tbaa !133
  call void @uiStyleFontSet(ptr noundef nonnull %16) #17
  call void @glColor3fv(ptr noundef nonnull %14) #17
  call void @uiStyleFontDraw(ptr noundef nonnull %16, ptr noundef nonnull %13, ptr noundef nonnull %121) #17
  %135 = load i16, ptr %16, align 4, !tbaa !134
  %136 = sext i16 %135 to i32
  %137 = call float @BLF_width(i32 noundef %136, ptr noundef nonnull %121, i64 noundef 512) #17
  %138 = load i32, ptr %13, align 4, !tbaa !117
  %139 = sitofp i32 %138 to float
  %140 = fadd float %137, %139
  %141 = fptosi float %140 to i32
  store i32 %141, ptr %13, align 4, !tbaa !117
  call void @glColor3fv(ptr noundef nonnull %27) #17
  call void @uiStyleFontDraw(ptr noundef nonnull %115, ptr noundef nonnull %13, ptr noundef nonnull %122) #17
  %142 = load i32, ptr %13, align 4, !tbaa !117
  %143 = sitofp i32 %142 to float
  %144 = fsub float %143, %137
  %145 = fptosi float %144 to i32
  store i32 %145, ptr %13, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #17
  br label %168

146:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %17, ptr noundef nonnull align 4 dereferenceable(32) %113, i64 32, i1 false), !tbaa.struct !96
  %147 = load i32, ptr @blf_mono_font, align 4, !tbaa !53
  %148 = trunc i32 %147 to i16
  store i16 %148, ptr %17, align 4, !tbaa !134
  call void @uiStyleFontSet(ptr noundef nonnull %17) #17
  %149 = load i16, ptr %17, align 4, !tbaa !134
  %150 = sext i16 %149 to i32
  %151 = load i16, ptr %114, align 2, !tbaa !135
  %152 = sitofp i16 %151 to float
  %153 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !101
  %154 = fmul float %153, %152
  %155 = fptosi float %154 to i32
  %156 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !102
  call void @BLF_size(i32 noundef %150, i32 noundef %155, i32 noundef %156) #17
  %157 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 5, i64 %125, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !76
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 %159
  call void @glColor3fv(ptr noundef nonnull %160) #17
  %161 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 2, i64 %125
  call void @uiStyleFontDraw(ptr noundef nonnull %17, ptr noundef nonnull %13, ptr noundef nonnull %161) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #17
  br label %168

162:                                              ; preds = %124
  call void @uiStyleFontSet(ptr noundef nonnull %123) #17
  %163 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 5, i64 %125, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !76
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [6 x [3 x float]], ptr %14, i64 0, i64 %165
  call void @glColor3fv(ptr noundef nonnull %166) #17
  %167 = getelementptr inbounds %struct.uiTooltipData, ptr %24, i64 0, i32 2, i64 %125
  call void @uiStyleFontDraw(ptr noundef nonnull %123, ptr noundef nonnull %13, ptr noundef nonnull %167) #17
  br label %168

168:                                              ; preds = %146, %162, %128
  %169 = load i32, ptr %106, align 4, !tbaa !106
  %170 = load i32, ptr %94, align 4, !tbaa !119
  %171 = sub nsw i32 %170, %169
  store i32 %171, ptr %94, align 4, !tbaa !119
  %172 = load i32, ptr %96, align 4, !tbaa !118
  %173 = sub nsw i32 %172, %169
  store i32 %173, ptr %96, align 4, !tbaa !118
  %174 = add nuw nsw i64 %125, 1
  %175 = load i32, ptr %109, align 4, !tbaa !69
  %176 = sext i32 %175 to i64
  %177 = icmp slt i64 %174, %176
  br i1 %177, label %124, label %178, !llvm.loop !136

178:                                              ; preds = %168, %34
  br i1 %32, label %180, label %179

179:                                              ; preds = %178
  call void @glEnable(i32 noundef 32925) #17
  br label %180

180:                                              ; preds = %179, %178
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ui_tooltip_region_free_cb(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %4(ptr noundef %3) #17
  store ptr null, ptr %2, align 8, !tbaa !104
  ret void
}

declare void @ui_fontscale(ptr noundef, float noundef) local_unnamed_addr #1

declare void @uiStyleFontSet(ptr noundef) local_unnamed_addr #1

declare float @BLF_height_max(i32 noundef) local_unnamed_addr #1

declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ui_block_to_window_fl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @BLI_rctf_translate(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @BLI_rcti_rctf_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #1

declare void @BLI_rcti_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @UI_ThemeMenuShadowWidth() local_unnamed_addr #1

declare void @ED_region_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ui_tooltip_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #17
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @wm_draw_region_clear(ptr noundef nonnull %4, ptr noundef %1) #17
  br label %7

7:                                                ; preds = %2, %6
  tail call void @ED_region_exit(ptr noundef %0, ptr noundef %1) #17
  tail call void @BKE_area_region_free(ptr noundef null, ptr noundef %1) #17
  %8 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 4
  tail call void @BLI_freelinkN(ptr noundef nonnull %8, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @uiSearchItemAdd(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @autocomplete_do_name(ptr noundef nonnull %6, ptr noundef %1) #17
  br label %67

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %11, %2
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !140
  %18 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 4
  store i32 %17, ptr %18, align 8, !tbaa !141
  br label %19

19:                                               ; preds = %15, %13
  %20 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !140
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !140
  br label %67

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !140
  %26 = load i32, ptr %0, align 8, !tbaa !142
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 5
  store i32 1, ptr %29, align 4, !tbaa !143
  br label %67

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !141
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = add nsw i32 %32, -1
  store i32 %35, ptr %31, align 8, !tbaa !141
  br label %67

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !144
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = sext i32 %25 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !145
  %46 = sext i32 %45 to i64
  %47 = tail call ptr @BLI_strncpy(ptr noundef %43, ptr noundef %1, i64 noundef %46) #17
  br label %48

48:                                               ; preds = %40, %36
  %49 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !146
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %24, align 4, !tbaa !140
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %50, i64 %54
  store ptr %2, ptr %55, align 8, !tbaa !52
  br label %56

56:                                               ; preds = %52, %48
  %57 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !147
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %24, align 4, !tbaa !140
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %58, i64 %62
  store i32 %3, ptr %63, align 4, !tbaa !53
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, ptr %24, align 4, !tbaa !140
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %24, align 4, !tbaa !140
  br label %67

67:                                               ; preds = %64, %34, %28, %19, %8
  %68 = phi i8 [ 1, %8 ], [ 1, %19 ], [ 0, %28 ], [ 1, %34 ], [ 1, %64 ]
  ret i8 %68
}

declare void @autocomplete_do_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @uiSearchBoxHeight() local_unnamed_addr #7 {
  %1 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %2 = sext i16 %1 to i32
  %3 = mul nsw i32 %2, 10
  %4 = add nsw i32 %3, 16
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @uiSearchBoxWidth() local_unnamed_addr #7 {
  %1 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %2 = sext i16 %1 to i32
  %3 = mul nsw i32 %2, 12
  ret i32 %3
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @uiSearchItemFindIndex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !140
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ 0, %6 ], [ %17, %16 ]
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %21, label %10, !llvm.loop !148

19:                                               ; preds = %10
  %20 = trunc i64 %11 to i32
  br label %21

21:                                               ; preds = %19, %16, %2
  %22 = phi i32 [ -1, %2 ], [ %20, %19 ], [ -1, %16 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ui_searchbox_find_index(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 2, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !140
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 2, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !144
  %11 = zext nneg i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ 0, %8 ], [ %19, %18 ]
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %15) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %11
  br i1 %20, label %23, label %12, !llvm.loop !148

21:                                               ; preds = %12
  %22 = trunc i64 %13 to i32
  br label %23

23:                                               ; preds = %21, %18, %2
  %24 = phi i32 [ -1, %2 ], [ %22, %21 ], [ -1, %18 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ui_searchbox_inside(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !124
  %8 = sub nsw i32 %1, %7
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !126
  %11 = sub nsw i32 %2, %10
  %12 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %5, i32 noundef %8, i32 noundef %11) #17
  ret i8 %12
}

declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ui_searchbox_apply(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 29
  store ptr null, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !150
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %42, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 2, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 6
  %16 = load i8, ptr %15, align 2, !tbaa !153
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef 124) #18
  br label %20

20:                                               ; preds = %9, %18
  %21 = phi ptr [ %19, %18 ], [ null, %9 ]
  %22 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %23 = load ptr, ptr %22, align 8, !tbaa !154
  %24 = icmp eq ptr %21, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = ptrtoint ptr %21 to i64
  %27 = ptrtoint ptr %14 to i64
  %28 = sub i64 %26, %27
  br label %33

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 2, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !155
  %32 = sext i32 %31 to i64
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i64 [ %28, %25 ], [ %32, %29 ]
  %35 = tail call ptr @BLI_strncpy(ptr noundef %23, ptr noundef %14, i64 noundef %34) #17
  %36 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 2, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !156
  %38 = load i32, ptr %6, align 8, !tbaa !150
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  store ptr %41, ptr %5, align 8, !tbaa !149
  br label %49

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !75
  %45 = icmp eq i32 %44, 26624
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %48 = load ptr, ptr %47, align 8, !tbaa !154
  store i8 0, ptr %48, align 1, !tbaa !56
  br label %49

49:                                               ; preds = %42, %46, %33
  %50 = phi i8 [ 1, %33 ], [ 1, %46 ], [ 0, %42 ]
  ret i8 %50
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @ui_searchbox_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rcti, align 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %10 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !157
  %12 = sext i16 %11 to i32
  store i32 %12, ptr %5, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %13 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !158
  %15 = sext i16 %14 to i32
  store i32 %15, ptr %6, align 4, !tbaa !53
  %16 = icmp eq i16 %11, 14
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  call void @ui_pan_to_scroll(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  br label %18

18:                                               ; preds = %17, %4
  %19 = load i32, ptr %5, align 4, !tbaa !53
  switch i32 %19, label %117 [
    i32 10, label %20
    i32 140, label %20
    i32 11, label %21
    i32 138, label %21
    i32 4, label %22
  ]

20:                                               ; preds = %18, %18
  call fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -1)
  br label %117

21:                                               ; preds = %18, %18
  call fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  br label %117

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %24 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !114
  %26 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !159
  %28 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %23, i32 noundef %25, i32 noundef %27) #17
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %117, label %30

30:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  %31 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 2, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !160
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %116

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 5
  %36 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  %37 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 8
  %38 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  %39 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  %40 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 7
  %41 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  %42 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  %43 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  %44 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  %45 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  %46 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  %47 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  %48 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  %49 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  %50 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %51 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 3
  br label %52

52:                                               ; preds = %34, %112
  %53 = phi i32 [ 0, %34 ], [ %113, %112 ]
  %54 = load i8, ptr %35, align 1, !tbaa !161
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %36, align 4, !tbaa !116
  %58 = load i32, ptr %9, align 4, !tbaa !117
  %59 = sub nsw i32 %57, %58
  %60 = load i32, ptr %37, align 4, !tbaa !162
  %61 = sdiv i32 %59, %60
  %62 = load i32, ptr %38, align 4, !tbaa !119
  %63 = load i32, ptr %39, align 4, !tbaa !118
  %64 = add i32 %62, -16
  %65 = sub i32 %64, %63
  %66 = load i32, ptr %40, align 8, !tbaa !163
  %67 = sdiv i32 %65, %66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !128
  %68 = srem i32 %53, %60
  %69 = sdiv i32 %53, %60
  %70 = mul nsw i32 %68, %61
  %71 = load i32, ptr %7, align 4, !tbaa !117
  %72 = add nsw i32 %71, %70
  store i32 %72, ptr %7, align 4, !tbaa !117
  %73 = add nsw i32 %72, %61
  store i32 %73, ptr %41, align 4, !tbaa !116
  %74 = load i32, ptr %38, align 4, !tbaa !164
  %75 = mul nsw i32 %69, %67
  %76 = sub i32 %74, %75
  %77 = add i32 %76, -8
  store i32 %77, ptr %42, align 4, !tbaa !119
  %78 = sub nsw i32 %77, %67
  store i32 %78, ptr %43, align 4, !tbaa !118
  br label %98

79:                                               ; preds = %52
  %80 = load i32, ptr %44, align 4, !tbaa !119
  %81 = load i32, ptr %45, align 4, !tbaa !118
  %82 = add i32 %80, -16
  %83 = sub i32 %82, %81
  %84 = sdiv i32 %83, 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !128
  %85 = load i32, ptr %9, align 8, !tbaa !165
  %86 = sitofp i32 %85 to float
  %87 = fadd float %86, 3.000000e+00
  %88 = fptosi float %87 to i32
  store i32 %88, ptr %7, align 4, !tbaa !117
  %89 = load i32, ptr %46, align 4, !tbaa !166
  %90 = sitofp i32 %89 to float
  %91 = fadd float %90, -3.000000e+00
  %92 = fptosi float %91 to i32
  store i32 %92, ptr %47, align 4, !tbaa !116
  %93 = load i32, ptr %44, align 4, !tbaa !164
  %94 = mul nsw i32 %84, %53
  %95 = sub i32 %93, %94
  %96 = add i32 %95, -8
  store i32 %96, ptr %48, align 4, !tbaa !119
  %97 = sub nsw i32 %96, %84
  store i32 %97, ptr %49, align 4, !tbaa !118
  br label %98

98:                                               ; preds = %56, %79
  %99 = load i32, ptr %24, align 4, !tbaa !114
  %100 = load i32, ptr %23, align 8, !tbaa !124
  %101 = sub nsw i32 %99, %100
  %102 = load i32, ptr %26, align 8, !tbaa !159
  %103 = load i32, ptr %50, align 8, !tbaa !126
  %104 = sub nsw i32 %102, %103
  %105 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %7, i32 noundef %101, i32 noundef %104) #17
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %98
  %108 = load i32, ptr %51, align 8, !tbaa !150
  %109 = icmp eq i32 %108, %53
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 3
  store i32 %53, ptr %111, align 8, !tbaa !150
  call fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  br label %116

112:                                              ; preds = %98, %107
  %113 = add nuw nsw i32 %53, 1
  %114 = load i32, ptr %31, align 4, !tbaa !160
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %52, label %116, !llvm.loop !167

116:                                              ; preds = %112, %30, %110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  br label %117

117:                                              ; preds = %22, %116, %18, %21, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret void
}

declare void @ui_pan_to_scroll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !150
  %9 = add nsw i32 %8, %3
  store i32 %9, ptr %7, align 8, !tbaa !150
  %10 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !160
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, ptr %7, align 8, !tbaa !150
  br label %63

14:                                               ; preds = %4
  %15 = icmp slt i32 %9, %11
  br i1 %15, label %38, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !168
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !169
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !169
  %24 = add nsw i32 %11, -1
  store i32 %24, ptr %7, align 8, !tbaa !150
  store i32 0, ptr %10, align 4, !tbaa !160
  store i32 0, ptr %17, align 4, !tbaa !168
  %25 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 4
  store i32 %23, ptr %25, align 8, !tbaa !170
  %26 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 35
  %27 = load ptr, ptr %26, align 8, !tbaa !171
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2
  %31 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 36
  %32 = load ptr, ptr %31, align 8, !tbaa !172
  %33 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %34 = load ptr, ptr %33, align 8, !tbaa !154
  tail call void %27(ptr noundef %0, ptr noundef %32, ptr noundef %34, ptr noundef nonnull %30) #17
  br label %35

35:                                               ; preds = %20, %29
  tail call fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  tail call void @ED_region_tag_redraw(ptr noundef %1) #17
  br label %63

36:                                               ; preds = %16
  %37 = add nsw i32 %11, -1
  store i32 %37, ptr %7, align 8, !tbaa !150
  br label %63

38:                                               ; preds = %14
  %39 = icmp slt i32 %9, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !169
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %40
  %45 = add nsw i32 %42, -1
  store i32 %45, ptr %41, align 4, !tbaa !169
  store i32 0, ptr %7, align 8, !tbaa !150
  store i32 0, ptr %10, align 4, !tbaa !160
  %46 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 5
  store i32 0, ptr %46, align 4, !tbaa !168
  %47 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 4
  store i32 %45, ptr %47, align 8, !tbaa !170
  %48 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 35
  %49 = load ptr, ptr %48, align 8, !tbaa !171
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2
  %53 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 36
  %54 = load ptr, ptr %53, align 8, !tbaa !172
  %55 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %56 = load ptr, ptr %55, align 8, !tbaa !154
  tail call void %49(ptr noundef %0, ptr noundef %54, ptr noundef %56, ptr noundef nonnull %52) #17
  br label %57

57:                                               ; preds = %44, %51
  tail call fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  tail call void @ED_region_tag_redraw(ptr noundef %1) #17
  br label %63

58:                                               ; preds = %40
  %59 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !75
  %61 = icmp eq i32 %60, 26624
  %62 = sext i1 %61 to i32
  store i32 %62, ptr %7, align 8, !tbaa !150
  br label %63

63:                                               ; preds = %36, %35, %57, %58, %38, %13
  tail call void @ED_region_tag_redraw(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_searchbox_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 1
  store i32 0, ptr %8, align 4, !tbaa !160
  %9 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 5
  store i32 0, ptr %9, align 4, !tbaa !168
  %10 = icmp eq i8 %3, 0
  %11 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 3
  %12 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 4
  br i1 %10, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, ptr %11, align 4, !tbaa !169
  store i32 %14, ptr %12, align 8, !tbaa !170
  br label %50

15:                                               ; preds = %4
  store i32 0, ptr %11, align 4, !tbaa !169
  store i32 0, ptr %12, align 8, !tbaa !170
  %16 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 3
  store i32 -1, ptr %16, align 8, !tbaa !150
  %17 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 35
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 29
  %22 = load ptr, ptr %21, align 8, !tbaa !149
  %23 = icmp eq ptr %22, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 10
  store ptr %22, ptr %25, align 8, !tbaa !173
  %26 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 36
  %27 = load ptr, ptr %26, align 8, !tbaa !172
  %28 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %29 = load ptr, ptr %28, align 8, !tbaa !154
  tail call void %18(ptr noundef %0, ptr noundef %27, ptr noundef %29, ptr noundef nonnull %7) #17
  store ptr null, ptr %25, align 8, !tbaa !173
  %30 = load i32, ptr %8, align 4, !tbaa !160
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %24
  %33 = load i32, ptr %12, align 8, !tbaa !170
  %34 = load i32, ptr %7, align 8, !tbaa !174
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 %33, ptr %16, align 8, !tbaa !150
  store i32 0, ptr %12, align 8, !tbaa !170
  br label %48

37:                                               ; preds = %32
  %38 = sub nsw i32 %30, %33
  %39 = icmp sgt i32 %38, %34
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = sub i32 %33, %30
  %42 = add nsw i32 %41, %34
  store i32 %42, ptr %16, align 8, !tbaa !150
  %43 = sub nsw i32 %30, %34
  store i32 %43, ptr %12, align 8, !tbaa !170
  br label %48

44:                                               ; preds = %37
  %45 = sdiv i32 %34, -2
  %46 = add i32 %45, %33
  store i32 %46, ptr %12, align 8, !tbaa !170
  %47 = sdiv i32 %34, 2
  store i32 %47, ptr %16, align 8, !tbaa !150
  br label %48

48:                                               ; preds = %36, %44, %40, %24
  %49 = load i32, ptr %12, align 8, !tbaa !170
  store i32 %49, ptr %11, align 4, !tbaa !169
  store i32 0, ptr %8, align 4, !tbaa !160
  br label %50

50:                                               ; preds = %15, %20, %48, %13
  %51 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 35
  %52 = load ptr, ptr %51, align 8, !tbaa !171
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 36
  %56 = load ptr, ptr %55, align 8, !tbaa !172
  %57 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %58 = load ptr, ptr %57, align 8, !tbaa !154
  tail call void %52(ptr noundef %0, ptr noundef %56, ptr noundef %58, ptr noundef nonnull %7) #17
  br label %59

59:                                               ; preds = %54, %50
  br i1 %10, label %110, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !150
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %110

64:                                               ; preds = %60
  %65 = load i32, ptr %8, align 4, !tbaa !160
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !152
  %70 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 6
  %71 = load i8, ptr %70, align 2, !tbaa !153
  %72 = icmp eq i8 %71, 0
  %73 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %74 = load ptr, ptr %73, align 8, !tbaa !154
  %75 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 2
  %76 = zext nneg i32 %65 to i64
  br label %77

77:                                               ; preds = %67, %99
  %78 = phi i64 [ 0, %67 ], [ %100, %99 ]
  %79 = getelementptr inbounds ptr, ptr %69, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  br i1 %72, label %83, label %81

81:                                               ; preds = %77
  %82 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %80, i32 noundef 124) #18
  br label %83

83:                                               ; preds = %77, %81
  %84 = phi ptr [ %82, %81 ], [ null, %77 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = ptrtoint ptr %84 to i64
  %88 = ptrtoint ptr %80 to i64
  %89 = sub i64 %87, %88
  br label %93

90:                                               ; preds = %83
  %91 = load i32, ptr %75, align 8, !tbaa !155
  %92 = sext i32 %91 to i64
  br label %93

93:                                               ; preds = %90, %86
  %94 = phi i64 [ %89, %86 ], [ %92, %90 ]
  %95 = tail call i32 @strncmp(ptr noundef %74, ptr noundef %80, i64 noundef %94) #18
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = trunc i64 %78 to i32
  store i32 %98, ptr %61, align 8, !tbaa !150
  br label %102

99:                                               ; preds = %93
  %100 = add nuw nsw i64 %78, 1
  %101 = icmp eq i64 %100, %76
  br i1 %101, label %102, label %77, !llvm.loop !175

102:                                              ; preds = %99, %64, %97
  %103 = icmp eq i32 %65, 1
  br i1 %103, label %104, label %110

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %106 = load ptr, ptr %105, align 8, !tbaa !154
  %107 = load i8, ptr %106, align 1, !tbaa !56
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i32 0, ptr %61, align 8, !tbaa !150
  br label %110

110:                                              ; preds = %102, %104, %109, %60, %59
  tail call fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  tail call void @ED_region_tag_redraw(ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @ui_searchbox_autocomplete(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i8, ptr %3, align 1, !tbaa !56
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = tail call i32 @ui_get_but_string_max_length(ptr noundef %2) #17
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @autocomplete_begin(ptr noundef nonnull %3, i64 noundef %11) #17
  %13 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 2
  %14 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 2, i32 9
  store ptr %12, ptr %14, align 8, !tbaa !176
  %15 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 35
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 36
  %18 = load ptr, ptr %17, align 8, !tbaa !172
  %19 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %20 = load ptr, ptr %19, align 8, !tbaa !154
  tail call void %16(ptr noundef %0, ptr noundef %18, ptr noundef %20, ptr noundef nonnull %13) #17
  %21 = load ptr, ptr %14, align 8, !tbaa !176
  %22 = tail call i32 @autocomplete_end(ptr noundef %21, ptr noundef nonnull %3) #17
  store ptr null, ptr %14, align 8, !tbaa !176
  br label %23

23:                                               ; preds = %7, %4
  %24 = phi i32 [ %22, %7 ], [ 0, %4 ]
  ret i32 %24
}

declare ptr @autocomplete_begin(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ui_get_but_string_max_length(ptr noundef) local_unnamed_addr #1

declare i32 @autocomplete_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ui_searchbox_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rctf, align 4
  %5 = alloca %struct.rcti, align 4
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %7 = tail call ptr @UI_GetStyle() #17
  %8 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 12
  %11 = load float, ptr %10, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %12 = tail call ptr @CTX_wm_screen(ptr noundef %0) #17
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %14 = tail call ptr %13(i64 noundef 384, ptr noundef nonnull @.str.30) #17
  %15 = getelementptr inbounds %struct.bScreen, ptr %12, i64 0, i32 4
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %14) #17
  %16 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 8
  store i16 3, ptr %16, align 2, !tbaa !87
  %17 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 9
  store i16 7, ptr %17, align 8, !tbaa !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) @ui_searchbox_create.type, i8 0, i64 184, i1 false)
  store ptr @ui_searchbox_region_draw_cb, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_searchbox_create.type, i64 0, i32 5), align 8, !tbaa !91
  store ptr @ui_searchbox_region_free_cb, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_searchbox_create.type, i64 0, i32 7), align 8, !tbaa !93
  store i32 3, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_searchbox_create.type, i64 0, i32 2), align 8, !tbaa !94
  %18 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 20
  store ptr @ui_searchbox_create.type, ptr %18, align 8, !tbaa !95
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %20 = tail call ptr %19(i64 noundef 128, ptr noundef nonnull @.str.14) #17
  %21 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 1
  %22 = getelementptr inbounds %struct.uiStyle, ptr %7, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %22, i64 32, i1 false), !tbaa.struct !96
  %23 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 1, i32 9
  store i16 1, ptr %23, align 2, !tbaa !177
  %24 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 1, i32 1
  tail call void @ui_fontscale(ptr noundef nonnull %24, float noundef %11) #17
  tail call void @uiStyleFontSet(ptr noundef nonnull %21) #17
  %25 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 30
  store ptr %20, ptr %25, align 8, !tbaa !104
  %26 = load ptr, ptr %8, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.uiBlock, ptr %26, i64 0, i32 27
  %28 = load i32, ptr %27, align 8, !tbaa !178
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 4
  store i8 1, ptr %32, align 4, !tbaa !179
  br label %33

33:                                               ; preds = %31, %3
  %34 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 24
  %35 = load float, ptr %34, align 8, !tbaa !180
  %36 = fcmp ogt float %35, 0.000000e+00
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 25
  %39 = load float, ptr %38, align 4, !tbaa !181
  %40 = fcmp ogt float %39, 0.000000e+00
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 5
  store i8 1, ptr %42, align 1, !tbaa !161
  %43 = fptosi float %35 to i32
  %44 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 7
  store i32 %43, ptr %44, align 8, !tbaa !163
  %45 = fptosi float %39 to i32
  %46 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 8
  store i32 %45, ptr %46, align 4, !tbaa !162
  br label %47

47:                                               ; preds = %41, %37, %33
  %48 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 6
  store i8 1, ptr %52, align 2, !tbaa !153
  br label %53

53:                                               ; preds = %51, %47
  br i1 %30, label %103, label %54

54:                                               ; preds = %53
  %55 = tail call i32 @UI_ThemeMenuShadowWidth() #17
  %56 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3
  %57 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, ptr noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false), !tbaa.struct !128
  store i32 %55, ptr %20, align 8, !tbaa !165
  %58 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !116
  %60 = load i32, ptr %56, align 4, !tbaa !117
  %61 = add i32 %55, %60
  %62 = sub i32 %59, %61
  %63 = getelementptr inbounds %struct.rcti, ptr %20, i64 0, i32 1
  store i32 %62, ptr %63, align 4, !tbaa !166
  %64 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !101
  %65 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !102
  %66 = sitofp i32 %65 to float
  %67 = fmul float %64, %66
  %68 = fdiv float %67, 7.200000e+01
  %69 = fmul float %68, 8.000000e+00
  %70 = fptosi float %69 to i32
  %71 = getelementptr inbounds %struct.rcti, ptr %20, i64 0, i32 2
  store i32 %70, ptr %71, align 8, !tbaa !182
  %72 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !119
  %74 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !118
  %76 = sub nsw i32 %73, %75
  %77 = sitofp i32 %76 to float
  %78 = tail call float @llvm.fmuladd.f32(float %68, float -8.000000e+00, float %77)
  %79 = fptosi float %78 to i32
  %80 = getelementptr inbounds %struct.rcti, ptr %20, i64 0, i32 3
  store i32 %79, ptr %80, align 4, !tbaa !164
  %81 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 3
  %82 = load float, ptr %81, align 4, !tbaa !110
  %83 = load ptr, ptr %8, align 8, !tbaa !46
  %84 = getelementptr inbounds %struct.uiBlock, ptr %83, i64 0, i32 11, i32 2
  %85 = load float, ptr %84, align 4, !tbaa !111
  %86 = getelementptr inbounds %struct.uiBlock, ptr %83, i64 0, i32 11, i32 3
  %87 = load float, ptr %86, align 4, !tbaa !110
  %88 = fadd float %85, %87
  %89 = fmul float %88, 5.000000e-01
  %90 = fcmp olt float %82, %89
  %91 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 2
  %92 = load float, ptr %91, align 4, !tbaa !111
  br i1 %90, label %93, label %98

93:                                               ; preds = %54
  %94 = fsub float %82, %92
  %95 = sitofp i32 %70 to float
  %96 = fadd float %94, %95
  %97 = fptosi float %96 to i32
  store i32 %97, ptr %71, align 8, !tbaa !182
  br label %220

98:                                               ; preds = %54
  %99 = sitofp i32 %79 to float
  %100 = fsub float %92, %82
  %101 = fadd float %100, %99
  %102 = fptosi float %101 to i32
  store i32 %102, ptr %80, align 4, !tbaa !164
  br label %220

103:                                              ; preds = %53
  %104 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %105 = sext i16 %104 to i32
  %106 = mul nsw i32 %105, 12
  %107 = tail call i32 @UI_ThemeMenuShadowWidth() #17
  %108 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %109 = load float, ptr %108, align 8, !tbaa !183
  %110 = fadd float %109, -5.000000e+00
  store float %110, ptr %4, align 4, !tbaa !107
  %111 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 1
  %112 = load float, ptr %111, align 4, !tbaa !184
  %113 = fadd float %112, 5.000000e+00
  %114 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  store float %113, ptr %114, align 4, !tbaa !108
  %115 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 2
  %116 = load float, ptr %115, align 8, !tbaa !109
  %117 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  store float %116, ptr %117, align 4, !tbaa !110
  %118 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %119 = sext i16 %118 to i32
  %120 = mul nsw i32 %119, 10
  %121 = add nsw i32 %120, 16
  %122 = sitofp i32 %121 to float
  %123 = fsub float %116, %122
  %124 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  store float %123, ptr %124, align 4, !tbaa !111
  %125 = load ptr, ptr %8, align 8, !tbaa !46
  %126 = getelementptr inbounds %struct.uiBlock, ptr %125, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !185
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %103
  %130 = getelementptr inbounds %struct.Panel, ptr %127, i64 0, i32 7
  %131 = load i32, ptr %130, align 8, !tbaa !186
  %132 = sitofp i32 %131 to float
  br label %133

133:                                              ; preds = %103, %129
  %134 = phi float [ %132, %129 ], [ 0.000000e+00, %103 ]
  br i1 %128, label %139, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.Panel, ptr %127, i64 0, i32 8
  %137 = load i32, ptr %136, align 4, !tbaa !188
  %138 = sitofp i32 %137 to float
  br label %139

139:                                              ; preds = %133, %135
  %140 = phi float [ %138, %135 ], [ 0.000000e+00, %133 ]
  call void @BLI_rctf_translate(ptr noundef nonnull %4, float noundef %134, float noundef %140) #17
  %141 = load float, ptr %114, align 4, !tbaa !108
  %142 = load float, ptr %4, align 4, !tbaa !107
  %143 = fsub float %141, %142
  %144 = sitofp i32 %106 to float
  %145 = fcmp olt float %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = fadd float %142, %144
  store float %147, ptr %114, align 4, !tbaa !108
  br label %148

148:                                              ; preds = %146, %139
  call void @BLI_rcti_rctf_copy(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %149 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %150 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %151 = load float, ptr %150, align 8, !tbaa !189
  %152 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %153 = load float, ptr %152, align 4, !tbaa !190
  %154 = fcmp une float %151, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  call void @UI_view2d_view_to_region_rcti(ptr noundef nonnull %149, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  br label %156

156:                                              ; preds = %155, %148
  %157 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %158 = load i32, ptr %157, align 8, !tbaa !124
  %159 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !126
  call void @BLI_rcti_translate(ptr noundef nonnull %5, i32 noundef %158, i32 noundef %160) #17
  %161 = call i32 @WM_window_pixels_x(ptr noundef %6) #17
  %162 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !116
  %164 = icmp sgt i32 %163, %161
  br i1 %164, label %165, label %173

165:                                              ; preds = %156
  %166 = load i32, ptr %5, align 4, !tbaa !117
  %167 = add nsw i32 %166, %161
  %168 = icmp sgt i32 %163, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i32 %161, ptr %162, align 4, !tbaa !116
  store i32 0, ptr %5, align 4, !tbaa !117
  br label %173

170:                                              ; preds = %165
  %171 = sub i32 %161, %163
  %172 = add i32 %171, %166
  store i32 %172, ptr %5, align 4, !tbaa !117
  store i32 %161, ptr %162, align 4, !tbaa !116
  br label %173

173:                                              ; preds = %169, %170, %156
  %174 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %175 = load i32, ptr %174, align 4, !tbaa !118
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %198

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 3
  %179 = load float, ptr %178, align 4, !tbaa !191
  %180 = fadd float %140, %179
  %181 = fptosi float %180 to i32
  %182 = load float, ptr %150, align 8, !tbaa !189
  %183 = load float, ptr %152, align 4, !tbaa !190
  %184 = fcmp une float %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = sitofp i32 %181 to float
  %187 = call float @UI_view2d_view_to_region_y(ptr noundef nonnull %149, float noundef %186) #17
  %188 = fptosi float %187 to i32
  br label %189

189:                                              ; preds = %185, %177
  %190 = phi i32 [ %188, %185 ], [ %181, %177 ]
  %191 = load i32, ptr %159, align 8, !tbaa !126
  %192 = add nsw i32 %191, %190
  %193 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %194 = load i32, ptr %193, align 4, !tbaa !119
  %195 = load i32, ptr %174, align 4, !tbaa !118
  %196 = add i32 %192, %194
  %197 = sub i32 %196, %195
  store i32 %197, ptr %193, align 4, !tbaa !119
  store i32 %192, ptr %174, align 4, !tbaa !118
  br label %198

198:                                              ; preds = %189, %173
  store i32 %107, ptr %20, align 8, !tbaa !165
  %199 = load i32, ptr %162, align 4, !tbaa !116
  %200 = load i32, ptr %5, align 4, !tbaa !117
  %201 = add i32 %199, %107
  %202 = sub i32 %201, %200
  %203 = getelementptr inbounds %struct.rcti, ptr %20, i64 0, i32 1
  store i32 %202, ptr %203, align 4, !tbaa !166
  %204 = getelementptr inbounds %struct.rcti, ptr %20, i64 0, i32 2
  store i32 %107, ptr %204, align 8, !tbaa !182
  %205 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %206 = load i32, ptr %205, align 4, !tbaa !119
  %207 = load i32, ptr %174, align 4, !tbaa !118
  %208 = add i32 %206, %107
  %209 = sub i32 %208, %207
  %210 = getelementptr inbounds %struct.rcti, ptr %20, i64 0, i32 3
  store i32 %209, ptr %210, align 4, !tbaa !164
  %211 = sub nsw i32 %200, %107
  %212 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3
  store i32 %211, ptr %212, align 8, !tbaa !124
  %213 = load i32, ptr %162, align 4, !tbaa !116
  %214 = add nsw i32 %213, %107
  %215 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 1
  store i32 %214, ptr %215, align 4, !tbaa !125
  %216 = sub nsw i32 %207, %107
  %217 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 2
  store i32 %216, ptr %217, align 8, !tbaa !126
  %218 = load i32, ptr %205, align 4, !tbaa !119
  %219 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 3, i32 3
  store i32 %218, ptr %219, align 4, !tbaa !127
  br label %220

220:                                              ; preds = %93, %98, %198
  call void @ED_region_init(ptr noundef %0, ptr noundef %14) #17
  call void @ED_region_tag_redraw(ptr noundef %14) #17
  %221 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 5
  %222 = load i8, ptr %221, align 1, !tbaa !161
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 7
  %226 = load i32, ptr %225, align 8, !tbaa !163
  %227 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 8
  %228 = load i32, ptr %227, align 4, !tbaa !162
  %229 = mul nsw i32 %228, %226
  br label %230

230:                                              ; preds = %220, %224
  %231 = phi i32 [ %229, %224 ], [ 10, %220 ]
  %232 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 2
  store i32 %231, ptr %232, align 8, !tbaa !174
  %233 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 21
  %234 = load float, ptr %233, align 4, !tbaa !192
  %235 = fptosi float %234 to i32
  %236 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 2
  %237 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 2, i32 2
  store i32 %235, ptr %237, align 8, !tbaa !155
  %238 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 2, i32 1
  store i32 0, ptr %238, align 4, !tbaa !160
  %239 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %240 = load i32, ptr %236, align 8, !tbaa !174
  %241 = sext i32 %240 to i64
  %242 = shl nsw i64 %241, 3
  %243 = call ptr %239(i64 noundef %242, ptr noundef nonnull @.str.15) #17
  %244 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 2, i32 6
  store ptr %243, ptr %244, align 8, !tbaa !152
  %245 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %246 = load i32, ptr %236, align 8, !tbaa !174
  %247 = sext i32 %246 to i64
  %248 = shl nsw i64 %247, 3
  %249 = call ptr %245(i64 noundef %248, ptr noundef nonnull @.str.16) #17
  %250 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 2, i32 7
  store ptr %249, ptr %250, align 8, !tbaa !156
  %251 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %252 = load i32, ptr %236, align 8, !tbaa !174
  %253 = sext i32 %252 to i64
  %254 = shl nsw i64 %253, 2
  %255 = call ptr %251(i64 noundef %254, ptr noundef nonnull @.str.17) #17
  %256 = getelementptr inbounds %struct.uiSearchboxData, ptr %20, i64 0, i32 2, i32 8
  store ptr %255, ptr %256, align 8, !tbaa !193
  %257 = load i32, ptr %236, align 8, !tbaa !174
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %230, %259
  %260 = phi i64 [ %268, %259 ], [ 0, %230 ]
  %261 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %262 = load float, ptr %233, align 4, !tbaa !192
  %263 = fadd float %262, 1.000000e+00
  %264 = fptoui float %263 to i64
  %265 = call ptr %261(i64 noundef %264, ptr noundef nonnull @.str.16) #17
  %266 = load ptr, ptr %244, align 8, !tbaa !152
  %267 = getelementptr inbounds ptr, ptr %266, i64 %260
  store ptr %265, ptr %267, align 8, !tbaa !52
  %268 = add nuw nsw i64 %260, 1
  %269 = load i32, ptr %236, align 8, !tbaa !174
  %270 = sext i32 %269 to i64
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %259, label %272, !llvm.loop !194

272:                                              ; preds = %259, %230
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @ui_searchbox_region_draw_cb(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  tail call void @wmOrtho2_region_ui(ptr noundef %1) #17
  %6 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 4
  %7 = load i8, ptr %6, align 4, !tbaa !179
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @ui_draw_search_back(ptr noundef null, ptr noundef null, ptr noundef %5) #17
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2
  %12 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !160
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %489, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %16 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 5
  %17 = load i8, ptr %16, align 1, !tbaa !161
  %18 = icmp eq i8 %17, 0
  %19 = load i32, ptr %12, align 4, !tbaa !160
  %20 = icmp sgt i32 %19, 0
  br i1 %18, label %46, label %21

21:                                               ; preds = %15
  br i1 %20, label %22, label %147

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %24 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 8
  %25 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %26 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %27 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 7
  %28 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %29 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %30 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %31 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %32 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %33 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %34 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %35 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %36 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %37 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 1
  %38 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 6
  %39 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 8
  %40 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 3
  %41 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 1
  %42 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 6
  %43 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 8
  %44 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 3
  %45 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 6
  br label %67

46:                                               ; preds = %15
  br i1 %20, label %47, label %343

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %49 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 8
  %50 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %51 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %52 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 7
  %53 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %54 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %55 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %56 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %57 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %58 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %59 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %60 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %61 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %62 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 1
  %63 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 6
  %64 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 8
  %65 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 3
  %66 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 6
  br label %278

67:                                               ; preds = %22, %142
  %68 = phi i64 [ 0, %22 ], [ %143, %142 ]
  %69 = load i8, ptr %16, align 1, !tbaa !161
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %23, align 4, !tbaa !116
  %73 = load i32, ptr %5, align 4, !tbaa !117
  %74 = sub nsw i32 %72, %73
  %75 = load i32, ptr %24, align 4, !tbaa !162
  %76 = sdiv i32 %74, %75
  %77 = load i32, ptr %25, align 4, !tbaa !119
  %78 = load i32, ptr %26, align 4, !tbaa !118
  %79 = add i32 %77, -16
  %80 = sub i32 %79, %78
  %81 = load i32, ptr %27, align 8, !tbaa !163
  %82 = sdiv i32 %80, %81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %83 = trunc i64 %68 to i32
  %84 = srem i32 %83, %75
  %85 = trunc i64 %68 to i32
  %86 = sdiv i32 %85, %75
  %87 = mul nsw i32 %84, %76
  %88 = load i32, ptr %3, align 4, !tbaa !117
  %89 = add nsw i32 %88, %87
  store i32 %89, ptr %3, align 4, !tbaa !117
  %90 = add nsw i32 %89, %76
  store i32 %90, ptr %28, align 4, !tbaa !116
  %91 = load i32, ptr %25, align 4, !tbaa !164
  %92 = mul nsw i32 %86, %82
  %93 = sub i32 %91, %92
  %94 = add i32 %93, -8
  store i32 %94, ptr %29, align 4, !tbaa !119
  %95 = sub nsw i32 %94, %82
  store i32 %95, ptr %30, align 4, !tbaa !118
  br label %116

96:                                               ; preds = %67
  %97 = load i32, ptr %31, align 4, !tbaa !119
  %98 = load i32, ptr %32, align 4, !tbaa !118
  %99 = add i32 %97, -16
  %100 = sub i32 %99, %98
  %101 = sdiv i32 %100, 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %102 = load i32, ptr %5, align 8, !tbaa !165
  %103 = sitofp i32 %102 to float
  %104 = fadd float %103, 3.000000e+00
  %105 = fptosi float %104 to i32
  store i32 %105, ptr %3, align 4, !tbaa !117
  %106 = load i32, ptr %33, align 4, !tbaa !166
  %107 = sitofp i32 %106 to float
  %108 = fadd float %107, -3.000000e+00
  %109 = fptosi float %108 to i32
  store i32 %109, ptr %34, align 4, !tbaa !116
  %110 = load i32, ptr %31, align 4, !tbaa !164
  %111 = trunc i64 %68 to i32
  %112 = mul nsw i32 %101, %111
  %113 = sub i32 %110, %112
  %114 = add i32 %113, -8
  store i32 %114, ptr %35, align 4, !tbaa !119
  %115 = sub nsw i32 %114, %101
  store i32 %115, ptr %36, align 4, !tbaa !118
  br label %116

116:                                              ; preds = %71, %96
  %117 = load i8, ptr %16, align 1, !tbaa !161
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %38, align 8, !tbaa !152
  %121 = getelementptr inbounds ptr, ptr %120, i64 %68
  %122 = load ptr, ptr %121, align 8, !tbaa !52
  %123 = load ptr, ptr %39, align 8, !tbaa !193
  %124 = getelementptr inbounds i32, ptr %123, i64 %68
  %125 = load i32, ptr %124, align 4, !tbaa !53
  %126 = load i32, ptr %40, align 8, !tbaa !150
  %127 = zext i32 %126 to i64
  %128 = icmp eq i64 %68, %127
  %129 = select i1 %128, i32 4, i32 0
  call void @ui_draw_preview_item(ptr noundef nonnull %37, ptr noundef nonnull %3, ptr noundef %122, i32 noundef %125, i32 noundef %129) #17
  br label %142

130:                                              ; preds = %116
  %131 = load ptr, ptr %42, align 8, !tbaa !152
  %132 = getelementptr inbounds ptr, ptr %131, i64 %68
  %133 = load ptr, ptr %132, align 8, !tbaa !52
  %134 = load ptr, ptr %43, align 8, !tbaa !193
  %135 = getelementptr inbounds i32, ptr %134, i64 %68
  %136 = load i32, ptr %135, align 4, !tbaa !53
  %137 = load i32, ptr %44, align 8, !tbaa !150
  %138 = zext i32 %137 to i64
  %139 = icmp eq i64 %68, %138
  %140 = select i1 %139, i32 4, i32 0
  %141 = load i8, ptr %45, align 2, !tbaa !153
  call void @ui_draw_menu_item(ptr noundef nonnull %41, ptr noundef nonnull %3, ptr noundef %133, i32 noundef %136, i32 noundef %140, i8 noundef zeroext %141) #17
  br label %142

142:                                              ; preds = %119, %130
  %143 = add nuw nsw i64 %68, 1
  %144 = load i32, ptr %12, align 4, !tbaa !160
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %143, %145
  br i1 %146, label %67, label %147, !llvm.loop !195

147:                                              ; preds = %142, %21
  %148 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 5
  %149 = load i32, ptr %148, align 4, !tbaa !168
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %221, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %11, align 8, !tbaa !174
  %153 = add nsw i32 %152, -1
  %154 = load i8, ptr %16, align 1, !tbaa !161
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %186, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !116
  %159 = load i32, ptr %5, align 4, !tbaa !117
  %160 = sub nsw i32 %158, %159
  %161 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 8
  %162 = load i32, ptr %161, align 4, !tbaa !162
  %163 = sdiv i32 %160, %162
  %164 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %165 = load i32, ptr %164, align 4, !tbaa !119
  %166 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %167 = load i32, ptr %166, align 4, !tbaa !118
  %168 = add i32 %165, -16
  %169 = sub i32 %168, %167
  %170 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 7
  %171 = load i32, ptr %170, align 8, !tbaa !163
  %172 = sdiv i32 %169, %171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %173 = srem i32 %153, %162
  %174 = sdiv i32 %153, %162
  %175 = mul nsw i32 %173, %163
  %176 = load i32, ptr %3, align 4, !tbaa !117
  %177 = add nsw i32 %176, %175
  store i32 %177, ptr %3, align 4, !tbaa !117
  %178 = add nsw i32 %177, %163
  %179 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %178, ptr %179, align 4, !tbaa !116
  %180 = load i32, ptr %164, align 4, !tbaa !164
  %181 = mul nsw i32 %174, %172
  %182 = sub i32 %180, %181
  %183 = add i32 %182, -8
  %184 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %183, ptr %184, align 4, !tbaa !119
  %185 = sub nsw i32 %183, %172
  br label %210

186:                                              ; preds = %151
  %187 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %188 = load i32, ptr %187, align 4, !tbaa !119
  %189 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %190 = load i32, ptr %189, align 4, !tbaa !118
  %191 = add i32 %188, -16
  %192 = sub i32 %191, %190
  %193 = sdiv i32 %192, 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %194 = load i32, ptr %5, align 8, !tbaa !165
  %195 = sitofp i32 %194 to float
  %196 = fadd float %195, 3.000000e+00
  %197 = fptosi float %196 to i32
  store i32 %197, ptr %3, align 4, !tbaa !117
  %198 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %199 = load i32, ptr %198, align 4, !tbaa !166
  %200 = sitofp i32 %199 to float
  %201 = fadd float %200, -3.000000e+00
  %202 = fptosi float %201 to i32
  %203 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %202, ptr %203, align 4, !tbaa !116
  %204 = load i32, ptr %187, align 4, !tbaa !164
  %205 = mul nsw i32 %193, %153
  %206 = sub i32 %204, %205
  %207 = add i32 %206, -8
  %208 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %207, ptr %208, align 4, !tbaa !119
  %209 = sub nsw i32 %207, %193
  br label %210

210:                                              ; preds = %156, %186
  %211 = phi i32 [ %185, %156 ], [ %209, %186 ]
  %212 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 %211, ptr %212, align 4, !tbaa !118
  call void @glEnable(i32 noundef 3042) #17
  %213 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %214 = load i32, ptr %213, align 4, !tbaa !116
  %215 = add nsw i32 %214, -18
  %216 = sitofp i32 %215 to float
  %217 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %218 = load i32, ptr %217, align 4, !tbaa !118
  %219 = add nsw i32 %218, -7
  %220 = sitofp i32 %219 to float
  call void @UI_icon_draw(float noundef %216, float noundef %220, i32 noundef 5) #17
  call void @glDisable(i32 noundef 3042) #17
  br label %221

221:                                              ; preds = %210, %147
  %222 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 3
  %223 = load i32, ptr %222, align 4, !tbaa !169
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %488, label %225

225:                                              ; preds = %221
  %226 = load i8, ptr %16, align 1, !tbaa !161
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %252, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %230 = load i32, ptr %229, align 4, !tbaa !116
  %231 = load i32, ptr %5, align 4, !tbaa !117
  %232 = sub nsw i32 %230, %231
  %233 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 8
  %234 = load i32, ptr %233, align 4, !tbaa !162
  %235 = sdiv i32 %232, %234
  %236 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %237 = load i32, ptr %236, align 4, !tbaa !119
  %238 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %239 = load i32, ptr %238, align 4, !tbaa !118
  %240 = add i32 %237, -16
  %241 = sub i32 %240, %239
  %242 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 7
  %243 = load i32, ptr %242, align 8, !tbaa !163
  %244 = sdiv i32 %241, %243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %245 = load i32, ptr %3, align 4, !tbaa !117
  %246 = add nsw i32 %245, %235
  %247 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %246, ptr %247, align 4, !tbaa !116
  %248 = load i32, ptr %236, align 4, !tbaa !164
  %249 = add i32 %248, -8
  %250 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %249, ptr %250, align 4, !tbaa !119
  %251 = sub nsw i32 %249, %244
  br label %274

252:                                              ; preds = %225
  %253 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %254 = load i32, ptr %253, align 4, !tbaa !119
  %255 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !118
  %257 = add i32 %254, -16
  %258 = sub i32 %257, %256
  %259 = sdiv i32 %258, -10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %260 = load i32, ptr %5, align 8, !tbaa !165
  %261 = sitofp i32 %260 to float
  %262 = fadd float %261, 3.000000e+00
  %263 = fptosi float %262 to i32
  store i32 %263, ptr %3, align 4, !tbaa !117
  %264 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %265 = load i32, ptr %264, align 4, !tbaa !166
  %266 = sitofp i32 %265 to float
  %267 = fadd float %266, -3.000000e+00
  %268 = fptosi float %267 to i32
  %269 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %268, ptr %269, align 4, !tbaa !116
  %270 = load i32, ptr %253, align 4, !tbaa !164
  %271 = add i32 %270, -8
  %272 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %271, ptr %272, align 4, !tbaa !119
  %273 = add i32 %271, %259
  br label %274

274:                                              ; preds = %228, %252
  %275 = phi i32 [ %251, %228 ], [ %273, %252 ]
  %276 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 %275, ptr %276, align 4, !tbaa !118
  call void @glEnable(i32 noundef 3042) #17
  %277 = load i32, ptr %3, align 4, !tbaa !117
  br label %480

278:                                              ; preds = %47, %327
  %279 = phi i64 [ 0, %47 ], [ %339, %327 ]
  %280 = load i8, ptr %16, align 1, !tbaa !161
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %307, label %282

282:                                              ; preds = %278
  %283 = load i32, ptr %48, align 4, !tbaa !116
  %284 = load i32, ptr %5, align 4, !tbaa !117
  %285 = sub nsw i32 %283, %284
  %286 = load i32, ptr %49, align 4, !tbaa !162
  %287 = sdiv i32 %285, %286
  %288 = load i32, ptr %50, align 4, !tbaa !119
  %289 = load i32, ptr %51, align 4, !tbaa !118
  %290 = add i32 %288, -16
  %291 = sub i32 %290, %289
  %292 = load i32, ptr %52, align 8, !tbaa !163
  %293 = sdiv i32 %291, %292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %294 = trunc i64 %279 to i32
  %295 = srem i32 %294, %286
  %296 = trunc i64 %279 to i32
  %297 = sdiv i32 %296, %286
  %298 = mul nsw i32 %295, %287
  %299 = load i32, ptr %3, align 4, !tbaa !117
  %300 = add nsw i32 %299, %298
  store i32 %300, ptr %3, align 4, !tbaa !117
  %301 = add nsw i32 %300, %287
  store i32 %301, ptr %53, align 4, !tbaa !116
  %302 = load i32, ptr %50, align 4, !tbaa !164
  %303 = mul nsw i32 %297, %293
  %304 = sub i32 %302, %303
  %305 = add i32 %304, -8
  store i32 %305, ptr %54, align 4, !tbaa !119
  %306 = sub nsw i32 %305, %293
  store i32 %306, ptr %55, align 4, !tbaa !118
  br label %327

307:                                              ; preds = %278
  %308 = load i32, ptr %56, align 4, !tbaa !119
  %309 = load i32, ptr %57, align 4, !tbaa !118
  %310 = add i32 %308, -16
  %311 = sub i32 %310, %309
  %312 = sdiv i32 %311, 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %313 = load i32, ptr %5, align 8, !tbaa !165
  %314 = sitofp i32 %313 to float
  %315 = fadd float %314, 3.000000e+00
  %316 = fptosi float %315 to i32
  store i32 %316, ptr %3, align 4, !tbaa !117
  %317 = load i32, ptr %58, align 4, !tbaa !166
  %318 = sitofp i32 %317 to float
  %319 = fadd float %318, -3.000000e+00
  %320 = fptosi float %319 to i32
  store i32 %320, ptr %59, align 4, !tbaa !116
  %321 = load i32, ptr %56, align 4, !tbaa !164
  %322 = trunc i64 %279 to i32
  %323 = mul nsw i32 %312, %322
  %324 = sub i32 %321, %323
  %325 = add i32 %324, -8
  store i32 %325, ptr %60, align 4, !tbaa !119
  %326 = sub nsw i32 %325, %312
  store i32 %326, ptr %61, align 4, !tbaa !118
  br label %327

327:                                              ; preds = %282, %307
  %328 = load ptr, ptr %63, align 8, !tbaa !152
  %329 = getelementptr inbounds ptr, ptr %328, i64 %279
  %330 = load ptr, ptr %329, align 8, !tbaa !52
  %331 = load ptr, ptr %64, align 8, !tbaa !193
  %332 = getelementptr inbounds i32, ptr %331, i64 %279
  %333 = load i32, ptr %332, align 4, !tbaa !53
  %334 = load i32, ptr %65, align 8, !tbaa !150
  %335 = zext i32 %334 to i64
  %336 = icmp eq i64 %279, %335
  %337 = select i1 %336, i32 4, i32 0
  %338 = load i8, ptr %66, align 2, !tbaa !153
  call void @ui_draw_menu_item(ptr noundef nonnull %62, ptr noundef nonnull %3, ptr noundef %330, i32 noundef %333, i32 noundef %337, i8 noundef zeroext %338) #17
  %339 = add nuw nsw i64 %279, 1
  %340 = load i32, ptr %12, align 4, !tbaa !160
  %341 = sext i32 %340 to i64
  %342 = icmp slt i64 %339, %341
  br i1 %342, label %278, label %343, !llvm.loop !196

343:                                              ; preds = %327, %46
  %344 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 5
  %345 = load i32, ptr %344, align 4, !tbaa !168
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %419, label %347

347:                                              ; preds = %343
  %348 = load i32, ptr %11, align 8, !tbaa !174
  %349 = add nsw i32 %348, -1
  %350 = load i8, ptr %16, align 1, !tbaa !161
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %382, label %352

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %354 = load i32, ptr %353, align 4, !tbaa !116
  %355 = load i32, ptr %5, align 4, !tbaa !117
  %356 = sub nsw i32 %354, %355
  %357 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 8
  %358 = load i32, ptr %357, align 4, !tbaa !162
  %359 = sdiv i32 %356, %358
  %360 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %361 = load i32, ptr %360, align 4, !tbaa !119
  %362 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %363 = load i32, ptr %362, align 4, !tbaa !118
  %364 = add i32 %361, -16
  %365 = sub i32 %364, %363
  %366 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 7
  %367 = load i32, ptr %366, align 8, !tbaa !163
  %368 = sdiv i32 %365, %367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %369 = srem i32 %349, %358
  %370 = sdiv i32 %349, %358
  %371 = mul nsw i32 %369, %359
  %372 = load i32, ptr %3, align 4, !tbaa !117
  %373 = add nsw i32 %372, %371
  store i32 %373, ptr %3, align 4, !tbaa !117
  %374 = add nsw i32 %373, %359
  %375 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %374, ptr %375, align 4, !tbaa !116
  %376 = load i32, ptr %360, align 4, !tbaa !164
  %377 = mul nsw i32 %370, %368
  %378 = sub i32 %376, %377
  %379 = add i32 %378, -8
  %380 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %379, ptr %380, align 4, !tbaa !119
  %381 = sub nsw i32 %379, %368
  br label %406

382:                                              ; preds = %347
  %383 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %384 = load i32, ptr %383, align 4, !tbaa !119
  %385 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %386 = load i32, ptr %385, align 4, !tbaa !118
  %387 = add i32 %384, -16
  %388 = sub i32 %387, %386
  %389 = sdiv i32 %388, 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %390 = load i32, ptr %5, align 8, !tbaa !165
  %391 = sitofp i32 %390 to float
  %392 = fadd float %391, 3.000000e+00
  %393 = fptosi float %392 to i32
  store i32 %393, ptr %3, align 4, !tbaa !117
  %394 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %395 = load i32, ptr %394, align 4, !tbaa !166
  %396 = sitofp i32 %395 to float
  %397 = fadd float %396, -3.000000e+00
  %398 = fptosi float %397 to i32
  %399 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %398, ptr %399, align 4, !tbaa !116
  %400 = load i32, ptr %383, align 4, !tbaa !164
  %401 = mul nsw i32 %389, %349
  %402 = sub i32 %400, %401
  %403 = add i32 %402, -8
  %404 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %403, ptr %404, align 4, !tbaa !119
  %405 = sub nsw i32 %403, %389
  br label %406

406:                                              ; preds = %352, %382
  %407 = phi i32 [ %381, %352 ], [ %405, %382 ]
  %408 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 %407, ptr %408, align 4, !tbaa !118
  call void @glEnable(i32 noundef 3042) #17
  %409 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %410 = load i32, ptr %409, align 4, !tbaa !116
  %411 = load i32, ptr %3, align 4, !tbaa !117
  %412 = sub nsw i32 %410, %411
  %413 = sdiv i32 %412, 2
  %414 = sitofp i32 %413 to float
  %415 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %416 = load i32, ptr %415, align 4, !tbaa !118
  %417 = add nsw i32 %416, -9
  %418 = sitofp i32 %417 to float
  call void @UI_icon_draw(float noundef %414, float noundef %418, i32 noundef 5) #17
  call void @glDisable(i32 noundef 3042) #17
  br label %419

419:                                              ; preds = %406, %343
  %420 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 3
  %421 = load i32, ptr %420, align 4, !tbaa !169
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %488, label %423

423:                                              ; preds = %419
  %424 = load i8, ptr %16, align 1, !tbaa !161
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %450, label %426

426:                                              ; preds = %423
  %427 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %428 = load i32, ptr %427, align 4, !tbaa !116
  %429 = load i32, ptr %5, align 4, !tbaa !117
  %430 = sub nsw i32 %428, %429
  %431 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 8
  %432 = load i32, ptr %431, align 4, !tbaa !162
  %433 = sdiv i32 %430, %432
  %434 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %435 = load i32, ptr %434, align 4, !tbaa !119
  %436 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %437 = load i32, ptr %436, align 4, !tbaa !118
  %438 = add i32 %435, -16
  %439 = sub i32 %438, %437
  %440 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 7
  %441 = load i32, ptr %440, align 8, !tbaa !163
  %442 = sdiv i32 %439, %441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %443 = load i32, ptr %3, align 4, !tbaa !117
  %444 = add nsw i32 %443, %433
  %445 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %444, ptr %445, align 4, !tbaa !116
  %446 = load i32, ptr %434, align 4, !tbaa !164
  %447 = add i32 %446, -8
  %448 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %447, ptr %448, align 4, !tbaa !119
  %449 = sub nsw i32 %447, %442
  br label %472

450:                                              ; preds = %423
  %451 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %452 = load i32, ptr %451, align 4, !tbaa !119
  %453 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %454 = load i32, ptr %453, align 4, !tbaa !118
  %455 = add i32 %452, -16
  %456 = sub i32 %455, %454
  %457 = sdiv i32 %456, -10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %458 = load i32, ptr %5, align 8, !tbaa !165
  %459 = sitofp i32 %458 to float
  %460 = fadd float %459, 3.000000e+00
  %461 = fptosi float %460 to i32
  store i32 %461, ptr %3, align 4, !tbaa !117
  %462 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %463 = load i32, ptr %462, align 4, !tbaa !166
  %464 = sitofp i32 %463 to float
  %465 = fadd float %464, -3.000000e+00
  %466 = fptosi float %465 to i32
  %467 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %466, ptr %467, align 4, !tbaa !116
  %468 = load i32, ptr %451, align 4, !tbaa !164
  %469 = add i32 %468, -8
  %470 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %469, ptr %470, align 4, !tbaa !119
  %471 = add i32 %469, %457
  br label %472

472:                                              ; preds = %426, %450
  %473 = phi i32 [ %449, %426 ], [ %471, %450 ]
  %474 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 %473, ptr %474, align 4, !tbaa !118
  call void @glEnable(i32 noundef 3042) #17
  %475 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %476 = load i32, ptr %475, align 4, !tbaa !116
  %477 = load i32, ptr %3, align 4, !tbaa !117
  %478 = sub nsw i32 %476, %477
  %479 = sdiv i32 %478, 2
  br label %480

480:                                              ; preds = %274, %472
  %481 = phi i32 [ %479, %472 ], [ %277, %274 ]
  %482 = phi i32 [ -7, %472 ], [ -9, %274 ]
  %483 = sitofp i32 %481 to float
  %484 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %485 = load i32, ptr %484, align 4, !tbaa !119
  %486 = add nsw i32 %485, %482
  %487 = sitofp i32 %486 to float
  call void @UI_icon_draw(float noundef %483, float noundef %487, i32 noundef 7) #17
  call void @glDisable(i32 noundef 3042) #17
  br label %488

488:                                              ; preds = %480, %419, %221
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br label %489

489:                                              ; preds = %488, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ui_searchbox_region_free_cb(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = getelementptr inbounds %struct.uiSearchboxData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !174
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uiSearchboxData, ptr %3, i64 0, i32 2, i32 6
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %15, %9 ]
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %12 = load ptr, ptr %8, align 8, !tbaa !152
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  tail call void %11(ptr noundef %14) #17
  %15 = add nuw nsw i64 %10, 1
  %16 = load i32, ptr %4, align 8, !tbaa !174
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %9, label %19, !llvm.loop !197

19:                                               ; preds = %9, %1
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.uiSearchboxData, ptr %3, i64 0, i32 2, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !152
  tail call void %20(ptr noundef %22) #17
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %24 = getelementptr inbounds %struct.uiSearchboxData, ptr %3, i64 0, i32 2, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !156
  tail call void %23(ptr noundef %25) #17
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.uiSearchboxData, ptr %3, i64 0, i32 2, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !193
  tail call void %26(ptr noundef %28) #17
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %29(ptr noundef %3) #17
  store ptr null, ptr %2, align 8, !tbaa !104
  ret void
}

declare void @UI_view2d_view_to_region_rcti(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare float @UI_view2d_view_to_region_y(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ui_searchbox_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #17
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @wm_draw_region_clear(ptr noundef nonnull %4, ptr noundef %1) #17
  br label %7

7:                                                ; preds = %2, %6
  tail call void @ED_region_exit(ptr noundef %0, ptr noundef %1) #17
  tail call void @BKE_area_region_free(ptr noundef null, ptr noundef %1) #17
  %8 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 4
  tail call void @BLI_freelinkN(ptr noundef nonnull %8, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_but_search_test(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @RNA_property_type(ptr noundef nonnull %3) #17
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %89

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %10 = tail call ptr %9(i64 noundef 64, ptr noundef nonnull @.str.18) #17
  store i32 10, ptr %10, align 8, !tbaa !142
  %11 = getelementptr inbounds %struct.uiSearchItems, ptr %10, i64 0, i32 2
  store i32 256, ptr %11, align 8, !tbaa !145
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %13 = tail call ptr %12(i64 noundef 80, ptr noundef nonnull @.str.15) #17
  %14 = getelementptr inbounds %struct.uiSearchItems, ptr %10, i64 0, i32 6
  store ptr %13, ptr %14, align 8, !tbaa !144
  %15 = load i32, ptr %10, align 8, !tbaa !142
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %28, %19 ]
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %22 = load float, ptr %18, align 4, !tbaa !192
  %23 = fadd float %22, 1.000000e+00
  %24 = fptoui float %23 to i64
  %25 = tail call ptr %21(i64 noundef %24, ptr noundef nonnull @.str.15) #17
  %26 = load ptr, ptr %14, align 8, !tbaa !144
  %27 = getelementptr inbounds ptr, ptr %26, i64 %20
  store ptr %25, ptr %27, align 8, !tbaa !52
  %28 = add nuw nsw i64 %20, 1
  %29 = load i32, ptr %10, align 8, !tbaa !142
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %19, label %32, !llvm.loop !198

32:                                               ; preds = %19, %8
  %33 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 35
  %34 = load ptr, ptr %33, align 8, !tbaa !171
  %35 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.uiBlock, ptr %36, i64 0, i32 48
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 36
  %40 = load ptr, ptr %39, align 8, !tbaa !172
  %41 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  tail call void %34(ptr noundef %38, ptr noundef %40, ptr noundef nonnull %41, ptr noundef nonnull %10) #17
  %42 = getelementptr inbounds %struct.uiSearchItems, ptr %10, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !140
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %71, label %45

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.uiSearchItems, ptr %10, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !143
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = icmp sgt i32 %43, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %49
  %52 = load ptr, ptr %14, align 8, !tbaa !144
  %53 = zext nneg i32 %43 to i64
  %54 = zext nneg i32 %43 to i64
  %55 = load ptr, ptr %52, align 8, !tbaa !52
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) %55) #18
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %51, %62
  %59 = phi i64 [ %60, %62 ], [ 0, %51 ]
  %60 = add nuw nsw i64 %59, 1
  %61 = icmp eq i64 %60, %54
  br i1 %61, label %71, label %62, !llvm.loop !148

62:                                               ; preds = %58
  %63 = getelementptr inbounds ptr, ptr %52, i64 %60
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) %64) #18
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %58, !llvm.loop !148

67:                                               ; preds = %62
  %68 = icmp ult i64 %60, %53
  br label %69

69:                                               ; preds = %67, %51
  %70 = phi i1 [ %68, %67 ], [ %50, %51 ]
  br i1 %70, label %72, label %71

71:                                               ; preds = %58, %69, %49, %32
  tail call void @uiButSetFlag(ptr noundef %0, i32 noundef 65536) #17
  br label %72

72:                                               ; preds = %71, %45, %69
  %73 = load i32, ptr %10, align 8, !tbaa !142
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72, %75
  %76 = phi i64 [ %81, %75 ], [ 0, %72 ]
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %78 = load ptr, ptr %14, align 8, !tbaa !144
  %79 = getelementptr inbounds ptr, ptr %78, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  tail call void %77(ptr noundef %80) #17
  %81 = add nuw nsw i64 %76, 1
  %82 = load i32, ptr %10, align 8, !tbaa !142
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %75, label %85, !llvm.loop !199

85:                                               ; preds = %75, %72
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %87 = load ptr, ptr %14, align 8, !tbaa !144
  tail call void %86(ptr noundef %87) #17
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %88(ptr noundef nonnull %10) #17
  br label %89

89:                                               ; preds = %5, %85
  ret void
}

declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_popup_block_scrolltest(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !178
  %4 = and i32 %3, -97
  store i32 %4, ptr %2, align 8, !tbaa !178
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.uiBut, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !78
  %12 = and i32 %11, -3
  store i32 %12, ptr %10, align 8, !tbaa !78
  %13 = load ptr, ptr %9, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !200

15:                                               ; preds = %8, %1
  %16 = load ptr, ptr %5, align 8, !tbaa !201
  %17 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !202
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %88, label %20

20:                                               ; preds = %15
  %21 = icmp eq ptr %16, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  %24 = load float, ptr %23, align 8, !tbaa !203
  %25 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 3
  %26 = load float, ptr %25, align 4, !tbaa !204
  br label %38

27:                                               ; preds = %59, %20
  %28 = load ptr, ptr %5, align 8, !tbaa !52
  %29 = icmp eq ptr %28, null
  br i1 %29, label %88, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %2, align 8, !tbaa !178
  %32 = and i32 %31, 32
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  %35 = and i32 %31, 64
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 3
  br label %62

38:                                               ; preds = %22, %59
  %39 = phi ptr [ %16, %22 ], [ %60, %59 ]
  %40 = getelementptr inbounds %struct.uiBut, ptr %39, i64 0, i32 18, i32 2
  %41 = load float, ptr %40, align 8, !tbaa !109
  %42 = fcmp olt float %41, %24
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.uiBut, ptr %39, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !78
  %46 = or i32 %45, 2
  store i32 %46, ptr %44, align 8, !tbaa !78
  %47 = load i32, ptr %2, align 8, !tbaa !178
  %48 = or i32 %47, 32
  store i32 %48, ptr %2, align 8, !tbaa !178
  br label %49

49:                                               ; preds = %43, %38
  %50 = getelementptr inbounds %struct.uiBut, ptr %39, i64 0, i32 18, i32 3
  %51 = load float, ptr %50, align 4, !tbaa !191
  %52 = fcmp ogt float %51, %26
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.uiBut, ptr %39, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !78
  %56 = or i32 %55, 2
  store i32 %56, ptr %54, align 8, !tbaa !78
  %57 = load i32, ptr %2, align 8, !tbaa !178
  %58 = or i32 %57, 64
  store i32 %58, ptr %2, align 8, !tbaa !178
  br label %59

59:                                               ; preds = %49, %53
  %60 = load ptr, ptr %39, align 8, !tbaa !205
  %61 = icmp eq ptr %60, null
  br i1 %61, label %27, label %38, !llvm.loop !206

62:                                               ; preds = %30, %85
  %63 = phi ptr [ %28, %30 ], [ %86, %85 ]
  br i1 %33, label %74, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.uiBut, ptr %63, i64 0, i32 18, i32 2
  %66 = load float, ptr %65, align 8, !tbaa !109
  %67 = load float, ptr %34, align 8, !tbaa !203
  %68 = fadd float %67, 1.200000e+01
  %69 = fcmp olt float %66, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.uiBut, ptr %63, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !78
  %73 = or i32 %72, 2
  store i32 %73, ptr %71, align 8, !tbaa !78
  br label %74

74:                                               ; preds = %64, %70, %62
  br i1 %36, label %85, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.uiBut, ptr %63, i64 0, i32 18, i32 3
  %77 = load float, ptr %76, align 4, !tbaa !191
  %78 = load float, ptr %37, align 4, !tbaa !204
  %79 = fadd float %78, -1.200000e+01
  %80 = fcmp ogt float %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.uiBut, ptr %63, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !78
  %84 = or i32 %83, 2
  store i32 %84, ptr %82, align 8, !tbaa !78
  br label %85

85:                                               ; preds = %74, %81, %75
  %86 = load ptr, ptr %63, align 8, !tbaa !52
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %62, !llvm.loop !207

88:                                               ; preds = %85, %27, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ui_popup_block_refresh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 4
  %6 = tail call i32 @UI_ThemeMenuShadowWidth() #17
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %8 = load ptr, ptr %1, align 8, !tbaa !208
  %9 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !212
  %11 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 8, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  %13 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !214
  %15 = icmp eq ptr %10, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = tail call ptr %10(ptr noundef %0, ptr noundef %8, ptr noundef %12) #17
  br label %22

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 8, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !215
  %21 = tail call ptr %20(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %12) #17
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi ptr [ %17, %16 ], [ %21, %18 ]
  %24 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 46
  %25 = load ptr, ptr %24, align 8, !tbaa !216
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %25, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 192, i1 false)
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %28(ptr noundef nonnull %1) #17
  %29 = load ptr, ptr %24, align 8, !tbaa !216
  br label %31

30:                                               ; preds = %22
  store ptr %1, ptr %24, align 8, !tbaa !216
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi ptr [ %29, %27 ], [ %1, %30 ]
  %33 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 30
  store ptr %32, ptr %33, align 8, !tbaa !104
  %34 = icmp eq ptr %3, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !75
  %38 = icmp eq i32 %37, 13824
  br i1 %38, label %39, label %44

39:                                               ; preds = %31, %35
  %40 = phi i32 [ 8, %35 ], [ 520, %31 ]
  %41 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 27
  %42 = load i32, ptr %41, align 8, !tbaa !178
  %43 = or i32 %42, %40
  store i32 %43, ptr %41, align 8, !tbaa !178
  br label %44

44:                                               ; preds = %39, %35
  %45 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 27
  %46 = load i32, ptr %45, align 8, !tbaa !178
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !178
  %48 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 4
  store ptr null, ptr %48, align 8, !tbaa !217
  %49 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 38
  %50 = load i8, ptr %49, align 1, !tbaa !218
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %32, i64 0, i32 8, i32 3
  tail call void @uiEndBlock_ex(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %53) #17
  br label %54

54:                                               ; preds = %52, %44
  br i1 %34, label %394, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.uiBlock, ptr %57, i64 0, i32 12
  %59 = load float, ptr %58, align 8, !tbaa !65
  %60 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 12
  store float %59, ptr %60, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %61 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 18
  call void @ui_block_to_window_rctf(ptr noundef %2, ptr noundef %57, ptr noundef nonnull %5, ptr noundef nonnull %61) #17
  %62 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !75
  %64 = icmp eq i32 %63, 13824
  br i1 %64, label %82, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !66
  %68 = and i32 %67, 16384
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !101
  %72 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %73 = load float, ptr %72, align 4, !tbaa !110
  %74 = fadd float %71, %73
  store float %74, ptr %72, align 4, !tbaa !110
  br label %75

75:                                               ; preds = %70, %65
  %76 = and i32 %67, 32768
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !101
  %80 = load float, ptr %5, align 4, !tbaa !107
  %81 = fsub float %80, %79
  store float %81, ptr %5, align 4, !tbaa !107
  br label %82

82:                                               ; preds = %78, %75, %55
  %83 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11
  %84 = load float, ptr %83, align 8, !tbaa !219
  %85 = fcmp oeq float %84, 0.000000e+00
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 1
  %88 = load float, ptr %87, align 4, !tbaa !220
  %89 = fcmp oeq float %88, 0.000000e+00
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !201
  %93 = icmp eq ptr %92, null
  br i1 %93, label %102, label %94

94:                                               ; preds = %90
  call void @BLI_rctf_init_minmax(ptr noundef nonnull %83) #17
  %95 = load ptr, ptr %91, align 8, !tbaa !52
  %96 = icmp eq ptr %95, null
  br i1 %96, label %105, label %97

97:                                               ; preds = %94, %97
  %98 = phi ptr [ %100, %97 ], [ %95, %94 ]
  %99 = getelementptr inbounds %struct.uiBut, ptr %98, i64 0, i32 18
  call void @BLI_rctf_union(ptr noundef nonnull %83, ptr noundef nonnull %99) #17
  %100 = load ptr, ptr %98, align 8, !tbaa !52
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %97, !llvm.loop !221

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 2
  store float 0.000000e+00, ptr %103, align 8, !tbaa !203
  store float 0.000000e+00, ptr %83, align 8, !tbaa !219
  %104 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 3
  store float 2.000000e+01, ptr %104, align 4, !tbaa !204
  store float 2.000000e+01, ptr %87, align 4, !tbaa !220
  br label %105

105:                                              ; preds = %97, %94, %102, %86, %82
  %106 = load ptr, ptr %56, align 8, !tbaa !46
  call void @ui_block_to_window_rctf(ptr noundef %2, ptr noundef %106, ptr noundef nonnull %83, ptr noundef nonnull %83) #17
  %107 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 1
  %108 = load float, ptr %107, align 4, !tbaa !108
  %109 = load float, ptr %83, align 4, !tbaa !107
  %110 = fsub float %108, %109
  %111 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %112 = sitofp i16 %111 to float
  %113 = call float @llvm.fmuladd.f32(float %112, float 0x3FC99999A0000000, float %110)
  %114 = fptosi float %113 to i32
  %115 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 3
  %116 = load float, ptr %115, align 4, !tbaa !110
  %117 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 2
  %118 = load float, ptr %117, align 4, !tbaa !111
  %119 = fsub float %116, %118
  %120 = call float @llvm.fmuladd.f32(float %112, float 0x3FC99999A0000000, float %119)
  %121 = fptosi float %120 to i32
  %122 = call i32 @WM_window_pixels_x(ptr noundef %7) #17
  %123 = call i32 @WM_window_pixels_y(ptr noundef %7) #17
  %124 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 29
  %125 = load i8, ptr %124, align 2, !tbaa !222
  %126 = and i8 %125, 16
  %127 = icmp eq i8 %126, 0
  %128 = sdiv i32 %121, 2
  %129 = sitofp i32 %128 to float
  %130 = load float, ptr %5, align 4, !tbaa !107
  %131 = sitofp i32 %114 to float
  %132 = fsub float %130, %131
  %133 = fcmp ogt float %132, 0.000000e+00
  %134 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %135 = load float, ptr %134, align 4, !tbaa !108
  %136 = fadd float %135, %131
  %137 = sitofp i32 %122 to float
  %138 = fcmp olt float %136, %137
  %139 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %140 = load float, ptr %139, align 4, !tbaa !111
  %141 = sitofp i32 %121 to float
  %142 = fsub float %140, %141
  %143 = select i1 %127, float 0.000000e+00, float %129
  %144 = fadd float %143, %142
  %145 = fcmp ule float %144, 0.000000e+00
  %146 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %147 = load float, ptr %146, align 4, !tbaa !110
  %148 = fadd float %147, %141
  %149 = fsub float %148, %143
  %150 = sitofp i32 %123 to float
  %151 = fcmp uge float %149, %150
  %152 = xor i1 %151, true
  %153 = and i1 %145, %151
  br i1 %153, label %154, label %158

154:                                              ; preds = %105
  %155 = fsub float %150, %147
  %156 = fsub float %155, %141
  %157 = fcmp olt float %142, %156
  br label %158

158:                                              ; preds = %154, %105
  %159 = phi i1 [ %152, %105 ], [ %157, %154 ]
  %160 = phi i1 [ %145, %105 ], [ %157, %154 ]
  %161 = and i8 %125, 15
  %162 = zext nneg i8 %161 to i16
  %163 = zext nneg i8 %161 to i32
  %164 = and i32 %163, 3
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %158
  %167 = and i32 %163, 4
  %168 = icmp eq i32 %167, 0
  %169 = icmp ult i8 %161, 8
  %170 = select i1 %169, i16 0, i16 8
  %171 = select i1 %168, i16 %170, i16 4
  %172 = trunc i32 %164 to i16
  br label %173

173:                                              ; preds = %166, %158
  %174 = phi i16 [ %172, %166 ], [ %162, %158 ]
  %175 = phi i16 [ %171, %166 ], [ 0, %158 ]
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  switch i16 %174, label %179 [
    i16 8, label %178
    i16 4, label %178
  ]

178:                                              ; preds = %177, %177
  br label %179

179:                                              ; preds = %178, %177, %173
  %180 = phi i16 [ 2, %178 ], [ %175, %177 ], [ %175, %173 ]
  %181 = icmp eq i16 %180, 0
  %182 = add nsw i16 %174, -1
  %183 = icmp ult i16 %182, 2
  %184 = select i1 %181, i1 %183, i1 false
  %185 = select i1 %184, i16 4, i16 %180
  %186 = or i1 %133, %138
  br i1 %186, label %187, label %200

187:                                              ; preds = %179
  %188 = icmp ne i16 %174, 4
  %189 = or i1 %133, %188
  %190 = select i1 %189, i16 %174, i16 8
  %191 = icmp ne i16 %190, 8
  %192 = or i1 %138, %191
  %193 = select i1 %192, i16 %190, i16 4
  %194 = icmp ne i16 %185, 4
  %195 = or i1 %138, %194
  %196 = select i1 %195, i16 %185, i16 8
  %197 = icmp ne i16 %196, 8
  %198 = or i1 %133, %197
  %199 = select i1 %198, i16 %196, i16 4
  br label %200

200:                                              ; preds = %187, %179
  %201 = phi i16 [ %193, %187 ], [ %174, %179 ]
  %202 = phi i16 [ %199, %187 ], [ %185, %179 ]
  %203 = xor i1 %159, true
  %204 = and i1 %160, %203
  br i1 %204, label %218, label %205

205:                                              ; preds = %200
  %206 = icmp ne i16 %201, 1
  %207 = or i1 %159, %206
  %208 = select i1 %207, i16 %201, i16 2
  %209 = icmp eq i16 %208, 2
  %210 = and i1 %160, %209
  %211 = select i1 %210, i16 1, i16 %208
  %212 = icmp ne i16 %202, 1
  %213 = or i1 %159, %212
  %214 = select i1 %213, i16 %202, i16 2
  %215 = icmp eq i16 %214, 2
  %216 = and i1 %160, %215
  %217 = select i1 %216, i16 1, i16 %214
  br label %218

218:                                              ; preds = %205, %200
  %219 = phi i16 [ %211, %205 ], [ %201, %200 ]
  %220 = phi i16 [ %217, %205 ], [ %202, %200 ]
  switch i16 %219, label %313 [
    i16 4, label %221
    i16 8, label %243
    i16 1, label %265
    i16 2, label %289
  ]

221:                                              ; preds = %218
  %222 = load float, ptr %107, align 4, !tbaa !220
  %223 = fsub float %130, %222
  %224 = fptosi float %223 to i32
  %225 = icmp eq i16 %220, 1
  %226 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %227 = sitofp i16 %226 to float
  %228 = fmul float %227, 0x3FC99999A0000000
  %229 = fptosi float %228 to i32
  %230 = sitofp i32 %229 to float
  br i1 %225, label %231, label %237

231:                                              ; preds = %221
  %232 = load float, ptr %117, align 8, !tbaa !203
  %233 = fsub float %140, %232
  %234 = fsub float %233, %143
  %235 = fsub float %234, %230
  %236 = fptosi float %235 to i32
  br label %313

237:                                              ; preds = %221
  %238 = load float, ptr %115, align 4, !tbaa !204
  %239 = fsub float %147, %238
  %240 = fadd float %143, %239
  %241 = fadd float %240, %230
  %242 = fptosi float %241 to i32
  br label %313

243:                                              ; preds = %218
  %244 = load float, ptr %83, align 8, !tbaa !219
  %245 = fsub float %135, %244
  %246 = fptosi float %245 to i32
  %247 = icmp eq i16 %220, 1
  %248 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %249 = sitofp i16 %248 to float
  %250 = fmul float %249, 0x3FC99999A0000000
  %251 = fptosi float %250 to i32
  %252 = sitofp i32 %251 to float
  br i1 %247, label %253, label %259

253:                                              ; preds = %243
  %254 = load float, ptr %117, align 8, !tbaa !203
  %255 = fsub float %140, %254
  %256 = fsub float %255, %143
  %257 = fsub float %256, %252
  %258 = fptosi float %257 to i32
  br label %313

259:                                              ; preds = %243
  %260 = load float, ptr %115, align 4, !tbaa !204
  %261 = fsub float %147, %260
  %262 = fadd float %143, %261
  %263 = fadd float %262, %252
  %264 = fptosi float %263 to i32
  br label %313

265:                                              ; preds = %218
  %266 = load float, ptr %117, align 8, !tbaa !203
  %267 = fsub float %147, %266
  %268 = fptosi float %267 to i32
  %269 = icmp eq i16 %220, 8
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load float, ptr %107, align 4, !tbaa !220
  %272 = fsub float %135, %271
  br label %276

273:                                              ; preds = %265
  %274 = load float, ptr %83, align 8, !tbaa !219
  %275 = fsub float %130, %274
  br label %276

276:                                              ; preds = %273, %270
  %277 = phi float [ %272, %270 ], [ %275, %273 ]
  %278 = fptosi float %277 to i32
  %279 = zext i8 %125 to i32
  %280 = and i32 %279, 1
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %313

282:                                              ; preds = %276
  %283 = and i32 %279, 32
  %284 = icmp eq i32 %283, 0
  %285 = icmp eq i16 %220, 4
  %286 = select i1 %285, i32 25, i32 -25
  %287 = select i1 %284, i32 0, i32 %286
  %288 = add nsw i32 %287, %278
  call void @uiBlockFlipOrder(ptr noundef %23) #17
  br label %313

289:                                              ; preds = %218
  %290 = load float, ptr %115, align 4, !tbaa !204
  %291 = fsub float %140, %290
  %292 = fptosi float %291 to i32
  %293 = icmp eq i16 %220, 8
  br i1 %293, label %294, label %297

294:                                              ; preds = %289
  %295 = load float, ptr %107, align 4, !tbaa !220
  %296 = fsub float %135, %295
  br label %300

297:                                              ; preds = %289
  %298 = load float, ptr %83, align 8, !tbaa !219
  %299 = fsub float %130, %298
  br label %300

300:                                              ; preds = %297, %294
  %301 = phi float [ %296, %294 ], [ %299, %297 ]
  %302 = fptosi float %301 to i32
  %303 = zext i8 %125 to i32
  %304 = and i32 %303, 2
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %300
  %307 = and i32 %303, 32
  %308 = icmp eq i32 %307, 0
  %309 = icmp eq i16 %220, 4
  %310 = select i1 %309, i32 25, i32 -25
  %311 = select i1 %308, i32 0, i32 %310
  %312 = add nsw i32 %311, %302
  call void @uiBlockFlipOrder(ptr noundef %23) #17
  br label %313

313:                                              ; preds = %306, %300, %282, %276, %259, %253, %237, %231, %218
  %314 = phi i32 [ %236, %231 ], [ %242, %237 ], [ %258, %253 ], [ %264, %259 ], [ %268, %282 ], [ %268, %276 ], [ %292, %306 ], [ %292, %300 ], [ 0, %218 ]
  %315 = phi i32 [ %224, %231 ], [ %224, %237 ], [ %246, %253 ], [ %246, %259 ], [ %288, %282 ], [ %278, %276 ], [ %312, %306 ], [ %302, %300 ], [ 0, %218 ]
  %316 = add nsw i16 %219, -3
  %317 = icmp ult i16 %316, -2
  %318 = or i1 %186, %317
  br i1 %318, label %323, label %319

319:                                              ; preds = %313
  %320 = load float, ptr %83, align 8, !tbaa !219
  %321 = fsub float 5.000000e+00, %320
  %322 = fptosi float %321 to i32
  br label %323

323:                                              ; preds = %319, %313
  %324 = phi i32 [ %322, %319 ], [ %315, %313 ]
  %325 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 2
  %326 = load ptr, ptr %325, align 8, !tbaa !52
  %327 = icmp eq ptr %326, null
  br i1 %327, label %337, label %328

328:                                              ; preds = %323
  %329 = sitofp i32 %324 to float
  %330 = sitofp i32 %314 to float
  br label %331

331:                                              ; preds = %328, %331
  %332 = phi ptr [ %326, %328 ], [ %335, %331 ]
  %333 = load ptr, ptr %56, align 8, !tbaa !46
  %334 = getelementptr inbounds %struct.uiBut, ptr %332, i64 0, i32 18
  call void @ui_block_to_window_rctf(ptr noundef %2, ptr noundef %333, ptr noundef nonnull %334, ptr noundef nonnull %334) #17
  call void @BLI_rctf_translate(ptr noundef nonnull %334, float noundef %329, float noundef %330) #17
  call void @ui_check_but(ptr noundef nonnull %332) #17
  %335 = load ptr, ptr %332, align 8, !tbaa !52
  %336 = icmp eq ptr %335, null
  br i1 %336, label %337, label %331, !llvm.loop !223

337:                                              ; preds = %331, %323
  %338 = sitofp i32 %324 to float
  %339 = sitofp i32 %314 to float
  call void @BLI_rctf_translate(ptr noundef nonnull %83, float noundef %338, float noundef %339) #17
  %340 = load float, ptr %5, align 4, !tbaa !107
  %341 = load float, ptr %134, align 4, !tbaa !108
  %342 = fadd float %340, %341
  %343 = fmul float %342, 5.000000e-01
  %344 = load float, ptr %139, align 4, !tbaa !111
  %345 = load float, ptr %146, align 4, !tbaa !110
  %346 = fadd float %344, %345
  %347 = fmul float %346, 5.000000e-01
  %348 = load float, ptr %83, align 8, !tbaa !219
  %349 = fcmp olt float %343, %348
  %350 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 44
  %351 = select i1 %349, float -3.000000e+00, float -4.000000e+01
  %352 = fadd float %348, %351
  store float %352, ptr %350, align 8, !tbaa !224
  %353 = load float, ptr %107, align 4, !tbaa !220
  %354 = fcmp ogt float %343, %353
  %355 = select i1 %354, float 3.000000e+00, float 4.000000e+01
  %356 = fadd float %353, %355
  %357 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 44, i32 1
  store float %356, ptr %357, align 4, !tbaa !225
  %358 = load float, ptr %117, align 8, !tbaa !203
  %359 = fcmp olt float %347, %358
  %360 = select i1 %359, float -3.000000e+00, float -4.000000e+01
  %361 = fadd float %358, %360
  %362 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 44, i32 2
  store float %361, ptr %362, align 8, !tbaa !226
  %363 = load float, ptr %115, align 4, !tbaa !204
  %364 = fcmp ogt float %347, %363
  %365 = select i1 %364, float 3.000000e+00, float 4.000000e+01
  %366 = fadd float %363, %365
  %367 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 44, i32 3
  store float %366, ptr %367, align 4, !tbaa !227
  %368 = icmp eq i16 %219, 0
  br i1 %368, label %381, label %369

369:                                              ; preds = %337
  %370 = load i8, ptr %124, align 2, !tbaa !222
  %371 = zext i8 %370 to i16
  %372 = and i16 %219, %371
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %369
  switch i16 %220, label %381 [
    i16 8, label %375
    i16 4, label %378
  ]

375:                                              ; preds = %374
  %376 = fadd float %353, 3.000000e+00
  %377 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 44, i32 1
  store float %376, ptr %377, align 4, !tbaa !225
  br label %381

378:                                              ; preds = %374
  %379 = fadd float %348, -3.000000e+00
  %380 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 44
  store float %379, ptr %380, align 8, !tbaa !224
  br label %381

381:                                              ; preds = %337, %369, %374, %375, %378
  %382 = trunc i16 %219 to i8
  store i8 %382, ptr %124, align 2, !tbaa !222
  %383 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %384 = call ptr %383(i64 noundef 48, ptr noundef nonnull @.str.19) #17
  %385 = getelementptr inbounds %struct.uiSafetyRct, ptr %384, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %385, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !228
  %386 = getelementptr inbounds %struct.uiSafetyRct, ptr %384, i64 0, i32 3
  %387 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %386, ptr noundef nonnull align 8 dereferenceable(16) %387, i64 16, i1 false), !tbaa.struct !228
  %388 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 45
  call void @BLI_freelistN(ptr noundef nonnull %388) #17
  %389 = load ptr, ptr %56, align 8, !tbaa !46
  %390 = getelementptr inbounds %struct.uiBlock, ptr %389, i64 0, i32 45
  call void @BLI_duplicatelist(ptr noundef nonnull %388, ptr noundef nonnull %390) #17
  call void @BLI_addhead(ptr noundef nonnull %388, ptr noundef %384) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  %391 = load i8, ptr %124, align 2, !tbaa !222
  %392 = zext i8 %391 to i32
  %393 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %32, i64 0, i32 19
  store i32 %392, ptr %393, align 8, !tbaa !229
  br label %400

394:                                              ; preds = %54
  %395 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %396 = tail call ptr %395(i64 noundef 48, ptr noundef nonnull @.str.19) #17
  %397 = getelementptr inbounds %struct.uiSafetyRct, ptr %396, i64 0, i32 3
  %398 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %397, ptr noundef nonnull align 8 dereferenceable(16) %398, i64 16, i1 false), !tbaa.struct !228
  %399 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 45
  tail call void @BLI_addhead(ptr noundef nonnull %399, ptr noundef %396) #17
  br label %400

400:                                              ; preds = %394, %381
  %401 = load i32, ptr %45, align 8, !tbaa !178
  %402 = and i32 %401, 1048576
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %497, label %404

404:                                              ; preds = %400
  %405 = call i32 @WM_window_pixels_x(ptr noundef %7) #17
  %406 = call i32 @WM_window_pixels_y(ptr noundef %7) #17
  %407 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 53, i32 1
  %408 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 53, i32 2
  %409 = load float, ptr %408, align 4, !tbaa !98
  store float %409, ptr %407, align 4, !tbaa !98
  %410 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 53, i32 2, i64 1
  %411 = load float, ptr %410, align 4, !tbaa !98
  %412 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 53, i32 1, i64 1
  store float %411, ptr %412, align 4, !tbaa !98
  %413 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11
  %414 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 1
  %415 = load float, ptr %414, align 4, !tbaa !108
  %416 = load float, ptr %413, align 4, !tbaa !107
  %417 = fsub float %415, %416
  %418 = sitofp i32 %405 to float
  %419 = fadd float %418, -2.000000e+01
  %420 = fcmp olt float %417, %419
  br i1 %420, label %421, label %434

421:                                              ; preds = %404
  %422 = fcmp olt float %416, 1.000000e+01
  %423 = fsub float 1.000000e+01, %416
  %424 = fptosi float %423 to i32
  %425 = select i1 %422, i32 %424, i32 0
  %426 = add nsw i32 %405, -10
  %427 = sitofp i32 %426 to float
  %428 = fcmp ogt float %415, %427
  br i1 %428, label %429, label %434

429:                                              ; preds = %421
  %430 = fsub float %427, %415
  %431 = sitofp i32 %425 to float
  %432 = fadd float %430, %431
  %433 = fptosi float %432 to i32
  br label %434

434:                                              ; preds = %421, %429, %404
  %435 = phi i32 [ %433, %429 ], [ %425, %421 ], [ 0, %404 ]
  %436 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 3
  %437 = load float, ptr %436, align 4, !tbaa !110
  %438 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 2
  %439 = load float, ptr %438, align 4, !tbaa !111
  %440 = fsub float %437, %439
  %441 = sitofp i32 %406 to float
  %442 = fadd float %441, -2.000000e+01
  %443 = fcmp olt float %440, %442
  br i1 %443, label %444, label %457

444:                                              ; preds = %434
  %445 = fcmp olt float %439, 1.000000e+01
  %446 = fsub float 1.000000e+01, %439
  %447 = fptosi float %446 to i32
  %448 = select i1 %445, i32 %447, i32 0
  %449 = add nsw i32 %406, -10
  %450 = sitofp i32 %449 to float
  %451 = fcmp ogt float %437, %450
  br i1 %451, label %452, label %457

452:                                              ; preds = %444
  %453 = fsub float %450, %437
  %454 = sitofp i32 %448 to float
  %455 = fadd float %453, %454
  %456 = fptosi float %455 to i32
  br label %457

457:                                              ; preds = %444, %452, %434
  %458 = phi i32 [ %456, %452 ], [ %448, %444 ], [ 0, %434 ]
  %459 = icmp ne i32 %435, 0
  %460 = icmp ne i32 %458, 0
  %461 = select i1 %459, i1 true, i1 %460
  br i1 %461, label %462, label %473

462:                                              ; preds = %457
  %463 = sitofp i32 %435 to float
  %464 = fadd float %409, %463
  store float %464, ptr %408, align 8, !tbaa !98
  %465 = sitofp i32 %458 to float
  %466 = fadd float %411, %465
  store float %466, ptr %410, align 4, !tbaa !98
  call void @ui_block_translate(ptr noundef %23, i32 noundef %435, i32 noundef %458) #17
  %467 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 109), align 2, !tbaa !230
  %468 = icmp sgt i16 %467, 0
  br i1 %468, label %469, label %473

469:                                              ; preds = %462
  %470 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 53, i32 5
  %471 = load i32, ptr %470, align 8, !tbaa !231
  %472 = or i32 %471, 2
  store i32 %472, ptr %470, align 8, !tbaa !231
  br label %473

473:                                              ; preds = %462, %469, %457
  %474 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 3
  store i32 0, ptr %474, align 8, !tbaa !124
  %475 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 3, i32 1
  store i32 %405, ptr %475, align 4, !tbaa !125
  %476 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 3, i32 2
  store i32 0, ptr %476, align 8, !tbaa !126
  %477 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 3, i32 3
  store i32 %406, ptr %477, align 4, !tbaa !127
  %478 = call float @ui_block_calculate_pie_segment(ptr noundef %23, ptr noundef nonnull %407) #17
  %479 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 110), align 8, !tbaa !232
  %480 = icmp sgt i16 %479, 0
  br i1 %480, label %481, label %575

481:                                              ; preds = %473
  %482 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 2
  %483 = load ptr, ptr %482, align 8, !tbaa !52
  %484 = icmp eq ptr %483, null
  br i1 %484, label %575, label %485

485:                                              ; preds = %481, %494
  %486 = phi ptr [ %495, %494 ], [ %483, %481 ]
  %487 = getelementptr inbounds %struct.uiBut, ptr %486, i64 0, i32 47
  %488 = load i8, ptr %487, align 2, !tbaa !233
  %489 = icmp eq i8 %488, -1
  br i1 %489, label %494, label %490

490:                                              ; preds = %485
  %491 = getelementptr inbounds %struct.uiBut, ptr %486, i64 0, i32 18
  %492 = load float, ptr %408, align 8, !tbaa !98
  %493 = load float, ptr %410, align 4, !tbaa !98
  call void @BLI_rctf_recenter(ptr noundef nonnull %491, float noundef %492, float noundef %493) #17
  br label %494

494:                                              ; preds = %485, %490
  %495 = load ptr, ptr %486, align 8, !tbaa !52
  %496 = icmp eq ptr %495, null
  br i1 %496, label %575, label %485, !llvm.loop !234

497:                                              ; preds = %400
  %498 = and i32 %401, 16
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %551

500:                                              ; preds = %497
  %501 = call i32 @WM_window_pixels_x(ptr noundef %7) #17
  %502 = call i32 @WM_window_pixels_y(ptr noundef %7) #17
  %503 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11
  %504 = load float, ptr %503, align 8, !tbaa !219
  %505 = fcmp olt float %504, 1.000000e+01
  br i1 %505, label %506, label %512

506:                                              ; preds = %500
  %507 = fsub float 1.000000e+01, %504
  %508 = fadd float %504, %507
  store float %508, ptr %503, align 8, !tbaa !219
  %509 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 1
  %510 = load float, ptr %509, align 4, !tbaa !220
  %511 = fadd float %507, %510
  store float %511, ptr %509, align 4, !tbaa !220
  br label %512

512:                                              ; preds = %506, %500
  %513 = phi float [ %507, %506 ], [ 0.000000e+00, %500 ]
  %514 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 1
  %515 = load float, ptr %514, align 4, !tbaa !220
  %516 = add nsw i32 %501, -10
  %517 = sitofp i32 %516 to float
  %518 = fcmp ogt float %515, %517
  br i1 %518, label %519, label %524

519:                                              ; preds = %512
  %520 = fsub float %517, %515
  %521 = load float, ptr %503, align 8, !tbaa !219
  %522 = fadd float %520, %521
  store float %522, ptr %503, align 8, !tbaa !219
  %523 = fadd float %515, %520
  store float %523, ptr %514, align 4, !tbaa !220
  br label %524

524:                                              ; preds = %519, %512
  %525 = phi float [ %520, %519 ], [ %513, %512 ]
  %526 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 2
  %527 = load float, ptr %526, align 8, !tbaa !203
  %528 = fcmp olt float %527, 1.000000e+01
  br i1 %528, label %529, label %530

529:                                              ; preds = %524
  store float 1.000000e+01, ptr %526, align 8, !tbaa !203
  br label %530

530:                                              ; preds = %529, %524
  %531 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 3
  %532 = load float, ptr %531, align 4, !tbaa !204
  %533 = add nsw i32 %502, -8
  %534 = sitofp i32 %533 to float
  %535 = fcmp ogt float %532, %534
  br i1 %535, label %536, label %537

536:                                              ; preds = %530
  store float %534, ptr %531, align 4, !tbaa !204
  br label %537

537:                                              ; preds = %536, %530
  %538 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 2
  %539 = load ptr, ptr %538, align 8, !tbaa !52
  %540 = icmp eq ptr %539, null
  br i1 %540, label %551, label %541

541:                                              ; preds = %537, %541
  %542 = phi ptr [ %549, %541 ], [ %539, %537 ]
  %543 = getelementptr inbounds %struct.uiBut, ptr %542, i64 0, i32 18
  %544 = load float, ptr %543, align 8, !tbaa !183
  %545 = fadd float %525, %544
  store float %545, ptr %543, align 8, !tbaa !183
  %546 = getelementptr inbounds %struct.uiBut, ptr %542, i64 0, i32 18, i32 1
  %547 = load float, ptr %546, align 4, !tbaa !184
  %548 = fadd float %525, %547
  store float %548, ptr %546, align 4, !tbaa !184
  %549 = load ptr, ptr %542, align 8, !tbaa !52
  %550 = icmp eq ptr %549, null
  br i1 %550, label %551, label %541, !llvm.loop !235

551:                                              ; preds = %541, %537, %497
  %552 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11
  %553 = load float, ptr %552, align 8, !tbaa !219
  %554 = sitofp i32 %6 to float
  %555 = fsub float %553, %554
  %556 = fptosi float %555 to i32
  %557 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 3
  store i32 %556, ptr %557, align 8, !tbaa !124
  %558 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 1
  %559 = load float, ptr %558, align 4, !tbaa !220
  %560 = fadd float %559, %554
  %561 = fptosi float %560 to i32
  %562 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 3, i32 1
  store i32 %561, ptr %562, align 4, !tbaa !125
  %563 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 2
  %564 = load float, ptr %563, align 8, !tbaa !203
  %565 = fsub float %564, %554
  %566 = fptosi float %565 to i32
  %567 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 3, i32 2
  store i32 %566, ptr %567, align 8, !tbaa !126
  %568 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 11, i32 3
  %569 = load float, ptr %568, align 4, !tbaa !204
  %570 = fadd float %569, 8.000000e+00
  %571 = fptosi float %570 to i32
  %572 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 3, i32 3
  store i32 %571, ptr %572, align 4, !tbaa !127
  %573 = sub nsw i32 0, %556
  %574 = sub nsw i32 0, %566
  call void @ui_block_translate(ptr noundef %23, i32 noundef %573, i32 noundef %574) #17
  br label %575

575:                                              ; preds = %494, %481, %473, %551
  %576 = icmp eq ptr %14, null
  br i1 %576, label %578, label %577

577:                                              ; preds = %575
  store ptr %14, ptr %48, align 8, !tbaa !217
  call void @uiBlockUpdateFromOld(ptr noundef %0, ptr noundef %23) #17
  call void @uiFreeInactiveBlocks(ptr noundef %0, ptr noundef nonnull %13) #17
  br label %578

578:                                              ; preds = %577, %575
  call void @ui_popup_block_scrolltest(ptr noundef %23)
  call void @ED_region_init(ptr noundef %0, ptr noundef %8) #17
  %579 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 7
  %580 = load i16, ptr %579, align 4, !tbaa !236
  %581 = sext i16 %580 to i32
  call void @wmSubWindowSet(ptr noundef %7, i32 noundef %581) #17
  %582 = load i16, ptr %579, align 4, !tbaa !236
  %583 = sext i16 %582 to i32
  %584 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 10
  call void @wm_subwindow_matrix_get(ptr noundef %7, i32 noundef %583, ptr noundef nonnull %584) #17
  call void @ED_region_tag_redraw(ptr noundef %8) #17
  call void @ED_region_update_rect(ptr noundef %0, ptr noundef %8) #17
  ret ptr %23
}

declare void @uiEndBlock_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #1

declare void @ui_block_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare float @ui_block_calculate_pie_segment(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_rctf_recenter(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @uiBlockUpdateFromOld(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiFreeInactiveBlocks(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @wm_subwindow_matrix_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_region_update_rect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ui_popup_block_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %9 = tail call ptr %8(i64 noundef 192, ptr noundef nonnull @.str.20) #17
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  %11 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 12
  store ptr %10, ptr %11, align 8, !tbaa !237
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %13 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !238
  %14 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 8
  store ptr %3, ptr %14, align 8, !tbaa !212
  %15 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 8, i32 1
  store ptr %4, ptr %15, align 8, !tbaa !215
  %16 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 8, i32 2
  store ptr %5, ptr %16, align 8, !tbaa !213
  %17 = icmp eq ptr %2, null
  %18 = select i1 %17, ptr null, ptr %1
  %19 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 8, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !239
  %20 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 8, i32 3
  %21 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 21
  %22 = load ptr, ptr %21, align 8, !tbaa !112
  %23 = getelementptr inbounds %struct.wmEvent, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !53
  store i32 %24, ptr %20, align 4, !tbaa !53
  %25 = getelementptr inbounds %struct.wmEvent, ptr %22, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !53
  %27 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 8, i32 3, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !53
  %28 = tail call ptr @CTX_wm_screen(ptr noundef %0) #17
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %30 = tail call ptr %29(i64 noundef 384, ptr noundef nonnull @.str.30) #17
  %31 = getelementptr inbounds %struct.bScreen, ptr %28, i64 0, i32 4
  tail call void @BLI_addtail(ptr noundef nonnull %31, ptr noundef %30) #17
  %32 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 8
  store i16 3, ptr %32, align 2, !tbaa !87
  %33 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 9
  store i16 7, ptr %33, align 8, !tbaa !90
  store ptr %30, ptr %9, align 8, !tbaa !208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) @ui_popup_block_create.type, i8 0, i64 184, i1 false)
  store ptr @ui_block_region_draw, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_popup_block_create.type, i64 0, i32 5), align 8, !tbaa !91
  store i32 3, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_popup_block_create.type, i64 0, i32 2), align 8, !tbaa !94
  %34 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 20
  store ptr @ui_popup_block_create.type, ptr %34, align 8, !tbaa !95
  %35 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 26
  tail call void @UI_add_region_handlers(ptr noundef nonnull %35) #17
  %36 = tail call ptr @ui_popup_block_refresh(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2)
  %37 = getelementptr inbounds %struct.uiBlock, ptr %36, i64 0, i32 46
  %38 = load ptr, ptr %37, align 8, !tbaa !216
  ret ptr %38
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @ui_block_region_draw(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 14
  %4 = load i16, ptr %3, align 4, !tbaa !240
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = and i16 %4, -9
  store i16 %8, ptr %3, align 4, !tbaa !240
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !214
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %7 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !241
  %15 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 46
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  %17 = tail call ptr @ui_popup_block_refresh(ptr noundef %0, ptr noundef %16, ptr noundef null, ptr noundef null)
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %12, !llvm.loop !242

19:                                               ; preds = %12, %7, %2
  %20 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %25, %23 ], [ %21, %19 ]
  tail call void @uiDrawBlock(ptr noundef %0, ptr noundef nonnull %24) #17
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %23, !llvm.loop !243

27:                                               ; preds = %23, %19
  ret void
}

declare void @UI_add_region_handlers(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ui_popup_block_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #17
  %4 = load ptr, ptr %1, align 8, !tbaa !208
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @wm_draw_region_clear(ptr noundef nonnull %5, ptr noundef %4) #17
  br label %8

8:                                                ; preds = %2, %7
  tail call void @ED_region_exit(ptr noundef %0, ptr noundef %4) #17
  tail call void @BKE_area_region_free(ptr noundef null, ptr noundef %4) #17
  %9 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 4
  tail call void @BLI_freelinkN(ptr noundef nonnull %9, ptr noundef %4) #17
  %10 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !244
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @CTX_wm_manager(ptr noundef %0) #17
  %15 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %16 = load ptr, ptr %10, align 8, !tbaa !244
  tail call void @WM_event_remove_timer(ptr noundef %14, ptr noundef %15, ptr noundef %16) #17
  br label %17

17:                                               ; preds = %8, %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %18(ptr noundef nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_set_but_hsv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.uiBlock, ptr %4, i64 0, i32 50
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %7 = icmp eq i16 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @hsl_to_rgb_v(ptr noundef nonnull %5, ptr noundef nonnull %2) #17
  br label %10

9:                                                ; preds = %1
  call void @hsv_to_rgb_v(ptr noundef nonnull %5, ptr noundef nonnull %2) #17
  br label %10

10:                                               ; preds = %8, %9
  call void @ui_set_but_vectorf(ptr noundef %0, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @ui_block_hsv_get(ptr noundef readnone %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 50
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_color_picker_to_rgb_v(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %4 = icmp eq i16 %3, 4
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @hsl_to_rgb_v(ptr noundef %0, ptr noundef %1) #17
  br label %7

6:                                                ; preds = %2
  tail call void @hsv_to_rgb_v(ptr noundef %0, ptr noundef %1) #17
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

declare void @ui_set_but_vectorf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ui_block_func_COLOR(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = load ptr, ptr %1, align 8, !tbaa !208
  %13 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %12, ptr noundef nonnull @__func__.ui_block_func_COLOR, i16 noundef signext 0) #17
  %14 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = tail call i32 @RNA_property_subtype(ptr noundef %15) #17
  %17 = icmp eq i32 %16, 30
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 51
  store i8 0, ptr %19, align 4, !tbaa !246
  br label %20

20:                                               ; preds = %18, %3
  %21 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 27
  %26 = load i32, ptr %25, align 8, !tbaa !178
  %27 = and i32 %26, 512
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ %28, %24 ], [ false, %20 ]
  %31 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 18
  %32 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 71
  %33 = load ptr, ptr %32, align 8, !tbaa !247
  %34 = load float, ptr %33, align 4, !tbaa !98
  store float %34, ptr %31, align 4, !tbaa !98
  %35 = getelementptr inbounds float, ptr %33, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !98
  %37 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 18, i64 1
  store float %36, ptr %37, align 4, !tbaa !98
  %38 = getelementptr inbounds float, ptr %33, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !98
  %40 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 18, i64 2
  store float %39, ptr %40, align 4, !tbaa !98
  %41 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %42 = load ptr, ptr %14, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  %43 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 50
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %45 = sitofp i16 %44 to float
  %46 = fmul float %45, 0x3FD3333340000000
  %47 = tail call float @llvm.fmuladd.f32(float %45, float 7.500000e+00, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %45, float 0x3FE6666660000000, float %47)
  %49 = fptosi float %48 to i32
  %50 = sitofp i32 %49 to float
  %51 = tail call float @llvm.fmuladd.f32(float %45, float -1.500000e+00, float %50)
  %52 = fptosi float %51 to i32
  %53 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 51
  %54 = load i8, ptr %53, align 4, !tbaa !246
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr inbounds float, ptr %4, i64 1
  %57 = getelementptr inbounds float, ptr %4, i64 2
  br i1 %55, label %58, label %63

58:                                               ; preds = %29
  %59 = tail call ptr @BLI_strncpy(ptr noundef nonnull @uiBlockPicker.tip, ptr noundef nonnull @.str.31, i64 noundef 50) #17
  %60 = load float, ptr %31, align 4, !tbaa !98
  store float %60, ptr %4, align 4, !tbaa !98
  %61 = load float, ptr %37, align 4, !tbaa !98
  store float %61, ptr %56, align 4, !tbaa !98
  %62 = load float, ptr %40, align 4, !tbaa !98
  store float %62, ptr %57, align 4, !tbaa !98
  br label %68

63:                                               ; preds = %29
  %64 = tail call ptr @BLI_strncpy(ptr noundef nonnull @uiBlockPicker.tip, ptr noundef nonnull @.str.32, i64 noundef 50) #17
  %65 = load float, ptr %31, align 4, !tbaa !98
  store float %65, ptr %4, align 4, !tbaa !98
  %66 = load float, ptr %37, align 4, !tbaa !98
  store float %66, ptr %56, align 4, !tbaa !98
  %67 = load float, ptr %40, align 4, !tbaa !98
  store float %67, ptr %57, align 4, !tbaa !98
  call void @ui_block_to_display_space_v3(ptr noundef %13, ptr noundef nonnull %4) #17
  br label %68

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 18, i64 3
  store float 0x47EFFFFFE0000000, ptr %69, align 4, !tbaa !98
  call void @RNA_property_float_ui_range(ptr noundef nonnull %41, ptr noundef %42, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  call void @RNA_property_float_range(ptr noundef nonnull %41, ptr noundef %42, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  call void @RNA_property_float_get_array(ptr noundef nonnull %41, ptr noundef %42, ptr noundef nonnull %31) #17
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  switch i16 %70, label %74 [
    i16 1, label %71
    i16 2, label %72
    i16 3, label %73
  ]

71:                                               ; preds = %68
  call fastcc void @square_picker(ptr noundef %13, ptr noundef nonnull %41, ptr noundef %42, i32 noundef 0)
  br label %95

72:                                               ; preds = %68
  call fastcc void @square_picker(ptr noundef %13, ptr noundef nonnull %41, ptr noundef %42, i32 noundef 2)
  br label %95

73:                                               ; preds = %68
  call fastcc void @square_picker(ptr noundef %13, ptr noundef nonnull %41, ptr noundef %42, i32 noundef 1)
  br label %95

74:                                               ; preds = %68
  %75 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %76 = sitofp i16 %75 to float
  %77 = fmul float %76, 7.500000e+00
  %78 = fptosi float %77 to i16
  %79 = call ptr @uiDefButR_prop(ptr noundef %13, i32 noundef 22016, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i16 noundef signext %78, i16 noundef signext %78, ptr noundef nonnull %41, ptr noundef %42, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.58) #17
  call void @uiButSetFunc(ptr noundef %79, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %79, ptr noundef null) #17
  %80 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %81 = icmp eq i16 %80, 4
  %82 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %83 = sitofp i16 %82 to float
  %84 = fmul float %83, 0x3FD3333340000000
  %85 = call float @llvm.fmuladd.f32(float %83, float 7.500000e+00, float %84)
  %86 = fptosi float %85 to i32
  %87 = fmul float %83, 0x3FE6666660000000
  %88 = fptosi float %87 to i16
  %89 = fmul float %83, 7.500000e+00
  %90 = fptosi float %89 to i16
  br i1 %81, label %91, label %93

91:                                               ; preds = %74
  %92 = call ptr @uiDefButR_prop(ptr noundef %13, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %86, i32 noundef 0, i16 noundef signext %88, i16 noundef signext %90, ptr noundef nonnull %41, ptr noundef %42, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+01, float noundef 0.000000e+00, ptr noundef nonnull @.str.49) #17
  call void @uiButSetFunc(ptr noundef %92, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %92, ptr noundef null) #17
  br label %95

93:                                               ; preds = %74
  %94 = call ptr @uiDefButR_prop(ptr noundef %13, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %86, i32 noundef 0, i16 noundef signext %88, i16 noundef signext %90, ptr noundef nonnull %41, ptr noundef %42, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 9.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.51) #17
  call void @uiButSetFunc(ptr noundef %94, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %94, ptr noundef null) #17
  br label %95

95:                                               ; preds = %93, %91, %73, %72, %71
  %96 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %97 = sitofp i16 %96 to float
  %98 = fmul float %97, -1.500000e+00
  %99 = fptosi float %98 to i32
  call void @uiBlockBeginAlign(ptr noundef %13) #17
  %100 = sdiv i32 %49, 3
  %101 = trunc i32 %100 to i16
  %102 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %103 = call ptr @uiDefButS(ptr noundef %13, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %99, i16 noundef signext %101, i16 noundef signext %102, ptr noundef nonnull @uiBlockPicker.colormode, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #17
  call void @uiButSetFunc(ptr noundef %103, ptr noundef nonnull @do_picker_new_mode_cb, ptr noundef %103, ptr noundef null) #17
  %104 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %105 = icmp eq i16 %104, 4
  %106 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %107 = select i1 %105, ptr @.str.34, ptr @.str.35
  %108 = call ptr @uiDefButS(ptr noundef %13, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull %107, i32 noundef %100, i32 noundef %99, i16 noundef signext %101, i16 noundef signext %106, ptr noundef nonnull @uiBlockPicker.colormode, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #17
  call void @uiButSetFunc(ptr noundef %108, ptr noundef nonnull @do_picker_new_mode_cb, ptr noundef %108, ptr noundef null) #17
  %109 = shl nsw i32 %49, 1
  %110 = sdiv i32 %109, 3
  %111 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %112 = call ptr @uiDefButS(ptr noundef %13, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %110, i32 noundef %99, i16 noundef signext %101, i16 noundef signext %111, ptr noundef nonnull @uiBlockPicker.colormode, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #17
  call void @uiButSetFunc(ptr noundef %112, ptr noundef nonnull @do_picker_new_mode_cb, ptr noundef %112, ptr noundef null) #17
  call void @uiBlockEndAlign(ptr noundef %13) #17
  %113 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %114 = sext i16 %113 to i32
  %115 = mul nsw i32 %114, -3
  br i1 %30, label %119, label %116

116:                                              ; preds = %95
  %117 = add nsw i32 %52, 10
  %118 = call ptr @uiDefIconButO(ptr noundef %13, i32 noundef 512, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef 35, i32 noundef %117, i32 noundef %115, i16 noundef signext %113, i16 noundef signext %113, ptr noundef null) #17
  call void @uiButSetFunc(ptr noundef %118, ptr noundef nonnull @close_popup_cb, ptr noundef %118, ptr noundef null) #17
  br label %119

119:                                              ; preds = %116, %95
  call void @uiBlockBeginAlign(ptr noundef %13) #17
  %120 = trunc i32 %52 to i16
  %121 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %122 = call ptr @uiDefButR_prop(ptr noundef %13, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef %115, i16 noundef signext %120, i16 noundef signext %121, ptr noundef nonnull %41, ptr noundef %42, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.39) #17
  call void @uiButSetFunc(ptr noundef %122, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %122, ptr noundef null) #17
  %123 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %124 = sext i16 %123 to i32
  %125 = sub nsw i32 %115, %124
  %126 = call ptr @uiDefButR_prop(ptr noundef %13, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef %125, i16 noundef signext %120, i16 noundef signext %123, ptr noundef nonnull %41, ptr noundef %42, i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.41) #17
  call void @uiButSetFunc(ptr noundef %126, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %126, ptr noundef null) #17
  %127 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %128 = sext i16 %127 to i32
  %129 = sub nsw i32 %125, %128
  %130 = call ptr @uiDefButR_prop(ptr noundef %13, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef %129, i16 noundef signext %120, i16 noundef signext %127, ptr noundef nonnull %41, ptr noundef %42, i32 noundef 2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.43) #17
  call void @uiButSetFunc(ptr noundef %130, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %130, ptr noundef null) #17
  %131 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %132 = sext i16 %131 to i32
  %133 = mul nsw i32 %132, -3
  call void @uiBlockBeginAlign(ptr noundef %13) #17
  %134 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %135 = call ptr @uiDefButF(ptr noundef %13, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %133, i16 noundef signext %120, i16 noundef signext %134, ptr noundef nonnull %43, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.45) #17
  call void @uiButSetFunc(ptr noundef %135, ptr noundef nonnull @do_color_wheel_rna_cb, ptr noundef %135, ptr noundef nonnull %43) #17
  %136 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %137 = sext i16 %136 to i32
  %138 = sub nsw i32 %133, %137
  %139 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 50, i64 1
  %140 = call ptr @uiDefButF(ptr noundef %13, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef %138, i16 noundef signext %120, i16 noundef signext %136, ptr noundef nonnull %139, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.47) #17
  call void @uiButSetFunc(ptr noundef %140, ptr noundef nonnull @do_color_wheel_rna_cb, ptr noundef %140, ptr noundef nonnull %43) #17
  %141 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %142 = icmp eq i16 %141, 4
  %143 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %144 = sext i16 %143 to i32
  %145 = sub nsw i32 %138, %144
  %146 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 50, i64 2
  br i1 %142, label %147, label %149

147:                                              ; preds = %119
  %148 = call ptr @uiDefButF(ptr noundef %13, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef %145, i16 noundef signext %120, i16 noundef signext %143, ptr noundef nonnull %146, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.49) #17
  br label %152

149:                                              ; preds = %119
  %150 = load float, ptr %7, align 4, !tbaa !98
  %151 = call ptr @uiDefButF(ptr noundef %13, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef %145, i16 noundef signext %120, i16 noundef signext %143, ptr noundef nonnull %146, float noundef 0.000000e+00, float noundef %150, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.51) #17
  br label %152

152:                                              ; preds = %149, %147
  %153 = phi ptr [ %148, %147 ], [ %151, %149 ]
  %154 = load float, ptr %9, align 4, !tbaa !98
  %155 = getelementptr inbounds %struct.uiBut, ptr %153, i64 0, i32 21
  store float %154, ptr %155, align 4, !tbaa !192
  call void @uiButSetFunc(ptr noundef %153, ptr noundef nonnull @do_color_wheel_rna_cb, ptr noundef %153, ptr noundef nonnull %43) #17
  call void @uiBlockEndAlign(ptr noundef %13) #17
  %156 = load float, ptr %69, align 4, !tbaa !98
  %157 = fcmp une float %156, 0x47EFFFFFE0000000
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %160 = sext i16 %159 to i32
  %161 = sub nsw i32 %145, %160
  %162 = call ptr @uiDefButR_prop(ptr noundef %13, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef %161, i16 noundef signext %120, i16 noundef signext %159, ptr noundef nonnull %41, ptr noundef %42, i32 noundef 3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.53) #17
  call void @uiButSetFunc(ptr noundef %162, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %162, ptr noundef null) #17
  br label %164

163:                                              ; preds = %152
  store float 1.000000e+00, ptr %69, align 4, !tbaa !98
  br label %164

164:                                              ; preds = %163, %158
  call void @rgb_float_to_uchar(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %165 = load i8, ptr %5, align 1, !tbaa !56
  %166 = zext i8 %165 to i32
  %167 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 1
  %168 = load i8, ptr %167, align 1, !tbaa !56
  %169 = zext i8 %168 to i32
  %170 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 2
  %171 = load i8, ptr %170, align 1, !tbaa !56
  %172 = zext i8 %171 to i32
  %173 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull @uiBlockPicker.hexcol, i64 noundef 128, ptr noundef nonnull @.str.54, i32 noundef %166, i32 noundef %169, i32 noundef %172) #17
  %174 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %175 = sext i16 %174 to i32
  %176 = mul nsw i32 %175, -3
  %177 = call ptr @uiDefBut(ptr noundef %13, i32 noundef 3072, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef %176, i16 noundef signext %120, i16 noundef signext %174, ptr noundef nonnull @uiBlockPicker.hexcol, float noundef 0.000000e+00, float noundef 8.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.56) #17
  call void @uiButSetFunc(ptr noundef %177, ptr noundef nonnull @do_hex_rna_cb, ptr noundef %177, ptr noundef nonnull @uiBlockPicker.hexcol) #17
  %178 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %179 = sext i16 %178 to i32
  %180 = sub nsw i32 %176, %179
  %181 = call ptr @uiDefBut(ptr noundef %13, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef %180, i16 noundef signext %120, i16 noundef signext %178, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #17
  %182 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %183 = icmp eq i16 %182, 4
  br i1 %183, label %184, label %185

184:                                              ; preds = %164
  call void @rgb_to_hsl_v(ptr noundef nonnull %4, ptr noundef nonnull %43) #17
  br label %186

185:                                              ; preds = %164
  call void @rgb_to_hsv_v(ptr noundef nonnull %4, ptr noundef nonnull %43) #17
  br label %186

186:                                              ; preds = %184, %185
  %187 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !52
  %189 = icmp eq ptr %188, null
  br i1 %189, label %240, label %190

190:                                              ; preds = %186
  %191 = load i16, ptr @uiBlockPicker.colormode, align 2, !tbaa !97
  %192 = icmp eq i16 %191, 0
  %193 = icmp eq i16 %191, 2
  %194 = icmp eq i16 %191, 1
  br label %195

195:                                              ; preds = %237, %190
  %196 = phi ptr [ %188, %190 ], [ %238, %237 ]
  %197 = getelementptr inbounds %struct.uiBut, ptr %196, i64 0, i32 27
  %198 = load ptr, ptr %197, align 8, !tbaa !248
  %199 = icmp eq ptr %198, @do_picker_rna_cb
  br i1 %199, label %200, label %215

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.uiBut, ptr %196, i64 0, i32 4
  %202 = load i32, ptr %201, align 8, !tbaa !75
  %203 = icmp eq i32 %202, 7168
  br i1 %203, label %204, label %215

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.uiBut, ptr %196, i64 0, i32 56
  %206 = load i32, ptr %205, align 8, !tbaa !77
  %207 = icmp eq i32 %206, 3
  br i1 %207, label %215, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.uiBut, ptr %196, i64 0, i32 2
  %210 = load i32, ptr %209, align 8, !tbaa !78
  br i1 %192, label %211, label %213

211:                                              ; preds = %208
  %212 = and i32 %210, -33
  store i32 %212, ptr %209, align 8, !tbaa !78
  br label %237

213:                                              ; preds = %208
  %214 = or i32 %210, 32
  store i32 %214, ptr %209, align 8, !tbaa !78
  br label %237

215:                                              ; preds = %204, %200, %195
  %216 = icmp eq ptr %198, @do_color_wheel_rna_cb
  br i1 %216, label %217, label %224

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.uiBut, ptr %196, i64 0, i32 2
  %219 = load i32, ptr %218, align 8, !tbaa !78
  br i1 %194, label %220, label %222

220:                                              ; preds = %217
  %221 = and i32 %219, -33
  store i32 %221, ptr %218, align 8, !tbaa !78
  br label %237

222:                                              ; preds = %217
  %223 = or i32 %219, 32
  store i32 %223, ptr %218, align 8, !tbaa !78
  br label %237

224:                                              ; preds = %215
  %225 = icmp eq ptr %198, @do_hex_rna_cb
  br i1 %225, label %230, label %226

226:                                              ; preds = %224
  %227 = getelementptr inbounds %struct.uiBut, ptr %196, i64 0, i32 4
  %228 = load i32, ptr %227, align 8, !tbaa !75
  %229 = icmp eq i32 %228, 5120
  br i1 %229, label %230, label %237

230:                                              ; preds = %226, %224
  %231 = getelementptr inbounds %struct.uiBut, ptr %196, i64 0, i32 2
  %232 = load i32, ptr %231, align 8, !tbaa !78
  br i1 %193, label %233, label %235

233:                                              ; preds = %230
  %234 = and i32 %232, -33
  store i32 %234, ptr %231, align 8, !tbaa !78
  br label %237

235:                                              ; preds = %230
  %236 = or i32 %232, 32
  store i32 %236, ptr %231, align 8, !tbaa !78
  br label %237

237:                                              ; preds = %235, %233, %226, %222, %220, %213, %211
  %238 = load ptr, ptr %196, align 8, !tbaa !52
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %195, !llvm.loop !249

240:                                              ; preds = %237, %186
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  %241 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 27
  store i32 1411, ptr %241, align 8, !tbaa !178
  %242 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %243 = sitofp i16 %242 to double
  %244 = fmul double %243, 5.000000e-01
  %245 = fptosi double %244 to i32
  call void @uiBoundsBlock(ptr noundef %13, i32 noundef %245) #17
  %246 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 23
  store ptr @ui_picker_small_wheel_cb, ptr %246, align 8, !tbaa !250
  %247 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 29
  store i8 1, ptr %247, align 2, !tbaa !222
  ret ptr %13
}

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @uiBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ui_picker_small_wheel_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !157
  %7 = icmp eq i16 %6, 11
  %8 = select i1 %7, float 0xBFA99999A0000000, float 0.000000e+00
  %9 = icmp eq i16 %6, 10
  %10 = select i1 %9, float 0x3FA99999A0000000, float %8
  %11 = fcmp une float %10, 0.000000e+00
  br i1 %11, label %12, label %62

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %62, label %16

16:                                               ; preds = %12, %59
  %17 = phi ptr [ %60, %59 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !75
  %20 = icmp eq i32 %19, 13312
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 67
  %23 = load ptr, ptr %22, align 8, !tbaa !251
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 46
  %27 = load ptr, ptr %26, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %28 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 50
  %29 = tail call zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef nonnull %17) #17
  call void @ui_get_but_vectorf(ptr noundef nonnull %17, ptr noundef nonnull %4) #17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  call void @ui_block_to_display_space_v3(ptr noundef %1, ptr noundef nonnull %4) #17
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %34 = icmp eq i16 %33, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @rgb_to_hsl_compat_v(ptr noundef nonnull %4, ptr noundef nonnull %28) #17
  br label %37

36:                                               ; preds = %32
  call void @rgb_to_hsv_compat_v(ptr noundef nonnull %4, ptr noundef nonnull %28) #17
  br label %37

37:                                               ; preds = %35, %36
  %38 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 50, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !98
  %40 = fadd float %10, %39
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = fcmp ogt float %40, 1.000000e+00
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %42, %37
  %46 = phi float [ 0.000000e+00, %37 ], [ %40, %44 ], [ 1.000000e+00, %42 ]
  store float %46, ptr %38, align 4, !tbaa !98
  %47 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %48 = icmp eq i16 %47, 4
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @hsl_to_rgb_v(ptr noundef nonnull %28, ptr noundef nonnull %4) #17
  br label %51

50:                                               ; preds = %45
  call void @hsv_to_rgb_v(ptr noundef nonnull %28, ptr noundef nonnull %4) #17
  br label %51

51:                                               ; preds = %49, %50
  br i1 %30, label %53, label %52

52:                                               ; preds = %51
  call void @ui_block_to_scene_linear_v3(ptr noundef %1, ptr noundef nonnull %4) #17
  br label %53

53:                                               ; preds = %52, %51
  call void @ui_set_but_vectorf(ptr noundef nonnull %17, ptr noundef nonnull %4) #17
  %54 = zext i1 %30 to i8
  call fastcc void @ui_update_block_buts_rgb(ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext %54)
  %55 = icmp eq ptr %27, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %27, i64 0, i32 16
  store i32 16, ptr %57, align 8, !tbaa !252
  br label %58

58:                                               ; preds = %56, %53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %62

59:                                               ; preds = %16, %21
  %60 = load ptr, ptr %17, align 8, !tbaa !52
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %16, !llvm.loop !253

62:                                               ; preds = %59, %12, %3, %58
  %63 = phi i32 [ 1, %58 ], [ 0, %3 ], [ 0, %12 ], [ 0, %59 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ui_popup_menu_memory_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !254
  %4 = and i32 %3, 255
  %5 = load i1, ptr @ui_popup_menu_memory__internal.first, align 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @ui_popup_menu_memory__internal.mem, i8 -1, i64 1024, i1 false)
  store i1 true, ptr @ui_popup_menu_memory__internal.first, align 1
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %9 = zext nneg i32 %4 to i64
  %10 = getelementptr inbounds [256 x i32], ptr @ui_popup_menu_memory__internal.mem, i64 0, i64 %9
  br label %11

11:                                               ; preds = %27, %7
  %12 = phi ptr [ %8, %7 ], [ %13, %27 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %17, i32 noundef 124) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = ptrtoint ptr %18 to i64
  %22 = ptrtoint ptr %17 to i64
  %23 = sub i64 %21, %22
  %24 = tail call i32 @BLI_ghashutil_strhash_n(ptr noundef %17, i64 noundef %23) #17
  br label %27

25:                                               ; preds = %15
  %26 = tail call i32 @BLI_ghashutil_strhash_p(ptr noundef %17) #17
  br label %27

27:                                               ; preds = %20, %25
  %28 = phi i32 [ %24, %20 ], [ %26, %25 ]
  %29 = load i32, ptr %10, align 4, !tbaa !53
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %11, !llvm.loop !255

31:                                               ; preds = %11, %27
  %32 = phi ptr [ %13, %27 ], [ null, %11 ]
  ret ptr %32
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_popup_menu_memory_set(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 4, !tbaa !254
  %5 = and i32 %4, 255
  %6 = load i1, ptr @ui_popup_menu_memory__internal.first, align 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @ui_popup_menu_memory__internal.mem, i8 -1, i64 1024, i1 false)
  store i1 true, ptr @ui_popup_menu_memory__internal.first, align 1
  br label %8

8:                                                ; preds = %7, %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 124) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %16, %17
  %19 = tail call i32 @BLI_ghashutil_strhash_n(ptr noundef %12, i64 noundef %18) #17
  br label %22

20:                                               ; preds = %10
  %21 = tail call i32 @BLI_ghashutil_strhash_p(ptr noundef %12) #17
  br label %22

22:                                               ; preds = %15, %20
  %23 = phi i32 [ %19, %15 ], [ %21, %20 ]
  %24 = zext nneg i32 %5 to i64
  %25 = getelementptr inbounds [256 x i32], ptr @ui_popup_menu_memory__internal.mem, i64 0, i64 %24
  store i32 %23, ptr %25, align 4, !tbaa !53
  br label %50

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %28 = zext nneg i32 %5 to i64
  %29 = getelementptr inbounds [256 x i32], ptr @ui_popup_menu_memory__internal.mem, i64 0, i64 %28
  br label %30

30:                                               ; preds = %46, %26
  %31 = phi ptr [ %27, %26 ], [ %32, %46 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.uiBut, ptr %32, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %36, i32 noundef 124) #18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = ptrtoint ptr %37 to i64
  %41 = ptrtoint ptr %36 to i64
  %42 = sub i64 %40, %41
  %43 = tail call i32 @BLI_ghashutil_strhash_n(ptr noundef %36, i64 noundef %42) #17
  br label %46

44:                                               ; preds = %34
  %45 = tail call i32 @BLI_ghashutil_strhash_p(ptr noundef %36) #17
  br label %46

46:                                               ; preds = %39, %44
  %47 = phi i32 [ %43, %39 ], [ %45, %44 ]
  %48 = load i32, ptr %29, align 4, !tbaa !53
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %30, !llvm.loop !255

50:                                               ; preds = %30, %46, %22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_popup_translate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %2, align 4, !tbaa !53
  %6 = getelementptr inbounds i32, ptr %2, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !53
  tail call void @BLI_rcti_translate(ptr noundef nonnull %4, i32 noundef %5, i32 noundef %7) #17
  tail call void @ED_region_update_rect(ptr noundef %0, ptr noundef %1) #17
  tail call void @ED_region_tag_redraw(ptr noundef %1) #17
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %14

11:                                               ; preds = %19, %14
  %12 = load ptr, ptr %15, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14, !llvm.loop !256

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %12, %11 ], [ %9, %3 ]
  %16 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 45
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %11, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %31, %19 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.uiSafetyRct, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %2, align 4, !tbaa !53
  %23 = sitofp i32 %22 to float
  %24 = load i32, ptr %6, align 4, !tbaa !53
  %25 = sitofp i32 %24 to float
  tail call void @BLI_rctf_translate(ptr noundef nonnull %21, float noundef %23, float noundef %25) #17
  %26 = getelementptr inbounds %struct.uiSafetyRct, ptr %20, i64 0, i32 3
  %27 = load i32, ptr %2, align 4, !tbaa !53
  %28 = sitofp i32 %27 to float
  %29 = load i32, ptr %6, align 4, !tbaa !53
  %30 = sitofp i32 %29 to float
  tail call void @BLI_rctf_translate(ptr noundef nonnull %26, float noundef %28, float noundef %30) #17
  %31 = load ptr, ptr %20, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %11, label %19, !llvm.loop !257

33:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ui_popup_menu_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %7 = tail call ptr @UI_GetStyleDraw() #17
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %9 = tail call ptr %8(i64 noundef 56, ptr noundef nonnull @__func__.ui_popup_menu_create) #17
  %10 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef null, ptr noundef nonnull @__func__.ui_popup_menu_create, i16 noundef signext 2) #17
  store ptr %10, ptr %9, align 8, !tbaa !258
  %11 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !178
  %13 = or i32 %12, 8
  store i32 %13, ptr %11, align 8, !tbaa !178
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %15 = sitofp i16 %14 to float
  %16 = fmul float %15, 0x3FC99999A0000000
  %17 = fptosi float %16 to i32
  %18 = tail call ptr @uiBlockLayout(ptr noundef %10, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 200, i32 noundef 0, i32 noundef %17, ptr noundef %7) #17
  %19 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !260
  %20 = icmp eq ptr %2, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = tail call zeroext i8 @ui_block_is_menu(ptr noundef %23) #17
  %25 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 6
  store i8 %24, ptr %25, align 1, !tbaa !261
  %26 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 2
  store ptr %2, ptr %26, align 8, !tbaa !262
  %27 = load ptr, ptr %19, align 8, !tbaa !260
  tail call void @uiLayoutSetOperatorContext(ptr noundef %27, i32 noundef 1) #17
  %28 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 32
  %29 = load ptr, ptr %28, align 8, !tbaa !263
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %47

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 6
  store i8 0, ptr %32, align 1, !tbaa !261
  %33 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 2
  store ptr %2, ptr %33, align 8, !tbaa !262
  tail call void @uiLayoutSetOperatorContext(ptr noundef %18, i32 noundef 1) #17
  %34 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 21
  %35 = load ptr, ptr %34, align 8, !tbaa !112
  %36 = getelementptr inbounds %struct.wmEvent, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !114
  %38 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 3
  store i32 %37, ptr %38, align 8, !tbaa !264
  %39 = getelementptr inbounds %struct.wmEvent, ptr %35, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !159
  %41 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 4
  store i32 %40, ptr %41, align 4, !tbaa !265
  %42 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 5
  store i8 1, ptr %42, align 8, !tbaa !266
  %43 = load ptr, ptr %9, align 8, !tbaa !258
  %44 = getelementptr inbounds %struct.uiBlock, ptr %43, i64 0, i32 27
  %45 = load i32, ptr %44, align 8, !tbaa !178
  %46 = or i32 %45, 2048
  store i32 %46, ptr %44, align 8, !tbaa !178
  br label %49

47:                                               ; preds = %21
  %48 = load ptr, ptr %19, align 8, !tbaa !260
  tail call void @uiLayoutContextCopy(ptr noundef %48, ptr noundef nonnull %29) #17
  br label %49

49:                                               ; preds = %21, %47, %31
  %50 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 7
  store ptr %3, ptr %50, align 8, !tbaa !267
  %51 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 8
  store ptr %4, ptr %51, align 8, !tbaa !268
  %52 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @ui_block_func_POPUP, ptr noundef nonnull %9)
  br i1 %20, label %53, label %56

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %52, i64 0, i32 4
  store i8 1, ptr %54, align 1, !tbaa !269
  %55 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %55, ptr noundef %52, i8 noundef zeroext 0) #17
  tail call void @WM_event_add_mousemove(ptr noundef %0) #17
  br label %56

56:                                               ; preds = %53, %49
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %57(ptr noundef nonnull %9) #17
  ret ptr %52
}

declare ptr @UI_GetStyleDraw() local_unnamed_addr #1

declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ui_block_is_menu(ptr noundef) local_unnamed_addr #1

declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @uiLayoutContextCopy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @ui_block_func_POPUP(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %6 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !267
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !258
  %11 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 46
  store ptr %1, ptr %11, align 8, !tbaa !216
  %12 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !260
  %14 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !268
  tail call void %7(ptr noundef %0, ptr noundef %13, ptr noundef %15) #17
  %16 = load ptr, ptr %2, align 8, !tbaa !258
  %17 = getelementptr inbounds %struct.uiBlock, ptr %16, i64 0, i32 46
  store ptr null, ptr %17, align 8, !tbaa !216
  br label %18

18:                                               ; preds = %9, %3
  %19 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !262
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.uiBut, ptr %20, i64 0, i32 18
  %24 = getelementptr inbounds %struct.uiBut, ptr %20, i64 0, i32 18, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !108
  %26 = load float, ptr %23, align 4, !tbaa !107
  %27 = fsub float %25, %26
  %28 = fptosi float %27 to i32
  %29 = load ptr, ptr %2, align 8, !tbaa !258
  %30 = getelementptr inbounds %struct.uiBlock, ptr %29, i64 0, i32 29
  %31 = load i8, ptr %30, align 2, !tbaa !222
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.uiBut, ptr %20, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !75
  %36 = icmp eq i32 %35, 13824
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @uiButGetMenuType(ptr noundef nonnull %20) #17
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, i8 1, i8 2
  br label %41

41:                                               ; preds = %37, %18, %33, %22
  %42 = phi i32 [ %28, %22 ], [ %28, %33 ], [ 50, %18 ], [ %28, %37 ]
  %43 = phi i8 [ %31, %22 ], [ 2, %33 ], [ 2, %18 ], [ %40, %37 ]
  %44 = icmp eq i8 %43, 2
  %45 = load ptr, ptr %2, align 8, !tbaa !258
  %46 = load ptr, ptr %1, align 8, !tbaa !208
  %47 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 21
  %48 = tail call i32 @BLI_findindex(ptr noundef nonnull %47, ptr noundef %45) #17
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load ptr, ptr %1, align 8, !tbaa !208
  tail call void @uiBlockSetRegion(ptr noundef %45, ptr noundef %51) #17
  br label %52

52:                                               ; preds = %50, %41
  %53 = getelementptr inbounds %struct.uiBlock, ptr %45, i64 0, i32 29
  store i8 %43, ptr %53, align 2, !tbaa !222
  call void @uiBlockLayoutResolve(ptr noundef %45, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  call void @uiBlockSetFlag(ptr noundef %45, i32 noundef 128) #17
  %54 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 5
  %55 = load i8, ptr %54, align 8, !tbaa !266
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %154, label %57

57:                                               ; preds = %52
  call void @uiBlockSetFlag(ptr noundef %45, i32 noundef 11) #17
  call void @uiBlockSetDirection(ptr noundef %45, i8 noundef zeroext %43) #17
  %58 = getelementptr inbounds %struct.uiBlock, ptr %45, i64 0, i32 27
  %59 = load i32, ptr %58, align 8, !tbaa !178
  %60 = and i32 %59, 4096
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %114, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.uiBlock, ptr %45, i64 0, i32 13
  %64 = load i32, ptr %63, align 4, !tbaa !254
  %65 = and i32 %64, 255
  %66 = load i1, ptr @ui_popup_menu_memory__internal.first, align 1
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @ui_popup_menu_memory__internal.mem, i8 -1, i64 1024, i1 false)
  store i1 true, ptr @ui_popup_menu_memory__internal.first, align 1
  br label %68

68:                                               ; preds = %67, %62
  %69 = getelementptr inbounds %struct.uiBlock, ptr %45, i64 0, i32 2
  %70 = zext nneg i32 %65 to i64
  %71 = getelementptr inbounds [256 x i32], ptr @ui_popup_menu_memory__internal.mem, i64 0, i64 %70
  br label %72

72:                                               ; preds = %88, %68
  %73 = phi ptr [ %69, %68 ], [ %74, %88 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !52
  %75 = icmp eq ptr %74, null
  br i1 %75, label %92, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.uiBut, ptr %74, i64 0, i32 15
  %78 = load ptr, ptr %77, align 8, !tbaa !45
  %79 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %78, i32 noundef 124) #18
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = ptrtoint ptr %79 to i64
  %83 = ptrtoint ptr %78 to i64
  %84 = sub i64 %82, %83
  %85 = call i32 @BLI_ghashutil_strhash_n(ptr noundef %78, i64 noundef %84) #17
  br label %88

86:                                               ; preds = %76
  %87 = call i32 @BLI_ghashutil_strhash_p(ptr noundef %78) #17
  br label %88

88:                                               ; preds = %81, %86
  %89 = phi i32 [ %85, %81 ], [ %87, %86 ]
  %90 = load i32, ptr %71, align 4, !tbaa !53
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %72, !llvm.loop !255

92:                                               ; preds = %72, %88
  %93 = phi ptr [ %74, %88 ], [ null, %72 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %114, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.uiBut, ptr %93, i64 0, i32 18
  %97 = load float, ptr %96, align 8, !tbaa !107
  %98 = getelementptr inbounds %struct.uiBut, ptr %93, i64 0, i32 18, i32 1
  %99 = load float, ptr %98, align 4, !tbaa !108
  %100 = fsub float %99, %97
  %101 = call float @llvm.fmuladd.f32(float %100, float 0x3FE99999A0000000, float %97)
  %102 = fneg float %101
  %103 = fptosi float %102 to i32
  %104 = getelementptr inbounds %struct.uiBut, ptr %93, i64 0, i32 18, i32 2
  %105 = load float, ptr %104, align 8, !tbaa !109
  %106 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %107 = sitofp i16 %106 to float
  %108 = call float @llvm.fmuladd.f32(float %107, float 5.000000e-01, float %105)
  %109 = fneg float %108
  %110 = fptosi float %109 to i32
  %111 = call zeroext i8 @ui_but_is_editable(ptr noundef nonnull %93) #17
  %112 = icmp eq i8 %111, 0
  %113 = select i1 %112, ptr null, ptr %93
  br label %145

114:                                              ; preds = %92, %57
  %115 = getelementptr inbounds %struct.uiBlock, ptr %45, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !52
  %117 = icmp eq ptr %116, null
  br i1 %117, label %132, label %118

118:                                              ; preds = %114, %118
  %119 = phi ptr [ %130, %118 ], [ %116, %114 ]
  %120 = phi i32 [ %129, %118 ], [ 0, %114 ]
  %121 = getelementptr inbounds %struct.uiBut, ptr %119, i64 0, i32 18
  %122 = load float, ptr %121, align 8, !tbaa !107
  %123 = getelementptr inbounds %struct.uiBut, ptr %119, i64 0, i32 18, i32 1
  %124 = load float, ptr %123, align 4, !tbaa !108
  %125 = fsub float %124, %122
  %126 = call float @llvm.fmuladd.f32(float %125, float 0x3FE99999A0000000, float %122)
  %127 = fneg float %126
  %128 = fptosi float %127 to i32
  %129 = call i32 @llvm.smin.i32(i32 %120, i32 %128)
  %130 = load ptr, ptr %119, align 8, !tbaa !52
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %118, !llvm.loop !270

132:                                              ; preds = %118, %114
  %133 = phi i32 [ 0, %114 ], [ %129, %118 ]
  %134 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %135 = sitofp i16 %134 to double
  %136 = fmul double %135, 2.100000e+00
  %137 = fptosi double %136 to i32
  br label %138

138:                                              ; preds = %142, %132
  %139 = phi ptr [ %115, %132 ], [ %140, %142 ]
  %140 = load ptr, ptr %139, align 8, !tbaa !52
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = call zeroext i8 @ui_but_is_editable(ptr noundef nonnull %140) #17
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %138, label %145, !llvm.loop !271

145:                                              ; preds = %142, %138, %95
  %146 = phi i32 [ %103, %95 ], [ %133, %138 ], [ %133, %142 ]
  %147 = phi ptr [ %113, %95 ], [ %140, %142 ], [ null, %138 ]
  %148 = phi i32 [ %110, %95 ], [ %137, %138 ], [ %137, %142 ]
  %149 = icmp eq ptr %147, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr %1, align 8, !tbaa !208
  call void @ui_button_activate_over(ptr noundef %0, ptr noundef %151, ptr noundef nonnull %147) #17
  br label %152

152:                                              ; preds = %150, %145
  %153 = getelementptr inbounds %struct.uiBlock, ptr %45, i64 0, i32 43
  store i32 %42, ptr %153, align 4, !tbaa !272
  call void @uiMenuPopupBoundsBlock(ptr noundef %45, i32 noundef 1, i32 noundef %146, i32 noundef %148) #17
  br label %179

154:                                              ; preds = %52
  %155 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 6
  %156 = load i8, ptr %155, align 1, !tbaa !261
  %157 = icmp eq i8 %156, 0
  %158 = and i1 %44, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %154
  %160 = call ptr @CTX_wm_area(ptr noundef %0) #17
  %161 = icmp eq ptr %160, null
  br i1 %161, label %174, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.ScrArea, ptr %160, i64 0, i32 12
  %164 = load i16, ptr %163, align 2, !tbaa !273
  %165 = icmp eq i16 %164, 1
  br i1 %165, label %166, label %174

166:                                              ; preds = %162
  %167 = call ptr @CTX_wm_region(ptr noundef %0) #17
  %168 = icmp eq ptr %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.ARegion, ptr %167, i64 0, i32 8
  %171 = load i16, ptr %170, align 2, !tbaa !87
  %172 = icmp eq i16 %171, 1
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  call void @uiBlockSetDirection(ptr noundef %45, i8 noundef zeroext 1) #17
  call void @uiBlockFlipOrder(ptr noundef %45) #17
  br label %174

174:                                              ; preds = %159, %162, %173, %169, %166, %154
  %175 = getelementptr inbounds %struct.uiBlock, ptr %45, i64 0, i32 43
  store i32 %42, ptr %175, align 4, !tbaa !272
  %176 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %177 = sext i16 %176 to i32
  %178 = mul nsw i32 %177, 3
  call void @uiTextBoundsBlock(ptr noundef %45, i32 noundef %178) #17
  br label %179

179:                                              ; preds = %174, %152
  %180 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 6
  %181 = load i8, ptr %180, align 1, !tbaa !261
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  call void @uiBlockSetDirection(ptr noundef %45, i8 noundef zeroext 8) #17
  br label %184

184:                                              ; preds = %183, %179
  %185 = load ptr, ptr %2, align 8, !tbaa !258
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret ptr %185
}

declare void @UI_add_popup_handlers(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  %5 = tail call ptr @UI_GetStyleDraw() #17
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %7 = tail call ptr %6(i64 noundef 56, ptr noundef nonnull @.str.21) #17
  %8 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef null, ptr noundef nonnull @__func__.uiPupMenuBegin, i16 noundef signext 2) #17
  store ptr %8, ptr %7, align 8, !tbaa !258
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !178
  %11 = or i32 %10, 4096
  store i32 %11, ptr %9, align 8, !tbaa !178
  %12 = tail call i32 @BLI_ghashutil_strhash_p(ptr noundef %1) #17
  %13 = load ptr, ptr %7, align 8, !tbaa !258
  %14 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 13
  store i32 %12, ptr %14, align 4, !tbaa !254
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %16 = sitofp i16 %15 to float
  %17 = fmul float %16, 0x3FC99999A0000000
  %18 = fptosi float %17 to i32
  %19 = tail call ptr @uiBlockLayout(ptr noundef %13, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 200, i32 noundef 0, i32 noundef %18, ptr noundef %5) #17
  %20 = getelementptr inbounds %struct.uiPopupMenu, ptr %7, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !260
  tail call void @uiLayoutSetOperatorContext(ptr noundef %19, i32 noundef 7) #17
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %22 = tail call ptr %21(i64 noundef 192, ptr noundef nonnull @.str.20) #17
  %23 = load ptr, ptr %7, align 8, !tbaa !258
  %24 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 46
  store ptr %22, ptr %24, align 8, !tbaa !216
  %25 = load i8, ptr %1, align 1, !tbaa !56
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #17
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.22, ptr noundef nonnull %1) #17
  %31 = load ptr, ptr %7, align 8, !tbaa !258
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %33 = call ptr @uiDefIconTextBut(ptr noundef %31, i32 noundef 5120, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i16 noundef signext 200, i16 noundef signext %32, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #17
  br label %39

34:                                               ; preds = %27
  %35 = load ptr, ptr %7, align 8, !tbaa !258
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %37 = tail call ptr @uiDefBut(ptr noundef %35, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i16 noundef signext 200, i16 noundef signext %36, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #17
  %38 = getelementptr inbounds %struct.uiBut, ptr %37, i64 0, i32 3
  store i32 2, ptr %38, align 4, !tbaa !66
  br label %39

39:                                               ; preds = %34, %29
  %40 = load ptr, ptr %20, align 8, !tbaa !260
  call void @uiItemS(ptr noundef %40) #17
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #17
  br label %41

41:                                               ; preds = %39, %3
  ret ptr %7
}

declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

declare void @uiItemS(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @uiPupMenuEnd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.uiPopupMenu, ptr %1, i64 0, i32 5
  store i8 1, ptr %4, align 8, !tbaa !266
  %5 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !114
  %9 = getelementptr inbounds %struct.uiPopupMenu, ptr %1, i64 0, i32 3
  store i32 %8, ptr %9, align 8, !tbaa !264
  %10 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !159
  %12 = getelementptr inbounds %struct.uiPopupMenu, ptr %1, i64 0, i32 4
  store i32 %11, ptr %12, align 4, !tbaa !265
  %13 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @ui_block_func_POPUP, ptr noundef %1)
  %14 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %13, i64 0, i32 4
  store i8 1, ptr %14, align 1, !tbaa !269
  %15 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %13, i8 noundef zeroext 0) #17
  tail call void @WM_event_add_mousemove(ptr noundef %0) #17
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %16(ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @uiPupMenuLayout(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.uiPopupMenu, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !260
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @uiPieMenuBegin(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [256 x i8], align 16
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %7 = tail call ptr @UI_GetStyleDraw() #17
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !52
  %9 = tail call ptr %8(i64 noundef 56, ptr noundef nonnull @.str.24) #17
  %10 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef null, ptr noundef nonnull @__func__.uiPieMenuBegin, i16 noundef signext 0) #17
  store ptr %10, ptr %9, align 8, !tbaa !275
  %11 = tail call i32 @BLI_ghashutil_strhash_p(ptr noundef %1) #17
  %12 = load ptr, ptr %9, align 8, !tbaa !275
  %13 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 13
  store i32 %11, ptr %13, align 4, !tbaa !254
  %14 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 27
  %15 = load i32, ptr %14, align 8, !tbaa !178
  %16 = or i32 %15, 1048576
  store i32 %16, ptr %14, align 8, !tbaa !178
  %17 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !157
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 53, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !231
  %23 = or i32 %22, 16
  store i32 %23, ptr %21, align 8, !tbaa !231
  br label %39

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 20
  %26 = load i16, ptr %25, align 2, !tbaa !277
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 19
  %30 = load i16, ptr %29, align 4, !tbaa !278
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 53, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !231
  %35 = or i32 %34, 16
  store i32 %35, ptr %33, align 8, !tbaa !231
  br label %36

36:                                               ; preds = %24, %28, %32
  %37 = phi i16 [ 0, %32 ], [ %26, %28 ], [ %18, %24 ]
  %38 = sext i16 %37 to i32
  br label %39

39:                                               ; preds = %36, %20
  %40 = phi i32 [ %38, %36 ], [ 0, %20 ]
  %41 = phi i16 [ %37, %36 ], [ 0, %20 ]
  %42 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 53, i32 6
  store i32 %40, ptr %42, align 4, !tbaa !279
  %43 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 19
  store i16 %41, ptr %43, align 4, !tbaa !278
  %44 = tail call ptr @uiBlockLayout(ptr noundef %12, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 200, i32 noundef 0, i32 noundef 0, ptr noundef %7) #17
  %45 = getelementptr inbounds %struct.uiPieMenu, ptr %9, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !280
  %46 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !114
  %48 = getelementptr inbounds %struct.uiPieMenu, ptr %9, i64 0, i32 2
  store i32 %47, ptr %48, align 8, !tbaa !281
  %49 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !159
  %51 = getelementptr inbounds %struct.uiPieMenu, ptr %9, i64 0, i32 3
  store i32 %50, ptr %51, align 4, !tbaa !282
  %52 = load i8, ptr %1, align 1, !tbaa !56
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %82, label %54

54:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #17
  %55 = icmp eq i32 %2, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %54
  %57 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.22, ptr noundef nonnull %1) #17
  %58 = call i32 @UI_GetStringWidth(ptr noundef nonnull %5) #17
  %59 = sitofp i32 %58 to float
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %61 = sitofp i16 %60 to float
  %62 = call float @llvm.fmuladd.f32(float %61, float 1.750000e+00, float %59)
  %63 = fptosi float %62 to i32
  %64 = load ptr, ptr %9, align 8, !tbaa !275
  %65 = trunc i32 %63 to i16
  %66 = call ptr @uiDefIconTextBut(ptr noundef %64, i32 noundef 5120, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i16 noundef signext %65, i16 noundef signext %60, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #17
  br label %77

67:                                               ; preds = %54
  %68 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %1) #17
  %69 = sitofp i32 %68 to float
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %71 = sitofp i16 %70 to float
  %72 = tail call float @llvm.fmuladd.f32(float %71, float 1.500000e+00, float %69)
  %73 = fptosi float %72 to i32
  %74 = load ptr, ptr %9, align 8, !tbaa !275
  %75 = trunc i32 %73 to i16
  %76 = tail call ptr @uiDefBut(ptr noundef %74, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i16 noundef signext %75, i16 noundef signext %70, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #17
  br label %77

77:                                               ; preds = %67, %56
  %78 = phi ptr [ %66, %56 ], [ %76, %67 ]
  %79 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !66
  %81 = and i32 %80, -3
  store i32 %81, ptr %79, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #17
  br label %82

82:                                               ; preds = %77, %39
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @uiPieMenuEnd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %4 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @ui_block_func_PIE, ptr noundef %1)
  %5 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %4, i64 0, i32 4
  store i8 1, ptr %5, align 1, !tbaa !269
  %6 = tail call double @PIL_check_seconds_timer() #17
  %7 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %4, i64 0, i32 2
  store double %6, ptr %7, align 8, !tbaa !283
  %8 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %4, i8 noundef zeroext 1) #17
  tail call void @WM_event_add_mousemove(ptr noundef %0) #17
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %9(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @ui_block_func_PIE(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %6 = load ptr, ptr %2, align 8, !tbaa !275
  %7 = load ptr, ptr %1, align 8, !tbaa !208
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 21
  %9 = tail call i32 @BLI_findindex(ptr noundef nonnull %8, ptr noundef %6) #17
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %1, align 8, !tbaa !208
  tail call void @uiBlockSetRegion(ptr noundef %6, ptr noundef %12) #17
  br label %13

13:                                               ; preds = %11, %3
  call void @uiBlockLayoutResolve(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 11) #17
  %14 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 43
  store i32 50, ptr %14, align 4, !tbaa !272
  %15 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 42
  store i32 1, ptr %15, align 8, !tbaa !284
  %16 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 40
  store i32 0, ptr %16, align 8, !tbaa !285
  %17 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 41
  store i32 0, ptr %17, align 4, !tbaa !286
  %18 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 39
  store i32 6, ptr %18, align 4, !tbaa !287
  %19 = getelementptr inbounds %struct.uiPieMenu, ptr %2, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !281
  %21 = sitofp i32 %20 to float
  %22 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 53, i32 2
  store float %21, ptr %22, align 8, !tbaa !98
  %23 = getelementptr inbounds %struct.uiPieMenu, ptr %2, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !282
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 53, i32 2, i64 1
  store float %25, ptr %26, align 4, !tbaa !98
  %27 = load ptr, ptr %2, align 8, !tbaa !275
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret ptr %27
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @uiPieMenuLayout(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.uiPieMenu, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @uiPieMenuInvoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.Menu, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = tail call ptr @WM_menutype_find(ptr noundef %1, i8 noundef zeroext 1) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull @__func__.uiPieMenuInvoke, ptr noundef %1)
  br label %37

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !288
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0, ptr noundef nonnull %5) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 3
  %18 = tail call ptr @uiPieMenuBegin(ptr noundef %0, ptr noundef nonnull %17, i32 noundef 0, ptr noundef %2)
  %19 = getelementptr inbounds %struct.uiPieMenu, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !280
  %21 = getelementptr inbounds %struct.Menu, ptr %4, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !291
  store ptr %5, ptr %4, align 8, !tbaa !293
  %22 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !294
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @__func__.uiPieMenuInvoke, ptr noundef %1)
  br label %27

27:                                               ; preds = %25, %16
  %28 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !296
  call void %29(ptr noundef %0, ptr noundef nonnull %4) #17
  %30 = call ptr @CTX_wm_window(ptr noundef %0) #17
  %31 = call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @ui_block_func_PIE, ptr noundef %18)
  %32 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %31, i64 0, i32 4
  store i8 1, ptr %32, align 1, !tbaa !269
  %33 = call double @PIL_check_seconds_timer() #17
  %34 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %31, i64 0, i32 2
  store double %33, ptr %34, align 8, !tbaa !283
  %35 = getelementptr inbounds %struct.wmWindow, ptr %30, i64 0, i32 29
  call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %31, i8 noundef zeroext 1) #17
  call void @WM_event_add_mousemove(ptr noundef %0) #17
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %36(ptr noundef %18) #17
  br label %37

37:                                               ; preds = %13, %27, %7
  %38 = phi i32 [ 2, %7 ], [ 32, %27 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret i32 %38
}

declare ptr @WM_menutype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @uiPieOperatorEnumInvoke(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call ptr @uiPieMenuBegin(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %4)
  %7 = getelementptr inbounds %struct.uiPieMenu, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !280
  %9 = tail call ptr @uiLayoutRadial(ptr noundef %8) #17
  tail call void @uiItemsEnumO(ptr noundef %9, ptr noundef %2, ptr noundef %3) #17
  %10 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %11 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @ui_block_func_PIE, ptr noundef %6)
  %12 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %11, i64 0, i32 4
  store i8 1, ptr %12, align 1, !tbaa !269
  %13 = tail call double @PIL_check_seconds_timer() #17
  %14 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %11, i64 0, i32 2
  store double %13, ptr %14, align 8, !tbaa !283
  %15 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %11, i8 noundef zeroext 1) #17
  tail call void @WM_event_add_mousemove(ptr noundef %0) #17
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %16(ptr noundef %6) #17
  ret i32 32
}

declare ptr @uiLayoutRadial(ptr noundef) local_unnamed_addr #1

declare void @uiItemsEnumO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @uiPieEnumInvoke(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_Context, ptr noundef %0, ptr noundef nonnull %5) #17
  %8 = call zeroext i8 @RNA_path_resolve(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %7, align 8, !tbaa !52
  %12 = call i32 @RNA_property_type(ptr noundef %11) #17
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = call ptr @uiPieMenuBegin(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %3)
  %16 = getelementptr inbounds %struct.uiPieMenu, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !280
  %18 = call ptr @uiLayoutRadial(ptr noundef %17) #17
  %19 = load ptr, ptr %7, align 8, !tbaa !52
  call void @uiItemFullR(ptr noundef %18, ptr noundef nonnull %6, ptr noundef %19, i32 noundef -1, i32 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 0) #17
  %20 = call ptr @CTX_wm_window(ptr noundef %0) #17
  %21 = call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @ui_block_func_PIE, ptr noundef %15)
  %22 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %21, i64 0, i32 4
  store i8 1, ptr %22, align 1, !tbaa !269
  %23 = call double @PIL_check_seconds_timer() #17
  %24 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %21, i64 0, i32 2
  store double %23, ptr %24, align 8, !tbaa !283
  %25 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 29
  call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %25, ptr noundef %21, i8 noundef zeroext 1) #17
  call void @WM_event_add_mousemove(ptr noundef %0) #17
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %26(ptr noundef %15) #17
  br label %27

27:                                               ; preds = %10, %4, %14
  %28 = phi i32 [ 32, %14 ], [ 2, %4 ], [ 2, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  ret i32 %28
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_path_resolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiItemFullR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @uiPupMenuReports(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [400 x i8], align 16
  %4 = alloca [400 x i8], align 16
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %81, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %63, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ReportList, ptr %1, i64 0, i32 1
  br label %12

12:                                               ; preds = %10, %58
  %13 = phi ptr [ %8, %10 ], [ %61, %58 ]
  %14 = phi ptr [ undef, %10 ], [ %60, %58 ]
  %15 = phi ptr [ null, %10 ], [ %59, %58 ]
  %16 = getelementptr inbounds %struct.Report, ptr %13, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !297
  %18 = sext i16 %17 to i32
  %19 = load i32, ptr %11, align 8, !tbaa !299
  %20 = icmp sgt i32 %19, %18
  br i1 %20, label %58, label %21

21:                                               ; preds = %12
  %22 = icmp eq ptr %15, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %3) #17
  %24 = getelementptr inbounds %struct.Report, ptr %13, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !301
  %26 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef %25) #17
  %27 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0)
  %28 = getelementptr inbounds %struct.uiPopupMenu, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !260
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %3) #17
  br label %31

30:                                               ; preds = %21
  call void @uiItemS(ptr noundef %14) #17
  br label %31

31:                                               ; preds = %30, %23
  %32 = phi ptr [ %27, %23 ], [ %15, %30 ]
  %33 = phi ptr [ %29, %23 ], [ %14, %30 ]
  %34 = getelementptr inbounds %struct.Report, ptr %13, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !302
  %36 = load i16, ptr %16, align 8, !tbaa !297
  %37 = sext i16 %36 to i32
  %38 = call i32 @uiIconFromReportType(i32 noundef %37) #17
  br label %39

39:                                               ; preds = %55, %31
  %40 = phi i32 [ %38, %31 ], [ 0, %55 ]
  %41 = phi ptr [ %35, %31 ], [ %53, %55 ]
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %4) #17
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %41, i32 noundef 10) #18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %42, i64 1
  %46 = ptrtoint ptr %45 to i64
  %47 = ptrtoint ptr %41 to i64
  %48 = sub i64 %46, %47
  %49 = call i64 @llvm.umin.i64(i64 %48, i64 400)
  %50 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %41, i64 noundef %49) #17
  br label %51

51:                                               ; preds = %44, %39
  %52 = phi ptr [ %4, %44 ], [ %41, %39 ]
  %53 = phi ptr [ %45, %44 ], [ null, %39 ]
  call void @uiItemL(ptr noundef %33, ptr noundef %52, i32 noundef %40) #17
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %4) #17
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i8, ptr %53, align 1, !tbaa !56
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %39, !llvm.loop !303

58:                                               ; preds = %55, %51, %12
  %59 = phi ptr [ %15, %12 ], [ %32, %51 ], [ %32, %55 ]
  %60 = phi ptr [ %14, %12 ], [ %33, %51 ], [ %33, %55 ]
  %61 = load ptr, ptr %13, align 8, !tbaa !52
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %12, !llvm.loop !304

63:                                               ; preds = %58, %7
  %64 = phi ptr [ null, %7 ], [ %59, %58 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %81, label %66

66:                                               ; preds = %63
  %67 = call ptr @CTX_wm_window(ptr noundef %0) #17
  %68 = getelementptr inbounds %struct.uiPopupMenu, ptr %64, i64 0, i32 5
  store i8 1, ptr %68, align 8, !tbaa !266
  %69 = getelementptr inbounds %struct.wmWindow, ptr %67, i64 0, i32 21
  %70 = load ptr, ptr %69, align 8, !tbaa !112
  %71 = getelementptr inbounds %struct.wmEvent, ptr %70, i64 0, i32 4
  %72 = load i32, ptr %71, align 4, !tbaa !114
  %73 = getelementptr inbounds %struct.uiPopupMenu, ptr %64, i64 0, i32 3
  store i32 %72, ptr %73, align 8, !tbaa !264
  %74 = getelementptr inbounds %struct.wmEvent, ptr %70, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !159
  %76 = getelementptr inbounds %struct.uiPopupMenu, ptr %64, i64 0, i32 4
  store i32 %75, ptr %76, align 4, !tbaa !265
  %77 = call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @ui_block_func_POPUP, ptr noundef nonnull %64)
  %78 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %77, i64 0, i32 4
  store i8 1, ptr %78, align 1, !tbaa !269
  %79 = getelementptr inbounds %struct.wmWindow, ptr %67, i64 0, i32 29
  call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %79, ptr noundef %77, i8 noundef zeroext 0) #17
  call void @WM_event_add_mousemove(ptr noundef %0) #17
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %80(ptr noundef nonnull %64) #17
  br label %81

81:                                               ; preds = %63, %66, %2
  ret void
}

declare i32 @uiIconFromReportType(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @uiPupMenuInvoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.Menu, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = tail call ptr @WM_menutype_find(ptr noundef %1, i8 noundef zeroext 1) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.29, ptr noundef %1) #17
  br label %43

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !288
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef nonnull %5) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 3
  %17 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 0)
  %18 = getelementptr inbounds %struct.uiPopupMenu, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !260
  %20 = getelementptr inbounds %struct.Menu, ptr %4, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !291
  store ptr %5, ptr %4, align 8, !tbaa !293
  %21 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !294
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @__func__.uiPupMenuInvoke, ptr noundef %1)
  br label %26

26:                                               ; preds = %24, %15
  %27 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !296
  call void %28(ptr noundef %0, ptr noundef nonnull %4) #17
  %29 = call ptr @CTX_wm_window(ptr noundef %0) #17
  %30 = getelementptr inbounds %struct.uiPopupMenu, ptr %17, i64 0, i32 5
  store i8 1, ptr %30, align 8, !tbaa !266
  %31 = getelementptr inbounds %struct.wmWindow, ptr %29, i64 0, i32 21
  %32 = load ptr, ptr %31, align 8, !tbaa !112
  %33 = getelementptr inbounds %struct.wmEvent, ptr %32, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !114
  %35 = getelementptr inbounds %struct.uiPopupMenu, ptr %17, i64 0, i32 3
  store i32 %34, ptr %35, align 8, !tbaa !264
  %36 = getelementptr inbounds %struct.wmEvent, ptr %32, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !159
  %38 = getelementptr inbounds %struct.uiPopupMenu, ptr %17, i64 0, i32 4
  store i32 %37, ptr %38, align 4, !tbaa !265
  %39 = call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @ui_block_func_POPUP, ptr noundef %17)
  %40 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %39, i64 0, i32 4
  store i8 1, ptr %40, align 1, !tbaa !269
  %41 = getelementptr inbounds %struct.wmWindow, ptr %29, i64 0, i32 29
  call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %41, ptr noundef %39, i8 noundef zeroext 0) #17
  call void @WM_event_add_mousemove(ptr noundef %0) #17
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %42(ptr noundef %17) #17
  br label %43

43:                                               ; preds = %12, %26, %7
  %44 = phi i32 [ 2, %7 ], [ 32, %26 ], [ 2, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret i32 %44
}

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @uiPupBlockO(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %7 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef %2)
  %8 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 4
  store i8 1, ptr %8, align 1, !tbaa !269
  %9 = icmp eq ptr %3, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %3, i8 noundef zeroext 0) #17
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi ptr [ %11, %10 ], [ null, %5 ]
  %14 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 11
  store ptr %13, ptr %14, align 8, !tbaa !305
  %15 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 14
  store i32 %4, ptr %15, align 8, !tbaa !306
  %16 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %7, i8 noundef zeroext 0) #17
  tail call void @WM_event_add_mousemove(ptr noundef %0) #17
  ret void
}

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @uiPupBlock(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %5 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef %2)
  %6 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %5, i64 0, i32 4
  store i8 1, ptr %6, align 1, !tbaa !269
  %7 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %5, i64 0, i32 11
  store ptr null, ptr %7, align 8, !tbaa !305
  %8 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %5, i64 0, i32 14
  store i32 0, ptr %8, align 8, !tbaa !306
  %9 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5, i8 noundef zeroext 0) #17
  tail call void @WM_event_add_mousemove(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiPupBlockEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %7 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef %4)
  %8 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 4
  store i8 1, ptr %8, align 1, !tbaa !269
  %9 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 17
  store i32 1, ptr %9, align 4, !tbaa !307
  %10 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 7
  store ptr %4, ptr %10, align 8, !tbaa !308
  %11 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 5
  store ptr %2, ptr %11, align 8, !tbaa !309
  %12 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 6
  store ptr %3, ptr %12, align 8, !tbaa !310
  %13 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %7, i8 noundef zeroext 0) #17
  tail call void @WM_event_add_mousemove(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiPupBlockClose(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 46
  %4 = load ptr, ptr %3, align 8, !tbaa !216
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 29
  %11 = load ptr, ptr %3, align 8, !tbaa !216
  tail call void @UI_remove_popup_handlers(ptr noundef nonnull %10, ptr noundef %11) #17
  %12 = load ptr, ptr %3, align 8, !tbaa !216
  tail call void @ui_popup_block_free(ptr noundef %0, ptr noundef %12)
  br label %13

13:                                               ; preds = %6, %9, %2
  ret void
}

declare void @UI_remove_popup_handlers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ui_rgb_to_color_picker_compat_v(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %4 = icmp eq i16 %3, 4
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @rgb_to_hsl_compat_v(ptr noundef %0, ptr noundef %1) #17
  br label %7

6:                                                ; preds = %2
  tail call void @rgb_to_hsv_compat_v(ptr noundef %0, ptr noundef %1) #17
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

declare void @rgb_to_hsl_compat_v(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rgb_to_hsv_compat_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ui_rgb_to_color_picker_v(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %4 = icmp eq i16 %3, 4
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @rgb_to_hsl_v(ptr noundef %0, ptr noundef %1) #17
  br label %7

6:                                                ; preds = %2
  tail call void @rgb_to_hsv_v(ptr noundef %0, ptr noundef %1) #17
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

declare void @rgb_to_hsl_v(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @hsl_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @hsv_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ui_color_picker_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @hsl_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #17
  br label %11

10:                                               ; preds = %6
  tail call void @hsv_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #17
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

declare void @hsl_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_property_enum_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_from_value(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ui_tooltip_get_theme() local_unnamed_addr #1

declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare void @wmOrtho2_region_ui(ptr noundef) local_unnamed_addr #1

declare void @ui_draw_tooltip_background(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @glColor3fv(ptr noundef) local_unnamed_addr #1

declare void @uiStyleFontDraw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @wm_draw_region_clear(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_region_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_area_region_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ui_draw_search_back(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ui_draw_preview_item(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ui_draw_menu_item(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @ui_block_to_window_rctf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_rctf_init_minmax(ptr noundef) local_unnamed_addr #1

declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiBlockFlipOrder(ptr noundef) local_unnamed_addr #1

declare void @ui_check_but(ptr noundef) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare void @ui_block_to_display_space_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_property_float_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_property_float_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @square_picker(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = add nuw nsw i32 %3, 3
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %7 = sitofp i16 %6 to float
  %8 = fmul float %7, 0x3FD3333340000000
  %9 = tail call float @llvm.fmuladd.f32(float %7, float 0x3FE6666660000000, float %8)
  %10 = fptosi float %9 to i32
  %11 = tail call float @llvm.fmuladd.f32(float %7, float 7.500000e+00, float %8)
  %12 = tail call float @llvm.fmuladd.f32(float %7, float 0x3FE6666660000000, float %11)
  %13 = fptosi float %12 to i16
  %14 = fmul float %7, 7.500000e+00
  %15 = fptosi float %14 to i16
  %16 = sitofp i32 %3 to float
  %17 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %10, i16 noundef signext %13, i16 noundef signext %15, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %16, float noundef 0.000000e+00, ptr noundef nonnull @.str.58) #17
  tail call void @uiButSetFunc(ptr noundef %17, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %17, ptr noundef null) #17
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %19 = sitofp i16 %18 to float
  %20 = fmul float %19, 0x3FD3333340000000
  %21 = tail call float @llvm.fmuladd.f32(float %19, float 7.500000e+00, float %20)
  %22 = tail call float @llvm.fmuladd.f32(float %19, float 0x3FE6666660000000, float %21)
  %23 = fptosi float %22 to i16
  %24 = fmul float %19, 0x3FE6666660000000
  %25 = fptosi float %24 to i16
  %26 = sitofp i32 %5 to float
  %27 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i16 noundef signext %23, i16 noundef signext %25, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %26, float noundef 0.000000e+00, ptr noundef nonnull @.str.51) #17
  tail call void @uiButSetFunc(ptr noundef %27, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %27, ptr noundef null) #17
  ret void
}

declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #1

declare ptr @uiDefButS(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @do_picker_new_mode_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call double @ui_get_but_val(ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %3
  %11 = fptosi double %4 to i16
  %12 = icmp eq i16 %11, 0
  %13 = icmp eq i16 %11, 2
  %14 = icmp eq i16 %11, 1
  br label %15

15:                                               ; preds = %57, %10
  %16 = phi ptr [ %8, %10 ], [ %58, %57 ]
  %17 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 27
  %18 = load ptr, ptr %17, align 8, !tbaa !248
  %19 = icmp eq ptr %18, @do_picker_rna_cb
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !75
  %23 = icmp eq i32 %22, 7168
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 56
  %26 = load i32, ptr %25, align 8, !tbaa !77
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !78
  br i1 %12, label %31, label %33

31:                                               ; preds = %28
  %32 = and i32 %30, -33
  store i32 %32, ptr %29, align 8, !tbaa !78
  br label %57

33:                                               ; preds = %28
  %34 = or i32 %30, 32
  store i32 %34, ptr %29, align 8, !tbaa !78
  br label %57

35:                                               ; preds = %24, %20, %15
  %36 = icmp eq ptr %18, @do_color_wheel_rna_cb
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !78
  br i1 %14, label %40, label %42

40:                                               ; preds = %37
  %41 = and i32 %39, -33
  store i32 %41, ptr %38, align 8, !tbaa !78
  br label %57

42:                                               ; preds = %37
  %43 = or i32 %39, 32
  store i32 %43, ptr %38, align 8, !tbaa !78
  br label %57

44:                                               ; preds = %35
  %45 = icmp eq ptr %18, @do_hex_rna_cb
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !75
  %49 = icmp eq i32 %48, 5120
  br i1 %49, label %50, label %57

50:                                               ; preds = %46, %44
  %51 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !78
  br i1 %13, label %53, label %55

53:                                               ; preds = %50
  %54 = and i32 %52, -33
  store i32 %54, ptr %51, align 8, !tbaa !78
  br label %57

55:                                               ; preds = %50
  %56 = or i32 %52, 32
  store i32 %56, ptr %51, align 8, !tbaa !78
  br label %57

57:                                               ; preds = %55, %53, %46, %42, %40, %33, %31
  %58 = load ptr, ptr %16, align 8, !tbaa !52
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %15, !llvm.loop !249

60:                                               ; preds = %57, %3
  ret void
}

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #1

declare ptr @uiDefIconButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @close_popup_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #13 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 46
  %7 = load ptr, ptr %6, align 8, !tbaa !216
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 16
  store i32 2, ptr %10, align 8, !tbaa !252
  br label %11

11:                                               ; preds = %9, %3
  ret void
}

declare ptr @uiDefButR_prop(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @do_picker_rna_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [4 x float], align 16
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 46
  %9 = load ptr, ptr %8, align 8, !tbaa !216
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !311
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %13 = icmp eq ptr %11, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  call void @RNA_property_float_get_array(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %5) #17
  %15 = load ptr, ptr %6, align 8, !tbaa !46
  %16 = call i32 @RNA_property_subtype(ptr noundef nonnull %11) #17
  %17 = icmp eq i32 %16, 30
  %18 = zext i1 %17 to i8
  call fastcc void @ui_update_block_buts_rgb(ptr noundef %15, ptr noundef nonnull %5, i8 noundef zeroext %18)
  br label %19

19:                                               ; preds = %14, %3
  %20 = icmp eq ptr %9, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 16
  store i32 16, ptr %22, align 8, !tbaa !252
  br label %23

23:                                               ; preds = %21, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret void
}

declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @do_color_wheel_rna_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 46
  %8 = load ptr, ptr %7, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %9 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 50
  %10 = tail call zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef %1) #17
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %12 = icmp eq i16 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @hsl_to_rgb_v(ptr noundef nonnull %9, ptr noundef nonnull %4) #17
  br label %15

14:                                               ; preds = %3
  call void @hsv_to_rgb_v(ptr noundef nonnull %9, ptr noundef nonnull %4) #17
  br label %15

15:                                               ; preds = %13, %14
  %16 = icmp eq i8 %10, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %5, align 8, !tbaa !46
  call void @ui_block_to_scene_linear_v3(ptr noundef %18, ptr noundef nonnull %4) #17
  br label %19

19:                                               ; preds = %17, %15
  %20 = load ptr, ptr %5, align 8, !tbaa !46
  %21 = zext i1 %16 to i8
  call fastcc void @ui_update_block_buts_rgb(ptr noundef %20, ptr noundef nonnull %4, i8 noundef zeroext %21)
  %22 = icmp eq ptr %8, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %8, i64 0, i32 16
  store i32 16, ptr %24, align 8, !tbaa !252
  br label %25

25:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @do_hex_rna_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 46
  %8 = load ptr, ptr %7, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = getelementptr inbounds float, ptr %4, i64 2
  call void @hex_to_rgb(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  %11 = load ptr, ptr %5, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.uiBlock, ptr %11, i64 0, i32 51
  %13 = load i8, ptr %12, align 4, !tbaa !246
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  call void @ui_block_to_scene_linear_v3(ptr noundef %11, ptr noundef nonnull %4) #17
  br label %16

16:                                               ; preds = %15, %3
  %17 = load ptr, ptr %5, align 8, !tbaa !46
  call fastcc void @ui_update_block_buts_rgb(ptr noundef %17, ptr noundef nonnull %4, i8 noundef zeroext 0)
  %18 = icmp eq ptr %8, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %8, i64 0, i32 16
  store i32 16, ptr %20, align 8, !tbaa !252
  br label %21

21:                                               ; preds = %19, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

declare double @ui_get_but_val(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_update_block_buts_rgb(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca double, align 8
  %8 = alloca [16 x i8], align 16
  %9 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 50
  %10 = icmp eq i8 %2, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %13 = icmp eq i16 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @rgb_to_hsl_compat_v(ptr noundef %1, ptr noundef nonnull %9) #17
  br label %29

15:                                               ; preds = %11
  tail call void @rgb_to_hsv_compat_v(ptr noundef %1, ptr noundef nonnull %9) #17
  br label %29

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %17 = load float, ptr %1, align 4, !tbaa !98
  store float %17, ptr %4, align 4, !tbaa !98
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !98
  %20 = getelementptr inbounds float, ptr %4, i64 1
  store float %19, ptr %20, align 4, !tbaa !98
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !98
  %23 = getelementptr inbounds float, ptr %4, i64 2
  store float %22, ptr %23, align 4, !tbaa !98
  call void @ui_block_to_display_space_v3(ptr noundef %0, ptr noundef nonnull %4) #17
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !245
  %25 = icmp eq i16 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  call void @rgb_to_hsl_compat_v(ptr noundef nonnull %4, ptr noundef nonnull %9) #17
  br label %28

27:                                               ; preds = %16
  call void @rgb_to_hsv_compat_v(ptr noundef nonnull %4, ptr noundef nonnull %9) #17
  br label %28

28:                                               ; preds = %26, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %29

29:                                               ; preds = %15, %14, %28
  %30 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 51
  %31 = load i8, ptr %30, align 4, !tbaa !246
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call ptr @ui_block_display_get(ptr noundef %0) #17
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ null, %29 ]
  %37 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = icmp eq ptr %38, null
  br i1 %39, label %131, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 50, i64 2
  %42 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 50, i64 2
  %43 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 50, i64 1
  %44 = getelementptr inbounds float, ptr %1, i64 2
  %45 = getelementptr inbounds float, ptr %1, i64 1
  %46 = getelementptr inbounds float, ptr %1, i64 1
  %47 = getelementptr inbounds float, ptr %5, i64 1
  %48 = getelementptr inbounds float, ptr %1, i64 2
  %49 = getelementptr inbounds float, ptr %5, i64 2
  %50 = icmp eq ptr %36, null
  %51 = getelementptr inbounds [3 x i8], ptr %6, i64 0, i64 1
  %52 = getelementptr inbounds [3 x i8], ptr %6, i64 0, i64 2
  br label %53

53:                                               ; preds = %40, %128
  %54 = phi ptr [ %38, %40 ], [ %129, %128 ]
  %55 = getelementptr inbounds %struct.uiBut, ptr %54, i64 0, i32 55
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  call void @ui_set_but_vectorf(ptr noundef nonnull %54, ptr noundef %1) #17
  br label %128

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.uiBut, ptr %54, i64 0, i32 15
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(6) @.str.55) #18
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  %65 = load float, ptr %1, align 4, !tbaa !98
  store float %65, ptr %5, align 4, !tbaa !98
  %66 = load float, ptr %46, align 4, !tbaa !98
  store float %66, ptr %47, align 4, !tbaa !98
  %67 = load float, ptr %48, align 4, !tbaa !98
  store float %67, ptr %49, align 4, !tbaa !98
  br i1 %50, label %69, label %68

68:                                               ; preds = %64
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %5, ptr noundef nonnull %36) #17
  br label %69

69:                                               ; preds = %68, %64
  %70 = load float, ptr %5, align 4, !tbaa !98
  %71 = fcmp ogt float %70, 1.000000e+00
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = fpext float %70 to double
  %74 = call double @modf(double noundef %73, ptr noundef nonnull %7) #17
  %75 = fptrunc double %74 to float
  store float %75, ptr %5, align 4, !tbaa !98
  br label %76

76:                                               ; preds = %72, %69
  %77 = load float, ptr %47, align 4, !tbaa !98
  %78 = fcmp ogt float %77, 1.000000e+00
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = fpext float %77 to double
  %81 = call double @modf(double noundef %80, ptr noundef nonnull %7) #17
  %82 = fptrunc double %81 to float
  store float %82, ptr %47, align 4, !tbaa !98
  br label %83

83:                                               ; preds = %79, %76
  %84 = load float, ptr %49, align 4, !tbaa !98
  %85 = fcmp ogt float %84, 1.000000e+00
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = fpext float %84 to double
  %88 = call double @modf(double noundef %87, ptr noundef nonnull %7) #17
  %89 = fptrunc double %88 to float
  store float %89, ptr %49, align 4, !tbaa !98
  br label %90

90:                                               ; preds = %86, %83
  call void @rgb_float_to_uchar(ptr noundef nonnull %6, ptr noundef nonnull %5) #17
  %91 = load i8, ptr %6, align 1, !tbaa !56
  %92 = zext i8 %91 to i32
  %93 = load i8, ptr %51, align 1, !tbaa !56
  %94 = zext i8 %93 to i32
  %95 = load i8, ptr %52, align 1, !tbaa !56
  %96 = zext i8 %95 to i32
  %97 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 16, ptr noundef nonnull @.str.54, i32 noundef %92, i32 noundef %94, i32 noundef %96) #17
  %98 = getelementptr inbounds %struct.uiBut, ptr %54, i64 0, i32 19
  %99 = load ptr, ptr %98, align 8, !tbaa !312
  %100 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %99, ptr noundef nonnull dereferenceable(1) %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  br label %128

101:                                              ; preds = %59
  %102 = getelementptr inbounds i8, ptr %61, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !56
  %104 = icmp eq i8 %103, 32
  br i1 %104, label %105, label %128

105:                                              ; preds = %101
  %106 = load i8, ptr %61, align 1, !tbaa !56
  switch i8 %106, label %128 [
    i8 82, label %107
    i8 71, label %110
    i8 66, label %113
    i8 72, label %116
    i8 83, label %119
    i8 86, label %122
    i8 76, label %125
  ]

107:                                              ; preds = %105
  %108 = load float, ptr %1, align 4, !tbaa !98
  %109 = fpext float %108 to double
  call void @ui_set_but_val(ptr noundef nonnull %54, double noundef %109) #17
  br label %128

110:                                              ; preds = %105
  %111 = load float, ptr %45, align 4, !tbaa !98
  %112 = fpext float %111 to double
  call void @ui_set_but_val(ptr noundef nonnull %54, double noundef %112) #17
  br label %128

113:                                              ; preds = %105
  %114 = load float, ptr %44, align 4, !tbaa !98
  %115 = fpext float %114 to double
  call void @ui_set_but_val(ptr noundef nonnull %54, double noundef %115) #17
  br label %128

116:                                              ; preds = %105
  %117 = load float, ptr %9, align 4, !tbaa !98
  %118 = fpext float %117 to double
  call void @ui_set_but_val(ptr noundef nonnull %54, double noundef %118) #17
  br label %128

119:                                              ; preds = %105
  %120 = load float, ptr %43, align 4, !tbaa !98
  %121 = fpext float %120 to double
  call void @ui_set_but_val(ptr noundef nonnull %54, double noundef %121) #17
  br label %128

122:                                              ; preds = %105
  %123 = load float, ptr %42, align 4, !tbaa !98
  %124 = fpext float %123 to double
  call void @ui_set_but_val(ptr noundef nonnull %54, double noundef %124) #17
  br label %128

125:                                              ; preds = %105
  %126 = load float, ptr %41, align 4, !tbaa !98
  %127 = fpext float %126 to double
  call void @ui_set_but_val(ptr noundef nonnull %54, double noundef %127) #17
  br label %128

128:                                              ; preds = %105, %90, %107, %113, %119, %125, %122, %116, %110, %101, %58
  call void @ui_check_but(ptr noundef nonnull %54) #17
  %129 = load ptr, ptr %54, align 8, !tbaa !52
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %53, !llvm.loop !313

131:                                              ; preds = %128, %35
  ret void
}

declare ptr @ui_block_display_get(ptr noundef) local_unnamed_addr #1

declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

declare void @ui_set_but_val(ptr noundef, double noundef) local_unnamed_addr #1

declare zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef) local_unnamed_addr #1

declare void @ui_block_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @hex_to_rgb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ui_get_but_vectorf(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_ghashutil_strhash_n(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BLI_ghashutil_strhash_p(ptr noundef) local_unnamed_addr #1

declare ptr @uiButGetMenuType(ptr noundef) local_unnamed_addr #1

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiBlockSetRegion(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiBlockLayoutResolve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @uiBlockSetDirection(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @ui_but_is_editable(ptr noundef) local_unnamed_addr #1

declare void @ui_button_activate_over(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiMenuPopupBoundsBlock(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @uiTextBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 840}
!35 = !{!"uiBut", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !40, i64 48, !36, i64 56, !37, i64 64, !37, i64 192, !41, i64 592, !36, i64 608, !42, i64 616, !42, i64 620, !42, i64 624, !42, i64 628, !42, i64 632, !42, i64 636, !37, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !36, i64 720, !36, i64 728, !36, i64 736, !36, i64 744, !36, i64 752, !37, i64 760, !36, i64 768, !36, i64 776, !39, i64 784, !37, i64 788, !37, i64 789, !37, i64 790, !37, i64 791, !37, i64 792, !40, i64 794, !40, i64 796, !36, i64 800, !36, i64 808, !43, i64 816, !36, i64 840, !39, i64 848, !43, i64 856, !36, i64 880, !36, i64 888, !36, i64 896, !40, i64 904, !37, i64 906, !37, i64 907, !36, i64 912, !36, i64 920, !42, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!42 = !{!"float", !37, i64 0}
!43 = !{!"PointerRNA", !44, i64 0, !36, i64 8, !36, i64 16}
!44 = !{!"", !36, i64 0}
!45 = !{!35, !36, i64 56}
!46 = !{!35, !36, i64 992}
!47 = !{!48, !36, i64 528}
!48 = !{!"uiBlock", !36, i64 0, !36, i64 8, !49, i64 16, !36, i64 32, !36, i64 40, !49, i64 48, !49, i64 64, !36, i64 80, !49, i64 88, !37, i64 104, !37, i64 232, !41, i64 296, !42, i64 312, !39, i64 316, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !39, i64 424, !40, i64 428, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !50, i64 440, !36, i64 448, !37, i64 456, !37, i64 457, !37, i64 458, !37, i64 459, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !41, i64 480, !49, i64 496, !36, i64 512, !36, i64 520, !36, i64 528, !36, i64 536, !37, i64 544, !37, i64 556, !37, i64 557, !51, i64 624}
!49 = !{!"ListBase", !36, i64 0, !36, i64 8}
!50 = !{!"double", !37, i64 0}
!51 = !{!"PieMenuData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !50, i64 32, !39, i64 40, !39, i64 44, !42, i64 48}
!52 = !{!36, !36, i64 0}
!53 = !{!39, !39, i64 0}
!54 = !{!55, !36, i64 8}
!55 = !{!"EnumPropertyItem", !39, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 32}
!56 = !{!37, !37, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!55, !39, i64 0}
!61 = !{!62, !40, i64 8948}
!62 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !39, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !40, i64 8496, !40, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !49, i64 8536, !49, i64 8552, !49, i64 8568, !49, i64 8584, !49, i64 8600, !49, i64 8616, !49, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !39, i64 8912, !39, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !42, i64 8956, !42, i64 8960, !39, i64 8964, !40, i64 8968, !40, i64 8970, !42, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !63, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !39, i64 10896, !39, i64 10900, !42, i64 10904, !42, i64 10908, !39, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !64, i64 10928}
!63 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!64 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !40, i64 24, !37, i64 26}
!65 = !{!48, !42, i64 312}
!66 = !{!35, !39, i64 20}
!67 = !{!68, !36, i64 8}
!68 = !{!"uiStringInfo", !39, i64 0, !36, i64 8}
!69 = !{!70, !39, i64 5232}
!70 = !{!"uiTooltipData", !71, i64 0, !72, i64 16, !37, i64 48, !37, i64 4144, !37, i64 4656, !37, i64 5168, !39, i64 5232, !39, i64 5236, !39, i64 5240}
!71 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!72 = !{!"uiFontStyle", !40, i64 0, !40, i64 2, !40, i64 4, !37, i64 6, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !42, i64 24, !42, i64 28}
!73 = !{!74, !39, i64 0}
!74 = !{!"", !39, i64 0, !39, i64 4}
!75 = !{!35, !39, i64 24}
!76 = !{!74, !39, i64 4}
!77 = !{!35, !39, i64 848}
!78 = !{!35, !39, i64 16}
!79 = !{!35, !36, i64 816}
!80 = !{!81, !36, i64 24}
!81 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!82 = !{!35, !36, i64 888}
!83 = !{!62, !39, i64 8}
!84 = !{!35, !40, i64 904}
!85 = !{!43, !36, i64 0}
!86 = !{!43, !36, i64 16}
!87 = !{!88, !40, i64 214}
!88 = !{!"ARegion", !36, i64 0, !36, i64 8, !89, i64 16, !71, i64 176, !71, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !42, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !49, i64 248, !49, i64 264, !49, i64 280, !49, i64 296, !49, i64 312, !49, i64 328, !49, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!89 = !{!"View2D", !41, i64 0, !41, i64 16, !71, i64 32, !71, i64 48, !71, i64 64, !37, i64 80, !37, i64 88, !42, i64 96, !42, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!90 = !{!88, !40, i64 216}
!91 = !{!92, !36, i64 40}
!92 = !{!"ARegionType", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !49, i64 104, !49, i64 120, !49, i64 136, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !40, i64 172, !40, i64 174, !40, i64 176}
!93 = !{!92, !36, i64 56}
!94 = !{!92, !39, i64 16}
!95 = !{!88, !36, i64 240}
!96 = !{i64 0, i64 2, !97, i64 2, i64 2, !97, i64 4, i64 2, !97, i64 6, i64 6, !56, i64 12, i64 2, !97, i64 14, i64 2, !97, i64 16, i64 2, !97, i64 18, i64 2, !97, i64 20, i64 2, !97, i64 22, i64 2, !97, i64 24, i64 4, !98, i64 28, i64 4, !98}
!97 = !{!40, !40, i64 0}
!98 = !{!42, !42, i64 0}
!99 = !{!70, !40, i64 16}
!100 = !{!70, !40, i64 18}
!101 = !{!62, !42, i64 10908}
!102 = !{!62, !39, i64 8524}
!103 = distinct !{!103, !58, !59}
!104 = !{!88, !36, i64 376}
!105 = !{!70, !39, i64 5236}
!106 = !{!70, !39, i64 5240}
!107 = !{!41, !42, i64 0}
!108 = !{!41, !42, i64 4}
!109 = !{!35, !42, i64 600}
!110 = !{!41, !42, i64 12}
!111 = !{!41, !42, i64 8}
!112 = !{!113, !36, i64 136}
!113 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !39, i64 128, !40, i64 132, !40, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !39, i64 160, !39, i64 164, !36, i64 168, !49, i64 176, !49, i64 192, !49, i64 208, !49, i64 224, !49, i64 240}
!114 = !{!115, !39, i64 20}
!115 = !{!"wmEvent", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !40, i64 44, !40, i64 46, !39, i64 48, !39, i64 52, !50, i64 56, !39, i64 64, !39, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 106, !39, i64 108, !36, i64 112}
!116 = !{!71, !39, i64 4}
!117 = !{!71, !39, i64 0}
!118 = !{!71, !39, i64 8}
!119 = !{!71, !39, i64 12}
!120 = !{!70, !39, i64 0}
!121 = !{!70, !39, i64 4}
!122 = !{!70, !39, i64 8}
!123 = !{!70, !39, i64 12}
!124 = !{!88, !39, i64 176}
!125 = !{!88, !39, i64 180}
!126 = !{!88, !39, i64 184}
!127 = !{!88, !39, i64 188}
!128 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 12, i64 4, !53}
!129 = !{!72, !40, i64 16}
!130 = !{!72, !42, i64 28}
!131 = !{!72, !40, i64 20}
!132 = !{!72, !40, i64 18}
!133 = !{!72, !42, i64 24}
!134 = !{!72, !40, i64 0}
!135 = !{!72, !40, i64 2}
!136 = distinct !{!136, !58, !59}
!137 = !{!138, !36, i64 48}
!138 = !{!"uiSearchItems", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56}
!139 = !{!138, !36, i64 56}
!140 = !{!138, !39, i64 4}
!141 = !{!138, !39, i64 16}
!142 = !{!138, !39, i64 0}
!143 = !{!138, !39, i64 20}
!144 = !{!138, !36, i64 24}
!145 = !{!138, !39, i64 8}
!146 = !{!138, !36, i64 32}
!147 = !{!138, !36, i64 40}
!148 = distinct !{!148, !58, !59}
!149 = !{!35, !36, i64 664}
!150 = !{!151, !39, i64 112}
!151 = !{!"uiSearchboxData", !71, i64 0, !72, i64 16, !138, i64 48, !39, i64 112, !37, i64 116, !37, i64 117, !37, i64 118, !39, i64 120, !39, i64 124}
!152 = !{!151, !36, i64 72}
!153 = !{!151, !37, i64 118}
!154 = !{!35, !36, i64 952}
!155 = !{!151, !39, i64 56}
!156 = !{!151, !36, i64 80}
!157 = !{!115, !40, i64 16}
!158 = !{!115, !40, i64 18}
!159 = !{!115, !39, i64 24}
!160 = !{!151, !39, i64 52}
!161 = !{!151, !37, i64 117}
!162 = !{!151, !39, i64 124}
!163 = !{!151, !39, i64 120}
!164 = !{!151, !39, i64 12}
!165 = !{!151, !39, i64 0}
!166 = !{!151, !39, i64 4}
!167 = distinct !{!167, !58, !59}
!168 = !{!151, !39, i64 68}
!169 = !{!151, !39, i64 60}
!170 = !{!151, !39, i64 64}
!171 = !{!35, !36, i64 712}
!172 = !{!35, !36, i64 720}
!173 = !{!151, !36, i64 104}
!174 = !{!151, !39, i64 48}
!175 = distinct !{!175, !58, !59}
!176 = !{!151, !36, i64 96}
!177 = !{!151, !40, i64 38}
!178 = !{!48, !39, i64 424}
!179 = !{!151, !37, i64 116}
!180 = !{!35, !42, i64 632}
!181 = !{!35, !42, i64 636}
!182 = !{!151, !39, i64 8}
!183 = !{!35, !42, i64 592}
!184 = !{!35, !42, i64 596}
!185 = !{!48, !36, i64 32}
!186 = !{!187, !39, i64 224}
!187 = !{!"Panel", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !37, i64 160, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !39, i64 252, !36, i64 256, !36, i64 264}
!188 = !{!187, !39, i64 228}
!189 = !{!88, !42, i64 32}
!190 = !{!88, !42, i64 36}
!191 = !{!35, !42, i64 604}
!192 = !{!35, !42, i64 620}
!193 = !{!151, !36, i64 88}
!194 = distinct !{!194, !58, !59}
!195 = distinct !{!195, !58, !59}
!196 = distinct !{!196, !58, !59}
!197 = distinct !{!197, !58, !59}
!198 = distinct !{!198, !58, !59}
!199 = distinct !{!199, !58, !59}
!200 = distinct !{!200, !58, !59}
!201 = !{!48, !36, i64 16}
!202 = !{!48, !36, i64 24}
!203 = !{!48, !42, i64 304}
!204 = !{!48, !42, i64 308}
!205 = !{!35, !36, i64 0}
!206 = distinct !{!206, !58, !59}
!207 = distinct !{!207, !58, !59}
!208 = !{!209, !36, i64 0}
!209 = !{!"uiPopupBlockHandle", !36, i64 0, !37, i64 8, !50, i64 16, !37, i64 24, !37, i64 25, !36, i64 32, !36, i64 40, !36, i64 48, !210, i64 56, !36, i64 96, !211, i64 104, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !37, i64 160, !39, i64 176, !37, i64 180, !37, i64 184}
!210 = !{!"uiPopupBlockCreate", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !36, i64 32}
!211 = !{!"uiKeyNavLock", !37, i64 0, !37, i64 4}
!212 = !{!209, !36, i64 56}
!213 = !{!209, !36, i64 72}
!214 = !{!88, !36, i64 248}
!215 = !{!209, !36, i64 64}
!216 = !{!48, !36, i64 512}
!217 = !{!48, !36, i64 40}
!218 = !{!48, !37, i64 459}
!219 = !{!48, !42, i64 296}
!220 = !{!48, !42, i64 300}
!221 = distinct !{!221, !58, !59}
!222 = !{!48, !37, i64 430}
!223 = distinct !{!223, !58, !59}
!224 = !{!48, !42, i64 480}
!225 = !{!48, !42, i64 484}
!226 = !{!48, !42, i64 488}
!227 = !{!48, !42, i64 492}
!228 = !{i64 0, i64 4, !98, i64 4, i64 4, !98, i64 8, i64 4, !98, i64 12, i64 4, !98}
!229 = !{!209, !39, i64 176}
!230 = !{!62, !40, i64 10918}
!231 = !{!48, !39, i64 664}
!232 = !{!62, !40, i64 10920}
!233 = !{!35, !37, i64 790}
!234 = distinct !{!234, !58, !59}
!235 = distinct !{!235, !58, !59}
!236 = !{!88, !40, i64 212}
!237 = !{!209, !36, i64 128}
!238 = !{!209, !36, i64 136}
!239 = !{!209, !36, i64 88}
!240 = !{!88, !40, i64 228}
!241 = !{!48, !36, i64 0}
!242 = distinct !{!242, !58, !59}
!243 = distinct !{!243, !58, !59}
!244 = !{!209, !36, i64 96}
!245 = !{!62, !40, i64 8938}
!246 = !{!48, !37, i64 556}
!247 = !{!35, !36, i64 968}
!248 = !{!35, !36, i64 648}
!249 = distinct !{!249, !58, !59}
!250 = !{!48, !36, i64 392}
!251 = !{!35, !36, i64 936}
!252 = !{!209, !39, i64 152}
!253 = distinct !{!253, !58, !59}
!254 = !{!48, !39, i64 316}
!255 = distinct !{!255, !58, !59}
!256 = distinct !{!256, !58, !59}
!257 = distinct !{!257, !58, !59}
!258 = !{!259, !36, i64 0}
!259 = !{!"uiPopupMenu", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !37, i64 32, !37, i64 33, !36, i64 40, !36, i64 48}
!260 = !{!259, !36, i64 8}
!261 = !{!259, !37, i64 33}
!262 = !{!259, !36, i64 16}
!263 = !{!35, !36, i64 688}
!264 = !{!259, !39, i64 24}
!265 = !{!259, !39, i64 28}
!266 = !{!259, !37, i64 32}
!267 = !{!259, !36, i64 40}
!268 = !{!259, !36, i64 48}
!269 = !{!209, !37, i64 25}
!270 = distinct !{!270, !58, !59}
!271 = distinct !{!271, !58, !59}
!272 = !{!48, !39, i64 476}
!273 = !{!274, !40, i64 78}
!274 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !71, i64 56, !37, i64 72, !37, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !49, i64 96, !49, i64 112, !49, i64 128, !49, i64 144}
!275 = !{!276, !36, i64 0}
!276 = !{!"uiPieMenu", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20}
!277 = !{!113, !40, i64 134}
!278 = !{!113, !40, i64 132}
!279 = !{!48, !39, i64 668}
!280 = !{!276, !36, i64 8}
!281 = !{!276, !39, i64 16}
!282 = !{!276, !39, i64 20}
!283 = !{!209, !50, i64 16}
!284 = !{!48, !39, i64 472}
!285 = !{!48, !39, i64 464}
!286 = !{!48, !39, i64 468}
!287 = !{!48, !39, i64 460}
!288 = !{!289, !36, i64 216}
!289 = !{!"MenuType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !36, i64 208, !36, i64 216, !36, i64 224, !290, i64 232}
!290 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!291 = !{!292, !36, i64 8}
!292 = !{!"Menu", !36, i64 0, !36, i64 8}
!293 = !{!292, !36, i64 0}
!294 = !{!295, !39, i64 2100}
!295 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !49, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!296 = !{!289, !36, i64 224}
!297 = !{!298, !40, i64 16}
!298 = !{!"Report", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !39, i64 20, !36, i64 24, !36, i64 32}
!299 = !{!300, !39, i64 16}
!300 = !{!"ReportList", !49, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32}
!301 = !{!298, !36, i64 24}
!302 = !{!298, !36, i64 32}
!303 = distinct !{!303, !58, !59}
!304 = distinct !{!304, !58, !59}
!305 = !{!209, !36, i64 120}
!306 = !{!209, !39, i64 144}
!307 = !{!209, !39, i64 156}
!308 = !{!209, !36, i64 48}
!309 = !{!209, !36, i64 32}
!310 = !{!209, !36, i64 40}
!311 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52}
!312 = !{!35, !36, i64 608}
!313 = distinct !{!313, !58, !59}
