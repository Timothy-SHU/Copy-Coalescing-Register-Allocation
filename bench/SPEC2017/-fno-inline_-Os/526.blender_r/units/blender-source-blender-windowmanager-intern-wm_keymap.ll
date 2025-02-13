; ModuleID = 'blender/source/blender/windowmanager/intern/wm_keymap.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmKeyConfig = type { ptr, ptr, [64 x i8], [64 x i8], %struct.ListBase, i32, i32 }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapDiffItem = type { ptr, ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.wmEventHandler = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"wmKeyConfig\00", align 1
@U = external global %struct.UserDef, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"keymap entry\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"WM_OT_call_menu\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"WM_OT_call_menu_pie\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"error: modalkeymap_assign, unknown operator %s\0A\00", align 1
@event_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Any \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Shift \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Ctrl \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Alt \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Cmd \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@wm_keymap_update_flag = internal unnamed_addr global i8 0, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"WM_OT\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"SCREEN_OT\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"RENDER_OT\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"SOUND_OT\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"SCENE_OT\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"GPENCIL_OT\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"MARKER_OT\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Markers\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"IMPORT_\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"EXPORT_\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"VIEW3D_OT\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"3D View\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"OBJECT_OT\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"OBJECT_OT_mode_set\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Object Non-modal\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Object Mode\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"GROUP_OT\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"MATERIAL_OT\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"PTCACHE_OT\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"RIGIDBODY_OT\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"MESH_OT\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"CURVE_OT\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"SURFACE_OT\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"ARMATURE_OT\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"SKETCH_OT\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"POSE_OT\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"POSELIB_OT\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"Pose\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"SCULPT_OT\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"Sculpt\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"UV Sculpt\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"MBALL_OT\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"Metaball\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"LATTICE_OT\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"PARTICLE_OT\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"Particle\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"FONT_OT\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"PAINT_OT_face_select\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"Face Mask\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"PAINT_OT\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"Weight Paint\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"Vertex Paint\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"Image Paint\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"TIME_OT\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"Timeline\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"IMAGE_OT\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"CLIP_OT\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"Clip\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"MASK_OT\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"Mask Editing\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"UV_OT\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"UV Editor\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"NODE_OT\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"Node Editor\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"ANIM_OT_channels\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"Animation Channels\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"ANIM_OT\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"Animation\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"GRAPH_OT\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"Graph Editor\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"ACTION_OT\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"Dopesheet\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"NLA_OT\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"NLA Editor\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"SCRIPT_OT\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"Script\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"TEXT_OT\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"SEQUENCER_OT\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"Sequencer\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"CONSOLE_OT\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"Console\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"INFO_OT\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"FILE_OT\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"File Browser\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"LOGIC_OT\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"Logic Editor\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"OUTLINER_OT\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"Outliner\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"TRANSFORM_OT\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"keymap list\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"wmKeyMapDiffItem\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.107 = private unnamed_addr constant [18 x i8] c"UserKeyMapItemPtr\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_keymap_properties_reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  tail call void @WM_operator_properties_free(ptr noundef nonnull %4) #15
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void %7(ptr noundef %8) #15
  store ptr null, ptr %3, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 3
  store ptr %1, ptr %10, align 8, !tbaa !41
  tail call fastcc void @wm_keymap_item_properties_set(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_keymap_item_properties_set(ptr noundef %0) unnamed_addr #0 !PGOFuncName !42 {
  %2 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 17
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 2
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @WM_operator_properties_sanitize(ptr noundef %5, i8 noundef zeroext 1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @WM_keymap_map_type_get(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 6
  %3 = load i16, ptr %2, align 2, !tbaa !43
  %4 = and i16 %3, -16
  %5 = icmp eq i16 %4, 272
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = add i16 %3, -32
  %8 = icmp ult i16 %7, 224
  %9 = add i16 %3, -300
  %10 = icmp ult i16 %9, 20
  %11 = or i1 %8, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %6
  %13 = add i16 %3, -20483
  %14 = icmp ult i16 %13, 14
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = add i16 %3, -1
  %17 = icmp ult i16 %16, 19
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = add i16 %3, -400
  %20 = icmp ult i16 %19, 39
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = icmp eq i16 %3, -2
  %23 = select i1 %22, i32 3, i32 0
  br label %24

24:                                               ; preds = %21, %18, %15, %12, %6, %1
  %25 = phi i32 [ 4, %1 ], [ 0, %6 ], [ 2, %12 ], [ 1, %15 ], [ 5, %18 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_keyconfig_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %4 = tail call ptr %3(i64 noundef 168, ptr noundef nonnull @.str) #15
  %5 = getelementptr inbounds %struct.wmKeyConfig, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #15
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 13
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %4) #15
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_keyconfig_new_user(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @WM_keyconfig_new(ptr noundef %0, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.wmKeyConfig, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !44
  %6 = or i32 %5, 2
  store i32 %6, ptr %4, align 4, !tbaa !44
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @WM_keyconfig_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 13
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #15
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmKeyConfig, ptr %1, i64 0, i32 2
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 45), ptr noundef nonnull dereferenceable(1) %7, i64 noundef 64) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.wmKeyConfig, ptr %12, i64 0, i32 2
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 45), ptr noundef nonnull %13, i64 noundef 64) #15
  tail call void @WM_keyconfig_update_tag(ptr noundef null, ptr noundef null) #16
  br label %15

15:                                               ; preds = %10, %6
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #15
  tail call void @WM_keyconfig_free(ptr noundef %1) #16
  br label %16

16:                                               ; preds = %2, %15
  %17 = phi i8 [ 1, %15 ], [ 0, %2 ]
  ret i8 %17
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_keyconfig_update_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !52
  %4 = or i8 %3, 1
  store i8 %4, ptr @wm_keymap_update_flag, align 1, !tbaa !52
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %8 = load i16, ptr %7, align 4, !tbaa !53
  %9 = or i16 %8, 64
  store i16 %9, ptr %7, align 4, !tbaa !53
  br label %10

10:                                               ; preds = %6, %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 13
  %14 = load i16, ptr %13, align 8, !tbaa !55
  %15 = or i16 %14, 8
  store i16 %15, ptr %13, align 8, !tbaa !55
  br label %16

16:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_keyconfig_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmKeyConfig, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @WM_keymap_free(ptr noundef nonnull %6) #16
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef nonnull %6) #15
  %7 = load ptr, ptr %2, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !57

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %10(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_keymap_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call fastcc void @wm_keymap_diff_item_free(ptr noundef nonnull %6) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !59

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %9 ]
  tail call fastcc void @wm_keymap_item_free(ptr noundef nonnull %14) #16
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !60

17:                                               ; preds = %13, %9
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #15
  tail call void @BLI_freelistN(ptr noundef nonnull %10) #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_keyconfig_set_active(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @WM_keyconfig_update(ptr noundef %0) #16
  %3 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 45), ptr noundef %1, i64 noundef 64) #15
  tail call void @WM_keyconfig_update_tag(ptr noundef null, ptr noundef null) #16
  tail call void @WM_keyconfig_update(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_keyconfig_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [5 x ptr], align 16
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !61
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %161

5:                                                ; preds = %1
  %6 = getelementptr inbounds ptr, ptr %2, i64 1
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 16
  %8 = getelementptr inbounds ptr, ptr %2, i64 2
  %9 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %10 = getelementptr inbounds ptr, ptr %2, i64 3
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 15
  %12 = getelementptr inbounds ptr, ptr %2, i64 4
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 13
  br label %14

14:                                               ; preds = %5, %158
  %15 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !52
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %161, label %17

17:                                               ; preds = %14
  %18 = and i8 %15, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  store ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), ptr %2, align 16, !tbaa !40
  %21 = load ptr, ptr %7, align 8, !tbaa !63
  %22 = getelementptr inbounds %struct.wmKeyConfig, ptr %21, i64 0, i32 4
  store ptr %22, ptr %6, align 8, !tbaa !40
  %23 = load ptr, ptr %9, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.wmKeyConfig, ptr %23, i64 0, i32 4
  store ptr %24, ptr %8, align 16, !tbaa !40
  %25 = load ptr, ptr %11, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.wmKeyConfig, ptr %25, i64 0, i32 4
  store ptr %26, ptr %10, align 8, !tbaa !40
  store ptr null, ptr %12, align 16, !tbaa !40
  br label %27

27:                                               ; preds = %20, %27
  %28 = phi i64 [ 0, %20 ], [ %30, %27 ]
  %29 = phi ptr [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), %20 ], [ %32, %27 ]
  tail call fastcc void @wm_keyconfig_properties_update_ot(ptr noundef nonnull %29) #16
  %30 = add nuw i64 %28, 1
  %31 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !40
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !llvm.loop !65

34:                                               ; preds = %27
  %35 = load ptr, ptr %13, align 8, !tbaa !40
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %40, %37 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.wmKeyConfig, ptr %38, i64 0, i32 4
  tail call fastcc void @wm_keyconfig_properties_update_ot(ptr noundef nonnull %39) #16
  %40 = load ptr, ptr %38, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %37, !llvm.loop !66

42:                                               ; preds = %37, %34
  %43 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !52
  %44 = and i8 %43, 125
  store i8 %44, ptr @wm_keymap_update_flag, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %161, label %46

46:                                               ; preds = %42, %17
  %47 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8, !tbaa !40
  %48 = icmp eq ptr %47, null
  br i1 %48, label %84, label %49

49:                                               ; preds = %46, %81
  %50 = phi ptr [ %82, %81 ], [ %47, %46 ]
  %51 = getelementptr inbounds %struct.wmKeyMap, ptr %50, i64 0, i32 7
  %52 = load i16, ptr %51, align 4, !tbaa !53
  %53 = and i16 %52, 1
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.wmKeyMap, ptr %50, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !40
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %55, %70
  %60 = phi ptr [ %71, %70 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !67
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  tail call fastcc void @wm_keymap_item_properties_set(ptr noundef nonnull %62) #16
  br label %65

65:                                               ; preds = %64, %59
  %66 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %60, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !69
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call fastcc void @wm_keymap_item_properties_set(ptr noundef nonnull %67) #16
  br label %70

70:                                               ; preds = %65, %69
  %71 = load ptr, ptr %60, align 8, !tbaa !40
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %59, !llvm.loop !70

73:                                               ; preds = %70, %55
  %74 = getelementptr inbounds %struct.wmKeyMap, ptr %50, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !40
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %73, %77
  %78 = phi ptr [ %79, %77 ], [ %75, %73 ]
  tail call fastcc void @wm_keymap_item_properties_set(ptr noundef nonnull %78) #16
  %79 = load ptr, ptr %78, align 8, !tbaa !40
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %77, !llvm.loop !71

81:                                               ; preds = %77, %73, %49
  %82 = load ptr, ptr %50, align 8, !tbaa !40
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %49, !llvm.loop !72

84:                                               ; preds = %81, %46
  %85 = load ptr, ptr %7, align 8, !tbaa !63
  %86 = getelementptr inbounds %struct.wmKeyConfig, ptr %85, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !40
  %88 = icmp eq ptr %87, null
  br i1 %88, label %110, label %89

89:                                               ; preds = %84, %107
  %90 = phi ptr [ %108, %107 ], [ %87, %84 ]
  %91 = tail call fastcc zeroext i8 @wm_keymap_test_and_clear_update(ptr noundef nonnull %90) #16, !range !73
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %89
  %94 = tail call fastcc ptr @wm_keymap_preset(ptr noundef %0, ptr noundef nonnull %90) #16
  %95 = load ptr, ptr %11, align 8, !tbaa !64
  %96 = getelementptr inbounds %struct.wmKeyConfig, ptr %95, i64 0, i32 4
  %97 = getelementptr inbounds %struct.wmKeyMap, ptr %90, i64 0, i32 4
  %98 = getelementptr inbounds %struct.wmKeyMap, ptr %90, i64 0, i32 5
  %99 = load i16, ptr %98, align 8, !tbaa !74
  %100 = sext i16 %99 to i32
  %101 = getelementptr inbounds %struct.wmKeyMap, ptr %90, i64 0, i32 6
  %102 = load i16, ptr %101, align 2, !tbaa !75
  %103 = sext i16 %102 to i32
  %104 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull %96, ptr noundef nonnull %97, i32 noundef %100, i32 noundef %103) #16
  %105 = icmp eq ptr %94, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %93
  tail call fastcc void @wm_keymap_diff_update(ptr noundef nonnull %94, ptr noundef %104, ptr noundef nonnull %90) #16
  br label %107

107:                                              ; preds = %89, %106, %93
  %108 = load ptr, ptr %90, align 8, !tbaa !40
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %89, !llvm.loop !76

110:                                              ; preds = %107, %84
  %111 = load ptr, ptr %9, align 8, !tbaa !48
  %112 = getelementptr inbounds %struct.wmKeyConfig, ptr %111, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !40
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !52
  %117 = and i8 %116, 126
  store i8 %117, ptr @wm_keymap_update_flag, align 1, !tbaa !52
  br label %161

118:                                              ; preds = %110, %150
  %119 = phi ptr [ %153, %150 ], [ %113, %110 ]
  %120 = phi i8 [ %152, %150 ], [ 0, %110 ]
  %121 = tail call fastcc ptr @wm_keymap_preset(ptr noundef nonnull %0, ptr noundef nonnull %119) #16
  %122 = load ptr, ptr %11, align 8, !tbaa !64
  %123 = getelementptr inbounds %struct.wmKeyConfig, ptr %122, i64 0, i32 4
  %124 = getelementptr inbounds %struct.wmKeyMap, ptr %119, i64 0, i32 4
  %125 = getelementptr inbounds %struct.wmKeyMap, ptr %119, i64 0, i32 5
  %126 = load i16, ptr %125, align 8, !tbaa !74
  %127 = sext i16 %126 to i32
  %128 = getelementptr inbounds %struct.wmKeyMap, ptr %119, i64 0, i32 6
  %129 = load i16, ptr %128, align 2, !tbaa !75
  %130 = sext i16 %129 to i32
  %131 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull %123, ptr noundef nonnull %124, i32 noundef %127, i32 noundef %130) #16
  %132 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), ptr noundef nonnull %124, i32 noundef %127, i32 noundef %130) #16
  tail call fastcc void @wm_user_modal_keymap_set_items(ptr noundef nonnull %0, ptr noundef %121) #16
  %133 = load ptr, ptr %7, align 8, !tbaa !63
  %134 = getelementptr inbounds %struct.wmKeyConfig, ptr %133, i64 0, i32 4
  %135 = tail call fastcc ptr @wm_keymap_patch_update(ptr noundef nonnull %134, ptr noundef %121, ptr noundef %131, ptr noundef %132) #16
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %118
  %138 = getelementptr inbounds %struct.wmKeyMap, ptr %119, i64 0, i32 9
  %139 = getelementptr inbounds %struct.wmKeyMap, ptr %135, i64 0, i32 9
  %140 = load <2 x ptr>, ptr %138, align 8, !tbaa !40
  store <2 x ptr> %140, ptr %139, align 8, !tbaa !40
  br label %141

141:                                              ; preds = %137, %118
  %142 = icmp eq i8 %120, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %141
  %144 = icmp eq ptr %132, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.wmKeyMap, ptr %132, i64 0, i32 7
  %147 = load i16, ptr %146, align 4, !tbaa !53
  %148 = and i16 %147, 16
  %149 = icmp eq i16 %148, 0
  br label %150

150:                                              ; preds = %143, %145, %141
  %151 = phi i1 [ true, %141 ], [ false, %143 ], [ %149, %145 ]
  %152 = zext i1 %151 to i8
  %153 = load ptr, ptr %119, align 8, !tbaa !40
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %118, !llvm.loop !77

155:                                              ; preds = %150
  %156 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !52
  %157 = and i8 %156, 126
  store i8 %157, ptr @wm_keymap_update_flag, align 1, !tbaa !52
  br i1 %151, label %158, label %161

158:                                              ; preds = %155
  tail call void @WM_keyconfig_update_tag(ptr noundef null, ptr noundef null) #16
  %159 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !61
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %14, label %161

161:                                              ; preds = %158, %14, %42, %155, %115, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_keymap_diff_item_free(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !78 {
  %2 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call fastcc void @wm_keymap_item_free(ptr noundef nonnull %3) #16
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %7 = load ptr, ptr %2, align 8, !tbaa !69
  tail call void %6(ptr noundef %7) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  tail call fastcc void @wm_keymap_item_free(ptr noundef nonnull %10) #16
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %14 = load ptr, ptr %9, align 8, !tbaa !67
  tail call void %13(ptr noundef %14) #15
  br label %15

15:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_keymap_item_free(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @WM_operator_properties_free(ptr noundef nonnull %3) #15
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %7 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void %6(ptr noundef %7) #15
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @WM_keymap_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmKeyConfig, ptr %0, i64 0, i32 4
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #15
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  tail call void @WM_keymap_free(ptr noundef %1) #16
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #15
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %7(ptr noundef %1) #15
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_keymap_verify_item(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %10, i64 0, i32 2
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 64) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %8, !llvm.loop !80

16:                                               ; preds = %8
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %18 = tail call ptr %17(i64 noundef 184, ptr noundef nonnull @.str.1) #15
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %18) #15
  %19 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 2
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef %1, i64 noundef 64) #15
  tail call fastcc void @keymap_item_set_id(ptr noundef %0, ptr noundef %18) #16
  %21 = trunc i32 %2 to i16
  %22 = trunc i32 %3 to i16
  %23 = trunc i32 %5 to i16
  tail call fastcc void @keymap_event_set(ptr noundef %18, i16 noundef signext %21, i16 noundef signext %22, i32 noundef %4, i16 noundef signext %23) #16
  tail call fastcc void @wm_keymap_item_properties_set(ptr noundef %18) #16
  br label %24

24:                                               ; preds = %12, %16
  %25 = phi ptr [ %18, %16 ], [ %10, %12 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @keymap_item_set_id(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 !PGOFuncName !81 {
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 2, !tbaa !82
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 2, !tbaa !82
  %6 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !53
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  %10 = xor i16 %4, -1
  %11 = select i1 %9, i16 %5, i16 %10
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 15
  store i16 %11, ptr %12, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @keymap_event_set(ptr nocapture noundef writeonly %0, i16 noundef signext %1, i16 noundef signext %2, i32 noundef %3, i16 noundef signext %4) unnamed_addr #7 !PGOFuncName !83 {
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 6
  store i16 %1, ptr %6, align 2, !tbaa !43
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 7
  store i16 %2, ptr %7, align 4, !tbaa !84
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 12
  store i16 %4, ptr %8, align 2, !tbaa !85
  %9 = icmp eq i32 %3, -1
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  %13 = trunc i32 %3 to i16
  %14 = lshr i16 %13, 3
  %15 = and i16 %14, 2
  %16 = select i1 %12, i16 %15, i16 1
  %17 = and i32 %3, 2
  %18 = icmp eq i32 %17, 0
  %19 = lshr i16 %13, 4
  %20 = and i16 %19, 2
  %21 = select i1 %18, i16 %20, i16 1
  %22 = and i32 %3, 4
  %23 = icmp eq i32 %22, 0
  %24 = lshr i16 %13, 5
  %25 = and i16 %24, 2
  %26 = select i1 %23, i16 %25, i16 1
  %27 = and i32 %3, 8
  %28 = icmp eq i32 %27, 0
  %29 = lshr i16 %13, 6
  %30 = and i16 %29, 2
  %31 = select i1 %28, i16 %30, i16 1
  br label %32

32:                                               ; preds = %5, %10
  %33 = phi i16 [ %31, %10 ], [ -1, %5 ]
  %34 = phi i16 [ %26, %10 ], [ -1, %5 ]
  %35 = phi i16 [ %21, %10 ], [ -1, %5 ]
  %36 = phi i16 [ %16, %10 ], [ -1, %5 ]
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 11
  store i16 %33, ptr %37, align 4
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 10
  store i16 %34, ptr %38, align 2
  %39 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 9
  store i16 %35, ptr %39, align 8
  %40 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 8
  store i16 %36, ptr %40, align 2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %8 = tail call ptr %7(i64 noundef 184, ptr noundef nonnull @.str.1) #15
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #15
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 2
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %1, i64 noundef 64) #15
  %12 = trunc i32 %2 to i16
  %13 = trunc i32 %3 to i16
  %14 = trunc i32 %5 to i16
  tail call fastcc void @keymap_event_set(ptr noundef %8, i16 noundef signext %12, i16 noundef signext %13, i32 noundef %4, i16 noundef signext %14) #16
  tail call fastcc void @wm_keymap_item_properties_set(ptr noundef %8) #16
  tail call fastcc void @keymap_item_set_id(ptr noundef %0, ptr noundef %8) #16
  tail call void @WM_keyconfig_update_tag(ptr noundef %0, ptr noundef %8) #16
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @WM_keymap_add_menu(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @RNA_string_set(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %1) #15
  ret ptr %7
}

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @WM_keymap_add_menu_pie(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @RNA_string_set(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %1) #15
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @WM_keymap_remove_item(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #15
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  tail call void @WM_operator_properties_free(ptr noundef nonnull %8) #15
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %12 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void %11(ptr noundef %12) #15
  br label %13

13:                                               ; preds = %10, %6
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %1) #15
  tail call void @WM_keyconfig_update_tag(ptr noundef %0, ptr noundef null) #16
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i8 [ 1, %13 ], [ 0, %2 ]
  ret i8 %15
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_keymap_list_find(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  %5 = load ptr, ptr %0, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %4, %22
  %8 = phi ptr [ %23, %22 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %8, i64 0, i32 5
  %10 = load i16, ptr %9, align 8, !tbaa !74
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.wmKeyMap, ptr %8, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !75
  %16 = sext i16 %15 to i32
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.wmKeyMap, ptr %8, i64 0, i32 4
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %19, i64 noundef 64) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %7, %13, %18
  %23 = load ptr, ptr %8, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !86

25:                                               ; preds = %18, %22, %4
  %26 = phi ptr [ null, %4 ], [ null, %22 ], [ %8, %18 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_keymap_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmKeyConfig, ptr %0, i64 0, i32 4
  %6 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @wm_keymap_new(ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %9) #15
  tail call void @WM_keyconfig_update_tag(ptr noundef %9, ptr noundef null) #16
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ %6, %4 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_keymap_new(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !87 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %5 = tail call ptr %4(i64 noundef 136, ptr noundef nonnull @.str.105) #15
  %6 = getelementptr inbounds %struct.wmKeyMap, ptr %5, i64 0, i32 4
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 64) #15
  %8 = trunc i32 %1 to i16
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %5, i64 0, i32 5
  store i16 %8, ptr %9, align 8, !tbaa !74
  %10 = trunc i32 %2 to i16
  %11 = getelementptr inbounds %struct.wmKeyMap, ptr %5, i64 0, i32 6
  store i16 %10, ptr %11, align 2, !tbaa !75
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_keymap_find_all(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.wmKeyConfig, ptr %7, i64 0, i32 4
  %9 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #16
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !53
  %7 = or i16 %6, 1
  store i16 %7, ptr %5, align 4, !tbaa !53
  %8 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 10
  store ptr %2, ptr %8, align 8, !tbaa !88
  %9 = icmp eq ptr %2, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load ptr, ptr @G, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 40
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.wmWindowManager, ptr %13, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.wmKeyConfig, ptr %15, i64 0, i32 4
  %19 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 4
  %20 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull %18, ptr noundef nonnull %19, i32 noundef 0, i32 noundef 0) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.wmKeyMap, ptr %20, i64 0, i32 9
  %24 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 9
  %25 = load <2 x ptr>, ptr %23, align 8, !tbaa !40
  store <2 x ptr> %25, ptr %24, align 8, !tbaa !40
  br label %26

26:                                               ; preds = %10, %22, %17, %3
  ret ptr %4
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_modalkeymap_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.wmKeyConfig, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %16
  %7 = phi ptr [ %17, %16 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.wmKeyMap, ptr %7, i64 0, i32 7
  %9 = load i16, ptr %8, align 4, !tbaa !53
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.wmKeyMap, ptr %7, i64 0, i32 4
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13, i64 noundef 64) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %6, %12
  %17 = load ptr, ptr %7, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !93

19:                                               ; preds = %16, %12, %2
  %20 = phi ptr [ null, %2 ], [ %7, %12 ], [ null, %16 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @WM_modalkeymap_add_item(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %8 = tail call ptr %7(i64 noundef 184, ptr noundef nonnull @.str.1) #15
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #15
  %10 = trunc i32 %5 to i16
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 5
  store i16 %10, ptr %11, align 8, !tbaa !94
  %12 = trunc i32 %1 to i16
  %13 = trunc i32 %2 to i16
  %14 = trunc i32 %4 to i16
  tail call fastcc void @keymap_event_set(ptr noundef %8, i16 noundef signext %12, i16 noundef signext %13, i32 noundef %3, i16 noundef signext %14) #16
  tail call fastcc void @keymap_item_set_id(ptr noundef %0, ptr noundef %8) #16
  tail call void @WM_keyconfig_update_tag(ptr noundef %0, ptr noundef %8) #16
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @WM_modalkeymap_add_item_str(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %8 = tail call ptr %7(i64 noundef 184, ptr noundef nonnull @.str.1) #15
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #15
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 4
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %5, i64 noundef 64) #15
  %12 = trunc i32 %1 to i16
  %13 = trunc i32 %2 to i16
  %14 = trunc i32 %4 to i16
  tail call fastcc void @keymap_event_set(ptr noundef %8, i16 noundef signext %12, i16 noundef signext %13, i32 noundef %3, i16 noundef signext %14) #16
  tail call fastcc void @keymap_item_set_id(ptr noundef %0, ptr noundef %8) #16
  tail call void @WM_keyconfig_update_tag(ptr noundef %0, ptr noundef %8) #16
  ret ptr %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_modalkeymap_find_propvalue(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %4 = load i16, ptr %3, align 4, !tbaa !53
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !94
  %16 = sext i16 %15 to i32
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %9, !llvm.loop !95

18:                                               ; preds = %9, %13, %2
  %19 = phi ptr [ null, %2 ], [ null, %9 ], [ %11, %13 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_modalkeymap_assign(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 15
  store ptr %0, ptr %6, align 8, !tbaa !96
  br label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %1) #16
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_key_event_string(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store ptr null, ptr %2, align 8, !tbaa !40
  %3 = sext i16 %0 to i32
  %4 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @event_type_items, i32 noundef %3, ptr noundef nonnull %2) #15
  %5 = icmp eq i8 %4, 0
  %6 = load ptr, ptr %2, align 8
  %7 = select i1 %5, ptr @.str.6, ptr %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @RNA_enum_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_keymap_item_to_string(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #18
  store i8 0, ptr %4, align 16, !tbaa !52
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !99
  switch i16 %6, label %22 [
    i16 -1, label %7
    i16 0, label %25
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 9
  %9 = load i16, ptr %8, align 8, !tbaa !100
  %10 = icmp eq i16 %9, -1
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !101
  %14 = icmp eq i16 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 11
  %17 = load i16, ptr %16, align 4, !tbaa !102
  %18 = icmp eq i16 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %4, ptr noundef nonnull @.str.7) #15
  %21 = getelementptr inbounds i8, ptr %4, i64 %20
  br label %49

22:                                               ; preds = %3, %7, %11, %15
  %23 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %4, ptr noundef nonnull @.str.8) #15
  %24 = getelementptr inbounds i8, ptr %4, i64 %23
  br label %25

25:                                               ; preds = %3, %22
  %26 = phi ptr [ %24, %22 ], [ %4, %3 ]
  %27 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 9
  %28 = load i16, ptr %27, align 8, !tbaa !100
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %26, ptr noundef nonnull @.str.9) #15
  %32 = getelementptr inbounds i8, ptr %26, i64 %31
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi ptr [ %32, %30 ], [ %26, %25 ]
  %35 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 10
  %36 = load i16, ptr %35, align 2, !tbaa !101
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = call i64 @BLI_strcpy_rlen(ptr noundef %34, ptr noundef nonnull @.str.10) #15
  %40 = getelementptr inbounds i8, ptr %34, i64 %39
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi ptr [ %40, %38 ], [ %34, %33 ]
  %43 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 11
  %44 = load i16, ptr %43, align 4, !tbaa !102
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = call i64 @BLI_strcpy_rlen(ptr noundef %42, ptr noundef nonnull @.str.11) #15
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  br label %49

49:                                               ; preds = %41, %46, %19
  %50 = phi ptr [ %21, %19 ], [ %48, %46 ], [ %42, %41 ]
  %51 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 12
  %52 = load i16, ptr %51, align 2, !tbaa !85
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = call ptr @WM_key_event_string(i16 noundef signext %52) #16
  %56 = call i64 @BLI_strcpy_rlen(ptr noundef %50, ptr noundef %55) #15
  %57 = getelementptr inbounds i8, ptr %50, i64 %56
  %58 = call i64 @BLI_strcpy_rlen(ptr noundef %57, ptr noundef nonnull @.str.12) #15
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  br label %60

60:                                               ; preds = %54, %49
  %61 = phi ptr [ %59, %54 ], [ %50, %49 ]
  %62 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 6
  %63 = load i16, ptr %62, align 2, !tbaa !43
  %64 = call ptr @WM_key_event_string(i16 noundef signext %63) #16
  %65 = call i64 @BLI_strcpy_rlen(ptr noundef %61, ptr noundef %64) #15
  %66 = sext i32 %2 to i64
  %67 = call i64 @BLI_strncpy_rlen(ptr noundef %1, ptr noundef nonnull %4, i64 noundef %66) #15
  %68 = trunc i64 %67 to i32
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #18
  ret i32 %68
}

; Function Attrs: optsize
declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @WM_key_event_operator_string(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc ptr @wm_keymap_item_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %4, ptr noundef null) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @WM_keymap_item_to_string(ptr noundef nonnull %8, ptr noundef %5, i32 noundef %6) #16
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %5, %10 ], [ null, %7 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_keymap_item_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !103 {
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call fastcc ptr @wm_keymap_item_find_props(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext %4, ptr noundef %6) #16
  %10 = icmp eq ptr %9, null
  %11 = icmp ne ptr %3, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 1) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  %17 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %3) #15
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %14, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %19, ptr noundef %17, ptr noundef nonnull %8) #15
  %20 = call zeroext i8 @WM_operator_properties_default(ptr noundef nonnull %8, i8 noundef zeroext 1) #15
  %21 = icmp eq i8 %20, 0
  %22 = icmp eq i8 %5, 0
  br i1 %21, label %23, label %31

23:                                               ; preds = %16
  br i1 %22, label %24, label %39

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.wmOperatorType, ptr %14, i64 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !105
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = call zeroext i8 @RNA_property_is_set(ptr noundef nonnull %8, ptr noundef nonnull %26) #15
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %32

31:                                               ; preds = %16
  br i1 %22, label %32, label %37

32:                                               ; preds = %28, %31
  %33 = getelementptr inbounds %struct.wmOperatorType, ptr %14, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !105
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call void @RNA_property_unset(ptr noundef nonnull %8, ptr noundef nonnull %34) #15
  br label %37

37:                                               ; preds = %36, %32, %31
  %38 = call fastcc ptr @wm_keymap_item_find_props(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %17, i8 noundef zeroext 0, i8 noundef zeroext %4, ptr noundef %6) #16
  br label %39

39:                                               ; preds = %37, %28, %24, %23
  %40 = phi ptr [ %38, %37 ], [ null, %23 ], [ null, %28 ], [ null, %24 ]
  call void @IDP_FreeProperty(ptr noundef %17) #15
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  call void %41(ptr noundef %17) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  br label %42

42:                                               ; preds = %13, %39, %7
  %43 = phi ptr [ %9, %7 ], [ %40, %39 ], [ null, %13 ]
  ret ptr %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_key_event_operator_id(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc ptr @wm_keymap_item_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext 1, ptr noundef %5) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 15
  %11 = load i16, ptr %10, align 4, !tbaa !106
  %12 = sext i16 %11 to i32
  br label %13

13:                                               ; preds = %6, %9
  %14 = phi i32 [ %12, %9 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_keymap_item_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 13
  %4 = load i16, ptr %3, align 8, !tbaa !55
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %93

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 13
  %9 = load i16, ptr %8, align 8, !tbaa !55
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %93

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 6
  %14 = load i16, ptr %13, align 2, !tbaa !43
  %15 = sext i16 %14 to i32
  %16 = tail call i32 @WM_userdef_event_map(i32 noundef %15) #15
  %17 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 6
  %18 = load i16, ptr %17, align 2, !tbaa !43
  %19 = sext i16 %18 to i32
  %20 = tail call i32 @WM_userdef_event_map(i32 noundef %19) #15
  %21 = icmp eq i32 %16, -1
  %22 = icmp eq i32 %20, -1
  %23 = select i1 %21, i1 true, i1 %22
  %24 = icmp eq i32 %16, %20
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %93

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 7
  %28 = load i16, ptr %27, align 4, !tbaa !84
  %29 = icmp eq i16 %28, -1
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 7
  %32 = load i16, ptr %31, align 4, !tbaa !84
  %33 = icmp eq i16 %32, -1
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = icmp ne i16 %28, 3
  %36 = add i16 %32, -1
  %37 = icmp ult i16 %36, 3
  %38 = or i1 %35, %37
  br i1 %38, label %39, label %93

39:                                               ; preds = %34
  %40 = icmp ne i16 %32, 3
  %41 = add i16 %28, -1
  %42 = icmp ult i16 %41, 3
  %43 = or i1 %42, %40
  %44 = icmp eq i16 %28, %32
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %93

46:                                               ; preds = %39, %30, %26
  %47 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 8
  %48 = load i16, ptr %47, align 2, !tbaa !99
  %49 = icmp eq i16 %48, -1
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 8
  %52 = load i16, ptr %51, align 2, !tbaa !99
  %53 = icmp eq i16 %52, -1
  %54 = icmp eq i16 %48, %52
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %50, %46
  %57 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 9
  %58 = load i16, ptr %57, align 8, !tbaa !100
  %59 = icmp eq i16 %58, -1
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 9
  %62 = load i16, ptr %61, align 8, !tbaa !100
  %63 = icmp eq i16 %62, -1
  %64 = icmp eq i16 %58, %62
  %65 = or i1 %63, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %60, %56
  %67 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 10
  %68 = load i16, ptr %67, align 2, !tbaa !101
  %69 = icmp eq i16 %68, -1
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 10
  %72 = load i16, ptr %71, align 2, !tbaa !101
  %73 = icmp eq i16 %72, -1
  %74 = icmp eq i16 %68, %72
  %75 = or i1 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70, %66
  %77 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 11
  %78 = load i16, ptr %77, align 4, !tbaa !102
  %79 = icmp eq i16 %78, -1
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 11
  %82 = load i16, ptr %81, align 4, !tbaa !102
  %83 = icmp eq i16 %82, -1
  %84 = icmp eq i16 %78, %82
  %85 = or i1 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80, %76
  %87 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 12
  %88 = load i16, ptr %87, align 2, !tbaa !85
  %89 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 12
  %90 = load i16, ptr %89, align 2, !tbaa !85
  %91 = icmp eq i16 %88, %90
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %39, %34, %86, %80, %70, %60, %50, %12, %2, %7
  %94 = phi i32 [ 0, %7 ], [ 0, %2 ], [ 0, %12 ], [ 0, %50 ], [ 0, %60 ], [ 0, %70 ], [ 0, %80 ], [ %92, %86 ], [ 0, %34 ], [ 0, %39 ]
  ret i32 %94
}

; Function Attrs: optsize
declare i32 @WM_userdef_event_map(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @WM_keyconfig_update_operatortype() local_unnamed_addr #11 {
  %1 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !52
  %2 = or i8 %1, 2
  store i8 %2, ptr @wm_keymap_update_flag, align 1, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_keyconfig_properties_update_ot(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !107 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %7

4:                                                ; preds = %31, %16
  %5 = load ptr, ptr %8, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7, !llvm.loop !108

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %7 ]
  tail call fastcc void @wm_keymap_item_properties_update_ot(ptr noundef nonnull %13) #16
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !109

16:                                               ; preds = %12, %7
  %17 = getelementptr inbounds %struct.wmKeyMap, ptr %8, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = icmp eq ptr %18, null
  br i1 %19, label %4, label %20

20:                                               ; preds = %16, %31
  %21 = phi ptr [ %32, %31 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call fastcc void @wm_keymap_item_properties_update_ot(ptr noundef nonnull %23) #16
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %21, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call fastcc void @wm_keymap_item_properties_update_ot(ptr noundef nonnull %28) #16
  br label %31

31:                                               ; preds = %26, %30
  %32 = load ptr, ptr %21, align 8, !tbaa !40
  %33 = icmp eq ptr %32, null
  br i1 %33, label %4, label %20, !llvm.loop !110

34:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @wm_keymap_test_and_clear_update(ptr nocapture noundef %0) unnamed_addr #12 !PGOFuncName !111 {
  %2 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %3 = load i16, ptr %2, align 4, !tbaa !53
  %4 = and i16 %3, 64
  %5 = and i16 %3, -65
  store i16 %5, ptr %2, align 4, !tbaa !53
  %6 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  %7 = icmp ne i16 %4, 0
  %8 = load ptr, ptr %6, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %20, %10 ], [ %8, %1 ]
  %12 = phi i1 [ %17, %10 ], [ %7, %1 ]
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 13
  %14 = load i16, ptr %13, align 8, !tbaa !55
  %15 = and i16 %14, 8
  %16 = icmp ne i16 %15, 0
  %17 = select i1 %12, i1 true, i1 %16
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 13
  %19 = and i16 %14, -9
  store i16 %19, ptr %18, align 8, !tbaa !55
  %20 = load ptr, ptr %11, align 8, !tbaa !40
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !112

22:                                               ; preds = %10, %1
  %23 = phi i1 [ %7, %1 ], [ %17, %10 ]
  %24 = zext i1 %23 to i8
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_keymap_preset(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !113 {
  %3 = tail call fastcc ptr @WM_keyconfig_active(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.wmKeyConfig, ptr %3, i64 0, i32 4
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 4
  %6 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 5
  %7 = load i16, ptr %6, align 8, !tbaa !74
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 6
  %10 = load i16, ptr %9, align 2, !tbaa !75
  %11 = sext i16 %10 to i32
  %12 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %8, i32 noundef %11) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.wmKeyConfig, ptr %16, i64 0, i32 4
  %20 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull %19, ptr noundef nonnull %5, i32 noundef %8, i32 noundef %11) #16
  br label %21

21:                                               ; preds = %18, %14, %2
  %22 = phi ptr [ %12, %2 ], [ %20, %18 ], [ null, %14 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_keymap_diff_update(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !114 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc ptr @wm_keymap_copy(ptr noundef %0) #16
  tail call fastcc void @wm_keymap_addon_add(ptr noundef %6, ptr noundef nonnull %1) #16
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 4
  %10 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !74
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 6
  %14 = load i16, ptr %13, align 2, !tbaa !75
  %15 = sext i16 %14 to i32
  %16 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), ptr noundef nonnull %9, i32 noundef %12, i32 noundef %15) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %7
  tail call void @WM_keymap_free(ptr noundef nonnull %16) #16
  tail call void @BLI_freelinkN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), ptr noundef nonnull %16) #15
  %19 = load i16, ptr %10, align 8, !tbaa !74
  %20 = load i16, ptr %13, align 2, !tbaa !75
  %21 = sext i16 %19 to i32
  %22 = sext i16 %20 to i32
  br label %23

23:                                               ; preds = %18, %7
  %24 = phi i32 [ %22, %18 ], [ %15, %7 ]
  %25 = phi i32 [ %21, %18 ], [ %12, %7 ]
  %26 = tail call fastcc ptr @wm_keymap_new(ptr noundef nonnull %9, i32 noundef %25, i32 noundef %24) #16
  %27 = getelementptr inbounds %struct.wmKeyMap, ptr %26, i64 0, i32 7
  %28 = load i16, ptr %27, align 4, !tbaa !53
  %29 = or i16 %28, 16
  store i16 %29, ptr %27, align 4, !tbaa !53
  %30 = getelementptr inbounds %struct.wmKeyMap, ptr %8, i64 0, i32 7
  %31 = load i16, ptr %30, align 4, !tbaa !53
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  %35 = or i16 %28, 17
  store i16 %35, ptr %27, align 4, !tbaa !53
  br label %36

36:                                               ; preds = %34, %23
  tail call fastcc void @wm_keymap_diff(ptr noundef nonnull %26, ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1) #16
  %37 = getelementptr inbounds %struct.wmKeyMap, ptr %26, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !115
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), ptr noundef nonnull %26) #15
  br label %43

41:                                               ; preds = %36
  tail call void @WM_keymap_free(ptr noundef nonnull %26) #16
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %42(ptr noundef nonnull %26) #15
  br label %43

43:                                               ; preds = %41, %40
  br i1 %4, label %46, label %44

44:                                               ; preds = %43
  tail call void @WM_keymap_free(ptr noundef nonnull %8) #16
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %45(ptr noundef nonnull %8) #15
  br label %46

46:                                               ; preds = %44, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_user_modal_keymap_set_items(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !116 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %4 = icmp eq ptr %1, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !53
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = icmp eq ptr %16, null
  br i1 %17, label %47, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.wmKeyConfig, ptr %16, i64 0, i32 4
  %20 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 4
  %21 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull %19, ptr noundef nonnull %20, i32 noundef 0, i32 noundef 0) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.wmKeyMap, ptr %21, i64 0, i32 9
  %25 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 9
  %26 = load <2 x ptr>, ptr %24, align 8, !tbaa !40
  store <2 x ptr> %26, ptr %25, align 8, !tbaa !40
  %27 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = icmp eq ptr %28, null
  br i1 %29, label %47, label %30

30:                                               ; preds = %23, %44
  %31 = phi ptr [ %45, %44 ], [ %28, %23 ]
  %32 = getelementptr inbounds %struct.wmKeyMapItem, ptr %31, i64 0, i32 4
  %33 = load i8, ptr %32, align 8, !tbaa !52
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %11, align 8, !tbaa !88
  %37 = call zeroext i8 @RNA_enum_value_from_id(ptr noundef %36, ptr noundef nonnull %32, ptr noundef nonnull %3) #15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %3, align 4, !tbaa !117
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.wmKeyMapItem, ptr %31, i64 0, i32 5
  store i16 %41, ptr %42, align 8, !tbaa !94
  br label %43

43:                                               ; preds = %39, %35
  store i8 0, ptr %32, align 8, !tbaa !52
  br label %44

44:                                               ; preds = %30, %43
  %45 = load ptr, ptr %31, align 8, !tbaa !40
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %30, !llvm.loop !118

47:                                               ; preds = %44, %23, %2, %5, %10, %18, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_keymap_patch_update(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !119 {
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 4
  %6 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 5
  %7 = load i16, ptr %6, align 8, !tbaa !74
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 6
  %10 = load i16, ptr %9, align 2, !tbaa !75
  %11 = sext i16 %10 to i32
  %12 = tail call ptr @WM_keymap_list_find(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %8, i32 noundef %11) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.wmKeyMap, ptr %12, i64 0, i32 7
  %16 = load i16, ptr %15, align 4, !tbaa !53
  %17 = and i16 %16, 12
  tail call void @WM_keymap_free(ptr noundef nonnull %12) #16
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef nonnull %12) #15
  %18 = or disjoint i16 %17, 2
  br label %19

19:                                               ; preds = %14, %4
  %20 = phi i16 [ %18, %14 ], [ 2, %4 ]
  %21 = icmp eq ptr %3, null
  br i1 %21, label %58, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 7
  %24 = load i16, ptr %23, align 4, !tbaa !53
  %25 = and i16 %24, 16
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @wm_keymap_copy(ptr noundef nonnull %3) #16
  %29 = getelementptr inbounds %struct.wmKeyMap, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wmKeyMap, ptr %28, i64 0, i32 8
  br label %34

34:                                               ; preds = %32, %49
  %35 = phi ptr [ %30, %32 ], [ %52, %49 ]
  %36 = tail call fastcc ptr @wm_keymap_find_item_equals(ptr noundef %1, ptr noundef nonnull %35) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = tail call fastcc ptr @wm_keymap_find_item_equals_result(ptr noundef %1, ptr noundef nonnull %35) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %34, %38
  %42 = phi ptr [ %39, %38 ], [ %36, %34 ]
  %43 = getelementptr inbounds %struct.wmKeyMapItem, ptr %42, i64 0, i32 15
  %44 = load i16, ptr %43, align 4, !tbaa !106
  br label %49

45:                                               ; preds = %38
  %46 = load i16, ptr %33, align 2, !tbaa !82
  %47 = add i16 %46, 1
  store i16 %47, ptr %33, align 2, !tbaa !82
  %48 = sub i16 0, %46
  br label %49

49:                                               ; preds = %41, %45
  %50 = phi i16 [ %44, %41 ], [ %48, %45 ]
  %51 = getelementptr inbounds %struct.wmKeyMapItem, ptr %35, i64 0, i32 15
  store i16 %50, ptr %51, align 4, !tbaa !106
  %52 = load ptr, ptr %35, align 8, !tbaa !40
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %34, !llvm.loop !120

54:                                               ; preds = %49, %27
  %55 = getelementptr inbounds %struct.wmKeyMap, ptr %28, i64 0, i32 7
  %56 = load i16, ptr %55, align 4, !tbaa !53
  %57 = or i16 %56, 64
  store i16 %57, ptr %55, align 4, !tbaa !53
  br label %60

58:                                               ; preds = %22, %19
  %59 = tail call fastcc ptr @wm_keymap_copy(ptr noundef nonnull %1) #16
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi ptr [ %59, %58 ], [ %28, %54 ]
  %62 = icmp eq ptr %2, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call fastcc void @wm_keymap_addon_add(ptr noundef %61, ptr noundef nonnull %2) #16
  br label %64

64:                                               ; preds = %63, %60
  %65 = getelementptr inbounds %struct.wmKeyMap, ptr %61, i64 0, i32 7
  %66 = load i16, ptr %65, align 4, !tbaa !53
  br i1 %21, label %75, label %67

67:                                               ; preds = %64
  %68 = or i16 %20, %66
  %69 = or i16 %68, 32
  store i16 %69, ptr %65, align 4, !tbaa !53
  %70 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 7
  %71 = load i16, ptr %70, align 4, !tbaa !53
  %72 = and i16 %71, 16
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  tail call fastcc void @wm_keymap_patch(ptr noundef nonnull %61, ptr noundef nonnull %3) #16
  br label %77

75:                                               ; preds = %64
  %76 = or i16 %66, %20
  store i16 %76, ptr %65, align 4, !tbaa !53
  br label %77

77:                                               ; preds = %75, %74, %67
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %61) #15
  ret ptr %61
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_keymap_active(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.wmKeyConfig, ptr %6, i64 0, i32 4
  %8 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 4
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 5
  %10 = load i16, ptr %9, align 8, !tbaa !74
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 6
  %13 = load i16, ptr %12, align 2, !tbaa !75
  %14 = sext i16 %13 to i32
  %15 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %11, i32 noundef %14) #16
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr %1, ptr %15
  br label %18

18:                                               ; preds = %4, %2
  %19 = phi ptr [ null, %2 ], [ %17, %4 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_keymap_restore_item_to_default(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @wm_keymap_preset(ptr noundef %4, ptr noundef nonnull %1) #16
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.wmKeyConfig, ptr %9, i64 0, i32 4
  %11 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 4
  %12 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !74
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !75
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %14, i32 noundef %17) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = tail call fastcc ptr @wm_keymap_copy(ptr noundef %7) #16
  tail call fastcc void @wm_keymap_addon_add(ptr noundef %21, ptr noundef nonnull %18) #16
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi ptr [ %21, %20 ], [ %7, %6 ]
  %24 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 15
  %25 = load i16, ptr %24, align 4, !tbaa !106
  %26 = sext i16 %25 to i32
  %27 = tail call ptr @WM_keymap_item_find_id(ptr noundef %23, i32 noundef %26) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %61, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 2
  %31 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 2
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %31) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @BLI_strncpy(ptr noundef nonnull %31, ptr noundef nonnull %30, i64 noundef 64) #15
  tail call void @WM_keymap_properties_reset(ptr noundef nonnull %2, ptr noundef null) #16
  br label %36

36:                                               ; preds = %34, %29
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  tail call void @IDP_FreeProperty(ptr noundef nonnull %42) #15
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %46 = load ptr, ptr %41, align 8, !tbaa !41
  tail call void %45(ptr noundef %46) #15
  store ptr null, ptr %41, align 8, !tbaa !41
  %47 = load ptr, ptr %37, align 8, !tbaa !41
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi ptr [ %47, %44 ], [ %38, %40 ]
  %50 = tail call ptr @IDP_CopyProperty(ptr noundef %49) #15
  store ptr %50, ptr %41, align 8, !tbaa !41
  %51 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 17
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.PointerRNA, ptr %52, i64 0, i32 2
  store ptr %50, ptr %53, align 8, !tbaa !121
  br label %54

54:                                               ; preds = %48, %36
  %55 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 5
  %56 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 5
  %57 = load <8 x i16>, ptr %55, align 8, !tbaa !124
  store <8 x i16> %57, ptr %56, align 8, !tbaa !124
  %58 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 14
  %59 = load i16, ptr %58, align 2, !tbaa !125
  %60 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 14
  store i16 %59, ptr %60, align 2, !tbaa !125
  tail call void @WM_keyconfig_update_tag(ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  br label %61

61:                                               ; preds = %54, %22
  br i1 %19, label %64, label %62

62:                                               ; preds = %61
  tail call void @WM_keymap_free(ptr noundef %23) #16
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %63(ptr noundef %23) #15
  br label %64

64:                                               ; preds = %61, %62, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_keymap_copy(ptr noundef %0) unnamed_addr #0 !PGOFuncName !126 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %3 = tail call ptr %2(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 9
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 9
  %6 = load <2 x ptr>, ptr %4, align 8, !tbaa !40
  store <2 x ptr> %6, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %7) #16
  %8 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 7
  %9 = load i16, ptr %8, align 4, !tbaa !53
  %10 = and i16 %9, -69
  store i16 %10, ptr %8, align 4, !tbaa !53
  %11 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %1 ]
  %16 = tail call fastcc ptr @wm_keymap_diff_item_copy(ptr noundef nonnull %15) #16
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %16) #15
  %17 = load ptr, ptr %15, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !127

19:                                               ; preds = %14, %1
  %20 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %19 ]
  %25 = tail call fastcc ptr @wm_keymap_item_copy(ptr noundef nonnull %24) #16
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %25) #15
  %26 = load ptr, ptr %24, align 8, !tbaa !40
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !128

28:                                               ; preds = %23, %19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_keymap_addon_add(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !129 {
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %4, %6 ], [ %11, %8 ]
  %10 = tail call fastcc ptr @wm_keymap_item_copy(ptr noundef nonnull %9) #16
  tail call fastcc void @keymap_item_set_id(ptr noundef %0, ptr noundef %10) #16
  tail call void @BLI_addhead(ptr noundef nonnull %7, ptr noundef %10) #15
  %11 = load ptr, ptr %9, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !130

13:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_keymap_item_find_id(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 15
  %10 = load i16, ptr %9, align 4, !tbaa !106
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %4, !llvm.loop !131

13:                                               ; preds = %4, %8
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_keymap_restore_to_default(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %1) #15
  %4 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !74
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !75
  %10 = sext i16 %9 to i32
  %11 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), ptr noundef nonnull %4, i32 noundef %7, i32 noundef %10) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @WM_keymap_free(ptr noundef nonnull %11) #16
  tail call void @BLI_freelinkN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), ptr noundef nonnull %11) #15
  tail call void @WM_keyconfig_update_tag(ptr noundef null, ptr noundef null) #16
  tail call void @WM_keyconfig_update(ptr noundef %3) #16
  br label %14

14:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_keymap_guess_opname(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #15
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.13, i64 noundef 5) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0) #16
  br label %324

8:                                                ; preds = %2
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.15, i64 noundef 9) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.16, i64 noundef 9) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.17, i64 noundef 8) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.18, i64 noundef 8) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14, %11, %8
  %21 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0) #16
  br label %324

22:                                               ; preds = %17
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.20, i64 noundef 10) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0) #16
  br label %324

27:                                               ; preds = %22
  %28 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.22, i64 noundef 9) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0) #16
  br label %324

32:                                               ; preds = %27
  %33 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.24, i64 noundef 7) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.25, i64 noundef 7) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %32
  %39 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0) #16
  br label %324

40:                                               ; preds = %35
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.26, i64 noundef 9) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !132
  %46 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %45, i32 noundef 0) #16
  br label %324

47:                                               ; preds = %40
  %48 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.28, i64 noundef 9) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.29, i64 noundef 18) #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 0) #16
  br label %324

55:                                               ; preds = %50
  %56 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0) #16
  br label %324

57:                                               ; preds = %47
  %58 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.32, i64 noundef 8) #17
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.33, i64 noundef 11) #17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.34, i64 noundef 10) #17
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.35, i64 noundef 12) #17
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %63, %60, %57
  %70 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0) #16
  br label %324

71:                                               ; preds = %66
  %72 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.36, i64 noundef 7) #17
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef 0) #16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %324, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.wmKeyMap, ptr %75, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !135
  %80 = icmp eq ptr %79, null
  br i1 %80, label %324, label %81

81:                                               ; preds = %77
  %82 = tail call i32 %79(ptr noundef %0) #15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %324

84:                                               ; preds = %81
  %85 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0) #16
  br label %324

86:                                               ; preds = %71
  %87 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.38, i64 noundef 8) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.39, i64 noundef 10) #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89, %86
  %93 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0) #16
  %94 = icmp eq ptr %93, null
  br i1 %94, label %324, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.wmKeyMap, ptr %93, i64 0, i32 9
  %97 = load ptr, ptr %96, align 8, !tbaa !135
  %98 = icmp eq ptr %97, null
  br i1 %98, label %324, label %99

99:                                               ; preds = %95
  %100 = tail call i32 %97(ptr noundef %0) #15
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %324

102:                                              ; preds = %99
  %103 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0) #16
  br label %324

104:                                              ; preds = %89
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.41, i64 noundef 11) #17
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.42, i64 noundef 9) #17
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107, %104
  %111 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 0) #16
  br label %324

112:                                              ; preds = %107
  %113 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.44, i64 noundef 7) #17
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.45, i64 noundef 10) #17
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115, %112
  %119 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 0) #16
  br label %324

120:                                              ; preds = %115
  %121 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.47, i64 noundef 9) #17
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = tail call i32 @CTX_data_mode_enum(ptr noundef %0) #15
  switch i32 %124, label %324 [
    i32 2, label %125
    i32 1, label %127
  ]

125:                                              ; preds = %123
  %126 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 0) #16
  br label %324

127:                                              ; preds = %123
  %128 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef 0, i32 noundef 0) #16
  br label %324

129:                                              ; preds = %120
  %130 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.50, i64 noundef 8) #17
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef 0) #16
  %134 = icmp eq ptr %133, null
  br i1 %134, label %324, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.wmKeyMap, ptr %133, i64 0, i32 9
  %137 = load ptr, ptr %136, align 8, !tbaa !135
  %138 = icmp eq ptr %137, null
  br i1 %138, label %324, label %139

139:                                              ; preds = %135
  %140 = tail call i32 %137(ptr noundef %0) #15
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %324

142:                                              ; preds = %139
  %143 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0) #16
  br label %324

144:                                              ; preds = %129
  %145 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.52, i64 noundef 10) #17
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 0) #16
  br label %324

149:                                              ; preds = %144
  %150 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.54, i64 noundef 11) #17
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef 0) #16
  br label %324

154:                                              ; preds = %149
  %155 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.56, i64 noundef 7) #17
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef 0) #16
  br label %324

159:                                              ; preds = %154
  %160 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(21) @.str.58, i64 noundef 20) #17
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef 0, i32 noundef 0) #16
  br label %324

164:                                              ; preds = %159
  %165 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.60, i64 noundef 8) #17
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = tail call i32 @CTX_data_mode_enum(ptr noundef %0) #15
  switch i32 %168, label %324 [
    i32 8, label %169
    i32 4, label %171
    i32 16, label %173
  ]

169:                                              ; preds = %167
  %170 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 0) #16
  br label %324

171:                                              ; preds = %167
  %172 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef 0, i32 noundef 0) #16
  br label %324

173:                                              ; preds = %167
  %174 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef 0) #16
  br label %324

175:                                              ; preds = %164
  %176 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.64, i64 noundef 7) #17
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %180 = load i32, ptr %179, align 8, !tbaa !132
  %181 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %180, i32 noundef 0) #16
  br label %324

182:                                              ; preds = %175
  %183 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.66, i64 noundef 8) #17
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %187 = load i32, ptr %186, align 8, !tbaa !132
  %188 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.67, i32 noundef %187, i32 noundef 0) #16
  br label %324

189:                                              ; preds = %182
  %190 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.68, i64 noundef 7) #17
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %194 = load i32, ptr %193, align 8, !tbaa !132
  %195 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %194, i32 noundef 0) #16
  br label %324

196:                                              ; preds = %189
  %197 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.70, i64 noundef 7) #17
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 0) #16
  br label %324

201:                                              ; preds = %196
  %202 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.72, i64 noundef 5) #17
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %206 = load i32, ptr %205, align 8, !tbaa !132
  %207 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.73, i32 noundef %206, i32 noundef 0) #16
  br label %324

208:                                              ; preds = %201
  %209 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.74, i64 noundef 7) #17
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %213 = load i32, ptr %212, align 8, !tbaa !132
  %214 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %213, i32 noundef 0) #16
  br label %324

215:                                              ; preds = %208
  %216 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.76, i64 noundef 16) #17
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %220 = load i32, ptr %219, align 8, !tbaa !132
  %221 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef %220, i32 noundef 0) #16
  br label %324

222:                                              ; preds = %215
  %223 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.78, i64 noundef 7) #17
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.79, i32 noundef 0, i32 noundef 0) #16
  br label %324

227:                                              ; preds = %222
  %228 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.80, i64 noundef 8) #17
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %232 = load i32, ptr %231, align 8, !tbaa !132
  %233 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.81, i32 noundef %232, i32 noundef 0) #16
  br label %324

234:                                              ; preds = %227
  %235 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.82, i64 noundef 9) #17
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %239 = load i32, ptr %238, align 8, !tbaa !132
  %240 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.83, i32 noundef %239, i32 noundef 0) #16
  br label %324

241:                                              ; preds = %234
  %242 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.84, i64 noundef 6) #17
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %246 = load i32, ptr %245, align 8, !tbaa !132
  %247 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %246, i32 noundef 0) #16
  br label %324

248:                                              ; preds = %241
  %249 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.86, i64 noundef 9) #17
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %253 = load i32, ptr %252, align 8, !tbaa !132
  %254 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.87, i32 noundef %253, i32 noundef 0) #16
  br label %324

255:                                              ; preds = %248
  %256 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.88, i64 noundef 7) #17
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %260 = load i32, ptr %259, align 8, !tbaa !132
  %261 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.89, i32 noundef %260, i32 noundef 0) #16
  br label %324

262:                                              ; preds = %255
  %263 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.90, i64 noundef 12) #17
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %267 = load i32, ptr %266, align 8, !tbaa !132
  %268 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.91, i32 noundef %267, i32 noundef 0) #16
  br label %324

269:                                              ; preds = %262
  %270 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.92, i64 noundef 10) #17
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %274 = load i32, ptr %273, align 8, !tbaa !132
  %275 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %274, i32 noundef 0) #16
  br label %324

276:                                              ; preds = %269
  %277 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.94, i64 noundef 7) #17
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %281 = load i32, ptr %280, align 8, !tbaa !132
  %282 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.95, i32 noundef %281, i32 noundef 0) #16
  br label %324

283:                                              ; preds = %276
  %284 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.96, i64 noundef 7) #17
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %288 = load i32, ptr %287, align 8, !tbaa !132
  %289 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.97, i32 noundef %288, i32 noundef 0) #16
  br label %324

290:                                              ; preds = %283
  %291 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.98, i64 noundef 8) #17
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %295 = load i32, ptr %294, align 8, !tbaa !132
  %296 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.99, i32 noundef %295, i32 noundef 0) #16
  br label %324

297:                                              ; preds = %290
  %298 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.100, i64 noundef 11) #17
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %302 = load i32, ptr %301, align 8, !tbaa !132
  %303 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.101, i32 noundef %302, i32 noundef 0) #16
  br label %324

304:                                              ; preds = %297
  %305 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.102, i64 noundef 12) #17
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %324

307:                                              ; preds = %304
  %308 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %309 = load i32, ptr %308, align 8, !tbaa !132
  switch i32 %309, label %324 [
    i32 1, label %310
    i32 2, label %312
    i32 12, label %314
    i32 13, label %316
    i32 6, label %318
    i32 16, label %320
    i32 8, label %322
  ]

310:                                              ; preds = %307
  %311 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef 1, i32 noundef 0) #16
  br label %324

312:                                              ; preds = %307
  %313 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.81, i32 noundef 2, i32 noundef 0) #16
  br label %324

314:                                              ; preds = %307
  %315 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.83, i32 noundef 12, i32 noundef 0) #16
  br label %324

316:                                              ; preds = %307
  %317 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef 13, i32 noundef 0) #16
  br label %324

318:                                              ; preds = %307
  %319 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.73, i32 noundef 6, i32 noundef 0) #16
  br label %324

320:                                              ; preds = %307
  %321 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef 16, i32 noundef 0) #16
  br label %324

322:                                              ; preds = %307
  %323 = tail call ptr @WM_keymap_find_all(ptr noundef %0, ptr noundef nonnull @.str.91, i32 noundef 8, i32 noundef 0) #16
  br label %324

324:                                              ; preds = %20, %30, %43, %69, %102, %99, %95, %92, %118, %142, %139, %135, %132, %152, %162, %178, %192, %204, %218, %230, %244, %258, %272, %286, %300, %310, %312, %314, %316, %318, %320, %322, %307, %304, %293, %279, %265, %251, %237, %225, %211, %199, %185, %169, %171, %173, %167, %157, %147, %125, %127, %123, %110, %74, %77, %81, %84, %53, %55, %38, %25, %6
  %325 = phi ptr [ %7, %6 ], [ %21, %20 ], [ %26, %25 ], [ %31, %30 ], [ %39, %38 ], [ %46, %43 ], [ %54, %53 ], [ %56, %55 ], [ %70, %69 ], [ %85, %84 ], [ %75, %81 ], [ %75, %77 ], [ null, %74 ], [ %103, %102 ], [ %93, %99 ], [ %93, %95 ], [ null, %92 ], [ %111, %110 ], [ %119, %118 ], [ null, %123 ], [ %128, %127 ], [ %126, %125 ], [ %143, %142 ], [ %133, %139 ], [ %133, %135 ], [ null, %132 ], [ %148, %147 ], [ %153, %152 ], [ %158, %157 ], [ %163, %162 ], [ null, %167 ], [ %174, %173 ], [ %172, %171 ], [ %170, %169 ], [ %181, %178 ], [ %188, %185 ], [ %195, %192 ], [ %200, %199 ], [ %207, %204 ], [ %214, %211 ], [ %221, %218 ], [ %226, %225 ], [ %233, %230 ], [ %240, %237 ], [ %247, %244 ], [ %254, %251 ], [ %261, %258 ], [ %268, %265 ], [ %275, %272 ], [ %282, %279 ], [ %289, %286 ], [ %296, %293 ], [ %303, %300 ], [ null, %307 ], [ %323, %322 ], [ %321, %320 ], [ %319, %318 ], [ %317, %316 ], [ %315, %314 ], [ %313, %312 ], [ %311, %310 ], [ null, %304 ]
  ret ptr %325
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CTX_data_mode_enum(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @WM_bool_as_string(i8 noundef zeroext %0) local_unnamed_addr #13 {
  %2 = icmp eq i8 %0, 0
  %3 = select i1 %2, ptr @.str.104, ptr @.str.103
  ret ptr %3
}

; Function Attrs: optsize
declare void @WM_operator_properties_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_operator_properties_sanitize(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_keymap_item_find_props(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !136 {
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %11 = icmp eq ptr %8, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 28
  %14 = tail call fastcc ptr @wm_keymap_item_find_handlers(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %1, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) #16
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ null, %7 ]
  %17 = icmp ne ptr %9, null
  %18 = icmp eq ptr %16, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 21
  %22 = tail call fastcc ptr @wm_keymap_item_find_handlers(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %1, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) #16
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi ptr [ %22, %20 ], [ %16, %15 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %23
  switch i32 %2, label %55 [
    i32 7, label %27
    i32 1, label %27
    i32 8, label %37
    i32 2, label %37
    i32 9, label %46
    i32 3, label %46
  ]

27:                                               ; preds = %26, %26
  br i1 %17, label %28, label %61

28:                                               ; preds = %27
  %29 = icmp eq ptr %10, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %32 = load i16, ptr %31, align 2, !tbaa !137
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %28, %30
  %35 = tail call ptr @BKE_area_find_region_type(ptr noundef nonnull %9, i32 noundef 0) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %61, label %57

37:                                               ; preds = %26, %26
  %38 = icmp eq ptr %10, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %41 = load i16, ptr %40, align 2, !tbaa !137
  %42 = icmp eq i16 %41, 2
  br i1 %42, label %57, label %43

43:                                               ; preds = %37, %39
  %44 = tail call ptr @BKE_area_find_region_type(ptr noundef %9, i32 noundef 2) #15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %61, label %57

46:                                               ; preds = %26, %26
  %47 = icmp eq ptr %10, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %50 = load i16, ptr %49, align 2, !tbaa !137
  %51 = icmp eq i16 %50, 7
  br i1 %51, label %57, label %52

52:                                               ; preds = %46, %48
  %53 = tail call ptr @BKE_area_find_region_type(ptr noundef %9, i32 noundef 7) #15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %57

55:                                               ; preds = %26
  %56 = icmp eq ptr %10, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %55, %52, %48, %43, %39, %34, %30
  %58 = phi ptr [ %35, %34 ], [ %10, %30 ], [ %44, %43 ], [ %10, %39 ], [ %53, %52 ], [ %10, %48 ], [ %10, %55 ]
  %59 = getelementptr inbounds %struct.ARegion, ptr %58, i64 0, i32 26
  %60 = tail call fastcc ptr @wm_keymap_item_find_handlers(ptr noundef %0, ptr noundef nonnull %59, ptr noundef %1, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) #16
  br label %61

61:                                               ; preds = %57, %34, %27, %52, %55, %43, %23
  %62 = phi ptr [ null, %34 ], [ null, %27 ], [ null, %43 ], [ null, %52 ], [ null, %55 ], [ %24, %23 ], [ %60, %57 ]
  ret ptr %62
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @WM_operator_properties_default(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_unset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_keymap_item_find_handlers(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef writeonly %6) unnamed_addr #0 !PGOFuncName !142 {
  %8 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %9 = load ptr, ptr %1, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %83, label %11

11:                                               ; preds = %7
  %12 = icmp eq i8 %5, 0
  %13 = icmp eq ptr %3, null
  br label %14

14:                                               ; preds = %11, %80
  %15 = phi ptr [ %9, %11 ], [ %81, %80 ]
  %16 = getelementptr inbounds %struct.wmEventHandler, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !143
  %18 = tail call ptr @WM_keymap_active(ptr noundef %8, ptr noundef %17) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %80, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.wmKeyMap, ptr %18, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !135
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef %0) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %80, label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.wmKeyMap, ptr %18, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  br i1 %30, label %80, label %31

31:                                               ; preds = %27, %77
  %32 = phi ptr [ %78, %77 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 13
  %34 = load i16, ptr %33, align 8, !tbaa !55
  %35 = and i16 %34, 1
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 2
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) %2) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 6
  %43 = load i16, ptr %42, align 2, !tbaa !43
  %44 = tail call ptr @WM_key_event_string(i16 noundef signext %43) #16
  %45 = load i8, ptr %44, align 1, !tbaa !52
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %77, label %47

47:                                               ; preds = %41
  br i1 %12, label %63, label %48

48:                                               ; preds = %47
  %49 = load i16, ptr %42, align 2, !tbaa !43
  %50 = add i16 %49, -32
  %51 = icmp ult i16 %50, 224
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = add i16 %49, -300
  %54 = icmp ult i16 %53, 20
  %55 = add i16 %49, -1
  %56 = icmp ult i16 %55, 19
  %57 = or i1 %54, %56
  %58 = add i16 %49, -400
  %59 = icmp ult i16 %58, 39
  %60 = or i1 %59, %57
  br i1 %60, label %63, label %77

61:                                               ; preds = %48
  %62 = trunc i16 %49 to i8
  switch i8 %62, label %63 [
    i8 -38, label %77
    i8 -39, label %77
    i8 -40, label %77
    i8 -41, label %77
    i8 -42, label %77
    i8 -43, label %77
    i8 -44, label %77
    i8 -83, label %77
    i8 -84, label %77
    i8 -85, label %77
  ]

63:                                               ; preds = %61, %52, %47
  br i1 %13, label %75, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.PointerRNA, ptr %66, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !121
  %71 = tail call zeroext i8 @IDP_EqualsProperties_ex(ptr noundef nonnull %3, ptr noundef %70, i8 noundef zeroext %4) #15
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = icmp eq ptr %6, null
  br i1 %74, label %88, label %85

75:                                               ; preds = %63
  %76 = icmp eq ptr %6, null
  br i1 %76, label %88, label %85

77:                                               ; preds = %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %52, %37, %41, %64, %68, %31
  %78 = load ptr, ptr %32, align 8, !tbaa !40
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %31, !llvm.loop !145

80:                                               ; preds = %77, %27, %14, %24
  %81 = load ptr, ptr %15, align 8, !tbaa !40
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %14, !llvm.loop !146

83:                                               ; preds = %80, %7
  %84 = icmp eq ptr %6, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %83, %75, %73
  %86 = phi ptr [ %18, %73 ], [ %18, %75 ], [ null, %83 ]
  %87 = phi ptr [ %32, %73 ], [ %32, %75 ], [ null, %83 ]
  store ptr %86, ptr %6, align 8, !tbaa !40
  br label %88

88:                                               ; preds = %85, %83, %75, %73
  %89 = phi ptr [ %32, %73 ], [ %32, %75 ], [ null, %83 ], [ %87, %85 ]
  ret ptr %89
}

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @IDP_EqualsProperties_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_keymap_item_properties_update_ot(ptr noundef %0) unnamed_addr #0 !PGOFuncName !147 {
  %2 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call fastcc void @wm_keymap_item_properties_set(ptr noundef nonnull %0) #16
  br label %27

10:                                               ; preds = %5
  %11 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %2, i8 noundef zeroext 0) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = load ptr, ptr %6, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.PointerRNA, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !148
  %19 = icmp eq ptr %15, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  tail call void @WM_operator_properties_create_ptr(ptr noundef nonnull %16, ptr noundef nonnull %11) #15
  %21 = load ptr, ptr %6, align 8, !tbaa !34
  tail call void @WM_operator_properties_sanitize(ptr noundef %21, i8 noundef zeroext 1) #15
  br label %27

22:                                               ; preds = %10
  %23 = load ptr, ptr %6, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %26(ptr noundef nonnull %23) #15
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %20, %13, %25, %22, %1, %9
  ret void
}

; Function Attrs: optsize
declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @WM_keyconfig_active(ptr noundef %0) unnamed_addr #0 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 13
  %3 = tail call ptr @BLI_findstring(ptr noundef nonnull %2, ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 45), i32 noundef 16) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ %3, %1 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_keymap_diff(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !150 {
  %6 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %53, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %50
  %12 = phi ptr [ %7, %9 ], [ %51, %50 ]
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %12, i64 0, i32 15
  %14 = load i16, ptr %13, align 4, !tbaa !106
  %15 = sext i16 %14 to i32
  %16 = tail call ptr @WM_keymap_item_find_id(ptr noundef %2, i32 noundef %15) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = tail call fastcc i32 @wm_keymap_item_equals(ptr noundef nonnull %12, ptr noundef nonnull %16) #16, !range !151
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %23 = tail call ptr %22(i64 noundef 32, ptr noundef nonnull @.str.106) #15
  %24 = tail call fastcc ptr @wm_keymap_item_copy(ptr noundef nonnull %12) #16
  %25 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %23, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !69
  %26 = tail call fastcc ptr @wm_keymap_item_copy(ptr noundef nonnull %16) #16
  %27 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %23, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !67
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %23) #15
  br label %33

28:                                               ; preds = %11
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %30 = tail call ptr %29(i64 noundef 32, ptr noundef nonnull @.str.106) #15
  %31 = tail call fastcc ptr @wm_keymap_item_copy(ptr noundef nonnull %12) #16
  %32 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %30, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !69
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %30) #15
  br label %50

33:                                               ; preds = %18, %21
  %34 = load i16, ptr %13, align 4, !tbaa !106
  %35 = sext i16 %34 to i32
  %36 = tail call ptr @WM_keymap_item_find_id(ptr noundef %3, i32 noundef %35) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @wm_keymap_find_item_equals(ptr noundef %4, ptr noundef nonnull %12) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %33, %38
  %42 = phi ptr [ %39, %38 ], [ %36, %33 ]
  %43 = getelementptr inbounds %struct.wmKeyMapItem, ptr %42, i64 0, i32 13
  %44 = load i16, ptr %43, align 8, !tbaa !55
  %45 = and i16 %44, -3
  store i16 %45, ptr %43, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %16, i64 0, i32 13
  %47 = load i16, ptr %46, align 8, !tbaa !55
  %48 = and i16 %47, 2
  %49 = or disjoint i16 %48, %45
  store i16 %49, ptr %43, align 8, !tbaa !55
  br label %50

50:                                               ; preds = %28, %41, %38
  %51 = load ptr, ptr %12, align 8, !tbaa !40
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %11, !llvm.loop !152

53:                                               ; preds = %50, %5
  %54 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !40
  %56 = icmp eq ptr %55, null
  br i1 %56, label %72, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 3
  br label %59

59:                                               ; preds = %57, %69
  %60 = phi ptr [ %55, %57 ], [ %70, %69 ]
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %60, i64 0, i32 15
  %62 = load i16, ptr %61, align 4, !tbaa !106
  %63 = icmp slt i16 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %66 = tail call ptr %65(i64 noundef 32, ptr noundef nonnull @.str.106) #15
  %67 = tail call fastcc ptr @wm_keymap_item_copy(ptr noundef nonnull %60) #16
  %68 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %66, i64 0, i32 3
  store ptr %67, ptr %68, align 8, !tbaa !67
  tail call void @BLI_addtail(ptr noundef nonnull %58, ptr noundef %66) #15
  br label %69

69:                                               ; preds = %59, %64
  %70 = load ptr, ptr %60, align 8, !tbaa !40
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %59, !llvm.loop !153

72:                                               ; preds = %69, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @wm_keymap_item_copy(ptr noundef %0) unnamed_addr #0 !PGOFuncName !154 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %3 = tail call ptr %2(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = load i16, ptr %4, align 8, !tbaa !55
  %6 = and i16 %5, -9
  store i16 %6, ptr %4, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %12 = tail call ptr %11(i64 noundef 24, ptr noundef nonnull @.str.107) #15
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  store ptr %12, ptr %13, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 2
  tail call void @WM_operator_properties_create(ptr noundef %12, ptr noundef nonnull %14) #15
  %15 = load ptr, ptr %7, align 8, !tbaa !41
  %16 = tail call ptr @IDP_CopyProperty(ptr noundef %15) #15
  store ptr %16, ptr %7, align 8, !tbaa !41
  %17 = load ptr, ptr %13, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.PointerRNA, ptr %17, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !121
  br label %19

19:                                               ; preds = %10, %1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_keymap_item_equals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !155 {
  %3 = tail call fastcc i32 @wm_keymap_item_equals_result(ptr noundef %0, ptr noundef %1) #16, !range !151
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %54, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !43
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !43
  %10 = icmp eq i16 %7, %9
  br i1 %10, label %11, label %54

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 7
  %13 = load i16, ptr %12, align 4, !tbaa !84
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 7
  %15 = load i16, ptr %14, align 4, !tbaa !84
  %16 = icmp eq i16 %13, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 8
  %19 = load i16, ptr %18, align 2, !tbaa !99
  %20 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 8
  %21 = load i16, ptr %20, align 2, !tbaa !99
  %22 = icmp eq i16 %19, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 9
  %25 = load i16, ptr %24, align 8, !tbaa !100
  %26 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 9
  %27 = load i16, ptr %26, align 8, !tbaa !100
  %28 = icmp eq i16 %25, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 10
  %31 = load i16, ptr %30, align 2, !tbaa !101
  %32 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 10
  %33 = load i16, ptr %32, align 2, !tbaa !101
  %34 = icmp eq i16 %31, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 11
  %37 = load i16, ptr %36, align 4, !tbaa !102
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 11
  %39 = load i16, ptr %38, align 4, !tbaa !102
  %40 = icmp eq i16 %37, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 12
  %43 = load i16, ptr %42, align 2, !tbaa !85
  %44 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 12
  %45 = load i16, ptr %44, align 2, !tbaa !85
  %46 = icmp eq i16 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 14
  %49 = load i16, ptr %48, align 2, !tbaa !125
  %50 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 14
  %51 = load i16, ptr %50, align 2, !tbaa !125
  %52 = icmp eq i16 %49, %51
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %47, %41, %35, %29, %23, %17, %11, %5, %2
  %55 = phi i32 [ 0, %41 ], [ 0, %35 ], [ 0, %29 ], [ 0, %23 ], [ 0, %17 ], [ 0, %11 ], [ 0, %5 ], [ 0, %2 ], [ %53, %47 ]
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_keymap_find_item_equals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !156 {
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @wm_keymap_item_equals(ptr noundef nonnull %6, ptr noundef %1) #16, !range !151
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %4, label %11, !llvm.loop !157

11:                                               ; preds = %4, %8
  ret ptr %6
}

; Function Attrs: optsize
declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_keymap_item_equals_result(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !158 {
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 2
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call zeroext i8 @RNA_struct_equals(ptr noundef %9, ptr noundef %11, i32 noundef 2) #15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 13
  %16 = load i16, ptr %15, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 13
  %18 = load i16, ptr %17, align 8, !tbaa !55
  %19 = xor i16 %18, %16
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 5
  %24 = load i16, ptr %23, align 8, !tbaa !94
  %25 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 5
  %26 = load i16, ptr %25, align 8, !tbaa !94
  %27 = icmp eq i16 %24, %26
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %14, %7, %2, %22
  %30 = phi i32 [ %28, %22 ], [ 0, %2 ], [ 0, %7 ], [ 0, %14 ]
  ret i32 %30
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_equals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_enum_value_from_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_keymap_find_item_equals_result(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !159 {
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @wm_keymap_item_equals_result(ptr noundef nonnull %6, ptr noundef %1) #16, !range !151
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %4, label %11, !llvm.loop !160

11:                                               ; preds = %4, %8
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_keymap_patch(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !161 {
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %51
  %9 = phi ptr [ %4, %6 ], [ %52, %51 ]
  %10 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @wm_keymap_find_item_equals(ptr noundef %0, ptr noundef nonnull %11) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr %10, align 8, !tbaa !69
  %18 = tail call fastcc ptr @wm_keymap_find_item_equals_result(ptr noundef %0, ptr noundef %17) #16
  br label %19

19:                                               ; preds = %13, %16, %8
  %20 = phi ptr [ %14, %13 ], [ %18, %16 ], [ null, %8 ]
  %21 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %9, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @wm_keymap_find_item_equals(ptr noundef %0, ptr noundef nonnull %22) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load ptr, ptr %10, align 8, !tbaa !69
  %29 = icmp eq ptr %28, null
  %30 = icmp ne ptr %20, null
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load ptr, ptr %21, align 8, !tbaa !67
  %34 = tail call fastcc ptr @wm_keymap_item_copy(ptr noundef %33) #16
  %35 = getelementptr inbounds %struct.wmKeyMapItem, ptr %34, i64 0, i32 13
  %36 = load i16, ptr %35, align 8, !tbaa !55
  %37 = or i16 %36, 4
  store i16 %37, ptr %35, align 8, !tbaa !55
  br i1 %30, label %38, label %47

38:                                               ; preds = %32
  %39 = and i16 %37, -3
  store i16 %39, ptr %35, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct.wmKeyMapItem, ptr %20, i64 0, i32 13
  %41 = load i16, ptr %40, align 8, !tbaa !55
  %42 = and i16 %41, 2
  %43 = or disjoint i16 %42, %39
  store i16 %43, ptr %35, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.wmKeyMapItem, ptr %20, i64 0, i32 15
  %45 = load i16, ptr %44, align 4, !tbaa !106
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %34, i64 0, i32 15
  store i16 %45, ptr %46, align 4, !tbaa !106
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %7, ptr noundef nonnull %20, ptr noundef nonnull %34) #15
  br label %50

47:                                               ; preds = %32
  tail call fastcc void @keymap_item_set_id(ptr noundef %0, ptr noundef nonnull %34) #16
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef nonnull %34) #15
  br label %51

48:                                               ; preds = %24, %19
  %49 = icmp eq ptr %20, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %38, %48
  tail call fastcc void @wm_keymap_item_free(ptr noundef nonnull %20) #16
  tail call void @BLI_freelinkN(ptr noundef nonnull %7, ptr noundef nonnull %20) #15
  br label %51

51:                                               ; preds = %47, %27, %48, %50
  %52 = load ptr, ptr %9, align 8, !tbaa !40
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %8, !llvm.loop !162

54:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !163 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @wm_keymap_diff_item_copy(ptr noundef %0) unnamed_addr #0 !PGOFuncName !164 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %3 = tail call ptr %2(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @wm_keymap_item_copy(ptr noundef nonnull %5) #16
  %9 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %3, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !67
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @wm_keymap_item_copy(ptr noundef nonnull %12) #16
  %16 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %3, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !69
  br label %17

17:                                               ; preds = %14, %10
  ret ptr %3
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { nounwind }

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
!34 = !{!35, !36, i64 176}
!35 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!35, !36, i64 80}
!42 = !{!"wm_keymap.c:wm_keymap_item_properties_set"}
!43 = !{!35, !39, i64 154}
!44 = !{!45, !47, i64 164}
!45 = !{!"wmKeyConfig", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !46, i64 144, !47, i64 160, !47, i64 164}
!46 = !{!"ListBase", !36, i64 0, !36, i64 8}
!47 = !{!"int", !37, i64 0}
!48 = !{!49, !36, i64 296}
!49 = !{!"wmWindowManager", !50, i64 0, !36, i64 120, !36, i64 128, !46, i64 136, !47, i64 152, !39, i64 156, !39, i64 158, !46, i64 160, !46, i64 176, !51, i64 192, !46, i64 232, !46, i64 248, !46, i64 264, !46, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !46, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!50 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !47, i64 100, !47, i64 104, !47, i64 108, !36, i64 112}
!51 = !{!"ReportList", !46, i64 0, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !36, i64 32}
!52 = !{!37, !37, i64 0}
!53 = !{!54, !39, i64 116}
!54 = !{!"wmKeyMap", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 32, !37, i64 48, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !36, i64 120, !36, i64 128}
!55 = !{!35, !39, i64 168}
!56 = !{!45, !36, i64 144}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = !{!62, !37, i64 2081}
!62 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !46, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !47, i64 2096, !47, i64 2100, !37, i64 2104, !47, i64 2108, !47, i64 2112, !37, i64 2116}
!63 = !{!49, !36, i64 312}
!64 = !{!49, !36, i64 304}
!65 = distinct !{!65, !58}
!66 = distinct !{!66, !58}
!67 = !{!68, !36, i64 24}
!68 = !{!"wmKeyMapDiffItem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!69 = !{!68, !36, i64 16}
!70 = distinct !{!70, !58}
!71 = distinct !{!71, !58}
!72 = distinct !{!72, !58}
!73 = !{i8 0, i8 2}
!74 = !{!54, !39, i64 112}
!75 = !{!54, !39, i64 114}
!76 = distinct !{!76, !58}
!77 = distinct !{!77, !58}
!78 = !{!"wm_keymap.c:wm_keymap_diff_item_free"}
!79 = !{!"wm_keymap.c:wm_keymap_item_free"}
!80 = distinct !{!80, !58}
!81 = !{!"wm_keymap.c:keymap_item_set_id"}
!82 = !{!54, !39, i64 118}
!83 = !{!"wm_keymap.c:keymap_event_set"}
!84 = !{!35, !39, i64 156}
!85 = !{!35, !39, i64 166}
!86 = distinct !{!86, !58}
!87 = !{!"wm_keymap.c:wm_keymap_new"}
!88 = !{!54, !36, i64 128}
!89 = !{!62, !36, i64 0}
!90 = !{!91, !36, i64 1552}
!91 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !92, i64 1048, !37, i64 1056, !39, i64 1072, !36, i64 1080, !46, i64 1088, !46, i64 1104, !46, i64 1120, !46, i64 1136, !46, i64 1152, !46, i64 1168, !46, i64 1184, !46, i64 1200, !46, i64 1216, !46, i64 1232, !46, i64 1248, !46, i64 1264, !46, i64 1280, !46, i64 1296, !46, i64 1312, !46, i64 1328, !46, i64 1344, !46, i64 1360, !46, i64 1376, !46, i64 1392, !46, i64 1408, !46, i64 1424, !46, i64 1440, !46, i64 1456, !46, i64 1472, !46, i64 1488, !46, i64 1504, !46, i64 1520, !46, i64 1536, !46, i64 1552, !46, i64 1568, !46, i64 1584, !46, i64 1600, !46, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!92 = !{!"long", !37, i64 0}
!93 = distinct !{!93, !58}
!94 = !{!35, !39, i64 152}
!95 = distinct !{!95, !58}
!96 = !{!97, !36, i64 128}
!97 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !46, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !98, i64 152, !39, i64 184}
!98 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!99 = !{!35, !39, i64 158}
!100 = !{!35, !39, i64 160}
!101 = !{!35, !39, i64 162}
!102 = !{!35, !39, i64 164}
!103 = !{!"wm_keymap.c:wm_keymap_item_find"}
!104 = !{!97, !36, i64 88}
!105 = !{!97, !36, i64 104}
!106 = !{!35, !39, i64 172}
!107 = !{!"wm_keymap.c:wm_keyconfig_properties_update_ot"}
!108 = distinct !{!108, !58}
!109 = distinct !{!109, !58}
!110 = distinct !{!110, !58}
!111 = !{!"wm_keymap.c:wm_keymap_test_and_clear_update"}
!112 = distinct !{!112, !58}
!113 = !{!"wm_keymap.c:wm_keymap_preset"}
!114 = !{!"wm_keymap.c:wm_keymap_diff_update"}
!115 = !{!54, !36, i64 32}
!116 = !{!"wm_keymap.c:wm_user_modal_keymap_set_items"}
!117 = !{!47, !47, i64 0}
!118 = distinct !{!118, !58}
!119 = !{!"wm_keymap.c:wm_keymap_patch_update"}
!120 = distinct !{!120, !58}
!121 = !{!122, !36, i64 16}
!122 = !{!"PointerRNA", !123, i64 0, !36, i64 8, !36, i64 16}
!123 = !{!"", !36, i64 0}
!124 = !{!39, !39, i64 0}
!125 = !{!35, !39, i64 170}
!126 = !{!"wm_keymap.c:wm_keymap_copy"}
!127 = distinct !{!127, !58}
!128 = distinct !{!128, !58}
!129 = !{!"wm_keymap.c:wm_keymap_addon_add"}
!130 = distinct !{!130, !58}
!131 = distinct !{!131, !58}
!132 = !{!133, !47, i64 32}
!133 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !46, i64 16, !47, i64 32, !134, i64 36, !37, i64 40}
!134 = !{!"float", !37, i64 0}
!135 = !{!54, !36, i64 120}
!136 = !{!"wm_keymap.c:wm_keymap_item_find_props"}
!137 = !{!138, !39, i64 214}
!138 = !{!"ARegion", !36, i64 0, !36, i64 8, !139, i64 16, !141, i64 176, !141, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !134, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !46, i64 248, !46, i64 264, !46, i64 280, !46, i64 296, !46, i64 312, !46, i64 328, !46, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!139 = !{!"View2D", !140, i64 0, !140, i64 16, !141, i64 32, !141, i64 48, !141, i64 64, !37, i64 80, !37, i64 88, !134, i64 96, !134, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!140 = !{!"rctf", !134, i64 0, !134, i64 4, !134, i64 8, !134, i64 12}
!141 = !{!"rcti", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!142 = !{!"wm_keymap.c:wm_keymap_item_find_handlers"}
!143 = !{!144, !36, i64 24}
!144 = !{!"wmEventHandler", !36, i64 0, !36, i64 8, !47, i64 16, !47, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!145 = distinct !{!145, !58}
!146 = distinct !{!146, !58}
!147 = !{!"wm_keymap.c:wm_keymap_item_properties_update_ot"}
!148 = !{!122, !36, i64 8}
!149 = !{!"wm_keymap.c:WM_keyconfig_active"}
!150 = !{!"wm_keymap.c:wm_keymap_diff"}
!151 = !{i32 0, i32 2}
!152 = distinct !{!152, !58}
!153 = distinct !{!153, !58}
!154 = !{!"wm_keymap.c:wm_keymap_item_copy"}
!155 = !{!"wm_keymap.c:wm_keymap_item_equals"}
!156 = !{!"wm_keymap.c:wm_keymap_find_item_equals"}
!157 = distinct !{!157, !58}
!158 = !{!"wm_keymap.c:wm_keymap_item_equals_result"}
!159 = !{!"wm_keymap.c:wm_keymap_find_item_equals_result"}
!160 = distinct !{!160, !58}
!161 = !{!"wm_keymap.c:wm_keymap_patch"}
!162 = distinct !{!162, !58}
!163 = !{!"wm_keymap.c:BLI_listbase_clear"}
!164 = !{!"wm_keymap.c:wm_keymap_diff_item_copy"}
