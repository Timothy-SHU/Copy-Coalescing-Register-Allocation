; ModuleID = 'blender/source/blender/editors/space_api/spacetypes.c'
source_filename = "blender/source/blender/editors/space_api/spacetypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.RegionDrawCB = type { ptr, ptr, ptr, ptr, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"RegionDrawCB\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@ED_spacetype_xxx.st = internal global %struct.SpaceType zeroinitializer, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetypes_init() local_unnamed_addr #0 {
  store i16 20, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  tail call void @ED_spacetype_outliner() #4
  tail call void @ED_spacetype_time() #4
  tail call void @ED_spacetype_view3d() #4
  tail call void @ED_spacetype_ipo() #4
  tail call void @ED_spacetype_image() #4
  tail call void @ED_spacetype_node() #4
  tail call void @ED_spacetype_buttons() #4
  tail call void @ED_spacetype_info() #4
  tail call void @ED_spacetype_file() #4
  tail call void @ED_spacetype_action() #4
  tail call void @ED_spacetype_nla() #4
  tail call void @ED_spacetype_script() #4
  tail call void @ED_spacetype_text() #4
  tail call void @ED_spacetype_sequencer() #4
  tail call void @ED_spacetype_logic() #4
  tail call void @ED_spacetype_console() #4
  tail call void @ED_spacetype_userpref() #4
  tail call void @ED_spacetype_clip() #4
  tail call void @ED_operatortypes_screen() #4
  tail call void @ED_operatortypes_anim() #4
  tail call void @ED_operatortypes_animchannels() #4
  tail call void @ED_operatortypes_gpencil() #4
  tail call void @ED_operatortypes_object() #4
  tail call void @ED_operatortypes_mesh() #4
  tail call void @ED_operatortypes_sculpt() #4
  tail call void @ED_operatortypes_uvedit() #4
  tail call void @ED_operatortypes_paint() #4
  tail call void @ED_operatortypes_physics() #4
  tail call void @ED_operatortypes_curve() #4
  tail call void @ED_operatortypes_armature() #4
  tail call void @ED_operatortypes_marker() #4
  tail call void @ED_operatortypes_metaball() #4
  tail call void @ED_operatortypes_sound() #4
  tail call void @ED_operatortypes_render() #4
  tail call void @ED_operatortypes_logic() #4
  tail call void @ED_operatortypes_mask() #4
  tail call void @ED_operatortypes_io() #4
  tail call void @ED_operatortypes_view2d() #4
  tail call void @UI_buttons_operatortypes() #4
  %1 = tail call ptr @BKE_spacetypes_list() #4
  %2 = load ptr, ptr %1, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %0, %10
  %5 = phi ptr [ %11, %10 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.SpaceType, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7() #4
  br label %10

10:                                               ; preds = %4, %9
  %11 = load ptr, ptr %5, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !19

13:                                               ; preds = %10, %0
  tail call void @ED_render_internal_init() #4
  ret void
}

; Function Attrs: optsize
declare void @ED_spacetype_outliner() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_time() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_view3d() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_ipo() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_image() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_node() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_buttons() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_info() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_file() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_action() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_nla() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_script() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_text() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_sequencer() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_logic() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_console() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_userpref() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetype_clip() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_screen() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_anim() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_animchannels() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_gpencil() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_object() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_mesh() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_sculpt() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_uvedit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_paint() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_physics() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_curve() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_armature() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_marker() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_metaball() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_sound() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_render() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_logic() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_mask() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_io() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatortypes_view2d() local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_buttons_operatortypes() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_spacetypes_list() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_render_internal_init() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacemacros_init() local_unnamed_addr #0 {
  tail call void @ED_operatormacros_armature() #4
  tail call void @ED_operatormacros_mesh() #4
  tail call void @ED_operatormacros_metaball() #4
  tail call void @ED_operatormacros_node() #4
  tail call void @ED_operatormacros_object() #4
  tail call void @ED_operatormacros_file() #4
  tail call void @ED_operatormacros_graph() #4
  tail call void @ED_operatormacros_action() #4
  tail call void @ED_operatormacros_clip() #4
  tail call void @ED_operatormacros_curve() #4
  tail call void @ED_operatormacros_mask() #4
  tail call void @ED_operatormacros_sequencer() #4
  tail call void @ED_operatormacros_paint() #4
  %1 = tail call ptr @BKE_spacetypes_list() #4
  %2 = load ptr, ptr %1, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %0, %10
  %5 = phi ptr [ %11, %10 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.SpaceType, ptr %5, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7() #4
  br label %10

10:                                               ; preds = %4, %9
  %11 = load ptr, ptr %5, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !22

13:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: optsize
declare void @ED_operatormacros_armature() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_mesh() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_metaball() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_node() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_object() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_file() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_graph() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_action() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_clip() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_curve() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_mask() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_sequencer() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_operatormacros_paint() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetypes_keymap(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @ED_keymap_screen(ptr noundef %0) #4
  tail call void @ED_keymap_anim(ptr noundef %0) #4
  tail call void @ED_keymap_animchannels(ptr noundef %0) #4
  tail call void @ED_keymap_gpencil(ptr noundef %0) #4
  tail call void @ED_keymap_object(ptr noundef %0) #4
  tail call void @ED_keymap_mesh(ptr noundef %0) #4
  tail call void @ED_keymap_uvedit(ptr noundef %0) #4
  tail call void @ED_keymap_curve(ptr noundef %0) #4
  tail call void @ED_keymap_armature(ptr noundef %0) #4
  tail call void @ED_keymap_physics(ptr noundef %0) #4
  tail call void @ED_keymap_metaball(ptr noundef %0) #4
  tail call void @ED_keymap_paint(ptr noundef %0) #4
  tail call void @ED_keymap_mask(ptr noundef %0) #4
  tail call void @ED_keymap_marker(ptr noundef %0) #4
  tail call void @ED_keymap_view2d(ptr noundef %0) #4
  %2 = tail call ptr @BKE_spacetypes_list() #4
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %8

5:                                                ; preds = %24, %14
  %6 = load ptr, ptr %9, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8, !llvm.loop !23

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.SpaceType, ptr %9, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void %11(ptr noundef %0) #4
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.SpaceType, ptr %9, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %5, label %18

18:                                               ; preds = %14, %24
  %19 = phi ptr [ %25, %24 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.ARegionType, ptr %19, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void %21(ptr noundef %0) #4
  br label %24

24:                                               ; preds = %18, %23
  %25 = load ptr, ptr %19, align 8, !tbaa !16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %5, label %18, !llvm.loop !27

27:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @ED_keymap_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_anim(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_animchannels(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_gpencil(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_mesh(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_uvedit(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_curve(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_armature(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_physics(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_metaball(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_paint(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_marker(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_keymap_view2d(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ED_region_draw_cb_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %6 = tail call ptr %5(i64 noundef 40, ptr noundef nonnull @.str) #4
  %7 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 13
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.RegionDrawCB, ptr %6, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.RegionDrawCB, ptr %6, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct.RegionDrawCB, ptr %6, i64 0, i32 4
  store i32 %3, ptr %10, align 8, !tbaa !31
  ret ptr %6
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_draw_cb_exit(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 13
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %6, %1
  br i1 %9, label %10, label %4, !llvm.loop !32

10:                                               ; preds = %8
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %1) #4
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %11(ptr noundef nonnull %1) #4
  br label %12

12:                                               ; preds = %4, %10
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ED_region_draw_cb_customdata(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.RegionDrawCB, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !33
  %6 = getelementptr inbounds %struct.ARegionType, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %3, %19
  %10 = phi ptr [ %20, %19 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.RegionDrawCB, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !31
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.RegionDrawCB, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.RegionDrawCB, ptr %10, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !30
  tail call void %16(ptr noundef %0, ptr noundef %1, ptr noundef %18) #4
  br label %19

19:                                               ; preds = %9, %14
  %20 = load ptr, ptr %10, align 8, !tbaa !16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !38

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_xxx() local_unnamed_addr #0 {
  store i32 1, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 3), align 8, !tbaa !39
  store ptr @xxx_new, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 5), align 8, !tbaa !40
  store ptr @xxx_free, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 6), align 8, !tbaa !41
  store ptr @xxx_init, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 7), align 8, !tbaa !42
  store ptr @xxx_duplicate, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 11), align 8, !tbaa !43
  store ptr @xxx_operatortypes, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 12), align 8, !tbaa !17
  store ptr @xxx_keymap, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 13), align 8, !tbaa !24
  tail call void @BKE_spacetype_register(ptr noundef nonnull @ED_spacetype_xxx.st) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noalias noundef ptr @xxx_new(ptr nocapture readnone %0) #3 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @xxx_free(ptr nocapture readnone %0) #3 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @xxx_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #3 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noalias noundef ptr @xxx_duplicate(ptr nocapture readnone %0) #3 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @xxx_operatortypes() #3 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @xxx_keymap(ptr nocapture readnone %0) #3 {
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 8948}
!6 = !{!"UserDef", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !7, i64 8468, !10, i64 8472, !10, i64 8474, !10, i64 8476, !10, i64 8478, !10, i64 8480, !10, i64 8482, !7, i64 8484, !7, i64 8488, !7, i64 8492, !10, i64 8496, !10, i64 8498, !7, i64 8500, !7, i64 8504, !7, i64 8508, !7, i64 8512, !7, i64 8516, !7, i64 8520, !7, i64 8524, !10, i64 8528, !10, i64 8530, !10, i64 8532, !10, i64 8534, !11, i64 8536, !11, i64 8552, !11, i64 8568, !11, i64 8584, !11, i64 8600, !11, i64 8616, !11, i64 8632, !8, i64 8648, !10, i64 8712, !10, i64 8714, !10, i64 8716, !10, i64 8718, !10, i64 8720, !10, i64 8722, !10, i64 8724, !10, i64 8726, !8, i64 8728, !10, i64 8896, !10, i64 8898, !10, i64 8900, !10, i64 8902, !10, i64 8904, !10, i64 8906, !10, i64 8908, !10, i64 8910, !7, i64 8912, !7, i64 8916, !10, i64 8920, !10, i64 8922, !10, i64 8924, !10, i64 8926, !10, i64 8928, !10, i64 8930, !10, i64 8932, !10, i64 8934, !10, i64 8936, !10, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !10, i64 8944, !10, i64 8946, !10, i64 8948, !10, i64 8950, !10, i64 8952, !10, i64 8954, !13, i64 8956, !13, i64 8960, !7, i64 8964, !10, i64 8968, !10, i64 8970, !13, i64 8972, !10, i64 8976, !10, i64 8978, !10, i64 8980, !10, i64 8982, !14, i64 8984, !8, i64 9760, !8, i64 9772, !10, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !7, i64 10896, !7, i64 10900, !13, i64 10904, !13, i64 10908, !7, i64 10912, !10, i64 10916, !10, i64 10918, !10, i64 10920, !10, i64 10922, !10, i64 10924, !10, i64 10926, !15, i64 10928}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!"ListBase", !12, i64 0, !12, i64 8}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!"ColorBand", !10, i64 0, !10, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!15 = !{!"WalkNavigation", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !10, i64 24, !8, i64 26}
!16 = !{!12, !12, i64 0}
!17 = !{!18, !12, i64 144}
!18 = !{!"SpaceType", !12, i64 0, !12, i64 8, !8, i64 16, !7, i64 80, !7, i64 84, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !11, i64 176, !11, i64 192, !7, i64 208}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!18, !12, i64 160}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = !{!18, !12, i64 152}
!25 = !{!26, !12, i64 80}
!26 = !{!"ARegionType", !12, i64 0, !12, i64 8, !7, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !11, i64 104, !11, i64 120, !11, i64 136, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !10, i64 172, !10, i64 174, !10, i64 176}
!27 = distinct !{!27, !20}
!28 = !{!29, !12, i64 16}
!29 = !{!"RegionDrawCB", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !7, i64 32}
!30 = !{!29, !12, i64 24}
!31 = !{!29, !7, i64 32}
!32 = distinct !{!32, !20}
!33 = !{!34, !12, i64 240}
!34 = !{!"ARegion", !12, i64 0, !12, i64 8, !35, i64 16, !37, i64 176, !37, i64 192, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !10, i64 216, !10, i64 218, !13, i64 220, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !10, i64 236, !10, i64 238, !12, i64 240, !11, i64 248, !11, i64 264, !11, i64 280, !11, i64 296, !11, i64 312, !11, i64 328, !11, i64 344, !12, i64 360, !12, i64 368, !12, i64 376}
!35 = !{!"View2D", !36, i64 0, !36, i64 16, !37, i64 32, !37, i64 48, !37, i64 64, !8, i64 80, !8, i64 88, !13, i64 96, !13, i64 100, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !12, i64 128, !7, i64 136, !7, i64 140, !12, i64 144, !12, i64 152}
!36 = !{!"rctf", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!37 = !{!"rcti", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!38 = distinct !{!38, !20}
!39 = !{!18, !7, i64 80}
!40 = !{!18, !12, i64 88}
!41 = !{!18, !12, i64 96}
!42 = !{!18, !12, i64 104}
!43 = !{!18, !12, i64 136}
