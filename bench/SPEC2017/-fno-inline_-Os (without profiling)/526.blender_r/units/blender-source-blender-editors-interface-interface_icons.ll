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
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IconFile, ptr %4, i64 0, i32 2
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2, !llvm.loop !9

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.IconFile, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !11
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
  %4 = load i32, ptr %0, align 8, !tbaa !14
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.DrawInfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.IconImage, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %15(ptr noundef nonnull %12) #8
  %16 = load ptr, ptr %7, align 8, !tbaa !16
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %16, %14 ], [ %8, %10 ]
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %19(ptr noundef %18) #8
  br label %20

20:                                               ; preds = %6, %17, %3
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
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
  %5 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !19
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.UI_icon_get_width, i32 noundef %0) #9
  br label %17

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @icon_create_drawinfo() #9
  store ptr %14, ptr %2, align 8, !tbaa !23
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
define internal fastcc noundef ptr @icon_create_drawinfo() unnamed_addr #3 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 24, ptr noundef nonnull @.str.4) #8
  store i32 0, ptr %2, align 8, !tbaa !14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @UI_icon_get_height(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @BKE_icon_get(i32 noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !19
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.UI_icon_get_height, i32 noundef %0) #9
  br label %17

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @icon_create_drawinfo() #9
  store ptr %14, ptr %2, align 8, !tbaa !23
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
  %5 = load ptr, ptr %2, align 8, !tbaa !23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.DrawInfo, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.IconImage, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.IconImage, ptr %9, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !26
  %16 = sext i32 %15 to i64
  %17 = tail call ptr @IMB_ibImageFromMemory(ptr noundef %13, i64 noundef %16, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.1) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %11
  %20 = tail call ptr @BKE_previewimg_create() #8
  %21 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !27
  %23 = getelementptr inbounds %struct.PreviewImage, ptr %20, i64 0, i32 4
  store ptr %22, ptr %23, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !32
  store i32 %25, ptr %20, align 8, !tbaa !33
  %26 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.PreviewImage, ptr %20, i64 0, i32 1
  store i32 %27, ptr %28, align 8, !tbaa !33
  store ptr null, ptr %21, align 8, !tbaa !27
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
  %5 = load i16, ptr %4, align 8, !tbaa !35
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
define internal fastcc i32 @ui_id_brush_get_icon(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !36
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
  %17 = load i32, ptr %16, align 8, !tbaa !41
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
  %35 = load i8, ptr %34, align 4, !tbaa !45
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %47

37:                                               ; preds = %23, %33
  %38 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 36
  br label %39

39:                                               ; preds = %29, %37, %31
  %40 = phi ptr [ @brush_sculpt_tool_items, %29 ], [ @brush_vertex_tool_items, %31 ], [ @brush_image_tool_items, %37 ]
  %41 = phi ptr [ %30, %29 ], [ %32, %31 ], [ %38, %37 ]
  %42 = load i8, ptr %41, align 1, !tbaa !16
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 7
  %45 = tail call zeroext i8 @RNA_enum_icon_from_value(ptr noundef nonnull %40, i32 noundef %43, ptr noundef nonnull %44) #8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %26, %23, %33, %39
  %48 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 7
  store i32 0, ptr %48, align 8, !tbaa !51
  br label %49

49:                                               ; preds = %39, %47, %7
  %50 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !51
  ret i32 %51
}

; Function Attrs: optsize
declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_id_icon_render(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #3 {
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
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef %12) #8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 8, !tbaa !55
  %17 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %16, ptr noundef nonnull @RNA_MaterialSlot) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #8
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  br label %36

21:                                               ; preds = %15
  %22 = load ptr, ptr %11, align 8, !tbaa !55
  %23 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %22, ptr noundef nonnull @RNA_TextureSlot) #8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #8
  %26 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  br label %36

27:                                               ; preds = %21
  %28 = load ptr, ptr %11, align 8, !tbaa !55
  %29 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %28, ptr noundef nonnull @RNA_DynamicPaintSurface) #8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 8, !tbaa !52
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 10
  %34 = load i16, ptr %33, align 4, !tbaa !56
  %35 = icmp ult i16 %34, 3
  br i1 %35, label %44, label %48

36:                                               ; preds = %10, %19, %25
  %37 = phi ptr [ %20, %19 ], [ %26, %25 ], [ %1, %10 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !5
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
define internal fastcc void @icon_draw_at_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i32 noundef %5) unnamed_addr #3 {
  %7 = tail call fastcc i32 @get_draw_size(i32 noundef %5) #9, !range !58
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4, ptr noundef null, i32 noundef %5, i32 noundef %7, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_icon_draw_aspect_color(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, ptr noundef %4) local_unnamed_addr #3 {
  %6 = tail call fastcc i32 @get_draw_size(i32 noundef 0) #9, !range !58
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef 1.000000e+00, ptr noundef %4, i32 noundef 0, i32 noundef %6, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @get_draw_size(i32 noundef %0) unnamed_addr #2 {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, i32 16, i32 96
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i8 noundef zeroext %8) unnamed_addr #3 {
  %10 = tail call ptr @UI_GetTheme() #8
  %11 = sitofp i32 %7 to float
  %12 = tail call ptr @BKE_icon_get(i32 noundef %2) #8
  %13 = getelementptr inbounds %struct.bTheme, ptr %10, i64 0, i32 3, i32 25
  %14 = load float, ptr %13, align 8, !tbaa !59
  %15 = fmul float %14, %4
  %16 = icmp eq ptr %12, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !19
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %75, label %21

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.icon_draw_size, i32 noundef %2) #9
  br label %75

23:                                               ; preds = %9
  %24 = load ptr, ptr %12, align 8, !tbaa !23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @icon_create_drawinfo() #9
  store ptr %27, ptr %12, align 8, !tbaa !23
  %28 = getelementptr inbounds %struct.Icon, ptr %12, i64 0, i32 3
  store ptr @UI_icons_free_drawinfo, ptr %28, align 8, !tbaa !67
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %24, %23 ], [ %27, %26 ]
  %31 = fdiv float %11, %3
  %32 = fadd float %31, 5.000000e-01
  %33 = fptosi float %32 to i32
  %34 = load i32, ptr %30, align 8, !tbaa !14
  switch i32 %34, label %75 [
    i32 3, label %35
    i32 1, label %40
    i32 2, label %48
    i32 0, label %59
  ]

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.DrawInfo, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  %38 = fptosi float %0 to i32
  %39 = fptosi float %1 to i32
  tail call void %37(i32 noundef %38, i32 noundef %39, i32 noundef %33, i32 noundef %33, float noundef 1.000000e+00) #8
  br label %75

40:                                               ; preds = %29
  tail call void @glBlendFunc(i32 noundef 1, i32 noundef 771) #8
  %41 = sitofp i32 %33 to float
  %42 = getelementptr inbounds %struct.DrawInfo, ptr %30, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !16
  %44 = getelementptr inbounds i8, ptr %30, i64 12
  %45 = load i32, ptr %44, align 4, !tbaa !16
  %46 = getelementptr inbounds %struct.DrawInfo, ptr %30, i64 0, i32 1, i32 1, i64 4
  %47 = load i32, ptr %46, align 4, !tbaa !16
  tail call fastcc void @icon_draw_texture(float noundef %0, float noundef %1, float noundef %41, float noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, float noundef %15, ptr noundef %5) #9
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  br label %75

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.DrawInfo, ptr %30, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !16
  %51 = getelementptr inbounds %struct.IconImage, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !17
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %48
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  %55 = load i32, ptr %50, align 8, !tbaa !68
  %56 = getelementptr inbounds %struct.IconImage, ptr %50, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !69
  %58 = load ptr, ptr %51, align 8, !tbaa !17
  tail call fastcc void @icon_draw_rect(float noundef %0, float noundef %1, i32 noundef %33, i32 noundef %33, i32 noundef %55, i32 noundef %57, ptr noundef %58, float noundef %15, ptr noundef %5, i8 noundef zeroext %8) #9
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  br label %75

59:                                               ; preds = %29
  %60 = getelementptr inbounds %struct.Icon, ptr %12, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !70
  %62 = tail call ptr @BKE_previewimg_get(ptr noundef %61) #8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %59
  %65 = zext nneg i32 %6 to i64
  %66 = getelementptr inbounds %struct.PreviewImage, ptr %62, i64 0, i32 4, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  tail call void @glBlendFunc(i32 noundef 1, i32 noundef 771) #8
  %70 = getelementptr inbounds [2 x i32], ptr %62, i64 0, i64 %65
  %71 = load i32, ptr %70, align 4, !tbaa !33
  %72 = getelementptr inbounds %struct.PreviewImage, ptr %62, i64 0, i32 1, i64 %65
  %73 = load i32, ptr %72, align 4, !tbaa !33
  %74 = load ptr, ptr %66, align 8, !tbaa !5
  tail call fastcc void @icon_draw_rect(float noundef %0, float noundef %1, i32 noundef %33, i32 noundef %33, i32 noundef %71, i32 noundef %73, ptr noundef %74, float noundef 1.000000e+00, ptr noundef null, i8 noundef zeroext %8) #9
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  br label %75

75:                                               ; preds = %64, %35, %54, %40, %29, %59, %69, %48, %17, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_icon_draw(float noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !71
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !75
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
define internal fastcc void @ui_id_brush_render(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call ptr @BKE_previewimg_get(ptr noundef %1) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %17
  %6 = phi i1 [ false, %17 ], [ true, %2 ]
  %7 = phi i64 [ 1, %17 ], [ 0, %2 ]
  %8 = getelementptr inbounds %struct.PreviewImage, ptr %3, i64 0, i32 2, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !35
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.PreviewImage, ptr %3, i64 0, i32 4, i64 %7
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %5
  %16 = trunc i64 %7 to i32
  tail call fastcc void @icon_set_image(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %16) #9
  store i16 0, ptr %8, align 2, !tbaa !35
  br label %17

17:                                               ; preds = %11, %15
  br i1 %6, label %5, label %18, !llvm.loop !76

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
define internal fastcc void @icon_set_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 {
  tail call fastcc void @icon_create_rect(ptr noundef %2, i32 noundef %3) #9
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds %struct.PreviewImage, ptr %2, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %5
  %9 = load i32, ptr %8, align 4, !tbaa !33
  %10 = getelementptr inbounds %struct.PreviewImage, ptr %2, i64 0, i32 1, i64 %5
  %11 = load i32, ptr %10, align 4, !tbaa !33
  tail call void @ED_preview_icon_job(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %7, i32 noundef %9, i32 noundef %11) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_create_rect(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 4, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @preview_render_size(i32 noundef %1) #9, !range !77
  %9 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 %3
  store i32 %8, ptr %9, align 4, !tbaa !33
  %10 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 1, i64 %3
  store i32 %8, ptr %10, align 4, !tbaa !33
  %11 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 2, i64 %3
  store i16 1, ptr %11, align 2, !tbaa !35
  %12 = getelementptr inbounds %struct.PreviewImage, ptr %0, i64 0, i32 3, i64 %3
  store i16 0, ptr %12, align 2, !tbaa !35
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %14 = shl nuw nsw i32 %8, 2
  %15 = mul nuw nsw i32 %14, %8
  %16 = zext nneg i32 %15 to i64
  %17 = tail call ptr %13(i64 noundef %16, ptr noundef nonnull @.str.7) #8
  store ptr %17, ptr %4, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: optsize
declare void @ED_preview_icon_job(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @preview_render_size(i32 noundef %0) unnamed_addr #2 {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, i32 32, i32 96
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_id_preview_image_render_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds %struct.PreviewImage, ptr %2, i64 0, i32 2, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !35
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.PreviewImage, ptr %2, i64 0, i32 4, i64 %5
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %4
  tail call fastcc void @icon_set_image(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #9
  store i16 0, ptr %6, align 2, !tbaa !35
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: optsize
declare ptr @UI_GetTheme() local_unnamed_addr #4

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_draw_texture(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, ptr noundef readonly %8) unnamed_addr #3 {
  %10 = icmp eq ptr %8, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load float, ptr %8, align 4, !tbaa !78
  %13 = getelementptr inbounds float, ptr %8, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !78
  %15 = getelementptr inbounds float, ptr %8, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !78
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
define internal fastcc void @icon_draw_rect(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, float noundef %7, ptr noundef readonly %8, i8 noundef zeroext %9) unnamed_addr #3 {
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
  %24 = load float, ptr %8, align 4, !tbaa !78
  tail call void @glPixelTransferf(i32 noundef 3348, float noundef %24) #8
  %25 = getelementptr inbounds float, ptr %8, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !78
  tail call void @glPixelTransferf(i32 noundef 3352, float noundef %26) #8
  %27 = getelementptr inbounds float, ptr %8, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !78
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
  %36 = load ptr, ptr %35, align 8, !tbaa !27
  %37 = mul nsw i32 %5, %4
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %36, ptr align 4 %6, i64 %39, i1 false)
  %40 = tail call ptr @IMB_scaleImBuf(ptr noundef %34, i32 noundef %2, i32 noundef %3) #8
  %41 = load ptr, ptr %35, align 8, !tbaa !27
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
!11 = !{!12, !13, i64 272}
!12 = !{!"IconFile", !6, i64 0, !6, i64 8, !7, i64 16, !13, i64 272}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !13, i64 0}
!15 = !{!"DrawInfo", !13, i64 0, !7, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !6, i64 8}
!18 = !{!"IconImage", !13, i64 0, !13, i64 4, !6, i64 8, !6, i64 16, !13, i64 24}
!19 = !{!20, !13, i64 2100}
!20 = !{!"Global", !6, i64 0, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 2057, !7, i64 2058, !21, i64 2064, !7, i64 2080, !7, i64 2081, !7, i64 2082, !22, i64 2084, !22, i64 2086, !22, i64 2088, !7, i64 2090, !22, i64 2092, !13, i64 2096, !13, i64 2100, !7, i64 2104, !13, i64 2108, !13, i64 2112, !7, i64 2116}
!21 = !{!"ListBase", !6, i64 0, !6, i64 8}
!22 = !{!"short", !7, i64 0}
!23 = !{!24, !6, i64 0}
!24 = !{!"Icon", !6, i64 0, !6, i64 8, !22, i64 16, !6, i64 24}
!25 = !{!18, !6, i64 16}
!26 = !{!18, !13, i64 24}
!27 = !{!28, !6, i64 40}
!28 = !{!"ImBuf", !6, i64 0, !6, i64 8, !13, i64 16, !13, i64 20, !7, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !6, i64 40, !6, i64 48, !7, i64 56, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !29, i64 112, !7, i64 120, !13, i64 280, !13, i64 284, !13, i64 288, !13, i64 292, !6, i64 296, !6, i64 304, !13, i64 312, !7, i64 316, !7, i64 1340, !6, i64 2368, !13, i64 2376, !6, i64 2384, !13, i64 2392, !13, i64 2396, !6, i64 2400, !6, i64 2408, !6, i64 2416, !6, i64 2424, !13, i64 2432, !30, i64 2436, !31, i64 2456}
!29 = !{!"float", !7, i64 0}
!30 = !{!"rcti", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!31 = !{!"DDSData", !13, i64 0, !13, i64 4, !6, i64 8, !13, i64 16}
!32 = !{!28, !13, i64 16}
!33 = !{!13, !13, i64 0}
!34 = !{!28, !13, i64 20}
!35 = !{!22, !22, i64 0}
!36 = !{!37, !13, i64 1856}
!37 = !{!"Brush", !38, i64 0, !39, i64 120, !6, i64 144, !40, i64 152, !40, i64 464, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !7, i64 816, !29, i64 1840, !22, i64 1844, !22, i64 1846, !29, i64 1848, !13, i64 1852, !13, i64 1856, !13, i64 1860, !29, i64 1864, !13, i64 1868, !13, i64 1872, !13, i64 1876, !13, i64 1880, !29, i64 1884, !29, i64 1888, !7, i64 1892, !29, i64 1904, !7, i64 1908, !13, i64 1920, !29, i64 1924, !29, i64 1928, !13, i64 1932, !13, i64 1936, !13, i64 1940, !7, i64 1944, !7, i64 1945, !7, i64 1946, !7, i64 1947, !29, i64 1948, !29, i64 1952, !29, i64 1956, !29, i64 1960, !29, i64 1964, !13, i64 1968, !13, i64 1972, !13, i64 1976, !29, i64 1980, !29, i64 1984, !13, i64 1988, !13, i64 1992, !29, i64 1996, !7, i64 2000, !7, i64 2012, !7, i64 2024, !7, i64 2032, !7, i64 2040, !7, i64 2048}
!38 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !22, i64 98, !13, i64 100, !13, i64 104, !13, i64 108, !6, i64 112}
!39 = !{!"BrushClone", !6, i64 0, !7, i64 8, !29, i64 16, !29, i64 20}
!40 = !{!"MTex", !22, i64 0, !22, i64 2, !22, i64 4, !22, i64 6, !6, i64 8, !6, i64 16, !7, i64 24, !7, i64 88, !7, i64 89, !7, i64 90, !7, i64 91, !7, i64 92, !7, i64 104, !29, i64 116, !22, i64 120, !22, i64 122, !22, i64 124, !22, i64 126, !22, i64 128, !22, i64 130, !7, i64 132, !7, i64 133, !29, i64 140, !29, i64 144, !29, i64 148, !29, i64 152, !29, i64 156, !29, i64 160, !29, i64 164, !29, i64 168, !29, i64 172, !29, i64 176, !29, i64 180, !29, i64 184, !29, i64 188, !29, i64 192, !29, i64 196, !29, i64 200, !29, i64 204, !29, i64 208, !29, i64 212, !29, i64 216, !29, i64 220, !29, i64 224, !29, i64 228, !29, i64 232, !29, i64 236, !29, i64 240, !29, i64 244, !29, i64 248, !29, i64 252, !29, i64 256, !29, i64 260, !29, i64 264, !29, i64 268, !29, i64 272, !29, i64 276, !29, i64 280, !29, i64 284, !29, i64 288, !29, i64 292, !29, i64 296, !29, i64 300, !29, i64 304, !29, i64 308}
!41 = !{!42, !13, i64 432}
!42 = !{!"Object", !38, i64 0, !6, i64 120, !6, i64 128, !22, i64 136, !22, i64 138, !13, i64 140, !13, i64 144, !13, i64 148, !7, i64 152, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !43, i64 312, !6, i64 360, !21, i64 368, !21, i64 384, !21, i64 400, !21, i64 416, !13, i64 432, !13, i64 436, !6, i64 440, !6, i64 448, !13, i64 456, !13, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !29, i64 616, !29, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !13, i64 944, !22, i64 948, !22, i64 950, !22, i64 952, !22, i64 954, !22, i64 956, !22, i64 958, !22, i64 960, !22, i64 962, !22, i64 964, !7, i64 966, !7, i64 967, !13, i64 968, !13, i64 972, !13, i64 976, !13, i64 980, !13, i64 984, !29, i64 988, !29, i64 992, !29, i64 996, !29, i64 1000, !29, i64 1004, !29, i64 1008, !29, i64 1012, !29, i64 1016, !29, i64 1020, !29, i64 1024, !29, i64 1028, !29, i64 1032, !22, i64 1036, !22, i64 1038, !22, i64 1040, !7, i64 1042, !7, i64 1043, !22, i64 1044, !7, i64 1046, !7, i64 1047, !29, i64 1048, !29, i64 1052, !21, i64 1056, !21, i64 1072, !21, i64 1088, !21, i64 1104, !29, i64 1120, !22, i64 1124, !22, i64 1126, !7, i64 1128, !13, i64 1144, !13, i64 1148, !6, i64 1152, !7, i64 1160, !7, i64 1161, !22, i64 1162, !7, i64 1164, !21, i64 1176, !21, i64 1192, !21, i64 1208, !21, i64 1224, !6, i64 1240, !6, i64 1248, !6, i64 1256, !7, i64 1264, !7, i64 1265, !22, i64 1266, !29, i64 1268, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !44, i64 1304, !44, i64 1312, !13, i64 1320, !13, i64 1324, !21, i64 1328, !21, i64 1344, !6, i64 1360, !6, i64 1368, !6, i64 1376, !7, i64 1384, !6, i64 1392, !21, i64 1400, !6, i64 1416}
!43 = !{!"bAnimVizSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !22, i64 16, !22, i64 18, !22, i64 20, !22, i64 22, !22, i64 24, !22, i64 26, !22, i64 28, !22, i64 30, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44}
!44 = !{!"long", !7, i64 0}
!45 = !{!46, !7, i64 10556}
!46 = !{!"SpaceImage", !6, i64 0, !6, i64 8, !21, i64 16, !13, i64 32, !13, i64 36, !6, i64 40, !47, i64 48, !6, i64 88, !48, i64 96, !49, i64 5360, !6, i64 10520, !7, i64 10528, !29, i64 10536, !29, i64 10540, !29, i64 10544, !29, i64 10548, !29, i64 10552, !7, i64 10556, !7, i64 10557, !22, i64 10558, !22, i64 10560, !22, i64 10562, !7, i64 10564, !7, i64 10565, !7, i64 10566, !7, i64 10567, !50, i64 10568}
!47 = !{!"ImageUser", !6, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !22, i64 28, !22, i64 30, !22, i64 32, !22, i64 34, !13, i64 36}
!48 = !{!"Scopes", !13, i64 0, !13, i64 4, !13, i64 8, !29, i64 12, !13, i64 16, !29, i64 20, !29, i64 24, !13, i64 28, !29, i64 32, !13, i64 36, !7, i64 40, !49, i64 64, !6, i64 5224, !6, i64 5232, !6, i64 5240, !6, i64 5248, !13, i64 5256, !13, i64 5260}
!49 = !{!"Histogram", !13, i64 0, !13, i64 4, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 3080, !7, i64 4104, !29, i64 5128, !29, i64 5132, !22, i64 5136, !22, i64 5138, !13, i64 5140, !7, i64 5144}
!50 = !{!"MaskSpaceInfo", !6, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11}
!51 = !{!38, !13, i64 104}
!52 = !{!53, !6, i64 16}
!53 = !{!"PointerRNA", !54, i64 0, !6, i64 8, !6, i64 16}
!54 = !{!"", !6, i64 0}
!55 = !{!53, !6, i64 8}
!56 = !{!57, !22, i64 140}
!57 = !{!"DynamicPaintSurface", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !21, i64 56, !13, i64 72, !7, i64 76, !22, i64 140, !22, i64 142, !22, i64 144, !22, i64 146, !22, i64 148, !22, i64 150, !22, i64 152, !22, i64 154, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !7, i64 184, !6, i64 200, !7, i64 208, !13, i64 272, !13, i64 276, !29, i64 280, !29, i64 284, !29, i64 288, !29, i64 292, !29, i64 296, !29, i64 300, !29, i64 304, !29, i64 308, !29, i64 312, !29, i64 316, !29, i64 320, !29, i64 324, !29, i64 328, !29, i64 332, !29, i64 336, !13, i64 340, !7, i64 344, !7, i64 408, !7, i64 1432, !7, i64 1496}
!58 = !{i32 16, i32 97}
!59 = !{!60, !29, i64 944}
!60 = !{!"bTheme", !6, i64 0, !6, i64 8, !7, i64 16, !61, i64 48, !65, i64 960, !65, i64 1680, !65, i64 2400, !65, i64 3120, !65, i64 3840, !65, i64 4560, !65, i64 5280, !65, i64 6000, !65, i64 6720, !65, i64 7440, !65, i64 8160, !65, i64 8880, !65, i64 9600, !65, i64 10320, !65, i64 11040, !65, i64 11760, !65, i64 12480, !7, i64 13200, !13, i64 13520, !13, i64 13524}
!61 = !{!"ThemeUI", !62, i64 0, !62, i64 32, !62, i64 64, !62, i64 96, !62, i64 128, !62, i64 160, !62, i64 192, !62, i64 224, !62, i64 256, !62, i64 288, !62, i64 320, !62, i64 352, !62, i64 384, !62, i64 416, !62, i64 448, !62, i64 480, !62, i64 512, !62, i64 544, !63, i64 576, !64, i64 608, !7, i64 624, !29, i64 628, !22, i64 632, !7, i64 634, !7, i64 640, !29, i64 896, !7, i64 900, !7, i64 904, !7, i64 908}
!62 = !{!"uiWidgetColors", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !22, i64 24, !22, i64 26, !22, i64 28, !22, i64 30}
!63 = !{!"uiWidgetStateColors", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !29, i64 24, !29, i64 28}
!64 = !{!"uiPanelColors", !7, i64 0, !7, i64 4, !22, i64 8, !22, i64 10, !13, i64 12}
!65 = !{!"ThemeSpace", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !64, i64 80, !66, i64 96, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !7, i64 421, !7, i64 422, !7, i64 423, !7, i64 424, !7, i64 428, !7, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !7, i64 456, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !7, i64 480, !7, i64 484, !7, i64 488, !7, i64 492, !7, i64 496, !7, i64 500, !7, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !7, i64 532, !7, i64 536, !7, i64 540, !7, i64 541, !7, i64 545, !7, i64 549, !7, i64 553, !7, i64 557, !7, i64 561, !7, i64 565, !7, i64 569, !7, i64 573, !7, i64 577, !7, i64 581, !7, i64 584, !7, i64 588, !7, i64 592, !7, i64 596, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !7, i64 620, !7, i64 624, !7, i64 628, !7, i64 632, !7, i64 636, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !7, i64 668, !7, i64 672, !7, i64 676, !7, i64 680, !7, i64 684, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716}
!66 = !{!"uiGradientColors", !7, i64 0, !7, i64 4, !13, i64 8, !13, i64 12}
!67 = !{!24, !6, i64 24}
!68 = !{!18, !13, i64 0}
!69 = !{!18, !13, i64 4}
!70 = !{!24, !6, i64 8}
!71 = !{!72, !29, i64 10908}
!72 = !{!"UserDef", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !13, i64 8468, !22, i64 8472, !22, i64 8474, !22, i64 8476, !22, i64 8478, !22, i64 8480, !22, i64 8482, !13, i64 8484, !13, i64 8488, !13, i64 8492, !22, i64 8496, !22, i64 8498, !13, i64 8500, !13, i64 8504, !13, i64 8508, !13, i64 8512, !13, i64 8516, !13, i64 8520, !13, i64 8524, !22, i64 8528, !22, i64 8530, !22, i64 8532, !22, i64 8534, !21, i64 8536, !21, i64 8552, !21, i64 8568, !21, i64 8584, !21, i64 8600, !21, i64 8616, !21, i64 8632, !7, i64 8648, !22, i64 8712, !22, i64 8714, !22, i64 8716, !22, i64 8718, !22, i64 8720, !22, i64 8722, !22, i64 8724, !22, i64 8726, !7, i64 8728, !22, i64 8896, !22, i64 8898, !22, i64 8900, !22, i64 8902, !22, i64 8904, !22, i64 8906, !22, i64 8908, !22, i64 8910, !13, i64 8912, !13, i64 8916, !22, i64 8920, !22, i64 8922, !22, i64 8924, !22, i64 8926, !22, i64 8928, !22, i64 8930, !22, i64 8932, !22, i64 8934, !22, i64 8936, !22, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !22, i64 8944, !22, i64 8946, !22, i64 8948, !22, i64 8950, !22, i64 8952, !22, i64 8954, !29, i64 8956, !29, i64 8960, !13, i64 8964, !22, i64 8968, !22, i64 8970, !29, i64 8972, !22, i64 8976, !22, i64 8978, !22, i64 8980, !22, i64 8982, !73, i64 8984, !7, i64 9760, !7, i64 9772, !22, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !13, i64 10896, !13, i64 10900, !29, i64 10904, !29, i64 10908, !13, i64 10912, !22, i64 10916, !22, i64 10918, !22, i64 10920, !22, i64 10922, !22, i64 10924, !22, i64 10926, !74, i64 10928}
!73 = !{!"ColorBand", !22, i64 0, !22, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!74 = !{!"WalkNavigation", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !22, i64 24, !7, i64 26}
!75 = !{!72, !13, i64 8524}
!76 = distinct !{!76, !10}
!77 = !{i32 32, i32 97}
!78 = !{!29, !29, i64 0}
