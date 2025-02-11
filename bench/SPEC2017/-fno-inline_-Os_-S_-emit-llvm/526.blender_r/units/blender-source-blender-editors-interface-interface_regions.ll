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
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ui_step_name_menu(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @RNA_property_type(ptr noundef nonnull %4) #18
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %13, label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.ui_step_name_menu, ptr noundef %11) #19
  br label %21

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 48
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %19 = load ptr, ptr %3, align 8, !tbaa !5
  %20 = tail call fastcc i32 @rna_property_enum_step(ptr noundef %17, ptr noundef nonnull %18, ptr noundef %19, i32 noundef %1) #19
  br label %21

21:                                               ; preds = %13, %9
  %22 = phi i32 [ 0, %9 ], [ %20, %13 ]
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_property_enum_step(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #20
  %8 = icmp sgt i32 %3, -1
  %9 = select i1 %8, i32 1, i32 -1
  call void @RNA_property_enum_items(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %10 = call i32 @RNA_property_enum_get(ptr noundef %1, ptr noundef %2) #18
  %11 = load ptr, ptr %5, align 8, !tbaa !23
  %12 = call i32 @RNA_enum_from_value(ptr noundef %11, i32 noundef %10) #18
  %13 = load i32, ptr %6, align 4, !tbaa !24
  %14 = load ptr, ptr %5, align 8, !tbaa !23
  br label %15

15:                                               ; preds = %15, %4
  %16 = phi i32 [ %12, %4 ], [ %19, %15 ]
  %17 = phi i32 [ 0, %4 ], [ %26, %15 ]
  %18 = add nsw i32 %16, %9
  %19 = call fastcc i32 @mod_i(i32 noundef %18, i32 noundef %13) #19
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.EnumPropertyItem, ptr %14, i64 %20, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !25
  %23 = load i8, ptr %22, align 1, !tbaa !27
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 0, i32 %9
  %26 = add nsw i32 %25, %17
  %27 = icmp ne i32 %19, %12
  %28 = icmp ne i32 %26, %3
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %15, label %30, !llvm.loop !28

30:                                               ; preds = %15
  br i1 %27, label %31, label %34

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.EnumPropertyItem, ptr %14, i64 %20
  %33 = load i32, ptr %32, align 8, !tbaa !30
  br label %34

34:                                               ; preds = %31, %30
  %35 = phi i32 [ %33, %31 ], [ %10, %30 ]
  %36 = load i8, ptr %7, align 1, !tbaa !27
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %39(ptr noundef nonnull %14) #18
  br label %40

40:                                               ; preds = %38, %34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ui_tooltip_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [512 x i8], align 16
  %5 = alloca %struct.rctf, align 4
  %6 = alloca %struct.rcti, align 16
  %7 = alloca %struct.uiStringInfo, align 8
  %8 = alloca %struct.uiStringInfo, align 8
  %9 = alloca %struct.uiStringInfo, align 8
  %10 = alloca %struct.uiStringInfo, align 8
  %11 = alloca %struct.uiStringInfo, align 8
  %12 = alloca %struct.uiStringInfo, align 8
  %13 = alloca %struct.uiStringInfo, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %17 = sitofp i16 %16 to float
  %18 = fmul float %17, 0x3FF4CCCCC0000000
  %19 = fptosi float %18 to i32
  %20 = sitofp i32 %19 to float
  %21 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %22 = tail call ptr @UI_GetStyle() #18
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #20
  %23 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %24 = load ptr, ptr %23, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.uiBlock, ptr %24, i64 0, i32 12
  %26 = load float, ptr %25, align 8, !tbaa !35
  %27 = tail call fastcc float @min_ff(float noundef %26) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.but_tip, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.enum_label, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.enum_tip, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.op_keymap, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.prop_keymap, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.rna_struct, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_tooltip_create.rna_prop, i64 16, i1 false)
  %28 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !36
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %529

32:                                               ; preds = %3
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %34 = tail call ptr %33(i64 noundef 5244, ptr noundef nonnull @.str.1) #18
  call void (ptr, ptr, ...) @uiButGetStrInfo(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef null) #18
  %35 = getelementptr inbounds %struct.uiStringInfo, ptr %7, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !37
  %37 = icmp eq ptr %36, null
  br i1 %37, label %77, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 3
  %40 = call ptr @BLI_strncpy(ptr noundef nonnull %39, ptr noundef nonnull %36, i64 noundef 512) #18
  %41 = getelementptr inbounds %struct.uiStringInfo, ptr %8, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !37
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %35, align 8, !tbaa !37
  %46 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %39, i64 noundef 512, ptr noundef nonnull @.str.2, ptr noundef %45) #18
  %47 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 4
  %48 = load ptr, ptr %41, align 8, !tbaa !37
  %49 = call ptr @BLI_strncpy(ptr noundef nonnull %47, ptr noundef %48, i64 noundef 512) #18
  br label %50

50:                                               ; preds = %44, %38
  %51 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !39
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %53
  store i32 1, ptr %54, align 4, !tbaa !43
  %55 = add nsw i32 %52, 1
  store i32 %55, ptr %51, align 4, !tbaa !39
  %56 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %57 = load i32, ptr %56, align 8, !tbaa !45
  %58 = and i32 %57, 1024
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %60
  %65 = call i32 @RNA_property_flag(ptr noundef nonnull %62) #18
  %66 = and i32 %65, 2097152
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %51, align 4, !tbaa !39
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %70
  %72 = call ptr @BLI_strncpy(ptr noundef nonnull %71, ptr noundef nonnull @.str.3, i64 noundef 512) #18
  %73 = load i32, ptr %51, align 4, !tbaa !39
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %74, i32 1
  store i32 3, ptr %75, align 4, !tbaa !46
  %76 = add nsw i32 %73, 1
  store i32 %76, ptr %51, align 4, !tbaa !39
  br label %77

77:                                               ; preds = %50, %60, %64, %68, %32
  %78 = getelementptr inbounds %struct.uiStringInfo, ptr %9, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !37
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %83 = load i32, ptr %82, align 4, !tbaa !39
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %84
  %86 = call ptr @BLI_strncpy(ptr noundef nonnull %85, ptr noundef nonnull %79, i64 noundef 512) #18
  %87 = load i32, ptr %82, align 4, !tbaa !39
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %88, i32 1
  store i32 1, ptr %89, align 4, !tbaa !46
  %90 = add nsw i32 %87, 1
  store i32 %90, ptr %82, align 4, !tbaa !39
  br label %91

91:                                               ; preds = %81, %77
  %92 = getelementptr inbounds %struct.uiStringInfo, ptr %10, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !37
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %97 = load i32, ptr %96, align 4, !tbaa !39
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %98
  %100 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %99, i64 noundef 512, ptr noundef nonnull @.str.4, ptr noundef nonnull %93) #18
  %101 = load i32, ptr %96, align 4, !tbaa !39
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %102, i32 1
  store i32 1, ptr %103, align 4, !tbaa !46
  %104 = add nsw i32 %101, 1
  store i32 %104, ptr %96, align 4, !tbaa !39
  br label %105

105:                                              ; preds = %95, %91
  %106 = getelementptr inbounds %struct.uiStringInfo, ptr %11, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !37
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %111 = load i32, ptr %110, align 4, !tbaa !39
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %112
  %114 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %113, i64 noundef 512, ptr noundef nonnull @.str.4, ptr noundef nonnull %107) #18
  %115 = load i32, ptr %110, align 4, !tbaa !39
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %116, i32 1
  store i32 1, ptr %117, align 4, !tbaa !46
  %118 = add nsw i32 %115, 1
  store i32 %118, ptr %110, align 4, !tbaa !39
  br label %119

119:                                              ; preds = %109, %105
  %120 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %121 = load i32, ptr %120, align 8, !tbaa !45
  switch i32 %121, label %142 [
    i32 3072, label %122
    i32 20992, label %122
    i32 26624, label %122
  ]

122:                                              ; preds = %119, %119, %119
  %123 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = call i32 @RNA_property_subtype(ptr noundef nonnull %124) #18
  %128 = icmp eq i32 %127, 6
  br i1 %128, label %142, label %129

129:                                              ; preds = %122, %126
  call void @ui_get_but_string(ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef 512) #18
  %130 = load i8, ptr %4, align 16, !tbaa !27
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %134 = load i32, ptr %133, align 4, !tbaa !39
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %135
  %137 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %136, i64 noundef 512, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #18
  %138 = load i32, ptr %133, align 4, !tbaa !39
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %139, i32 1
  store i32 1, ptr %140, align 4, !tbaa !46
  %141 = add nsw i32 %138, 1
  store i32 %141, ptr %133, align 4, !tbaa !39
  br label %142

142:                                              ; preds = %119, %126, %132, %129
  %143 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %144 = load ptr, ptr %143, align 8, !tbaa !5
  %145 = icmp eq ptr %144, null
  br i1 %145, label %210, label %146

146:                                              ; preds = %142
  %147 = call i32 @uiButGetUnitType(ptr noundef nonnull %2) #18
  %148 = icmp eq i32 %147, 327680
  br i1 %148, label %149, label %177

149:                                              ; preds = %146
  %150 = load ptr, ptr %143, align 8, !tbaa !5
  %151 = call i32 @RNA_property_type(ptr noundef %150) #18
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %177

153:                                              ; preds = %149
  %154 = load ptr, ptr %143, align 8, !tbaa !5
  %155 = call zeroext i8 @RNA_property_array_check(ptr noundef %154) #18
  %156 = icmp eq i8 %155, 0
  %157 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %158 = load ptr, ptr %143, align 8, !tbaa !5
  br i1 %156, label %163, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 56
  %161 = load i32, ptr %160, align 8, !tbaa !47
  %162 = call float @RNA_property_float_get_index(ptr noundef nonnull %157, ptr noundef %158, i32 noundef %161) #18
  br label %165

163:                                              ; preds = %153
  %164 = call float @RNA_property_float_get(ptr noundef nonnull %157, ptr noundef %158) #18
  br label %165

165:                                              ; preds = %163, %159
  %166 = phi float [ %162, %159 ], [ %164, %163 ]
  %167 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %168 = load i32, ptr %167, align 4, !tbaa !39
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %169
  %171 = fpext float %166 to double
  %172 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %170, i64 noundef 512, ptr noundef nonnull @.str.6, double noundef %171) #18
  %173 = load i32, ptr %167, align 4, !tbaa !39
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %174, i32 1
  store i32 3, ptr %175, align 4, !tbaa !46
  %176 = add nsw i32 %173, 1
  store i32 %176, ptr %167, align 4, !tbaa !39
  br label %177

177:                                              ; preds = %149, %165, %146
  %178 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %179 = load i32, ptr %178, align 8, !tbaa !48
  %180 = and i32 %179, 32768
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %177
  %183 = call zeroext i8 @ui_but_anim_expression_get(ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef 512) #18
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %187 = load i32, ptr %186, align 4, !tbaa !39
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %188
  %190 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %189, i64 noundef 512, ptr noundef nonnull @.str.7, ptr noundef nonnull %4) #18
  %191 = load i32, ptr %186, align 4, !tbaa !39
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %192, i32 1
  store i32 3, ptr %193, align 4, !tbaa !46
  %194 = add nsw i32 %191, 1
  store i32 %194, ptr %186, align 4, !tbaa !39
  br label %195

195:                                              ; preds = %182, %185, %177
  %196 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %197 = load ptr, ptr %196, align 8, !tbaa !49
  %198 = icmp eq ptr %197, null
  br i1 %198, label %259, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.ID, ptr %197, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !50
  %202 = icmp eq ptr %201, null
  br i1 %202, label %259, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %205 = load i32, ptr %204, align 4, !tbaa !39
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %206
  %208 = getelementptr inbounds %struct.Library, ptr %201, i64 0, i32 3
  %209 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %207, i64 noundef 512, ptr noundef nonnull @.str.8, ptr noundef nonnull %208) #18
  br label %252

210:                                              ; preds = %142
  %211 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 59
  %212 = load ptr, ptr %211, align 8, !tbaa !52
  %213 = icmp eq ptr %212, null
  br i1 %213, label %259, label %214

214:                                              ; preds = %210
  %215 = call ptr @uiButGetOperatorPtrRNA(ptr noundef nonnull %2) #18
  call void @WM_operator_properties_sanitize(ptr noundef %215, i8 noundef zeroext 0) #18
  %216 = load ptr, ptr %211, align 8, !tbaa !52
  %217 = call ptr @WM_operator_pystring_ex(ptr noundef %0, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %216, ptr noundef %215) #18
  %218 = call zeroext i8 @WM_operator_pystring_abbreviate(ptr noundef %217, i32 noundef 32) #18
  %219 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !53
  %220 = and i32 %219, 67108864
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %224 = load i32, ptr %223, align 4, !tbaa !39
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %225
  %227 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %226, i64 noundef 512, ptr noundef nonnull @.str.9, ptr noundef %217) #18
  %228 = load i32, ptr %223, align 4, !tbaa !39
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %229
  store i32 2, ptr %230, align 4, !tbaa !43
  %231 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %229, i32 1
  store i32 4, ptr %231, align 4, !tbaa !46
  %232 = add nsw i32 %228, 1
  store i32 %232, ptr %223, align 4, !tbaa !39
  br label %233

233:                                              ; preds = %222, %214
  %234 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %234(ptr noundef %217) #18
  %235 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %236 = load i32, ptr %235, align 8, !tbaa !48
  %237 = and i32 %236, 2048
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %259, label %239

239:                                              ; preds = %233
  call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef null) #18
  %240 = load ptr, ptr %211, align 8, !tbaa !52
  %241 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 61
  %242 = load i16, ptr %241, align 8, !tbaa !54
  %243 = call i32 @WM_operator_poll_context(ptr noundef %0, ptr noundef %240, i16 noundef signext %242) #18
  %244 = call ptr @CTX_wm_operator_poll_msg_get(ptr noundef %0) #18
  %245 = icmp eq ptr %244, null
  br i1 %245, label %259, label %246

246:                                              ; preds = %239
  %247 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %248 = load i32, ptr %247, align 4, !tbaa !39
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %249
  %251 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %250, i64 noundef 512, ptr noundef nonnull @.str.10, ptr noundef nonnull %244) #18
  br label %252

252:                                              ; preds = %203, %246
  %253 = phi ptr [ %204, %203 ], [ %247, %246 ]
  %254 = phi i32 [ 3, %203 ], [ 5, %246 ]
  %255 = load i32, ptr %253, align 4, !tbaa !39
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %256, i32 1
  store i32 %254, ptr %257, align 4, !tbaa !46
  %258 = add nsw i32 %255, 1
  store i32 %258, ptr %253, align 4, !tbaa !39
  br label %259

259:                                              ; preds = %252, %233, %239, %195, %199, %210
  %260 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !53
  %261 = and i32 %260, 67108864
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %329

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 59
  %265 = load ptr, ptr %264, align 8, !tbaa !52
  %266 = icmp eq ptr %265, null
  %267 = getelementptr inbounds %struct.uiStringInfo, ptr %12, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8
  %269 = icmp ne ptr %268, null
  %270 = select i1 %266, i1 %269, i1 false
  br i1 %270, label %271, label %329

271:                                              ; preds = %263
  %272 = getelementptr inbounds %struct.uiStringInfo, ptr %13, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !37
  %274 = icmp eq ptr %273, null
  %275 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %276 = load i32, ptr %275, align 4, !tbaa !39
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %277
  br i1 %274, label %281, label %279

279:                                              ; preds = %271
  %280 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %278, i64 noundef 512, ptr noundef nonnull @.str.11, ptr noundef nonnull %268, ptr noundef nonnull %273) #18
  br label %283

281:                                              ; preds = %271
  %282 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %278, i64 noundef 512, ptr noundef nonnull @.str.9, ptr noundef nonnull %268) #18
  br label %283

283:                                              ; preds = %281, %279
  %284 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %285 = load i32, ptr %284, align 4, !tbaa !39
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %286
  store i32 2, ptr %287, align 4, !tbaa !43
  %288 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %286, i32 1
  store i32 4, ptr %288, align 4, !tbaa !46
  %289 = add nsw i32 %285, 1
  store i32 %289, ptr %284, align 4, !tbaa !39
  %290 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %291 = load ptr, ptr %290, align 8, !tbaa !55
  %292 = icmp eq ptr %291, null
  br i1 %292, label %329, label %293

293:                                              ; preds = %283
  %294 = load ptr, ptr %143, align 8, !tbaa !5
  %295 = call ptr @RNA_path_full_ID_py(ptr noundef nonnull %291) #18
  %296 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !56
  %298 = icmp ne ptr %297, null
  %299 = icmp ne ptr %294, null
  %300 = select i1 %298, i1 %299, i1 false
  br i1 %300, label %301, label %310

301:                                              ; preds = %293
  %302 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %290, ptr noundef nonnull %294) #18
  %303 = icmp eq ptr %302, null
  br i1 %303, label %311, label %304

304:                                              ; preds = %301
  %305 = load i32, ptr %284, align 4, !tbaa !39
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %306
  %308 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %307, i64 noundef 512, ptr noundef nonnull @.str.12, ptr noundef %295, ptr noundef nonnull %302) #18
  %309 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %309(ptr noundef nonnull %302) #18
  br label %322

310:                                              ; preds = %293
  br i1 %299, label %311, label %322

311:                                              ; preds = %301, %310
  %312 = load i32, ptr %284, align 4, !tbaa !39
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %313
  %315 = load ptr, ptr %272, align 8, !tbaa !37
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %319

317:                                              ; preds = %311
  %318 = call ptr @RNA_property_identifier(ptr noundef nonnull %294) #18
  br label %319

319:                                              ; preds = %311, %317
  %320 = phi ptr [ %318, %317 ], [ %315, %311 ]
  %321 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %314, i64 noundef 512, ptr noundef nonnull @.str.13, ptr noundef %295, ptr noundef %320) #18
  br label %322

322:                                              ; preds = %310, %319, %304
  %323 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %323(ptr noundef %295) #18
  %324 = load i32, ptr %284, align 4, !tbaa !39
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %325
  store i32 2, ptr %326, align 4, !tbaa !43
  %327 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %325, i32 1
  store i32 4, ptr %327, align 4, !tbaa !46
  %328 = add nsw i32 %324, 1
  store i32 %328, ptr %284, align 4, !tbaa !39
  br label %329

329:                                              ; preds = %283, %322, %263, %259
  %330 = load ptr, ptr %35, align 8, !tbaa !37
  %331 = icmp eq ptr %330, null
  br i1 %331, label %334, label %332

332:                                              ; preds = %329
  %333 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %333(ptr noundef nonnull %330) #18
  br label %334

334:                                              ; preds = %332, %329
  %335 = getelementptr inbounds %struct.uiStringInfo, ptr %8, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !37
  %337 = icmp eq ptr %336, null
  br i1 %337, label %340, label %338

338:                                              ; preds = %334
  %339 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %339(ptr noundef nonnull %336) #18
  br label %340

340:                                              ; preds = %338, %334
  %341 = load ptr, ptr %78, align 8, !tbaa !37
  %342 = icmp eq ptr %341, null
  br i1 %342, label %345, label %343

343:                                              ; preds = %340
  %344 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %344(ptr noundef nonnull %341) #18
  br label %345

345:                                              ; preds = %343, %340
  %346 = load ptr, ptr %92, align 8, !tbaa !37
  %347 = icmp eq ptr %346, null
  br i1 %347, label %350, label %348

348:                                              ; preds = %345
  %349 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %349(ptr noundef nonnull %346) #18
  br label %350

350:                                              ; preds = %348, %345
  %351 = load ptr, ptr %106, align 8, !tbaa !37
  %352 = icmp eq ptr %351, null
  br i1 %352, label %355, label %353

353:                                              ; preds = %350
  %354 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %354(ptr noundef nonnull %351) #18
  br label %355

355:                                              ; preds = %353, %350
  %356 = getelementptr inbounds %struct.uiStringInfo, ptr %12, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !37
  %358 = icmp eq ptr %357, null
  br i1 %358, label %361, label %359

359:                                              ; preds = %355
  %360 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %360(ptr noundef nonnull %357) #18
  br label %361

361:                                              ; preds = %359, %355
  %362 = getelementptr inbounds %struct.uiStringInfo, ptr %13, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !37
  %364 = icmp eq ptr %363, null
  br i1 %364, label %367, label %365

365:                                              ; preds = %361
  %366 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %366(ptr noundef nonnull %363) #18
  br label %367

367:                                              ; preds = %365, %361
  %368 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 6
  %369 = load i32, ptr %368, align 4, !tbaa !39
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %367
  %372 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  call void %372(ptr noundef nonnull %34) #18
  br label %529

373:                                              ; preds = %367
  %374 = call ptr @CTX_wm_screen(ptr noundef %0) #18
  %375 = call fastcc ptr @ui_add_temporary_region(ptr noundef %374) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) @ui_tooltip_create.type, i8 0, i64 184, i1 false)
  store ptr @ui_tooltip_region_draw_cb, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_tooltip_create.type, i64 0, i32 5), align 8, !tbaa !57
  store ptr @ui_tooltip_region_free_cb, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_tooltip_create.type, i64 0, i32 7), align 8, !tbaa !59
  store i32 3, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_tooltip_create.type, i64 0, i32 2), align 8, !tbaa !60
  %376 = getelementptr inbounds %struct.ARegion, ptr %375, i64 0, i32 20
  store ptr @ui_tooltip_create.type, ptr %376, align 8, !tbaa !61
  %377 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 1
  %378 = getelementptr inbounds %struct.uiStyle, ptr %22, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %377, ptr noundef nonnull align 8 dereferenceable(32) %378, i64 32, i1 false), !tbaa.struct !64
  %379 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 1, i32 1
  call void @ui_fontscale(ptr noundef nonnull %379, float noundef %27) #18
  call void @uiStyleFontSet(ptr noundef nonnull %377) #18
  %380 = load i16, ptr %377, align 4, !tbaa !67
  %381 = sext i16 %380 to i32
  %382 = call float @BLF_height_max(i32 noundef %381) #18
  %383 = fptosi float %382 to i32
  %384 = load i32, ptr %368, align 4, !tbaa !39
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %440

386:                                              ; preds = %373
  %387 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 3
  %388 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 4
  %389 = sitofp i32 %383 to float
  br label %390

390:                                              ; preds = %386, %428
  %391 = phi i64 [ 0, %386 ], [ %433, %428 ]
  %392 = phi float [ 0.000000e+00, %386 ], [ %432, %428 ]
  %393 = phi float [ 0.000000e+00, %386 ], [ %431, %428 ]
  %394 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 5, i64 %391
  %395 = load i32, ptr %394, align 4, !tbaa !43
  switch i32 %395, label %422 [
    i32 1, label %396
    i32 2, label %410
  ]

396:                                              ; preds = %390
  %397 = load i16, ptr %377, align 4, !tbaa !67
  %398 = sext i16 %397 to i32
  %399 = call float @BLF_width(i32 noundef %398, ptr noundef nonnull %387, i64 noundef 512) #18
  %400 = fptosi float %399 to i32
  %401 = load ptr, ptr %335, align 8, !tbaa !37
  %402 = icmp eq ptr %401, null
  br i1 %402, label %428, label %403

403:                                              ; preds = %396
  %404 = load i16, ptr %377, align 4, !tbaa !67
  %405 = sext i16 %404 to i32
  %406 = call float @BLF_width(i32 noundef %405, ptr noundef nonnull %388, i64 noundef 512) #18
  %407 = sitofp i32 %400 to float
  %408 = fadd float %406, %407
  %409 = fptosi float %408 to i32
  br label %428

410:                                              ; preds = %390
  %411 = load i32, ptr @blf_mono_font, align 4, !tbaa !24
  %412 = load i16, ptr %379, align 2, !tbaa !68
  %413 = sitofp i16 %412 to float
  %414 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !69
  %415 = fmul float %414, %413
  %416 = fptosi float %415 to i32
  %417 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !70
  call void @BLF_size(i32 noundef %411, i32 noundef %416, i32 noundef %417) #18
  %418 = load i32, ptr @blf_mono_font, align 4, !tbaa !24
  %419 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %391
  %420 = call float @BLF_width(i32 noundef %418, ptr noundef nonnull %419, i64 noundef 512) #18
  %421 = fptosi float %420 to i32
  br label %428

422:                                              ; preds = %390
  %423 = load i16, ptr %377, align 4, !tbaa !67
  %424 = sext i16 %423 to i32
  %425 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 2, i64 %391
  %426 = call float @BLF_width(i32 noundef %424, ptr noundef nonnull %425, i64 noundef 512) #18
  %427 = fptosi float %426 to i32
  br label %428

428:                                              ; preds = %410, %422, %396, %403
  %429 = phi i32 [ %409, %403 ], [ %400, %396 ], [ %421, %410 ], [ %427, %422 ]
  %430 = sitofp i32 %429 to float
  %431 = call fastcc float @max_ff(float noundef %393, float noundef %430) #19
  %432 = fadd float %392, %389
  %433 = add nuw nsw i64 %391, 1
  %434 = load i32, ptr %368, align 4, !tbaa !39
  %435 = sext i32 %434 to i64
  %436 = icmp slt i64 %433, %435
  br i1 %436, label %390, label %437, !llvm.loop !71

437:                                              ; preds = %428
  %438 = insertelement <2 x float> poison, float %431, i64 0
  %439 = insertelement <2 x float> %438, float %432, i64 1
  br label %440

440:                                              ; preds = %437, %373
  %441 = phi <2 x float> [ zeroinitializer, %373 ], [ %439, %437 ]
  %442 = getelementptr inbounds %struct.ARegion, ptr %375, i64 0, i32 30
  store ptr %34, ptr %442, align 8, !tbaa !72
  %443 = extractelement <2 x float> %441, i64 1
  %444 = fptosi float %443 to i32
  %445 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 7
  store i32 %444, ptr %445, align 4, !tbaa !73
  %446 = getelementptr inbounds %struct.uiTooltipData, ptr %34, i64 0, i32 8
  store i32 %383, ptr %446, align 4, !tbaa !74
  %447 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %448 = call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %447) #19
  %449 = insertelement <2 x float> poison, float %27, i64 0
  %450 = shufflevector <2 x float> %449, <2 x float> poison, <2 x i32> zeroinitializer
  %451 = fdiv <2 x float> <float 1.600000e+01, float 6.000000e+00>, %450
  %452 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %453 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 2
  %454 = load float, ptr %453, align 8, !tbaa !75
  %455 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %456 = insertelement <2 x float> poison, float %448, i64 0
  %457 = insertelement <2 x float> %456, float %454, i64 1
  %458 = fadd <2 x float> %457, zeroinitializer
  %459 = fsub <2 x float> %458, %451
  %460 = extractelement <2 x float> %459, i64 0
  store float %460, ptr %5, align 4, !tbaa !76
  %461 = extractelement <2 x float> %459, i64 1
  store float %461, ptr %455, align 4, !tbaa !77
  %462 = fadd <2 x float> %459, %441
  %463 = fsub <2 x float> %459, %441
  %464 = shufflevector <2 x float> %462, <2 x float> %463, <2 x i32> <i32 0, i32 3>
  %465 = insertelement <2 x float> %451, float %20, i64 0
  %466 = fadd <2 x float> %464, %465
  %467 = fsub <2 x float> %464, %465
  %468 = shufflevector <2 x float> %466, <2 x float> %467, <2 x i32> <i32 0, i32 3>
  store <2 x float> %468, ptr %452, align 4, !tbaa !66
  %469 = icmp eq ptr %1, null
  br i1 %469, label %484, label %470

470:                                              ; preds = %440
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #20
  store float %460, ptr %14, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #20
  store float %461, ptr %15, align 4, !tbaa !66
  %471 = load ptr, ptr %23, align 8, !tbaa !17
  call void @ui_block_to_window_fl(ptr noundef nonnull %1, ptr noundef %471, ptr noundef nonnull %14, ptr noundef nonnull %15) #18
  %472 = getelementptr inbounds %struct.wmWindow, ptr %21, i64 0, i32 21
  %473 = load ptr, ptr %472, align 8, !tbaa !78
  %474 = getelementptr inbounds %struct.wmEvent, ptr %473, i64 0, i32 4
  %475 = load i32, ptr %474, align 4, !tbaa !80
  %476 = sitofp i32 %475 to float
  %477 = extractelement <2 x float> %451, i64 0
  %478 = call float @llvm.fmuladd.f32(float %477, float 2.000000e+00, float %476)
  %479 = call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %447) #19
  %480 = fsub float %478, %479
  %481 = load float, ptr %15, align 4, !tbaa !66
  %482 = load float, ptr %455, align 4, !tbaa !77
  %483 = fsub float %481, %482
  call void @BLI_rctf_translate(ptr noundef nonnull %5, float noundef %480, float noundef %483) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #20
  br label %484

484:                                              ; preds = %470, %440
  call void @BLI_rcti_rctf_copy(ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  %485 = call i32 @WM_window_pixels_x(ptr noundef %21) #18
  %486 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %487 = load i32, ptr %486, align 4, !tbaa !82
  %488 = icmp sgt i32 %487, %485
  br i1 %488, label %489, label %497

489:                                              ; preds = %484
  %490 = load i32, ptr %6, align 16, !tbaa !83
  %491 = add nsw i32 %490, %485
  %492 = icmp sgt i32 %487, %491
  br i1 %492, label %493, label %494

493:                                              ; preds = %489
  store i32 %485, ptr %486, align 4, !tbaa !82
  store i32 0, ptr %6, align 16, !tbaa !83
  br label %497

494:                                              ; preds = %489
  %495 = sub i32 %485, %487
  %496 = add i32 %495, %490
  store i32 %496, ptr %6, align 16, !tbaa !83
  store i32 %485, ptr %486, align 4, !tbaa !82
  br label %497

497:                                              ; preds = %493, %494, %484
  %498 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %499 = load i32, ptr %498, align 8, !tbaa !84
  %500 = icmp slt i32 %499, 5
  br i1 %500, label %501, label %506

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %503 = load i32, ptr %502, align 4, !tbaa !85
  %504 = sub i32 %503, %499
  %505 = add i32 %504, 30
  store i32 %505, ptr %502, align 4, !tbaa !85
  store i32 30, ptr %498, align 8, !tbaa !84
  br label %506

506:                                              ; preds = %501, %497
  %507 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %6) #19
  %508 = sitofp i32 %507 to float
  %509 = fadd float %20, %508
  %510 = fptosi float %509 to i32
  %511 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %6) #19
  %512 = sitofp i32 %511 to float
  %513 = fadd float %20, %512
  %514 = fptosi float %513 to i32
  call void @BLI_rcti_resize(ptr noundef nonnull %6, i32 noundef %510, i32 noundef %514) #18
  %515 = call i32 @UI_ThemeMenuShadowWidth() #18
  store i32 %515, ptr %34, align 4, !tbaa !86
  %516 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %6) #19
  %517 = sub nsw i32 %516, %515
  %518 = getelementptr inbounds %struct.rcti, ptr %34, i64 0, i32 1
  store i32 %517, ptr %518, align 4, !tbaa !87
  %519 = getelementptr inbounds %struct.rcti, ptr %34, i64 0, i32 2
  store i32 %515, ptr %519, align 4, !tbaa !88
  %520 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %6) #19
  %521 = getelementptr inbounds %struct.rcti, ptr %34, i64 0, i32 3
  store i32 %520, ptr %521, align 4, !tbaa !89
  %522 = getelementptr inbounds %struct.ARegion, ptr %375, i64 0, i32 3
  %523 = load <4 x i32>, ptr %6, align 16, !tbaa !24
  %524 = insertelement <4 x i32> poison, i32 %515, i64 0
  %525 = shufflevector <4 x i32> %524, <4 x i32> poison, <4 x i32> zeroinitializer
  %526 = sub nsw <4 x i32> %523, %525
  %527 = add nsw <4 x i32> %523, %525
  %528 = shufflevector <4 x i32> %526, <4 x i32> %527, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %528, ptr %522, align 8, !tbaa !24
  call void @ED_region_init(ptr noundef %0, ptr noundef nonnull %375) #18
  call void @ED_region_tag_redraw(ptr noundef nonnull %375) #18
  br label %529

529:                                              ; preds = %3, %506, %371
  %530 = phi ptr [ null, %371 ], [ %375, %506 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #20
  ret ptr %530
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #4 {
  %2 = fcmp ogt float %0, 1.000000e+00
  %3 = select i1 %2, float 1.000000e+00, float %0
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @uiButGetStrInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ui_get_but_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @uiButGetUnitType(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare zeroext i8 @ui_but_anim_expression_get(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_operator_properties_sanitize(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_operator_pystring_ex(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @WM_operator_pystring_abbreviate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_operator_poll_context(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_operator_poll_msg_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_path_full_ID_py(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ui_add_temporary_region(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %3 = tail call ptr %2(i64 noundef 384, ptr noundef nonnull @.str.30) #18
  %4 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 4
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 8
  store i16 3, ptr %5, align 2, !tbaa !90
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 9
  store i16 7, ptr %6, align 8, !tbaa !91
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_tooltip_region_draw_cb(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca [6 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.uiFontStyle, align 4
  %7 = alloca %struct.uiFontStyle, align 4
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %9 = sitofp i16 %8 to float
  %10 = fmul float %9, 0x3FF4CCCCC0000000
  %11 = fptosi float %10 to i32
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = tail call ptr @ui_tooltip_get_theme() #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #20
  %16 = getelementptr inbounds [6 x [3 x float]], ptr %4, i64 0, i64 1
  %17 = getelementptr inbounds [6 x [3 x float]], ptr %4, i64 0, i64 2
  %18 = getelementptr inbounds [6 x [3 x float]], ptr %4, i64 0, i64 3
  %19 = getelementptr inbounds [6 x [3 x float]], ptr %4, i64 0, i64 4
  %20 = getelementptr inbounds [6 x [3 x float]], ptr %4, i64 0, i64 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %21 = tail call zeroext i8 @glIsEnabled(i32 noundef 32925) #18
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  tail call void @glDisable(i32 noundef 32925) #18
  br label %24

24:                                               ; preds = %23, %2
  tail call void @wmOrtho2_region_ui(ptr noundef nonnull %1) #18
  %25 = tail call ptr @UI_GetStyle() #18
  call void @ui_draw_tooltip_background(ptr noundef %25, ptr noundef null, ptr noundef nonnull %3) #18
  %26 = getelementptr inbounds %struct.uiWidgetColors, ptr %15, i64 0, i32 1
  call void @rgb_uchar_to_float(ptr noundef nonnull %5, ptr noundef nonnull %26) #18
  %27 = getelementptr inbounds %struct.uiWidgetColors, ptr %15, i64 0, i32 4
  call void @rgb_uchar_to_float(ptr noundef nonnull %4, ptr noundef nonnull %27) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %4) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %4) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %4) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %4) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %4) #19
  %28 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %5) #19
  call fastcc void @rgb_tint(ptr noundef nonnull %16, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %28, float noundef 0x3FC99999A0000000) #19
  call fastcc void @rgb_tint(ptr noundef nonnull %17, float noundef 0x3FE3333340000000, float noundef 0x3FC99999A0000000, float noundef %28, float noundef 0x3FC99999A0000000) #19
  call fastcc void @rgb_tint(ptr noundef nonnull %18, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %28, float noundef 0x3FD99999A0000000) #19
  call fastcc void @rgb_tint(ptr noundef nonnull %19, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %28, float noundef 5.000000e-01) #19
  call fastcc void @rgb_tint(ptr noundef nonnull %20, float noundef 0.000000e+00, float noundef 0x3FE99999A0000000, float noundef %28, float noundef 0x3FB99999A0000000) #19
  %29 = load i32, ptr %3, align 4, !tbaa !83
  %30 = sitofp i32 %29 to float
  %31 = call float @llvm.fmuladd.f32(float %12, float 5.000000e-01, float %30)
  %32 = fptosi float %31 to i32
  store i32 %32, ptr %3, align 4, !tbaa !83
  %33 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %3) #19
  %34 = getelementptr inbounds %struct.uiTooltipData, ptr %14, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !73
  %36 = sub nsw i32 %33, %35
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !85
  %40 = sitofp i32 %39 to float
  %41 = call float @llvm.fmuladd.f32(float %37, float -5.000000e-01, float %40)
  %42 = fptosi float %41 to i32
  store i32 %42, ptr %38, align 4, !tbaa !85
  %43 = getelementptr inbounds %struct.uiTooltipData, ptr %14, i64 0, i32 8
  %44 = load i32, ptr %43, align 4, !tbaa !74
  %45 = sub nsw i32 %42, %44
  %46 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 %45, ptr %46, align 4, !tbaa !84
  %47 = getelementptr inbounds %struct.uiTooltipData, ptr %14, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !39
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %109

50:                                               ; preds = %24
  %51 = getelementptr inbounds %struct.uiTooltipData, ptr %14, i64 0, i32 1
  %52 = getelementptr inbounds %struct.uiFontStyle, ptr %7, i64 0, i32 1
  %53 = getelementptr inbounds %struct.uiFontStyle, ptr %6, i64 0, i32 6
  %54 = getelementptr inbounds %struct.uiFontStyle, ptr %6, i64 0, i32 11
  %55 = getelementptr inbounds %struct.uiFontStyle, ptr %6, i64 0, i32 8
  %56 = getelementptr inbounds %struct.uiFontStyle, ptr %6, i64 0, i32 7
  %57 = getelementptr inbounds %struct.uiFontStyle, ptr %6, i64 0, i32 10
  %58 = getelementptr inbounds %struct.uiTooltipData, ptr %14, i64 0, i32 3
  %59 = getelementptr inbounds %struct.uiTooltipData, ptr %14, i64 0, i32 4
  br label %60

60:                                               ; preds = %50, %99
  %61 = phi i64 [ 0, %50 ], [ %105, %99 ]
  %62 = getelementptr inbounds %struct.uiTooltipData, ptr %14, i64 0, i32 5, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !43
  switch i32 %63, label %93 [
    i32 1, label %64
    i32 2, label %77
  ]

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %51, i64 24, i1 false), !tbaa.struct !64
  store i16 1, ptr %53, align 4, !tbaa !93
  %65 = call fastcc float @rgb_to_luma(ptr noundef nonnull %4) #19
  store float %65, ptr %54, align 4, !tbaa !94
  store i16 0, ptr %55, align 4, !tbaa !95
  store i16 0, ptr %56, align 2, !tbaa !96
  store float 1.000000e+00, ptr %57, align 4, !tbaa !97
  call void @uiStyleFontSet(ptr noundef nonnull %6) #18
  call void @glColor3fv(ptr noundef nonnull %4) #18
  call void @uiStyleFontDraw(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %58) #18
  %66 = load i16, ptr %6, align 4, !tbaa !98
  %67 = sext i16 %66 to i32
  %68 = call float @BLF_width(i32 noundef %67, ptr noundef nonnull %58, i64 noundef 512) #18
  %69 = load i32, ptr %3, align 4, !tbaa !83
  %70 = sitofp i32 %69 to float
  %71 = fadd float %68, %70
  %72 = fptosi float %71 to i32
  store i32 %72, ptr %3, align 4, !tbaa !83
  call void @glColor3fv(ptr noundef nonnull %17) #18
  call void @uiStyleFontDraw(ptr noundef nonnull %51, ptr noundef nonnull %3, ptr noundef nonnull %59) #18
  %73 = load i32, ptr %3, align 4, !tbaa !83
  %74 = sitofp i32 %73 to float
  %75 = fsub float %74, %68
  %76 = fptosi float %75 to i32
  store i32 %76, ptr %3, align 4, !tbaa !83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  br label %99

77:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %51, i64 32, i1 false), !tbaa.struct !64
  %78 = load i32, ptr @blf_mono_font, align 4, !tbaa !24
  %79 = trunc i32 %78 to i16
  store i16 %79, ptr %7, align 4, !tbaa !98
  call void @uiStyleFontSet(ptr noundef nonnull %7) #18
  %80 = load i16, ptr %7, align 4, !tbaa !98
  %81 = sext i16 %80 to i32
  %82 = load i16, ptr %52, align 2, !tbaa !99
  %83 = sitofp i16 %82 to float
  %84 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !69
  %85 = fmul float %84, %83
  %86 = fptosi float %85 to i32
  %87 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !70
  call void @BLF_size(i32 noundef %81, i32 noundef %86, i32 noundef %87) #18
  %88 = getelementptr inbounds %struct.uiTooltipData, ptr %14, i64 0, i32 5, i64 %61, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !46
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [6 x [3 x float]], ptr %4, i64 0, i64 %90
  call void @glColor3fv(ptr noundef nonnull %91) #18
  %92 = getelementptr inbounds %struct.uiTooltipData, ptr %14, i64 0, i32 2, i64 %61
  call void @uiStyleFontDraw(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %92) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #20
  br label %99

93:                                               ; preds = %60
  call void @uiStyleFontSet(ptr noundef nonnull %51) #18
  %94 = getelementptr inbounds %struct.uiTooltipData, ptr %14, i64 0, i32 5, i64 %61, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !46
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [6 x [3 x float]], ptr %4, i64 0, i64 %96
  call void @glColor3fv(ptr noundef nonnull %97) #18
  %98 = getelementptr inbounds %struct.uiTooltipData, ptr %14, i64 0, i32 2, i64 %61
  call void @uiStyleFontDraw(ptr noundef nonnull %51, ptr noundef nonnull %3, ptr noundef nonnull %98) #18
  br label %99

99:                                               ; preds = %77, %93, %64
  %100 = load i32, ptr %43, align 4, !tbaa !74
  %101 = load <2 x i32>, ptr %46, align 4, !tbaa !24
  %102 = insertelement <2 x i32> poison, i32 %100, i64 0
  %103 = shufflevector <2 x i32> %102, <2 x i32> poison, <2 x i32> zeroinitializer
  %104 = sub nsw <2 x i32> %101, %103
  store <2 x i32> %104, ptr %46, align 4, !tbaa !24
  %105 = add nuw nsw i64 %61, 1
  %106 = load i32, ptr %47, align 4, !tbaa !39
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %60, label %109, !llvm.loop !100

109:                                              ; preds = %99, %24
  br i1 %22, label %111, label %110

110:                                              ; preds = %109
  call void @glEnable(i32 noundef 32925) #18
  br label %111

111:                                              ; preds = %110, %109
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_tooltip_region_free_cb(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %4(ptr noundef %3) #18
  store ptr null, ptr %2, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare void @ui_fontscale(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiStyleFontSet(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLF_height_max(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #4 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !76
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !101
  %5 = fadd float %2, %4
  %6 = fmul float %5, 5.000000e-01
  ret float %6
}

; Function Attrs: optsize
declare void @ui_block_to_window_fl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare void @BLI_rctf_translate(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rcti_rctf_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rcti_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !82
  %4 = load i32, ptr %0, align 4, !tbaa !83
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !84
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @UI_ThemeMenuShadowWidth() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_tooltip_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #18
  tail call fastcc void @ui_remove_temporary_region(ptr noundef %0, ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_remove_temporary_region(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @wm_draw_region_clear(ptr noundef nonnull %4, ptr noundef %2) #18
  br label %7

7:                                                ; preds = %6, %3
  tail call void @ED_region_exit(ptr noundef %0, ptr noundef %2) #18
  tail call void @BKE_area_region_free(ptr noundef null, ptr noundef %2) #18
  %8 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 4
  tail call void @BLI_freelinkN(ptr noundef nonnull %8, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @uiSearchItemAdd(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @autocomplete_do_name(ptr noundef nonnull %6, ptr noundef %1) #18
  br label %67

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %11, %2
  %15 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !105
  br i1 %14, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 4
  store i32 %16, ptr %18, align 8, !tbaa !106
  br label %19

19:                                               ; preds = %13, %17
  %20 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 1
  %21 = add nsw i32 %16, 1
  store i32 %21, ptr %20, align 4, !tbaa !105
  br label %67

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !105
  %25 = load i32, ptr %0, align 8, !tbaa !107
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 5
  store i32 1, ptr %28, align 4, !tbaa !108
  br label %67

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !106
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = add nsw i32 %31, -1
  store i32 %34, ptr %30, align 8, !tbaa !106
  br label %67

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !109
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = sext i32 %24 to i64
  %41 = getelementptr inbounds ptr, ptr %37, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !23
  %43 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !110
  %45 = sext i32 %44 to i64
  %46 = tail call ptr @BLI_strncpy(ptr noundef %42, ptr noundef %1, i64 noundef %45) #18
  %47 = load i32, ptr %23, align 4, !tbaa !105
  br label %48

48:                                               ; preds = %39, %35
  %49 = phi i32 [ %47, %39 ], [ %24, %35 ]
  %50 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !111
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = sext i32 %49 to i64
  %55 = getelementptr inbounds ptr, ptr %51, i64 %54
  store ptr %2, ptr %55, align 8, !tbaa !23
  br label %56

56:                                               ; preds = %53, %48
  %57 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !112
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = sext i32 %49 to i64
  %62 = getelementptr inbounds i32, ptr %58, i64 %61
  store i32 %3, ptr %62, align 4, !tbaa !24
  %63 = load i32, ptr %23, align 4, !tbaa !105
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %63, %60 ], [ %49, %56 ]
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %23, align 4, !tbaa !105
  br label %67

67:                                               ; preds = %64, %33, %27, %19, %8
  %68 = phi i8 [ 1, %8 ], [ 1, %19 ], [ 0, %27 ], [ 1, %33 ], [ 1, %64 ]
  ret i8 %68
}

; Function Attrs: optsize
declare void @autocomplete_do_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @uiSearchBoxHeight() local_unnamed_addr #9 {
  %1 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %2 = sext i16 %1 to i32
  %3 = mul nsw i32 %2, 10
  %4 = add nsw i32 %3, 16
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @uiSearchBoxWidth() local_unnamed_addr #9 {
  %1 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %2 = sext i16 %1 to i32
  %3 = mul nsw i32 %2, 12
  ret i32 %3
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @uiSearchItemFindIndex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !105
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uiSearchItems, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ 0, %6 ], [ %17, %16 ]
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %21, label %10, !llvm.loop !113

19:                                               ; preds = %10
  %20 = trunc i64 %11 to i32
  br label %21

21:                                               ; preds = %16, %19, %2
  %22 = phi i32 [ -1, %2 ], [ %20, %19 ], [ -1, %16 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ui_searchbox_find_index(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 2
  %6 = tail call i32 @uiSearchItemFindIndex(ptr noundef nonnull %5, ptr noundef %1) #19
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ui_searchbox_inside(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !114
  %8 = sub nsw i32 %1, %7
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !115
  %11 = sub nsw i32 %2, %10
  %12 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %5, i32 noundef %8, i32 noundef %11) #18
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ui_searchbox_apply(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 29
  store ptr null, ptr %5, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !117
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %45, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 2, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 6
  %16 = load i8, ptr %15, align 2, !tbaa !120
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  br label %30

21:                                               ; preds = %9
  %22 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef 124) #21
  %23 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %24 = load ptr, ptr %23, align 8, !tbaa !121
  %25 = icmp eq ptr %22, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = ptrtoint ptr %22 to i64
  %28 = ptrtoint ptr %14 to i64
  %29 = sub i64 %27, %28
  br label %35

30:                                               ; preds = %18, %21
  %31 = phi ptr [ %20, %18 ], [ %24, %21 ]
  %32 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 2, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !122
  %34 = sext i32 %33 to i64
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi ptr [ %24, %26 ], [ %31, %30 ]
  %37 = phi i64 [ %29, %26 ], [ %34, %30 ]
  %38 = tail call ptr @BLI_strncpy(ptr noundef %36, ptr noundef %14, i64 noundef %37) #18
  %39 = getelementptr inbounds %struct.uiSearchboxData, ptr %4, i64 0, i32 2, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !123
  %41 = load i32, ptr %6, align 8, !tbaa !117
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !23
  store ptr %44, ptr %5, align 8, !tbaa !116
  br label %52

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !45
  %48 = icmp eq i32 %47, 26624
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %51 = load ptr, ptr %50, align 8, !tbaa !121
  store i8 0, ptr %51, align 1, !tbaa !27
  br label %52

52:                                               ; preds = %45, %49, %35
  %53 = phi i8 [ 1, %35 ], [ 1, %49 ], [ 0, %45 ]
  ret i8 %53
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_searchbox_event(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rcti, align 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %10 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !124
  %12 = sext i16 %11 to i32
  store i32 %12, ptr %5, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %13 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !125
  %15 = sext i16 %14 to i32
  store i32 %15, ptr %6, align 4, !tbaa !24
  %16 = icmp eq i16 %11, 14
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  call void @ui_pan_to_scroll(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %18 = load i32, ptr %5, align 4, !tbaa !24
  br label %19

19:                                               ; preds = %17, %4
  %20 = phi i32 [ %18, %17 ], [ %12, %4 ]
  switch i32 %20, label %57 [
    i32 10, label %21
    i32 140, label %21
    i32 11, label %22
    i32 138, label %22
    i32 4, label %23
  ]

21:                                               ; preds = %19, %19
  call fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef -1) #19
  br label %57

22:                                               ; preds = %19, %19
  call fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 1) #19
  br label %57

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %25 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !80
  %27 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !126
  %29 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %24, i32 noundef %26, i32 noundef %28) #18
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  %32 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 2, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !127
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %37 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 3
  br label %38

38:                                               ; preds = %35, %52
  %39 = phi i32 [ 0, %35 ], [ %53, %52 ]
  call fastcc void @ui_searchbox_butrect(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %39) #19
  %40 = load i32, ptr %25, align 4, !tbaa !80
  %41 = load i32, ptr %24, align 8, !tbaa !114
  %42 = sub nsw i32 %40, %41
  %43 = load i32, ptr %27, align 8, !tbaa !126
  %44 = load i32, ptr %36, align 8, !tbaa !115
  %45 = sub nsw i32 %43, %44
  %46 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %7, i32 noundef %42, i32 noundef %45) #18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %38
  %49 = load i32, ptr %37, align 8, !tbaa !117
  %50 = icmp eq i32 %49, %39
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 %39, ptr %37, align 8, !tbaa !117
  call fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0) #19
  br label %56

52:                                               ; preds = %38, %48
  %53 = add nuw nsw i32 %39, 1
  %54 = load i32, ptr %32, align 4, !tbaa !127
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %38, label %56, !llvm.loop !128

56:                                               ; preds = %52, %31, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  br label %57

57:                                               ; preds = %23, %56, %19, %22, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare void @ui_pan_to_scroll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !117
  %9 = add nsw i32 %8, %3
  store i32 %9, ptr %7, align 8, !tbaa !117
  %10 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !127
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, ptr %7, align 8, !tbaa !117
  br label %40

14:                                               ; preds = %4
  %15 = icmp slt i32 %9, %11
  br i1 %15, label %27, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !129
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !130
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !130
  %24 = add nsw i32 %11, -1
  store i32 %24, ptr %7, align 8, !tbaa !117
  tail call void @ui_searchbox_update(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext 0) #19
  br label %40

25:                                               ; preds = %16
  %26 = add nsw i32 %11, -1
  store i32 %26, ptr %7, align 8, !tbaa !117
  br label %40

27:                                               ; preds = %14
  %28 = icmp slt i32 %9, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !130
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = add nsw i32 %31, -1
  store i32 %34, ptr %30, align 4, !tbaa !130
  store i32 0, ptr %7, align 8, !tbaa !117
  tail call void @ui_searchbox_update(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext 0) #19
  br label %40

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !45
  %38 = icmp eq i32 %37, 26624
  %39 = sext i1 %38 to i32
  store i32 %39, ptr %7, align 8, !tbaa !117
  br label %40

40:                                               ; preds = %25, %20, %33, %35, %27, %13
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ui_searchbox_butrect(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.uiSearchboxData, ptr %1, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !131
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %1) #19
  %9 = getelementptr inbounds %struct.uiSearchboxData, ptr %1, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !132
  %11 = sdiv i32 %8, %10
  %12 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %1) #19
  %13 = add nsw i32 %12, -16
  %14 = getelementptr inbounds %struct.uiSearchboxData, ptr %1, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !133
  %16 = sdiv i32 %13, %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !92
  %17 = load i32, ptr %9, align 4, !tbaa !132
  %18 = srem i32 %2, %17
  %19 = sdiv i32 %2, %17
  %20 = mul nsw i32 %18, %11
  %21 = load i32, ptr %0, align 4, !tbaa !83
  %22 = add nsw i32 %21, %20
  %23 = add nsw i32 %22, %11
  %24 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !134
  %26 = mul nsw i32 %19, %16
  %27 = sub i32 %25, %26
  %28 = add i32 %27, -8
  %29 = sub nsw i32 %28, %16
  %30 = insertelement <2 x i32> poison, i32 %22, i64 0
  %31 = insertelement <2 x i32> %30, i32 %23, i64 1
  br label %46

32:                                               ; preds = %3
  %33 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %1) #19
  %34 = add nsw i32 %33, -16
  %35 = sdiv i32 %34, 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !92
  %36 = load <2 x i32>, ptr %1, align 8, !tbaa !24
  %37 = sitofp <2 x i32> %36 to <2 x float>
  %38 = fadd <2 x float> %37, <float 3.000000e+00, float -3.000000e+00>
  %39 = fptosi <2 x float> %38 to <2 x i32>
  %40 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !134
  %42 = mul nsw i32 %35, %2
  %43 = sub i32 %41, %42
  %44 = add i32 %43, -8
  %45 = sub nsw i32 %44, %35
  br label %46

46:                                               ; preds = %32, %7
  %47 = phi i32 [ %44, %32 ], [ %28, %7 ]
  %48 = phi i32 [ %45, %32 ], [ %29, %7 ]
  %49 = phi <2 x i32> [ %39, %32 ], [ %31, %7 ]
  store <2 x i32> %49, ptr %0, align 4
  %50 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  store i32 %47, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  store i32 %48, ptr %51, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_searchbox_update(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 1
  store i32 0, ptr %8, align 4, !tbaa !127
  %9 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 5
  store i32 0, ptr %9, align 4, !tbaa !129
  %10 = icmp eq i8 %3, 0
  %11 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 3
  %12 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 4
  br i1 %10, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, ptr %11, align 4, !tbaa !130
  store i32 %14, ptr %12, align 8, !tbaa !135
  br label %50

15:                                               ; preds = %4
  store i32 0, ptr %11, align 4, !tbaa !130
  store i32 0, ptr %12, align 8, !tbaa !135
  %16 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 3
  store i32 -1, ptr %16, align 8, !tbaa !117
  %17 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 35
  %18 = load ptr, ptr %17, align 8, !tbaa !136
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 29
  %22 = load ptr, ptr %21, align 8, !tbaa !116
  %23 = icmp eq ptr %22, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 10
  store ptr %22, ptr %25, align 8, !tbaa !137
  %26 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 36
  %27 = load ptr, ptr %26, align 8, !tbaa !138
  %28 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %29 = load ptr, ptr %28, align 8, !tbaa !121
  tail call void %18(ptr noundef %0, ptr noundef %27, ptr noundef %29, ptr noundef nonnull %7) #18
  store ptr null, ptr %25, align 8, !tbaa !137
  %30 = load i32, ptr %8, align 4, !tbaa !127
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr %12, align 8, !tbaa !135
  br i1 %31, label %48, label %33

33:                                               ; preds = %24
  %34 = load i32, ptr %7, align 8, !tbaa !139
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 %32, ptr %16, align 8, !tbaa !117
  store i32 0, ptr %12, align 8, !tbaa !135
  br label %48

37:                                               ; preds = %33
  %38 = sub nsw i32 %30, %32
  %39 = icmp sgt i32 %38, %34
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = sub i32 %32, %30
  %42 = add nsw i32 %41, %34
  store i32 %42, ptr %16, align 8, !tbaa !117
  %43 = sub nsw i32 %30, %34
  store i32 %43, ptr %12, align 8, !tbaa !135
  br label %48

44:                                               ; preds = %37
  %45 = sdiv i32 %34, -2
  %46 = add i32 %45, %32
  store i32 %46, ptr %12, align 8, !tbaa !135
  %47 = sdiv i32 %34, 2
  store i32 %47, ptr %16, align 8, !tbaa !117
  br label %48

48:                                               ; preds = %36, %44, %40, %24
  %49 = phi i32 [ 0, %36 ], [ %46, %44 ], [ %43, %40 ], [ %32, %24 ]
  store i32 %49, ptr %11, align 4, !tbaa !130
  store i32 0, ptr %8, align 4, !tbaa !127
  br label %50

50:                                               ; preds = %15, %20, %48, %13
  %51 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 35
  %52 = load ptr, ptr %51, align 8, !tbaa !136
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 36
  %56 = load ptr, ptr %55, align 8, !tbaa !138
  %57 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %58 = load ptr, ptr %57, align 8, !tbaa !121
  tail call void %52(ptr noundef %0, ptr noundef %56, ptr noundef %58, ptr noundef nonnull %7) #18
  br label %59

59:                                               ; preds = %54, %50
  br i1 %10, label %112, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !117
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %112

64:                                               ; preds = %60
  %65 = load i32, ptr %8, align 4, !tbaa !127
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !119
  %70 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 6
  %71 = load i8, ptr %70, align 2, !tbaa !120
  %72 = icmp eq i8 %71, 0
  %73 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %74 = getelementptr inbounds %struct.uiSearchboxData, ptr %6, i64 0, i32 2, i32 2
  %75 = zext nneg i32 %65 to i64
  br label %76

76:                                               ; preds = %67, %101
  %77 = phi i64 [ 0, %67 ], [ %102, %101 ]
  %78 = getelementptr inbounds ptr, ptr %69, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !23
  br i1 %72, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr %73, align 8, !tbaa !121
  br label %90

82:                                               ; preds = %76
  %83 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %79, i32 noundef 124) #21
  %84 = load ptr, ptr %73, align 8, !tbaa !121
  %85 = icmp eq ptr %83, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = ptrtoint ptr %83 to i64
  %88 = ptrtoint ptr %79 to i64
  %89 = sub i64 %87, %88
  br label %94

90:                                               ; preds = %80, %82
  %91 = phi ptr [ %81, %80 ], [ %84, %82 ]
  %92 = load i32, ptr %74, align 8, !tbaa !122
  %93 = sext i32 %92 to i64
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi ptr [ %84, %86 ], [ %91, %90 ]
  %96 = phi i64 [ %89, %86 ], [ %93, %90 ]
  %97 = tail call i32 @strncmp(ptr noundef %95, ptr noundef %79, i64 noundef %96) #21
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = trunc i64 %77 to i32
  store i32 %100, ptr %61, align 8, !tbaa !117
  br label %104

101:                                              ; preds = %94
  %102 = add nuw nsw i64 %77, 1
  %103 = icmp eq i64 %102, %75
  br i1 %103, label %104, label %76, !llvm.loop !140

104:                                              ; preds = %101, %99
  %105 = icmp eq i32 %65, 1
  br i1 %105, label %106, label %112

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %108 = load ptr, ptr %107, align 8, !tbaa !121
  %109 = load i8, ptr %108, align 1, !tbaa !27
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  store i32 0, ptr %61, align 8, !tbaa !117
  br label %112

112:                                              ; preds = %64, %104, %106, %111, %60, %59
  tail call fastcc void @ui_searchbox_select(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #19
  tail call void @ED_region_tag_redraw(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ui_searchbox_autocomplete(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i8, ptr %3, align 1, !tbaa !27
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = tail call i32 @ui_get_but_string_max_length(ptr noundef %2) #18
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @autocomplete_begin(ptr noundef nonnull %3, i64 noundef %11) #18
  %13 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 2
  %14 = getelementptr inbounds %struct.uiSearchboxData, ptr %9, i64 0, i32 2, i32 9
  store ptr %12, ptr %14, align 8, !tbaa !141
  %15 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 35
  %16 = load ptr, ptr %15, align 8, !tbaa !136
  %17 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 36
  %18 = load ptr, ptr %17, align 8, !tbaa !138
  %19 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  tail call void %16(ptr noundef %0, ptr noundef %18, ptr noundef %20, ptr noundef nonnull %13) #18
  %21 = load ptr, ptr %14, align 8, !tbaa !141
  %22 = tail call i32 @autocomplete_end(ptr noundef %21, ptr noundef nonnull %3) #18
  store ptr null, ptr %14, align 8, !tbaa !141
  br label %23

23:                                               ; preds = %7, %4
  %24 = phi i32 [ %22, %7 ], [ 0, %4 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @autocomplete_begin(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ui_get_but_string_max_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @autocomplete_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ui_searchbox_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rctf, align 8
  %5 = alloca %struct.rcti, align 4
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %7 = tail call ptr @UI_GetStyle() #18
  %8 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 12
  %11 = load float, ptr %10, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %12 = tail call ptr @CTX_wm_screen(ptr noundef %0) #18
  %13 = tail call fastcc ptr @ui_add_temporary_region(ptr noundef %12) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) @ui_searchbox_create.type, i8 0, i64 184, i1 false)
  store ptr @ui_searchbox_region_draw_cb, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_searchbox_create.type, i64 0, i32 5), align 8, !tbaa !57
  store ptr @ui_searchbox_region_free_cb, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_searchbox_create.type, i64 0, i32 7), align 8, !tbaa !59
  store i32 3, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_searchbox_create.type, i64 0, i32 2), align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 20
  store ptr @ui_searchbox_create.type, ptr %14, align 8, !tbaa !61
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %16 = tail call ptr %15(i64 noundef 128, ptr noundef nonnull @.str.14) #18
  %17 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 1
  %18 = getelementptr inbounds %struct.uiStyle, ptr %7, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false), !tbaa.struct !64
  %19 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 1, i32 9
  store i16 1, ptr %19, align 2, !tbaa !142
  %20 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 1, i32 1
  tail call void @ui_fontscale(ptr noundef nonnull %20, float noundef %11) #18
  tail call void @uiStyleFontSet(ptr noundef nonnull %17) #18
  %21 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 30
  store ptr %16, ptr %21, align 8, !tbaa !72
  %22 = load ptr, ptr %8, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 27
  %24 = load i32, ptr %23, align 8, !tbaa !143
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 4
  store i8 1, ptr %28, align 4, !tbaa !144
  br label %29

29:                                               ; preds = %27, %3
  %30 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 24
  %31 = load float, ptr %30, align 8, !tbaa !145
  %32 = fcmp ogt float %31, 0.000000e+00
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 25
  %35 = load float, ptr %34, align 4, !tbaa !146
  %36 = fcmp ogt float %35, 0.000000e+00
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 5
  store i8 1, ptr %38, align 1, !tbaa !131
  %39 = insertelement <2 x float> poison, float %31, i64 0
  %40 = insertelement <2 x float> %39, float %35, i64 1
  %41 = fptosi <2 x float> %40 to <2 x i32>
  %42 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 7
  store <2 x i32> %41, ptr %42, align 8, !tbaa !24
  br label %43

43:                                               ; preds = %37, %33, %29
  %44 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 6
  store i8 1, ptr %48, align 2, !tbaa !120
  br label %49

49:                                               ; preds = %47, %43
  br i1 %26, label %86, label %50

50:                                               ; preds = %49
  %51 = tail call i32 @UI_ThemeMenuShadowWidth() #18
  %52 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3
  %53 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %53, i64 16, i1 false), !tbaa.struct !92
  store i32 %51, ptr %16, align 8, !tbaa !147
  %54 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %52) #19
  %55 = sub nsw i32 %54, %51
  %56 = getelementptr inbounds %struct.rcti, ptr %16, i64 0, i32 1
  store i32 %55, ptr %56, align 4, !tbaa !148
  %57 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !69
  %58 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !70
  %59 = sitofp i32 %58 to float
  %60 = fmul float %57, %59
  %61 = fdiv float %60, 7.200000e+01
  %62 = fmul float %61, 8.000000e+00
  %63 = fptosi float %62 to i32
  %64 = getelementptr inbounds %struct.rcti, ptr %16, i64 0, i32 2
  store i32 %63, ptr %64, align 8, !tbaa !149
  %65 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %52) #19
  %66 = sitofp i32 %65 to float
  %67 = tail call float @llvm.fmuladd.f32(float %61, float -8.000000e+00, float %66)
  %68 = fptosi float %67 to i32
  %69 = getelementptr inbounds %struct.rcti, ptr %16, i64 0, i32 3
  store i32 %68, ptr %69, align 4, !tbaa !134
  %70 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %71 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 3
  %72 = load float, ptr %71, align 4, !tbaa !150
  %73 = load ptr, ptr %8, align 8, !tbaa !17
  %74 = getelementptr inbounds %struct.uiBlock, ptr %73, i64 0, i32 11
  %75 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %74) #19
  %76 = fcmp olt float %72, %75
  %77 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %70) #19
  br i1 %76, label %78, label %82

78:                                               ; preds = %50
  %79 = sitofp i32 %63 to float
  %80 = fadd float %77, %79
  %81 = fptosi float %80 to i32
  store i32 %81, ptr %64, align 8, !tbaa !149
  br label %191

82:                                               ; preds = %50
  %83 = sitofp i32 %68 to float
  %84 = fsub float %83, %77
  %85 = fptosi float %84 to i32
  store i32 %85, ptr %69, align 4, !tbaa !134
  br label %191

86:                                               ; preds = %49
  %87 = tail call i32 @uiSearchBoxWidth() #19, !range !151
  %88 = tail call i32 @UI_ThemeMenuShadowWidth() #18
  %89 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %90 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %91 = load <2 x float>, ptr %89, align 8, !tbaa !66
  %92 = fadd <2 x float> %91, <float -5.000000e+00, float 5.000000e+00>
  store <2 x float> %92, ptr %4, align 8, !tbaa !66
  %93 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 2
  %94 = load float, ptr %93, align 8, !tbaa !75
  %95 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  store float %94, ptr %95, align 4, !tbaa !77
  %96 = tail call i32 @uiSearchBoxHeight() #19, !range !152
  %97 = sitofp i32 %96 to float
  %98 = fsub float %94, %97
  %99 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  store float %98, ptr %99, align 8, !tbaa !153
  %100 = load ptr, ptr %8, align 8, !tbaa !17
  %101 = getelementptr inbounds %struct.uiBlock, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !154
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %86
  %105 = getelementptr inbounds %struct.Panel, ptr %102, i64 0, i32 7
  %106 = load <2 x i32>, ptr %105, align 8, !tbaa !24
  %107 = sitofp <2 x i32> %106 to <2 x float>
  br label %108

108:                                              ; preds = %86, %104
  %109 = phi <2 x float> [ %107, %104 ], [ zeroinitializer, %86 ]
  %110 = extractelement <2 x float> %109, i64 0
  %111 = extractelement <2 x float> %109, i64 1
  call void @BLI_rctf_translate(ptr noundef nonnull %4, float noundef %110, float noundef %111) #18
  %112 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %4) #19
  %113 = sitofp i32 %87 to float
  %114 = fcmp olt float %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load float, ptr %4, align 8, !tbaa !76
  %117 = fadd float %116, %113
  store float %117, ptr %90, align 4, !tbaa !101
  br label %118

118:                                              ; preds = %115, %108
  call void @BLI_rcti_rctf_copy(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %119 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %120 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %121 = load float, ptr %120, align 8, !tbaa !155
  %122 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %123 = load float, ptr %122, align 4, !tbaa !156
  %124 = fcmp une float %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  call void @UI_view2d_view_to_region_rcti(ptr noundef nonnull %119, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  br label %126

126:                                              ; preds = %125, %118
  %127 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %128 = load i32, ptr %127, align 8, !tbaa !114
  %129 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %130 = load i32, ptr %129, align 8, !tbaa !115
  call void @BLI_rcti_translate(ptr noundef nonnull %5, i32 noundef %128, i32 noundef %130) #18
  %131 = call i32 @WM_window_pixels_x(ptr noundef %6) #18
  %132 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !82
  %134 = icmp sgt i32 %133, %131
  br i1 %134, label %135, label %143

135:                                              ; preds = %126
  %136 = load i32, ptr %5, align 4, !tbaa !83
  %137 = add nsw i32 %136, %131
  %138 = icmp sgt i32 %133, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 %131, ptr %132, align 4, !tbaa !82
  store i32 0, ptr %5, align 4, !tbaa !83
  br label %143

140:                                              ; preds = %135
  %141 = sub i32 %131, %133
  %142 = add i32 %141, %136
  store i32 %142, ptr %5, align 4, !tbaa !83
  store i32 %131, ptr %132, align 4, !tbaa !82
  br label %143

143:                                              ; preds = %139, %140, %126
  %144 = phi i32 [ %131, %139 ], [ %131, %140 ], [ %133, %126 ]
  %145 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !84
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %150 = load i32, ptr %149, align 4, !tbaa !85
  br label %172

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 3
  %153 = load float, ptr %152, align 4, !tbaa !150
  %154 = fadd float %111, %153
  %155 = fptosi float %154 to i32
  %156 = load float, ptr %120, align 8, !tbaa !155
  %157 = load float, ptr %122, align 4, !tbaa !156
  %158 = fcmp une float %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %151
  %160 = sitofp i32 %155 to float
  %161 = call float @UI_view2d_view_to_region_y(ptr noundef nonnull %119, float noundef %160) #18
  %162 = fptosi float %161 to i32
  %163 = load i32, ptr %132, align 4, !tbaa !82
  br label %164

164:                                              ; preds = %159, %151
  %165 = phi i32 [ %163, %159 ], [ %144, %151 ]
  %166 = phi i32 [ %162, %159 ], [ %155, %151 ]
  %167 = load i32, ptr %129, align 8, !tbaa !115
  %168 = add nsw i32 %167, %166
  %169 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #19
  %170 = add nsw i32 %169, %168
  %171 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  store i32 %170, ptr %171, align 4, !tbaa !85
  store i32 %168, ptr %145, align 4, !tbaa !84
  br label %172

172:                                              ; preds = %148, %164
  %173 = phi i32 [ %170, %164 ], [ %150, %148 ]
  %174 = phi i32 [ %168, %164 ], [ %146, %148 ]
  %175 = phi i32 [ %165, %164 ], [ %144, %148 ]
  store i32 %88, ptr %16, align 8, !tbaa !147
  %176 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %5) #19
  %177 = add nsw i32 %176, %88
  %178 = getelementptr inbounds %struct.rcti, ptr %16, i64 0, i32 1
  store i32 %177, ptr %178, align 4, !tbaa !148
  %179 = getelementptr inbounds %struct.rcti, ptr %16, i64 0, i32 2
  store i32 %88, ptr %179, align 8, !tbaa !149
  %180 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #19
  %181 = add nsw i32 %180, %88
  %182 = getelementptr inbounds %struct.rcti, ptr %16, i64 0, i32 3
  store i32 %181, ptr %182, align 4, !tbaa !134
  %183 = load i32, ptr %5, align 4, !tbaa !83
  %184 = sub nsw i32 %183, %88
  %185 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3
  store i32 %184, ptr %185, align 8, !tbaa !114
  %186 = add nsw i32 %175, %88
  %187 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3, i32 1
  store i32 %186, ptr %187, align 4, !tbaa !157
  %188 = sub nsw i32 %174, %88
  %189 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3, i32 2
  store i32 %188, ptr %189, align 8, !tbaa !115
  %190 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3, i32 3
  store i32 %173, ptr %190, align 4, !tbaa !158
  br label %191

191:                                              ; preds = %78, %82, %172
  call void @ED_region_init(ptr noundef %0, ptr noundef nonnull %13) #18
  call void @ED_region_tag_redraw(ptr noundef nonnull %13) #18
  %192 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 5
  %193 = load i8, ptr %192, align 1, !tbaa !131
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 7
  %197 = load i32, ptr %196, align 8, !tbaa !133
  %198 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 8
  %199 = load i32, ptr %198, align 4, !tbaa !132
  %200 = mul nsw i32 %199, %197
  br label %201

201:                                              ; preds = %191, %195
  %202 = phi i32 [ %200, %195 ], [ 10, %191 ]
  %203 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 2
  store i32 %202, ptr %203, align 8
  %204 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 21
  %205 = load float, ptr %204, align 4, !tbaa !159
  %206 = fptosi float %205 to i32
  %207 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 2, i32 2
  store i32 %206, ptr %207, align 8, !tbaa !122
  %208 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 2, i32 1
  store i32 0, ptr %208, align 4, !tbaa !127
  %209 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %210 = sext i32 %202 to i64
  %211 = shl nsw i64 %210, 3
  %212 = call ptr %209(i64 noundef %211, ptr noundef nonnull @.str.15) #18
  %213 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 2, i32 6
  store ptr %212, ptr %213, align 8, !tbaa !119
  %214 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %215 = load i32, ptr %203, align 8, !tbaa !139
  %216 = sext i32 %215 to i64
  %217 = shl nsw i64 %216, 3
  %218 = call ptr %214(i64 noundef %217, ptr noundef nonnull @.str.16) #18
  %219 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 2, i32 7
  store ptr %218, ptr %219, align 8, !tbaa !123
  %220 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %221 = load i32, ptr %203, align 8, !tbaa !139
  %222 = sext i32 %221 to i64
  %223 = shl nsw i64 %222, 2
  %224 = call ptr %220(i64 noundef %223, ptr noundef nonnull @.str.17) #18
  %225 = getelementptr inbounds %struct.uiSearchboxData, ptr %16, i64 0, i32 2, i32 8
  store ptr %224, ptr %225, align 8, !tbaa !160
  %226 = load i32, ptr %203, align 8, !tbaa !139
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %201, %228
  %229 = phi i64 [ %237, %228 ], [ 0, %201 ]
  %230 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %231 = load float, ptr %204, align 4, !tbaa !159
  %232 = fadd float %231, 1.000000e+00
  %233 = fptoui float %232 to i64
  %234 = call ptr %230(i64 noundef %233, ptr noundef nonnull @.str.16) #18
  %235 = load ptr, ptr %213, align 8, !tbaa !119
  %236 = getelementptr inbounds ptr, ptr %235, i64 %229
  store ptr %234, ptr %236, align 8, !tbaa !23
  %237 = add nuw nsw i64 %229, 1
  %238 = load i32, ptr %203, align 8, !tbaa !139
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %237, %239
  br i1 %240, label %228, label %241, !llvm.loop !161

241:                                              ; preds = %228, %201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_searchbox_region_draw_cb(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  tail call void @wmOrtho2_region_ui(ptr noundef %1) #18
  %6 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 4
  %7 = load i8, ptr %6, align 4, !tbaa !144
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @ui_draw_search_back(ptr noundef null, ptr noundef null, ptr noundef nonnull %5) #18
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2
  %12 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !127
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %126, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %16 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 5
  %17 = load i8, ptr %16, align 1, !tbaa !131
  %18 = icmp eq i8 %17, 0
  %19 = icmp sgt i32 %13, 0
  br i1 %18, label %27, label %20

20:                                               ; preds = %15
  br i1 %19, label %21, label %57

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 1
  %23 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 6
  %24 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 8
  %25 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 3
  %26 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 6
  br label %34

27:                                               ; preds = %15
  br i1 %19, label %28, label %96

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 1
  %30 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 6
  %31 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 8
  %32 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 3
  %33 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 6
  br label %78

34:                                               ; preds = %21, %52
  %35 = phi i64 [ 0, %21 ], [ %53, %52 ]
  %36 = trunc i64 %35 to i32
  call fastcc void @ui_searchbox_butrect(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %36) #19
  %37 = load i8, ptr %16, align 1, !tbaa !131
  %38 = icmp eq i8 %37, 0
  %39 = load ptr, ptr %23, align 8, !tbaa !119
  %40 = getelementptr inbounds ptr, ptr %39, i64 %35
  %41 = load ptr, ptr %40, align 8, !tbaa !23
  %42 = load ptr, ptr %24, align 8, !tbaa !160
  %43 = getelementptr inbounds i32, ptr %42, i64 %35
  %44 = load i32, ptr %43, align 4, !tbaa !24
  %45 = load i32, ptr %25, align 8, !tbaa !117
  %46 = zext i32 %45 to i64
  %47 = icmp eq i64 %35, %46
  %48 = select i1 %47, i32 4, i32 0
  br i1 %38, label %50, label %49

49:                                               ; preds = %34
  call void @ui_draw_preview_item(ptr noundef nonnull %22, ptr noundef nonnull %3, ptr noundef %41, i32 noundef %44, i32 noundef %48) #18
  br label %52

50:                                               ; preds = %34
  %51 = load i8, ptr %26, align 2, !tbaa !120
  call void @ui_draw_menu_item(ptr noundef nonnull %22, ptr noundef nonnull %3, ptr noundef %41, i32 noundef %44, i32 noundef %48, i8 noundef zeroext %51) #18
  br label %52

52:                                               ; preds = %49, %50
  %53 = add nuw nsw i64 %35, 1
  %54 = load i32, ptr %12, align 4, !tbaa !127
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %34, label %57, !llvm.loop !162

57:                                               ; preds = %52, %20
  %58 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 5
  %59 = load i32, ptr %58, align 4, !tbaa !129
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %11, align 8, !tbaa !139
  %63 = add nsw i32 %62, -1
  call fastcc void @ui_searchbox_butrect(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %63) #19
  call void @glEnable(i32 noundef 3042) #18
  %64 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !82
  %66 = add nsw i32 %65, -18
  %67 = sitofp i32 %66 to float
  %68 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !84
  %70 = add nsw i32 %69, -7
  %71 = sitofp i32 %70 to float
  call void @UI_icon_draw(float noundef %67, float noundef %71, i32 noundef 5) #18
  call void @glDisable(i32 noundef 3042) #18
  br label %72

72:                                               ; preds = %61, %57
  %73 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !130
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %125, label %76

76:                                               ; preds = %72
  call fastcc void @ui_searchbox_butrect(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 0) #19
  call void @glEnable(i32 noundef 3042) #18
  %77 = load i32, ptr %3, align 4, !tbaa !83
  br label %117

78:                                               ; preds = %28, %78
  %79 = phi i64 [ 0, %28 ], [ %92, %78 ]
  %80 = trunc i64 %79 to i32
  call fastcc void @ui_searchbox_butrect(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %80) #19
  %81 = load ptr, ptr %30, align 8, !tbaa !119
  %82 = getelementptr inbounds ptr, ptr %81, i64 %79
  %83 = load ptr, ptr %82, align 8, !tbaa !23
  %84 = load ptr, ptr %31, align 8, !tbaa !160
  %85 = getelementptr inbounds i32, ptr %84, i64 %79
  %86 = load i32, ptr %85, align 4, !tbaa !24
  %87 = load i32, ptr %32, align 8, !tbaa !117
  %88 = zext i32 %87 to i64
  %89 = icmp eq i64 %79, %88
  %90 = select i1 %89, i32 4, i32 0
  %91 = load i8, ptr %33, align 2, !tbaa !120
  call void @ui_draw_menu_item(ptr noundef nonnull %29, ptr noundef nonnull %3, ptr noundef %83, i32 noundef %86, i32 noundef %90, i8 noundef zeroext %91) #18
  %92 = add nuw nsw i64 %79, 1
  %93 = load i32, ptr %12, align 4, !tbaa !127
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %78, label %96, !llvm.loop !163

96:                                               ; preds = %78, %27
  %97 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 5
  %98 = load i32, ptr %97, align 4, !tbaa !129
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %11, align 8, !tbaa !139
  %102 = add nsw i32 %101, -1
  call fastcc void @ui_searchbox_butrect(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %102) #19
  call void @glEnable(i32 noundef 3042) #18
  %103 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %3) #19
  %104 = sdiv i32 %103, 2
  %105 = sitofp i32 %104 to float
  %106 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !84
  %108 = add nsw i32 %107, -9
  %109 = sitofp i32 %108 to float
  call void @UI_icon_draw(float noundef %105, float noundef %109, i32 noundef 5) #18
  call void @glDisable(i32 noundef 3042) #18
  br label %110

110:                                              ; preds = %100, %96
  %111 = getelementptr inbounds %struct.uiSearchboxData, ptr %5, i64 0, i32 2, i32 3
  %112 = load i32, ptr %111, align 4, !tbaa !130
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %110
  call fastcc void @ui_searchbox_butrect(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 0) #19
  call void @glEnable(i32 noundef 3042) #18
  %115 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %3) #19
  %116 = sdiv i32 %115, 2
  br label %117

117:                                              ; preds = %76, %114
  %118 = phi i32 [ %116, %114 ], [ %77, %76 ]
  %119 = phi i32 [ -7, %114 ], [ -9, %76 ]
  %120 = sitofp i32 %118 to float
  %121 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %122 = load i32, ptr %121, align 4, !tbaa !85
  %123 = add nsw i32 %122, %119
  %124 = sitofp i32 %123 to float
  call void @UI_icon_draw(float noundef %120, float noundef %124, i32 noundef 7) #18
  call void @glDisable(i32 noundef 3042) #18
  br label %125

125:                                              ; preds = %117, %110, %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  br label %126

126:                                              ; preds = %125, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_searchbox_region_free_cb(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.uiSearchboxData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !139
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uiSearchboxData, ptr %3, i64 0, i32 2, i32 6
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %15, %9 ]
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  %12 = load ptr, ptr %8, align 8, !tbaa !119
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  tail call void %11(ptr noundef %14) #18
  %15 = add nuw nsw i64 %10, 1
  %16 = load i32, ptr %4, align 8, !tbaa !139
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %9, label %19, !llvm.loop !164

19:                                               ; preds = %9, %1
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  %21 = getelementptr inbounds %struct.uiSearchboxData, ptr %3, i64 0, i32 2, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !119
  tail call void %20(ptr noundef %22) #18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  %24 = getelementptr inbounds %struct.uiSearchboxData, ptr %3, i64 0, i32 2, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !123
  tail call void %23(ptr noundef %25) #18
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  %27 = getelementptr inbounds %struct.uiSearchboxData, ptr %3, i64 0, i32 2, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !160
  tail call void %26(ptr noundef %28) #18
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %29(ptr noundef nonnull %3) #18
  store ptr null, ptr %2, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !153
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !77
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !77
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !153
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !101
  %4 = load float, ptr %0, align 4, !tbaa !76
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: optsize
declare void @UI_view2d_view_to_region_rcti(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @UI_view2d_view_to_region_y(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_searchbox_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #18
  tail call fastcc void @ui_remove_temporary_region(ptr noundef %0, ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_but_search_test(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @RNA_property_type(ptr noundef nonnull %3) #18
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %70

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %10 = tail call ptr %9(i64 noundef 64, ptr noundef nonnull @.str.18) #18
  store i32 10, ptr %10, align 8, !tbaa !107
  %11 = getelementptr inbounds %struct.uiSearchItems, ptr %10, i64 0, i32 2
  store i32 256, ptr %11, align 8, !tbaa !110
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %13 = tail call ptr %12(i64 noundef 80, ptr noundef nonnull @.str.15) #18
  %14 = getelementptr inbounds %struct.uiSearchItems, ptr %10, i64 0, i32 6
  store ptr %13, ptr %14, align 8, !tbaa !109
  %15 = load i32, ptr %10, align 8, !tbaa !107
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 21
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %28, %19 ]
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %22 = load float, ptr %18, align 4, !tbaa !159
  %23 = fadd float %22, 1.000000e+00
  %24 = fptoui float %23 to i64
  %25 = tail call ptr %21(i64 noundef %24, ptr noundef nonnull @.str.15) #18
  %26 = load ptr, ptr %14, align 8, !tbaa !109
  %27 = getelementptr inbounds ptr, ptr %26, i64 %20
  store ptr %25, ptr %27, align 8, !tbaa !23
  %28 = add nuw nsw i64 %20, 1
  %29 = load i32, ptr %10, align 8, !tbaa !107
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %19, label %32, !llvm.loop !165

32:                                               ; preds = %19, %8
  %33 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 35
  %34 = load ptr, ptr %33, align 8, !tbaa !136
  %35 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %36 = load ptr, ptr %35, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct.uiBlock, ptr %36, i64 0, i32 48
  %38 = load ptr, ptr %37, align 8, !tbaa !18
  %39 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 36
  %40 = load ptr, ptr %39, align 8, !tbaa !138
  %41 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  tail call void %34(ptr noundef %38, ptr noundef %40, ptr noundef nonnull %41, ptr noundef nonnull %10) #18
  %42 = getelementptr inbounds %struct.uiSearchItems, ptr %10, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !105
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.uiSearchItems, ptr %10, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !108
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = tail call i32 @uiSearchItemFindIndex(ptr noundef nonnull %10, ptr noundef nonnull %41) #19
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %32
  tail call void @uiButSetFlag(ptr noundef nonnull %0, i32 noundef 65536) #18
  br label %53

53:                                               ; preds = %52, %45, %49
  %54 = load i32, ptr %10, align 8, !tbaa !107
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53, %56
  %57 = phi i64 [ %62, %56 ], [ 0, %53 ]
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  %59 = load ptr, ptr %14, align 8, !tbaa !109
  %60 = getelementptr inbounds ptr, ptr %59, i64 %57
  %61 = load ptr, ptr %60, align 8, !tbaa !23
  tail call void %58(ptr noundef %61) #18
  %62 = add nuw nsw i64 %57, 1
  %63 = load i32, ptr %10, align 8, !tbaa !107
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %56, label %66, !llvm.loop !166

66:                                               ; preds = %56, %53
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  %68 = load ptr, ptr %14, align 8, !tbaa !109
  tail call void %67(ptr noundef %68) #18
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %69(ptr noundef nonnull %10) #18
  br label %70

70:                                               ; preds = %5, %66
  ret void
}

; Function Attrs: optsize
declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_popup_block_scrolltest(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !143
  %4 = and i32 %3, -97
  store i32 %4, ptr %2, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.uiBut, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = and i32 %11, -3
  store i32 %12, ptr %10, align 8, !tbaa !48
  %13 = load ptr, ptr %9, align 8, !tbaa !23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !167

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %6, %17
  br i1 %18, label %91, label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !168
  %22 = icmp eq ptr %6, %21
  br i1 %22, label %91, label %29

23:                                               ; preds = %15
  br i1 %7, label %29, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  %26 = load float, ptr %25, align 8, !tbaa !169
  %27 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !170
  br label %40

29:                                               ; preds = %61, %19, %23
  %30 = phi i32 [ %4, %23 ], [ %4, %19 ], [ %62, %61 ]
  %31 = load ptr, ptr %5, align 8, !tbaa !23
  %32 = icmp eq ptr %31, null
  br i1 %32, label %91, label %33

33:                                               ; preds = %29
  %34 = and i32 %30, 32
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  %37 = and i32 %30, 64
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 3
  br label %65

40:                                               ; preds = %24, %61
  %41 = phi i32 [ %4, %24 ], [ %62, %61 ]
  %42 = phi ptr [ %6, %24 ], [ %63, %61 ]
  %43 = getelementptr inbounds %struct.uiBut, ptr %42, i64 0, i32 18, i32 2
  %44 = load float, ptr %43, align 8, !tbaa !75
  %45 = fcmp olt float %44, %26
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.uiBut, ptr %42, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !48
  %49 = or i32 %48, 2
  store i32 %49, ptr %47, align 8, !tbaa !48
  %50 = or i32 %41, 32
  store i32 %50, ptr %2, align 8, !tbaa !143
  br label %51

51:                                               ; preds = %46, %40
  %52 = phi i32 [ %50, %46 ], [ %41, %40 ]
  %53 = getelementptr inbounds %struct.uiBut, ptr %42, i64 0, i32 18, i32 3
  %54 = load float, ptr %53, align 4, !tbaa !150
  %55 = fcmp ogt float %54, %28
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.uiBut, ptr %42, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !48
  %59 = or i32 %58, 2
  store i32 %59, ptr %57, align 8, !tbaa !48
  %60 = or i32 %52, 64
  store i32 %60, ptr %2, align 8, !tbaa !143
  br label %61

61:                                               ; preds = %51, %56
  %62 = phi i32 [ %52, %51 ], [ %60, %56 ]
  %63 = load ptr, ptr %42, align 8, !tbaa !171
  %64 = icmp eq ptr %63, null
  br i1 %64, label %29, label %40, !llvm.loop !172

65:                                               ; preds = %33, %88
  %66 = phi ptr [ %31, %33 ], [ %89, %88 ]
  br i1 %35, label %77, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.uiBut, ptr %66, i64 0, i32 18, i32 2
  %69 = load float, ptr %68, align 8, !tbaa !75
  %70 = load float, ptr %36, align 8, !tbaa !169
  %71 = fadd float %70, 1.200000e+01
  %72 = fcmp olt float %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.uiBut, ptr %66, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !48
  %76 = or i32 %75, 2
  store i32 %76, ptr %74, align 8, !tbaa !48
  br label %77

77:                                               ; preds = %67, %73, %65
  br i1 %38, label %88, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.uiBut, ptr %66, i64 0, i32 18, i32 3
  %80 = load float, ptr %79, align 4, !tbaa !150
  %81 = load float, ptr %39, align 4, !tbaa !170
  %82 = fadd float %81, -1.200000e+01
  %83 = fcmp ogt float %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.uiBut, ptr %66, i64 0, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !48
  %87 = or i32 %86, 2
  store i32 %87, ptr %85, align 8, !tbaa !48
  br label %88

88:                                               ; preds = %77, %84, %78
  %89 = load ptr, ptr %66, align 8, !tbaa !23
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %65, !llvm.loop !173

91:                                               ; preds = %88, %19, %29, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ui_popup_block_refresh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @UI_ThemeMenuShadowWidth() #18
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %7 = load ptr, ptr %1, align 8, !tbaa !174
  %8 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !178
  %10 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 8, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !179
  %12 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !180
  %14 = icmp eq ptr %9, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = tail call ptr %9(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %11) #18
  br label %21

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 8, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !181
  %20 = tail call ptr %19(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %11) #18
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi ptr [ %16, %15 ], [ %20, %17 ]
  %23 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 46
  %24 = load ptr, ptr %23, align 8, !tbaa !182
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %24, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 192, i1 false)
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %27(ptr noundef nonnull %1) #18
  %28 = load ptr, ptr %23, align 8, !tbaa !182
  br label %30

29:                                               ; preds = %21
  store ptr %1, ptr %23, align 8, !tbaa !182
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi ptr [ %28, %26 ], [ %1, %29 ]
  %32 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  store ptr %31, ptr %32, align 8, !tbaa !72
  %33 = icmp eq ptr %3, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !45
  %37 = icmp eq i32 %36, 13824
  %38 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 27
  %39 = load i32, ptr %38, align 8, !tbaa !143
  %40 = or i32 %39, 8
  %41 = select i1 %37, i32 %40, i32 %39
  br label %46

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 27
  %44 = load i32, ptr %43, align 8, !tbaa !143
  %45 = or i32 %44, 520
  br label %46

46:                                               ; preds = %34, %42
  %47 = phi i32 [ %45, %42 ], [ %41, %34 ]
  %48 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 27
  %49 = or i32 %47, 1
  store i32 %49, ptr %48, align 8, !tbaa !143
  %50 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 4
  store ptr null, ptr %50, align 8, !tbaa !183
  %51 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 38
  %52 = load i8, ptr %51, align 1, !tbaa !184
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %31, i64 0, i32 8, i32 3
  tail call void @uiEndBlock_ex(ptr noundef %0, ptr noundef nonnull %22, ptr noundef nonnull %55) #18
  br label %56

56:                                               ; preds = %54, %46
  br i1 %33, label %67, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 74
  %59 = load ptr, ptr %58, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.uiBlock, ptr %59, i64 0, i32 12
  %61 = load float, ptr %60, align 8, !tbaa !35
  %62 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 12
  store float %61, ptr %62, align 8, !tbaa !35
  tail call fastcc void @ui_block_position(ptr noundef %6, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %22) #19
  %63 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 29
  %64 = load i8, ptr %63, align 2, !tbaa !185
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %31, i64 0, i32 19
  store i32 %65, ptr %66, align 8, !tbaa !186
  br label %73

67:                                               ; preds = %56
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %69 = tail call ptr %68(i64 noundef 48, ptr noundef nonnull @.str.19) #18
  %70 = getelementptr inbounds %struct.uiSafetyRct, ptr %69, i64 0, i32 3
  %71 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %70, ptr noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false), !tbaa.struct !187
  %72 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 45
  tail call void @BLI_addhead(ptr noundef nonnull %72, ptr noundef %69) #18
  br label %73

73:                                               ; preds = %67, %57
  %74 = load i32, ptr %48, align 8, !tbaa !143
  %75 = and i32 %74, 1048576
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %169, label %77

77:                                               ; preds = %73
  %78 = tail call i32 @WM_window_pixels_x(ptr noundef %6) #18
  %79 = tail call i32 @WM_window_pixels_y(ptr noundef %6) #18
  %80 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 53, i32 1
  %81 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 53, i32 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %80, ptr noundef nonnull %81) #19
  %82 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 11
  %83 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %82) #19
  %84 = sitofp i32 %78 to float
  %85 = fadd float %84, -2.000000e+01
  %86 = fcmp olt float %83, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %77
  %88 = load float, ptr %82, align 8, !tbaa !188
  %89 = fcmp olt float %88, 1.000000e+01
  %90 = fsub float 1.000000e+01, %88
  %91 = fptosi float %90 to i32
  %92 = select i1 %89, i32 %91, i32 0
  %93 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 11, i32 1
  %94 = load float, ptr %93, align 4, !tbaa !189
  %95 = add nsw i32 %78, -10
  %96 = sitofp i32 %95 to float
  %97 = fcmp ogt float %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = fsub float %96, %94
  %100 = sitofp i32 %92 to float
  %101 = fadd float %99, %100
  %102 = fptosi float %101 to i32
  br label %103

103:                                              ; preds = %87, %98, %77
  %104 = phi i32 [ %102, %98 ], [ %92, %87 ], [ 0, %77 ]
  %105 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %82) #19
  %106 = sitofp i32 %79 to float
  %107 = fadd float %106, -2.000000e+01
  %108 = fcmp olt float %105, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 11, i32 2
  %111 = load float, ptr %110, align 8, !tbaa !169
  %112 = fcmp olt float %111, 1.000000e+01
  %113 = fsub float 1.000000e+01, %111
  %114 = fptosi float %113 to i32
  %115 = select i1 %112, i32 %114, i32 0
  %116 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 11, i32 3
  %117 = load float, ptr %116, align 4, !tbaa !170
  %118 = add nsw i32 %79, -10
  %119 = sitofp i32 %118 to float
  %120 = fcmp ogt float %117, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %109
  %122 = fsub float %119, %117
  %123 = sitofp i32 %115 to float
  %124 = fadd float %122, %123
  %125 = fptosi float %124 to i32
  br label %126

126:                                              ; preds = %109, %121, %103
  %127 = phi i32 [ %125, %121 ], [ %115, %109 ], [ 0, %103 ]
  %128 = icmp ne i32 %104, 0
  %129 = icmp ne i32 %127, 0
  %130 = select i1 %128, i1 true, i1 %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = insertelement <2 x i32> poison, i32 %104, i64 0
  %133 = insertelement <2 x i32> %132, i32 %127, i64 1
  %134 = sitofp <2 x i32> %133 to <2 x float>
  %135 = load <2 x float>, ptr %81, align 8, !tbaa !66
  %136 = fadd <2 x float> %135, %134
  store <2 x float> %136, ptr %81, align 8, !tbaa !66
  tail call void @ui_block_translate(ptr noundef nonnull %22, i32 noundef %104, i32 noundef %127) #18
  %137 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 109), align 2, !tbaa !190
  %138 = icmp sgt i16 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 53, i32 5
  %141 = load i32, ptr %140, align 8, !tbaa !191
  %142 = or i32 %141, 2
  store i32 %142, ptr %140, align 8, !tbaa !191
  br label %143

143:                                              ; preds = %131, %139, %126
  %144 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3
  store i32 0, ptr %144, align 8, !tbaa !114
  %145 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 1
  store i32 %78, ptr %145, align 4, !tbaa !157
  %146 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 2
  store i32 0, ptr %146, align 8, !tbaa !115
  %147 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 3
  store i32 %79, ptr %147, align 4, !tbaa !158
  %148 = tail call float @ui_block_calculate_pie_segment(ptr noundef nonnull %22, ptr noundef nonnull %80) #18
  %149 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 110), align 8, !tbaa !192
  %150 = icmp sgt i16 %149, 0
  br i1 %150, label %151, label %184

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !23
  %154 = icmp eq ptr %153, null
  br i1 %154, label %184, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 53, i32 2, i64 1
  br label %157

157:                                              ; preds = %155, %166
  %158 = phi ptr [ %153, %155 ], [ %167, %166 ]
  %159 = getelementptr inbounds %struct.uiBut, ptr %158, i64 0, i32 47
  %160 = load i8, ptr %159, align 2, !tbaa !193
  %161 = icmp eq i8 %160, -1
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.uiBut, ptr %158, i64 0, i32 18
  %164 = load float, ptr %81, align 8, !tbaa !66
  %165 = load float, ptr %156, align 4, !tbaa !66
  tail call void @BLI_rctf_recenter(ptr noundef nonnull %163, float noundef %164, float noundef %165) #18
  br label %166

166:                                              ; preds = %157, %162
  %167 = load ptr, ptr %158, align 8, !tbaa !23
  %168 = icmp eq ptr %167, null
  br i1 %168, label %184, label %157, !llvm.loop !194

169:                                              ; preds = %73
  tail call fastcc void @ui_popup_block_clip(ptr noundef %6, ptr noundef nonnull %22) #19
  %170 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 11
  %171 = sitofp i32 %5 to float
  %172 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3
  %173 = load <4 x float>, ptr %170, align 8, !tbaa !66
  %174 = insertelement <4 x float> <float poison, float 8.000000e+00, float poison, float poison>, float %171, i64 0
  %175 = shufflevector <4 x float> %174, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %176 = fsub <4 x float> %173, %175
  %177 = fadd <4 x float> %173, %175
  %178 = shufflevector <4 x float> %176, <4 x float> %177, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %179 = fptosi <4 x float> %178 to <4 x i32>
  store <4 x i32> %179, ptr %172, align 8, !tbaa !24
  %180 = extractelement <4 x i32> %179, i64 0
  %181 = sub nsw i32 0, %180
  %182 = extractelement <4 x i32> %179, i64 2
  %183 = sub nsw i32 0, %182
  tail call void @ui_block_translate(ptr noundef nonnull %22, i32 noundef %181, i32 noundef %183) #18
  br label %184

184:                                              ; preds = %166, %151, %143, %169
  %185 = icmp eq ptr %13, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %184
  store ptr %13, ptr %50, align 8, !tbaa !183
  tail call void @uiBlockUpdateFromOld(ptr noundef %0, ptr noundef %22) #18
  tail call void @uiFreeInactiveBlocks(ptr noundef %0, ptr noundef nonnull %12) #18
  br label %187

187:                                              ; preds = %186, %184
  tail call void @ui_popup_block_scrolltest(ptr noundef %22) #19
  tail call void @ED_region_init(ptr noundef %0, ptr noundef %7) #18
  %188 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 7
  %189 = load i16, ptr %188, align 4, !tbaa !195
  %190 = sext i16 %189 to i32
  tail call void @wmSubWindowSet(ptr noundef %6, i32 noundef %190) #18
  %191 = load i16, ptr %188, align 4, !tbaa !195
  %192 = sext i16 %191 to i32
  %193 = getelementptr inbounds %struct.uiBlock, ptr %22, i64 0, i32 10
  tail call void @wm_subwindow_matrix_get(ptr noundef %6, i32 noundef %192, ptr noundef nonnull %193) #18
  tail call void @ED_region_tag_redraw(ptr noundef %7) #18
  tail call void @ED_region_update_rect(ptr noundef %0, ptr noundef %7) #18
  ret ptr %22
}

; Function Attrs: optsize
declare void @uiEndBlock_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_block_position(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  call void @ui_block_to_window_rctf(ptr noundef %1, ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !45
  %11 = icmp eq i32 %10, 13824
  br i1 %11, label %29, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !36
  %15 = and i32 %14, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !69
  %19 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !77
  %21 = fadd float %18, %20
  store float %21, ptr %19, align 4, !tbaa !77
  br label %22

22:                                               ; preds = %17, %12
  %23 = and i32 %14, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !69
  %27 = load float, ptr %5, align 4, !tbaa !76
  %28 = fsub float %27, %26
  store float %28, ptr %5, align 4, !tbaa !76
  br label %29

29:                                               ; preds = %22, %25, %4
  %30 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 11
  %31 = load float, ptr %30, align 8, !tbaa !188
  %32 = fcmp oeq float %31, 0.000000e+00
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 11, i32 1
  %35 = load float, ptr %34, align 4, !tbaa !189
  %36 = fcmp oeq float %35, 0.000000e+00
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !196
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  call void @BLI_rctf_init_minmax(ptr noundef nonnull %30) #18
  %42 = load ptr, ptr %38, align 8, !tbaa !23
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %47, %44 ], [ %42, %41 ]
  %46 = getelementptr inbounds %struct.uiBut, ptr %45, i64 0, i32 18
  call void @BLI_rctf_union(ptr noundef nonnull %30, ptr noundef nonnull %46) #18
  %47 = load ptr, ptr %45, align 8, !tbaa !23
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %44, !llvm.loop !197

49:                                               ; preds = %37
  store <4 x float> <float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01>, ptr %30, align 8, !tbaa !66
  br label %50

50:                                               ; preds = %44, %41, %49, %33, %29
  %51 = load ptr, ptr %6, align 8, !tbaa !17
  call void @ui_block_to_window_rctf(ptr noundef %1, ptr noundef %51, ptr noundef nonnull %30, ptr noundef nonnull %30) #18
  %52 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %30) #19
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %54 = sitofp i16 %53 to float
  %55 = call float @llvm.fmuladd.f32(float %54, float 0x3FC99999A0000000, float %52)
  %56 = fptosi float %55 to i32
  %57 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %30) #19
  %58 = call float @llvm.fmuladd.f32(float %54, float 0x3FC99999A0000000, float %57)
  %59 = fptosi float %58 to i32
  %60 = call i32 @WM_window_pixels_x(ptr noundef %0) #18
  %61 = call i32 @WM_window_pixels_y(ptr noundef %0) #18
  %62 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 29
  %63 = load i8, ptr %62, align 2, !tbaa !185
  %64 = and i8 %63, 16
  %65 = icmp eq i8 %64, 0
  %66 = sdiv i32 %59, 2
  %67 = sitofp i32 %66 to float
  %68 = load float, ptr %5, align 4, !tbaa !76
  %69 = sitofp i32 %56 to float
  %70 = fsub float %68, %69
  %71 = fcmp ogt float %70, 0.000000e+00
  %72 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %73 = load float, ptr %72, align 4, !tbaa !101
  %74 = fadd float %73, %69
  %75 = sitofp i32 %60 to float
  %76 = fcmp olt float %74, %75
  %77 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %78 = load float, ptr %77, align 4, !tbaa !153
  %79 = sitofp i32 %59 to float
  %80 = fsub float %78, %79
  %81 = select i1 %65, float 0.000000e+00, float %67
  %82 = fadd float %81, %80
  %83 = fcmp ule float %82, 0.000000e+00
  %84 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %85 = load float, ptr %84, align 4, !tbaa !77
  %86 = fadd float %85, %79
  %87 = fsub float %86, %81
  %88 = sitofp i32 %61 to float
  %89 = fcmp uge float %87, %88
  %90 = xor i1 %89, true
  %91 = and i1 %83, %89
  br i1 %91, label %92, label %96

92:                                               ; preds = %50
  %93 = fsub float %88, %85
  %94 = fsub float %93, %79
  %95 = fcmp olt float %80, %94
  br label %96

96:                                               ; preds = %92, %50
  %97 = phi i1 [ %90, %50 ], [ %95, %92 ]
  %98 = phi i1 [ %83, %50 ], [ %95, %92 ]
  %99 = and i8 %63, 15
  %100 = zext nneg i8 %99 to i16
  %101 = zext nneg i8 %99 to i32
  %102 = and i32 %101, 3
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %96
  %105 = and i32 %101, 4
  %106 = icmp eq i32 %105, 0
  %107 = trunc i32 %102 to i16
  br i1 %106, label %108, label %113

108:                                              ; preds = %104
  %109 = icmp ult i8 %99, 8
  br i1 %109, label %110, label %113

110:                                              ; preds = %96, %108
  %111 = phi i16 [ %107, %108 ], [ %100, %96 ]
  switch i16 %111, label %113 [
    i16 8, label %112
    i16 4, label %112
  ]

112:                                              ; preds = %110, %110
  br label %113

113:                                              ; preds = %104, %110, %112, %108
  %114 = phi i16 [ %111, %112 ], [ %111, %110 ], [ %107, %108 ], [ %107, %104 ]
  %115 = phi i1 [ false, %112 ], [ true, %110 ], [ false, %108 ], [ false, %104 ]
  %116 = phi i16 [ 2, %112 ], [ 0, %110 ], [ 8, %108 ], [ 4, %104 ]
  %117 = add nsw i16 %114, -1
  %118 = icmp ult i16 %117, 2
  %119 = select i1 %115, i1 %118, i1 false
  %120 = select i1 %119, i16 4, i16 %116
  %121 = or i1 %71, %76
  br i1 %121, label %122, label %135

122:                                              ; preds = %113
  %123 = icmp ne i16 %114, 4
  %124 = or i1 %71, %123
  %125 = select i1 %124, i16 %114, i16 8
  %126 = icmp ne i16 %125, 8
  %127 = or i1 %76, %126
  %128 = select i1 %127, i16 %125, i16 4
  %129 = icmp ne i16 %120, 4
  %130 = or i1 %76, %129
  %131 = select i1 %130, i16 %120, i16 8
  %132 = icmp ne i16 %131, 8
  %133 = or i1 %71, %132
  %134 = select i1 %133, i16 %131, i16 4
  br label %135

135:                                              ; preds = %122, %113
  %136 = phi i16 [ %128, %122 ], [ %114, %113 ]
  %137 = phi i16 [ %134, %122 ], [ %120, %113 ]
  %138 = xor i1 %97, true
  %139 = and i1 %98, %138
  br i1 %139, label %149, label %140

140:                                              ; preds = %135
  %141 = icmp ne i16 %136, 1
  %142 = or i1 %97, %141
  %143 = select i1 %142, i16 %136, i16 2
  %144 = icmp eq i16 %143, 2
  %145 = and i1 %98, %144
  %146 = icmp eq i16 %137, 2
  %147 = and i1 %98, %146
  %148 = select i1 %147, i16 1, i16 %137
  br i1 %145, label %201, label %149

149:                                              ; preds = %140, %135
  %150 = phi i16 [ %143, %140 ], [ %136, %135 ]
  %151 = phi i16 [ %148, %140 ], [ %137, %135 ]
  switch i16 %150, label %252 [
    i16 4, label %152
    i16 8, label %177
    i16 1, label %201
    i16 2, label %221
  ]

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 11, i32 1
  %154 = load float, ptr %153, align 4, !tbaa !189
  %155 = fsub float %68, %154
  %156 = fptosi float %155 to i32
  %157 = icmp eq i16 %151, 1
  %158 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %159 = sitofp i16 %158 to float
  %160 = fmul float %159, 0x3FC99999A0000000
  %161 = fptosi float %160 to i32
  %162 = sitofp i32 %161 to float
  br i1 %157, label %163, label %170

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 11, i32 2
  %165 = load float, ptr %164, align 8, !tbaa !169
  %166 = fsub float %78, %165
  %167 = fsub float %166, %81
  %168 = fsub float %167, %162
  %169 = fptosi float %168 to i32
  br label %264

170:                                              ; preds = %152
  %171 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 11, i32 3
  %172 = load float, ptr %171, align 4, !tbaa !170
  %173 = fsub float %85, %172
  %174 = fadd float %81, %173
  %175 = fadd float %174, %162
  %176 = fptosi float %175 to i32
  br label %264

177:                                              ; preds = %149
  %178 = load float, ptr %30, align 8, !tbaa !188
  %179 = fsub float %73, %178
  %180 = fptosi float %179 to i32
  %181 = icmp eq i16 %151, 1
  %182 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %183 = sitofp i16 %182 to float
  %184 = fmul float %183, 0x3FC99999A0000000
  %185 = fptosi float %184 to i32
  %186 = sitofp i32 %185 to float
  br i1 %181, label %187, label %194

187:                                              ; preds = %177
  %188 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 11, i32 2
  %189 = load float, ptr %188, align 8, !tbaa !169
  %190 = fsub float %78, %189
  %191 = fsub float %190, %81
  %192 = fsub float %191, %186
  %193 = fptosi float %192 to i32
  br label %264

194:                                              ; preds = %177
  %195 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 11, i32 3
  %196 = load float, ptr %195, align 4, !tbaa !170
  %197 = fsub float %85, %196
  %198 = fadd float %81, %197
  %199 = fadd float %198, %186
  %200 = fptosi float %199 to i32
  br label %264

201:                                              ; preds = %140, %149
  %202 = phi i16 [ %151, %149 ], [ %148, %140 ]
  %203 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 11, i32 2
  %204 = load float, ptr %203, align 8, !tbaa !169
  %205 = fsub float %85, %204
  %206 = fptosi float %205 to i32
  %207 = icmp eq i16 %202, 8
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 11, i32 1
  %210 = load float, ptr %209, align 4, !tbaa !189
  %211 = fsub float %73, %210
  br label %215

212:                                              ; preds = %201
  %213 = load float, ptr %30, align 8, !tbaa !188
  %214 = fsub float %68, %213
  br label %215

215:                                              ; preds = %212, %208
  %216 = phi float [ %211, %208 ], [ %214, %212 ]
  %217 = fptosi float %216 to i32
  %218 = zext i8 %63 to i32
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %240, label %252

221:                                              ; preds = %149
  %222 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 11, i32 3
  %223 = load float, ptr %222, align 4, !tbaa !170
  %224 = fsub float %78, %223
  %225 = fptosi float %224 to i32
  %226 = icmp eq i16 %151, 8
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 11, i32 1
  %229 = load float, ptr %228, align 4, !tbaa !189
  %230 = fsub float %73, %229
  br label %234

231:                                              ; preds = %221
  %232 = load float, ptr %30, align 8, !tbaa !188
  %233 = fsub float %68, %232
  br label %234

234:                                              ; preds = %231, %227
  %235 = phi float [ %230, %227 ], [ %233, %231 ]
  %236 = fptosi float %235 to i32
  %237 = zext i8 %63 to i32
  %238 = and i32 %237, 2
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %234, %215
  %241 = phi i32 [ %218, %215 ], [ %237, %234 ]
  %242 = phi i16 [ %202, %215 ], [ %151, %234 ]
  %243 = phi i32 [ %217, %215 ], [ %236, %234 ]
  %244 = phi i16 [ 1, %215 ], [ 2, %234 ]
  %245 = phi i32 [ %206, %215 ], [ %225, %234 ]
  %246 = and i32 %241, 32
  %247 = icmp eq i32 %246, 0
  %248 = icmp eq i16 %242, 4
  %249 = select i1 %248, i32 25, i32 -25
  %250 = select i1 %247, i32 0, i32 %249
  %251 = add nsw i32 %250, %243
  call void @uiBlockFlipOrder(ptr noundef nonnull %3) #18
  br label %252

252:                                              ; preds = %240, %149, %234, %215
  %253 = phi i16 [ %202, %215 ], [ %151, %234 ], [ %151, %149 ], [ %242, %240 ]
  %254 = phi i16 [ 1, %215 ], [ 2, %234 ], [ %150, %149 ], [ %244, %240 ]
  %255 = phi i32 [ %206, %215 ], [ %225, %234 ], [ 0, %149 ], [ %245, %240 ]
  %256 = phi i32 [ %217, %215 ], [ %236, %234 ], [ 0, %149 ], [ %251, %240 ]
  %257 = add nsw i16 %254, -3
  %258 = icmp ult i16 %257, -2
  %259 = or i1 %121, %258
  br i1 %259, label %264, label %260

260:                                              ; preds = %252
  %261 = load float, ptr %30, align 8, !tbaa !188
  %262 = fsub float 5.000000e+00, %261
  %263 = fptosi float %262 to i32
  br label %264

264:                                              ; preds = %194, %187, %170, %163, %260, %252
  %265 = phi i32 [ %255, %260 ], [ %255, %252 ], [ %200, %194 ], [ %193, %187 ], [ %176, %170 ], [ %169, %163 ]
  %266 = phi i16 [ %254, %260 ], [ %254, %252 ], [ 8, %194 ], [ 8, %187 ], [ 4, %170 ], [ 4, %163 ]
  %267 = phi i16 [ %253, %260 ], [ %253, %252 ], [ %151, %194 ], [ 1, %187 ], [ %151, %170 ], [ 1, %163 ]
  %268 = phi i32 [ %263, %260 ], [ %256, %252 ], [ %180, %194 ], [ %180, %187 ], [ %156, %170 ], [ %156, %163 ]
  %269 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !23
  %271 = icmp eq ptr %270, null
  %272 = sitofp i32 %268 to float
  %273 = sitofp i32 %265 to float
  br i1 %271, label %280, label %274

274:                                              ; preds = %264, %274
  %275 = phi ptr [ %278, %274 ], [ %270, %264 ]
  %276 = load ptr, ptr %6, align 8, !tbaa !17
  %277 = getelementptr inbounds %struct.uiBut, ptr %275, i64 0, i32 18
  call void @ui_block_to_window_rctf(ptr noundef %1, ptr noundef %276, ptr noundef nonnull %277, ptr noundef nonnull %277) #18
  call void @BLI_rctf_translate(ptr noundef nonnull %277, float noundef %272, float noundef %273) #18
  call void @ui_check_but(ptr noundef nonnull %275) #18
  %278 = load ptr, ptr %275, align 8, !tbaa !23
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %274, !llvm.loop !198

280:                                              ; preds = %274, %264
  call void @BLI_rctf_translate(ptr noundef nonnull %30, float noundef %272, float noundef %273) #18
  %281 = call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %5) #19
  %282 = call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %5) #19
  %283 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 44
  %284 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 44, i32 1
  %285 = load <4 x float>, ptr %30, align 8, !tbaa !66
  %286 = insertelement <4 x float> poison, float %281, i64 0
  %287 = insertelement <4 x float> %286, float %282, i64 1
  %288 = shufflevector <4 x float> %287, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %289 = fcmp olt <4 x float> %288, %285
  %290 = fcmp ogt <4 x float> %288, %285
  %291 = shufflevector <4 x i1> %289, <4 x i1> %290, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %292 = select <4 x i1> %291, <4 x float> <float -3.000000e+00, float 3.000000e+00, float -3.000000e+00, float 3.000000e+00>, <4 x float> <float -4.000000e+01, float 4.000000e+01, float -4.000000e+01, float 4.000000e+01>
  %293 = fadd <4 x float> %285, %292
  store <4 x float> %293, ptr %283, align 8
  %294 = icmp eq i16 %266, 0
  br i1 %294, label %307, label %295

295:                                              ; preds = %280
  %296 = load i8, ptr %62, align 2, !tbaa !185
  %297 = zext i8 %296 to i16
  %298 = and i16 %266, %297
  %299 = icmp eq i16 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %295
  switch i16 %267, label %307 [
    i16 8, label %301
    i16 4, label %304
  ]

301:                                              ; preds = %300
  %302 = extractelement <4 x float> %285, i64 1
  %303 = fadd float %302, 3.000000e+00
  store float %303, ptr %284, align 4, !tbaa !199
  br label %307

304:                                              ; preds = %300
  %305 = extractelement <4 x float> %285, i64 0
  %306 = fadd float %305, -3.000000e+00
  store float %306, ptr %283, align 8, !tbaa !200
  br label %307

307:                                              ; preds = %301, %300, %304, %295, %280
  %308 = trunc i16 %266 to i8
  store i8 %308, ptr %62, align 2, !tbaa !185
  %309 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %310 = call ptr %309(i64 noundef 48, ptr noundef nonnull @.str.19) #18
  %311 = getelementptr inbounds %struct.uiSafetyRct, ptr %310, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %311, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !187
  %312 = getelementptr inbounds %struct.uiSafetyRct, ptr %310, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %312, ptr noundef nonnull align 8 dereferenceable(16) %283, i64 16, i1 false), !tbaa.struct !187
  %313 = getelementptr inbounds %struct.uiBlock, ptr %3, i64 0, i32 45
  call void @BLI_freelistN(ptr noundef nonnull %313) #18
  %314 = load ptr, ptr %6, align 8, !tbaa !17
  %315 = getelementptr inbounds %struct.uiBlock, ptr %314, i64 0, i32 45
  call void @BLI_duplicatelist(ptr noundef nonnull %313, ptr noundef nonnull %315) #18
  call void @BLI_addhead(ptr noundef nonnull %313, ptr noundef %310) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = load float, ptr %1, align 4, !tbaa !66
  store float %3, ptr %0, align 4, !tbaa !66
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !66
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare void @ui_block_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @ui_block_calculate_pie_segment(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rctf_recenter(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_popup_block_clip(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %4 = load i32, ptr %3, align 8, !tbaa !143
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %61

7:                                                ; preds = %2
  %8 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #18
  %9 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #18
  %10 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11
  %11 = load float, ptr %10, align 8, !tbaa !188
  %12 = fcmp olt float %11, 1.000000e+01
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %15 = load float, ptr %14, align 4, !tbaa !189
  br label %22

16:                                               ; preds = %7
  %17 = fsub float 1.000000e+01, %11
  %18 = fadd float %11, %17
  store float %18, ptr %10, align 8, !tbaa !188
  %19 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !189
  %21 = fadd float %17, %20
  store float %21, ptr %19, align 4, !tbaa !189
  br label %22

22:                                               ; preds = %13, %16
  %23 = phi float [ %18, %16 ], [ %11, %13 ]
  %24 = phi float [ %21, %16 ], [ %15, %13 ]
  %25 = phi float [ %17, %16 ], [ 0.000000e+00, %13 ]
  %26 = add nsw i32 %8, -10
  %27 = sitofp i32 %26 to float
  %28 = fcmp ogt float %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 1
  %31 = fsub float %27, %24
  %32 = fadd float %31, %23
  store float %32, ptr %10, align 8, !tbaa !188
  %33 = fadd float %24, %31
  store float %33, ptr %30, align 4, !tbaa !189
  br label %34

34:                                               ; preds = %29, %22
  %35 = phi float [ %31, %29 ], [ %25, %22 ]
  %36 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 2
  %37 = load float, ptr %36, align 8, !tbaa !169
  %38 = fcmp olt float %37, 1.000000e+01
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store float 1.000000e+01, ptr %36, align 8, !tbaa !169
  br label %40

40:                                               ; preds = %39, %34
  %41 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 3
  %42 = load float, ptr %41, align 4, !tbaa !170
  %43 = add nsw i32 %9, -8
  %44 = sitofp i32 %43 to float
  %45 = fcmp ogt float %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store float %44, ptr %41, align 4, !tbaa !170
  br label %47

47:                                               ; preds = %46, %40
  %48 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !23
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = insertelement <2 x float> poison, float %35, i64 0
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> zeroinitializer
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %59, %54 ], [ %49, %51 ]
  %56 = getelementptr inbounds %struct.uiBut, ptr %55, i64 0, i32 18
  %57 = load <2 x float>, ptr %56, align 8, !tbaa !66
  %58 = fadd <2 x float> %53, %57
  store <2 x float> %58, ptr %56, align 8, !tbaa !66
  %59 = load ptr, ptr %55, align 8, !tbaa !23
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %54, !llvm.loop !201

61:                                               ; preds = %54, %47, %2
  ret void
}

; Function Attrs: optsize
declare void @uiBlockUpdateFromOld(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiFreeInactiveBlocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_subwindow_matrix_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_update_rect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ui_popup_block_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %9 = tail call ptr %8(i64 noundef 192, ptr noundef nonnull @.str.20) #18
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %11 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 12
  store ptr %10, ptr %11, align 8, !tbaa !202
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  %13 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !203
  %14 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 8
  store ptr %3, ptr %14, align 8, !tbaa !178
  %15 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 8, i32 1
  store ptr %4, ptr %15, align 8, !tbaa !181
  %16 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 8, i32 2
  store ptr %5, ptr %16, align 8, !tbaa !179
  %17 = icmp eq ptr %2, null
  %18 = select i1 %17, ptr null, ptr %1
  %19 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 8, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !204
  %20 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 8, i32 3
  %21 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 21
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = getelementptr inbounds %struct.wmEvent, ptr %22, i64 0, i32 4
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %20, ptr noundef nonnull %23) #19
  %24 = tail call ptr @CTX_wm_screen(ptr noundef %0) #18
  %25 = tail call fastcc ptr @ui_add_temporary_region(ptr noundef %24) #19
  store ptr %25, ptr %9, align 8, !tbaa !174
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) @ui_popup_block_create.type, i8 0, i64 184, i1 false)
  store ptr @ui_block_region_draw, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_popup_block_create.type, i64 0, i32 5), align 8, !tbaa !57
  store i32 3, ptr getelementptr inbounds (%struct.ARegionType, ptr @ui_popup_block_create.type, i64 0, i32 2), align 8, !tbaa !60
  %26 = getelementptr inbounds %struct.ARegion, ptr %25, i64 0, i32 20
  store ptr @ui_popup_block_create.type, ptr %26, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.ARegion, ptr %25, i64 0, i32 26
  tail call void @UI_add_region_handlers(ptr noundef nonnull %27) #18
  %28 = tail call ptr @ui_popup_block_refresh(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2) #19
  %29 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 46
  %30 = load ptr, ptr %29, align 8, !tbaa !182
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = load i32, ptr %1, align 4, !tbaa !24
  store i32 %3, ptr %0, align 4, !tbaa !24
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !24
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_block_region_draw(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 14
  %4 = load i16, ptr %3, align 4, !tbaa !205
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = and i16 %4, -9
  store i16 %8, ptr %3, align 4, !tbaa !205
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !180
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %7 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !206
  %15 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 46
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = tail call ptr @ui_popup_block_refresh(ptr noundef %0, ptr noundef %16, ptr noundef null, ptr noundef null) #19
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %12, !llvm.loop !207

19:                                               ; preds = %12, %7, %2
  %20 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %21 = load ptr, ptr %20, align 8, !tbaa !23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %25, %23 ], [ %21, %19 ]
  tail call void @uiDrawBlock(ptr noundef %0, ptr noundef nonnull %24) #18
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %23, !llvm.loop !208

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: optsize
declare void @UI_add_region_handlers(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_popup_block_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @ui_popup_block_remove(ptr noundef %0, ptr noundef %1) #19
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %3(ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_popup_block_remove(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #18
  %4 = load ptr, ptr %1, align 8, !tbaa !174
  tail call fastcc void @ui_remove_temporary_region(ptr noundef %0, ptr noundef %3, ptr noundef %4) #19
  %5 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %10 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %11 = load ptr, ptr %5, align 8, !tbaa !209
  tail call void @WM_event_remove_timer(ptr noundef %9, ptr noundef %10, ptr noundef %11) #18
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_set_but_hsv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #20
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = tail call ptr @ui_block_hsv_get(ptr noundef %4) #19
  call void @ui_color_picker_to_rgb_v(ptr noundef nonnull %5, ptr noundef nonnull %2) #19
  call void @ui_set_but_vectorf(ptr noundef %0, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @ui_block_hsv_get(ptr noundef readnone %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 50
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_color_picker_to_rgb_v(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !210
  %4 = icmp eq i16 %3, 4
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @hsl_to_rgb_v(ptr noundef %0, ptr noundef %1) #18
  br label %7

6:                                                ; preds = %2
  tail call void @hsv_to_rgb_v(ptr noundef %0, ptr noundef %1) #18
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: optsize
declare void @ui_set_but_vectorf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ui_block_func_COLOR(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !174
  %5 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %4, ptr noundef nonnull @__func__.ui_block_func_COLOR, i16 noundef signext 0) #18
  %6 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = tail call i32 @RNA_property_subtype(ptr noundef %7) #18
  %9 = icmp eq i32 %8, 30
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 51
  store i8 0, ptr %11, align 4, !tbaa !211
  br label %12

12:                                               ; preds = %10, %3
  %13 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uiBlock, ptr %14, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !143
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i8 [ %21, %16 ], [ 1, %12 ]
  %24 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 18
  %25 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 71
  %26 = load ptr, ptr %25, align 8, !tbaa !212
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef %26) #19
  %27 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %28 = load ptr, ptr %6, align 8, !tbaa !5
  tail call fastcc void @uiBlockPicker(ptr noundef %5, ptr noundef nonnull %24, ptr noundef nonnull %27, ptr noundef %28, i8 noundef zeroext %23) #19
  %29 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 27
  store i32 1411, ptr %29, align 8, !tbaa !143
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %31 = sitofp i16 %30 to double
  %32 = fmul double %31, 5.000000e-01
  %33 = fptosi double %32 to i32
  tail call void @uiBoundsBlock(ptr noundef %5, i32 noundef %33) #18
  %34 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 23
  store ptr @ui_picker_small_wheel_cb, ptr %34, align 8, !tbaa !213
  %35 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 29
  store i8 1, ptr %35, align 2, !tbaa !185
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = load float, ptr %1, align 4, !tbaa !66
  store float %3, ptr %0, align 4, !tbaa !66
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !66
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !66
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !66
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uiBlockPicker(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #20
  %14 = tail call ptr @ui_block_hsv_get(ptr noundef %0) #19
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %16 = sitofp i16 %15 to float
  %17 = fmul float %16, 0x3FD3333340000000
  %18 = tail call float @llvm.fmuladd.f32(float %16, float 7.500000e+00, float %17)
  %19 = tail call float @llvm.fmuladd.f32(float %16, float 0x3FE6666660000000, float %18)
  %20 = fptosi float %19 to i32
  %21 = sitofp i32 %20 to float
  %22 = tail call float @llvm.fmuladd.f32(float %16, float -1.500000e+00, float %21)
  %23 = fptosi float %22 to i32
  %24 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 51
  %25 = load i8, ptr %24, align 4, !tbaa !211
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull @uiBlockPicker.tip, ptr noundef nonnull @.str.31, i64 noundef 50) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #19
  br label %31

29:                                               ; preds = %5
  %30 = tail call ptr @BLI_strncpy(ptr noundef nonnull @uiBlockPicker.tip, ptr noundef nonnull @.str.32, i64 noundef 50) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #19
  call void @ui_block_to_display_space_v3(ptr noundef nonnull %0, ptr noundef nonnull %6) #18
  br label %31

31:                                               ; preds = %29, %27
  %32 = getelementptr inbounds float, ptr %1, i64 3
  store float 0x47EFFFFFE0000000, ptr %32, align 4, !tbaa !66
  call void @RNA_property_float_ui_range(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %13) #18
  call void @RNA_property_float_range(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  call void @RNA_property_float_get_array(ptr noundef %2, ptr noundef %3, ptr noundef %1) #18
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !210
  switch i16 %33, label %37 [
    i16 1, label %34
    i16 2, label %35
    i16 3, label %36
  ]

34:                                               ; preds = %31
  call fastcc void @square_picker(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef 0) #19
  br label %38

35:                                               ; preds = %31
  call fastcc void @square_picker(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef 2) #19
  br label %38

36:                                               ; preds = %31
  call fastcc void @square_picker(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef 1) #19
  br label %38

37:                                               ; preds = %31
  call fastcc void @circle_picker(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3) #19
  br label %38

38:                                               ; preds = %37, %36, %35, %34
  %39 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %40 = sitofp i16 %39 to float
  %41 = fmul float %40, -1.500000e+00
  %42 = fptosi float %41 to i32
  call void @uiBlockBeginAlign(ptr noundef nonnull %0) #18
  %43 = sdiv i32 %20, 3
  %44 = trunc i32 %43 to i16
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %46 = call ptr @uiDefButS(ptr noundef nonnull %0, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %42, i16 noundef signext %44, i16 noundef signext %45, ptr noundef nonnull @uiBlockPicker.colormode, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #18
  call void @uiButSetFunc(ptr noundef %46, ptr noundef nonnull @do_picker_new_mode_cb, ptr noundef %46, ptr noundef null) #18
  %47 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !210
  %48 = icmp eq i16 %47, 4
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %50 = select i1 %48, ptr @.str.34, ptr @.str.35
  %51 = call ptr @uiDefButS(ptr noundef nonnull %0, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull %50, i32 noundef %43, i32 noundef %42, i16 noundef signext %44, i16 noundef signext %49, ptr noundef nonnull @uiBlockPicker.colormode, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #18
  call void @uiButSetFunc(ptr noundef %51, ptr noundef nonnull @do_picker_new_mode_cb, ptr noundef %51, ptr noundef null) #18
  %52 = shl nsw i32 %20, 1
  %53 = sdiv i32 %52, 3
  %54 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %55 = call ptr @uiDefButS(ptr noundef nonnull %0, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %53, i32 noundef %42, i16 noundef signext %44, i16 noundef signext %54, ptr noundef nonnull @uiBlockPicker.colormode, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #18
  call void @uiButSetFunc(ptr noundef %55, ptr noundef nonnull @do_picker_new_mode_cb, ptr noundef %55, ptr noundef null) #18
  call void @uiBlockEndAlign(ptr noundef nonnull %0) #18
  %56 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %57 = sext i16 %56 to i32
  %58 = mul nsw i32 %57, -3
  %59 = icmp eq i8 %4, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %38
  %61 = add nsw i32 %23, 10
  %62 = call ptr @uiDefIconButO(ptr noundef nonnull %0, i32 noundef 512, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef 35, i32 noundef %61, i32 noundef %58, i16 noundef signext %56, i16 noundef signext %56, ptr noundef null) #18
  call void @uiButSetFunc(ptr noundef %62, ptr noundef nonnull @close_popup_cb, ptr noundef %62, ptr noundef null) #18
  br label %63

63:                                               ; preds = %60, %38
  call void @uiBlockBeginAlign(ptr noundef nonnull %0) #18
  %64 = trunc i32 %23 to i16
  %65 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %66 = call ptr @uiDefButR_prop(ptr noundef nonnull %0, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef %58, i16 noundef signext %64, i16 noundef signext %65, ptr noundef %2, ptr noundef %3, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.39) #18
  call void @uiButSetFunc(ptr noundef %66, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %66, ptr noundef null) #18
  %67 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %68 = sext i16 %67 to i32
  %69 = sub nsw i32 %58, %68
  %70 = call ptr @uiDefButR_prop(ptr noundef nonnull %0, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef %69, i16 noundef signext %64, i16 noundef signext %67, ptr noundef %2, ptr noundef %3, i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.41) #18
  call void @uiButSetFunc(ptr noundef %70, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %70, ptr noundef null) #18
  %71 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %72 = sext i16 %71 to i32
  %73 = sub nsw i32 %69, %72
  %74 = call ptr @uiDefButR_prop(ptr noundef nonnull %0, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef %73, i16 noundef signext %64, i16 noundef signext %71, ptr noundef %2, ptr noundef %3, i32 noundef 2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.43) #18
  call void @uiButSetFunc(ptr noundef %74, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %74, ptr noundef null) #18
  %75 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %76 = sext i16 %75 to i32
  %77 = mul nsw i32 %76, -3
  call void @uiBlockBeginAlign(ptr noundef nonnull %0) #18
  %78 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %79 = call ptr @uiDefButF(ptr noundef nonnull %0, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %77, i16 noundef signext %64, i16 noundef signext %78, ptr noundef nonnull %14, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.45) #18
  call void @uiButSetFunc(ptr noundef %79, ptr noundef nonnull @do_color_wheel_rna_cb, ptr noundef %79, ptr noundef nonnull %14) #18
  %80 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %81 = sext i16 %80 to i32
  %82 = sub nsw i32 %77, %81
  %83 = getelementptr inbounds float, ptr %14, i64 1
  %84 = call ptr @uiDefButF(ptr noundef nonnull %0, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef %82, i16 noundef signext %64, i16 noundef signext %80, ptr noundef nonnull %83, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.47) #18
  call void @uiButSetFunc(ptr noundef %84, ptr noundef nonnull @do_color_wheel_rna_cb, ptr noundef %84, ptr noundef nonnull %14) #18
  %85 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !210
  %86 = icmp eq i16 %85, 4
  %87 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %88 = sext i16 %87 to i32
  %89 = sub nsw i32 %82, %88
  %90 = getelementptr inbounds float, ptr %14, i64 2
  br i1 %86, label %91, label %93

91:                                               ; preds = %63
  %92 = call ptr @uiDefButF(ptr noundef nonnull %0, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef %89, i16 noundef signext %64, i16 noundef signext %87, ptr noundef nonnull %90, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.49) #18
  br label %96

93:                                               ; preds = %63
  %94 = load float, ptr %9, align 4, !tbaa !66
  %95 = call ptr @uiDefButF(ptr noundef nonnull %0, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef %89, i16 noundef signext %64, i16 noundef signext %87, ptr noundef nonnull %90, float noundef 0.000000e+00, float noundef %94, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.51) #18
  br label %96

96:                                               ; preds = %93, %91
  %97 = phi ptr [ %92, %91 ], [ %95, %93 ]
  %98 = load float, ptr %11, align 4, !tbaa !66
  %99 = getelementptr inbounds %struct.uiBut, ptr %97, i64 0, i32 21
  store float %98, ptr %99, align 4, !tbaa !159
  call void @uiButSetFunc(ptr noundef %97, ptr noundef nonnull @do_color_wheel_rna_cb, ptr noundef %97, ptr noundef nonnull %14) #18
  call void @uiBlockEndAlign(ptr noundef nonnull %0) #18
  %100 = load float, ptr %32, align 4, !tbaa !66
  %101 = fcmp une float %100, 0x47EFFFFFE0000000
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %104 = sext i16 %103 to i32
  %105 = sub nsw i32 %89, %104
  %106 = call ptr @uiDefButR_prop(ptr noundef nonnull %0, i32 noundef 7168, i32 noundef 0, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef %105, i16 noundef signext %64, i16 noundef signext %103, ptr noundef %2, ptr noundef %3, i32 noundef 3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.53) #18
  call void @uiButSetFunc(ptr noundef %106, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %106, ptr noundef null) #18
  br label %108

107:                                              ; preds = %96
  store float 1.000000e+00, ptr %32, align 4, !tbaa !66
  br label %108

108:                                              ; preds = %107, %102
  call void @rgb_float_to_uchar(ptr noundef nonnull %7, ptr noundef nonnull %6) #18
  %109 = load i8, ptr %7, align 1, !tbaa !27
  %110 = zext i8 %109 to i32
  %111 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !27
  %113 = zext i8 %112 to i32
  %114 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 2
  %115 = load i8, ptr %114, align 1, !tbaa !27
  %116 = zext i8 %115 to i32
  %117 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull @uiBlockPicker.hexcol, i64 noundef 128, ptr noundef nonnull @.str.54, i32 noundef %110, i32 noundef %113, i32 noundef %116) #18
  %118 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %119 = sext i16 %118 to i32
  %120 = mul nsw i32 %119, -3
  %121 = call ptr @uiDefBut(ptr noundef nonnull %0, i32 noundef 3072, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef %120, i16 noundef signext %64, i16 noundef signext %118, ptr noundef nonnull @uiBlockPicker.hexcol, float noundef 0.000000e+00, float noundef 8.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.56) #18
  call void @uiButSetFunc(ptr noundef %121, ptr noundef nonnull @do_hex_rna_cb, ptr noundef %121, ptr noundef nonnull @uiBlockPicker.hexcol) #18
  %122 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %123 = sext i16 %122 to i32
  %124 = sub nsw i32 %120, %123
  %125 = call ptr @uiDefBut(ptr noundef nonnull %0, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef %124, i16 noundef signext %64, i16 noundef signext %122, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #18
  call void @ui_rgb_to_color_picker_v(ptr noundef nonnull %6, ptr noundef nonnull %14) #19
  %126 = load i16, ptr @uiBlockPicker.colormode, align 2, !tbaa !65
  call fastcc void @picker_new_hide_reveal(ptr noundef nonnull %0, i16 noundef signext %126) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  ret void
}

; Function Attrs: optsize
declare void @uiBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ui_picker_small_wheel_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !124
  %7 = icmp eq i16 %6, 11
  %8 = select i1 %7, float 0xBFA99999A0000000, float 0.000000e+00
  %9 = icmp eq i16 %6, 10
  %10 = select i1 %9, float 0x3FA99999A0000000, float %8
  %11 = fcmp une float %10, 0.000000e+00
  br i1 %11, label %12, label %52

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %12, %49
  %17 = phi ptr [ %50, %49 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !45
  %20 = icmp eq i32 %19, 13312
  br i1 %20, label %21, label %49

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 67
  %23 = load ptr, ptr %22, align 8, !tbaa !214
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 46
  %27 = load ptr, ptr %26, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %28 = tail call ptr @ui_block_hsv_get(ptr noundef %1) #19
  %29 = tail call zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef nonnull %17) #18
  call void @ui_get_but_vectorf(ptr noundef nonnull %17, ptr noundef nonnull %4) #18
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  call void @ui_block_to_display_space_v3(ptr noundef nonnull %1, ptr noundef nonnull %4) #18
  br label %32

32:                                               ; preds = %31, %25
  call void @ui_rgb_to_color_picker_compat_v(ptr noundef nonnull %4, ptr noundef nonnull %28) #19
  %33 = getelementptr inbounds float, ptr %28, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !66
  %35 = fadd float %10, %34
  %36 = fcmp olt float %35, 0.000000e+00
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = fcmp ogt float %35, 1.000000e+00
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %37, %32
  %41 = phi float [ 0.000000e+00, %32 ], [ %35, %39 ], [ 1.000000e+00, %37 ]
  store float %41, ptr %33, align 4, !tbaa !66
  call void @ui_color_picker_to_rgb_v(ptr noundef nonnull %28, ptr noundef nonnull %4) #19
  br i1 %30, label %43, label %42

42:                                               ; preds = %40
  call void @ui_block_to_scene_linear_v3(ptr noundef nonnull %1, ptr noundef nonnull %4) #18
  br label %43

43:                                               ; preds = %42, %40
  call void @ui_set_but_vectorf(ptr noundef nonnull %17, ptr noundef nonnull %4) #18
  %44 = zext i1 %30 to i8
  call fastcc void @ui_update_block_buts_rgb(ptr noundef nonnull %1, ptr noundef nonnull %4, i8 noundef zeroext %44) #19
  %45 = icmp eq ptr %27, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %27, i64 0, i32 16
  store i32 16, ptr %47, align 8, !tbaa !215
  br label %48

48:                                               ; preds = %46, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %52

49:                                               ; preds = %16, %21
  %50 = load ptr, ptr %17, align 8, !tbaa !23
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %16, !llvm.loop !216

52:                                               ; preds = %49, %12, %3, %48
  %53 = phi i32 [ 1, %48 ], [ 0, %3 ], [ 0, %12 ], [ 0, %49 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ui_popup_menu_memory_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @ui_popup_menu_memory__internal(ptr noundef %0, ptr noundef null) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_popup_menu_memory__internal(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 4, !tbaa !217
  %5 = and i32 %4, 255
  %6 = load i1, ptr @ui_popup_menu_memory__internal.first, align 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @ui_popup_menu_memory__internal.mem, i8 -1, i64 1024, i1 false)
  store i1 true, ptr @ui_popup_menu_memory__internal.first, align 1
  br label %8

8:                                                ; preds = %7, %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = tail call fastcc i32 @ui_popup_string_hash(ptr noundef %12) #19
  %14 = zext nneg i32 %5 to i64
  %15 = getelementptr inbounds [256 x i32], ptr @ui_popup_menu_memory__internal.mem, i64 0, i64 %14
  store i32 %13, ptr %15, align 4, !tbaa !24
  br label %30

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %18 = zext nneg i32 %5 to i64
  %19 = getelementptr inbounds [256 x i32], ptr @ui_popup_menu_memory__internal.mem, i64 0, i64 %18
  br label %20

20:                                               ; preds = %24, %16
  %21 = phi ptr [ %17, %16 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uiBut, ptr %22, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = tail call fastcc i32 @ui_popup_string_hash(ptr noundef %26) #19
  %28 = load i32, ptr %19, align 4, !tbaa !24
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %20, !llvm.loop !218

30:                                               ; preds = %20, %24, %10
  %31 = phi ptr [ null, %10 ], [ null, %20 ], [ %22, %24 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_popup_menu_memory_set(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @ui_popup_menu_memory__internal(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_popup_translate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %2, align 4, !tbaa !24
  %6 = getelementptr inbounds i32, ptr %2, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !24
  tail call void @BLI_rcti_translate(ptr noundef nonnull %4, i32 noundef %5, i32 noundef %7) #18
  tail call void @ED_region_update_rect(ptr noundef %0, ptr noundef %1) #18
  tail call void @ED_region_tag_redraw(ptr noundef %1) #18
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %14

11:                                               ; preds = %19, %14
  %12 = load ptr, ptr %15, align 8, !tbaa !23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14, !llvm.loop !219

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %12, %11 ], [ %9, %3 ]
  %16 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 45
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %11, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %31, %19 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.uiSafetyRct, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %2, align 4, !tbaa !24
  %23 = sitofp i32 %22 to float
  %24 = load i32, ptr %6, align 4, !tbaa !24
  %25 = sitofp i32 %24 to float
  tail call void @BLI_rctf_translate(ptr noundef nonnull %21, float noundef %23, float noundef %25) #18
  %26 = getelementptr inbounds %struct.uiSafetyRct, ptr %20, i64 0, i32 3
  %27 = load i32, ptr %2, align 4, !tbaa !24
  %28 = sitofp i32 %27 to float
  %29 = load i32, ptr %6, align 4, !tbaa !24
  %30 = sitofp i32 %29 to float
  tail call void @BLI_rctf_translate(ptr noundef nonnull %26, float noundef %28, float noundef %30) #18
  %31 = load ptr, ptr %20, align 8, !tbaa !23
  %32 = icmp eq ptr %31, null
  br i1 %32, label %11, label %19, !llvm.loop !220

33:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ui_popup_menu_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %7 = tail call ptr @UI_GetStyleDraw() #18
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %9 = tail call ptr %8(i64 noundef 56, ptr noundef nonnull @__func__.ui_popup_menu_create) #18
  %10 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef null, ptr noundef nonnull @__func__.ui_popup_menu_create, i16 noundef signext 2) #18
  store ptr %10, ptr %9, align 8, !tbaa !221
  %11 = getelementptr inbounds %struct.uiBlock, ptr %10, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !143
  %13 = or i32 %12, 8
  store i32 %13, ptr %11, align 8, !tbaa !143
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %15 = sitofp i16 %14 to float
  %16 = fmul float %15, 0x3FC99999A0000000
  %17 = fptosi float %16 to i32
  %18 = tail call ptr @uiBlockLayout(ptr noundef %10, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 200, i32 noundef 0, i32 noundef %17, ptr noundef %7) #18
  %19 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !223
  %20 = icmp eq ptr %2, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = tail call zeroext i8 @ui_block_is_menu(ptr noundef %23) #18
  %25 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 6
  store i8 %24, ptr %25, align 1, !tbaa !224
  %26 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 2
  store ptr %2, ptr %26, align 8, !tbaa !225
  %27 = load ptr, ptr %19, align 8, !tbaa !223
  tail call void @uiLayoutSetOperatorContext(ptr noundef %27, i32 noundef 1) #18
  %28 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 32
  %29 = load ptr, ptr %28, align 8, !tbaa !226
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = load ptr, ptr %19, align 8, !tbaa !223
  tail call void @uiLayoutContextCopy(ptr noundef %32, ptr noundef nonnull %29) #18
  br label %33

33:                                               ; preds = %21, %31
  %34 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 7
  store ptr %3, ptr %34, align 8, !tbaa !227
  %35 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 8
  store ptr %4, ptr %35, align 8, !tbaa !228
  %36 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @ui_block_func_POPUP, ptr noundef nonnull %9) #19
  br label %55

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 6
  store i8 0, ptr %38, align 1, !tbaa !224
  %39 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 2
  store ptr null, ptr %39, align 8, !tbaa !225
  tail call void @uiLayoutSetOperatorContext(ptr noundef %18, i32 noundef 1) #18
  %40 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 21
  %41 = load ptr, ptr %40, align 8, !tbaa !78
  %42 = getelementptr inbounds %struct.wmEvent, ptr %41, i64 0, i32 4
  %43 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 3
  %44 = load <2 x i32>, ptr %42, align 4, !tbaa !24
  store <2 x i32> %44, ptr %43, align 8, !tbaa !24
  %45 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 5
  store i8 1, ptr %45, align 8, !tbaa !229
  %46 = load ptr, ptr %9, align 8, !tbaa !221
  %47 = getelementptr inbounds %struct.uiBlock, ptr %46, i64 0, i32 27
  %48 = load i32, ptr %47, align 8, !tbaa !143
  %49 = or i32 %48, 2048
  store i32 %49, ptr %47, align 8, !tbaa !143
  %50 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 7
  store ptr %3, ptr %50, align 8, !tbaa !227
  %51 = getelementptr inbounds %struct.uiPopupMenu, ptr %9, i64 0, i32 8
  store ptr %4, ptr %51, align 8, !tbaa !228
  %52 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef nonnull @ui_block_func_POPUP, ptr noundef nonnull %9) #19
  %53 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %52, i64 0, i32 4
  store i8 1, ptr %53, align 1, !tbaa !230
  %54 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %54, ptr noundef %52, i8 noundef zeroext 0) #18
  tail call void @WM_event_add_mousemove(ptr noundef %0) #18
  br label %55

55:                                               ; preds = %33, %37
  %56 = phi ptr [ %36, %33 ], [ %52, %37 ]
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %57(ptr noundef nonnull %9) #18
  ret ptr %56
}

; Function Attrs: optsize
declare ptr @UI_GetStyleDraw() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ui_block_is_menu(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiLayoutContextCopy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ui_block_func_POPUP(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !227
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr %2, align 8, !tbaa !221
  br i1 %8, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 46
  store ptr %1, ptr %11, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !223
  %14 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !228
  tail call void %7(ptr noundef %0, ptr noundef %13, ptr noundef %15) #18
  %16 = load ptr, ptr %2, align 8, !tbaa !221
  %17 = getelementptr inbounds %struct.uiBlock, ptr %16, i64 0, i32 46
  store ptr null, ptr %17, align 8, !tbaa !182
  br label %18

18:                                               ; preds = %10, %3
  %19 = phi ptr [ %16, %10 ], [ %9, %3 ]
  %20 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !225
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.uiBut, ptr %21, i64 0, i32 18
  %25 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %24) #19
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds %struct.uiBlock, ptr %19, i64 0, i32 29
  %28 = load i8, ptr %27, align 2, !tbaa !185
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.uiBut, ptr %21, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !45
  %33 = icmp eq i32 %32, 13824
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @uiButGetMenuType(ptr noundef nonnull %21) #18
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, i8 1, i8 2
  %38 = load ptr, ptr %2, align 8, !tbaa !221
  br label %39

39:                                               ; preds = %34, %18, %30, %23
  %40 = phi ptr [ %19, %23 ], [ %19, %30 ], [ %19, %18 ], [ %38, %34 ]
  %41 = phi i32 [ %26, %23 ], [ %26, %30 ], [ 50, %18 ], [ %26, %34 ]
  %42 = phi i8 [ %28, %23 ], [ 2, %30 ], [ 2, %18 ], [ %37, %34 ]
  %43 = icmp eq i8 %42, 2
  %44 = load ptr, ptr %1, align 8, !tbaa !174
  %45 = getelementptr inbounds %struct.ARegion, ptr %44, i64 0, i32 21
  %46 = tail call i32 @BLI_findindex(ptr noundef nonnull %45, ptr noundef %40) #18
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load ptr, ptr %1, align 8, !tbaa !174
  tail call void @uiBlockSetRegion(ptr noundef %40, ptr noundef %49) #18
  br label %50

50:                                               ; preds = %48, %39
  %51 = getelementptr inbounds %struct.uiBlock, ptr %40, i64 0, i32 29
  store i8 %42, ptr %51, align 2, !tbaa !185
  call void @uiBlockLayoutResolve(ptr noundef %40, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @uiBlockSetFlag(ptr noundef %40, i32 noundef 128) #18
  %52 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 5
  %53 = load i8, ptr %52, align 8, !tbaa !229
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %120, label %55

55:                                               ; preds = %50
  call void @uiBlockSetFlag(ptr noundef nonnull %40, i32 noundef 11) #18
  call void @uiBlockSetDirection(ptr noundef nonnull %40, i8 noundef zeroext %42) #18
  %56 = getelementptr inbounds %struct.uiBlock, ptr %40, i64 0, i32 27
  %57 = load i32, ptr %56, align 8, !tbaa !143
  %58 = and i32 %57, 4096
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %55
  %61 = call ptr @ui_popup_menu_memory_get(ptr noundef nonnull %40) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %80, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.uiBut, ptr %61, i64 0, i32 18
  %65 = load float, ptr %64, align 8, !tbaa !231
  %66 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %64) #19
  %67 = getelementptr inbounds %struct.uiBut, ptr %61, i64 0, i32 18, i32 2
  %68 = load float, ptr %67, align 8, !tbaa !75
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %70 = sitofp i16 %69 to float
  %71 = insertelement <2 x float> poison, float %70, i64 0
  %72 = insertelement <2 x float> %71, float %66, i64 1
  %73 = insertelement <2 x float> poison, float %68, i64 0
  %74 = insertelement <2 x float> %73, float %65, i64 1
  %75 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %72, <2 x float> <float 5.000000e-01, float 0x3FE99999A0000000>, <2 x float> %74)
  %76 = fneg <2 x float> %75
  %77 = fptosi <2 x float> %76 to <2 x i32>
  %78 = call zeroext i8 @ui_but_is_editable(ptr noundef nonnull %61) #18
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %115, label %111

80:                                               ; preds = %60, %55
  %81 = getelementptr inbounds %struct.uiBlock, ptr %40, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !23
  %83 = icmp eq ptr %82, null
  br i1 %83, label %96, label %84

84:                                               ; preds = %80, %84
  %85 = phi ptr [ %94, %84 ], [ %82, %80 ]
  %86 = phi i32 [ %93, %84 ], [ 0, %80 ]
  %87 = getelementptr inbounds %struct.uiBut, ptr %85, i64 0, i32 18
  %88 = load float, ptr %87, align 8, !tbaa !231
  %89 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %87) #19
  %90 = call float @llvm.fmuladd.f32(float %89, float 0x3FE99999A0000000, float %88)
  %91 = fneg float %90
  %92 = fptosi float %91 to i32
  %93 = call fastcc i32 @min_ii(i32 noundef %86, i32 noundef %92) #19
  %94 = load ptr, ptr %85, align 8, !tbaa !23
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %84, !llvm.loop !232

96:                                               ; preds = %84, %80
  %97 = phi i32 [ 0, %80 ], [ %93, %84 ]
  %98 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %99 = sitofp i16 %98 to double
  %100 = fmul double %99, 2.100000e+00
  %101 = fptosi double %100 to i32
  %102 = insertelement <2 x i32> poison, i32 %101, i64 0
  %103 = insertelement <2 x i32> %102, i32 %97, i64 1
  br label %104

104:                                              ; preds = %108, %96
  %105 = phi ptr [ %81, %96 ], [ %106, %108 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !23
  %107 = icmp eq ptr %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = call zeroext i8 @ui_but_is_editable(ptr noundef nonnull %106) #18
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %104, label %111, !llvm.loop !233

111:                                              ; preds = %108, %63
  %112 = phi ptr [ %61, %63 ], [ %106, %108 ]
  %113 = phi <2 x i32> [ %77, %63 ], [ %103, %108 ]
  %114 = load ptr, ptr %1, align 8, !tbaa !174
  call void @ui_button_activate_over(ptr noundef %0, ptr noundef %114, ptr noundef nonnull %112) #18
  br label %115

115:                                              ; preds = %104, %63, %111
  %116 = phi <2 x i32> [ %113, %111 ], [ %77, %63 ], [ %103, %104 ]
  %117 = getelementptr inbounds %struct.uiBlock, ptr %40, i64 0, i32 43
  store i32 %41, ptr %117, align 4, !tbaa !234
  %118 = extractelement <2 x i32> %116, i64 0
  %119 = extractelement <2 x i32> %116, i64 1
  call void @uiMenuPopupBoundsBlock(ptr noundef %40, i32 noundef 1, i32 noundef %119, i32 noundef %118) #18
  br label %145

120:                                              ; preds = %50
  %121 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 6
  %122 = load i8, ptr %121, align 1, !tbaa !224
  %123 = icmp eq i8 %122, 0
  %124 = and i1 %43, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = call ptr @CTX_wm_area(ptr noundef %0) #18
  %127 = icmp eq ptr %126, null
  br i1 %127, label %140, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.ScrArea, ptr %126, i64 0, i32 12
  %130 = load i16, ptr %129, align 2, !tbaa !235
  %131 = icmp eq i16 %130, 1
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = call ptr @CTX_wm_region(ptr noundef %0) #18
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.ARegion, ptr %133, i64 0, i32 8
  %137 = load i16, ptr %136, align 2, !tbaa !90
  %138 = icmp eq i16 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  call void @uiBlockSetDirection(ptr noundef nonnull %40, i8 noundef zeroext 1) #18
  call void @uiBlockFlipOrder(ptr noundef nonnull %40) #18
  br label %140

140:                                              ; preds = %125, %128, %139, %135, %132, %120
  %141 = getelementptr inbounds %struct.uiBlock, ptr %40, i64 0, i32 43
  store i32 %41, ptr %141, align 4, !tbaa !234
  %142 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %143 = sext i16 %142 to i32
  %144 = mul nsw i32 %143, 3
  call void @uiTextBoundsBlock(ptr noundef nonnull %40, i32 noundef %144) #18
  br label %145

145:                                              ; preds = %140, %115
  %146 = getelementptr inbounds %struct.uiPopupMenu, ptr %2, i64 0, i32 6
  %147 = load i8, ptr %146, align 1, !tbaa !224
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @uiBlockSetDirection(ptr noundef nonnull %40, i8 noundef zeroext 8) #18
  br label %150

150:                                              ; preds = %149, %145
  %151 = load ptr, ptr %2, align 8, !tbaa !221
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret ptr %151
}

; Function Attrs: optsize
declare void @UI_add_popup_handlers(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  %5 = tail call ptr @UI_GetStyleDraw() #18
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %7 = tail call ptr %6(i64 noundef 56, ptr noundef nonnull @.str.21) #18
  %8 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef null, ptr noundef nonnull @__func__.uiPupMenuBegin, i16 noundef signext 2) #18
  store ptr %8, ptr %7, align 8, !tbaa !221
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !143
  %11 = or i32 %10, 4096
  store i32 %11, ptr %9, align 8, !tbaa !143
  %12 = tail call fastcc i32 @ui_popup_menu_hash(ptr noundef %1) #19
  %13 = load ptr, ptr %7, align 8, !tbaa !221
  %14 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 13
  store i32 %12, ptr %14, align 4, !tbaa !217
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %16 = sitofp i16 %15 to float
  %17 = fmul float %16, 0x3FC99999A0000000
  %18 = fptosi float %17 to i32
  %19 = tail call ptr @uiBlockLayout(ptr noundef %13, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 200, i32 noundef 0, i32 noundef %18, ptr noundef %5) #18
  %20 = getelementptr inbounds %struct.uiPopupMenu, ptr %7, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !223
  tail call void @uiLayoutSetOperatorContext(ptr noundef %19, i32 noundef 7) #18
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %22 = tail call ptr %21(i64 noundef 192, ptr noundef nonnull @.str.20) #18
  %23 = load ptr, ptr %7, align 8, !tbaa !221
  %24 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 46
  store ptr %22, ptr %24, align 8, !tbaa !182
  %25 = load i8, ptr %1, align 1, !tbaa !27
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #20
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.22, ptr noundef nonnull %1) #18
  %31 = load ptr, ptr %7, align 8, !tbaa !221
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %33 = call ptr @uiDefIconTextBut(ptr noundef %31, i32 noundef 5120, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i16 noundef signext 200, i16 noundef signext %32, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #18
  br label %38

34:                                               ; preds = %27
  %35 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %36 = tail call ptr @uiDefBut(ptr noundef nonnull %23, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i16 noundef signext 200, i16 noundef signext %35, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #18
  %37 = getelementptr inbounds %struct.uiBut, ptr %36, i64 0, i32 3
  store i32 2, ptr %37, align 4, !tbaa !36
  br label %38

38:                                               ; preds = %34, %29
  %39 = load ptr, ptr %20, align 8, !tbaa !223
  call void @uiItemS(ptr noundef %39) #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #20
  br label %40

40:                                               ; preds = %38, %3
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_popup_menu_hash(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @BLI_ghashutil_strhash_p(ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: optsize
declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiPupMenuEnd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.uiPopupMenu, ptr %1, i64 0, i32 5
  store i8 1, ptr %4, align 8, !tbaa !229
  %5 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %8 = getelementptr inbounds %struct.uiPopupMenu, ptr %1, i64 0, i32 3
  %9 = load <2 x i32>, ptr %7, align 4, !tbaa !24
  store <2 x i32> %9, ptr %8, align 8, !tbaa !24
  %10 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @ui_block_func_POPUP, ptr noundef %1) #19
  %11 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %10, i64 0, i32 4
  store i8 1, ptr %11, align 1, !tbaa !230
  %12 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %10, i8 noundef zeroext 0) #18
  tail call void @WM_event_add_mousemove(ptr noundef %0) #18
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %13(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @uiPupMenuLayout(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiPopupMenu, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiPieMenuBegin(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [256 x i8], align 16
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %7 = tail call ptr @UI_GetStyleDraw() #18
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !23
  %9 = tail call ptr %8(i64 noundef 56, ptr noundef nonnull @.str.24) #18
  %10 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef null, ptr noundef nonnull @__func__.uiPieMenuBegin, i16 noundef signext 0) #18
  store ptr %10, ptr %9, align 8, !tbaa !237
  %11 = tail call fastcc i32 @ui_popup_menu_hash(ptr noundef %1) #19
  %12 = load ptr, ptr %9, align 8, !tbaa !237
  %13 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 13
  store i32 %11, ptr %13, align 4, !tbaa !217
  %14 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 27
  %15 = load i32, ptr %14, align 8, !tbaa !143
  %16 = or i32 %15, 1048576
  store i32 %16, ptr %14, align 8, !tbaa !143
  %17 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !124
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 53, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !191
  %23 = or i32 %22, 16
  store i32 %23, ptr %21, align 8, !tbaa !191
  br label %39

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 20
  %26 = load i16, ptr %25, align 2, !tbaa !239
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 19
  %30 = load i16, ptr %29, align 4, !tbaa !240
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 53, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !191
  %35 = or i32 %34, 16
  store i32 %35, ptr %33, align 8, !tbaa !191
  br label %36

36:                                               ; preds = %24, %28, %32
  %37 = phi i16 [ 0, %32 ], [ %26, %28 ], [ %18, %24 ]
  %38 = sext i16 %37 to i32
  br label %39

39:                                               ; preds = %36, %20
  %40 = phi i32 [ %38, %36 ], [ 0, %20 ]
  %41 = phi i16 [ %37, %36 ], [ 0, %20 ]
  %42 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 53, i32 6
  store i32 %40, ptr %42, align 4, !tbaa !241
  %43 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 19
  store i16 %41, ptr %43, align 4, !tbaa !240
  %44 = tail call ptr @uiBlockLayout(ptr noundef nonnull %12, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 200, i32 noundef 0, i32 noundef 0, ptr noundef %7) #18
  %45 = getelementptr inbounds %struct.uiPieMenu, ptr %9, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !242
  %46 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %47 = getelementptr inbounds %struct.uiPieMenu, ptr %9, i64 0, i32 2
  %48 = load <2 x i32>, ptr %46, align 4, !tbaa !24
  store <2 x i32> %48, ptr %47, align 8, !tbaa !24
  %49 = load i8, ptr %1, align 1, !tbaa !27
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #20
  %52 = icmp eq i32 %2, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %51
  %54 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.22, ptr noundef nonnull %1) #18
  %55 = call fastcc float @uiPieTitleWidth(ptr noundef nonnull %5, i32 noundef %2) #19
  %56 = fptosi float %55 to i32
  %57 = load ptr, ptr %9, align 8, !tbaa !237
  %58 = trunc i32 %56 to i16
  %59 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %60 = call ptr @uiDefIconTextBut(ptr noundef %57, i32 noundef 5120, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i16 noundef signext %58, i16 noundef signext %59, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #18
  br label %68

61:                                               ; preds = %51
  %62 = tail call fastcc float @uiPieTitleWidth(ptr noundef nonnull %1, i32 noundef 0) #19
  %63 = fptosi float %62 to i32
  %64 = load ptr, ptr %9, align 8, !tbaa !237
  %65 = trunc i32 %63 to i16
  %66 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %67 = tail call ptr @uiDefBut(ptr noundef %64, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i16 noundef signext %65, i16 noundef signext %66, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.23) #18
  br label %68

68:                                               ; preds = %61, %53
  %69 = phi ptr [ %60, %53 ], [ %67, %61 ]
  %70 = getelementptr inbounds %struct.uiBut, ptr %69, i64 0, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !36
  %72 = and i32 %71, -3
  store i32 %72, ptr %70, align 4, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #20
  br label %73

73:                                               ; preds = %68, %39
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @uiPieTitleWidth(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @UI_GetStringWidth(ptr noundef %0) #18
  %4 = sitofp i32 %3 to float
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %6 = sitofp i16 %5 to float
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, float 1.500000e+00, float 1.750000e+00
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %8, float %4)
  ret float %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiPieMenuEnd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %4 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @ui_block_func_PIE, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %4, i64 0, i32 4
  store i8 1, ptr %5, align 1, !tbaa !230
  %6 = tail call double @PIL_check_seconds_timer() #18
  %7 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %4, i64 0, i32 2
  store double %6, ptr %7, align 8, !tbaa !243
  %8 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %4, i8 noundef zeroext 1) #18
  tail call void @WM_event_add_mousemove(ptr noundef %0) #18
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %9(ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ui_block_func_PIE(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %6 = load ptr, ptr %2, align 8, !tbaa !237
  %7 = load ptr, ptr %1, align 8, !tbaa !174
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 21
  %9 = tail call i32 @BLI_findindex(ptr noundef nonnull %8, ptr noundef %6) #18
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %1, align 8, !tbaa !174
  tail call void @uiBlockSetRegion(ptr noundef %6, ptr noundef %12) #18
  br label %13

13:                                               ; preds = %11, %3
  call void @uiBlockLayoutResolve(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 11) #18
  %14 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 43
  store i32 50, ptr %14, align 4, !tbaa !234
  %15 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 39
  store <4 x i32> <i32 6, i32 0, i32 0, i32 1>, ptr %15, align 4, !tbaa !24
  %16 = getelementptr inbounds %struct.uiPieMenu, ptr %2, i64 0, i32 2
  %17 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 53, i32 2
  %18 = load <2 x i32>, ptr %16, align 8, !tbaa !24
  %19 = sitofp <2 x i32> %18 to <2 x float>
  store <2 x float> %19, ptr %17, align 8, !tbaa !66
  %20 = load ptr, ptr %2, align 8, !tbaa !237
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret ptr %20
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @uiPieMenuLayout(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.uiPieMenu, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !242
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @uiPieMenuInvoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.Menu, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %5 = tail call ptr @WM_menutype_find(ptr noundef %1, i8 noundef zeroext 1) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull @__func__.uiPieMenuInvoke, ptr noundef %1) #19
  br label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !244
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0, ptr noundef nonnull %5) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 3
  %18 = tail call ptr @uiPieMenuBegin(ptr noundef %0, ptr noundef nonnull %17, i32 noundef 0, ptr noundef %2) #19
  %19 = tail call ptr @uiPieMenuLayout(ptr noundef %18) #19
  %20 = getelementptr inbounds %struct.Menu, ptr %4, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !247
  store ptr %5, ptr %4, align 8, !tbaa !249
  %21 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !250
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @__func__.uiPieMenuInvoke, ptr noundef %1) #19
  br label %26

26:                                               ; preds = %24, %16
  %27 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !252
  call void %28(ptr noundef %0, ptr noundef nonnull %4) #18
  call void @uiPieMenuEnd(ptr noundef %0, ptr noundef %18) #19
  br label %29

29:                                               ; preds = %13, %26, %7
  %30 = phi i32 [ 2, %7 ], [ 32, %26 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret i32 %30
}

; Function Attrs: optsize
declare ptr @WM_menutype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @uiPieOperatorEnumInvoke(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call ptr @uiPieMenuBegin(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %4) #19
  %7 = tail call ptr @uiPieMenuLayout(ptr noundef %6) #19
  %8 = tail call ptr @uiLayoutRadial(ptr noundef %7) #18
  tail call void @uiItemsEnumO(ptr noundef %8, ptr noundef %2, ptr noundef %3) #18
  tail call void @uiPieMenuEnd(ptr noundef %0, ptr noundef %6) #19
  ret i32 32
}

; Function Attrs: optsize
declare ptr @uiLayoutRadial(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiItemsEnumO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @uiPieEnumInvoke(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_Context, ptr noundef %0, ptr noundef nonnull %5) #18
  %8 = call zeroext i8 @RNA_path_resolve(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %7, align 8, !tbaa !23
  %12 = call i32 @RNA_property_type(ptr noundef %11) #18
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = call ptr @uiPieMenuBegin(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %3) #19
  %16 = call ptr @uiPieMenuLayout(ptr noundef %15) #19
  %17 = call ptr @uiLayoutRadial(ptr noundef %16) #18
  %18 = load ptr, ptr %7, align 8, !tbaa !23
  call void @uiItemFullR(ptr noundef %17, ptr noundef nonnull %6, ptr noundef %18, i32 noundef -1, i32 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  call void @uiPieMenuEnd(ptr noundef %0, ptr noundef %15) #19
  br label %19

19:                                               ; preds = %10, %4, %14
  %20 = phi i32 [ 32, %14 ], [ 2, %4 ], [ 2, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret i32 %20
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiItemFullR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiPupMenuReports(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [400 x i8], align 16
  %4 = alloca [400 x i8], align 16
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %61, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ReportList, ptr %1, i64 0, i32 1
  br label %12

12:                                               ; preds = %10, %53
  %13 = phi ptr [ %8, %10 ], [ %56, %53 ]
  %14 = phi ptr [ undef, %10 ], [ %55, %53 ]
  %15 = phi ptr [ null, %10 ], [ %54, %53 ]
  %16 = getelementptr inbounds %struct.Report, ptr %13, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !253
  %18 = sext i16 %17 to i32
  %19 = load i32, ptr %11, align 8, !tbaa !255
  %20 = icmp sgt i32 %19, %18
  br i1 %20, label %53, label %21

21:                                               ; preds = %12
  %22 = icmp eq ptr %15, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %3) #20
  %24 = getelementptr inbounds %struct.Report, ptr %13, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !257
  %26 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef %25) #18
  %27 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #19
  %28 = call ptr @uiPupMenuLayout(ptr noundef %27) #19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %3) #20
  br label %30

29:                                               ; preds = %21
  call void @uiItemS(ptr noundef %14) #18
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi ptr [ %27, %23 ], [ %15, %29 ]
  %32 = phi ptr [ %28, %23 ], [ %14, %29 ]
  %33 = getelementptr inbounds %struct.Report, ptr %13, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !258
  %35 = load i16, ptr %16, align 8, !tbaa !253
  %36 = sext i16 %35 to i32
  %37 = call i32 @uiIconFromReportType(i32 noundef %36) #18
  br label %38

38:                                               ; preds = %44, %30
  %39 = phi i32 [ %37, %30 ], [ 0, %44 ]
  %40 = phi ptr [ %34, %30 ], [ %45, %44 ]
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %4) #20
  %41 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %40, i32 noundef 10) #21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  call void @uiItemL(ptr noundef %32, ptr noundef %40, i32 noundef %39) #18
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %4) #20
  br label %53

44:                                               ; preds = %38
  %45 = getelementptr inbounds i8, ptr %41, i64 1
  %46 = ptrtoint ptr %45 to i64
  %47 = ptrtoint ptr %40 to i64
  %48 = sub i64 %46, %47
  %49 = call i64 @llvm.umin.i64(i64 %48, i64 400)
  %50 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %40, i64 noundef %49) #18
  call void @uiItemL(ptr noundef %32, ptr noundef nonnull %4, i32 noundef %39) #18
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %4) #20
  %51 = load i8, ptr %45, align 1, !tbaa !27
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %38, !llvm.loop !259

53:                                               ; preds = %44, %43, %12
  %54 = phi ptr [ %15, %12 ], [ %31, %43 ], [ %31, %44 ]
  %55 = phi ptr [ %14, %12 ], [ %32, %43 ], [ %32, %44 ]
  %56 = load ptr, ptr %13, align 8, !tbaa !23
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %12, !llvm.loop !260

58:                                               ; preds = %53
  %59 = icmp eq ptr %54, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef nonnull %54) #19
  br label %61

61:                                               ; preds = %7, %58, %60, %2
  ret void
}

; Function Attrs: optsize
declare i32 @uiIconFromReportType(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @uiPupMenuInvoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.Menu, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %5 = tail call ptr @WM_menutype_find(ptr noundef %1, i8 noundef zeroext 1) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.29, ptr noundef %1) #18
  br label %28

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !244
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef nonnull %5) #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 3
  %17 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 0) #19
  %18 = tail call ptr @uiPupMenuLayout(ptr noundef %17) #19
  %19 = getelementptr inbounds %struct.Menu, ptr %4, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !247
  store ptr %5, ptr %4, align 8, !tbaa !249
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !250
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @__func__.uiPupMenuInvoke, ptr noundef %1) #19
  br label %25

25:                                               ; preds = %23, %15
  %26 = getelementptr inbounds %struct.MenuType, ptr %5, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !252
  call void %27(ptr noundef %0, ptr noundef nonnull %4) #18
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %17) #19
  br label %28

28:                                               ; preds = %12, %25, %7
  %29 = phi i32 [ 2, %7 ], [ 32, %25 ], [ 2, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret i32 %29
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiPupBlockO(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %7 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef %2) #19
  %8 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 4
  store i8 1, ptr %8, align 1, !tbaa !230
  %9 = icmp eq ptr %3, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi ptr [ %11, %10 ], [ null, %5 ]
  %14 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 11
  store ptr %13, ptr %14, align 8, !tbaa !261
  %15 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 14
  store i32 %4, ptr %15, align 8, !tbaa !262
  %16 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %16, ptr noundef nonnull %7, i8 noundef zeroext 0) #18
  tail call void @WM_event_add_mousemove(ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiPupBlock(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @uiPupBlockO(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiPupBlockEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %7 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef %4) #19
  %8 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 4
  store i8 1, ptr %8, align 1, !tbaa !230
  %9 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 17
  store i32 1, ptr %9, align 4, !tbaa !263
  %10 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 7
  store ptr %4, ptr %10, align 8, !tbaa !264
  %11 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 5
  store ptr %2, ptr %11, align 8, !tbaa !265
  %12 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 6
  store ptr %3, ptr %12, align 8, !tbaa !266
  %13 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 29
  tail call void @UI_add_popup_handlers(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %7, i8 noundef zeroext 0) #18
  tail call void @WM_event_add_mousemove(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiPupBlockClose(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 46
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 29
  %11 = load ptr, ptr %3, align 8, !tbaa !182
  tail call void @UI_remove_popup_handlers(ptr noundef nonnull %10, ptr noundef %11) #18
  %12 = load ptr, ptr %3, align 8, !tbaa !182
  tail call void @ui_popup_block_free(ptr noundef %0, ptr noundef %12) #19
  br label %13

13:                                               ; preds = %6, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @UI_remove_popup_handlers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_rgb_to_color_picker_compat_v(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !210
  %4 = icmp eq i16 %3, 4
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @rgb_to_hsl_compat_v(ptr noundef %0, ptr noundef %1) #18
  br label %7

6:                                                ; preds = %2
  tail call void @rgb_to_hsv_compat_v(ptr noundef %0, ptr noundef %1) #18
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: optsize
declare void @rgb_to_hsl_compat_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @rgb_to_hsv_compat_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_rgb_to_color_picker_v(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !210
  %4 = icmp eq i16 %3, 4
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @rgb_to_hsl_v(ptr noundef %0, ptr noundef %1) #18
  br label %7

6:                                                ; preds = %2
  tail call void @rgb_to_hsv_v(ptr noundef %0, ptr noundef %1) #18
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: optsize
declare void @rgb_to_hsl_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @hsl_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @hsv_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_color_picker_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !210
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @hsl_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  br label %11

10:                                               ; preds = %6
  tail call void @hsv_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: optsize
declare void @hsl_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_enum_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_from_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mod_i(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = srem i32 %0, %1
  %4 = add nsw i32 %3, %1
  %5 = srem i32 %4, %1
  ret i32 %5
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ui_tooltip_get_theme() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wmOrtho2_region_ui(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ui_draw_tooltip_background(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_grayscale(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !66
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !66
  %5 = fmul float %4, 0x3FE28F5C20000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD3333340000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !66
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FBEB851E0000000, float %6)
  ret float %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rgb_tint(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @rgb_to_hsv_v(ptr noundef %0, ptr noundef nonnull %6) #18
  store float %1, ptr %7, align 4, !tbaa !66
  %8 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %2, ptr %8, align 4, !tbaa !66
  %9 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !66
  %11 = fsub float 1.000000e+00, %4
  %12 = fmul float %3, %4
  %13 = call float @llvm.fmuladd.f32(float %10, float %11, float %12)
  %14 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %13, ptr %14, align 4, !tbaa !66
  call void @hsv_to_rgb_v(ptr noundef nonnull %7, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_luma(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !66
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !66
  %5 = fmul float %4, 0x3FE2C8B440000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD322D0E0000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !66
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FBD2F1AA0000000, float %6)
  ret float %9
}

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiStyleFontDraw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_draw_region_clear(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_area_region_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ui_draw_search_back(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ui_draw_preview_item(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ui_draw_menu_item(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ui_block_to_window_rctf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rctf_init_minmax(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiBlockFlipOrder(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ui_check_but(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ui_block_to_display_space_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_float_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_float_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @square_picker(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = add nuw nsw i32 %3, 3
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
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
  %17 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %10, i16 noundef signext %13, i16 noundef signext %15, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %16, float noundef 0.000000e+00, ptr noundef nonnull @.str.58) #18
  tail call void @uiButSetFunc(ptr noundef %17, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %17, ptr noundef null) #18
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %19 = sitofp i16 %18 to float
  %20 = fmul float %19, 0x3FD3333340000000
  %21 = tail call float @llvm.fmuladd.f32(float %19, float 7.500000e+00, float %20)
  %22 = tail call float @llvm.fmuladd.f32(float %19, float 0x3FE6666660000000, float %21)
  %23 = fptosi float %22 to i16
  %24 = fmul float %19, 0x3FE6666660000000
  %25 = fptosi float %24 to i16
  %26 = sitofp i32 %5 to float
  %27 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i16 noundef signext %23, i16 noundef signext %25, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %26, float noundef 0.000000e+00, ptr noundef nonnull @.str.51) #18
  tail call void @uiButSetFunc(ptr noundef %27, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %27, ptr noundef null) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @circle_picker(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %5 = sitofp i16 %4 to float
  %6 = fmul float %5, 7.500000e+00
  %7 = fptosi float %6 to i16
  %8 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 22016, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i16 noundef signext %7, i16 noundef signext %7, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.58) #18
  tail call void @uiButSetFunc(ptr noundef %8, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %8, ptr noundef null) #18
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !210
  %10 = icmp eq i16 %9, 4
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !31
  %12 = sitofp i16 %11 to float
  %13 = fmul float %12, 0x3FD3333340000000
  %14 = tail call float @llvm.fmuladd.f32(float %12, float 7.500000e+00, float %13)
  %15 = fptosi float %14 to i32
  %16 = fmul float %12, 0x3FE6666660000000
  %17 = fptosi float %16 to i16
  %18 = fmul float %12, 7.500000e+00
  %19 = fptosi float %18 to i16
  br i1 %10, label %20, label %22

20:                                               ; preds = %3
  %21 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %15, i32 noundef 0, i16 noundef signext %17, i16 noundef signext %19, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+01, float noundef 0.000000e+00, ptr noundef nonnull @.str.49) #18
  tail call void @uiButSetFunc(ptr noundef %21, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %21, ptr noundef null) #18
  br label %24

22:                                               ; preds = %3
  %23 = tail call ptr @uiDefButR_prop(ptr noundef %0, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %15, i32 noundef 0, i16 noundef signext %17, i16 noundef signext %19, ptr noundef %1, ptr noundef %2, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 9.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.51) #18
  tail call void @uiButSetFunc(ptr noundef %23, ptr noundef nonnull @do_picker_rna_cb, ptr noundef %23, ptr noundef null) #18
  br label %24

24:                                               ; preds = %22, %20
  ret void
}

; Function Attrs: optsize
declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiDefButS(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_picker_new_mode_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call double @ui_get_but_val(ptr noundef %1) #18
  %5 = fptosi double %4 to i16
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  tail call fastcc void @picker_new_hide_reveal(ptr noundef %7, i16 noundef signext %5) #19
  ret void
}

; Function Attrs: optsize
declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiDefIconButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @close_popup_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #14 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.uiBlock, ptr %5, i64 0, i32 46
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 16
  store i32 2, ptr %10, align 8, !tbaa !215
  br label %11

11:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefButR_prop(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_picker_rna_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [4 x float], align 16
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 46
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !267
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %13 = icmp eq ptr %11, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  call void @RNA_property_float_get_array(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %5) #18
  %15 = load ptr, ptr %6, align 8, !tbaa !17
  %16 = call i32 @RNA_property_subtype(ptr noundef nonnull %11) #18
  %17 = icmp eq i32 %16, 30
  %18 = zext i1 %17 to i8
  call fastcc void @ui_update_block_buts_rgb(ptr noundef %15, ptr noundef nonnull %5, i8 noundef zeroext %18) #19
  br label %19

19:                                               ; preds = %14, %3
  %20 = icmp eq ptr %9, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %9, i64 0, i32 16
  store i32 16, ptr %22, align 8, !tbaa !215
  br label %23

23:                                               ; preds = %21, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_color_wheel_rna_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 46
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %9 = tail call ptr @ui_block_hsv_get(ptr noundef %6) #19
  %10 = tail call zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef %1) #18
  call void @ui_color_picker_to_rgb_v(ptr noundef nonnull %9, ptr noundef nonnull %4) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !tbaa !17
  call void @ui_block_to_scene_linear_v3(ptr noundef %13, ptr noundef nonnull %4) #18
  br label %14

14:                                               ; preds = %12, %3
  %15 = load ptr, ptr %5, align 8, !tbaa !17
  %16 = zext i1 %11 to i8
  call fastcc void @ui_update_block_buts_rgb(ptr noundef %15, ptr noundef nonnull %4, i8 noundef zeroext %16) #19
  %17 = icmp eq ptr %8, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %8, i64 0, i32 16
  store i32 16, ptr %19, align 8, !tbaa !215
  br label %20

20:                                               ; preds = %18, %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_hex_rna_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 46
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = getelementptr inbounds float, ptr %4, i64 2
  call void @hex_to_rgb(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %11 = load ptr, ptr %5, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.uiBlock, ptr %11, i64 0, i32 51
  %13 = load i8, ptr %12, align 4, !tbaa !211
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  call void @ui_block_to_scene_linear_v3(ptr noundef nonnull %11, ptr noundef nonnull %4) #18
  %16 = load ptr, ptr %5, align 8, !tbaa !17
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi ptr [ %16, %15 ], [ %11, %3 ]
  call fastcc void @ui_update_block_buts_rgb(ptr noundef %18, ptr noundef nonnull %4, i8 noundef zeroext 0) #19
  %19 = icmp eq ptr %8, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %8, i64 0, i32 16
  store i32 16, ptr %21, align 8, !tbaa !215
  br label %22

22:                                               ; preds = %20, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @picker_new_hide_reveal(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %6

6:                                                ; preds = %2
  %7 = icmp eq i16 %1, 1
  %8 = icmp eq i16 %1, 0
  %9 = icmp eq i16 %1, 2
  br label %10

10:                                               ; preds = %6, %54
  %11 = phi ptr [ %4, %6 ], [ %55, %54 ]
  %12 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !268
  %14 = icmp eq ptr %13, @do_picker_rna_cb
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !45
  %18 = icmp eq i32 %17, 7168
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 56
  %21 = load i32, ptr %20, align 8, !tbaa !47
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %54, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !48
  br i1 %8, label %26, label %28

26:                                               ; preds = %23
  %27 = and i32 %25, -33
  store i32 %27, ptr %24, align 8, !tbaa !48
  br label %54

28:                                               ; preds = %23
  %29 = or i32 %25, 32
  store i32 %29, ptr %24, align 8, !tbaa !48
  br label %54

30:                                               ; preds = %10
  %31 = icmp eq ptr %13, @do_color_wheel_rna_cb
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !48
  br i1 %7, label %35, label %37

35:                                               ; preds = %32
  %36 = and i32 %34, -33
  store i32 %36, ptr %33, align 8, !tbaa !48
  br label %54

37:                                               ; preds = %32
  %38 = or i32 %34, 32
  store i32 %38, ptr %33, align 8, !tbaa !48
  br label %54

39:                                               ; preds = %30
  %40 = icmp eq ptr %13, @do_hex_rna_cb
  br i1 %40, label %47, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !45
  br label %44

44:                                               ; preds = %41, %15
  %45 = phi i32 [ %43, %41 ], [ %17, %15 ]
  %46 = icmp eq i32 %45, 5120
  br i1 %46, label %47, label %54

47:                                               ; preds = %44, %39
  %48 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !48
  br i1 %9, label %50, label %52

50:                                               ; preds = %47
  %51 = and i32 %49, -33
  store i32 %51, ptr %48, align 8, !tbaa !48
  br label %54

52:                                               ; preds = %47
  %53 = or i32 %49, 32
  store i32 %53, ptr %48, align 8, !tbaa !48
  br label %54

54:                                               ; preds = %19, %28, %26, %44, %52, %50, %35, %37
  %55 = load ptr, ptr %11, align 8, !tbaa !23
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %10, !llvm.loop !269

57:                                               ; preds = %54, %2
  ret void
}

; Function Attrs: optsize
declare double @ui_get_but_val(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_update_block_buts_rgb(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca double, align 8
  %8 = alloca [16 x i8], align 16
  %9 = tail call ptr @ui_block_hsv_get(ptr noundef %0) #19
  %10 = icmp eq i8 %2, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @ui_rgb_to_color_picker_compat_v(ptr noundef %1, ptr noundef nonnull %9) #19
  br label %13

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #19
  call void @ui_block_to_display_space_v3(ptr noundef %0, ptr noundef nonnull %4) #18
  call void @ui_rgb_to_color_picker_compat_v(ptr noundef nonnull %4, ptr noundef nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %13

13:                                               ; preds = %12, %11
  %14 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 51
  %15 = load i8, ptr %14, align 4, !tbaa !211
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call ptr @ui_block_display_get(ptr noundef nonnull %0) #18
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ null, %13 ]
  %21 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %109, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds float, ptr %9, i64 2
  %26 = getelementptr inbounds float, ptr %9, i64 1
  %27 = getelementptr inbounds float, ptr %1, i64 2
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = icmp eq ptr %20, null
  %30 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %31 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %32 = getelementptr inbounds [3 x i8], ptr %6, i64 0, i64 1
  %33 = getelementptr inbounds [3 x i8], ptr %6, i64 0, i64 2
  br label %34

34:                                               ; preds = %24, %106
  %35 = phi ptr [ %22, %24 ], [ %107, %106 ]
  %36 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 55
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  call void @ui_set_but_vectorf(ptr noundef nonnull %35, ptr noundef %1) #18
  br label %106

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 15
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  %43 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(6) @.str.55) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #19
  br i1 %29, label %47, label %46

46:                                               ; preds = %45
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %5, ptr noundef nonnull %20) #18
  br label %47

47:                                               ; preds = %46, %45
  %48 = load float, ptr %5, align 4, !tbaa !66
  %49 = fcmp ogt float %48, 1.000000e+00
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = fpext float %48 to double
  %52 = call double @modf(double noundef %51, ptr noundef nonnull %7) #18
  %53 = fptrunc double %52 to float
  store float %53, ptr %5, align 4, !tbaa !66
  br label %54

54:                                               ; preds = %50, %47
  %55 = load float, ptr %30, align 4, !tbaa !66
  %56 = fcmp ogt float %55, 1.000000e+00
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = fpext float %55 to double
  %59 = call double @modf(double noundef %58, ptr noundef nonnull %7) #18
  %60 = fptrunc double %59 to float
  store float %60, ptr %30, align 4, !tbaa !66
  br label %61

61:                                               ; preds = %57, %54
  %62 = load float, ptr %31, align 4, !tbaa !66
  %63 = fcmp ogt float %62, 1.000000e+00
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = fpext float %62 to double
  %66 = call double @modf(double noundef %65, ptr noundef nonnull %7) #18
  %67 = fptrunc double %66 to float
  store float %67, ptr %31, align 4, !tbaa !66
  br label %68

68:                                               ; preds = %64, %61
  call void @rgb_float_to_uchar(ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  %69 = load i8, ptr %6, align 1, !tbaa !27
  %70 = zext i8 %69 to i32
  %71 = load i8, ptr %32, align 1, !tbaa !27
  %72 = zext i8 %71 to i32
  %73 = load i8, ptr %33, align 1, !tbaa !27
  %74 = zext i8 %73 to i32
  %75 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 16, ptr noundef nonnull @.str.54, i32 noundef %70, i32 noundef %72, i32 noundef %74) #18
  %76 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 19
  %77 = load ptr, ptr %76, align 8, !tbaa !270
  %78 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %77, ptr noundef nonnull dereferenceable(1) %8) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  br label %106

79:                                               ; preds = %40
  %80 = getelementptr inbounds i8, ptr %42, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !27
  %82 = icmp eq i8 %81, 32
  br i1 %82, label %83, label %106

83:                                               ; preds = %79
  %84 = load i8, ptr %42, align 1, !tbaa !27
  switch i8 %84, label %106 [
    i8 82, label %85
    i8 71, label %88
    i8 66, label %91
    i8 72, label %94
    i8 83, label %97
    i8 86, label %100
    i8 76, label %103
  ]

85:                                               ; preds = %83
  %86 = load float, ptr %1, align 4, !tbaa !66
  %87 = fpext float %86 to double
  call void @ui_set_but_val(ptr noundef nonnull %35, double noundef %87) #18
  br label %106

88:                                               ; preds = %83
  %89 = load float, ptr %28, align 4, !tbaa !66
  %90 = fpext float %89 to double
  call void @ui_set_but_val(ptr noundef nonnull %35, double noundef %90) #18
  br label %106

91:                                               ; preds = %83
  %92 = load float, ptr %27, align 4, !tbaa !66
  %93 = fpext float %92 to double
  call void @ui_set_but_val(ptr noundef nonnull %35, double noundef %93) #18
  br label %106

94:                                               ; preds = %83
  %95 = load float, ptr %9, align 4, !tbaa !66
  %96 = fpext float %95 to double
  call void @ui_set_but_val(ptr noundef nonnull %35, double noundef %96) #18
  br label %106

97:                                               ; preds = %83
  %98 = load float, ptr %26, align 4, !tbaa !66
  %99 = fpext float %98 to double
  call void @ui_set_but_val(ptr noundef nonnull %35, double noundef %99) #18
  br label %106

100:                                              ; preds = %83
  %101 = load float, ptr %25, align 4, !tbaa !66
  %102 = fpext float %101 to double
  call void @ui_set_but_val(ptr noundef nonnull %35, double noundef %102) #18
  br label %106

103:                                              ; preds = %83
  %104 = load float, ptr %25, align 4, !tbaa !66
  %105 = fpext float %104 to double
  call void @ui_set_but_val(ptr noundef nonnull %35, double noundef %105) #18
  br label %106

106:                                              ; preds = %83, %68, %85, %91, %97, %103, %100, %94, %88, %79, %39
  call void @ui_check_but(ptr noundef nonnull %35) #18
  %107 = load ptr, ptr %35, align 8, !tbaa !23
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %34, !llvm.loop !271

109:                                              ; preds = %106, %19
  ret void
}

; Function Attrs: optsize
declare ptr @ui_block_display_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: write)
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: optsize
declare void @ui_set_but_val(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ui_block_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @hex_to_rgb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ui_get_but_vectorf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_popup_string_hash(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 124) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = tail call i32 @BLI_ghashutil_strhash_n(ptr noundef %0, i64 noundef %7) #18
  br label %11

9:                                                ; preds = %1
  %10 = tail call i32 @BLI_ghashutil_strhash_p(ptr noundef %0) #18
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %8, %4 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @BLI_ghashutil_strhash_n(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_ghashutil_strhash_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiButGetMenuType(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiBlockSetRegion(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiBlockLayoutResolve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiBlockSetDirection(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ui_but_is_editable(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare void @ui_button_activate_over(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiMenuPopupBoundsBlock(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiTextBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 840}
!6 = !{!"uiBut", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !11, i64 32, !11, i64 34, !11, i64 36, !11, i64 38, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !11, i64 48, !7, i64 56, !8, i64 64, !8, i64 192, !12, i64 592, !7, i64 608, !13, i64 616, !13, i64 620, !13, i64 624, !13, i64 628, !13, i64 632, !13, i64 636, !8, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !7, i64 712, !7, i64 720, !7, i64 728, !7, i64 736, !7, i64 744, !7, i64 752, !8, i64 760, !7, i64 768, !7, i64 776, !10, i64 784, !8, i64 788, !8, i64 789, !8, i64 790, !8, i64 791, !8, i64 792, !11, i64 794, !11, i64 796, !7, i64 800, !7, i64 808, !14, i64 816, !7, i64 840, !10, i64 848, !14, i64 856, !7, i64 880, !7, i64 888, !7, i64 896, !11, i64 904, !8, i64 906, !8, i64 907, !7, i64 912, !7, i64 920, !13, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!"rctf", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!13 = !{!"float", !8, i64 0}
!14 = !{!"PointerRNA", !15, i64 0, !7, i64 8, !7, i64 16}
!15 = !{!"", !7, i64 0}
!16 = !{!6, !7, i64 56}
!17 = !{!6, !7, i64 992}
!18 = !{!19, !7, i64 528}
!19 = !{!"uiBlock", !7, i64 0, !7, i64 8, !20, i64 16, !7, i64 32, !7, i64 40, !20, i64 48, !20, i64 64, !7, i64 80, !20, i64 88, !8, i64 104, !8, i64 232, !12, i64 296, !13, i64 312, !10, i64 316, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !7, i64 400, !7, i64 408, !7, i64 416, !10, i64 424, !11, i64 428, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !21, i64 440, !7, i64 448, !8, i64 456, !8, i64 457, !8, i64 458, !8, i64 459, !10, i64 460, !10, i64 464, !10, i64 468, !10, i64 472, !10, i64 476, !12, i64 480, !20, i64 496, !7, i64 512, !7, i64 520, !7, i64 528, !7, i64 536, !8, i64 544, !8, i64 556, !8, i64 557, !22, i64 624}
!20 = !{!"ListBase", !7, i64 0, !7, i64 8}
!21 = !{!"double", !8, i64 0}
!22 = !{!"PieMenuData", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !21, i64 32, !10, i64 40, !10, i64 44, !13, i64 48}
!23 = !{!7, !7, i64 0}
!24 = !{!10, !10, i64 0}
!25 = !{!26, !7, i64 8}
!26 = !{!"EnumPropertyItem", !10, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 32}
!27 = !{!8, !8, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!26, !10, i64 0}
!31 = !{!32, !11, i64 8948}
!32 = !{!"UserDef", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !10, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !10, i64 8484, !10, i64 8488, !10, i64 8492, !11, i64 8496, !11, i64 8498, !10, i64 8500, !10, i64 8504, !10, i64 8508, !10, i64 8512, !10, i64 8516, !10, i64 8520, !10, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !20, i64 8536, !20, i64 8552, !20, i64 8568, !20, i64 8584, !20, i64 8600, !20, i64 8616, !20, i64 8632, !8, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !8, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !10, i64 8912, !10, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !13, i64 8956, !13, i64 8960, !10, i64 8964, !11, i64 8968, !11, i64 8970, !13, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !33, i64 8984, !8, i64 9760, !8, i64 9772, !11, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !10, i64 10896, !10, i64 10900, !13, i64 10904, !13, i64 10908, !10, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !34, i64 10928}
!33 = !{!"ColorBand", !11, i64 0, !11, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!34 = !{!"WalkNavigation", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !11, i64 24, !8, i64 26}
!35 = !{!19, !13, i64 312}
!36 = !{!6, !10, i64 20}
!37 = !{!38, !7, i64 8}
!38 = !{!"uiStringInfo", !10, i64 0, !7, i64 8}
!39 = !{!40, !10, i64 5232}
!40 = !{!"uiTooltipData", !41, i64 0, !42, i64 16, !8, i64 48, !8, i64 4144, !8, i64 4656, !8, i64 5168, !10, i64 5232, !10, i64 5236, !10, i64 5240}
!41 = !{!"rcti", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!42 = !{!"uiFontStyle", !11, i64 0, !11, i64 2, !11, i64 4, !8, i64 6, !11, i64 12, !11, i64 14, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !13, i64 24, !13, i64 28}
!43 = !{!44, !10, i64 0}
!44 = !{!"", !10, i64 0, !10, i64 4}
!45 = !{!6, !10, i64 24}
!46 = !{!44, !10, i64 4}
!47 = !{!6, !10, i64 848}
!48 = !{!6, !10, i64 16}
!49 = !{!6, !7, i64 816}
!50 = !{!51, !7, i64 24}
!51 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !11, i64 98, !10, i64 100, !10, i64 104, !10, i64 108, !7, i64 112}
!52 = !{!6, !7, i64 888}
!53 = !{!32, !10, i64 8}
!54 = !{!6, !11, i64 904}
!55 = !{!14, !7, i64 0}
!56 = !{!14, !7, i64 16}
!57 = !{!58, !7, i64 40}
!58 = !{!"ARegionType", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !20, i64 104, !20, i64 120, !20, i64 136, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !11, i64 172, !11, i64 174, !11, i64 176}
!59 = !{!58, !7, i64 56}
!60 = !{!58, !10, i64 16}
!61 = !{!62, !7, i64 240}
!62 = !{!"ARegion", !7, i64 0, !7, i64 8, !63, i64 16, !41, i64 176, !41, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !13, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !7, i64 240, !20, i64 248, !20, i64 264, !20, i64 280, !20, i64 296, !20, i64 312, !20, i64 328, !20, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!63 = !{!"View2D", !12, i64 0, !12, i64 16, !41, i64 32, !41, i64 48, !41, i64 64, !8, i64 80, !8, i64 88, !13, i64 96, !13, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !7, i64 128, !10, i64 136, !10, i64 140, !7, i64 144, !7, i64 152}
!64 = !{i64 0, i64 2, !65, i64 2, i64 2, !65, i64 4, i64 2, !65, i64 6, i64 6, !27, i64 12, i64 2, !65, i64 14, i64 2, !65, i64 16, i64 2, !65, i64 18, i64 2, !65, i64 20, i64 2, !65, i64 22, i64 2, !65, i64 24, i64 4, !66, i64 28, i64 4, !66}
!65 = !{!11, !11, i64 0}
!66 = !{!13, !13, i64 0}
!67 = !{!40, !11, i64 16}
!68 = !{!40, !11, i64 18}
!69 = !{!32, !13, i64 10908}
!70 = !{!32, !10, i64 8524}
!71 = distinct !{!71, !29}
!72 = !{!62, !7, i64 376}
!73 = !{!40, !10, i64 5236}
!74 = !{!40, !10, i64 5240}
!75 = !{!6, !13, i64 600}
!76 = !{!12, !13, i64 0}
!77 = !{!12, !13, i64 12}
!78 = !{!79, !7, i64 136}
!79 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !10, i64 128, !11, i64 132, !11, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !10, i64 160, !10, i64 164, !7, i64 168, !20, i64 176, !20, i64 192, !20, i64 208, !20, i64 224, !20, i64 240}
!80 = !{!81, !10, i64 20}
!81 = !{!"wmEvent", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 18, !10, i64 20, !10, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !11, i64 44, !11, i64 46, !10, i64 48, !10, i64 52, !21, i64 56, !10, i64 64, !10, i64 68, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !7, i64 88, !7, i64 96, !11, i64 104, !11, i64 106, !10, i64 108, !7, i64 112}
!82 = !{!41, !10, i64 4}
!83 = !{!41, !10, i64 0}
!84 = !{!41, !10, i64 8}
!85 = !{!41, !10, i64 12}
!86 = !{!40, !10, i64 0}
!87 = !{!40, !10, i64 4}
!88 = !{!40, !10, i64 8}
!89 = !{!40, !10, i64 12}
!90 = !{!62, !11, i64 214}
!91 = !{!62, !11, i64 216}
!92 = !{i64 0, i64 4, !24, i64 4, i64 4, !24, i64 8, i64 4, !24, i64 12, i64 4, !24}
!93 = !{!42, !11, i64 16}
!94 = !{!42, !13, i64 28}
!95 = !{!42, !11, i64 20}
!96 = !{!42, !11, i64 18}
!97 = !{!42, !13, i64 24}
!98 = !{!42, !11, i64 0}
!99 = !{!42, !11, i64 2}
!100 = distinct !{!100, !29}
!101 = !{!12, !13, i64 4}
!102 = !{!103, !7, i64 48}
!103 = !{!"uiSearchItems", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!104 = !{!103, !7, i64 56}
!105 = !{!103, !10, i64 4}
!106 = !{!103, !10, i64 16}
!107 = !{!103, !10, i64 0}
!108 = !{!103, !10, i64 20}
!109 = !{!103, !7, i64 24}
!110 = !{!103, !10, i64 8}
!111 = !{!103, !7, i64 32}
!112 = !{!103, !7, i64 40}
!113 = distinct !{!113, !29}
!114 = !{!62, !10, i64 176}
!115 = !{!62, !10, i64 184}
!116 = !{!6, !7, i64 664}
!117 = !{!118, !10, i64 112}
!118 = !{!"uiSearchboxData", !41, i64 0, !42, i64 16, !103, i64 48, !10, i64 112, !8, i64 116, !8, i64 117, !8, i64 118, !10, i64 120, !10, i64 124}
!119 = !{!118, !7, i64 72}
!120 = !{!118, !8, i64 118}
!121 = !{!6, !7, i64 952}
!122 = !{!118, !10, i64 56}
!123 = !{!118, !7, i64 80}
!124 = !{!81, !11, i64 16}
!125 = !{!81, !11, i64 18}
!126 = !{!81, !10, i64 24}
!127 = !{!118, !10, i64 52}
!128 = distinct !{!128, !29}
!129 = !{!118, !10, i64 68}
!130 = !{!118, !10, i64 60}
!131 = !{!118, !8, i64 117}
!132 = !{!118, !10, i64 124}
!133 = !{!118, !10, i64 120}
!134 = !{!118, !10, i64 12}
!135 = !{!118, !10, i64 64}
!136 = !{!6, !7, i64 712}
!137 = !{!118, !7, i64 104}
!138 = !{!6, !7, i64 720}
!139 = !{!118, !10, i64 48}
!140 = distinct !{!140, !29}
!141 = !{!118, !7, i64 96}
!142 = !{!118, !11, i64 38}
!143 = !{!19, !10, i64 424}
!144 = !{!118, !8, i64 116}
!145 = !{!6, !13, i64 632}
!146 = !{!6, !13, i64 636}
!147 = !{!118, !10, i64 0}
!148 = !{!118, !10, i64 4}
!149 = !{!118, !10, i64 8}
!150 = !{!6, !13, i64 604}
!151 = !{i32 -393216, i32 393205}
!152 = !{i32 -327664, i32 327687}
!153 = !{!12, !13, i64 8}
!154 = !{!19, !7, i64 32}
!155 = !{!62, !13, i64 32}
!156 = !{!62, !13, i64 36}
!157 = !{!62, !10, i64 180}
!158 = !{!62, !10, i64 188}
!159 = !{!6, !13, i64 620}
!160 = !{!118, !7, i64 88}
!161 = distinct !{!161, !29}
!162 = distinct !{!162, !29}
!163 = distinct !{!163, !29}
!164 = distinct !{!164, !29}
!165 = distinct !{!165, !29}
!166 = distinct !{!166, !29}
!167 = distinct !{!167, !29}
!168 = !{!19, !7, i64 24}
!169 = !{!19, !13, i64 304}
!170 = !{!19, !13, i64 308}
!171 = !{!6, !7, i64 0}
!172 = distinct !{!172, !29}
!173 = distinct !{!173, !29}
!174 = !{!175, !7, i64 0}
!175 = !{!"uiPopupBlockHandle", !7, i64 0, !8, i64 8, !21, i64 16, !8, i64 24, !8, i64 25, !7, i64 32, !7, i64 40, !7, i64 48, !176, i64 56, !7, i64 96, !177, i64 104, !7, i64 120, !7, i64 128, !7, i64 136, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !8, i64 160, !10, i64 176, !8, i64 180, !8, i64 184}
!176 = !{!"uiPopupBlockCreate", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !7, i64 32}
!177 = !{!"uiKeyNavLock", !8, i64 0, !8, i64 4}
!178 = !{!175, !7, i64 56}
!179 = !{!175, !7, i64 72}
!180 = !{!62, !7, i64 248}
!181 = !{!175, !7, i64 64}
!182 = !{!19, !7, i64 512}
!183 = !{!19, !7, i64 40}
!184 = !{!19, !8, i64 459}
!185 = !{!19, !8, i64 430}
!186 = !{!175, !10, i64 176}
!187 = !{i64 0, i64 4, !66, i64 4, i64 4, !66, i64 8, i64 4, !66, i64 12, i64 4, !66}
!188 = !{!19, !13, i64 296}
!189 = !{!19, !13, i64 300}
!190 = !{!32, !11, i64 10918}
!191 = !{!19, !10, i64 664}
!192 = !{!32, !11, i64 10920}
!193 = !{!6, !8, i64 790}
!194 = distinct !{!194, !29}
!195 = !{!62, !11, i64 212}
!196 = !{!19, !7, i64 16}
!197 = distinct !{!197, !29}
!198 = distinct !{!198, !29}
!199 = !{!19, !13, i64 484}
!200 = !{!19, !13, i64 480}
!201 = distinct !{!201, !29}
!202 = !{!175, !7, i64 128}
!203 = !{!175, !7, i64 136}
!204 = !{!175, !7, i64 88}
!205 = !{!62, !11, i64 228}
!206 = !{!19, !7, i64 0}
!207 = distinct !{!207, !29}
!208 = distinct !{!208, !29}
!209 = !{!175, !7, i64 96}
!210 = !{!32, !11, i64 8938}
!211 = !{!19, !8, i64 556}
!212 = !{!6, !7, i64 968}
!213 = !{!19, !7, i64 392}
!214 = !{!6, !7, i64 936}
!215 = !{!175, !10, i64 152}
!216 = distinct !{!216, !29}
!217 = !{!19, !10, i64 316}
!218 = distinct !{!218, !29}
!219 = distinct !{!219, !29}
!220 = distinct !{!220, !29}
!221 = !{!222, !7, i64 0}
!222 = !{!"uiPopupMenu", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !8, i64 32, !8, i64 33, !7, i64 40, !7, i64 48}
!223 = !{!222, !7, i64 8}
!224 = !{!222, !8, i64 33}
!225 = !{!222, !7, i64 16}
!226 = !{!6, !7, i64 688}
!227 = !{!222, !7, i64 40}
!228 = !{!222, !7, i64 48}
!229 = !{!222, !8, i64 32}
!230 = !{!175, !8, i64 25}
!231 = !{!6, !13, i64 592}
!232 = distinct !{!232, !29}
!233 = distinct !{!233, !29}
!234 = !{!19, !10, i64 476}
!235 = !{!236, !11, i64 78}
!236 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !41, i64 56, !8, i64 72, !8, i64 73, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !11, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !20, i64 96, !20, i64 112, !20, i64 128, !20, i64 144}
!237 = !{!238, !7, i64 0}
!238 = !{!"uiPieMenu", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20}
!239 = !{!79, !11, i64 134}
!240 = !{!79, !11, i64 132}
!241 = !{!19, !10, i64 668}
!242 = !{!238, !7, i64 8}
!243 = !{!175, !21, i64 16}
!244 = !{!245, !7, i64 216}
!245 = !{!"MenuType", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 80, !8, i64 144, !7, i64 208, !7, i64 216, !7, i64 224, !246, i64 232}
!246 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!247 = !{!248, !7, i64 8}
!248 = !{!"Menu", !7, i64 0, !7, i64 8}
!249 = !{!248, !7, i64 0}
!250 = !{!251, !10, i64 2100}
!251 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !20, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !8, i64 2090, !11, i64 2092, !10, i64 2096, !10, i64 2100, !8, i64 2104, !10, i64 2108, !10, i64 2112, !8, i64 2116}
!252 = !{!245, !7, i64 224}
!253 = !{!254, !11, i64 16}
!254 = !{!"Report", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 18, !10, i64 20, !7, i64 24, !7, i64 32}
!255 = !{!256, !10, i64 16}
!256 = !{!"ReportList", !20, i64 0, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !7, i64 32}
!257 = !{!254, !7, i64 24}
!258 = !{!254, !7, i64 32}
!259 = distinct !{!259, !29}
!260 = distinct !{!260, !29}
!261 = !{!175, !7, i64 120}
!262 = !{!175, !10, i64 144}
!263 = !{!175, !10, i64 156}
!264 = !{!175, !7, i64 48}
!265 = !{!175, !7, i64 32}
!266 = !{!175, !7, i64 40}
!267 = !{i64 0, i64 8, !23, i64 8, i64 8, !23, i64 16, i64 8, !23}
!268 = !{!6, !7, i64 648}
!269 = distinct !{!269, !29}
!270 = !{!6, !7, i64 608}
!271 = distinct !{!271, !29}
