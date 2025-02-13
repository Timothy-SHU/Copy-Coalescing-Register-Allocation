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
  store i16 20, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
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
  %2 = load ptr, ptr %1, align 8, !tbaa !45
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %0, %10
  %5 = phi ptr [ %11, %10 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.SpaceType, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7() #4
  br label %10

10:                                               ; preds = %4, %9
  %11 = load ptr, ptr %5, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !48

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
  %2 = load ptr, ptr %1, align 8, !tbaa !45
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %0, %10
  %5 = phi ptr [ %11, %10 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.SpaceType, ptr %5, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7() #4
  br label %10

10:                                               ; preds = %4, %9
  %11 = load ptr, ptr %5, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !51

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
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %8

5:                                                ; preds = %24, %14
  %6 = load ptr, ptr %9, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8, !llvm.loop !52

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.SpaceType, ptr %9, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void %11(ptr noundef %0) #4
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.SpaceType, ptr %9, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %5, label %18

18:                                               ; preds = %14, %24
  %19 = phi ptr [ %25, %24 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.ARegionType, ptr %19, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void %21(ptr noundef %0) #4
  br label %24

24:                                               ; preds = %18, %23
  %25 = load ptr, ptr %19, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %5, label %18, !llvm.loop !56

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
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %6 = tail call ptr %5(i64 noundef 40, ptr noundef nonnull @.str) #4
  %7 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 13
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.RegionDrawCB, ptr %6, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.RegionDrawCB, ptr %6, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.RegionDrawCB, ptr %6, i64 0, i32 4
  store i32 %3, ptr %10, align 8, !tbaa !60
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
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %6, %1
  br i1 %9, label %10, label %4, !llvm.loop !61

10:                                               ; preds = %8
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %1) #4
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
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
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.ARegionType, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %3, %19
  %10 = phi ptr [ %20, %19 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.RegionDrawCB, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !60
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.RegionDrawCB, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.RegionDrawCB, ptr %10, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  tail call void %16(ptr noundef %0, ptr noundef %1, ptr noundef %18) #4
  br label %19

19:                                               ; preds = %9, %14
  %20 = load ptr, ptr %10, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !67

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_xxx() local_unnamed_addr #0 {
  store i32 1, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 3), align 8, !tbaa !68
  store ptr @xxx_new, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 5), align 8, !tbaa !69
  store ptr @xxx_free, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 6), align 8, !tbaa !70
  store ptr @xxx_init, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 7), align 8, !tbaa !71
  store ptr @xxx_duplicate, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 11), align 8, !tbaa !72
  store ptr @xxx_operatortypes, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 12), align 8, !tbaa !46
  store ptr @xxx_keymap, ptr getelementptr inbounds (%struct.SpaceType, ptr @ED_spacetype_xxx.st, i64 0, i32 13), align 8, !tbaa !53
  tail call void @BKE_spacetype_register(ptr noundef nonnull @ED_spacetype_xxx.st) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noalias noundef ptr @xxx_new(ptr nocapture readnone %0) #3 !PGOFuncName !73 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @xxx_free(ptr nocapture readnone %0) #3 !PGOFuncName !74 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @xxx_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #3 !PGOFuncName !75 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noalias noundef ptr @xxx_duplicate(ptr nocapture readnone %0) #3 !PGOFuncName !76 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @xxx_operatortypes() #3 !PGOFuncName !77 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @xxx_keymap(ptr nocapture readnone %0) #3 !PGOFuncName !78 {
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }

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
!34 = !{!35, !39, i64 8948}
!35 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !42, i64 8956, !42, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !42, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !43, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !42, i64 10904, !42, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !44, i64 10928}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"ListBase", !41, i64 0, !41, i64 8}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"float", !37, i64 0}
!43 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!44 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !39, i64 24, !37, i64 26}
!45 = !{!41, !41, i64 0}
!46 = !{!47, !41, i64 144}
!47 = !{!"SpaceType", !41, i64 0, !41, i64 8, !37, i64 16, !36, i64 80, !36, i64 84, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !40, i64 176, !40, i64 192, !36, i64 208}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!47, !41, i64 160}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !49}
!53 = !{!47, !41, i64 152}
!54 = !{!55, !41, i64 80}
!55 = !{!"ARegionType", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !40, i64 104, !40, i64 120, !40, i64 136, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !39, i64 172, !39, i64 174, !39, i64 176}
!56 = distinct !{!56, !49}
!57 = !{!58, !41, i64 16}
!58 = !{!"RegionDrawCB", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32}
!59 = !{!58, !41, i64 24}
!60 = !{!58, !36, i64 32}
!61 = distinct !{!61, !49}
!62 = !{!63, !41, i64 240}
!63 = !{!"ARegion", !41, i64 0, !41, i64 8, !64, i64 16, !66, i64 176, !66, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !42, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !40, i64 248, !40, i64 264, !40, i64 280, !40, i64 296, !40, i64 312, !40, i64 328, !40, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!64 = !{!"View2D", !65, i64 0, !65, i64 16, !66, i64 32, !66, i64 48, !66, i64 64, !37, i64 80, !37, i64 88, !42, i64 96, !42, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!65 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!66 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!67 = distinct !{!67, !49}
!68 = !{!47, !36, i64 80}
!69 = !{!47, !41, i64 88}
!70 = !{!47, !41, i64 96}
!71 = !{!47, !41, i64 104}
!72 = !{!47, !41, i64 136}
!73 = !{!"spacetypes.c:xxx_new"}
!74 = !{!"spacetypes.c:xxx_free"}
!75 = !{!"spacetypes.c:xxx_init"}
!76 = !{!"spacetypes.c:xxx_duplicate"}
!77 = !{!"spacetypes.c:xxx_operatortypes"}
!78 = !{!"spacetypes.c:xxx_keymap"}
