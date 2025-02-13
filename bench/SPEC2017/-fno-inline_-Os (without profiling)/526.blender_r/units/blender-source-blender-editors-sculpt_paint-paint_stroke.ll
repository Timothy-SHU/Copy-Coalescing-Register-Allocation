; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_stroke.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_stroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.PaintStroke = type { ptr, ptr, ptr, %struct.ViewContext, %struct.bglMats, ptr, ptr, %struct.ListBase, [64 x %struct.PaintSample], i32, i32, [2 x float], float, i8, i32, i8, i8, [2 x float], float, float, i32, float, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.ListBase = type { ptr, ptr }
%struct.PaintSample = type { [2 x float], float }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PaintCurve = type { %struct.ID, ptr, i32, i32 }
%struct.PaintCurvePoint = type { %struct.BezTriple, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"PaintStroke\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@paint_stroke_modal_keymap.modal_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.4 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Cancel and undo a stroke in progress\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Paint Stroke Modal\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"pen_flip\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@switch.table.paint_tool_require_location = private unnamed_addr constant [10 x i8] c"\00\01\01\01\01\01\01\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @paint_stroke_new(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %12 = tail call ptr %11(i64 noundef 1264, ptr noundef nonnull @.str) #15
  %13 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #15
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73
  %15 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #15
  %16 = tail call ptr @BKE_paint_brush(ptr noundef %15) #15
  %17 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  %18 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 3
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %18) #15
  %19 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 3, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 3, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 3, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 3, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 4
  tail call void @view3d_get_transformation(ptr noundef %24, ptr noundef %26, ptr noundef %28, ptr noundef nonnull %29) #15
  br label %30

30:                                               ; preds = %22, %8
  %31 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 23
  store ptr %2, ptr %31, align 8, !tbaa !20
  %32 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 24
  store ptr %3, ptr %32, align 8, !tbaa !21
  %33 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 25
  store ptr %4, ptr %33, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 26
  store ptr %5, ptr %34, align 8, !tbaa !23
  %35 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 27
  store ptr %6, ptr %35, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 14
  store i32 %7, ptr %36, align 8, !tbaa !25
  %37 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 6
  store ptr %14, ptr %37, align 8, !tbaa !26
  %38 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !27
  %40 = tail call i32 @RNA_enum_get(ptr noundef %39, ptr noundef nonnull @.str.1) #15
  %41 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 20
  store i32 %40, ptr %41, align 8, !tbaa !30
  %42 = call i32 @get_imapaint_zoom(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  %43 = load float, ptr %9, align 4, !tbaa !31
  %44 = load float, ptr %10, align 4, !tbaa !31
  %45 = call fastcc float @max_ff(float noundef %43, float noundef %44) #17
  %46 = getelementptr inbounds %struct.PaintStroke, ptr %12, i64 0, i32 21
  store float %45, ptr %46, align 4, !tbaa !32
  %47 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 16
  %48 = load i32, ptr %47, align 8, !tbaa !33
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %56, label %50

50:                                               ; preds = %30
  %51 = load ptr, ptr %38, align 8, !tbaa !27
  %52 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %51, ptr noundef nonnull @.str.1) #15
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %38, align 8, !tbaa !27
  call void @RNA_enum_set(ptr noundef %55, ptr noundef nonnull @.str.1, i32 noundef 0) #15
  br label %56

56:                                               ; preds = %54, %50, %30
  %57 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73, i32 13
  store float 1.000000e+00, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 73, i32 15
  store i32 1, ptr %58, align 4, !tbaa !40
  %59 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !41
  call void @curvemapping_initialize(ptr noundef %60) #15
  %61 = getelementptr inbounds %struct.Brush, ptr %16, i64 0, i32 20
  %62 = load i32, ptr %61, align 8, !tbaa !42
  call void @BKE_paint_set_overlay_override(i32 noundef %62) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_imapaint_zoom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_paint_set_overlay_override(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_stroke_data_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_paint_set_overlay_override(i32 noundef 0) #15
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %6(ptr noundef nonnull %3) #15
  store ptr null, ptr %2, align 8, !tbaa !43
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @paint_space_stroke_enabled(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !33
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @paint_supports_dynamic_size(ptr noundef nonnull %0, i32 noundef %1) #17, !range !44
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i8 [ 0, %2 ], [ %8, %7 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @paint_supports_dynamic_size(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !33
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  switch i32 %1, label %18 [
    i32 0, label %8
    i32 4, label %11
    i32 3, label %11
  ]

8:                                                ; preds = %7
  %9 = tail call fastcc zeroext i8 @sculpt_is_grab_tool(ptr noundef nonnull %0) #17, !range !44
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %19

11:                                               ; preds = %7, %7
  %12 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 36
  %13 = load i8, ptr %12, align 2, !tbaa !45
  %14 = icmp ne i8 %13, 4
  %15 = and i32 %4, 2097152
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %16, %14
  br i1 %17, label %18, label %19

18:                                               ; preds = %7, %11, %8
  br label %19

19:                                               ; preds = %11, %8, %2, %18
  %20 = phi i8 [ 1, %18 ], [ 0, %2 ], [ 0, %8 ], [ 0, %11 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @sculpt_is_grab_tool(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 34
  %3 = load i8, ptr %2, align 8, !tbaa !46
  switch i8 %3, label %4 [
    i8 5, label %7
    i8 12, label %7
    i8 14, label %7
  ]

4:                                                ; preds = %1
  %5 = icmp eq i8 %3, 13
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %1, %1, %1, %4
  %8 = phi i8 [ 1, %1 ], [ %6, %4 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @paint_supports_smooth_stroke(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !33
  %5 = and i32 %4, 545261824
  %6 = icmp eq i32 %5, 2048
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = tail call fastcc zeroext i8 @sculpt_is_grab_tool(ptr noundef nonnull %0) #17, !range !44
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %9
  br label %13

13:                                               ; preds = %9, %2, %12
  %14 = phi i8 [ 1, %12 ], [ 0, %2 ], [ 0, %9 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @paint_supports_texture(i32 noundef %0) local_unnamed_addr #3 {
  switch i32 %0, label %2 [
    i32 3, label %5
    i32 1, label %5
    i32 0, label %5
  ]

2:                                                ; preds = %1
  %3 = icmp eq i32 %0, 4
  %4 = zext i1 %3 to i8
  br label %5

5:                                                ; preds = %1, %1, %1, %2
  %6 = phi i8 [ 1, %1 ], [ %4, %2 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @paint_supports_dynamic_tex_coords(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !33
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = tail call fastcc zeroext i8 @sculpt_is_grab_tool(ptr noundef nonnull %0) #17, !range !44
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %9
  br label %13

13:                                               ; preds = %9, %2, %12
  %14 = phi i8 [ 1, %12 ], [ 0, %2 ], [ 0, %9 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @paint_stroke_modal_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.5) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @paint_stroke_modal_keymap.modal_items) #15
  %6 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %5, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #15
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %2, %1 ], [ %5, %4 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @paint_stroke_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PaintSample, align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  %8 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #15
  %9 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #15
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %14 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 16
  %15 = load i32, ptr %14, align 8, !tbaa !33
  %16 = and i32 %15, 545259776
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 22
  %20 = tail call float @WM_event_tablet_data(ptr noundef %2, ptr noundef nonnull %19, ptr noundef null) #15
  br label %21

21:                                               ; preds = %3, %18
  %22 = phi float [ %20, %18 ], [ 1.000000e+00, %3 ]
  store float %22, ptr %6, align 4, !tbaa !31
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !47
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !47
  %28 = sitofp i32 %27 to float
  tail call fastcc void @paint_stroke_add_sample(ptr noundef %8, ptr noundef nonnull %11, float noundef %25, float noundef %28, float noundef %22) #17
  call fastcc void @paint_stroke_sample_average(ptr noundef nonnull %11, ptr noundef nonnull %4) #17
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %30 = load i16, ptr %29, align 8, !tbaa !48
  %31 = icmp eq i16 %30, 400
  br i1 %31, label %202, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 15
  %34 = load i8, ptr %33, align 4, !tbaa !51
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = tail call fastcc zeroext i8 @paint_stroke_curve_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %11) #17, !range !44
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %202

39:                                               ; preds = %36
  %40 = tail call zeroext i8 @paint_supports_smooth_stroke(ptr noundef nonnull %13, i32 noundef %9) #17, !range !44
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %44 = tail call ptr @WM_paint_cursor_activate(ptr noundef %43, ptr noundef nonnull @paint_poll, ptr noundef nonnull @paint_draw_smooth_cursor, ptr noundef nonnull %11) #15
  %45 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !52
  br label %46

46:                                               ; preds = %42, %39
  store i8 1, ptr %33, align 4, !tbaa !51
  br label %47

47:                                               ; preds = %46, %32
  %48 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 13
  %49 = load i8, ptr %48, align 4, !tbaa !53
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.PaintSample, ptr %4, i64 0, i32 1
  %53 = load float, ptr %52, align 4, !tbaa !54
  %54 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 19
  store float %53, ptr %54, align 4, !tbaa !56
  %55 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11
  call fastcc void @copy_v2_v2(ptr noundef nonnull %55, ptr noundef nonnull %4) #17
  %56 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 24
  %57 = load ptr, ptr %56, align 8, !tbaa !21
  %58 = call zeroext i8 %57(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #15
  store i8 %58, ptr %48, align 4, !tbaa !53
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %51
  %61 = load i32, ptr %14, align 8, !tbaa !33
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = call ptr @CTX_wm_manager(ptr noundef %0) #15
  %66 = call ptr @CTX_wm_window(ptr noundef %0) #15
  %67 = load ptr, ptr %12, align 8, !tbaa !9
  %68 = getelementptr inbounds %struct.Brush, ptr %67, i64 0, i32 24
  %69 = load float, ptr %68, align 8, !tbaa !57
  %70 = fpext float %69 to double
  %71 = call ptr @WM_event_add_timer(ptr noundef %65, ptr noundef %66, i32 noundef 272, double noundef %70) #15
  %72 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 2
  store ptr %71, ptr %72, align 8, !tbaa !58
  %73 = load i32, ptr %14, align 8, !tbaa !33
  br label %74

74:                                               ; preds = %64, %60
  %75 = phi i32 [ %73, %64 ], [ %61, %60 ]
  %76 = and i32 %75, 536870912
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = call ptr @CTX_wm_manager(ptr noundef %0) #15
  %80 = call ptr @WM_paint_cursor_activate(ptr noundef %79, ptr noundef nonnull @paint_poll, ptr noundef nonnull @paint_draw_line_cursor, ptr noundef nonnull %11) #15
  %81 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !52
  br label %82

82:                                               ; preds = %74, %78, %51, %47
  %83 = phi i1 [ true, %47 ], [ true, %51 ], [ false, %78 ], [ false, %74 ]
  %84 = load i16, ptr %29, align 8, !tbaa !48
  %85 = icmp eq i16 %84, 20514
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %88 = load i16, ptr %87, align 2, !tbaa !59
  %89 = icmp eq i16 %88, 1
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !60
  %93 = getelementptr inbounds %struct.wmOperatorType, ptr %92, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !61
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  call void %94(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %202

97:                                               ; preds = %90
  call void @paint_stroke_cancel(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %202

98:                                               ; preds = %86, %82
  %99 = sext i16 %84 to i32
  %100 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 14
  %101 = load i32, ptr %100, align 8, !tbaa !25
  %102 = icmp ne i32 %101, %99
  %103 = or i1 %35, %102
  br i1 %103, label %109, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %106 = load i16, ptr %105, align 2, !tbaa !59
  %107 = icmp eq i16 %106, 2
  br i1 %107, label %108, label %165

108:                                              ; preds = %104
  call fastcc void @paint_stroke_line_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef nonnull %4) #17
  call fastcc void @stroke_done(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %202

109:                                              ; preds = %98
  %110 = and i16 %84, -2
  %111 = icmp eq i16 %110, 220
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  call fastcc void @paint_stroke_line_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef nonnull %4) #17
  call fastcc void @stroke_done(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %202

113:                                              ; preds = %109
  %114 = load i32, ptr %14, align 8, !tbaa !33
  %115 = and i32 %114, 536870912
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %113
  %118 = load i8, ptr %48, align 4, !tbaa !53
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %117
  br i1 %35, label %122, label %121

121:                                              ; preds = %120
  switch i16 %84, label %132 [
    i16 17, label %122
    i16 4, label %122
  ]

122:                                              ; preds = %121, %121, %120
  %123 = and i32 %114, 128
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %165, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !26
  %128 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %127, i64 0, i32 7
  %129 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11
  call fastcc void @copy_v2_v2(ptr noundef nonnull %128, ptr noundef nonnull %129) #17
  %130 = load ptr, ptr %126, align 8, !tbaa !26
  call void @paint_calculate_rake_rotation(ptr noundef %130, ptr noundef nonnull %4) #15
  br label %165

131:                                              ; preds = %117, %113
  br i1 %35, label %144, label %132

132:                                              ; preds = %121, %131
  %133 = and i32 %114, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  switch i16 %84, label %165 [
    i16 4, label %144
    i16 17, label %144
  ]

136:                                              ; preds = %132
  %137 = icmp eq i16 %84, 272
  br i1 %137, label %138, label %165

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %140 = load ptr, ptr %139, align 8, !tbaa !64
  %141 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !58
  %143 = icmp eq ptr %140, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %135, %135, %138, %131
  %145 = call fastcc i32 @paint_smooth_stroke(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef %9) #17, !range !65
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %144
  %148 = load i8, ptr %48, align 4, !tbaa !53
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %165, label %150

150:                                              ; preds = %147
  %151 = call zeroext i8 @paint_space_stroke_enabled(ptr noundef nonnull %13, i32 noundef %9) #17, !range !44
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = load float, ptr %6, align 4, !tbaa !31
  %155 = call fastcc i32 @paint_space_stroke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, float noundef %154) #17
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i8
  br label %165

158:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %159 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 11
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %159) #17
  %160 = call fastcc float @len_v2(ptr noundef nonnull %7) #17
  %161 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 12
  %162 = load float, ptr %161, align 8, !tbaa !66
  %163 = fadd float %160, %162
  store float %163, ptr %161, align 8, !tbaa !66
  %164 = load float, ptr %6, align 4, !tbaa !31
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, float noundef %164) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %165

165:                                              ; preds = %135, %153, %136, %138, %147, %158, %144, %122, %125, %104
  %166 = phi i8 [ 0, %125 ], [ 0, %122 ], [ 1, %158 ], [ 0, %147 ], [ 0, %144 ], [ 0, %138 ], [ 0, %136 ], [ 0, %104 ], [ %157, %153 ], [ 0, %135 ]
  br i1 %83, label %181, label %167

167:                                              ; preds = %165
  %168 = call zeroext i8 @paint_space_stroke_enabled(ptr noundef nonnull %13, i32 noundef %9) #17, !range !44
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %167
  %171 = load i32, ptr %14, align 8, !tbaa !33
  %172 = and i32 %171, 2048
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = call fastcc float @paint_stroke_integrate_overlap(ptr noundef nonnull %13, float noundef 1.000000e+00) #17
  %176 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 6
  %177 = load ptr, ptr %176, align 8, !tbaa !26
  %178 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %177, i64 0, i32 13
  store float %175, ptr %178, align 8, !tbaa !38
  %179 = getelementptr inbounds %struct.PaintSample, ptr %4, i64 0, i32 1
  %180 = load float, ptr %179, align 4, !tbaa !54
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, float noundef %180) #17
  br label %181

181:                                              ; preds = %174, %170, %167, %165
  %182 = phi i8 [ %166, %170 ], [ 1, %174 ], [ %166, %167 ], [ %166, %165 ]
  %183 = load i16, ptr %29, align 8, !tbaa !48
  %184 = icmp eq i16 %183, 17
  br i1 %184, label %202, label %185

185:                                              ; preds = %181
  %186 = call ptr @CTX_wm_window(ptr noundef %0) #15
  %187 = call ptr @CTX_wm_region(ptr noundef %0) #15
  %188 = icmp eq ptr %187, null
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.Paint, ptr %8, i64 0, i32 4
  %191 = load i32, ptr %190, align 4, !tbaa !67
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  call void @WM_paint_cursor_tag_redraw(ptr noundef %186, ptr noundef nonnull %187) #15
  br label %195

195:                                              ; preds = %194, %189, %185
  %196 = icmp eq i8 %182, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %195
  %198 = getelementptr inbounds %struct.PaintStroke, ptr %11, i64 0, i32 26
  %199 = load ptr, ptr %198, align 8, !tbaa !23
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  call void %199(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext 0) #15
  br label %202

202:                                              ; preds = %181, %201, %197, %195, %96, %97, %36, %21, %112, %108
  %203 = phi i32 [ 4, %112 ], [ 4, %108 ], [ 8, %21 ], [ 4, %36 ], [ 2, %97 ], [ 2, %96 ], [ 1, %195 ], [ 1, %197 ], [ 1, %201 ], [ 1, %181 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret i32 %203
}

; Function Attrs: optsize
declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @WM_event_tablet_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @paint_stroke_add_sample(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.PaintStroke, ptr %1, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !69
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.PaintStroke, ptr %1, i64 0, i32 8, i64 %8
  %10 = getelementptr inbounds %struct.Paint, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !70
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 64)
  store float %2, ptr %9, align 4, !tbaa !31
  %14 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  store float %3, ptr %14, align 4, !tbaa !31
  %15 = getelementptr inbounds %struct.PaintStroke, ptr %1, i64 0, i32 8, i64 %8, i32 1
  store float %4, ptr %15, align 4, !tbaa !54
  %16 = add nsw i32 %7, 1
  %17 = icmp slt i32 %16, %13
  %18 = select i1 %17, i32 %16, i32 0
  store i32 %18, ptr %6, align 4, !tbaa !69
  %19 = getelementptr inbounds %struct.PaintStroke, ptr %1, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !71
  %21 = icmp slt i32 %20, %13
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = add nsw i32 %20, 1
  store i32 %23, ptr %19, align 8, !tbaa !71
  br label %24

24:                                               ; preds = %22, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @paint_stroke_sample_average(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #6 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, i8 0, i64 12, i1 false)
  %3 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !71
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PaintSample, ptr %1, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %15, %8 ]
  %10 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 8, i64 %9
  tail call fastcc void @add_v2_v2(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  %11 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 8, i64 %9, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = load float, ptr %7, align 4, !tbaa !54
  %14 = fadd float %12, %13
  store float %14, ptr %7, align 4, !tbaa !54
  %15 = add nuw nsw i64 %9, 1
  %16 = load i32, ptr %3, align 8, !tbaa !71
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %8, label %19, !llvm.loop !72

19:                                               ; preds = %8, %2
  %20 = phi i32 [ %4, %2 ], [ %16, %8 ]
  %21 = sitofp i32 %20 to float
  %22 = fdiv float 1.000000e+00, %21
  tail call fastcc void @mul_v2_fl(ptr noundef nonnull %1, float noundef %22) #17
  %23 = load i32, ptr %3, align 8, !tbaa !71
  %24 = sitofp i32 %23 to float
  %25 = getelementptr inbounds %struct.PaintSample, ptr %1, i64 0, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !54
  %27 = fdiv float %26, %24
  store float %27, ptr %25, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @paint_stroke_curve_end(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca [82 x float], align 16
  %6 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !33
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %79, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %13 = tail call fastcc float @paint_space_stroke_spacing(ptr noundef %12, ptr noundef nonnull %2, float noundef 1.000000e+00, float noundef 1.000000e+00) #17
  %14 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store float 0.000000e+00, ptr %4, align 4, !tbaa !31
  %16 = icmp eq ptr %15, null
  br i1 %16, label %78, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.PaintCurve, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = tail call fastcc float @paint_stroke_integrate_overlap(ptr noundef nonnull %7, float noundef 1.000000e+00) #17
  %21 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !26
  %23 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %22, i64 0, i32 13
  store float %20, ptr %23, align 8, !tbaa !38
  %24 = getelementptr inbounds %struct.PaintCurve, ptr %15, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !77
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %77

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 13
  %29 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 19
  %30 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 11
  %31 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 24
  %32 = getelementptr inbounds float, ptr %5, i64 1
  br label %33

33:                                               ; preds = %27, %72
  %34 = phi i32 [ 0, %27 ], [ %73, %72 ]
  %35 = phi ptr [ %19, %27 ], [ %36, %72 ]
  call void @llvm.lifetime.start.p0(i64 328, ptr nonnull %5) #16
  %36 = getelementptr inbounds %struct.PaintCurvePoint, ptr %35, i64 1
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %35, i64 0, i64 1, i64 0
  %38 = load float, ptr %37, align 4, !tbaa !31
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %35, i64 0, i64 2, i64 0
  %40 = load float, ptr %39, align 4, !tbaa !31
  %41 = load float, ptr %36, align 4, !tbaa !31
  %42 = getelementptr inbounds %struct.PaintCurvePoint, ptr %35, i64 1, i32 0, i32 0, i64 1, i64 0
  %43 = load float, ptr %42, align 4, !tbaa !31
  call void @BKE_curve_forward_diff_bezier(float noundef %38, float noundef %40, float noundef %41, float noundef %43, ptr noundef nonnull %5, i32 noundef 40, i32 noundef 8) #15
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %35, i64 0, i64 1, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !31
  %46 = getelementptr inbounds [3 x [3 x float]], ptr %35, i64 0, i64 2, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !31
  %48 = getelementptr inbounds %struct.PaintCurvePoint, ptr %35, i64 1, i32 0, i32 0, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !31
  %50 = getelementptr inbounds %struct.PaintCurvePoint, ptr %35, i64 1, i32 0, i32 0, i64 1, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !31
  call void @BKE_curve_forward_diff_bezier(float noundef %45, float noundef %47, float noundef %49, float noundef %51, ptr noundef nonnull %32, i32 noundef 40, i32 noundef 8) #15
  br label %52

52:                                               ; preds = %33, %69
  %53 = phi i64 [ %70, %69 ], [ 0, %33 ]
  %54 = load i8, ptr %28, align 4, !tbaa !53
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  store float 1.000000e+00, ptr %29, align 4, !tbaa !56
  %57 = shl nuw nsw i64 %53, 1
  %58 = getelementptr inbounds float, ptr %5, i64 %57
  call fastcc void @copy_v2_v2(ptr noundef nonnull %30, ptr noundef nonnull %58) #17
  %59 = load ptr, ptr %31, align 8, !tbaa !21
  %60 = call zeroext i8 %59(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %30) #15
  store i8 %60, ptr %28, align 4, !tbaa !53
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %56
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %58, float noundef 1.000000e+00) #17
  br label %66

63:                                               ; preds = %52
  %64 = shl nuw nsw i64 %53, 1
  %65 = getelementptr inbounds float, ptr %5, i64 %64
  br label %66

66:                                               ; preds = %62, %63
  %67 = phi ptr [ %65, %63 ], [ %58, %62 ]
  %68 = getelementptr float, ptr %67, i64 2
  call fastcc void @paint_line_strokes_spacing(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, float noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %67, ptr noundef %68) #17
  br label %69

69:                                               ; preds = %66, %56
  %70 = add nuw nsw i64 %53, 1
  %71 = icmp eq i64 %70, 40
  br i1 %71, label %72, label %52, !llvm.loop !78

72:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %5) #16
  %73 = add nuw nsw i32 %34, 1
  %74 = load i32, ptr %24, align 8, !tbaa !77
  %75 = add nsw i32 %74, -1
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %33, label %77, !llvm.loop !79

77:                                               ; preds = %72, %17
  call fastcc void @stroke_done(ptr noundef %0, ptr noundef %1) #17
  br label %78

78:                                               ; preds = %11, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %79

79:                                               ; preds = %3, %78
  %80 = phi i8 [ 1, %78 ], [ 0, %3 ]
  ret i8 %80
}

; Function Attrs: optsize
declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @paint_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #15
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %6 = icmp ne ptr %2, null
  %7 = icmp ne ptr %3, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %2) #15
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %4, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %16 = load i8, ptr %15, align 8, !tbaa !80
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = icmp eq i8 %16, 6
  %20 = icmp ne ptr %5, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %24, label %29

22:                                               ; preds = %14
  %23 = icmp eq ptr %5, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18, %22
  %25 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %26 = load i16, ptr %25, align 2, !tbaa !83
  %27 = icmp eq i16 %26, 0
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %22, %24, %18, %9, %1
  %30 = phi i32 [ 0, %18 ], [ 0, %9 ], [ 0, %1 ], [ 0, %22 ], [ %28, %24 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @paint_draw_smooth_cursor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) #0 {
  %5 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #15
  %6 = tail call ptr @BKE_paint_brush(ptr noundef %5) #15
  %7 = icmp ne ptr %3, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  tail call void @glEnable(i32 noundef 2848) #15
  tail call void @glEnable(i32 noundef 3042) #15
  %11 = getelementptr inbounds %struct.Paint, ptr %5, i64 0, i32 3
  tail call void @glColor4ubv(ptr noundef nonnull %11) #15
  %12 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 11
  %13 = load float, ptr %12, align 8, !tbaa !31
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 11, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !31
  %17 = fptosi float %16 to i32
  tail call void @sdrawline(i32 noundef %1, i32 noundef %2, i32 noundef %14, i32 noundef %17) #15
  tail call void @glDisable(i32 noundef 3042) #15
  tail call void @glDisable(i32 noundef 2848) #15
  br label %18

18:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !31
  store float %3, ptr %0, align 4, !tbaa !31
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !31
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !31
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @paint_draw_line_cursor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #15
  tail call void @glEnable(i32 noundef 2848) #15
  tail call void @glEnable(i32 noundef 3042) #15
  tail call void @glEnable(i32 noundef 2852) #15
  tail call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #15
  %6 = getelementptr inbounds %struct.Paint, ptr %5, i64 0, i32 3, i64 3
  %7 = load i8, ptr %6, align 1, !tbaa !87
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %7) #15
  tail call void @glLineWidth(float noundef 3.000000e+00) #15
  %8 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 11
  %9 = load float, ptr %8, align 8, !tbaa !31
  %10 = fptosi float %9 to i32
  %11 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 11, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !31
  %13 = fptosi float %12 to i32
  tail call void @sdrawline(i32 noundef %10, i32 noundef %13, i32 noundef %1, i32 noundef %2) #15
  %14 = load i8, ptr %6, align 1, !tbaa !87
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext %14) #15
  tail call void @glLineWidth(float noundef 1.000000e+00) #15
  %15 = load float, ptr %8, align 8, !tbaa !31
  %16 = fptosi float %15 to i32
  %17 = load float, ptr %11, align 4, !tbaa !31
  %18 = fptosi float %17 to i32
  tail call void @sdrawline(i32 noundef %16, i32 noundef %18, i32 noundef %1, i32 noundef %2) #15
  tail call void @glDisable(i32 noundef 2852) #15
  tail call void @glDisable(i32 noundef 3042) #15
  tail call void @glDisable(i32 noundef 2848) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_stroke_cancel(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @stroke_done(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_stroke_line_end(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 13
  %8 = load i8, ptr %7, align 4, !tbaa !53
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !33
  %13 = and i32 %12, 536870912
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = tail call fastcc float @paint_stroke_integrate_overlap(ptr noundef nonnull %6, float noundef 1.000000e+00) #17
  %17 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %18, i64 0, i32 13
  store float %16, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 11
  tail call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %20, float noundef 1.000000e+00) #17
  %21 = tail call fastcc i32 @paint_space_stroke(ptr noundef %0, ptr noundef %1, ptr noundef %3, float noundef 1.000000e+00) #17
  br label %22

22:                                               ; preds = %15, %10, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stroke_done(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %6, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %6, i64 0, i32 15
  store i32 0, ptr %8, align 4, !tbaa !40
  %9 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.Brush, ptr %10, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !33
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %6, i64 0, i32 8
  store float 0.000000e+00, ptr %16, align 4, !tbaa !89
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 13
  %19 = load i8, ptr %18, align 4, !tbaa !53
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void %23(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 1) #15
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 27
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void %28(ptr noundef %0, ptr noundef nonnull %4) #15
  br label %31

31:                                               ; preds = %26, %30, %17
  %32 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %37 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %38 = load ptr, ptr %32, align 8, !tbaa !58
  tail call void @WM_event_remove_timer(ptr noundef %36, ptr noundef %37, ptr noundef %38) #15
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %45 = load ptr, ptr %40, align 8, !tbaa !52
  tail call void @WM_paint_cursor_end(ptr noundef %44, ptr noundef %45) #15
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.PaintStroke, ptr %4, i64 0, i32 7
  tail call void @BLI_freelistN(ptr noundef nonnull %47) #15
  tail call void @paint_stroke_data_free(ptr noundef nonnull %1) #17
  ret void
}

; Function Attrs: optsize
declare void @paint_calculate_rake_rotation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @paint_smooth_stroke(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = tail call zeroext i8 @paint_supports_smooth_stroke(ptr noundef %7, i32 noundef %4) #17, !range !44
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 22
  %12 = load i32, ptr %11, align 8, !tbaa !90
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 21
  %15 = load float, ptr %14, align 4, !tbaa !32
  %16 = fmul float %15, %13
  %17 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 11
  %18 = load float, ptr %17, align 8, !tbaa !31
  %19 = load float, ptr %3, align 4, !tbaa !31
  %20 = fsub float %18, %19
  %21 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 11, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !31
  %23 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !31
  %25 = fsub float %22, %24
  %26 = fmul float %25, %25
  %27 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %26)
  %28 = fmul float %16, %16
  %29 = fcmp olt float %27, %28
  br i1 %29, label %56, label %30

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 23
  %32 = load float, ptr %31, align 4, !tbaa !91
  %33 = fsub float 1.000000e+00, %32
  %34 = fmul float %18, %32
  %35 = tail call float @llvm.fmuladd.f32(float %19, float %33, float %34)
  store float %35, ptr %1, align 4, !tbaa !31
  %36 = load float, ptr %23, align 4, !tbaa !31
  %37 = load float, ptr %21, align 4, !tbaa !31
  %38 = fmul float %32, %37
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %33, float %38)
  %40 = getelementptr inbounds float, ptr %1, i64 1
  store float %39, ptr %40, align 4, !tbaa !31
  %41 = getelementptr inbounds %struct.PaintSample, ptr %3, i64 0, i32 1
  %42 = load float, ptr %41, align 4, !tbaa !54
  %43 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 19
  %44 = load float, ptr %43, align 4, !tbaa !56
  %45 = fmul float %32, %44
  %46 = tail call float @llvm.fmuladd.f32(float %42, float %33, float %45)
  br label %54

47:                                               ; preds = %5
  %48 = load float, ptr %3, align 4, !tbaa !31
  store float %48, ptr %1, align 4, !tbaa !31
  %49 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !31
  %51 = getelementptr inbounds float, ptr %1, i64 1
  store float %50, ptr %51, align 4, !tbaa !31
  %52 = getelementptr inbounds %struct.PaintSample, ptr %3, i64 0, i32 1
  %53 = load float, ptr %52, align 4, !tbaa !54
  br label %54

54:                                               ; preds = %30, %47
  %55 = phi float [ %53, %47 ], [ %46, %30 ]
  store float %55, ptr %2, align 4, !tbaa !31
  br label %56

56:                                               ; preds = %54, %10
  %57 = phi i32 [ 0, %10 ], [ 1, %54 ]
  ret i32 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @paint_space_stroke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.PaintStroke, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %12 = tail call fastcc float @paint_space_stroke_spacing(ptr noundef %7, ptr noundef %9, float noundef 1.000000e+00, float noundef 1.000000e+00) #17
  %13 = getelementptr inbounds %struct.PaintStroke, ptr %9, i64 0, i32 11
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %13) #17
  %14 = getelementptr inbounds %struct.PaintStroke, ptr %9, i64 0, i32 19
  %15 = load float, ptr %14, align 4, !tbaa !56
  %16 = call fastcc float @normalize_v2(ptr noundef nonnull %6) #17
  %17 = fcmp ogt float %16, 0.000000e+00
  br i1 %17, label %18, label %50

18:                                               ; preds = %4
  %19 = load <2 x float>, ptr %6, align 8
  %20 = getelementptr inbounds %struct.PaintStroke, ptr %9, i64 0, i32 5
  %21 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %11, i64 0, i32 13
  %22 = getelementptr inbounds %struct.PaintStroke, ptr %9, i64 0, i32 21
  %23 = getelementptr inbounds %struct.PaintStroke, ptr %9, i64 0, i32 12
  br label %24

24:                                               ; preds = %18, %31
  %25 = phi i32 [ 0, %18 ], [ %48, %31 ]
  %26 = phi float [ %15, %18 ], [ %47, %31 ]
  %27 = phi float [ %16, %18 ], [ %46, %31 ]
  %28 = fsub float %3, %26
  %29 = call fastcc float @paint_space_stroke_spacing_variable(ptr noundef %7, ptr noundef nonnull %9, float noundef %26, float noundef %28, float noundef %27) #17
  %30 = fcmp ult float %27, %29
  br i1 %30, label %50, label %31

31:                                               ; preds = %24
  %32 = load <2 x float>, ptr %13, align 8, !tbaa !31
  %33 = insertelement <2 x float> poison, float %29, i64 0
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  %35 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %34, <2 x float> %32)
  store <2 x float> %35, ptr %5, align 8, !tbaa !31
  %36 = load float, ptr %14, align 4, !tbaa !56
  %37 = fdiv float %29, %27
  %38 = call float @llvm.fmuladd.f32(float %37, float %28, float %36)
  %39 = load ptr, ptr %20, align 8, !tbaa !9
  %40 = fdiv float %29, %12
  %41 = call fastcc float @paint_stroke_integrate_overlap(ptr noundef %39, float noundef %40) #17
  store float %41, ptr %21, align 8, !tbaa !38
  %42 = load float, ptr %22, align 4, !tbaa !32
  %43 = fdiv float %29, %42
  %44 = load float, ptr %23, align 8, !tbaa !66
  %45 = fadd float %44, %43
  store float %45, ptr %23, align 8, !tbaa !66
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, float noundef %38) #17
  %46 = fsub float %27, %29
  %47 = load float, ptr %14, align 4, !tbaa !56
  %48 = add nuw nsw i32 %25, 1
  %49 = fcmp ogt float %46, 0.000000e+00
  br i1 %49, label %24, label %50

50:                                               ; preds = %31, %24, %4
  %51 = phi i32 [ 0, %4 ], [ %25, %24 ], [ %48, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i32 %51
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !31
  %5 = load float, ptr %2, align 4, !tbaa !31
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !31
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !31
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !31
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load float, ptr %0, align 4, !tbaa !31
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !31
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %10 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #15
  %11 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #15
  %12 = tail call ptr @BKE_paint_brush(ptr noundef %10) #15
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %17 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 11
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %17, ptr noundef %2) #17
  %18 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 19
  store float %3, ptr %18, align 4, !tbaa !56
  %19 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 20
  %20 = load i32, ptr %19, align 8, !tbaa !30
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i8
  %23 = tail call fastcc zeroext i8 @paint_stroke_use_jitter(i32 noundef %11, ptr noundef %12, i8 noundef zeroext %22) #17, !range !44
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %26 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 21
  %27 = load float, ptr %26, align 4, !tbaa !32
  %28 = getelementptr inbounds %struct.Brush, ptr %12, i64 0, i32 16
  %29 = load i32, ptr %28, align 8, !tbaa !33
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, float 1.000000e+00, float %3
  %33 = fmul float %27, %32
  call void @BKE_brush_jitter_pos(ptr noundef %9, ptr noundef %12, ptr noundef %2, ptr noundef nonnull %5) #15
  %34 = fcmp une float %33, 1.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef %2) #17
  call fastcc void @mul_v2_fl(ptr noundef nonnull %8, float noundef %33) #17
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %8) #17
  br label %36

36:                                               ; preds = %35, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %38

37:                                               ; preds = %4
  call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef %2) #17
  br label %38

38:                                               ; preds = %37, %36
  %39 = call fastcc zeroext i8 @paint_brush_update(ptr noundef %0, ptr noundef %12, i32 noundef %11, ptr noundef nonnull %14, ptr noundef %2, ptr noundef nonnull %5, float noundef %3, ptr noundef nonnull %7) #17, !range !44
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !27
  call void @RNA_collection_add(ptr noundef %43, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #15
  %44 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %16, i64 0, i32 21
  %45 = load float, ptr %44, align 8, !tbaa !92
  call void @RNA_float_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.7, float noundef %45) #15
  call void @RNA_float_set_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #15
  call void @RNA_float_set_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #15
  %46 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 22
  %47 = load i32, ptr %46, align 8, !tbaa !93
  call void @RNA_boolean_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.10, i32 noundef %47) #15
  call void @RNA_float_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.11, float noundef %3) #15
  %48 = getelementptr inbounds %struct.PaintStroke, ptr %14, i64 0, i32 25
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  call void %49(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %6) #15
  %50 = load ptr, ptr %42, align 8, !tbaa !27
  call void @RNA_collection_clear(ptr noundef %50, ptr noundef nonnull @.str.6) #15
  br label %51

51:                                               ; preds = %38, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @paint_stroke_integrate_overlap(ptr noundef %0, float noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 21
  %4 = load i32, ptr %3, align 4, !tbaa !94
  %5 = sitofp i32 %4 to float
  %6 = fmul float %5, %1
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !33
  %9 = and i32 %8, 262144
  %10 = icmp ne i32 %9, 0
  %11 = icmp slt i32 %4, 100
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %25

13:                                               ; preds = %2, %13
  %14 = phi i32 [ %21, %13 ], [ 0, %2 ]
  %15 = phi float [ %20, %13 ], [ 0.000000e+00, %2 ]
  %16 = sitofp i32 %14 to float
  %17 = fmul float %16, 0x3FB99999A0000000
  %18 = tail call fastcc float @paint_stroke_overlapped_curve(ptr noundef %0, float noundef %17, float noundef %6) #17
  %19 = fcmp ogt float %18, %15
  %20 = select i1 %19, float %18, float %15
  %21 = add nuw nsw i32 %14, 1
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %13, !llvm.loop !95

23:                                               ; preds = %13
  %24 = fdiv float 1.000000e+00, %20
  br label %25

25:                                               ; preds = %2, %23
  %26 = phi float [ %24, %23 ], [ 1.000000e+00, %2 ]
  ret float %26
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_paint_cursor_tag_redraw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @paint_stroke_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.PaintStroke, ptr %6, i64 0, i32 13
  %8 = load i8, ptr %7, align 4, !tbaa !53
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PaintStroke, ptr %6, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = tail call zeroext i8 %12(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null) #15
  store i8 1, ptr %7, align 4, !tbaa !53
  br label %14

14:                                               ; preds = %10, %2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #16
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  call void @RNA_collection_begin(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #15
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6
  %22 = getelementptr inbounds %struct.PaintStroke, ptr %6, i64 0, i32 25
  br label %23

23:                                               ; preds = %20, %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !100
  %24 = load ptr, ptr %22, align 8, !tbaa !22
  call void %24(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #15
  %25 = load i32, ptr %17, align 8, !tbaa !96
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23, !llvm.loop !101

27:                                               ; preds = %23, %14
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #16
  call fastcc void @stroke_done(ptr noundef %0, ptr noundef %1) #17
  ret i32 4
}

; Function Attrs: optsize
declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @paint_stroke_view_context(ptr noundef readnone %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @paint_stroke_mode_data(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @paint_stroke_flipped(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 8, !tbaa !93
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @paint_stroke_distance_get(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.PaintStroke, ptr %0, i64 0, i32 12
  %3 = load float, ptr %2, align 8, !tbaa !66
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @paint_stroke_set_mode_data(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #9 {
  store ptr %1, ptr %0, align 8, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !31
  %4 = load float, ptr %0, align 4, !tbaa !31
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !31
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !31
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !31
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !31
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !31
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef float @paint_space_stroke_spacing(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.PaintStroke, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = tail call i32 @BKE_brush_size_get(ptr noundef %0, ptr noundef %6) #15
  %8 = sitofp i32 %7 to float
  %9 = fmul float %8, %2
  %10 = tail call fastcc float @max_ff(float noundef 1.000000e+00, float noundef %9) #17
  %11 = load ptr, ptr %5, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 21
  %13 = load i32, ptr %12, align 4, !tbaa !94
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 16
  %16 = load i32, ptr %15, align 8, !tbaa !33
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  %19 = fsub float 1.500000e+00, %3
  %20 = select i1 %18, float 1.000000e+00, float %19
  %21 = fmul float %20, %14
  %22 = getelementptr inbounds %struct.PaintStroke, ptr %1, i64 0, i32 21
  %23 = load float, ptr %22, align 4, !tbaa !32
  %24 = fmul float %23, %21
  %25 = fmul float %10, %24
  %26 = fdiv float %25, 5.000000e+01
  %27 = tail call fastcc float @max_ff(float noundef 1.000000e+00, float noundef %26) #17
  ret float %27
}

; Function Attrs: optsize
declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_line_strokes_spacing(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = alloca [2 x float], align 8
  %9 = alloca [2 x float], align 8
  %10 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %9, ptr noundef %6, ptr noundef %5) #17
  %12 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 11
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %12, ptr noundef %5) #17
  %13 = call fastcc float @normalize_v2(ptr noundef nonnull %9) #17
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %44, label %15

15:                                               ; preds = %7
  %16 = fcmp ogt float %13, 0.000000e+00
  br i1 %16, label %17, label %42

17:                                               ; preds = %15
  %18 = load <2 x float>, ptr %9, align 8
  %19 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %11, i64 0, i32 13
  %21 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 21
  %22 = getelementptr inbounds %struct.PaintStroke, ptr %2, i64 0, i32 12
  br label %23

23:                                               ; preds = %17, %28
  %24 = phi float [ %13, %17 ], [ %40, %28 ]
  %25 = load float, ptr %4, align 4, !tbaa !31
  %26 = fadd float %24, %25
  store float 0.000000e+00, ptr %4, align 4, !tbaa !31
  %27 = fcmp ult float %26, %3
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = fsub float %3, %25
  %30 = load <2 x float>, ptr %12, align 8, !tbaa !31
  %31 = insertelement <2 x float> poison, float %29, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %32, <2 x float> %30)
  store <2 x float> %33, ptr %8, align 8, !tbaa !31
  %34 = load ptr, ptr %19, align 8, !tbaa !9
  %35 = call fastcc float @paint_stroke_integrate_overlap(ptr noundef %34, float noundef 1.000000e+00) #17
  store float %35, ptr %20, align 8, !tbaa !38
  %36 = load float, ptr %21, align 4, !tbaa !32
  %37 = fdiv float %3, %36
  %38 = load float, ptr %22, align 8, !tbaa !66
  %39 = fadd float %38, %37
  store float %39, ptr %22, align 8, !tbaa !66
  call fastcc void @paint_brush_stroke_add_step(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, float noundef 1.000000e+00) #17
  %40 = fsub float %26, %3
  %41 = fcmp ogt float %40, 0.000000e+00
  br i1 %41, label %23, label %42

42:                                               ; preds = %28, %23, %15
  %43 = phi float [ %13, %15 ], [ %26, %23 ], [ %40, %28 ]
  store float %43, ptr %4, align 4, !tbaa !31
  br label %44

44:                                               ; preds = %7, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v2(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = tail call fastcc float @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #17
  ret float %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %0, align 4, !tbaa !31
  %4 = load float, ptr %1, align 4, !tbaa !31
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !31
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !31
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !31
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !31
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !31
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #9 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !31
  ret void
}

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef float @paint_space_stroke_spacing_variable(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.PaintStroke, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef %0, ptr noundef %7) #15
  %9 = icmp eq i32 %8, 0
  %10 = tail call fastcc float @paint_space_stroke_spacing(ptr noundef %0, ptr noundef nonnull %1, float noundef 1.000000e+00, float noundef %2) #17
  br i1 %9, label %25, label %11

11:                                               ; preds = %5
  %12 = fmul float %10, %3
  %13 = fmul float %4, 2.000000e+00
  %14 = fdiv float %12, %13
  %15 = fadd float %14, 1.000000e+00
  %16 = fsub float 1.000000e+00, %14
  %17 = fdiv float %15, %16
  %18 = getelementptr inbounds %struct.PaintStroke, ptr %1, i64 0, i32 19
  %19 = load float, ptr %18, align 4, !tbaa !56
  %20 = fmul float %19, %17
  %21 = tail call fastcc float @paint_space_stroke_spacing(ptr noundef %0, ptr noundef nonnull %1, float noundef %19, float noundef %2) #17
  %22 = tail call fastcc float @paint_space_stroke_spacing(ptr noundef %0, ptr noundef nonnull %1, float noundef %20, float noundef %2) #17
  %23 = fadd float %21, %22
  %24 = fmul float %23, 5.000000e-01
  br label %25

25:                                               ; preds = %5, %11
  %26 = phi float [ %24, %11 ], [ %10, %5 ]
  ret float %26
}

; Function Attrs: optsize
declare i32 @BKE_brush_use_size_pressure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @paint_stroke_use_jitter(i32 noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !33
  %6 = and i32 %5, 1073741824
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 19
  %10 = load i32, ptr %9, align 4, !tbaa !103
  %11 = icmp ne i32 %10, 0
  br label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 18
  %14 = load float, ptr %13, align 8, !tbaa !104
  %15 = fcmp une float %14, 0.000000e+00
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ %11, %8 ], [ %15, %12 ]
  %18 = add i32 %0, -5
  %19 = icmp ult i32 %18, -2
  %20 = icmp eq i8 %2, 0
  %21 = or i1 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 36
  %24 = load i8, ptr %23, align 2, !tbaa !45
  %25 = icmp ne i8 %24, 3
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i8 [ 1, %16 ], [ %26, %22 ]
  %29 = and i32 %5, 8388864
  %30 = icmp eq i32 %29, 0
  %31 = and i1 %30, %17
  %32 = select i1 %31, i8 %28, i8 0
  ret i8 %32
}

; Function Attrs: optsize
declare void @BKE_brush_jitter_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !31
  %5 = load float, ptr %2, align 4, !tbaa !31
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !31
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !31
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !31
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @paint_brush_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, float noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [2 x float], align 8
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 16
  %14 = load i8, ptr %13, align 1, !tbaa !105
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 17
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %17, ptr noundef %5) #17
  %18 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 7
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %18, ptr noundef %5) #17
  %19 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 17
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %19, ptr noundef %5) #17
  %20 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 18
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %20, ptr noundef %5) #17
  %21 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 18
  store float %6, ptr %21, align 8, !tbaa !106
  %22 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 19
  store i32 0, ptr %22, align 4, !tbaa !107
  %23 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 20
  store ptr null, ptr %23, align 8, !tbaa !108
  %24 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !109
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.Tex, ptr %25, i64 0, i32 32
  %29 = load i16, ptr %28, align 8, !tbaa !110
  %30 = icmp eq i16 %29, 8
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Tex, ptr %25, i64 0, i32 54
  %33 = load ptr, ptr %32, align 8, !tbaa !113
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Tex, ptr %25, i64 0, i32 51
  %37 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %33, ptr noundef nonnull %36, ptr noundef null) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !114
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  store i32 1, ptr %22, align 4, !tbaa !107
  %44 = getelementptr inbounds %struct.ImBuf, ptr %37, i64 0, i32 34
  %45 = load ptr, ptr %44, align 8, !tbaa !117
  store ptr %45, ptr %23, align 8, !tbaa !108
  br label %46

46:                                               ; preds = %43, %39, %35
  %47 = load ptr, ptr %24, align 8, !tbaa !109
  %48 = getelementptr inbounds %struct.Tex, ptr %47, i64 0, i32 54
  %49 = load ptr, ptr %48, align 8, !tbaa !113
  tail call void @BKE_image_pool_release_ibuf(ptr noundef %49, ptr noundef %37, ptr noundef null) #15
  br label %50

50:                                               ; preds = %46, %31, %27, %16
  store i8 1, ptr %13, align 1, !tbaa !105
  br label %51

51:                                               ; preds = %50, %8
  %52 = tail call zeroext i8 @paint_supports_dynamic_size(ptr noundef %1, i32 noundef %2) #17, !range !44
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 18
  %56 = load float, ptr %55, align 8, !tbaa !106
  br label %61

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 17
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %58, ptr noundef %5) #17
  %59 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 18
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %59, ptr noundef %5) #17
  %60 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 18
  store float %6, ptr %60, align 8, !tbaa !106
  br label %61

61:                                               ; preds = %54, %57
  %62 = phi float [ %56, %54 ], [ %6, %57 ]
  %63 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 15
  store i32 1, ptr %63, align 4, !tbaa !40
  %64 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 18
  %65 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 16
  store float %62, ptr %65, align 8, !tbaa !118
  %66 = tail call i32 @BKE_brush_size_get(ptr noundef %10, ptr noundef %1) #15
  %67 = sitofp i32 %66 to float
  %68 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 21
  store float %67, ptr %68, align 8, !tbaa !92
  %69 = tail call i32 @BKE_brush_use_size_pressure(ptr noundef %10, ptr noundef %1) #15
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %61
  %72 = tail call zeroext i8 @paint_supports_dynamic_size(ptr noundef %1, i32 noundef %2) #17, !range !44
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load float, ptr %64, align 8, !tbaa !106
  %76 = load float, ptr %68, align 8, !tbaa !92
  %77 = fmul float %75, %76
  store float %77, ptr %68, align 8, !tbaa !92
  br label %78

78:                                               ; preds = %74, %71, %61
  %79 = tail call zeroext i8 @paint_supports_dynamic_tex_coords(ptr noundef %1, i32 noundef %2) #17, !range !44
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %116, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 3, i32 20
  %83 = load i8, ptr %82, align 4, !tbaa !119
  switch i8 %83, label %103 [
    i8 0, label %84
    i8 3, label %84
    i8 4, label %84
  ]

84:                                               ; preds = %81, %81, %81
  %85 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %86 = load i32, ptr %85, align 8, !tbaa !33
  %87 = and i32 %86, 128
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = and i32 %86, 33554432
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = tail call float @BLI_frand() #15
  %94 = fmul float %93, 0x401921FB60000000
  %95 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 8
  store float %94, ptr %95, align 4, !tbaa !89
  %96 = load i8, ptr %82, align 4, !tbaa !119
  br label %99

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 8
  store float 0.000000e+00, ptr %98, align 4, !tbaa !89
  br label %99

99:                                               ; preds = %92, %97, %84
  %100 = phi i8 [ %96, %92 ], [ %83, %97 ], [ %83, %84 ]
  %101 = icmp eq i8 %100, 4
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  tail call void @BKE_brush_randomize_texture_coordinates(ptr noundef nonnull %12, i8 noundef zeroext 0) #15
  br label %105

103:                                              ; preds = %81, %99
  %104 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 17
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %104, ptr noundef %5) #17
  br label %105

105:                                              ; preds = %103, %102
  %106 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4, i32 5
  %107 = load ptr, ptr %106, align 8, !tbaa !120
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 4, i32 20
  %111 = load i8, ptr %110, align 4, !tbaa !121
  %112 = icmp eq i8 %111, 4
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  tail call void @BKE_brush_randomize_texture_coordinates(ptr noundef nonnull %12, i8 noundef zeroext 1) #15
  br label %116

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 18
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %115, ptr noundef %5) #17
  br label %116

116:                                              ; preds = %105, %114, %113, %78
  %117 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 16
  %118 = load i32, ptr %117, align 8, !tbaa !33
  %119 = and i32 %118, 256
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %161, label %121

121:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %122 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 17
  %123 = load <2 x float>, ptr %5, align 4, !tbaa !31
  %124 = load <2 x float>, ptr %122, align 8, !tbaa !31
  %125 = fsub <2 x float> %123, %124
  %126 = extractelement <2 x float> %125, i64 1
  %127 = fmul float %126, %126
  %128 = extractelement <2 x float> %125, i64 0
  %129 = tail call float @llvm.fmuladd.f32(float %128, float %128, float %127)
  %130 = tail call float @llvm.sqrt.f32(float %129)
  store float %130, ptr %68, align 8, !tbaa !92
  %131 = fptosi float %130 to i32
  %132 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 10
  store i32 %131, ptr %132, align 4, !tbaa !122
  %133 = tail call float @atan2f(float noundef %128, float noundef %126) #15
  %134 = fpext float %133 to double
  %135 = fadd double %134, 0x400921FB54442D18
  %136 = fptrunc double %135 to float
  %137 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 8
  store float %136, ptr %137, align 4, !tbaa !89
  %138 = load i32, ptr %117, align 8, !tbaa !33
  %139 = and i32 %138, 4194304
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %121
  %142 = load <2 x float>, ptr %122, align 8, !tbaa !31
  %143 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %125, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> %142)
  store <2 x float> %143, ptr %9, align 8, !tbaa !31
  %144 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 23
  %145 = load ptr, ptr %144, align 8, !tbaa !20
  %146 = icmp eq ptr %145, null
  br i1 %146, label %170, label %147

147:                                              ; preds = %141
  %148 = call zeroext i8 %145(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %9) #15
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %170

150:                                              ; preds = %147
  %151 = call fastcc zeroext i8 @paint_tool_require_location(ptr noundef nonnull %1, i32 noundef %2) #17, !range !44
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %170, label %153

153:                                              ; preds = %150, %121
  %154 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 14
  call fastcc void @copy_v2_v2(ptr noundef nonnull %154, ptr noundef nonnull %122) #17
  call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %122) #17
  %155 = load float, ptr %68, align 8, !tbaa !92
  %156 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 12
  store float %155, ptr %156, align 8, !tbaa !66
  %157 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 21
  %158 = load float, ptr %157, align 4, !tbaa !32
  %159 = fdiv float %155, %158
  store float %159, ptr %68, align 8, !tbaa !92
  %160 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 9
  store i32 1, ptr %160, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %186

161:                                              ; preds = %116
  %162 = and i32 %118, 128
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %186, label %164

164:                                              ; preds = %161
  %165 = load i8, ptr %13, align 1, !tbaa !105
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 7
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %168, ptr noundef %4) #17
  br label %186

169:                                              ; preds = %164
  tail call void @paint_calculate_rake_rotation(ptr noundef nonnull %12, ptr noundef %4) #15
  br label %186

170:                                              ; preds = %141, %147, %150
  %171 = phi i1 [ true, %150 ], [ true, %141 ], [ false, %147 ]
  %172 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 14
  call fastcc void @copy_v2_v2(ptr noundef nonnull %172, ptr noundef nonnull %9) #17
  %173 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 17
  call fastcc void @copy_v2_v2(ptr noundef nonnull %173, ptr noundef nonnull %9) #17
  %174 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 18
  call fastcc void @copy_v2_v2(ptr noundef nonnull %174, ptr noundef nonnull %9) #17
  call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %9) #17
  %175 = load i32, ptr %132, align 4, !tbaa !122
  %176 = sitofp i32 %175 to float
  %177 = fmul float %176, 5.000000e-01
  %178 = fptosi float %177 to i32
  store i32 %178, ptr %132, align 4, !tbaa !122
  %179 = load float, ptr %68, align 8, !tbaa !92
  %180 = fmul float %179, 5.000000e-01
  %181 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 12
  store float %180, ptr %181, align 8, !tbaa !66
  %182 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 21
  %183 = load float, ptr %182, align 4, !tbaa !32
  %184 = fdiv float %180, %183
  store float %184, ptr %68, align 8, !tbaa !92
  %185 = getelementptr inbounds %struct.UnifiedPaintSettings, ptr %12, i64 0, i32 9
  store i32 1, ptr %185, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br i1 %171, label %186, label %197

186:                                              ; preds = %161, %167, %169, %153, %170
  %187 = getelementptr inbounds %struct.PaintStroke, ptr %3, i64 0, i32 23
  %188 = load ptr, ptr %187, align 8, !tbaa !20
  %189 = icmp eq ptr %188, null
  br i1 %189, label %196, label %190

190:                                              ; preds = %186
  %191 = call zeroext i8 %188(ptr noundef %0, ptr noundef %7, ptr noundef %5) #15
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = call fastcc zeroext i8 @paint_tool_require_location(ptr noundef nonnull %1, i32 noundef %2) #17, !range !44
  %195 = xor i8 %194, 1
  br label %197

196:                                              ; preds = %186
  call fastcc void @zero_v3(ptr noundef %7) #17
  br label %197

197:                                              ; preds = %193, %190, %196, %170
  %198 = phi i8 [ 1, %170 ], [ 1, %196 ], [ 1, %190 ], [ %195, %193 ]
  ret i8 %198
}

; Function Attrs: optsize
declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_pool_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_pool_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_frand() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_brush_randomize_texture_coordinates(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @paint_tool_require_location(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 34
  %6 = load i8, ptr %5, align 8, !tbaa !46
  %7 = add i8 %6, -5
  %8 = icmp ult i8 %7, 10
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = zext nneg i8 %7 to i64
  %11 = getelementptr inbounds [10 x i8], ptr @switch.table.paint_tool_require_location, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1
  br label %13

13:                                               ; preds = %4, %9, %2
  %14 = phi i8 [ 1, %2 ], [ %12, %9 ], [ 1, %4 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #9 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !31
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @paint_stroke_overlapped_curve(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = fdiv float 1.000000e+02, %2
  %5 = fptosi float %4 to i32
  %6 = fdiv float %2, 5.000000e+01
  %7 = fadd float %1, -1.000000e+00
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %3, %19
  %10 = phi i32 [ %21, %19 ], [ 0, %3 ]
  %11 = phi float [ %20, %19 ], [ 0.000000e+00, %3 ]
  %12 = sitofp i32 %10 to float
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %6, float %7)
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp olt float %14, 1.000000e+00
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = tail call float @BKE_brush_curve_strength(ptr noundef %0, float noundef %14, float noundef 1.000000e+00) #15
  %18 = fadd float %11, %17
  br label %19

19:                                               ; preds = %16, %9
  %20 = phi float [ %18, %16 ], [ %11, %9 ]
  %21 = add nuw nsw i32 %10, 1
  %22 = icmp eq i32 %21, %5
  br i1 %22, label %23, label %9, !llvm.loop !123

23:                                               ; preds = %19, %3
  %24 = phi float [ 0.000000e+00, %3 ], [ %20, %19 ]
  ret float %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: optsize
declare float @BKE_brush_curve_strength(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }

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
!9 = !{!10, !6, i64 360}
!10 = !{!"PaintStroke", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !12, i64 88, !6, i64 360, !6, i64 368, !13, i64 376, !7, i64 392, !14, i64 1160, !14, i64 1164, !7, i64 1168, !15, i64 1176, !7, i64 1180, !14, i64 1184, !7, i64 1188, !7, i64 1189, !7, i64 1192, !15, i64 1200, !15, i64 1204, !14, i64 1208, !15, i64 1212, !14, i64 1216, !6, i64 1224, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256}
!11 = !{!"ViewContext", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !7, i64 56}
!12 = !{!"bglMats", !7, i64 0, !7, i64 128, !7, i64 256}
!13 = !{!"ListBase", !6, i64 0, !6, i64 8}
!14 = !{!"int", !7, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!10, !6, i64 56}
!17 = !{!10, !6, i64 48}
!18 = !{!10, !6, i64 64}
!19 = !{!10, !6, i64 32}
!20 = !{!10, !6, i64 1224}
!21 = !{!10, !6, i64 1232}
!22 = !{!10, !6, i64 1240}
!23 = !{!10, !6, i64 1248}
!24 = !{!10, !6, i64 1256}
!25 = !{!10, !14, i64 1184}
!26 = !{!10, !6, i64 368}
!27 = !{!28, !6, i64 112}
!28 = !{!"wmOperator", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !13, i64 128, !6, i64 144, !6, i64 152, !29, i64 160, !7, i64 162}
!29 = !{!"short", !7, i64 0}
!30 = !{!10, !14, i64 1208}
!31 = !{!15, !15, i64 0}
!32 = !{!10, !15, i64 1212}
!33 = !{!34, !14, i64 1856}
!34 = !{!"Brush", !35, i64 0, !36, i64 120, !6, i64 144, !37, i64 152, !37, i64 464, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !7, i64 816, !15, i64 1840, !29, i64 1844, !29, i64 1846, !15, i64 1848, !14, i64 1852, !14, i64 1856, !14, i64 1860, !15, i64 1864, !14, i64 1868, !14, i64 1872, !14, i64 1876, !14, i64 1880, !15, i64 1884, !15, i64 1888, !7, i64 1892, !15, i64 1904, !7, i64 1908, !14, i64 1920, !15, i64 1924, !15, i64 1928, !14, i64 1932, !14, i64 1936, !14, i64 1940, !7, i64 1944, !7, i64 1945, !7, i64 1946, !7, i64 1947, !15, i64 1948, !15, i64 1952, !15, i64 1956, !15, i64 1960, !15, i64 1964, !14, i64 1968, !14, i64 1972, !14, i64 1976, !15, i64 1980, !15, i64 1984, !14, i64 1988, !14, i64 1992, !15, i64 1996, !7, i64 2000, !7, i64 2012, !7, i64 2024, !7, i64 2032, !7, i64 2040, !7, i64 2048}
!35 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !29, i64 98, !14, i64 100, !14, i64 104, !14, i64 108, !6, i64 112}
!36 = !{!"BrushClone", !6, i64 0, !7, i64 8, !15, i64 16, !15, i64 20}
!37 = !{!"MTex", !29, i64 0, !29, i64 2, !29, i64 4, !29, i64 6, !6, i64 8, !6, i64 16, !7, i64 24, !7, i64 88, !7, i64 89, !7, i64 90, !7, i64 91, !7, i64 92, !7, i64 104, !15, i64 116, !29, i64 120, !29, i64 122, !29, i64 124, !29, i64 126, !29, i64 128, !29, i64 130, !7, i64 132, !7, i64 133, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !15, i64 208, !15, i64 212, !15, i64 216, !15, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !15, i64 236, !15, i64 240, !15, i64 244, !15, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !15, i64 308}
!38 = !{!39, !15, i64 72}
!39 = !{!"UnifiedPaintSettings", !14, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !7, i64 16, !7, i64 28, !14, i64 40, !7, i64 44, !15, i64 52, !14, i64 56, !14, i64 60, !7, i64 64, !7, i64 65, !15, i64 72, !7, i64 76, !14, i64 84, !15, i64 88, !7, i64 92, !7, i64 100, !14, i64 108, !6, i64 112, !15, i64 120, !14, i64 124}
!40 = !{!39, !14, i64 84}
!41 = !{!34, !6, i64 144}
!42 = !{!34, !14, i64 1872}
!43 = !{!28, !6, i64 96}
!44 = !{i8 0, i8 2}
!45 = !{!34, !7, i64 1946}
!46 = !{!34, !7, i64 1944}
!47 = !{!14, !14, i64 0}
!48 = !{!49, !29, i64 16}
!49 = !{!"wmEvent", !6, i64 0, !6, i64 8, !29, i64 16, !29, i64 18, !14, i64 20, !14, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !29, i64 44, !29, i64 46, !14, i64 48, !14, i64 52, !50, i64 56, !14, i64 64, !14, i64 68, !29, i64 72, !29, i64 74, !29, i64 76, !29, i64 78, !29, i64 80, !29, i64 82, !6, i64 88, !6, i64 96, !29, i64 104, !29, i64 106, !14, i64 108, !6, i64 112}
!50 = !{!"double", !7, i64 0}
!51 = !{!10, !7, i64 1188}
!52 = !{!10, !6, i64 8}
!53 = !{!10, !7, i64 1180}
!54 = !{!55, !15, i64 8}
!55 = !{!"PaintSample", !7, i64 0, !15, i64 8}
!56 = !{!10, !15, i64 1204}
!57 = !{!34, !15, i64 1888}
!58 = !{!10, !6, i64 16}
!59 = !{!49, !29, i64 18}
!60 = !{!28, !6, i64 88}
!61 = !{!62, !6, i64 56}
!62 = !{!"wmOperatorType", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !13, i64 112, !6, i64 128, !6, i64 136, !6, i64 144, !63, i64 152, !29, i64 184}
!63 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!64 = !{!49, !6, i64 112}
!65 = !{i32 0, i32 2}
!66 = !{!10, !15, i64 1176}
!67 = !{!68, !14, i64 28}
!68 = !{!"Paint", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24, !14, i64 28, !14, i64 32, !14, i64 36}
!69 = !{!10, !14, i64 1164}
!70 = !{!68, !14, i64 32}
!71 = !{!10, !14, i64 1160}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!34, !6, i64 808}
!75 = !{!76, !6, i64 120}
!76 = !{!"PaintCurve", !35, i64 0, !6, i64 120, !14, i64 128, !14, i64 132}
!77 = !{!76, !14, i64 128}
!78 = distinct !{!78, !73}
!79 = distinct !{!79, !73}
!80 = !{!81, !7, i64 72}
!81 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !82, i64 56, !7, i64 72, !7, i64 73, !29, i64 74, !29, i64 76, !29, i64 78, !29, i64 80, !29, i64 82, !29, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !13, i64 96, !13, i64 112, !13, i64 128, !13, i64 144}
!82 = !{!"rcti", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!83 = !{!84, !29, i64 214}
!84 = !{!"ARegion", !6, i64 0, !6, i64 8, !85, i64 16, !82, i64 176, !82, i64 192, !29, i64 208, !29, i64 210, !29, i64 212, !29, i64 214, !29, i64 216, !29, i64 218, !15, i64 220, !29, i64 224, !29, i64 226, !29, i64 228, !29, i64 230, !29, i64 232, !29, i64 234, !29, i64 236, !29, i64 238, !6, i64 240, !13, i64 248, !13, i64 264, !13, i64 280, !13, i64 296, !13, i64 312, !13, i64 328, !13, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!85 = !{!"View2D", !86, i64 0, !86, i64 16, !82, i64 32, !82, i64 48, !82, i64 64, !7, i64 80, !7, i64 88, !15, i64 96, !15, i64 100, !29, i64 104, !29, i64 106, !29, i64 108, !29, i64 110, !29, i64 112, !29, i64 114, !29, i64 116, !29, i64 118, !29, i64 120, !29, i64 122, !29, i64 124, !29, i64 126, !6, i64 128, !14, i64 136, !14, i64 140, !6, i64 144, !6, i64 152}
!86 = !{!"rctf", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!87 = !{!7, !7, i64 0}
!88 = !{!39, !14, i64 56}
!89 = !{!39, !15, i64 52}
!90 = !{!34, !14, i64 1880}
!91 = !{!34, !15, i64 1884}
!92 = !{!39, !15, i64 120}
!93 = !{!10, !14, i64 1216}
!94 = !{!34, !14, i64 1876}
!95 = distinct !{!95, !73}
!96 = !{!97, !14, i64 128}
!97 = !{!"CollectionPropertyIterator", !98, i64 0, !98, i64 24, !6, i64 48, !7, i64 56, !14, i64 96, !14, i64 100, !98, i64 104, !14, i64 128}
!98 = !{!"PointerRNA", !99, i64 0, !6, i64 8, !6, i64 16}
!99 = !{!"", !6, i64 0}
!100 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5}
!101 = distinct !{!101, !73}
!102 = !{!10, !6, i64 0}
!103 = !{!34, !14, i64 1868}
!104 = !{!34, !15, i64 1864}
!105 = !{!10, !7, i64 1189}
!106 = !{!10, !15, i64 1200}
!107 = !{!39, !14, i64 108}
!108 = !{!39, !6, i64 112}
!109 = !{!34, !6, i64 168}
!110 = !{!111, !29, i64 232}
!111 = !{!"Tex", !35, i64 0, !6, i64 120, !15, i64 128, !15, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !15, i64 208, !15, i64 212, !29, i64 216, !29, i64 218, !29, i64 220, !29, i64 222, !29, i64 224, !29, i64 226, !29, i64 228, !29, i64 230, !29, i64 232, !29, i64 234, !15, i64 236, !15, i64 240, !15, i64 244, !15, i64 248, !14, i64 252, !14, i64 256, !29, i64 260, !29, i64 262, !29, i64 264, !29, i64 266, !14, i64 268, !14, i64 272, !14, i64 276, !14, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !112, i64 296, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !7, i64 408, !7, i64 409}
!112 = !{!"ImageUser", !6, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !29, i64 28, !29, i64 30, !29, i64 32, !29, i64 34, !14, i64 36}
!113 = !{!111, !6, i64 352}
!114 = !{!115, !6, i64 48}
!115 = !{!"ImBuf", !6, i64 0, !6, i64 8, !14, i64 16, !14, i64 20, !7, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !6, i64 40, !6, i64 48, !7, i64 56, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !15, i64 112, !7, i64 120, !14, i64 280, !14, i64 284, !14, i64 288, !14, i64 292, !6, i64 296, !6, i64 304, !14, i64 312, !7, i64 316, !7, i64 1340, !6, i64 2368, !14, i64 2376, !6, i64 2384, !14, i64 2392, !14, i64 2396, !6, i64 2400, !6, i64 2408, !6, i64 2416, !6, i64 2424, !14, i64 2432, !82, i64 2436, !116, i64 2456}
!116 = !{!"DDSData", !14, i64 0, !14, i64 4, !6, i64 8, !14, i64 16}
!117 = !{!115, !6, i64 2400}
!118 = !{!39, !15, i64 88}
!119 = !{!34, !7, i64 284}
!120 = !{!34, !6, i64 480}
!121 = !{!34, !7, i64 596}
!122 = !{!39, !14, i64 60}
!123 = distinct !{!123, !73}
