; ModuleID = 'blender/source/blender/editors/interface/interface_icons.c'
source_filename = "blender/source/blender/editors/interface/interface_icons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.IconFile = type { ptr, ptr, [256 x i8], i32 }
%struct.DrawInfo = type { i32, %union.anon }
%union.anon = type { %struct.anon, [8 x i8] }
%struct.anon = type { ptr }
%struct.IconImage = type { i32, i32, ptr, ptr, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.PreviewImage = type { [2 x i32], [2 x i32], [2 x i16], [2 x i16], [2 x ptr], [2 x ptr] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.PointerRNA = type { %struct.anon.2, ptr, ptr }
%struct.anon.2 = type { ptr }
%struct.DynamicPaintSurface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x float], ptr, [64 x i8], i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [64 x i8], [1024 x i8], [64 x i8], [64 x i8] }
%struct.bTheme = type { ptr, ptr, [32 x i8], %struct.ThemeUI, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, [20 x %struct.ThemeWireColor], i32, i32 }
%struct.ThemeUI = type { %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetStateColors, %struct.uiPanelColors, [4 x i8], float, i16, [3 x i16], [256 x i8], float, [4 x i8], [4 x i8], [4 x i8] }
%struct.uiWidgetColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i16, i16, i16, i16 }
%struct.uiWidgetStateColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], float, float }
%struct.uiPanelColors = type { [4 x i8], [4 x i8], i16, i16, i32 }
%struct.ThemeSpace = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], %struct.uiPanelColors, %struct.uiGradientColors, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [3 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%struct.uiGradientColors = type { [4 x i8], [4 x i8], i32, i32 }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.Icon = type { ptr, ptr, i16, ptr }

@iconfilelist = internal global %struct.ListBase zeroinitializer, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [45 x i8] c"%s: Internal error, no icon for icon ID: %d\0A\00", align 1
@__func__.UI_icon_get_width = private unnamed_addr constant [18 x i8] c"UI_icon_get_width\00", align 1
@__func__.UI_icon_get_height = private unnamed_addr constant [19 x i8] c"UI_icon_get_height\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"<matcap buffer>\00", align 1
@RNA_MaterialSlot = external global %struct.StructRNA, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@RNA_TextureSlot = external global %struct.StructRNA, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@RNA_DynamicPaintSurface = external global %struct.StructRNA, align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"di_icon\00", align 1
@brush_sculpt_tool_items = external global [0 x %struct.EnumPropertyItem], align 8
@brush_vertex_tool_items = external global [0 x %struct.EnumPropertyItem], align 8
@brush_image_tool_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"prv_rect\00", align 1
@__func__.icon_draw_size = private unnamed_addr constant [15 x i8] c"icon_draw_size\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%s: icons are %i x %i pixels?\0A\00", align 1
@__func__.icon_draw_rect = private unnamed_addr constant [15 x i8] c"icon_draw_rect\00", align 1
@switch.table.UI_rnaptr_icon_get = private unnamed_addr constant [3 x i32] [i32 91, i32 261, i32 696], align 4

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UI_iconfile_get_index(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @iconfilelist, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IconFile, ptr %4, i64 0, i32 2
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !38

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.IconFile, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !40
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @UI_iconfile_list() local_unnamed_addr #2 {
  ret ptr @iconfilelist
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @UI_icons_free() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_icons_free_drawinfo(ptr noundef %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !43
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.DrawInfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.IconImage, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %12) #8
  %16 = load ptr, ptr %7, align 8, !tbaa !45
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %16, %14 ], [ %8, %10 ]
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %18) #8
  br label %20

20:                                               ; preds = %6, %17, %3
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef nonnull %0) #8
  br label %22

22:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @UI_icon_get_width(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @BKE_icon_get(i32 noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !48
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.UI_icon_get_width, i32 noundef %0) #9
  br label %17

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @icon_create_drawinfo() #9
  store ptr %14, ptr %2, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, i32 0, i32 16
  br label %17

17:                                               ; preds = %13, %10, %4, %8
  %18 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 16, %10 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare ptr @BKE_icon_get(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @icon_create_drawinfo() unnamed_addr #3 !PGOFuncName !54 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 24, ptr noundef nonnull @.str.4) #8
  store i32 0, ptr %2, align 8, !tbaa !43
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @UI_icon_get_height(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @BKE_icon_get(i32 noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !48
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.UI_icon_get_height, i32 noundef %0) #9
  br label %17

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @icon_create_drawinfo() #9
  store ptr %14, ptr %2, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, i32 0, i32 16
  br label %17

17:                                               ; preds = %13, %10, %4, %8
  %18 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 16, %10 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @UI_icons_init(i32 noundef %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @UI_icon_to_preview(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @BKE_icon_get(i32 noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.DrawInfo, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.IconImage, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.IconImage, ptr %9, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !56
  %16 = sext i32 %15 to i64
  %17 = tail call ptr @IMB_ibImageFromMemory(ptr noundef %13, i64 noundef %16, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.1) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %11
  %20 = tail call ptr @BKE_previewimg_create() #8
  %21 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.PreviewImage, ptr %20, i64 0, i32 4
  store ptr %22, ptr %23, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !62
  store i32 %25, ptr %20, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !64
  %28 = getelementptr inbounds %struct.PreviewImage, ptr %20, i64 0, i32 1
  store i32 %27, ptr %28, align 8, !tbaa !63
  store ptr null, ptr %21, align 8, !tbaa !57
  tail call void @IMB_freeImBuf(ptr noundef nonnull %17) #8
  br label %29

29:                                               ; preds = %11, %4, %7, %1, %19
  %30 = phi ptr [ %20, %19 ], [ null, %1 ], [ null, %7 ], [ null, %4 ], [ null, %11 ]
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @IMB_ibImageFromMemory(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_previewimg_create() local_unnamed_addr #4

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ui_id_icon_get(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !65
  switch i16 %5, label %10 [
    i16 21058, label %6
    i16 16717, label %8
    i16 17748, label %8
    i16 19785, label %8
    i16 20311, label %8
    i16 16716, label %8
  ]

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @ui_id_brush_get_icon(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %10

8:                                                ; preds = %3, %3, %3, %3, %3
  %9 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %1) #8
  tail call fastcc void @ui_id_icon_render(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #9
  br label %10

10:                                               ; preds = %3, %8, %6
  %11 = phi i32 [ 0, %3 ], [ %9, %8 ], [ %7, %6 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_id_brush_get_icon(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !66 {
  %3 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = and i32 %4, 268435456
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %1) #8
  tail call fastcc void @ui_id_brush_render(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %49

9:                                                ; preds = %2
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %11 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %10, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 27
  %17 = load i32, ptr %16, align 8, !tbaa !72
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = and i32 %17, 12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = and i32 %17, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %37

26:                                               ; preds = %9
  %27 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %33

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 34
  br label %39

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 35
  br label %39

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.SpaceImage, ptr %27, i64 0, i32 17
  %35 = load i8, ptr %34, align 4, !tbaa !76
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %47

37:                                               ; preds = %23, %33
  %38 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 36
  br label %39

39:                                               ; preds = %29, %37, %31
  %40 = phi ptr [ @brush_sculpt_tool_items, %29 ], [ @brush_vertex_tool_items, %31 ], [ @brush_image_tool_items, %37 ]
  %41 = phi ptr [ %30, %29 ], [ %32, %31 ], [ %38, %37 ]
  %42 = load i8, ptr %41, align 1, !tbaa !45
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 7
  %45 = tail call zeroext i8 @RNA_enum_icon_from_value(ptr noundef nonnull %40, i32 noundef %43, ptr noundef nonnull %44) #8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %26, %23, %33, %39
  %48 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 7
  store i32 0, ptr %48, align 8, !tbaa !82
  br label %49

49:                                               ; preds = %39, %47, %7
  %50 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !82
  ret i32 %51
}

; Function Attrs: optsize
declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_id_icon_render(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #3 !PGOFuncName !83 {
  %4 = tail call ptr @BKE_previewimg_get(ptr noundef %1) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = icmp ne i8 %2, 0
  %8 = zext i1 %7 to i32
  tail call fastcc void @ui_id_preview_image_render_size(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %8) #9
  br label %9

9:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @UI_rnaptr_icon_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef %12) #8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 8, !tbaa !87
  %17 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %16, ptr noundef nonnull @RNA_MaterialSlot) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #8
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  br label %36

21:                                               ; preds = %15
  %22 = load ptr, ptr %11, align 8, !tbaa !87
  %23 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %22, ptr noundef nonnull @RNA_TextureSlot) #8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #8
  %26 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  br label %36

27:                                               ; preds = %21
  %28 = load ptr, ptr %11, align 8, !tbaa !87
  %29 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %28, ptr noundef nonnull @RNA_DynamicPaintSurface) #8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 8, !tbaa !84
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 10
  %34 = load i16, ptr %33, align 4, !tbaa !88
  %35 = icmp ult i16 %34, 3
  br i1 %35, label %44, label %48

36:                                               ; preds = %10, %19, %25
  %37 = phi ptr [ %20, %19 ], [ %26, %25 ], [ %1, %10 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = call i32 @ui_id_icon_get(ptr noundef %0, ptr noundef nonnull %38, i8 noundef zeroext %3) #9
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 %2, i32 %41
  br label %48

44:                                               ; preds = %31
  %45 = zext nneg i16 %34 to i64
  %46 = getelementptr inbounds [3 x i32], ptr @switch.table.UI_rnaptr_icon_get, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %27, %31, %44, %36, %4, %40
  %49 = phi i32 [ %43, %40 ], [ %2, %4 ], [ %2, %36 ], [ %47, %44 ], [ %2, %31 ], [ %2, %27 ]
  ret i32 %49
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_ID(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_icon_draw_aspect(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
  tail call fastcc void @icon_draw_at_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i32 noundef 0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_draw_at_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i32 noundef %5) unnamed_addr #3 !PGOFuncName !90 {
  %7 = tail call fastcc i32 @get_draw_size(i32 noundef %5) #9, !range !91
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4, ptr noundef null, i32 noundef %5, i32 noundef %7, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_icon_draw_aspect_color(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, ptr noundef %4) local_unnamed_addr #3 {
  %6 = tail call fastcc i32 @get_draw_size(i32 noundef 0) #9, !range !91
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef 1.000000e+00, ptr noundef %4, i32 noundef 0, i32 noundef %6, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @get_draw_size(i32 noundef %0) unnamed_addr #2 !PGOFuncName !92 {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, i32 16, i32 96
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i8 noundef zeroext %8) unnamed_addr #3 !PGOFuncName !93 {
  %10 = tail call ptr @UI_GetTheme() #8
  %11 = sitofp i32 %7 to float
  %12 = tail call ptr @BKE_icon_get(i32 noundef %2) #8
  %13 = getelementptr inbounds %struct.bTheme, ptr %10, i64 0, i32 3, i32 25
  %14 = load float, ptr %13, align 8, !tbaa !94
  %15 = fmul float %14, %4
  %16 = icmp eq ptr %12, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !48
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %75, label %21

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.icon_draw_size, i32 noundef %2) #9
  br label %75

23:                                               ; preds = %9
  %24 = load ptr, ptr %12, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @icon_create_drawinfo() #9
  store ptr %27, ptr %12, align 8, !tbaa !52
  %28 = getelementptr inbounds %struct.Icon, ptr %12, i64 0, i32 3
  store ptr @UI_icons_free_drawinfo, ptr %28, align 8, !tbaa !102
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %24, %23 ], [ %27, %26 ]
  %31 = fdiv float %11, %3
  %32 = fadd float %31, 5.000000e-01
  %33 = fptosi float %32 to i32
  %34 = load i32, ptr %30, align 8, !tbaa !43
  switch i32 %34, label %75 [
    i32 3, label %35
    i32 1, label %40
    i32 2, label %48
    i32 0, label %59
  ]

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.DrawInfo, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = fptosi float %0 to i32
  %39 = fptosi float %1 to i32
  tail call void %37(i32 noundef %38, i32 noundef %39, i32 noundef %33, i32 noundef %33, float noundef 1.000000e+00) #8
  br label %75

40:                                               ; preds = %29
  tail call void @glBlendFunc(i32 noundef 1, i32 noundef 771) #8
  %41 = sitofp i32 %33 to float
  %42 = getelementptr inbounds %struct.DrawInfo, ptr %30, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !45
  %44 = getelementptr inbounds i8, ptr %30, i64 12
  %45 = load i32, ptr %44, align 4, !tbaa !45
  %46 = getelementptr inbounds %struct.DrawInfo, ptr %30, i64 0, i32 1, i32 1, i64 4
  %47 = load i32, ptr %46, align 4, !tbaa !45
  tail call fastcc void @icon_draw_texture(float noundef %0, float noundef %1, float noundef %41, float noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, float noundef %15, ptr noundef %5) #9
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  br label %75

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.DrawInfo, ptr %30, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  %51 = getelementptr inbounds %struct.IconImage, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %48
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  %55 = load i32, ptr %50, align 8, !tbaa !103
  %56 = getelementptr inbounds %struct.IconImage, ptr %50, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !104
  %58 = load ptr, ptr %51, align 8, !tbaa !46
  tail call fastcc void @icon_draw_rect(float noundef %0, float noundef %1, i32 noundef %33, i32 noundef %33, i32 noundef %55, i32 noundef %57, ptr noundef %58, float noundef %15, ptr noundef %5, i8 noundef zeroext %8) #9
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  br label %75

59:                                               ; preds = %29
  %60 = getelementptr inbounds %struct.Icon, ptr %12, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !105
  %62 = tail call ptr @BKE_previewimg_get(ptr noundef %61) #8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %59
  %65 = zext nneg i32 %6 to i64
  %66 = getelementptr inbounds %struct.PreviewImage, ptr %62, i64 0, i32 4, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  tail call void @glBlendFunc(i32 noundef 1, i32 noundef 771) #8
  %70 = getelementptr inbounds [2 x i32], ptr %62, i64 0, i64 %65
  %71 = load i32, ptr %70, align 4, !tbaa !63
  %72 = getelementptr inbounds %struct.PreviewImage, ptr %62, i64 0, i32 1, i64 %65
  %73 = load i32, ptr %72, align 4, !tbaa !63
  %74 = load ptr, ptr %66, align 8, !tbaa !34
  tail call fastcc void @icon_draw_rect(float noundef %0, float noundef %1, i32 noundef %33, i32 noundef %33, i32 noundef %71, i32 noundef %73, ptr noundef %74, float noundef 1.000000e+00, ptr noundef null, i8 noundef zeroext %8) #9
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  br label %75

75:                                               ; preds = %64, %35, %54, %40, %29, %59, %69, %48, %17, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_icon_draw(float noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !106
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !110
  %6 = sitofp i32 %5 to float
  %7 = fmul float %4, %6
  %8 = fdiv float %7, 7.200000e+01
  %9 = fdiv float 1.000000e+00, %8
  tail call void @UI_icon_draw_aspect(float noundef %0, float noundef %1, i32 noundef %2, float noundef %9, float noundef 1.000000e+00) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #3 {
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %3, float noundef 1.000000e+00, float noundef %4, ptr noundef null, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_icon_draw_preview(float noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  tail call fastcc void @icon_draw_at_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef 1.000000e+00, float noundef 1.000000e+00, i32 noundef 1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_icon_draw_preview_aspect(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #3 {
  tail call fastcc void @icon_draw_at_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef 1.000000e+00, i32 noundef 1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_icon_draw_preview_aspect_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef 1.000000e+00, ptr noundef null, i32 noundef 1, i32 noundef %4, i8 noundef zeroext 1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_id_brush_render(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !111 {
  %3 = tail call ptr @BKE_previewimg_get(ptr noundef %1) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %17
  %6 = phi i1 [ false, %17 ], [ true, %2 ]
  %7 = phi i64 [ 1, %17 ], [ 0, %2 ]
  %8 = getelementptr inbounds %struct.PreviewImage, ptr %3, i64 0, i32 2, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !65
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.PreviewImage, ptr %3, i64 0, i32 4, i64 %7
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %5
  %16 = trunc i64 %7 to i32
  tail call fastcc void @icon_set_image(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %16) #9
  store i16 0, ptr %8, align 2, !tbaa !65
  br label %17

17:                                               ; preds = %11, %15
  br i1 %6, label %5, label %18, !llvm.loop !112

18:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_enum_icon_from_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_previewimg_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_set_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !113 {
  tail call fastcc void @icon_create_rect(ptr noundef %2, i32 noundef %3) #9
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds %struct.PreviewImage, ptr %2, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %5
  %9 = load i32, ptr %8, align 4, !tbaa !63
  %10 = getelementptr inbounds %struct.PreviewImage, ptr %2, i64 0, i32 1, i64 %5
  %11 = load i32, ptr %10, align 4, !tbaa !63
  tail call void @ED_preview_icon_job(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %7, i32 noundef %9, i32 noundef %11) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_create_rect(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !114 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 4, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @preview_render_size(i32 noundef %1) #9, !range !115
  %9 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 %3
  store i32 %8, ptr %9, align 4, !tbaa !63
  %10 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 1, i64 %3
  store i32 %8, ptr %10, align 4, !tbaa !63
  %11 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 2, i64 %3
  store i16 1, ptr %11, align 2, !tbaa !65
  %12 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 3, i64 %3
  store i16 0, ptr %12, align 2, !tbaa !65
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = shl nuw nsw i32 %8, 2
  %15 = mul nuw nsw i32 %14, %8
  %16 = zext nneg i32 %15 to i64
  %17 = tail call ptr %13(i64 noundef %16, ptr noundef nonnull @.str.7) #8
  store ptr %17, ptr %4, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: optsize
declare void @ED_preview_icon_job(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @preview_render_size(i32 noundef %0) unnamed_addr #2 !PGOFuncName !116 {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, i32 32, i32 96
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_id_preview_image_render_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !117 {
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds %struct.PreviewImage, ptr %2, i64 0, i32 2, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !65
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.PreviewImage, ptr %2, i64 0, i32 4, i64 %5
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %4
  tail call fastcc void @icon_set_image(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #9
  store i16 0, ptr %6, align 2, !tbaa !65
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: optsize
declare ptr @UI_GetTheme() local_unnamed_addr #4

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_draw_texture(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, ptr noundef readonly %8) unnamed_addr #3 !PGOFuncName !118 {
  %10 = icmp eq ptr %8, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load float, ptr %8, align 4, !tbaa !119
  %13 = getelementptr inbounds float, ptr %8, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !119
  %15 = getelementptr inbounds float, ptr %8, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !119
  tail call void @glColor4f(float noundef %12, float noundef %14, float noundef %16, float noundef %7) #8
  br label %18

17:                                               ; preds = %9
  tail call void @glColor4f(float noundef %7, float noundef %7, float noundef %7, float noundef %7) #8
  br label %18

18:                                               ; preds = %17, %11
  %19 = sitofp i32 %4 to float
  %20 = fmul float %19, 0.000000e+00
  %21 = add nsw i32 %6, %4
  %22 = sitofp i32 %21 to float
  %23 = fmul float %22, 0.000000e+00
  %24 = sitofp i32 %5 to float
  %25 = fmul float %24, 0.000000e+00
  %26 = add nsw i32 %6, %5
  %27 = sitofp i32 %26 to float
  %28 = fmul float %27, 0.000000e+00
  tail call void @glEnable(i32 noundef 3553) #8
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #8
  tail call void @glTexEnvf(i32 noundef 34048, i32 noundef 34049, float noundef -5.000000e-01) #8
  tail call void @glBegin(i32 noundef 7) #8
  tail call void @glTexCoord2f(float noundef %20, float noundef %25) #8
  tail call void @glVertex2f(float noundef %0, float noundef %1) #8
  tail call void @glTexCoord2f(float noundef %23, float noundef %25) #8
  %29 = fadd float %0, %2
  tail call void @glVertex2f(float noundef %29, float noundef %1) #8
  tail call void @glTexCoord2f(float noundef %23, float noundef %28) #8
  %30 = fadd float %1, %3
  tail call void @glVertex2f(float noundef %29, float noundef %30) #8
  tail call void @glTexCoord2f(float noundef %20, float noundef %28) #8
  tail call void @glVertex2f(float noundef %0, float noundef %30) #8
  tail call void @glEnd() #8
  tail call void @glTexEnvf(i32 noundef 34048, i32 noundef 34049, float noundef 0.000000e+00) #8
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #8
  tail call void @glDisable(i32 noundef 3553) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_draw_rect(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, float noundef %7, ptr noundef readonly %8, i8 noundef zeroext %9) unnamed_addr #3 !PGOFuncName !120 {
  %11 = add i32 %2, -2001
  %12 = icmp ult i32 %11, -2000
  %13 = add i32 %3, -2001
  %14 = icmp ult i32 %13, -2000
  %15 = or i1 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.icon_draw_rect, i32 noundef %2, i32 noundef %3) #9
  br label %56

18:                                               ; preds = %10
  %19 = fcmp une float %7, 1.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @glPixelTransferf(i32 noundef 3356, float noundef %7) #8
  br label %21

21:                                               ; preds = %20, %18
  %22 = icmp eq ptr %8, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %21
  %24 = load float, ptr %8, align 4, !tbaa !119
  tail call void @glPixelTransferf(i32 noundef 3348, float noundef %24) #8
  %25 = getelementptr inbounds float, ptr %8, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !119
  tail call void @glPixelTransferf(i32 noundef 3352, float noundef %26) #8
  %27 = getelementptr inbounds float, ptr %8, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !119
  tail call void @glPixelTransferf(i32 noundef 3354, float noundef %28) #8
  br label %29

29:                                               ; preds = %23, %21
  %30 = icmp eq i32 %4, %2
  %31 = icmp eq i32 %5, %3
  %32 = or i1 %30, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @IMB_allocImBuf(i32 noundef %4, i32 noundef %5, i8 noundef zeroext 32, i32 noundef 1) #8
  %35 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = mul nsw i32 %5, %4
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %36, ptr align 4 %6, i64 %39, i1 false)
  %40 = tail call ptr @IMB_scaleImBuf(ptr noundef %34, i32 noundef %2, i32 noundef %3) #8
  %41 = load ptr, ptr %35, align 8, !tbaa !57
  br label %42

42:                                               ; preds = %33, %29
  %43 = phi ptr [ %41, %33 ], [ %6, %29 ]
  %44 = phi ptr [ %34, %33 ], [ null, %29 ]
  %45 = icmp eq i8 %9, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @glaDrawPixelsSafe(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef 6408, i32 noundef 5121, ptr noundef %43) #8
  br label %48

47:                                               ; preds = %42
  tail call void @glRasterPos2f(float noundef %0, float noundef %1) #8
  tail call void @glDrawPixels(i32 noundef %2, i32 noundef %3, i32 noundef 6408, i32 noundef 5121, ptr noundef %43) #8
  br label %48

48:                                               ; preds = %47, %46
  %49 = icmp eq ptr %44, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  tail call void @IMB_freeImBuf(ptr noundef nonnull %44) #8
  br label %51

51:                                               ; preds = %50, %48
  %52 = fcmp une float %7, 0.000000e+00
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  tail call void @glPixelTransferf(i32 noundef 3356, float noundef 1.000000e+00) #8
  br label %54

54:                                               ; preds = %53, %51
  br i1 %22, label %56, label %55

55:                                               ; preds = %54
  tail call void @glPixelTransferf(i32 noundef 3348, float noundef 1.000000e+00) #8
  tail call void @glPixelTransferf(i32 noundef 3352, float noundef 1.000000e+00) #8
  tail call void @glPixelTransferf(i32 noundef 3354, float noundef 1.000000e+00) #8
  br label %56

56:                                               ; preds = %54, %55, %16
  ret void
}

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glTexEnvf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #4

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glPixelTransferf(i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @IMB_scaleImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glaDrawPixelsSafe(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glRasterPos2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glDrawPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind optsize willreturn memory(read) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !42, i64 272}
!41 = !{!"IconFile", !35, i64 0, !35, i64 8, !36, i64 16, !42, i64 272}
!42 = !{!"int", !36, i64 0}
!43 = !{!44, !42, i64 0}
!44 = !{!"DrawInfo", !42, i64 0, !36, i64 8}
!45 = !{!36, !36, i64 0}
!46 = !{!47, !35, i64 8}
!47 = !{!"IconImage", !42, i64 0, !42, i64 4, !35, i64 8, !35, i64 16, !42, i64 24}
!48 = !{!49, !42, i64 2100}
!49 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !50, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !51, i64 2084, !51, i64 2086, !51, i64 2088, !36, i64 2090, !51, i64 2092, !42, i64 2096, !42, i64 2100, !36, i64 2104, !42, i64 2108, !42, i64 2112, !36, i64 2116}
!50 = !{!"ListBase", !35, i64 0, !35, i64 8}
!51 = !{!"short", !36, i64 0}
!52 = !{!53, !35, i64 0}
!53 = !{!"Icon", !35, i64 0, !35, i64 8, !51, i64 16, !35, i64 24}
!54 = !{!"interface_icons.c:icon_create_drawinfo"}
!55 = !{!47, !35, i64 16}
!56 = !{!47, !42, i64 24}
!57 = !{!58, !35, i64 40}
!58 = !{!"ImBuf", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !59, i64 112, !36, i64 120, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !35, i64 296, !35, i64 304, !42, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !42, i64 2376, !35, i64 2384, !42, i64 2392, !42, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !42, i64 2432, !60, i64 2436, !61, i64 2456}
!59 = !{!"float", !36, i64 0}
!60 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!61 = !{!"DDSData", !42, i64 0, !42, i64 4, !35, i64 8, !42, i64 16}
!62 = !{!58, !42, i64 16}
!63 = !{!42, !42, i64 0}
!64 = !{!58, !42, i64 20}
!65 = !{!51, !51, i64 0}
!66 = !{!"interface_icons.c:ui_id_brush_get_icon"}
!67 = !{!68, !42, i64 1856}
!68 = !{!"Brush", !69, i64 0, !70, i64 120, !35, i64 144, !71, i64 152, !71, i64 464, !35, i64 776, !35, i64 784, !35, i64 792, !35, i64 800, !35, i64 808, !36, i64 816, !59, i64 1840, !51, i64 1844, !51, i64 1846, !59, i64 1848, !42, i64 1852, !42, i64 1856, !42, i64 1860, !59, i64 1864, !42, i64 1868, !42, i64 1872, !42, i64 1876, !42, i64 1880, !59, i64 1884, !59, i64 1888, !36, i64 1892, !59, i64 1904, !36, i64 1908, !42, i64 1920, !59, i64 1924, !59, i64 1928, !42, i64 1932, !42, i64 1936, !42, i64 1940, !36, i64 1944, !36, i64 1945, !36, i64 1946, !36, i64 1947, !59, i64 1948, !59, i64 1952, !59, i64 1956, !59, i64 1960, !59, i64 1964, !42, i64 1968, !42, i64 1972, !42, i64 1976, !59, i64 1980, !59, i64 1984, !42, i64 1988, !42, i64 1992, !59, i64 1996, !36, i64 2000, !36, i64 2012, !36, i64 2024, !36, i64 2032, !36, i64 2040, !36, i64 2048}
!69 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !51, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!70 = !{!"BrushClone", !35, i64 0, !36, i64 8, !59, i64 16, !59, i64 20}
!71 = !{!"MTex", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !59, i64 116, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !51, i64 128, !51, i64 130, !36, i64 132, !36, i64 133, !59, i64 140, !59, i64 144, !59, i64 148, !59, i64 152, !59, i64 156, !59, i64 160, !59, i64 164, !59, i64 168, !59, i64 172, !59, i64 176, !59, i64 180, !59, i64 184, !59, i64 188, !59, i64 192, !59, i64 196, !59, i64 200, !59, i64 204, !59, i64 208, !59, i64 212, !59, i64 216, !59, i64 220, !59, i64 224, !59, i64 228, !59, i64 232, !59, i64 236, !59, i64 240, !59, i64 244, !59, i64 248, !59, i64 252, !59, i64 256, !59, i64 260, !59, i64 264, !59, i64 268, !59, i64 272, !59, i64 276, !59, i64 280, !59, i64 284, !59, i64 288, !59, i64 292, !59, i64 296, !59, i64 300, !59, i64 304, !59, i64 308}
!72 = !{!73, !42, i64 432}
!73 = !{!"Object", !69, i64 0, !35, i64 120, !35, i64 128, !51, i64 136, !51, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !74, i64 312, !35, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !42, i64 432, !42, i64 436, !35, i64 440, !35, i64 448, !42, i64 456, !42, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !59, i64 616, !59, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !42, i64 944, !51, i64 948, !51, i64 950, !51, i64 952, !51, i64 954, !51, i64 956, !51, i64 958, !51, i64 960, !51, i64 962, !51, i64 964, !36, i64 966, !36, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !59, i64 988, !59, i64 992, !59, i64 996, !59, i64 1000, !59, i64 1004, !59, i64 1008, !59, i64 1012, !59, i64 1016, !59, i64 1020, !59, i64 1024, !59, i64 1028, !59, i64 1032, !51, i64 1036, !51, i64 1038, !51, i64 1040, !36, i64 1042, !36, i64 1043, !51, i64 1044, !36, i64 1046, !36, i64 1047, !59, i64 1048, !59, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !59, i64 1120, !51, i64 1124, !51, i64 1126, !36, i64 1128, !42, i64 1144, !42, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !51, i64 1162, !36, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !51, i64 1266, !59, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !75, i64 1304, !75, i64 1312, !42, i64 1320, !42, i64 1324, !50, i64 1328, !50, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !50, i64 1400, !35, i64 1416}
!74 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !51, i64 16, !51, i64 18, !51, i64 20, !51, i64 22, !51, i64 24, !51, i64 26, !51, i64 28, !51, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!75 = !{!"long", !36, i64 0}
!76 = !{!77, !36, i64 10556}
!77 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !50, i64 16, !42, i64 32, !42, i64 36, !35, i64 40, !78, i64 48, !35, i64 88, !79, i64 96, !80, i64 5360, !35, i64 10520, !36, i64 10528, !59, i64 10536, !59, i64 10540, !59, i64 10544, !59, i64 10548, !59, i64 10552, !36, i64 10556, !36, i64 10557, !51, i64 10558, !51, i64 10560, !51, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !81, i64 10568}
!78 = !{!"ImageUser", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !51, i64 28, !51, i64 30, !51, i64 32, !51, i64 34, !42, i64 36}
!79 = !{!"Scopes", !42, i64 0, !42, i64 4, !42, i64 8, !59, i64 12, !42, i64 16, !59, i64 20, !59, i64 24, !42, i64 28, !59, i64 32, !42, i64 36, !36, i64 40, !80, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !42, i64 5256, !42, i64 5260}
!80 = !{!"Histogram", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !59, i64 5128, !59, i64 5132, !51, i64 5136, !51, i64 5138, !42, i64 5140, !36, i64 5144}
!81 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!82 = !{!69, !42, i64 104}
!83 = !{!"interface_icons.c:ui_id_icon_render"}
!84 = !{!85, !35, i64 16}
!85 = !{!"PointerRNA", !86, i64 0, !35, i64 8, !35, i64 16}
!86 = !{!"", !35, i64 0}
!87 = !{!85, !35, i64 8}
!88 = !{!89, !51, i64 140}
!89 = !{!"DynamicPaintSurface", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !50, i64 56, !42, i64 72, !36, i64 76, !51, i64 140, !51, i64 142, !51, i64 144, !51, i64 146, !51, i64 148, !51, i64 150, !51, i64 152, !51, i64 154, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !36, i64 184, !35, i64 200, !36, i64 208, !42, i64 272, !42, i64 276, !59, i64 280, !59, i64 284, !59, i64 288, !59, i64 292, !59, i64 296, !59, i64 300, !59, i64 304, !59, i64 308, !59, i64 312, !59, i64 316, !59, i64 320, !59, i64 324, !59, i64 328, !59, i64 332, !59, i64 336, !42, i64 340, !36, i64 344, !36, i64 408, !36, i64 1432, !36, i64 1496}
!90 = !{!"interface_icons.c:icon_draw_at_size"}
!91 = !{i32 16, i32 97}
!92 = !{!"interface_icons.c:get_draw_size"}
!93 = !{!"interface_icons.c:icon_draw_size"}
!94 = !{!95, !59, i64 944}
!95 = !{!"bTheme", !35, i64 0, !35, i64 8, !36, i64 16, !96, i64 48, !100, i64 960, !100, i64 1680, !100, i64 2400, !100, i64 3120, !100, i64 3840, !100, i64 4560, !100, i64 5280, !100, i64 6000, !100, i64 6720, !100, i64 7440, !100, i64 8160, !100, i64 8880, !100, i64 9600, !100, i64 10320, !100, i64 11040, !100, i64 11760, !100, i64 12480, !36, i64 13200, !42, i64 13520, !42, i64 13524}
!96 = !{!"ThemeUI", !97, i64 0, !97, i64 32, !97, i64 64, !97, i64 96, !97, i64 128, !97, i64 160, !97, i64 192, !97, i64 224, !97, i64 256, !97, i64 288, !97, i64 320, !97, i64 352, !97, i64 384, !97, i64 416, !97, i64 448, !97, i64 480, !97, i64 512, !97, i64 544, !98, i64 576, !99, i64 608, !36, i64 624, !59, i64 628, !51, i64 632, !36, i64 634, !36, i64 640, !59, i64 896, !36, i64 900, !36, i64 904, !36, i64 908}
!97 = !{!"uiWidgetColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !51, i64 24, !51, i64 26, !51, i64 28, !51, i64 30}
!98 = !{!"uiWidgetStateColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !59, i64 24, !59, i64 28}
!99 = !{!"uiPanelColors", !36, i64 0, !36, i64 4, !51, i64 8, !51, i64 10, !42, i64 12}
!100 = !{!"ThemeSpace", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !99, i64 80, !101, i64 96, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !36, i64 300, !36, i64 304, !36, i64 308, !36, i64 312, !36, i64 316, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !36, i64 336, !36, i64 340, !36, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !36, i64 368, !36, i64 372, !36, i64 376, !36, i64 380, !36, i64 384, !36, i64 388, !36, i64 392, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !36, i64 421, !36, i64 422, !36, i64 423, !36, i64 424, !36, i64 428, !36, i64 432, !36, i64 436, !36, i64 440, !36, i64 444, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !36, i64 464, !36, i64 468, !36, i64 472, !36, i64 476, !36, i64 480, !36, i64 484, !36, i64 488, !36, i64 492, !36, i64 496, !36, i64 500, !36, i64 504, !36, i64 508, !36, i64 512, !36, i64 516, !36, i64 520, !36, i64 524, !36, i64 528, !36, i64 532, !36, i64 536, !36, i64 540, !36, i64 541, !36, i64 545, !36, i64 549, !36, i64 553, !36, i64 557, !36, i64 561, !36, i64 565, !36, i64 569, !36, i64 573, !36, i64 577, !36, i64 581, !36, i64 584, !36, i64 588, !36, i64 592, !36, i64 596, !36, i64 600, !36, i64 604, !36, i64 608, !36, i64 612, !36, i64 616, !36, i64 620, !36, i64 624, !36, i64 628, !36, i64 632, !36, i64 636, !36, i64 640, !36, i64 644, !36, i64 648, !36, i64 652, !36, i64 656, !36, i64 660, !36, i64 664, !36, i64 668, !36, i64 672, !36, i64 676, !36, i64 680, !36, i64 684, !36, i64 688, !36, i64 692, !36, i64 696, !36, i64 700, !36, i64 704, !36, i64 708, !36, i64 712, !36, i64 716}
!101 = !{!"uiGradientColors", !36, i64 0, !36, i64 4, !42, i64 8, !42, i64 12}
!102 = !{!53, !35, i64 24}
!103 = !{!47, !42, i64 0}
!104 = !{!47, !42, i64 4}
!105 = !{!53, !35, i64 8}
!106 = !{!107, !59, i64 10908}
!107 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !42, i64 8468, !51, i64 8472, !51, i64 8474, !51, i64 8476, !51, i64 8478, !51, i64 8480, !51, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !51, i64 8496, !51, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !51, i64 8528, !51, i64 8530, !51, i64 8532, !51, i64 8534, !50, i64 8536, !50, i64 8552, !50, i64 8568, !50, i64 8584, !50, i64 8600, !50, i64 8616, !50, i64 8632, !36, i64 8648, !51, i64 8712, !51, i64 8714, !51, i64 8716, !51, i64 8718, !51, i64 8720, !51, i64 8722, !51, i64 8724, !51, i64 8726, !36, i64 8728, !51, i64 8896, !51, i64 8898, !51, i64 8900, !51, i64 8902, !51, i64 8904, !51, i64 8906, !51, i64 8908, !51, i64 8910, !42, i64 8912, !42, i64 8916, !51, i64 8920, !51, i64 8922, !51, i64 8924, !51, i64 8926, !51, i64 8928, !51, i64 8930, !51, i64 8932, !51, i64 8934, !51, i64 8936, !51, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !51, i64 8944, !51, i64 8946, !51, i64 8948, !51, i64 8950, !51, i64 8952, !51, i64 8954, !59, i64 8956, !59, i64 8960, !42, i64 8964, !51, i64 8968, !51, i64 8970, !59, i64 8972, !51, i64 8976, !51, i64 8978, !51, i64 8980, !51, i64 8982, !108, i64 8984, !36, i64 9760, !36, i64 9772, !51, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !42, i64 10896, !42, i64 10900, !59, i64 10904, !59, i64 10908, !42, i64 10912, !51, i64 10916, !51, i64 10918, !51, i64 10920, !51, i64 10922, !51, i64 10924, !51, i64 10926, !109, i64 10928}
!108 = !{!"ColorBand", !51, i64 0, !51, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!109 = !{!"WalkNavigation", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !51, i64 24, !36, i64 26}
!110 = !{!107, !42, i64 8524}
!111 = !{!"interface_icons.c:ui_id_brush_render"}
!112 = distinct !{!112, !39}
!113 = !{!"interface_icons.c:icon_set_image"}
!114 = !{!"interface_icons.c:icon_create_rect"}
!115 = !{i32 32, i32 97}
!116 = !{!"interface_icons.c:preview_render_size"}
!117 = !{!"interface_icons.c:ui_id_preview_image_render_size"}
!118 = !{!"interface_icons.c:icon_draw_texture"}
!119 = !{!59, !59, i64 0}
!120 = !{!"interface_icons.c:icon_draw_rect"}
