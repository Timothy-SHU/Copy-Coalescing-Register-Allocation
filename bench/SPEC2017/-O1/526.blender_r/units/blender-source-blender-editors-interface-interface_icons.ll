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

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
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
  %12 = load i32, ptr %11, align 8, !tbaa !41
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @UI_iconfile_list() local_unnamed_addr #2 {
  ret ptr @iconfilelist
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @UI_icons_free() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_icons_free_drawinfo(ptr noundef %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.DrawInfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.IconImage, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %12) #8
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %18 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void %17(ptr noundef %18) #8
  br label %19

19:                                               ; preds = %6, %16, %3
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %0) #8
  br label %21

21:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @UI_icon_get_width(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @BKE_icon_get(i32 noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.UI_icon_get_width, i32 noundef %0)
  br label %16

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = tail call ptr %14(i64 noundef 24, ptr noundef nonnull @.str.4) #8
  store i32 0, ptr %15, align 8, !tbaa !44
  store ptr %15, ptr %2, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %10, %13, %4, %8
  %17 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 16, %13 ], [ 16, %10 ]
  ret i32 %17
}

declare ptr @BKE_icon_get(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @UI_icon_get_height(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @BKE_icon_get(i32 noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.UI_icon_get_height, i32 noundef %0)
  br label %16

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = tail call ptr %14(i64 noundef 24, ptr noundef nonnull @.str.4) #8
  store i32 0, ptr %15, align 8, !tbaa !44
  store ptr %15, ptr %2, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %10, %13, %4, %8
  %17 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 16, %13 ], [ 16, %10 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @UI_icons_init(i32 noundef %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @UI_icon_to_preview(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @BKE_icon_get(i32 noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.DrawInfo, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
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

29:                                               ; preds = %19, %11, %4, %7
  %30 = phi ptr [ undef, %7 ], [ undef, %4 ], [ %20, %19 ], [ undef, %11 ]
  %31 = phi i1 [ true, %7 ], [ true, %4 ], [ false, %19 ], [ %18, %11 ]
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %1
  br label %33

33:                                               ; preds = %29, %32
  %34 = phi ptr [ null, %32 ], [ %30, %29 ]
  ret ptr %34
}

declare ptr @IMB_ibImageFromMemory(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BKE_previewimg_create() local_unnamed_addr #4

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @ui_id_icon_get(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !65
  switch i16 %5, label %153 [
    i16 21058, label %6
    i16 16717, label %101
    i16 17748, label %101
    i16 19785, label %101
    i16 20311, label %101
    i16 16716, label %101
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !66
  %9 = and i32 %8, 268435456
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @BKE_icon_getid(ptr noundef %1) #8
  %13 = tail call ptr @BKE_previewimg_get(ptr noundef %1) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %98, label %15

15:                                               ; preds = %11, %43
  %16 = phi i64 [ %44, %43 ], [ 0, %11 ]
  %17 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 2, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !65
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 4, i64 %16
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 4, i64 %16
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = icmp eq i64 %16, 0
  %30 = select i1 %29, i32 32, i32 96
  %31 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 %16
  store i32 %30, ptr %31, align 4, !tbaa !63
  %32 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 1, i64 %16
  store i32 %30, ptr %32, align 4, !tbaa !63
  store i16 1, ptr %17, align 2, !tbaa !65
  %33 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 3, i64 %16
  store i16 0, ptr %33, align 2, !tbaa !65
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %35 = select i1 %29, i64 4096, i64 36864
  %36 = tail call ptr %34(i64 noundef %35, ptr noundef nonnull @.str.7) #8
  store ptr %36, ptr %25, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %24, %28
  %38 = load ptr, ptr %25, align 8, !tbaa !34
  %39 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 %16
  %40 = load i32, ptr %39, align 4, !tbaa !63
  %41 = getelementptr inbounds %struct.PreviewImage, ptr %13, i64 0, i32 1, i64 %16
  %42 = load i32, ptr %41, align 4, !tbaa !63
  tail call void @ED_preview_icon_job(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %1, ptr noundef %38, i32 noundef %40, i32 noundef %42) #8
  store i16 0, ptr %17, align 2, !tbaa !65
  br label %43

43:                                               ; preds = %37, %20
  %44 = add nuw nsw i64 %16, 1
  %45 = icmp eq i64 %16, 0
  br i1 %45, label %15, label %98, !llvm.loop !71

46:                                               ; preds = %6
  %47 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %48 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %49 = icmp ne ptr %48, null
  %50 = icmp ne ptr %47, null
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 27
  %54 = load i32, ptr %53, align 8, !tbaa !72
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = and i32 %54, 12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = and i32 %54, 16
  %62 = icmp ne i32 %61, 0
  br label %70

63:                                               ; preds = %46
  %64 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.SpaceImage, ptr %64, i64 0, i32 17
  %68 = load i8, ptr %67, align 4, !tbaa !76
  %69 = icmp eq i8 %68, 1
  br label %70

70:                                               ; preds = %66, %63, %60, %57, %52
  %71 = phi i1 [ false, %63 ], [ true, %52 ], [ false, %57 ], [ false, %60 ], [ false, %66 ]
  %72 = phi i1 [ false, %63 ], [ false, %52 ], [ true, %57 ], [ false, %60 ], [ false, %66 ]
  %73 = phi i1 [ false, %63 ], [ false, %52 ], [ false, %57 ], [ %62, %60 ], [ %69, %66 ]
  br i1 %71, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 34
  %76 = load i8, ptr %75, align 8, !tbaa !82
  %77 = zext i8 %76 to i32
  br label %88

78:                                               ; preds = %70
  br i1 %72, label %79, label %83

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 35
  %81 = load i8, ptr %80, align 1, !tbaa !83
  %82 = zext i8 %81 to i32
  br label %88

83:                                               ; preds = %78
  br i1 %73, label %84, label %88

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 36
  %86 = load i8, ptr %85, align 2, !tbaa !84
  %87 = zext i8 %86 to i32
  br label %88

88:                                               ; preds = %84, %83, %79, %74
  %89 = phi i1 [ false, %74 ], [ false, %79 ], [ false, %84 ], [ true, %83 ]
  %90 = phi ptr [ @brush_sculpt_tool_items, %74 ], [ @brush_vertex_tool_items, %79 ], [ @brush_image_tool_items, %84 ], [ null, %83 ]
  %91 = phi i32 [ %77, %74 ], [ %82, %79 ], [ %87, %84 ], [ undef, %83 ]
  br i1 %89, label %96, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 7
  %94 = tail call zeroext i8 @RNA_enum_icon_from_value(ptr noundef %90, i32 noundef %91, ptr noundef nonnull %93) #8
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92, %88
  %97 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 7
  store i32 0, ptr %97, align 8, !tbaa !85
  br label %98

98:                                               ; preds = %43, %11, %92, %96
  %99 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !85
  br label %153

101:                                              ; preds = %3, %3, %3, %3, %3
  %102 = tail call i32 @BKE_icon_getid(ptr noundef %1) #8
  %103 = tail call ptr @BKE_previewimg_get(ptr noundef %1) #8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %153, label %105

105:                                              ; preds = %101
  %106 = icmp eq i8 %2, 0
  br i1 %106, label %131, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 2, i64 1
  %109 = load i16, ptr %108, align 2, !tbaa !65
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 4, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !34
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %153

115:                                              ; preds = %111, %107
  %116 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 4, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !34
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = getelementptr inbounds [2 x i32], ptr %103, i64 0, i64 1
  store i32 96, ptr %120, align 4, !tbaa !63
  %121 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 1, i64 1
  store i32 96, ptr %121, align 4, !tbaa !63
  store i16 1, ptr %108, align 2, !tbaa !65
  %122 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 3, i64 1
  store i16 0, ptr %122, align 2, !tbaa !65
  %123 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %124 = tail call ptr %123(i64 noundef 36864, ptr noundef nonnull @.str.7) #8
  store ptr %124, ptr %116, align 8, !tbaa !34
  br label %125

125:                                              ; preds = %115, %119
  %126 = load ptr, ptr %116, align 8, !tbaa !34
  %127 = getelementptr inbounds [2 x i32], ptr %103, i64 0, i64 1
  %128 = load i32, ptr %127, align 4, !tbaa !63
  %129 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 1, i64 1
  %130 = load i32, ptr %129, align 4, !tbaa !63
  tail call void @ED_preview_icon_job(ptr noundef %0, ptr noundef nonnull %103, ptr noundef %1, ptr noundef %126, i32 noundef %128, i32 noundef %130) #8
  store i16 0, ptr %108, align 2, !tbaa !65
  br label %153

131:                                              ; preds = %105
  %132 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 2, i64 0
  %133 = load i16, ptr %132, align 2, !tbaa !65
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 4, i64 0
  %137 = load ptr, ptr %136, align 8, !tbaa !34
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %153

139:                                              ; preds = %135, %131
  %140 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 4, i64 0
  %141 = load ptr, ptr %140, align 8, !tbaa !34
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  store i32 32, ptr %103, align 4, !tbaa !63
  %144 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 1, i64 0
  store i32 32, ptr %144, align 4, !tbaa !63
  store i16 1, ptr %132, align 2, !tbaa !65
  %145 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 3, i64 0
  store i16 0, ptr %145, align 2, !tbaa !65
  %146 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %147 = tail call ptr %146(i64 noundef 4096, ptr noundef nonnull @.str.7) #8
  store ptr %147, ptr %140, align 8, !tbaa !34
  br label %148

148:                                              ; preds = %139, %143
  %149 = load ptr, ptr %140, align 8, !tbaa !34
  %150 = load i32, ptr %103, align 4, !tbaa !63
  %151 = getelementptr inbounds %struct.PreviewImage, ptr %103, i64 0, i32 1, i64 0
  %152 = load i32, ptr %151, align 4, !tbaa !63
  tail call void @ED_preview_icon_job(ptr noundef %0, ptr noundef nonnull %103, ptr noundef %1, ptr noundef %149, i32 noundef %150, i32 noundef %152) #8
  store i16 0, ptr %132, align 2, !tbaa !65
  br label %153

153:                                              ; preds = %148, %135, %125, %111, %101, %3, %98
  %154 = phi i32 [ 0, %3 ], [ %100, %98 ], [ %102, %101 ], [ %102, %111 ], [ %102, %125 ], [ %102, %135 ], [ %102, %148 ]
  ret i32 %154
}

declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @UI_rnaptr_icon_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = icmp eq ptr %8, null
  br i1 %9, label %52, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef %12) #8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !90
  br label %45

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 8, !tbaa !89
  %19 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %18, ptr noundef nonnull @RNA_MaterialSlot) #8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %1, ptr noundef nonnull @.str.2) #8
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  br label %45

24:                                               ; preds = %17
  %25 = load ptr, ptr %11, align 8, !tbaa !89
  %26 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %25, ptr noundef nonnull @RNA_TextureSlot) #8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %1, ptr noundef nonnull @.str.3) #8
  %29 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  br label %45

31:                                               ; preds = %24
  %32 = load ptr, ptr %11, align 8, !tbaa !89
  %33 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %32, ptr noundef nonnull @RNA_DynamicPaintSurface) #8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 8, !tbaa !86
  %37 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %36, i64 0, i32 10
  %38 = load i16, ptr %37, align 4, !tbaa !91
  switch i16 %38, label %41 [
    i16 0, label %42
    i16 1, label %39
    i16 2, label %40
  ]

39:                                               ; preds = %35
  br label %42

40:                                               ; preds = %35
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %35, %41, %40, %39
  %43 = phi i1 [ false, %39 ], [ false, %40 ], [ true, %41 ], [ false, %35 ]
  %44 = phi i32 [ 261, %39 ], [ 696, %40 ], [ undef, %41 ], [ 91, %35 ]
  br i1 %43, label %45, label %52

45:                                               ; preds = %21, %31, %42, %28, %15
  %46 = phi ptr [ %16, %15 ], [ %23, %21 ], [ %30, %28 ], [ null, %42 ], [ null, %31 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = call i32 @ui_id_icon_get(ptr noundef %0, ptr noundef nonnull %46, i8 noundef zeroext %3)
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 %2, i32 %49
  br label %52

52:                                               ; preds = %45, %4, %42, %48
  %53 = phi i32 [ %51, %48 ], [ %44, %42 ], [ %2, %4 ], [ %2, %45 ]
  ret i32 %53
}

declare zeroext i8 @RNA_struct_is_ID(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @RNA_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @UI_icon_draw_aspect(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4, ptr noundef null, i32 noundef 0, i32 noundef 16, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_icon_draw_aspect_color(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, ptr noundef %4) local_unnamed_addr #3 {
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef 1.000000e+00, ptr noundef %4, i32 noundef 0, i32 noundef 16, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i8 noundef zeroext %8) unnamed_addr #3 {
  %10 = tail call ptr @UI_GetTheme() #8
  %11 = sitofp i32 %7 to float
  %12 = tail call ptr @BKE_icon_get(i32 noundef %2) #8
  %13 = getelementptr inbounds %struct.bTheme, ptr %10, i64 0, i32 3, i32 25
  %14 = load float, ptr %13, align 8, !tbaa !93
  %15 = fmul float %14, %4
  %16 = icmp eq ptr %12, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !49
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %97, label %21

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.icon_draw_size, i32 noundef %2)
  br label %97

23:                                               ; preds = %9
  %24 = load ptr, ptr %12, align 8, !tbaa !53
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 24, ptr noundef nonnull @.str.4) #8
  store i32 0, ptr %28, align 8, !tbaa !44
  store ptr %28, ptr %12, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.Icon, ptr %12, i64 0, i32 3
  store ptr @UI_icons_free_drawinfo, ptr %29, align 8, !tbaa !101
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi ptr [ %24, %23 ], [ %28, %26 ]
  %32 = fdiv float %11, %3
  %33 = fadd float %32, 5.000000e-01
  %34 = fptosi float %33 to i32
  %35 = load i32, ptr %31, align 8, !tbaa !44
  switch i32 %35, label %97 [
    i32 3, label %36
    i32 1, label %41
    i32 2, label %70
    i32 0, label %81
  ]

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.DrawInfo, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = fptosi float %0 to i32
  %40 = fptosi float %1 to i32
  tail call void %38(i32 noundef %39, i32 noundef %40, i32 noundef %34, i32 noundef %34, float noundef 1.000000e+00) #8
  br label %97

41:                                               ; preds = %30
  tail call void @glBlendFunc(i32 noundef 1, i32 noundef 771) #8
  %42 = sitofp i32 %34 to float
  %43 = getelementptr inbounds %struct.DrawInfo, ptr %31, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !46
  %45 = getelementptr inbounds i8, ptr %31, i64 12
  %46 = load i32, ptr %45, align 4, !tbaa !46
  %47 = getelementptr inbounds %struct.DrawInfo, ptr %31, i64 0, i32 1, i32 1, i64 4
  %48 = load i32, ptr %47, align 4, !tbaa !46
  %49 = icmp eq ptr %5, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %41
  %51 = load float, ptr %5, align 4, !tbaa !102
  %52 = getelementptr inbounds float, ptr %5, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !102
  %54 = getelementptr inbounds float, ptr %5, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !102
  tail call void @glColor4f(float noundef %51, float noundef %53, float noundef %55, float noundef %15) #8
  br label %57

56:                                               ; preds = %41
  tail call void @glColor4f(float noundef %15, float noundef %15, float noundef %15, float noundef %15) #8
  br label %57

57:                                               ; preds = %50, %56
  %58 = sitofp i32 %44 to float
  %59 = fmul float %58, 0.000000e+00
  %60 = add nsw i32 %48, %44
  %61 = sitofp i32 %60 to float
  %62 = fmul float %61, 0.000000e+00
  %63 = sitofp i32 %46 to float
  %64 = fmul float %63, 0.000000e+00
  %65 = add nsw i32 %48, %46
  %66 = sitofp i32 %65 to float
  %67 = fmul float %66, 0.000000e+00
  tail call void @glEnable(i32 noundef 3553) #8
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #8
  tail call void @glTexEnvf(i32 noundef 34048, i32 noundef 34049, float noundef -5.000000e-01) #8
  tail call void @glBegin(i32 noundef 7) #8
  tail call void @glTexCoord2f(float noundef %59, float noundef %64) #8
  tail call void @glVertex2f(float noundef %0, float noundef %1) #8
  tail call void @glTexCoord2f(float noundef %62, float noundef %64) #8
  %68 = fadd float %42, %0
  tail call void @glVertex2f(float noundef %68, float noundef %1) #8
  tail call void @glTexCoord2f(float noundef %62, float noundef %67) #8
  %69 = fadd float %42, %1
  tail call void @glVertex2f(float noundef %68, float noundef %69) #8
  tail call void @glTexCoord2f(float noundef %59, float noundef %67) #8
  tail call void @glVertex2f(float noundef %0, float noundef %69) #8
  tail call void @glEnd() #8
  tail call void @glTexEnvf(i32 noundef 34048, i32 noundef 34049, float noundef 0.000000e+00) #8
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef 0) #8
  tail call void @glDisable(i32 noundef 3553) #8
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  br label %97

70:                                               ; preds = %30
  %71 = getelementptr inbounds %struct.DrawInfo, ptr %31, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = getelementptr inbounds %struct.IconImage, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !47
  %75 = icmp eq ptr %74, null
  br i1 %75, label %97, label %76

76:                                               ; preds = %70
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  %77 = load i32, ptr %72, align 8, !tbaa !103
  %78 = getelementptr inbounds %struct.IconImage, ptr %72, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !104
  %80 = load ptr, ptr %73, align 8, !tbaa !47
  tail call fastcc void @icon_draw_rect(float noundef %0, float noundef %1, i32 noundef %34, i32 noundef %34, i32 noundef %77, i32 noundef %79, ptr noundef %80, float noundef %15, ptr noundef %5, i8 noundef zeroext %8)
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  br label %97

81:                                               ; preds = %30
  %82 = getelementptr inbounds %struct.Icon, ptr %12, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !105
  %84 = tail call ptr @BKE_previewimg_get(ptr noundef %83) #8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %97, label %86

86:                                               ; preds = %81
  %87 = zext nneg i32 %6 to i64
  %88 = getelementptr inbounds %struct.PreviewImage, ptr %84, i64 0, i32 4, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !34
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  tail call void @glBlendFunc(i32 noundef 1, i32 noundef 771) #8
  %92 = getelementptr inbounds [2 x i32], ptr %84, i64 0, i64 %87
  %93 = load i32, ptr %92, align 4, !tbaa !63
  %94 = getelementptr inbounds %struct.PreviewImage, ptr %84, i64 0, i32 1, i64 %87
  %95 = load i32, ptr %94, align 4, !tbaa !63
  %96 = load ptr, ptr %88, align 8, !tbaa !34
  tail call fastcc void @icon_draw_rect(float noundef %0, float noundef %1, i32 noundef %34, i32 noundef %34, i32 noundef %93, i32 noundef %95, ptr noundef %96, float noundef 1.000000e+00, ptr noundef null, i8 noundef zeroext %8)
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  br label %97

97:                                               ; preds = %86, %36, %76, %57, %30, %81, %91, %70, %17, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_icon_draw(float noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !106
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !110
  %6 = sitofp i32 %5 to float
  %7 = fmul float %4, %6
  %8 = fdiv float %7, 7.200000e+01
  %9 = fdiv float 1.000000e+00, %8
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %9, float noundef 1.000000e+00, ptr noundef null, i32 noundef 0, i32 noundef 16, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #3 {
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %3, float noundef 1.000000e+00, float noundef %4, ptr noundef null, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_icon_draw_preview(float noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef null, i32 noundef 1, i32 noundef 96, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_icon_draw_preview_aspect(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #3 {
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef 1.000000e+00, ptr noundef null, i32 noundef 1, i32 noundef 96, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_icon_draw_preview_aspect_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  tail call fastcc void @icon_draw_size(float noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef 1.000000e+00, ptr noundef null, i32 noundef 1, i32 noundef %4, i8 noundef zeroext 1)
  ret void
}

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #4

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #4

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @RNA_enum_icon_from_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BKE_previewimg_get(ptr noundef) local_unnamed_addr #4

declare void @ED_preview_icon_job(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @UI_GetTheme() local_unnamed_addr #4

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @icon_draw_rect(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, float noundef %7, ptr noundef readonly %8, i8 noundef zeroext %9) unnamed_addr #3 {
  %11 = add i32 %2, -2001
  %12 = icmp ult i32 %11, -2000
  %13 = add i32 %3, -2001
  %14 = icmp ult i32 %13, -2000
  %15 = or i1 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull @__func__.icon_draw_rect, i32 noundef %2, i32 noundef %3)
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
  %24 = load float, ptr %8, align 4, !tbaa !102
  tail call void @glPixelTransferf(i32 noundef 3348, float noundef %24) #8
  %25 = getelementptr inbounds float, ptr %8, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !102
  tail call void @glPixelTransferf(i32 noundef 3352, float noundef %26) #8
  %27 = getelementptr inbounds float, ptr %8, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !102
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

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @glEnable(i32 noundef) local_unnamed_addr #4

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @glTexEnvf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare void @glBegin(i32 noundef) local_unnamed_addr #4

declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #4

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #4

declare void @glEnd() local_unnamed_addr #4

declare void @glDisable(i32 noundef) local_unnamed_addr #4

declare void @glPixelTransferf(i32 noundef, float noundef) local_unnamed_addr #4

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare ptr @IMB_scaleImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @glaDrawPixelsSafe(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @glRasterPos2f(float noundef, float noundef) local_unnamed_addr #4

declare void @glDrawPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
!41 = !{!42, !43, i64 272}
!42 = !{!"IconFile", !35, i64 0, !35, i64 8, !36, i64 16, !43, i64 272}
!43 = !{!"int", !36, i64 0}
!44 = !{!45, !43, i64 0}
!45 = !{!"DrawInfo", !43, i64 0, !36, i64 8}
!46 = !{!36, !36, i64 0}
!47 = !{!48, !35, i64 8}
!48 = !{!"IconImage", !43, i64 0, !43, i64 4, !35, i64 8, !35, i64 16, !43, i64 24}
!49 = !{!50, !43, i64 2100}
!50 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !51, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !52, i64 2084, !52, i64 2086, !52, i64 2088, !36, i64 2090, !52, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!51 = !{!"ListBase", !35, i64 0, !35, i64 8}
!52 = !{!"short", !36, i64 0}
!53 = !{!54, !35, i64 0}
!54 = !{!"Icon", !35, i64 0, !35, i64 8, !52, i64 16, !35, i64 24}
!55 = !{!48, !35, i64 16}
!56 = !{!48, !43, i64 24}
!57 = !{!58, !35, i64 40}
!58 = !{!"ImBuf", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !36, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !59, i64 112, !36, i64 120, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !35, i64 296, !35, i64 304, !43, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !43, i64 2376, !35, i64 2384, !43, i64 2392, !43, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !43, i64 2432, !60, i64 2436, !61, i64 2456}
!59 = !{!"float", !36, i64 0}
!60 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!61 = !{!"DDSData", !43, i64 0, !43, i64 4, !35, i64 8, !43, i64 16}
!62 = !{!58, !43, i64 16}
!63 = !{!43, !43, i64 0}
!64 = !{!58, !43, i64 20}
!65 = !{!52, !52, i64 0}
!66 = !{!67, !43, i64 1856}
!67 = !{!"Brush", !68, i64 0, !69, i64 120, !35, i64 144, !70, i64 152, !70, i64 464, !35, i64 776, !35, i64 784, !35, i64 792, !35, i64 800, !35, i64 808, !36, i64 816, !59, i64 1840, !52, i64 1844, !52, i64 1846, !59, i64 1848, !43, i64 1852, !43, i64 1856, !43, i64 1860, !59, i64 1864, !43, i64 1868, !43, i64 1872, !43, i64 1876, !43, i64 1880, !59, i64 1884, !59, i64 1888, !36, i64 1892, !59, i64 1904, !36, i64 1908, !43, i64 1920, !59, i64 1924, !59, i64 1928, !43, i64 1932, !43, i64 1936, !43, i64 1940, !36, i64 1944, !36, i64 1945, !36, i64 1946, !36, i64 1947, !59, i64 1948, !59, i64 1952, !59, i64 1956, !59, i64 1960, !59, i64 1964, !43, i64 1968, !43, i64 1972, !43, i64 1976, !59, i64 1980, !59, i64 1984, !43, i64 1988, !43, i64 1992, !59, i64 1996, !36, i64 2000, !36, i64 2012, !36, i64 2024, !36, i64 2032, !36, i64 2040, !36, i64 2048}
!68 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !52, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!69 = !{!"BrushClone", !35, i64 0, !36, i64 8, !59, i64 16, !59, i64 20}
!70 = !{!"MTex", !52, i64 0, !52, i64 2, !52, i64 4, !52, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !59, i64 116, !52, i64 120, !52, i64 122, !52, i64 124, !52, i64 126, !52, i64 128, !52, i64 130, !36, i64 132, !36, i64 133, !59, i64 140, !59, i64 144, !59, i64 148, !59, i64 152, !59, i64 156, !59, i64 160, !59, i64 164, !59, i64 168, !59, i64 172, !59, i64 176, !59, i64 180, !59, i64 184, !59, i64 188, !59, i64 192, !59, i64 196, !59, i64 200, !59, i64 204, !59, i64 208, !59, i64 212, !59, i64 216, !59, i64 220, !59, i64 224, !59, i64 228, !59, i64 232, !59, i64 236, !59, i64 240, !59, i64 244, !59, i64 248, !59, i64 252, !59, i64 256, !59, i64 260, !59, i64 264, !59, i64 268, !59, i64 272, !59, i64 276, !59, i64 280, !59, i64 284, !59, i64 288, !59, i64 292, !59, i64 296, !59, i64 300, !59, i64 304, !59, i64 308}
!71 = distinct !{!71, !39, !40}
!72 = !{!73, !43, i64 432}
!73 = !{!"Object", !68, i64 0, !35, i64 120, !35, i64 128, !52, i64 136, !52, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !74, i64 312, !35, i64 360, !51, i64 368, !51, i64 384, !51, i64 400, !51, i64 416, !43, i64 432, !43, i64 436, !35, i64 440, !35, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !59, i64 616, !59, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !52, i64 948, !52, i64 950, !52, i64 952, !52, i64 954, !52, i64 956, !52, i64 958, !52, i64 960, !52, i64 962, !52, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !59, i64 988, !59, i64 992, !59, i64 996, !59, i64 1000, !59, i64 1004, !59, i64 1008, !59, i64 1012, !59, i64 1016, !59, i64 1020, !59, i64 1024, !59, i64 1028, !59, i64 1032, !52, i64 1036, !52, i64 1038, !52, i64 1040, !36, i64 1042, !36, i64 1043, !52, i64 1044, !36, i64 1046, !36, i64 1047, !59, i64 1048, !59, i64 1052, !51, i64 1056, !51, i64 1072, !51, i64 1088, !51, i64 1104, !59, i64 1120, !52, i64 1124, !52, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !52, i64 1162, !36, i64 1164, !51, i64 1176, !51, i64 1192, !51, i64 1208, !51, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !52, i64 1266, !59, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !75, i64 1304, !75, i64 1312, !43, i64 1320, !43, i64 1324, !51, i64 1328, !51, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !51, i64 1400, !35, i64 1416}
!74 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !52, i64 16, !52, i64 18, !52, i64 20, !52, i64 22, !52, i64 24, !52, i64 26, !52, i64 28, !52, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!75 = !{!"long", !36, i64 0}
!76 = !{!77, !36, i64 10556}
!77 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !51, i64 16, !43, i64 32, !43, i64 36, !35, i64 40, !78, i64 48, !35, i64 88, !79, i64 96, !80, i64 5360, !35, i64 10520, !36, i64 10528, !59, i64 10536, !59, i64 10540, !59, i64 10544, !59, i64 10548, !59, i64 10552, !36, i64 10556, !36, i64 10557, !52, i64 10558, !52, i64 10560, !52, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !81, i64 10568}
!78 = !{!"ImageUser", !35, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !52, i64 28, !52, i64 30, !52, i64 32, !52, i64 34, !43, i64 36}
!79 = !{!"Scopes", !43, i64 0, !43, i64 4, !43, i64 8, !59, i64 12, !43, i64 16, !59, i64 20, !59, i64 24, !43, i64 28, !59, i64 32, !43, i64 36, !36, i64 40, !80, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !43, i64 5256, !43, i64 5260}
!80 = !{!"Histogram", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !59, i64 5128, !59, i64 5132, !52, i64 5136, !52, i64 5138, !43, i64 5140, !36, i64 5144}
!81 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!82 = !{!67, !36, i64 1944}
!83 = !{!67, !36, i64 1945}
!84 = !{!67, !36, i64 1946}
!85 = !{!68, !43, i64 104}
!86 = !{!87, !35, i64 16}
!87 = !{!"PointerRNA", !88, i64 0, !35, i64 8, !35, i64 16}
!88 = !{!"", !35, i64 0}
!89 = !{!87, !35, i64 8}
!90 = !{!87, !35, i64 0}
!91 = !{!92, !52, i64 140}
!92 = !{!"DynamicPaintSurface", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !51, i64 56, !43, i64 72, !36, i64 76, !52, i64 140, !52, i64 142, !52, i64 144, !52, i64 146, !52, i64 148, !52, i64 150, !52, i64 152, !52, i64 154, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !36, i64 184, !35, i64 200, !36, i64 208, !43, i64 272, !43, i64 276, !59, i64 280, !59, i64 284, !59, i64 288, !59, i64 292, !59, i64 296, !59, i64 300, !59, i64 304, !59, i64 308, !59, i64 312, !59, i64 316, !59, i64 320, !59, i64 324, !59, i64 328, !59, i64 332, !59, i64 336, !43, i64 340, !36, i64 344, !36, i64 408, !36, i64 1432, !36, i64 1496}
!93 = !{!94, !59, i64 944}
!94 = !{!"bTheme", !35, i64 0, !35, i64 8, !36, i64 16, !95, i64 48, !99, i64 960, !99, i64 1680, !99, i64 2400, !99, i64 3120, !99, i64 3840, !99, i64 4560, !99, i64 5280, !99, i64 6000, !99, i64 6720, !99, i64 7440, !99, i64 8160, !99, i64 8880, !99, i64 9600, !99, i64 10320, !99, i64 11040, !99, i64 11760, !99, i64 12480, !36, i64 13200, !43, i64 13520, !43, i64 13524}
!95 = !{!"ThemeUI", !96, i64 0, !96, i64 32, !96, i64 64, !96, i64 96, !96, i64 128, !96, i64 160, !96, i64 192, !96, i64 224, !96, i64 256, !96, i64 288, !96, i64 320, !96, i64 352, !96, i64 384, !96, i64 416, !96, i64 448, !96, i64 480, !96, i64 512, !96, i64 544, !97, i64 576, !98, i64 608, !36, i64 624, !59, i64 628, !52, i64 632, !36, i64 634, !36, i64 640, !59, i64 896, !36, i64 900, !36, i64 904, !36, i64 908}
!96 = !{!"uiWidgetColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !52, i64 24, !52, i64 26, !52, i64 28, !52, i64 30}
!97 = !{!"uiWidgetStateColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !59, i64 24, !59, i64 28}
!98 = !{!"uiPanelColors", !36, i64 0, !36, i64 4, !52, i64 8, !52, i64 10, !43, i64 12}
!99 = !{!"ThemeSpace", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !98, i64 80, !100, i64 96, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !36, i64 300, !36, i64 304, !36, i64 308, !36, i64 312, !36, i64 316, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !36, i64 336, !36, i64 340, !36, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !36, i64 368, !36, i64 372, !36, i64 376, !36, i64 380, !36, i64 384, !36, i64 388, !36, i64 392, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !36, i64 421, !36, i64 422, !36, i64 423, !36, i64 424, !36, i64 428, !36, i64 432, !36, i64 436, !36, i64 440, !36, i64 444, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !36, i64 464, !36, i64 468, !36, i64 472, !36, i64 476, !36, i64 480, !36, i64 484, !36, i64 488, !36, i64 492, !36, i64 496, !36, i64 500, !36, i64 504, !36, i64 508, !36, i64 512, !36, i64 516, !36, i64 520, !36, i64 524, !36, i64 528, !36, i64 532, !36, i64 536, !36, i64 540, !36, i64 541, !36, i64 545, !36, i64 549, !36, i64 553, !36, i64 557, !36, i64 561, !36, i64 565, !36, i64 569, !36, i64 573, !36, i64 577, !36, i64 581, !36, i64 584, !36, i64 588, !36, i64 592, !36, i64 596, !36, i64 600, !36, i64 604, !36, i64 608, !36, i64 612, !36, i64 616, !36, i64 620, !36, i64 624, !36, i64 628, !36, i64 632, !36, i64 636, !36, i64 640, !36, i64 644, !36, i64 648, !36, i64 652, !36, i64 656, !36, i64 660, !36, i64 664, !36, i64 668, !36, i64 672, !36, i64 676, !36, i64 680, !36, i64 684, !36, i64 688, !36, i64 692, !36, i64 696, !36, i64 700, !36, i64 704, !36, i64 708, !36, i64 712, !36, i64 716}
!100 = !{!"uiGradientColors", !36, i64 0, !36, i64 4, !43, i64 8, !43, i64 12}
!101 = !{!54, !35, i64 24}
!102 = !{!59, !59, i64 0}
!103 = !{!48, !43, i64 0}
!104 = !{!48, !43, i64 4}
!105 = !{!54, !35, i64 8}
!106 = !{!107, !59, i64 10908}
!107 = !{!"UserDef", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !43, i64 8468, !52, i64 8472, !52, i64 8474, !52, i64 8476, !52, i64 8478, !52, i64 8480, !52, i64 8482, !43, i64 8484, !43, i64 8488, !43, i64 8492, !52, i64 8496, !52, i64 8498, !43, i64 8500, !43, i64 8504, !43, i64 8508, !43, i64 8512, !43, i64 8516, !43, i64 8520, !43, i64 8524, !52, i64 8528, !52, i64 8530, !52, i64 8532, !52, i64 8534, !51, i64 8536, !51, i64 8552, !51, i64 8568, !51, i64 8584, !51, i64 8600, !51, i64 8616, !51, i64 8632, !36, i64 8648, !52, i64 8712, !52, i64 8714, !52, i64 8716, !52, i64 8718, !52, i64 8720, !52, i64 8722, !52, i64 8724, !52, i64 8726, !36, i64 8728, !52, i64 8896, !52, i64 8898, !52, i64 8900, !52, i64 8902, !52, i64 8904, !52, i64 8906, !52, i64 8908, !52, i64 8910, !43, i64 8912, !43, i64 8916, !52, i64 8920, !52, i64 8922, !52, i64 8924, !52, i64 8926, !52, i64 8928, !52, i64 8930, !52, i64 8932, !52, i64 8934, !52, i64 8936, !52, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !52, i64 8944, !52, i64 8946, !52, i64 8948, !52, i64 8950, !52, i64 8952, !52, i64 8954, !59, i64 8956, !59, i64 8960, !43, i64 8964, !52, i64 8968, !52, i64 8970, !59, i64 8972, !52, i64 8976, !52, i64 8978, !52, i64 8980, !52, i64 8982, !108, i64 8984, !36, i64 9760, !36, i64 9772, !52, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !43, i64 10896, !43, i64 10900, !59, i64 10904, !59, i64 10908, !43, i64 10912, !52, i64 10916, !52, i64 10918, !52, i64 10920, !52, i64 10922, !52, i64 10924, !52, i64 10926, !109, i64 10928}
!108 = !{!"ColorBand", !52, i64 0, !52, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!109 = !{!"WalkNavigation", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !52, i64 24, !36, i64 26}
!110 = !{!107, !43, i64 8524}
