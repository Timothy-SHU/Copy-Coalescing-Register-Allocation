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
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
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

; Function Attrs: nounwind uwtable
define dso_local void @WM_keymap_properties_reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  tail call void @WM_operator_properties_free(ptr noundef nonnull %4) #12
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void %7(ptr noundef %8) #12
  store ptr null, ptr %3, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 3
  store ptr %1, ptr %10, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 2
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #12
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @WM_operator_properties_sanitize(ptr noundef %12, i8 noundef zeroext 1) #12
  ret void
}

declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @WM_keymap_map_type_get(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 6
  %3 = load i16, ptr %2, align 2, !tbaa !42
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

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_keyconfig_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %4 = tail call ptr %3(i64 noundef 168, ptr noundef nonnull @.str) #12
  %5 = getelementptr inbounds %struct.wmKeyConfig, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #12
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 13
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %4) #12
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_keyconfig_new_user(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %4 = tail call ptr %3(i64 noundef 168, ptr noundef nonnull @.str) #12
  %5 = getelementptr inbounds %struct.wmKeyConfig, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #12
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 13
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %4) #12
  %8 = getelementptr inbounds %struct.wmKeyConfig, ptr %4, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = or i32 %9, 2
  store i32 %10, ptr %8, align 4, !tbaa !43
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @WM_keyconfig_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 13
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #12
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmKeyConfig, ptr %1, i64 0, i32 2
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 45), ptr noundef nonnull dereferenceable(1) %7, i64 noundef 64) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.wmKeyConfig, ptr %12, i64 0, i32 2
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 45), ptr noundef nonnull %13, i64 noundef 64) #12
  %15 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %16 = or i8 %15, 1
  store i8 %16, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  br label %17

17:                                               ; preds = %10, %6
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #12
  %18 = getelementptr inbounds %struct.wmKeyConfig, ptr %1, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %17 ]
  tail call void @WM_keymap_free(ptr noundef nonnull %22)
  tail call void @BLI_freelinkN(ptr noundef nonnull %18, ptr noundef nonnull %22) #12
  %23 = load ptr, ptr %18, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !llvm.loop !53

25:                                               ; preds = %21, %17
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %26(ptr noundef %1) #12
  br label %27

27:                                               ; preds = %2, %25
  %28 = phi i8 [ 1, %25 ], [ 0, %2 ]
  ret i8 %28
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_keyconfig_update_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %4 = or i8 %3, 1
  store i8 %4, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %8 = load i16, ptr %7, align 4, !tbaa !56
  %9 = or i16 %8, 64
  store i16 %9, ptr %7, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %6, %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 13
  %14 = load i16, ptr %13, align 8, !tbaa !58
  %15 = or i16 %14, 8
  store i16 %15, ptr %13, align 8, !tbaa !58
  br label %16

16:                                               ; preds = %12, %10
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_keyconfig_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmKeyConfig, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @WM_keymap_free(ptr noundef nonnull %6)
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef nonnull %6) #12
  %7 = load ptr, ptr %2, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !53

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %10(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_keymap_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1, %34
  %6 = phi ptr [ %35, %34 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  tail call void @WM_operator_properties_free(ptr noundef nonnull %12) #12
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %16 = load ptr, ptr %11, align 8, !tbaa !34
  tail call void %15(ptr noundef %16) #12
  br label %17

17:                                               ; preds = %14, %10
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %19 = load ptr, ptr %7, align 8, !tbaa !59
  tail call void %18(ptr noundef %19) #12
  br label %20

20:                                               ; preds = %17, %5
  %21 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %6, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.wmKeyMapItem, ptr %22, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  tail call void @WM_operator_properties_free(ptr noundef nonnull %26) #12
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %30 = load ptr, ptr %25, align 8, !tbaa !34
  tail call void %29(ptr noundef %30) #12
  br label %31

31:                                               ; preds = %28, %24
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %33 = load ptr, ptr %21, align 8, !tbaa !61
  tail call void %32(ptr noundef %33) #12
  br label %34

34:                                               ; preds = %20, %31
  %35 = load ptr, ptr %6, align 8, !tbaa !40
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %5, !llvm.loop !62

37:                                               ; preds = %34, %1
  %38 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %37, %49
  %42 = phi ptr [ %50, %49 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.wmKeyMapItem, ptr %42, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  tail call void @WM_operator_properties_free(ptr noundef nonnull %44) #12
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %48 = load ptr, ptr %43, align 8, !tbaa !34
  tail call void %47(ptr noundef %48) #12
  br label %49

49:                                               ; preds = %41, %46
  %50 = load ptr, ptr %42, align 8, !tbaa !40
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %41, !llvm.loop !63

52:                                               ; preds = %49, %37
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #12
  tail call void @BLI_freelistN(ptr noundef nonnull %38) #12
  ret void
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_keyconfig_set_active(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @WM_keyconfig_update(ptr noundef %0)
  %3 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 45), ptr noundef %1, i64 noundef 64) #12
  %4 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %5 = or i8 %4, 1
  store i8 %5, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  tail call void @WM_keyconfig_update(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_keyconfig_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca [5 x ptr], align 16
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %1338

6:                                                ; preds = %1
  %7 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %1338, label %9

9:                                                ; preds = %6
  %10 = and i8 %7, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %113, label %12

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #12
  store ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), ptr %3, align 16, !tbaa !40
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  %14 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 16
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.wmKeyConfig, ptr %15, i64 0, i32 4
  store ptr %16, ptr %13, align 8, !tbaa !40
  %17 = getelementptr inbounds ptr, ptr %3, i64 2
  %18 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.wmKeyConfig, ptr %19, i64 0, i32 4
  store ptr %20, ptr %17, align 16, !tbaa !40
  %21 = getelementptr inbounds ptr, ptr %3, i64 3
  %22 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.wmKeyConfig, ptr %23, i64 0, i32 4
  store ptr %24, ptr %21, align 8, !tbaa !40
  %25 = getelementptr inbounds ptr, ptr %3, i64 4
  store ptr null, ptr %25, align 16, !tbaa !40
  %26 = load ptr, ptr %3, align 16, !tbaa !40
  %27 = icmp eq ptr %26, null
  br i1 %27, label %68, label %28

28:                                               ; preds = %12, %63
  %29 = phi i64 [ %64, %63 ], [ 0, %12 ]
  %30 = phi ptr [ %66, %63 ], [ %26, %12 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  %32 = icmp eq ptr %31, null
  br i1 %32, label %63, label %36

33:                                               ; preds = %60, %45
  %34 = load ptr, ptr %37, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36, !llvm.loop !68

36:                                               ; preds = %28, %33
  %37 = phi ptr [ %34, %33 ], [ %31, %28 ]
  %38 = getelementptr inbounds %struct.wmKeyMap, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36, %41
  %42 = phi ptr [ %43, %41 ], [ %39, %36 ]
  tail call fastcc void @wm_keymap_item_properties_update_ot(ptr noundef nonnull %42)
  %43 = load ptr, ptr %42, align 8, !tbaa !40
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %41, !llvm.loop !69

45:                                               ; preds = %41, %36
  %46 = getelementptr inbounds %struct.wmKeyMap, ptr %37, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !40
  %48 = icmp eq ptr %47, null
  br i1 %48, label %33, label %49

49:                                               ; preds = %45, %60
  %50 = phi ptr [ %61, %60 ], [ %47, %45 ]
  %51 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call fastcc void @wm_keymap_item_properties_update_ot(ptr noundef nonnull %52)
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %50, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !59
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call fastcc void @wm_keymap_item_properties_update_ot(ptr noundef nonnull %57)
  br label %60

60:                                               ; preds = %59, %55
  %61 = load ptr, ptr %50, align 8, !tbaa !40
  %62 = icmp eq ptr %61, null
  br i1 %62, label %33, label %49, !llvm.loop !70

63:                                               ; preds = %33, %28
  %64 = add nuw i64 %29, 1
  %65 = getelementptr inbounds [5 x ptr], ptr %3, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !40
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %28, !llvm.loop !71

68:                                               ; preds = %63, %12
  %69 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 13
  %70 = load ptr, ptr %69, align 8, !tbaa !40
  %71 = icmp eq ptr %70, null
  br i1 %71, label %110, label %72

72:                                               ; preds = %68, %107
  %73 = phi ptr [ %108, %107 ], [ %70, %68 ]
  %74 = getelementptr inbounds %struct.wmKeyConfig, ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !40
  %76 = icmp eq ptr %75, null
  br i1 %76, label %107, label %80

77:                                               ; preds = %104, %89
  %78 = load ptr, ptr %81, align 8, !tbaa !40
  %79 = icmp eq ptr %78, null
  br i1 %79, label %107, label %80, !llvm.loop !68

80:                                               ; preds = %72, %77
  %81 = phi ptr [ %78, %77 ], [ %75, %72 ]
  %82 = getelementptr inbounds %struct.wmKeyMap, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !40
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %80, %85
  %86 = phi ptr [ %87, %85 ], [ %83, %80 ]
  tail call fastcc void @wm_keymap_item_properties_update_ot(ptr noundef nonnull %86)
  %87 = load ptr, ptr %86, align 8, !tbaa !40
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %85, !llvm.loop !69

89:                                               ; preds = %85, %80
  %90 = getelementptr inbounds %struct.wmKeyMap, ptr %81, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !40
  %92 = icmp eq ptr %91, null
  br i1 %92, label %77, label %93

93:                                               ; preds = %89, %104
  %94 = phi ptr [ %105, %104 ], [ %91, %89 ]
  %95 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %94, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !61
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  tail call fastcc void @wm_keymap_item_properties_update_ot(ptr noundef nonnull %96)
  br label %99

99:                                               ; preds = %98, %93
  %100 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %94, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !59
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  tail call fastcc void @wm_keymap_item_properties_update_ot(ptr noundef nonnull %101)
  br label %104

104:                                              ; preds = %103, %99
  %105 = load ptr, ptr %94, align 8, !tbaa !40
  %106 = icmp eq ptr %105, null
  br i1 %106, label %77, label %93, !llvm.loop !70

107:                                              ; preds = %77, %72
  %108 = load ptr, ptr %73, align 8, !tbaa !40
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %72, !llvm.loop !72

110:                                              ; preds = %107, %68
  %111 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %112 = and i8 %111, 125
  store i8 %112, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #12
  br label %113

113:                                              ; preds = %110, %9
  %114 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %1338, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8, !tbaa !40
  %118 = icmp eq ptr %117, null
  br i1 %118, label %166, label %119

119:                                              ; preds = %116, %163
  %120 = phi ptr [ %164, %163 ], [ %117, %116 ]
  %121 = getelementptr inbounds %struct.wmKeyMap, ptr %120, i64 0, i32 7
  %122 = load i16, ptr %121, align 4, !tbaa !56
  %123 = and i16 %122, 1
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %163

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.wmKeyMap, ptr %120, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !40
  %128 = icmp eq ptr %127, null
  br i1 %128, label %151, label %129

129:                                              ; preds = %125, %148
  %130 = phi ptr [ %149, %148 ], [ %127, %125 ]
  %131 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %130, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !61
  %133 = icmp eq ptr %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.wmKeyMapItem, ptr %132, i64 0, i32 17
  %136 = getelementptr inbounds %struct.wmKeyMapItem, ptr %132, i64 0, i32 3
  %137 = getelementptr inbounds %struct.wmKeyMapItem, ptr %132, i64 0, i32 2
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %135, ptr noundef nonnull %136, ptr noundef nonnull %137) #12
  %138 = load ptr, ptr %135, align 8, !tbaa !34
  tail call void @WM_operator_properties_sanitize(ptr noundef %138, i8 noundef zeroext 1) #12
  br label %139

139:                                              ; preds = %134, %129
  %140 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %130, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !59
  %142 = icmp eq ptr %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.wmKeyMapItem, ptr %141, i64 0, i32 17
  %145 = getelementptr inbounds %struct.wmKeyMapItem, ptr %141, i64 0, i32 3
  %146 = getelementptr inbounds %struct.wmKeyMapItem, ptr %141, i64 0, i32 2
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %144, ptr noundef nonnull %145, ptr noundef nonnull %146) #12
  %147 = load ptr, ptr %144, align 8, !tbaa !34
  tail call void @WM_operator_properties_sanitize(ptr noundef %147, i8 noundef zeroext 1) #12
  br label %148

148:                                              ; preds = %139, %143
  %149 = load ptr, ptr %130, align 8, !tbaa !40
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %129, !llvm.loop !73

151:                                              ; preds = %148, %125
  %152 = getelementptr inbounds %struct.wmKeyMap, ptr %120, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !40
  %154 = icmp eq ptr %153, null
  br i1 %154, label %163, label %155

155:                                              ; preds = %151, %155
  %156 = phi ptr [ %161, %155 ], [ %153, %151 ]
  %157 = getelementptr inbounds %struct.wmKeyMapItem, ptr %156, i64 0, i32 17
  %158 = getelementptr inbounds %struct.wmKeyMapItem, ptr %156, i64 0, i32 3
  %159 = getelementptr inbounds %struct.wmKeyMapItem, ptr %156, i64 0, i32 2
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %157, ptr noundef nonnull %158, ptr noundef nonnull %159) #12
  %160 = load ptr, ptr %157, align 8, !tbaa !34
  tail call void @WM_operator_properties_sanitize(ptr noundef %160, i8 noundef zeroext 1) #12
  %161 = load ptr, ptr %156, align 8, !tbaa !40
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %155, !llvm.loop !74

163:                                              ; preds = %155, %151, %119
  %164 = load ptr, ptr %120, align 8, !tbaa !40
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %119, !llvm.loop !75

166:                                              ; preds = %163, %116
  %167 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 16
  %168 = load ptr, ptr %167, align 8, !tbaa !66
  %169 = getelementptr inbounds %struct.wmKeyConfig, ptr %168, i64 0, i32 4
  %170 = load ptr, ptr %169, align 8, !tbaa !40
  %171 = icmp eq ptr %170, null
  br i1 %171, label %648, label %172

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 15
  br label %174

174:                                              ; preds = %172, %645
  %175 = phi ptr [ %170, %172 ], [ %646, %645 ]
  %176 = getelementptr inbounds %struct.wmKeyMap, ptr %175, i64 0, i32 7
  %177 = load i16, ptr %176, align 4, !tbaa !56
  %178 = and i16 %177, 64
  %179 = and i16 %177, -65
  store i16 %179, ptr %176, align 4, !tbaa !56
  %180 = getelementptr inbounds %struct.wmKeyMap, ptr %175, i64 0, i32 2
  %181 = icmp ne i16 %178, 0
  %182 = load ptr, ptr %180, align 8, !tbaa !40
  %183 = icmp eq ptr %182, null
  br i1 %183, label %199, label %184

184:                                              ; preds = %174, %192
  %185 = phi ptr [ %197, %192 ], [ %182, %174 ]
  %186 = phi i1 [ %193, %192 ], [ %181, %174 ]
  br i1 %186, label %192, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.wmKeyMapItem, ptr %185, i64 0, i32 13
  %189 = load i16, ptr %188, align 8, !tbaa !58
  %190 = and i16 %189, 8
  %191 = icmp ne i16 %190, 0
  br label %192

192:                                              ; preds = %187, %184
  %193 = phi i1 [ true, %184 ], [ %191, %187 ]
  %194 = getelementptr inbounds %struct.wmKeyMapItem, ptr %185, i64 0, i32 13
  %195 = load i16, ptr %194, align 8, !tbaa !58
  %196 = and i16 %195, -9
  store i16 %196, ptr %194, align 8, !tbaa !58
  %197 = load ptr, ptr %185, align 8, !tbaa !40
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %184, !llvm.loop !76

199:                                              ; preds = %192, %174
  %200 = phi i1 [ %181, %174 ], [ %193, %192 ]
  br i1 %200, label %201, label %645

201:                                              ; preds = %199
  %202 = tail call fastcc ptr @wm_keymap_preset(ptr noundef %0, ptr noundef nonnull %175)
  %203 = load ptr, ptr %173, align 8, !tbaa !67
  %204 = getelementptr inbounds %struct.wmKeyConfig, ptr %203, i64 0, i32 4
  %205 = getelementptr inbounds %struct.wmKeyMap, ptr %175, i64 0, i32 4
  %206 = getelementptr inbounds %struct.wmKeyMap, ptr %175, i64 0, i32 5
  %207 = load i16, ptr %206, align 8, !tbaa !77
  %208 = getelementptr inbounds %struct.wmKeyMap, ptr %175, i64 0, i32 6
  %209 = load i16, ptr %208, align 2, !tbaa !78
  %210 = load ptr, ptr %204, align 8, !tbaa !40
  %211 = icmp eq ptr %210, null
  br i1 %211, label %228, label %212

212:                                              ; preds = %201, %225
  %213 = phi ptr [ %226, %225 ], [ %210, %201 ]
  %214 = getelementptr inbounds %struct.wmKeyMap, ptr %213, i64 0, i32 5
  %215 = load i16, ptr %214, align 8, !tbaa !77
  %216 = icmp eq i16 %215, %207
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.wmKeyMap, ptr %213, i64 0, i32 6
  %219 = load i16, ptr %218, align 2, !tbaa !78
  %220 = icmp eq i16 %219, %209
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.wmKeyMap, ptr %213, i64 0, i32 4
  %223 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %205, ptr noundef nonnull dereferenceable(1) %222, i64 noundef 64) #13
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %221, %217, %212
  %226 = load ptr, ptr %213, align 8, !tbaa !40
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %212, !llvm.loop !79

228:                                              ; preds = %221, %225, %201
  %229 = phi ptr [ null, %201 ], [ %213, %221 ], [ null, %225 ]
  %230 = icmp eq ptr %202, null
  br i1 %230, label %645, label %231

231:                                              ; preds = %228
  %232 = icmp eq ptr %229, null
  br i1 %232, label %272, label %233

233:                                              ; preds = %231
  %234 = tail call fastcc ptr @wm_keymap_copy(ptr noundef nonnull %202)
  %235 = getelementptr inbounds %struct.wmKeyMap, ptr %229, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !40
  %237 = icmp eq ptr %236, null
  br i1 %237, label %272, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.wmKeyMap, ptr %234, i64 0, i32 8
  %240 = getelementptr inbounds %struct.wmKeyMap, ptr %234, i64 0, i32 7
  %241 = getelementptr inbounds %struct.wmKeyMap, ptr %234, i64 0, i32 2
  br label %242

242:                                              ; preds = %261, %238
  %243 = phi ptr [ %236, %238 ], [ %270, %261 ]
  %244 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %245 = tail call ptr %244(ptr noundef nonnull %243) #12
  %246 = getelementptr inbounds %struct.wmKeyMapItem, ptr %245, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %245, i8 0, i64 16, i1 false)
  %247 = load i16, ptr %246, align 8, !tbaa !58
  %248 = and i16 %247, -9
  store i16 %248, ptr %246, align 8, !tbaa !58
  %249 = getelementptr inbounds %struct.wmKeyMapItem, ptr %245, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !41
  %251 = icmp eq ptr %250, null
  br i1 %251, label %261, label %252

252:                                              ; preds = %242
  %253 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %254 = tail call ptr %253(i64 noundef 24, ptr noundef nonnull @.str.107) #12
  %255 = getelementptr inbounds %struct.wmKeyMapItem, ptr %245, i64 0, i32 17
  store ptr %254, ptr %255, align 8, !tbaa !34
  %256 = getelementptr inbounds %struct.wmKeyMapItem, ptr %245, i64 0, i32 2
  tail call void @WM_operator_properties_create(ptr noundef %254, ptr noundef nonnull %256) #12
  %257 = load ptr, ptr %249, align 8, !tbaa !41
  %258 = tail call ptr @IDP_CopyProperty(ptr noundef %257) #12
  store ptr %258, ptr %249, align 8, !tbaa !41
  %259 = load ptr, ptr %255, align 8, !tbaa !34
  %260 = getelementptr inbounds %struct.PointerRNA, ptr %259, i64 0, i32 2
  store ptr %258, ptr %260, align 8, !tbaa !80
  br label %261

261:                                              ; preds = %242, %252
  %262 = load i16, ptr %239, align 2, !tbaa !83
  %263 = add i16 %262, 1
  store i16 %263, ptr %239, align 2, !tbaa !83
  %264 = load i16, ptr %240, align 4, !tbaa !56
  %265 = and i16 %264, 2
  %266 = icmp eq i16 %265, 0
  %267 = xor i16 %262, -1
  %268 = select i1 %266, i16 %263, i16 %267
  %269 = getelementptr inbounds %struct.wmKeyMapItem, ptr %245, i64 0, i32 15
  store i16 %268, ptr %269, align 4, !tbaa !84
  tail call void @BLI_addhead(ptr noundef nonnull %241, ptr noundef %245) #12
  %270 = load ptr, ptr %243, align 8, !tbaa !40
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %242, !llvm.loop !85

272:                                              ; preds = %261, %233, %231
  %273 = phi ptr [ %202, %231 ], [ %234, %233 ], [ %234, %261 ]
  %274 = load i16, ptr %206, align 8, !tbaa !77
  %275 = load i16, ptr %208, align 2, !tbaa !78
  %276 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8, !tbaa !40
  %277 = icmp eq ptr %276, null
  br i1 %277, label %294, label %278

278:                                              ; preds = %272, %291
  %279 = phi ptr [ %292, %291 ], [ %276, %272 ]
  %280 = getelementptr inbounds %struct.wmKeyMap, ptr %279, i64 0, i32 5
  %281 = load i16, ptr %280, align 8, !tbaa !77
  %282 = icmp eq i16 %281, %274
  br i1 %282, label %283, label %291

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.wmKeyMap, ptr %279, i64 0, i32 6
  %285 = load i16, ptr %284, align 2, !tbaa !78
  %286 = icmp eq i16 %285, %275
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.wmKeyMap, ptr %279, i64 0, i32 4
  %289 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %205, ptr noundef nonnull dereferenceable(1) %288, i64 noundef 64) #13
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %287, %283, %278
  %292 = load ptr, ptr %279, align 8, !tbaa !40
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %278, !llvm.loop !79

294:                                              ; preds = %291, %287, %272
  %295 = phi ptr [ null, %272 ], [ null, %291 ], [ %279, %287 ]
  %296 = icmp eq ptr %295, null
  br i1 %296, label %298, label %297

297:                                              ; preds = %294
  tail call void @WM_keymap_free(ptr noundef nonnull %295)
  tail call void @BLI_freelinkN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), ptr noundef nonnull %295) #12
  br label %298

298:                                              ; preds = %297, %294
  %299 = load i16, ptr %206, align 8, !tbaa !77
  %300 = load i16, ptr %208, align 2, !tbaa !78
  %301 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %302 = tail call ptr %301(i64 noundef 136, ptr noundef nonnull @.str.105) #12
  %303 = getelementptr inbounds %struct.wmKeyMap, ptr %302, i64 0, i32 4
  %304 = tail call ptr @BLI_strncpy(ptr noundef nonnull %303, ptr noundef nonnull %205, i64 noundef 64) #12
  %305 = getelementptr inbounds %struct.wmKeyMap, ptr %302, i64 0, i32 5
  store i16 %299, ptr %305, align 8, !tbaa !77
  %306 = getelementptr inbounds %struct.wmKeyMap, ptr %302, i64 0, i32 6
  store i16 %300, ptr %306, align 2, !tbaa !78
  %307 = getelementptr inbounds %struct.wmKeyMap, ptr %302, i64 0, i32 7
  %308 = load i16, ptr %307, align 4, !tbaa !56
  %309 = or i16 %308, 16
  store i16 %309, ptr %307, align 4, !tbaa !56
  %310 = getelementptr inbounds %struct.wmKeyMap, ptr %273, i64 0, i32 7
  %311 = load i16, ptr %310, align 4, !tbaa !56
  %312 = and i16 %311, 1
  %313 = icmp eq i16 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %298
  %315 = or i16 %308, 17
  store i16 %315, ptr %307, align 4, !tbaa !56
  br label %316

316:                                              ; preds = %314, %298
  %317 = getelementptr inbounds %struct.wmKeyMap, ptr %273, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !40
  %319 = icmp eq ptr %318, null
  br i1 %319, label %325, label %320

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.wmKeyMap, ptr %302, i64 0, i32 3
  %322 = getelementptr inbounds %struct.wmKeyMap, ptr %302, i64 0, i32 3
  %323 = getelementptr inbounds %struct.wmKeyMap, ptr %202, i64 0, i32 2
  %324 = getelementptr inbounds %struct.wmKeyMap, ptr %229, i64 0, i32 2
  br label %330

325:                                              ; preds = %602, %316
  %326 = load ptr, ptr %180, align 8, !tbaa !40
  %327 = icmp eq ptr %326, null
  br i1 %327, label %635, label %328

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.wmKeyMap, ptr %302, i64 0, i32 3
  br label %605

330:                                              ; preds = %320, %602
  %331 = phi ptr [ %318, %320 ], [ %603, %602 ]
  %332 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 15
  %333 = load i16, ptr %332, align 4, !tbaa !84
  br label %334

334:                                              ; preds = %338, %330
  %335 = phi ptr [ %180, %330 ], [ %336, %338 ]
  %336 = load ptr, ptr %335, align 8, !tbaa !40
  %337 = icmp eq ptr %336, null
  br i1 %337, label %342, label %338

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.wmKeyMapItem, ptr %336, i64 0, i32 15
  %340 = load i16, ptr %339, align 4, !tbaa !84
  %341 = icmp eq i16 %340, %333
  br i1 %341, label %342, label %334, !llvm.loop !86

342:                                              ; preds = %338, %334
  %343 = phi ptr [ %336, %338 ], [ null, %334 ]
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %367

345:                                              ; preds = %342
  %346 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %347 = tail call ptr %346(i64 noundef 32, ptr noundef nonnull @.str.106) #12
  %348 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %349 = tail call ptr %348(ptr noundef nonnull %331) #12
  %350 = getelementptr inbounds %struct.wmKeyMapItem, ptr %349, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %349, i8 0, i64 16, i1 false)
  %351 = load i16, ptr %350, align 8, !tbaa !58
  %352 = and i16 %351, -9
  store i16 %352, ptr %350, align 8, !tbaa !58
  %353 = getelementptr inbounds %struct.wmKeyMapItem, ptr %349, i64 0, i32 3
  %354 = load ptr, ptr %353, align 8, !tbaa !41
  %355 = icmp eq ptr %354, null
  br i1 %355, label %365, label %356

356:                                              ; preds = %345
  %357 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %358 = tail call ptr %357(i64 noundef 24, ptr noundef nonnull @.str.107) #12
  %359 = getelementptr inbounds %struct.wmKeyMapItem, ptr %349, i64 0, i32 17
  store ptr %358, ptr %359, align 8, !tbaa !34
  %360 = getelementptr inbounds %struct.wmKeyMapItem, ptr %349, i64 0, i32 2
  tail call void @WM_operator_properties_create(ptr noundef %358, ptr noundef nonnull %360) #12
  %361 = load ptr, ptr %353, align 8, !tbaa !41
  %362 = tail call ptr @IDP_CopyProperty(ptr noundef %361) #12
  store ptr %362, ptr %353, align 8, !tbaa !41
  %363 = load ptr, ptr %359, align 8, !tbaa !34
  %364 = getelementptr inbounds %struct.PointerRNA, ptr %363, i64 0, i32 2
  store ptr %362, ptr %364, align 8, !tbaa !80
  br label %365

365:                                              ; preds = %345, %356
  %366 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %347, i64 0, i32 2
  store ptr %349, ptr %366, align 8, !tbaa !59
  tail call void @BLI_addtail(ptr noundef nonnull %322, ptr noundef %347) #12
  br label %490

367:                                              ; preds = %342
  %368 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 2
  %369 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 2
  %370 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %368, ptr noundef nonnull dereferenceable(1) %369) #13
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %394

372:                                              ; preds = %367
  %373 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 17
  %374 = load ptr, ptr %373, align 8, !tbaa !34
  %375 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 17
  %376 = load ptr, ptr %375, align 8, !tbaa !34
  %377 = tail call zeroext i8 @RNA_struct_equals(ptr noundef %374, ptr noundef %376, i32 noundef 2) #12
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %394, label %379

379:                                              ; preds = %372
  %380 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 13
  %381 = load i16, ptr %380, align 8, !tbaa !58
  %382 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 13
  %383 = load i16, ptr %382, align 8, !tbaa !58
  %384 = xor i16 %383, %381
  %385 = and i16 %384, 1
  %386 = icmp eq i16 %385, 0
  br i1 %386, label %387, label %394

387:                                              ; preds = %379
  %388 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 5
  %389 = load i16, ptr %388, align 8, !tbaa !87
  %390 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 5
  %391 = load i16, ptr %390, align 8, !tbaa !87
  %392 = icmp eq i16 %389, %391
  %393 = zext i1 %392 to i32
  br label %394

394:                                              ; preds = %367, %372, %379, %387
  %395 = phi i32 [ %393, %387 ], [ 0, %367 ], [ 0, %372 ], [ 0, %379 ]
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %446, label %397

397:                                              ; preds = %394
  %398 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 6
  %399 = load i16, ptr %398, align 2, !tbaa !42
  %400 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 6
  %401 = load i16, ptr %400, align 2, !tbaa !42
  %402 = icmp eq i16 %399, %401
  br i1 %402, label %403, label %446

403:                                              ; preds = %397
  %404 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 7
  %405 = load i16, ptr %404, align 4, !tbaa !88
  %406 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 7
  %407 = load i16, ptr %406, align 4, !tbaa !88
  %408 = icmp eq i16 %405, %407
  br i1 %408, label %409, label %446

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 8
  %411 = load i16, ptr %410, align 2, !tbaa !89
  %412 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 8
  %413 = load i16, ptr %412, align 2, !tbaa !89
  %414 = icmp eq i16 %411, %413
  br i1 %414, label %415, label %446

415:                                              ; preds = %409
  %416 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 9
  %417 = load i16, ptr %416, align 8, !tbaa !90
  %418 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 9
  %419 = load i16, ptr %418, align 8, !tbaa !90
  %420 = icmp eq i16 %417, %419
  br i1 %420, label %421, label %446

421:                                              ; preds = %415
  %422 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 10
  %423 = load i16, ptr %422, align 2, !tbaa !91
  %424 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 10
  %425 = load i16, ptr %424, align 2, !tbaa !91
  %426 = icmp eq i16 %423, %425
  br i1 %426, label %427, label %446

427:                                              ; preds = %421
  %428 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 11
  %429 = load i16, ptr %428, align 4, !tbaa !92
  %430 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 11
  %431 = load i16, ptr %430, align 4, !tbaa !92
  %432 = icmp eq i16 %429, %431
  br i1 %432, label %433, label %446

433:                                              ; preds = %427
  %434 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 12
  %435 = load i16, ptr %434, align 2, !tbaa !93
  %436 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 12
  %437 = load i16, ptr %436, align 2, !tbaa !93
  %438 = icmp eq i16 %435, %437
  br i1 %438, label %439, label %446

439:                                              ; preds = %433
  %440 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 14
  %441 = load i16, ptr %440, align 2, !tbaa !94
  %442 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 14
  %443 = load i16, ptr %442, align 2, !tbaa !94
  %444 = icmp eq i16 %441, %443
  %445 = zext i1 %444 to i32
  br label %446

446:                                              ; preds = %394, %397, %403, %409, %415, %421, %427, %433, %439
  %447 = phi i32 [ 0, %433 ], [ 0, %427 ], [ 0, %421 ], [ 0, %415 ], [ 0, %409 ], [ 0, %403 ], [ 0, %397 ], [ 0, %394 ], [ %445, %439 ]
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %490

449:                                              ; preds = %446
  %450 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %451 = tail call ptr %450(i64 noundef 32, ptr noundef nonnull @.str.106) #12
  %452 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %453 = tail call ptr %452(ptr noundef nonnull %331) #12
  %454 = getelementptr inbounds %struct.wmKeyMapItem, ptr %453, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %453, i8 0, i64 16, i1 false)
  %455 = load i16, ptr %454, align 8, !tbaa !58
  %456 = and i16 %455, -9
  store i16 %456, ptr %454, align 8, !tbaa !58
  %457 = getelementptr inbounds %struct.wmKeyMapItem, ptr %453, i64 0, i32 3
  %458 = load ptr, ptr %457, align 8, !tbaa !41
  %459 = icmp eq ptr %458, null
  br i1 %459, label %469, label %460

460:                                              ; preds = %449
  %461 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %462 = tail call ptr %461(i64 noundef 24, ptr noundef nonnull @.str.107) #12
  %463 = getelementptr inbounds %struct.wmKeyMapItem, ptr %453, i64 0, i32 17
  store ptr %462, ptr %463, align 8, !tbaa !34
  %464 = getelementptr inbounds %struct.wmKeyMapItem, ptr %453, i64 0, i32 2
  tail call void @WM_operator_properties_create(ptr noundef %462, ptr noundef nonnull %464) #12
  %465 = load ptr, ptr %457, align 8, !tbaa !41
  %466 = tail call ptr @IDP_CopyProperty(ptr noundef %465) #12
  store ptr %466, ptr %457, align 8, !tbaa !41
  %467 = load ptr, ptr %463, align 8, !tbaa !34
  %468 = getelementptr inbounds %struct.PointerRNA, ptr %467, i64 0, i32 2
  store ptr %466, ptr %468, align 8, !tbaa !80
  br label %469

469:                                              ; preds = %449, %460
  %470 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %451, i64 0, i32 2
  store ptr %453, ptr %470, align 8, !tbaa !59
  %471 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %472 = tail call ptr %471(ptr noundef nonnull %343) #12
  %473 = getelementptr inbounds %struct.wmKeyMapItem, ptr %472, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %472, i8 0, i64 16, i1 false)
  %474 = load i16, ptr %473, align 8, !tbaa !58
  %475 = and i16 %474, -9
  store i16 %475, ptr %473, align 8, !tbaa !58
  %476 = getelementptr inbounds %struct.wmKeyMapItem, ptr %472, i64 0, i32 3
  %477 = load ptr, ptr %476, align 8, !tbaa !41
  %478 = icmp eq ptr %477, null
  br i1 %478, label %488, label %479

479:                                              ; preds = %469
  %480 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %481 = tail call ptr %480(i64 noundef 24, ptr noundef nonnull @.str.107) #12
  %482 = getelementptr inbounds %struct.wmKeyMapItem, ptr %472, i64 0, i32 17
  store ptr %481, ptr %482, align 8, !tbaa !34
  %483 = getelementptr inbounds %struct.wmKeyMapItem, ptr %472, i64 0, i32 2
  tail call void @WM_operator_properties_create(ptr noundef %481, ptr noundef nonnull %483) #12
  %484 = load ptr, ptr %476, align 8, !tbaa !41
  %485 = tail call ptr @IDP_CopyProperty(ptr noundef %484) #12
  store ptr %485, ptr %476, align 8, !tbaa !41
  %486 = load ptr, ptr %482, align 8, !tbaa !34
  %487 = getelementptr inbounds %struct.PointerRNA, ptr %486, i64 0, i32 2
  store ptr %485, ptr %487, align 8, !tbaa !80
  br label %488

488:                                              ; preds = %469, %479
  %489 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %451, i64 0, i32 3
  store ptr %472, ptr %489, align 8, !tbaa !61
  tail call void @BLI_addtail(ptr noundef nonnull %321, ptr noundef %451) #12
  br label %490

490:                                              ; preds = %488, %446, %365
  br i1 %344, label %602, label %491

491:                                              ; preds = %490
  %492 = load i16, ptr %332, align 4, !tbaa !84
  br label %493

493:                                              ; preds = %497, %491
  %494 = phi ptr [ %323, %491 ], [ %495, %497 ]
  %495 = load ptr, ptr %494, align 8, !tbaa !40
  %496 = icmp eq ptr %495, null
  br i1 %496, label %501, label %497

497:                                              ; preds = %493
  %498 = getelementptr inbounds %struct.wmKeyMapItem, ptr %495, i64 0, i32 15
  %499 = load i16, ptr %498, align 4, !tbaa !84
  %500 = icmp eq i16 %499, %492
  br i1 %500, label %501, label %493, !llvm.loop !86

501:                                              ; preds = %497, %493
  %502 = phi ptr [ %495, %497 ], [ null, %493 ]
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %591

504:                                              ; preds = %501
  %505 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 2
  %506 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 17
  %507 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 13
  %508 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 5
  %509 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 6
  %510 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 7
  %511 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 8
  %512 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 9
  %513 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 10
  %514 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 11
  %515 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 12
  %516 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 14
  br label %517

517:                                              ; preds = %588, %504
  %518 = phi ptr [ %324, %504 ], [ %519, %588 ]
  %519 = load ptr, ptr %518, align 8, !tbaa !40
  %520 = icmp eq ptr %519, null
  br i1 %520, label %591, label %521

521:                                              ; preds = %517
  %522 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 2
  %523 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %522, ptr noundef nonnull dereferenceable(1) %505) #13
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %544

525:                                              ; preds = %521
  %526 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 17
  %527 = load ptr, ptr %526, align 8, !tbaa !34
  %528 = load ptr, ptr %506, align 8, !tbaa !34
  %529 = tail call zeroext i8 @RNA_struct_equals(ptr noundef %527, ptr noundef %528, i32 noundef 2) #12
  %530 = icmp eq i8 %529, 0
  br i1 %530, label %544, label %531

531:                                              ; preds = %525
  %532 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 13
  %533 = load i16, ptr %532, align 8, !tbaa !58
  %534 = load i16, ptr %507, align 8, !tbaa !58
  %535 = xor i16 %534, %533
  %536 = and i16 %535, 1
  %537 = icmp eq i16 %536, 0
  br i1 %537, label %538, label %544

538:                                              ; preds = %531
  %539 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 5
  %540 = load i16, ptr %539, align 8, !tbaa !87
  %541 = load i16, ptr %508, align 8, !tbaa !87
  %542 = icmp eq i16 %540, %541
  %543 = zext i1 %542 to i32
  br label %544

544:                                              ; preds = %521, %525, %531, %538
  %545 = phi i32 [ %543, %538 ], [ 0, %521 ], [ 0, %525 ], [ 0, %531 ]
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %588, label %547

547:                                              ; preds = %544
  %548 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 6
  %549 = load i16, ptr %548, align 2, !tbaa !42
  %550 = load i16, ptr %509, align 2, !tbaa !42
  %551 = icmp eq i16 %549, %550
  br i1 %551, label %552, label %588

552:                                              ; preds = %547
  %553 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 7
  %554 = load i16, ptr %553, align 4, !tbaa !88
  %555 = load i16, ptr %510, align 4, !tbaa !88
  %556 = icmp eq i16 %554, %555
  br i1 %556, label %557, label %588

557:                                              ; preds = %552
  %558 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 8
  %559 = load i16, ptr %558, align 2, !tbaa !89
  %560 = load i16, ptr %511, align 2, !tbaa !89
  %561 = icmp eq i16 %559, %560
  br i1 %561, label %562, label %588

562:                                              ; preds = %557
  %563 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 9
  %564 = load i16, ptr %563, align 8, !tbaa !90
  %565 = load i16, ptr %512, align 8, !tbaa !90
  %566 = icmp eq i16 %564, %565
  br i1 %566, label %567, label %588

567:                                              ; preds = %562
  %568 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 10
  %569 = load i16, ptr %568, align 2, !tbaa !91
  %570 = load i16, ptr %513, align 2, !tbaa !91
  %571 = icmp eq i16 %569, %570
  br i1 %571, label %572, label %588

572:                                              ; preds = %567
  %573 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 11
  %574 = load i16, ptr %573, align 4, !tbaa !92
  %575 = load i16, ptr %514, align 4, !tbaa !92
  %576 = icmp eq i16 %574, %575
  br i1 %576, label %577, label %588

577:                                              ; preds = %572
  %578 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 12
  %579 = load i16, ptr %578, align 2, !tbaa !93
  %580 = load i16, ptr %515, align 2, !tbaa !93
  %581 = icmp eq i16 %579, %580
  br i1 %581, label %582, label %588

582:                                              ; preds = %577
  %583 = getelementptr inbounds %struct.wmKeyMapItem, ptr %519, i64 0, i32 14
  %584 = load i16, ptr %583, align 2, !tbaa !94
  %585 = load i16, ptr %516, align 2, !tbaa !94
  %586 = icmp eq i16 %584, %585
  %587 = zext i1 %586 to i32
  br label %588

588:                                              ; preds = %544, %547, %552, %557, %562, %567, %572, %577, %582
  %589 = phi i32 [ 0, %577 ], [ 0, %572 ], [ 0, %567 ], [ 0, %562 ], [ 0, %557 ], [ 0, %552 ], [ 0, %547 ], [ 0, %544 ], [ %587, %582 ]
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %517, label %591, !llvm.loop !95

591:                                              ; preds = %588, %517, %501
  %592 = phi ptr [ %502, %501 ], [ %519, %588 ], [ null, %517 ]
  %593 = icmp eq ptr %592, null
  br i1 %593, label %602, label %594

594:                                              ; preds = %591
  %595 = getelementptr inbounds %struct.wmKeyMapItem, ptr %592, i64 0, i32 13
  %596 = load i16, ptr %595, align 8, !tbaa !58
  %597 = and i16 %596, -3
  store i16 %597, ptr %595, align 8, !tbaa !58
  %598 = getelementptr inbounds %struct.wmKeyMapItem, ptr %343, i64 0, i32 13
  %599 = load i16, ptr %598, align 8, !tbaa !58
  %600 = and i16 %599, 2
  %601 = or disjoint i16 %600, %597
  store i16 %601, ptr %595, align 8, !tbaa !58
  br label %602

602:                                              ; preds = %594, %591, %490
  %603 = load ptr, ptr %331, align 8, !tbaa !40
  %604 = icmp eq ptr %603, null
  br i1 %604, label %325, label %330, !llvm.loop !96

605:                                              ; preds = %328, %632
  %606 = phi ptr [ %326, %328 ], [ %633, %632 ]
  %607 = getelementptr inbounds %struct.wmKeyMapItem, ptr %606, i64 0, i32 15
  %608 = load i16, ptr %607, align 4, !tbaa !84
  %609 = icmp slt i16 %608, 0
  br i1 %609, label %610, label %632

610:                                              ; preds = %605
  %611 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %612 = tail call ptr %611(i64 noundef 32, ptr noundef nonnull @.str.106) #12
  %613 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %614 = tail call ptr %613(ptr noundef nonnull %606) #12
  %615 = getelementptr inbounds %struct.wmKeyMapItem, ptr %614, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %614, i8 0, i64 16, i1 false)
  %616 = load i16, ptr %615, align 8, !tbaa !58
  %617 = and i16 %616, -9
  store i16 %617, ptr %615, align 8, !tbaa !58
  %618 = getelementptr inbounds %struct.wmKeyMapItem, ptr %614, i64 0, i32 3
  %619 = load ptr, ptr %618, align 8, !tbaa !41
  %620 = icmp eq ptr %619, null
  br i1 %620, label %630, label %621

621:                                              ; preds = %610
  %622 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %623 = tail call ptr %622(i64 noundef 24, ptr noundef nonnull @.str.107) #12
  %624 = getelementptr inbounds %struct.wmKeyMapItem, ptr %614, i64 0, i32 17
  store ptr %623, ptr %624, align 8, !tbaa !34
  %625 = getelementptr inbounds %struct.wmKeyMapItem, ptr %614, i64 0, i32 2
  tail call void @WM_operator_properties_create(ptr noundef %623, ptr noundef nonnull %625) #12
  %626 = load ptr, ptr %618, align 8, !tbaa !41
  %627 = tail call ptr @IDP_CopyProperty(ptr noundef %626) #12
  store ptr %627, ptr %618, align 8, !tbaa !41
  %628 = load ptr, ptr %624, align 8, !tbaa !34
  %629 = getelementptr inbounds %struct.PointerRNA, ptr %628, i64 0, i32 2
  store ptr %627, ptr %629, align 8, !tbaa !80
  br label %630

630:                                              ; preds = %610, %621
  %631 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %612, i64 0, i32 3
  store ptr %614, ptr %631, align 8, !tbaa !61
  tail call void @BLI_addtail(ptr noundef nonnull %329, ptr noundef %612) #12
  br label %632

632:                                              ; preds = %630, %605
  %633 = load ptr, ptr %606, align 8, !tbaa !40
  %634 = icmp eq ptr %633, null
  br i1 %634, label %635, label %605, !llvm.loop !97

635:                                              ; preds = %632, %325
  %636 = getelementptr inbounds %struct.wmKeyMap, ptr %302, i64 0, i32 3
  %637 = load ptr, ptr %636, align 8, !tbaa !98
  %638 = icmp eq ptr %637, null
  br i1 %638, label %640, label %639

639:                                              ; preds = %635
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), ptr noundef %302) #12
  br label %642

640:                                              ; preds = %635
  tail call void @WM_keymap_free(ptr noundef %302)
  %641 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %641(ptr noundef %302) #12
  br label %642

642:                                              ; preds = %640, %639
  br i1 %232, label %645, label %643

643:                                              ; preds = %642
  tail call void @WM_keymap_free(ptr noundef %273)
  %644 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %644(ptr noundef %273) #12
  br label %645

645:                                              ; preds = %643, %642, %199, %228
  %646 = load ptr, ptr %175, align 8, !tbaa !40
  %647 = icmp eq ptr %646, null
  br i1 %647, label %648, label %174, !llvm.loop !99

648:                                              ; preds = %645, %166
  %649 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %650 = load ptr, ptr %649, align 8, !tbaa !47
  %651 = getelementptr inbounds %struct.wmKeyConfig, ptr %650, i64 0, i32 4
  %652 = load ptr, ptr %651, align 8, !tbaa !40
  %653 = icmp eq ptr %652, null
  br i1 %653, label %1332, label %654

654:                                              ; preds = %648
  %655 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 15
  br label %656

656:                                              ; preds = %654, %1326
  %657 = phi ptr [ %652, %654 ], [ %1328, %1326 ]
  %658 = phi i1 [ false, %654 ], [ %1327, %1326 ]
  %659 = call fastcc ptr @wm_keymap_preset(ptr noundef %0, ptr noundef nonnull %657)
  %660 = load ptr, ptr %655, align 8, !tbaa !67
  %661 = getelementptr inbounds %struct.wmKeyConfig, ptr %660, i64 0, i32 4
  %662 = getelementptr inbounds %struct.wmKeyMap, ptr %657, i64 0, i32 4
  %663 = getelementptr inbounds %struct.wmKeyMap, ptr %657, i64 0, i32 5
  %664 = load i16, ptr %663, align 8, !tbaa !77
  %665 = getelementptr inbounds %struct.wmKeyMap, ptr %657, i64 0, i32 6
  %666 = load i16, ptr %665, align 2, !tbaa !78
  %667 = load ptr, ptr %661, align 8, !tbaa !40
  %668 = icmp eq ptr %667, null
  br i1 %668, label %685, label %669

669:                                              ; preds = %656, %682
  %670 = phi ptr [ %683, %682 ], [ %667, %656 ]
  %671 = getelementptr inbounds %struct.wmKeyMap, ptr %670, i64 0, i32 5
  %672 = load i16, ptr %671, align 8, !tbaa !77
  %673 = icmp eq i16 %672, %664
  br i1 %673, label %674, label %682

674:                                              ; preds = %669
  %675 = getelementptr inbounds %struct.wmKeyMap, ptr %670, i64 0, i32 6
  %676 = load i16, ptr %675, align 2, !tbaa !78
  %677 = icmp eq i16 %676, %666
  br i1 %677, label %678, label %682

678:                                              ; preds = %674
  %679 = getelementptr inbounds %struct.wmKeyMap, ptr %670, i64 0, i32 4
  %680 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %662, ptr noundef nonnull dereferenceable(1) %679, i64 noundef 64) #13
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %685, label %682

682:                                              ; preds = %678, %674, %669
  %683 = load ptr, ptr %670, align 8, !tbaa !40
  %684 = icmp eq ptr %683, null
  br i1 %684, label %685, label %669, !llvm.loop !79

685:                                              ; preds = %678, %682, %656
  %686 = phi ptr [ null, %656 ], [ %670, %678 ], [ null, %682 ]
  %687 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8, !tbaa !40
  %688 = icmp eq ptr %687, null
  br i1 %688, label %705, label %689

689:                                              ; preds = %685, %702
  %690 = phi ptr [ %703, %702 ], [ %687, %685 ]
  %691 = getelementptr inbounds %struct.wmKeyMap, ptr %690, i64 0, i32 5
  %692 = load i16, ptr %691, align 8, !tbaa !77
  %693 = icmp eq i16 %692, %664
  br i1 %693, label %694, label %702

694:                                              ; preds = %689
  %695 = getelementptr inbounds %struct.wmKeyMap, ptr %690, i64 0, i32 6
  %696 = load i16, ptr %695, align 2, !tbaa !78
  %697 = icmp eq i16 %696, %666
  br i1 %697, label %698, label %702

698:                                              ; preds = %694
  %699 = getelementptr inbounds %struct.wmKeyMap, ptr %690, i64 0, i32 4
  %700 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %662, ptr noundef nonnull dereferenceable(1) %699, i64 noundef 64) #13
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %705, label %702

702:                                              ; preds = %698, %694, %689
  %703 = load ptr, ptr %690, align 8, !tbaa !40
  %704 = icmp eq ptr %703, null
  br i1 %704, label %705, label %689, !llvm.loop !79

705:                                              ; preds = %698, %702, %685
  %706 = phi ptr [ null, %685 ], [ %690, %698 ], [ null, %702 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %707 = icmp eq ptr %659, null
  br i1 %707, label %770, label %708

708:                                              ; preds = %705
  %709 = getelementptr inbounds %struct.wmKeyMap, ptr %659, i64 0, i32 7
  %710 = load i16, ptr %709, align 4, !tbaa !56
  %711 = and i16 %710, 1
  %712 = icmp eq i16 %711, 0
  br i1 %712, label %770, label %713

713:                                              ; preds = %708
  %714 = getelementptr inbounds %struct.wmKeyMap, ptr %659, i64 0, i32 10
  %715 = load ptr, ptr %714, align 8, !tbaa !100
  %716 = icmp eq ptr %715, null
  br i1 %716, label %717, label %770

717:                                              ; preds = %713
  %718 = load ptr, ptr %649, align 8, !tbaa !47
  %719 = icmp eq ptr %718, null
  br i1 %719, label %770, label %720

720:                                              ; preds = %717
  %721 = getelementptr inbounds %struct.wmKeyConfig, ptr %718, i64 0, i32 4
  %722 = getelementptr inbounds %struct.wmKeyMap, ptr %659, i64 0, i32 4
  %723 = load ptr, ptr %721, align 8, !tbaa !40
  %724 = icmp eq ptr %723, null
  br i1 %724, label %741, label %725

725:                                              ; preds = %720, %738
  %726 = phi ptr [ %739, %738 ], [ %723, %720 ]
  %727 = getelementptr inbounds %struct.wmKeyMap, ptr %726, i64 0, i32 5
  %728 = load i16, ptr %727, align 8, !tbaa !77
  %729 = icmp eq i16 %728, 0
  br i1 %729, label %730, label %738

730:                                              ; preds = %725
  %731 = getelementptr inbounds %struct.wmKeyMap, ptr %726, i64 0, i32 6
  %732 = load i16, ptr %731, align 2, !tbaa !78
  %733 = icmp eq i16 %732, 0
  br i1 %733, label %734, label %738

734:                                              ; preds = %730
  %735 = getelementptr inbounds %struct.wmKeyMap, ptr %726, i64 0, i32 4
  %736 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %722, ptr noundef nonnull dereferenceable(1) %735, i64 noundef 64) #13
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %741, label %738

738:                                              ; preds = %734, %730, %725
  %739 = load ptr, ptr %726, align 8, !tbaa !40
  %740 = icmp eq ptr %739, null
  br i1 %740, label %741, label %725, !llvm.loop !79

741:                                              ; preds = %738, %734, %720
  %742 = phi ptr [ null, %720 ], [ null, %738 ], [ %726, %734 ]
  %743 = icmp eq ptr %742, null
  br i1 %743, label %770, label %744

744:                                              ; preds = %741
  %745 = getelementptr inbounds %struct.wmKeyMap, ptr %742, i64 0, i32 10
  %746 = load ptr, ptr %745, align 8, !tbaa !100
  store ptr %746, ptr %714, align 8, !tbaa !100
  %747 = getelementptr inbounds %struct.wmKeyMap, ptr %742, i64 0, i32 9
  %748 = load ptr, ptr %747, align 8, !tbaa !101
  %749 = getelementptr inbounds %struct.wmKeyMap, ptr %659, i64 0, i32 9
  store ptr %748, ptr %749, align 8, !tbaa !101
  %750 = getelementptr inbounds %struct.wmKeyMap, ptr %659, i64 0, i32 2
  %751 = load ptr, ptr %750, align 8, !tbaa !40
  %752 = icmp eq ptr %751, null
  br i1 %752, label %770, label %753

753:                                              ; preds = %744, %767
  %754 = phi ptr [ %768, %767 ], [ %751, %744 ]
  %755 = getelementptr inbounds %struct.wmKeyMapItem, ptr %754, i64 0, i32 4
  %756 = load i8, ptr %755, align 8, !tbaa !51
  %757 = icmp eq i8 %756, 0
  br i1 %757, label %767, label %758

758:                                              ; preds = %753
  %759 = load ptr, ptr %714, align 8, !tbaa !100
  %760 = call zeroext i8 @RNA_enum_value_from_id(ptr noundef %759, ptr noundef nonnull %755, ptr noundef nonnull %2) #12
  %761 = icmp eq i8 %760, 0
  br i1 %761, label %766, label %762

762:                                              ; preds = %758
  %763 = load i32, ptr %2, align 4, !tbaa !102
  %764 = trunc i32 %763 to i16
  %765 = getelementptr inbounds %struct.wmKeyMapItem, ptr %754, i64 0, i32 5
  store i16 %764, ptr %765, align 8, !tbaa !87
  br label %766

766:                                              ; preds = %762, %758
  store i8 0, ptr %755, align 8, !tbaa !51
  br label %767

767:                                              ; preds = %766, %753
  %768 = load ptr, ptr %754, align 8, !tbaa !40
  %769 = icmp eq ptr %768, null
  br i1 %769, label %770, label %753, !llvm.loop !103

770:                                              ; preds = %767, %744, %705, %708, %713, %717, %741
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %771 = load ptr, ptr %167, align 8, !tbaa !66
  %772 = getelementptr inbounds %struct.wmKeyConfig, ptr %771, i64 0, i32 4
  %773 = getelementptr inbounds %struct.wmKeyMap, ptr %659, i64 0, i32 4
  %774 = getelementptr inbounds %struct.wmKeyMap, ptr %659, i64 0, i32 5
  %775 = load i16, ptr %774, align 8, !tbaa !77
  %776 = getelementptr inbounds %struct.wmKeyMap, ptr %659, i64 0, i32 6
  %777 = load i16, ptr %776, align 2, !tbaa !78
  %778 = load ptr, ptr %772, align 8, !tbaa !40
  %779 = icmp eq ptr %778, null
  br i1 %779, label %796, label %780

780:                                              ; preds = %770, %793
  %781 = phi ptr [ %794, %793 ], [ %778, %770 ]
  %782 = getelementptr inbounds %struct.wmKeyMap, ptr %781, i64 0, i32 5
  %783 = load i16, ptr %782, align 8, !tbaa !77
  %784 = icmp eq i16 %783, %775
  br i1 %784, label %785, label %793

785:                                              ; preds = %780
  %786 = getelementptr inbounds %struct.wmKeyMap, ptr %781, i64 0, i32 6
  %787 = load i16, ptr %786, align 2, !tbaa !78
  %788 = icmp eq i16 %787, %777
  br i1 %788, label %789, label %793

789:                                              ; preds = %785
  %790 = getelementptr inbounds %struct.wmKeyMap, ptr %781, i64 0, i32 4
  %791 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %773, ptr noundef nonnull dereferenceable(1) %790, i64 noundef 64) #13
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %796, label %793

793:                                              ; preds = %789, %785, %780
  %794 = load ptr, ptr %781, align 8, !tbaa !40
  %795 = icmp eq ptr %794, null
  br i1 %795, label %796, label %780, !llvm.loop !79

796:                                              ; preds = %793, %789, %770
  %797 = phi ptr [ null, %770 ], [ null, %793 ], [ %781, %789 ]
  %798 = icmp eq ptr %797, null
  br i1 %798, label %804, label %799

799:                                              ; preds = %796
  %800 = getelementptr inbounds %struct.wmKeyMap, ptr %797, i64 0, i32 7
  %801 = load i16, ptr %800, align 4, !tbaa !56
  %802 = and i16 %801, 12
  call void @WM_keymap_free(ptr noundef nonnull %797)
  call void @BLI_freelinkN(ptr noundef nonnull %772, ptr noundef nonnull %797) #12
  %803 = or disjoint i16 %802, 2
  br label %804

804:                                              ; preds = %799, %796
  %805 = phi i16 [ %803, %799 ], [ 2, %796 ]
  %806 = icmp eq ptr %706, null
  br i1 %806, label %965, label %807

807:                                              ; preds = %804
  %808 = getelementptr inbounds %struct.wmKeyMap, ptr %706, i64 0, i32 7
  %809 = load i16, ptr %808, align 4, !tbaa !56
  %810 = and i16 %809, 16
  %811 = icmp eq i16 %810, 0
  br i1 %811, label %812, label %965

812:                                              ; preds = %807
  %813 = call fastcc ptr @wm_keymap_copy(ptr noundef nonnull %706)
  %814 = getelementptr inbounds %struct.wmKeyMap, ptr %813, i64 0, i32 2
  %815 = load ptr, ptr %814, align 8, !tbaa !40
  %816 = icmp eq ptr %815, null
  br i1 %816, label %961, label %817

817:                                              ; preds = %812
  %818 = getelementptr inbounds %struct.wmKeyMap, ptr %659, i64 0, i32 2
  %819 = getelementptr inbounds %struct.wmKeyMap, ptr %813, i64 0, i32 8
  br label %820

820:                                              ; preds = %817, %956
  %821 = phi ptr [ %815, %817 ], [ %959, %956 ]
  %822 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 2
  %823 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 17
  %824 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 13
  %825 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 5
  %826 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 6
  %827 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 7
  %828 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 8
  %829 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 9
  %830 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 10
  %831 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 11
  %832 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 12
  %833 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 14
  br label %834

834:                                              ; preds = %905, %820
  %835 = phi ptr [ %818, %820 ], [ %836, %905 ]
  %836 = load ptr, ptr %835, align 8, !tbaa !40
  %837 = icmp eq ptr %836, null
  br i1 %837, label %908, label %838

838:                                              ; preds = %834
  %839 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 2
  %840 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %839, ptr noundef nonnull dereferenceable(1) %822) #13
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %861

842:                                              ; preds = %838
  %843 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 17
  %844 = load ptr, ptr %843, align 8, !tbaa !34
  %845 = load ptr, ptr %823, align 8, !tbaa !34
  %846 = call zeroext i8 @RNA_struct_equals(ptr noundef %844, ptr noundef %845, i32 noundef 2) #12
  %847 = icmp eq i8 %846, 0
  br i1 %847, label %861, label %848

848:                                              ; preds = %842
  %849 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 13
  %850 = load i16, ptr %849, align 8, !tbaa !58
  %851 = load i16, ptr %824, align 8, !tbaa !58
  %852 = xor i16 %851, %850
  %853 = and i16 %852, 1
  %854 = icmp eq i16 %853, 0
  br i1 %854, label %855, label %861

855:                                              ; preds = %848
  %856 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 5
  %857 = load i16, ptr %856, align 8, !tbaa !87
  %858 = load i16, ptr %825, align 8, !tbaa !87
  %859 = icmp eq i16 %857, %858
  %860 = zext i1 %859 to i32
  br label %861

861:                                              ; preds = %838, %842, %848, %855
  %862 = phi i32 [ %860, %855 ], [ 0, %838 ], [ 0, %842 ], [ 0, %848 ]
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %905, label %864

864:                                              ; preds = %861
  %865 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 6
  %866 = load i16, ptr %865, align 2, !tbaa !42
  %867 = load i16, ptr %826, align 2, !tbaa !42
  %868 = icmp eq i16 %866, %867
  br i1 %868, label %869, label %905

869:                                              ; preds = %864
  %870 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 7
  %871 = load i16, ptr %870, align 4, !tbaa !88
  %872 = load i16, ptr %827, align 4, !tbaa !88
  %873 = icmp eq i16 %871, %872
  br i1 %873, label %874, label %905

874:                                              ; preds = %869
  %875 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 8
  %876 = load i16, ptr %875, align 2, !tbaa !89
  %877 = load i16, ptr %828, align 2, !tbaa !89
  %878 = icmp eq i16 %876, %877
  br i1 %878, label %879, label %905

879:                                              ; preds = %874
  %880 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 9
  %881 = load i16, ptr %880, align 8, !tbaa !90
  %882 = load i16, ptr %829, align 8, !tbaa !90
  %883 = icmp eq i16 %881, %882
  br i1 %883, label %884, label %905

884:                                              ; preds = %879
  %885 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 10
  %886 = load i16, ptr %885, align 2, !tbaa !91
  %887 = load i16, ptr %830, align 2, !tbaa !91
  %888 = icmp eq i16 %886, %887
  br i1 %888, label %889, label %905

889:                                              ; preds = %884
  %890 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 11
  %891 = load i16, ptr %890, align 4, !tbaa !92
  %892 = load i16, ptr %831, align 4, !tbaa !92
  %893 = icmp eq i16 %891, %892
  br i1 %893, label %894, label %905

894:                                              ; preds = %889
  %895 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 12
  %896 = load i16, ptr %895, align 2, !tbaa !93
  %897 = load i16, ptr %832, align 2, !tbaa !93
  %898 = icmp eq i16 %896, %897
  br i1 %898, label %899, label %905

899:                                              ; preds = %894
  %900 = getelementptr inbounds %struct.wmKeyMapItem, ptr %836, i64 0, i32 14
  %901 = load i16, ptr %900, align 2, !tbaa !94
  %902 = load i16, ptr %833, align 2, !tbaa !94
  %903 = icmp eq i16 %901, %902
  %904 = zext i1 %903 to i32
  br label %905

905:                                              ; preds = %861, %864, %869, %874, %879, %884, %889, %894, %899
  %906 = phi i32 [ 0, %894 ], [ 0, %889 ], [ 0, %884 ], [ 0, %879 ], [ 0, %874 ], [ 0, %869 ], [ 0, %864 ], [ 0, %861 ], [ %904, %899 ]
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %834, label %908, !llvm.loop !95

908:                                              ; preds = %905, %834
  %909 = phi ptr [ %836, %905 ], [ null, %834 ]
  %910 = icmp eq ptr %909, null
  br i1 %910, label %911, label %946

911:                                              ; preds = %908
  %912 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 2
  %913 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 17
  %914 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 13
  %915 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 5
  br label %916

916:                                              ; preds = %911, %943
  %917 = phi ptr [ %918, %943 ], [ %818, %911 ]
  %918 = load ptr, ptr %917, align 8, !tbaa !40
  %919 = icmp eq ptr %918, null
  br i1 %919, label %946, label %920

920:                                              ; preds = %916
  %921 = getelementptr inbounds %struct.wmKeyMapItem, ptr %918, i64 0, i32 2
  %922 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %921, ptr noundef nonnull dereferenceable(1) %912) #13
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %924, label %943

924:                                              ; preds = %920
  %925 = getelementptr inbounds %struct.wmKeyMapItem, ptr %918, i64 0, i32 17
  %926 = load ptr, ptr %925, align 8, !tbaa !34
  %927 = load ptr, ptr %913, align 8, !tbaa !34
  %928 = call zeroext i8 @RNA_struct_equals(ptr noundef %926, ptr noundef %927, i32 noundef 2) #12
  %929 = icmp eq i8 %928, 0
  br i1 %929, label %943, label %930

930:                                              ; preds = %924
  %931 = getelementptr inbounds %struct.wmKeyMapItem, ptr %918, i64 0, i32 13
  %932 = load i16, ptr %931, align 8, !tbaa !58
  %933 = load i16, ptr %914, align 8, !tbaa !58
  %934 = xor i16 %933, %932
  %935 = and i16 %934, 1
  %936 = icmp eq i16 %935, 0
  br i1 %936, label %937, label %943

937:                                              ; preds = %930
  %938 = getelementptr inbounds %struct.wmKeyMapItem, ptr %918, i64 0, i32 5
  %939 = load i16, ptr %938, align 8, !tbaa !87
  %940 = load i16, ptr %915, align 8, !tbaa !87
  %941 = icmp eq i16 %939, %940
  %942 = zext i1 %941 to i32
  br label %943

943:                                              ; preds = %920, %924, %930, %937
  %944 = phi i32 [ %942, %937 ], [ 0, %920 ], [ 0, %924 ], [ 0, %930 ]
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %916, label %946, !llvm.loop !104

946:                                              ; preds = %943, %916, %908
  %947 = phi ptr [ %909, %908 ], [ %918, %943 ], [ null, %916 ]
  %948 = icmp eq ptr %947, null
  br i1 %948, label %952, label %949

949:                                              ; preds = %946
  %950 = getelementptr inbounds %struct.wmKeyMapItem, ptr %947, i64 0, i32 15
  %951 = load i16, ptr %950, align 4, !tbaa !84
  br label %956

952:                                              ; preds = %946
  %953 = load i16, ptr %819, align 2, !tbaa !83
  %954 = add i16 %953, 1
  store i16 %954, ptr %819, align 2, !tbaa !83
  %955 = sub i16 0, %953
  br label %956

956:                                              ; preds = %952, %949
  %957 = phi i16 [ %955, %952 ], [ %951, %949 ]
  %958 = getelementptr inbounds %struct.wmKeyMapItem, ptr %821, i64 0, i32 15
  store i16 %957, ptr %958, align 4, !tbaa !84
  %959 = load ptr, ptr %821, align 8, !tbaa !40
  %960 = icmp eq ptr %959, null
  br i1 %960, label %961, label %820, !llvm.loop !105

961:                                              ; preds = %956, %812
  %962 = getelementptr inbounds %struct.wmKeyMap, ptr %813, i64 0, i32 7
  %963 = load i16, ptr %962, align 4, !tbaa !56
  %964 = or i16 %963, 64
  store i16 %964, ptr %962, align 4, !tbaa !56
  br label %967

965:                                              ; preds = %807, %804
  %966 = call fastcc ptr @wm_keymap_copy(ptr noundef %659)
  br label %967

967:                                              ; preds = %965, %961
  %968 = phi ptr [ %966, %965 ], [ %813, %961 ]
  %969 = icmp eq ptr %686, null
  br i1 %969, label %1008, label %970

970:                                              ; preds = %967
  %971 = getelementptr inbounds %struct.wmKeyMap, ptr %686, i64 0, i32 2
  %972 = load ptr, ptr %971, align 8, !tbaa !40
  %973 = icmp eq ptr %972, null
  br i1 %973, label %1008, label %974

974:                                              ; preds = %970
  %975 = getelementptr inbounds %struct.wmKeyMap, ptr %968, i64 0, i32 8
  %976 = getelementptr inbounds %struct.wmKeyMap, ptr %968, i64 0, i32 7
  %977 = getelementptr inbounds %struct.wmKeyMap, ptr %968, i64 0, i32 2
  br label %978

978:                                              ; preds = %997, %974
  %979 = phi ptr [ %972, %974 ], [ %1006, %997 ]
  %980 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %981 = call ptr %980(ptr noundef nonnull %979) #12
  %982 = getelementptr inbounds %struct.wmKeyMapItem, ptr %981, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %981, i8 0, i64 16, i1 false)
  %983 = load i16, ptr %982, align 8, !tbaa !58
  %984 = and i16 %983, -9
  store i16 %984, ptr %982, align 8, !tbaa !58
  %985 = getelementptr inbounds %struct.wmKeyMapItem, ptr %981, i64 0, i32 3
  %986 = load ptr, ptr %985, align 8, !tbaa !41
  %987 = icmp eq ptr %986, null
  br i1 %987, label %997, label %988

988:                                              ; preds = %978
  %989 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %990 = call ptr %989(i64 noundef 24, ptr noundef nonnull @.str.107) #12
  %991 = getelementptr inbounds %struct.wmKeyMapItem, ptr %981, i64 0, i32 17
  store ptr %990, ptr %991, align 8, !tbaa !34
  %992 = getelementptr inbounds %struct.wmKeyMapItem, ptr %981, i64 0, i32 2
  call void @WM_operator_properties_create(ptr noundef %990, ptr noundef nonnull %992) #12
  %993 = load ptr, ptr %985, align 8, !tbaa !41
  %994 = call ptr @IDP_CopyProperty(ptr noundef %993) #12
  store ptr %994, ptr %985, align 8, !tbaa !41
  %995 = load ptr, ptr %991, align 8, !tbaa !34
  %996 = getelementptr inbounds %struct.PointerRNA, ptr %995, i64 0, i32 2
  store ptr %994, ptr %996, align 8, !tbaa !80
  br label %997

997:                                              ; preds = %978, %988
  %998 = load i16, ptr %975, align 2, !tbaa !83
  %999 = add i16 %998, 1
  store i16 %999, ptr %975, align 2, !tbaa !83
  %1000 = load i16, ptr %976, align 4, !tbaa !56
  %1001 = and i16 %1000, 2
  %1002 = icmp eq i16 %1001, 0
  %1003 = xor i16 %998, -1
  %1004 = select i1 %1002, i16 %999, i16 %1003
  %1005 = getelementptr inbounds %struct.wmKeyMapItem, ptr %981, i64 0, i32 15
  store i16 %1004, ptr %1005, align 4, !tbaa !84
  call void @BLI_addhead(ptr noundef nonnull %977, ptr noundef %981) #12
  %1006 = load ptr, ptr %979, align 8, !tbaa !40
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1008, label %978, !llvm.loop !85

1008:                                             ; preds = %997, %970, %967
  %1009 = getelementptr inbounds %struct.wmKeyMap, ptr %968, i64 0, i32 7
  %1010 = load i16, ptr %1009, align 4, !tbaa !56
  br i1 %806, label %1308, label %1011

1011:                                             ; preds = %1008
  %1012 = or i16 %805, %1010
  %1013 = or i16 %1012, 32
  store i16 %1013, ptr %1009, align 4, !tbaa !56
  %1014 = getelementptr inbounds %struct.wmKeyMap, ptr %706, i64 0, i32 7
  %1015 = load i16, ptr %1014, align 4, !tbaa !56
  %1016 = and i16 %1015, 16
  %1017 = icmp eq i16 %1016, 0
  br i1 %1017, label %1310, label %1018

1018:                                             ; preds = %1011
  %1019 = getelementptr inbounds %struct.wmKeyMap, ptr %706, i64 0, i32 3
  %1020 = load ptr, ptr %1019, align 8, !tbaa !40
  %1021 = icmp eq ptr %1020, null
  br i1 %1021, label %1310, label %1022

1022:                                             ; preds = %1018
  %1023 = getelementptr inbounds %struct.wmKeyMap, ptr %968, i64 0, i32 2
  %1024 = getelementptr inbounds %struct.wmKeyMap, ptr %968, i64 0, i32 2
  %1025 = getelementptr inbounds %struct.wmKeyMap, ptr %968, i64 0, i32 8
  %1026 = getelementptr inbounds %struct.wmKeyMap, ptr %968, i64 0, i32 2
  br label %1027

1027:                                             ; preds = %1022, %1305
  %1028 = phi ptr [ %1020, %1022 ], [ %1306, %1305 ]
  %1029 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %1028, i64 0, i32 2
  %1030 = load ptr, ptr %1029, align 8, !tbaa !59
  %1031 = icmp eq ptr %1030, null
  br i1 %1031, label %1158, label %1032

1032:                                             ; preds = %1027
  %1033 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 2
  %1034 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 17
  %1035 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 13
  %1036 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 5
  %1037 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 6
  %1038 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 7
  %1039 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 8
  %1040 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 9
  %1041 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 10
  %1042 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 11
  %1043 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 12
  %1044 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1030, i64 0, i32 14
  br label %1045

1045:                                             ; preds = %1116, %1032
  %1046 = phi ptr [ %1023, %1032 ], [ %1047, %1116 ]
  %1047 = load ptr, ptr %1046, align 8, !tbaa !40
  %1048 = icmp eq ptr %1047, null
  br i1 %1048, label %1119, label %1049

1049:                                             ; preds = %1045
  %1050 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 2
  %1051 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1050, ptr noundef nonnull dereferenceable(1) %1033) #13
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1053, label %1072

1053:                                             ; preds = %1049
  %1054 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 17
  %1055 = load ptr, ptr %1054, align 8, !tbaa !34
  %1056 = load ptr, ptr %1034, align 8, !tbaa !34
  %1057 = call zeroext i8 @RNA_struct_equals(ptr noundef %1055, ptr noundef %1056, i32 noundef 2) #12
  %1058 = icmp eq i8 %1057, 0
  br i1 %1058, label %1072, label %1059

1059:                                             ; preds = %1053
  %1060 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 13
  %1061 = load i16, ptr %1060, align 8, !tbaa !58
  %1062 = load i16, ptr %1035, align 8, !tbaa !58
  %1063 = xor i16 %1062, %1061
  %1064 = and i16 %1063, 1
  %1065 = icmp eq i16 %1064, 0
  br i1 %1065, label %1066, label %1072

1066:                                             ; preds = %1059
  %1067 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 5
  %1068 = load i16, ptr %1067, align 8, !tbaa !87
  %1069 = load i16, ptr %1036, align 8, !tbaa !87
  %1070 = icmp eq i16 %1068, %1069
  %1071 = zext i1 %1070 to i32
  br label %1072

1072:                                             ; preds = %1049, %1053, %1059, %1066
  %1073 = phi i32 [ %1071, %1066 ], [ 0, %1049 ], [ 0, %1053 ], [ 0, %1059 ]
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1116, label %1075

1075:                                             ; preds = %1072
  %1076 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 6
  %1077 = load i16, ptr %1076, align 2, !tbaa !42
  %1078 = load i16, ptr %1037, align 2, !tbaa !42
  %1079 = icmp eq i16 %1077, %1078
  br i1 %1079, label %1080, label %1116

1080:                                             ; preds = %1075
  %1081 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 7
  %1082 = load i16, ptr %1081, align 4, !tbaa !88
  %1083 = load i16, ptr %1038, align 4, !tbaa !88
  %1084 = icmp eq i16 %1082, %1083
  br i1 %1084, label %1085, label %1116

1085:                                             ; preds = %1080
  %1086 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 8
  %1087 = load i16, ptr %1086, align 2, !tbaa !89
  %1088 = load i16, ptr %1039, align 2, !tbaa !89
  %1089 = icmp eq i16 %1087, %1088
  br i1 %1089, label %1090, label %1116

1090:                                             ; preds = %1085
  %1091 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 9
  %1092 = load i16, ptr %1091, align 8, !tbaa !90
  %1093 = load i16, ptr %1040, align 8, !tbaa !90
  %1094 = icmp eq i16 %1092, %1093
  br i1 %1094, label %1095, label %1116

1095:                                             ; preds = %1090
  %1096 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 10
  %1097 = load i16, ptr %1096, align 2, !tbaa !91
  %1098 = load i16, ptr %1041, align 2, !tbaa !91
  %1099 = icmp eq i16 %1097, %1098
  br i1 %1099, label %1100, label %1116

1100:                                             ; preds = %1095
  %1101 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 11
  %1102 = load i16, ptr %1101, align 4, !tbaa !92
  %1103 = load i16, ptr %1042, align 4, !tbaa !92
  %1104 = icmp eq i16 %1102, %1103
  br i1 %1104, label %1105, label %1116

1105:                                             ; preds = %1100
  %1106 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 12
  %1107 = load i16, ptr %1106, align 2, !tbaa !93
  %1108 = load i16, ptr %1043, align 2, !tbaa !93
  %1109 = icmp eq i16 %1107, %1108
  br i1 %1109, label %1110, label %1116

1110:                                             ; preds = %1105
  %1111 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1047, i64 0, i32 14
  %1112 = load i16, ptr %1111, align 2, !tbaa !94
  %1113 = load i16, ptr %1044, align 2, !tbaa !94
  %1114 = icmp eq i16 %1112, %1113
  %1115 = zext i1 %1114 to i32
  br label %1116

1116:                                             ; preds = %1072, %1075, %1080, %1085, %1090, %1095, %1100, %1105, %1110
  %1117 = phi i32 [ 0, %1105 ], [ 0, %1100 ], [ 0, %1095 ], [ 0, %1090 ], [ 0, %1085 ], [ 0, %1080 ], [ 0, %1075 ], [ 0, %1072 ], [ %1115, %1110 ]
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1045, label %1119, !llvm.loop !95

1119:                                             ; preds = %1116, %1045
  %1120 = phi ptr [ %1047, %1116 ], [ null, %1045 ]
  %1121 = icmp eq ptr %1120, null
  br i1 %1121, label %1122, label %1158

1122:                                             ; preds = %1119
  %1123 = load ptr, ptr %1029, align 8, !tbaa !59
  %1124 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1123, i64 0, i32 2
  %1125 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1123, i64 0, i32 17
  %1126 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1123, i64 0, i32 13
  %1127 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1123, i64 0, i32 5
  br label %1128

1128:                                             ; preds = %1155, %1122
  %1129 = phi ptr [ %1023, %1122 ], [ %1130, %1155 ]
  %1130 = load ptr, ptr %1129, align 8, !tbaa !40
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %1158, label %1132

1132:                                             ; preds = %1128
  %1133 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1130, i64 0, i32 2
  %1134 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1133, ptr noundef nonnull dereferenceable(1) %1124) #13
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1136, label %1155

1136:                                             ; preds = %1132
  %1137 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1130, i64 0, i32 17
  %1138 = load ptr, ptr %1137, align 8, !tbaa !34
  %1139 = load ptr, ptr %1125, align 8, !tbaa !34
  %1140 = call zeroext i8 @RNA_struct_equals(ptr noundef %1138, ptr noundef %1139, i32 noundef 2) #12
  %1141 = icmp eq i8 %1140, 0
  br i1 %1141, label %1155, label %1142

1142:                                             ; preds = %1136
  %1143 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1130, i64 0, i32 13
  %1144 = load i16, ptr %1143, align 8, !tbaa !58
  %1145 = load i16, ptr %1126, align 8, !tbaa !58
  %1146 = xor i16 %1145, %1144
  %1147 = and i16 %1146, 1
  %1148 = icmp eq i16 %1147, 0
  br i1 %1148, label %1149, label %1155

1149:                                             ; preds = %1142
  %1150 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1130, i64 0, i32 5
  %1151 = load i16, ptr %1150, align 8, !tbaa !87
  %1152 = load i16, ptr %1127, align 8, !tbaa !87
  %1153 = icmp eq i16 %1151, %1152
  %1154 = zext i1 %1153 to i32
  br label %1155

1155:                                             ; preds = %1132, %1136, %1142, %1149
  %1156 = phi i32 [ %1154, %1149 ], [ 0, %1132 ], [ 0, %1136 ], [ 0, %1142 ]
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1128, label %1158, !llvm.loop !104

1158:                                             ; preds = %1155, %1128, %1119, %1027
  %1159 = phi ptr [ %1120, %1119 ], [ null, %1027 ], [ %1130, %1155 ], [ null, %1128 ]
  %1160 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %1028, i64 0, i32 3
  %1161 = load ptr, ptr %1160, align 8, !tbaa !61
  %1162 = icmp eq ptr %1161, null
  br i1 %1162, label %1295, label %1163

1163:                                             ; preds = %1158
  %1164 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 2
  %1165 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 17
  %1166 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 13
  %1167 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 5
  %1168 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 6
  %1169 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 7
  %1170 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 8
  %1171 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 9
  %1172 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 10
  %1173 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 11
  %1174 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 12
  %1175 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1161, i64 0, i32 14
  br label %1176

1176:                                             ; preds = %1247, %1163
  %1177 = phi ptr [ %1024, %1163 ], [ %1178, %1247 ]
  %1178 = load ptr, ptr %1177, align 8, !tbaa !40
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1250, label %1180

1180:                                             ; preds = %1176
  %1181 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 2
  %1182 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1181, ptr noundef nonnull dereferenceable(1) %1164) #13
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1184, label %1203

1184:                                             ; preds = %1180
  %1185 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 17
  %1186 = load ptr, ptr %1185, align 8, !tbaa !34
  %1187 = load ptr, ptr %1165, align 8, !tbaa !34
  %1188 = call zeroext i8 @RNA_struct_equals(ptr noundef %1186, ptr noundef %1187, i32 noundef 2) #12
  %1189 = icmp eq i8 %1188, 0
  br i1 %1189, label %1203, label %1190

1190:                                             ; preds = %1184
  %1191 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 13
  %1192 = load i16, ptr %1191, align 8, !tbaa !58
  %1193 = load i16, ptr %1166, align 8, !tbaa !58
  %1194 = xor i16 %1193, %1192
  %1195 = and i16 %1194, 1
  %1196 = icmp eq i16 %1195, 0
  br i1 %1196, label %1197, label %1203

1197:                                             ; preds = %1190
  %1198 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 5
  %1199 = load i16, ptr %1198, align 8, !tbaa !87
  %1200 = load i16, ptr %1167, align 8, !tbaa !87
  %1201 = icmp eq i16 %1199, %1200
  %1202 = zext i1 %1201 to i32
  br label %1203

1203:                                             ; preds = %1180, %1184, %1190, %1197
  %1204 = phi i32 [ %1202, %1197 ], [ 0, %1180 ], [ 0, %1184 ], [ 0, %1190 ]
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1247, label %1206

1206:                                             ; preds = %1203
  %1207 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 6
  %1208 = load i16, ptr %1207, align 2, !tbaa !42
  %1209 = load i16, ptr %1168, align 2, !tbaa !42
  %1210 = icmp eq i16 %1208, %1209
  br i1 %1210, label %1211, label %1247

1211:                                             ; preds = %1206
  %1212 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 7
  %1213 = load i16, ptr %1212, align 4, !tbaa !88
  %1214 = load i16, ptr %1169, align 4, !tbaa !88
  %1215 = icmp eq i16 %1213, %1214
  br i1 %1215, label %1216, label %1247

1216:                                             ; preds = %1211
  %1217 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 8
  %1218 = load i16, ptr %1217, align 2, !tbaa !89
  %1219 = load i16, ptr %1170, align 2, !tbaa !89
  %1220 = icmp eq i16 %1218, %1219
  br i1 %1220, label %1221, label %1247

1221:                                             ; preds = %1216
  %1222 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 9
  %1223 = load i16, ptr %1222, align 8, !tbaa !90
  %1224 = load i16, ptr %1171, align 8, !tbaa !90
  %1225 = icmp eq i16 %1223, %1224
  br i1 %1225, label %1226, label %1247

1226:                                             ; preds = %1221
  %1227 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 10
  %1228 = load i16, ptr %1227, align 2, !tbaa !91
  %1229 = load i16, ptr %1172, align 2, !tbaa !91
  %1230 = icmp eq i16 %1228, %1229
  br i1 %1230, label %1231, label %1247

1231:                                             ; preds = %1226
  %1232 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 11
  %1233 = load i16, ptr %1232, align 4, !tbaa !92
  %1234 = load i16, ptr %1173, align 4, !tbaa !92
  %1235 = icmp eq i16 %1233, %1234
  br i1 %1235, label %1236, label %1247

1236:                                             ; preds = %1231
  %1237 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 12
  %1238 = load i16, ptr %1237, align 2, !tbaa !93
  %1239 = load i16, ptr %1174, align 2, !tbaa !93
  %1240 = icmp eq i16 %1238, %1239
  br i1 %1240, label %1241, label %1247

1241:                                             ; preds = %1236
  %1242 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1178, i64 0, i32 14
  %1243 = load i16, ptr %1242, align 2, !tbaa !94
  %1244 = load i16, ptr %1175, align 2, !tbaa !94
  %1245 = icmp eq i16 %1243, %1244
  %1246 = zext i1 %1245 to i32
  br label %1247

1247:                                             ; preds = %1203, %1206, %1211, %1216, %1221, %1226, %1231, %1236, %1241
  %1248 = phi i32 [ 0, %1236 ], [ 0, %1231 ], [ 0, %1226 ], [ 0, %1221 ], [ 0, %1216 ], [ 0, %1211 ], [ 0, %1206 ], [ 0, %1203 ], [ %1246, %1241 ]
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1176, label %1295, !llvm.loop !95

1250:                                             ; preds = %1176
  %1251 = load ptr, ptr %1029, align 8, !tbaa !59
  %1252 = icmp eq ptr %1251, null
  %1253 = icmp ne ptr %1159, null
  %1254 = or i1 %1253, %1252
  br i1 %1254, label %1255, label %1295

1255:                                             ; preds = %1250
  %1256 = load ptr, ptr %1160, align 8, !tbaa !61
  %1257 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %1258 = call ptr %1257(ptr noundef %1256) #12
  %1259 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1258, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1258, i8 0, i64 16, i1 false)
  %1260 = load i16, ptr %1259, align 8, !tbaa !58
  %1261 = and i16 %1260, -9
  store i16 %1261, ptr %1259, align 8, !tbaa !58
  %1262 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1258, i64 0, i32 3
  %1263 = load ptr, ptr %1262, align 8, !tbaa !41
  %1264 = icmp eq ptr %1263, null
  br i1 %1264, label %1274, label %1265

1265:                                             ; preds = %1255
  %1266 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %1267 = call ptr %1266(i64 noundef 24, ptr noundef nonnull @.str.107) #12
  %1268 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1258, i64 0, i32 17
  store ptr %1267, ptr %1268, align 8, !tbaa !34
  %1269 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1258, i64 0, i32 2
  call void @WM_operator_properties_create(ptr noundef %1267, ptr noundef nonnull %1269) #12
  %1270 = load ptr, ptr %1262, align 8, !tbaa !41
  %1271 = call ptr @IDP_CopyProperty(ptr noundef %1270) #12
  store ptr %1271, ptr %1262, align 8, !tbaa !41
  %1272 = load ptr, ptr %1268, align 8, !tbaa !34
  %1273 = getelementptr inbounds %struct.PointerRNA, ptr %1272, i64 0, i32 2
  store ptr %1271, ptr %1273, align 8, !tbaa !80
  br label %1274

1274:                                             ; preds = %1255, %1265
  %1275 = load i16, ptr %1259, align 8, !tbaa !58
  %1276 = or i16 %1275, 4
  store i16 %1276, ptr %1259, align 8, !tbaa !58
  br i1 %1253, label %1277, label %1286

1277:                                             ; preds = %1274
  %1278 = and i16 %1276, -3
  store i16 %1278, ptr %1259, align 8, !tbaa !58
  %1279 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1159, i64 0, i32 13
  %1280 = load i16, ptr %1279, align 8, !tbaa !58
  %1281 = and i16 %1280, 2
  %1282 = or disjoint i16 %1281, %1278
  store i16 %1282, ptr %1259, align 8, !tbaa !58
  %1283 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1159, i64 0, i32 15
  %1284 = load i16, ptr %1283, align 4, !tbaa !84
  %1285 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1258, i64 0, i32 15
  store i16 %1284, ptr %1285, align 4, !tbaa !84
  call void @BLI_insertlinkbefore(ptr noundef nonnull %1024, ptr noundef nonnull %1159, ptr noundef %1258) #12
  br label %1295

1286:                                             ; preds = %1274
  %1287 = load i16, ptr %1025, align 2, !tbaa !83
  %1288 = add i16 %1287, 1
  store i16 %1288, ptr %1025, align 2, !tbaa !83
  %1289 = load i16, ptr %1009, align 4, !tbaa !56
  %1290 = and i16 %1289, 2
  %1291 = icmp eq i16 %1290, 0
  %1292 = xor i16 %1287, -1
  %1293 = select i1 %1291, i16 %1288, i16 %1292
  %1294 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1258, i64 0, i32 15
  store i16 %1293, ptr %1294, align 4, !tbaa !84
  call void @BLI_addtail(ptr noundef nonnull %1024, ptr noundef %1258) #12
  br label %1295

1295:                                             ; preds = %1247, %1286, %1277, %1250, %1158
  %1296 = icmp eq ptr %1159, null
  br i1 %1296, label %1305, label %1297

1297:                                             ; preds = %1295
  %1298 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1159, i64 0, i32 17
  %1299 = load ptr, ptr %1298, align 8, !tbaa !34
  %1300 = icmp eq ptr %1299, null
  br i1 %1300, label %1304, label %1301

1301:                                             ; preds = %1297
  call void @WM_operator_properties_free(ptr noundef nonnull %1299) #12
  %1302 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %1303 = load ptr, ptr %1298, align 8, !tbaa !34
  call void %1302(ptr noundef %1303) #12
  br label %1304

1304:                                             ; preds = %1301, %1297
  call void @BLI_freelinkN(ptr noundef nonnull %1026, ptr noundef nonnull %1159) #12
  br label %1305

1305:                                             ; preds = %1304, %1295
  %1306 = load ptr, ptr %1028, align 8, !tbaa !40
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1310, label %1027, !llvm.loop !106

1308:                                             ; preds = %1008
  %1309 = or i16 %1010, %805
  store i16 %1309, ptr %1009, align 4, !tbaa !56
  br label %1310

1310:                                             ; preds = %1305, %1018, %1011, %1308
  call void @BLI_addtail(ptr noundef nonnull %772, ptr noundef %968) #12
  %1311 = icmp eq ptr %968, null
  br i1 %1311, label %1319, label %1312

1312:                                             ; preds = %1310
  %1313 = getelementptr inbounds %struct.wmKeyMap, ptr %657, i64 0, i32 10
  %1314 = load ptr, ptr %1313, align 8, !tbaa !100
  %1315 = getelementptr inbounds %struct.wmKeyMap, ptr %968, i64 0, i32 10
  store ptr %1314, ptr %1315, align 8, !tbaa !100
  %1316 = getelementptr inbounds %struct.wmKeyMap, ptr %657, i64 0, i32 9
  %1317 = load ptr, ptr %1316, align 8, !tbaa !101
  %1318 = getelementptr inbounds %struct.wmKeyMap, ptr %968, i64 0, i32 9
  store ptr %1317, ptr %1318, align 8, !tbaa !101
  br label %1319

1319:                                             ; preds = %1312, %1310
  %1320 = or i1 %658, %806
  br i1 %1320, label %1326, label %1321

1321:                                             ; preds = %1319
  %1322 = getelementptr inbounds %struct.wmKeyMap, ptr %706, i64 0, i32 7
  %1323 = load i16, ptr %1322, align 4, !tbaa !56
  %1324 = and i16 %1323, 16
  %1325 = icmp eq i16 %1324, 0
  br label %1326

1326:                                             ; preds = %1319, %1321
  %1327 = phi i1 [ %658, %1319 ], [ %1325, %1321 ]
  %1328 = load ptr, ptr %657, align 8, !tbaa !40
  %1329 = icmp eq ptr %1328, null
  br i1 %1329, label %1330, label %656, !llvm.loop !107

1330:                                             ; preds = %1326
  %1331 = xor i1 %1327, true
  br label %1332

1332:                                             ; preds = %1330, %648
  %1333 = phi i1 [ true, %648 ], [ %1331, %1330 ]
  %1334 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %1335 = and i8 %1334, 126
  store i8 %1335, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  br i1 %1333, label %1338, label %1336

1336:                                             ; preds = %1332
  %1337 = or disjoint i8 %1335, 1
  store i8 %1337, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  call void @WM_keyconfig_update(ptr noundef %0)
  br label %1338

1338:                                             ; preds = %1332, %1336, %113, %6, %1
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @WM_keymap_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmKeyConfig, ptr %0, i64 0, i32 4
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #12
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  tail call void @WM_keymap_free(ptr noundef %1)
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #12
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %7(ptr noundef %1) #12
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %9
}

; Function Attrs: nounwind uwtable
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
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 64) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %70, label %8, !llvm.loop !108

16:                                               ; preds = %8
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %18 = tail call ptr %17(i64 noundef 184, ptr noundef nonnull @.str.1) #12
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 2
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef %1, i64 noundef 64) #12
  %21 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !83
  %23 = add i16 %22, 1
  store i16 %23, ptr %21, align 2, !tbaa !83
  %24 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %25 = load i16, ptr %24, align 4, !tbaa !56
  %26 = and i16 %25, 2
  %27 = icmp eq i16 %26, 0
  %28 = xor i16 %22, -1
  %29 = select i1 %27, i16 %23, i16 %28
  %30 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 15
  store i16 %29, ptr %30, align 4, !tbaa !84
  %31 = trunc i32 %2 to i16
  %32 = trunc i32 %3 to i16
  %33 = trunc i32 %5 to i16
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 6
  store i16 %31, ptr %34, align 2, !tbaa !42
  %35 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 7
  store i16 %32, ptr %35, align 4, !tbaa !88
  %36 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 12
  store i16 %33, ptr %36, align 2, !tbaa !93
  %37 = icmp eq i32 %4, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %16
  %39 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 8
  store i64 -1, ptr %39, align 2
  br label %66

40:                                               ; preds = %16
  %41 = and i32 %4, 1
  %42 = icmp eq i32 %41, 0
  %43 = trunc i32 %4 to i16
  %44 = lshr i16 %43, 3
  %45 = and i16 %44, 2
  %46 = select i1 %42, i16 %45, i16 1
  %47 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 8
  store i16 %46, ptr %47, align 2, !tbaa !89
  %48 = and i32 %4, 2
  %49 = icmp eq i32 %48, 0
  %50 = lshr i16 %43, 4
  %51 = and i16 %50, 2
  %52 = select i1 %49, i16 %51, i16 1
  %53 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 9
  store i16 %52, ptr %53, align 8, !tbaa !90
  %54 = and i32 %4, 4
  %55 = icmp eq i32 %54, 0
  %56 = lshr i16 %43, 5
  %57 = and i16 %56, 2
  %58 = select i1 %55, i16 %57, i16 1
  %59 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 10
  store i16 %58, ptr %59, align 2, !tbaa !91
  %60 = and i32 %4, 8
  %61 = icmp eq i32 %60, 0
  %62 = lshr i16 %43, 6
  %63 = and i16 %62, 2
  %64 = select i1 %61, i16 %63, i16 1
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 11
  store i16 %64, ptr %65, align 4, !tbaa !92
  br label %66

66:                                               ; preds = %38, %40
  %67 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 17
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 3
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull %19) #12
  %69 = load ptr, ptr %67, align 8, !tbaa !34
  tail call void @WM_operator_properties_sanitize(ptr noundef %69, i8 noundef zeroext 1) #12
  br label %70

70:                                               ; preds = %12, %66
  %71 = phi ptr [ %18, %66 ], [ %10, %12 ]
  ret ptr %71
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %8 = tail call ptr %7(i64 noundef 184, ptr noundef nonnull @.str.1) #12
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #12
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 2
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %1, i64 noundef 64) #12
  %12 = trunc i32 %2 to i16
  %13 = trunc i32 %3 to i16
  %14 = trunc i32 %5 to i16
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 6
  store i16 %12, ptr %15, align 2, !tbaa !42
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 7
  store i16 %13, ptr %16, align 4, !tbaa !88
  %17 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 12
  store i16 %14, ptr %17, align 2, !tbaa !93
  %18 = icmp eq i32 %4, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 8
  store i64 -1, ptr %20, align 2
  br label %47

21:                                               ; preds = %6
  %22 = and i32 %4, 1
  %23 = icmp eq i32 %22, 0
  %24 = trunc i32 %4 to i16
  %25 = lshr i16 %24, 3
  %26 = and i16 %25, 2
  %27 = select i1 %23, i16 %26, i16 1
  %28 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 8
  store i16 %27, ptr %28, align 2, !tbaa !89
  %29 = and i32 %4, 2
  %30 = icmp eq i32 %29, 0
  %31 = lshr i16 %24, 4
  %32 = and i16 %31, 2
  %33 = select i1 %30, i16 %32, i16 1
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 9
  store i16 %33, ptr %34, align 8, !tbaa !90
  %35 = and i32 %4, 4
  %36 = icmp eq i32 %35, 0
  %37 = lshr i16 %24, 5
  %38 = and i16 %37, 2
  %39 = select i1 %36, i16 %38, i16 1
  %40 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 10
  store i16 %39, ptr %40, align 2, !tbaa !91
  %41 = and i32 %4, 8
  %42 = icmp eq i32 %41, 0
  %43 = lshr i16 %24, 6
  %44 = and i16 %43, 2
  %45 = select i1 %42, i16 %44, i16 1
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 11
  store i16 %45, ptr %46, align 4, !tbaa !92
  br label %47

47:                                               ; preds = %19, %21
  %48 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 17
  %49 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 3
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %48, ptr noundef nonnull %49, ptr noundef nonnull %10) #12
  %50 = load ptr, ptr %48, align 8, !tbaa !34
  tail call void @WM_operator_properties_sanitize(ptr noundef %50, i8 noundef zeroext 1) #12
  %51 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 8
  %52 = load i16, ptr %51, align 2, !tbaa !83
  %53 = add i16 %52, 1
  store i16 %53, ptr %51, align 2, !tbaa !83
  %54 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %55 = load i16, ptr %54, align 4, !tbaa !56
  %56 = and i16 %55, 2
  %57 = icmp eq i16 %56, 0
  %58 = xor i16 %52, -1
  %59 = select i1 %57, i16 %53, i16 %58
  %60 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 15
  store i16 %59, ptr %60, align 4, !tbaa !84
  %61 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %62 = or i8 %61, 1
  store i8 %62, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %63 = icmp eq ptr %0, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %47
  %65 = or i16 %55, 64
  store i16 %65, ptr %54, align 4, !tbaa !56
  br label %66

66:                                               ; preds = %64, %47
  %67 = icmp eq ptr %8, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 13
  %70 = load i16, ptr %69, align 8, !tbaa !58
  %71 = or i16 %70, 8
  store i16 %71, ptr %69, align 8, !tbaa !58
  br label %72

72:                                               ; preds = %66, %68
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @WM_keymap_add_menu(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @RNA_string_set(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %1) #12
  ret ptr %7
}

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @WM_keymap_add_menu_pie(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @RNA_string_set(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %1) #12
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @WM_keymap_remove_item(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #12
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  tail call void @WM_operator_properties_free(ptr noundef nonnull %8) #12
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %12 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void %11(ptr noundef %12) #12
  br label %13

13:                                               ; preds = %10, %6
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %1) #12
  %14 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %15 = or i8 %14, 1
  store i8 %15, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %16 = icmp eq ptr %0, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %19 = load i16, ptr %18, align 4, !tbaa !56
  %20 = or i16 %19, 64
  store i16 %20, ptr %18, align 4, !tbaa !56
  br label %21

21:                                               ; preds = %17, %13, %2
  %22 = phi i8 [ 0, %2 ], [ 1, %13 ], [ 1, %17 ]
  ret i8 %22
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_keymap_list_find(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = load ptr, ptr %0, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %4, %22
  %8 = phi ptr [ %23, %22 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %8, i64 0, i32 5
  %10 = load i16, ptr %9, align 8, !tbaa !77
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.wmKeyMap, ptr %8, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !78
  %16 = sext i16 %15 to i32
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.wmKeyMap, ptr %8, i64 0, i32 4
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %19, i64 noundef 64) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %7, %13, %18
  %23 = load ptr, ptr %8, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !79

25:                                               ; preds = %18, %22, %4
  %26 = phi ptr [ null, %4 ], [ %8, %18 ], [ null, %22 ]
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_keymap_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmKeyConfig, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4, %23
  %9 = phi ptr [ %24, %23 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.wmKeyMap, ptr %9, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !77
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.wmKeyMap, ptr %9, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !78
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.wmKeyMap, ptr %9, i64 0, i32 4
  %21 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %20, i64 noundef 64) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %14, %8
  %24 = load ptr, ptr %9, align 8, !tbaa !40
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %8, !llvm.loop !79

26:                                               ; preds = %19, %23, %4
  %27 = phi ptr [ null, %4 ], [ %9, %19 ], [ null, %23 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %31 = tail call ptr %30(i64 noundef 136, ptr noundef nonnull @.str.105) #12
  %32 = getelementptr inbounds %struct.wmKeyMap, ptr %31, i64 0, i32 4
  %33 = tail call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef %1, i64 noundef 64) #12
  %34 = trunc i32 %2 to i16
  %35 = getelementptr inbounds %struct.wmKeyMap, ptr %31, i64 0, i32 5
  store i16 %34, ptr %35, align 8, !tbaa !77
  %36 = trunc i32 %3 to i16
  %37 = getelementptr inbounds %struct.wmKeyMap, ptr %31, i64 0, i32 6
  store i16 %36, ptr %37, align 2, !tbaa !78
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %31) #12
  %38 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %39 = or i8 %38, 1
  store i8 %39, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %40 = icmp eq ptr %31, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.wmKeyMap, ptr %31, i64 0, i32 7
  %43 = load i16, ptr %42, align 4, !tbaa !56
  %44 = or i16 %43, 64
  store i16 %44, ptr %42, align 4, !tbaa !56
  br label %45

45:                                               ; preds = %41, %29, %26
  %46 = phi ptr [ %27, %26 ], [ %31, %29 ], [ %31, %41 ]
  ret ptr %46
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_keymap_find_all(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.wmKeyConfig, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %4, %26
  %12 = phi ptr [ %27, %26 ], [ %9, %4 ]
  %13 = getelementptr inbounds %struct.wmKeyMap, ptr %12, i64 0, i32 5
  %14 = load i16, ptr %13, align 8, !tbaa !77
  %15 = sext i16 %14 to i32
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.wmKeyMap, ptr %12, i64 0, i32 6
  %19 = load i16, ptr %18, align 2, !tbaa !78
  %20 = sext i16 %19 to i32
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.wmKeyMap, ptr %12, i64 0, i32 4
  %24 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %23, i64 noundef 64) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %17, %11
  %27 = load ptr, ptr %12, align 8, !tbaa !40
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %11, !llvm.loop !79

29:                                               ; preds = %22, %26, %4
  %30 = phi ptr [ null, %4 ], [ %12, %22 ], [ null, %26 ]
  ret ptr %30
}

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !56
  %7 = or i16 %6, 1
  store i16 %7, ptr %5, align 4, !tbaa !56
  %8 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 10
  store ptr %2, ptr %8, align 8, !tbaa !100
  %9 = icmp eq ptr %2, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %3
  %11 = load ptr, ptr @G, align 8, !tbaa !109
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 40
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = getelementptr inbounds %struct.wmWindowManager, ptr %13, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.wmKeyConfig, ptr %15, i64 0, i32 4
  %19 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 4
  %20 = load ptr, ptr %18, align 8, !tbaa !40
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %17, %35
  %23 = phi ptr [ %36, %35 ], [ %20, %17 ]
  %24 = getelementptr inbounds %struct.wmKeyMap, ptr %23, i64 0, i32 5
  %25 = load i16, ptr %24, align 8, !tbaa !77
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.wmKeyMap, ptr %23, i64 0, i32 6
  %29 = load i16, ptr %28, align 2, !tbaa !78
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.wmKeyMap, ptr %23, i64 0, i32 4
  %33 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %32, i64 noundef 64) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %27, %22
  %36 = load ptr, ptr %23, align 8, !tbaa !40
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %22, !llvm.loop !79

38:                                               ; preds = %31, %35, %17
  %39 = phi ptr [ null, %17 ], [ %23, %31 ], [ null, %35 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.wmKeyMap, ptr %39, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !100
  store ptr %43, ptr %8, align 8, !tbaa !100
  %44 = getelementptr inbounds %struct.wmKeyMap, ptr %39, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !101
  %46 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 9
  store ptr %45, ptr %46, align 8, !tbaa !101
  br label %47

47:                                               ; preds = %10, %41, %38, %3
  ret ptr %4
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_modalkeymap_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.wmKeyConfig, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %16
  %7 = phi ptr [ %17, %16 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.wmKeyMap, ptr %7, i64 0, i32 7
  %9 = load i16, ptr %8, align 4, !tbaa !56
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.wmKeyMap, ptr %7, i64 0, i32 4
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13, i64 noundef 64) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %6, %12
  %17 = load ptr, ptr %7, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !113

19:                                               ; preds = %16, %12, %2
  %20 = phi ptr [ %4, %2 ], [ %17, %16 ], [ %7, %12 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @WM_modalkeymap_add_item(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %8 = tail call ptr %7(i64 noundef 184, ptr noundef nonnull @.str.1) #12
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #12
  %10 = trunc i32 %5 to i16
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 5
  store i16 %10, ptr %11, align 8, !tbaa !87
  %12 = trunc i32 %1 to i16
  %13 = trunc i32 %2 to i16
  %14 = trunc i32 %4 to i16
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 6
  store i16 %12, ptr %15, align 2, !tbaa !42
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 7
  store i16 %13, ptr %16, align 4, !tbaa !88
  %17 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 12
  store i16 %14, ptr %17, align 2, !tbaa !93
  %18 = icmp eq i32 %3, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 8
  store i64 -1, ptr %20, align 2
  br label %47

21:                                               ; preds = %6
  %22 = and i32 %3, 1
  %23 = icmp eq i32 %22, 0
  %24 = trunc i32 %3 to i16
  %25 = lshr i16 %24, 3
  %26 = and i16 %25, 2
  %27 = select i1 %23, i16 %26, i16 1
  %28 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 8
  store i16 %27, ptr %28, align 2, !tbaa !89
  %29 = and i32 %3, 2
  %30 = icmp eq i32 %29, 0
  %31 = lshr i16 %24, 4
  %32 = and i16 %31, 2
  %33 = select i1 %30, i16 %32, i16 1
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 9
  store i16 %33, ptr %34, align 8, !tbaa !90
  %35 = and i32 %3, 4
  %36 = icmp eq i32 %35, 0
  %37 = lshr i16 %24, 5
  %38 = and i16 %37, 2
  %39 = select i1 %36, i16 %38, i16 1
  %40 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 10
  store i16 %39, ptr %40, align 2, !tbaa !91
  %41 = and i32 %3, 8
  %42 = icmp eq i32 %41, 0
  %43 = lshr i16 %24, 6
  %44 = and i16 %43, 2
  %45 = select i1 %42, i16 %44, i16 1
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 11
  store i16 %45, ptr %46, align 4, !tbaa !92
  br label %47

47:                                               ; preds = %19, %21
  %48 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 8
  %49 = load i16, ptr %48, align 2, !tbaa !83
  %50 = add i16 %49, 1
  store i16 %50, ptr %48, align 2, !tbaa !83
  %51 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %52 = load i16, ptr %51, align 4, !tbaa !56
  %53 = and i16 %52, 2
  %54 = icmp eq i16 %53, 0
  %55 = xor i16 %49, -1
  %56 = select i1 %54, i16 %50, i16 %55
  %57 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 15
  store i16 %56, ptr %57, align 4, !tbaa !84
  %58 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %59 = or i8 %58, 1
  store i8 %59, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %60 = icmp eq ptr %0, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %47
  %62 = or i16 %52, 64
  store i16 %62, ptr %51, align 4, !tbaa !56
  br label %63

63:                                               ; preds = %61, %47
  %64 = icmp eq ptr %8, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 13
  %67 = load i16, ptr %66, align 8, !tbaa !58
  %68 = or i16 %67, 8
  store i16 %68, ptr %66, align 8, !tbaa !58
  br label %69

69:                                               ; preds = %63, %65
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @WM_modalkeymap_add_item_str(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %8 = tail call ptr %7(i64 noundef 184, ptr noundef nonnull @.str.1) #12
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #12
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 4
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %5, i64 noundef 64) #12
  %12 = trunc i32 %1 to i16
  %13 = trunc i32 %2 to i16
  %14 = trunc i32 %4 to i16
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 6
  store i16 %12, ptr %15, align 2, !tbaa !42
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 7
  store i16 %13, ptr %16, align 4, !tbaa !88
  %17 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 12
  store i16 %14, ptr %17, align 2, !tbaa !93
  %18 = icmp eq i32 %3, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 8
  store i64 -1, ptr %20, align 2
  br label %47

21:                                               ; preds = %6
  %22 = and i32 %3, 1
  %23 = icmp eq i32 %22, 0
  %24 = trunc i32 %3 to i16
  %25 = lshr i16 %24, 3
  %26 = and i16 %25, 2
  %27 = select i1 %23, i16 %26, i16 1
  %28 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 8
  store i16 %27, ptr %28, align 2, !tbaa !89
  %29 = and i32 %3, 2
  %30 = icmp eq i32 %29, 0
  %31 = lshr i16 %24, 4
  %32 = and i16 %31, 2
  %33 = select i1 %30, i16 %32, i16 1
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 9
  store i16 %33, ptr %34, align 8, !tbaa !90
  %35 = and i32 %3, 4
  %36 = icmp eq i32 %35, 0
  %37 = lshr i16 %24, 5
  %38 = and i16 %37, 2
  %39 = select i1 %36, i16 %38, i16 1
  %40 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 10
  store i16 %39, ptr %40, align 2, !tbaa !91
  %41 = and i32 %3, 8
  %42 = icmp eq i32 %41, 0
  %43 = lshr i16 %24, 6
  %44 = and i16 %43, 2
  %45 = select i1 %42, i16 %44, i16 1
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 11
  store i16 %45, ptr %46, align 4, !tbaa !92
  br label %47

47:                                               ; preds = %19, %21
  %48 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 8
  %49 = load i16, ptr %48, align 2, !tbaa !83
  %50 = add i16 %49, 1
  store i16 %50, ptr %48, align 2, !tbaa !83
  %51 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %52 = load i16, ptr %51, align 4, !tbaa !56
  %53 = and i16 %52, 2
  %54 = icmp eq i16 %53, 0
  %55 = xor i16 %49, -1
  %56 = select i1 %54, i16 %50, i16 %55
  %57 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 15
  store i16 %56, ptr %57, align 4, !tbaa !84
  %58 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %59 = or i8 %58, 1
  store i8 %59, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %60 = icmp eq ptr %0, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %47
  %62 = or i16 %52, 64
  store i16 %62, ptr %51, align 4, !tbaa !56
  br label %63

63:                                               ; preds = %61, %47
  %64 = icmp eq ptr %8, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 13
  %67 = load i16, ptr %66, align 8, !tbaa !58
  %68 = or i16 %67, 8
  store i16 %68, ptr %66, align 8, !tbaa !58
  br label %69

69:                                               ; preds = %63, %65
  ret ptr %8
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_modalkeymap_find_propvalue(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %4 = load i16, ptr %3, align 4, !tbaa !56
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !87
  %16 = sext i16 %15 to i32
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %9, !llvm.loop !114

18:                                               ; preds = %13
  br i1 %12, label %19, label %20

19:                                               ; preds = %9, %18, %2
  br label %20

20:                                               ; preds = %18, %19
  %21 = phi ptr [ %11, %18 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_modalkeymap_assign(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 15
  store ptr %0, ptr %6, align 8, !tbaa !115
  br label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %1)
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_key_event_string(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr null, ptr %2, align 8, !tbaa !40
  %3 = sext i16 %0 to i32
  %4 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @event_type_items, i32 noundef %3, ptr noundef nonnull %2) #12
  %5 = icmp eq i8 %4, 0
  %6 = load ptr, ptr %2, align 8
  %7 = select i1 %5, ptr @.str.6, ptr %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %7
}

declare zeroext i8 @RNA_enum_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_keymap_item_to_string(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #12
  store i8 0, ptr %6, align 16, !tbaa !51
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 2, !tbaa !89
  switch i16 %8, label %26 [
    i16 -1, label %9
    i16 0, label %29
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 8, !tbaa !90
  %12 = icmp eq i16 %11, -1
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 10
  %15 = load i16, ptr %14, align 2, !tbaa !91
  %16 = icmp eq i16 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 11
  %19 = load i16, ptr %18, align 4, !tbaa !92
  %20 = icmp eq i16 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %6, ptr noundef nonnull @.str.7) #12
  %23 = getelementptr inbounds i8, ptr %6, i64 %22
  br label %53

24:                                               ; preds = %17, %13, %9
  %25 = icmp eq i16 %8, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3, %24
  %27 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %6, ptr noundef nonnull @.str.8) #12
  %28 = getelementptr inbounds i8, ptr %6, i64 %27
  br label %29

29:                                               ; preds = %3, %26, %24
  %30 = phi ptr [ %28, %26 ], [ %6, %24 ], [ %6, %3 ]
  %31 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 9
  %32 = load i16, ptr %31, align 8, !tbaa !90
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = call i64 @BLI_strcpy_rlen(ptr noundef %30, ptr noundef nonnull @.str.9) #12
  %36 = getelementptr inbounds i8, ptr %30, i64 %35
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi ptr [ %36, %34 ], [ %30, %29 ]
  %39 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 10
  %40 = load i16, ptr %39, align 2, !tbaa !91
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = call i64 @BLI_strcpy_rlen(ptr noundef %38, ptr noundef nonnull @.str.10) #12
  %44 = getelementptr inbounds i8, ptr %38, i64 %43
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi ptr [ %44, %42 ], [ %38, %37 ]
  %47 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 11
  %48 = load i16, ptr %47, align 4, !tbaa !92
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = call i64 @BLI_strcpy_rlen(ptr noundef %46, ptr noundef nonnull @.str.11) #12
  %52 = getelementptr inbounds i8, ptr %46, i64 %51
  br label %53

53:                                               ; preds = %45, %50, %21
  %54 = phi ptr [ %23, %21 ], [ %52, %50 ], [ %46, %45 ]
  %55 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 12
  %56 = load i16, ptr %55, align 2, !tbaa !93
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store ptr null, ptr %5, align 8, !tbaa !40
  %59 = sext i16 %56 to i32
  %60 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @event_type_items, i32 noundef %59, ptr noundef nonnull %5) #12
  %61 = icmp eq i8 %60, 0
  %62 = load ptr, ptr %5, align 8
  %63 = select i1 %61, ptr @.str.6, ptr %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  %64 = call i64 @BLI_strcpy_rlen(ptr noundef %54, ptr noundef %63) #12
  %65 = getelementptr inbounds i8, ptr %54, i64 %64
  %66 = call i64 @BLI_strcpy_rlen(ptr noundef %65, ptr noundef nonnull @.str.12) #12
  %67 = getelementptr inbounds i8, ptr %65, i64 %66
  br label %68

68:                                               ; preds = %58, %53
  %69 = phi ptr [ %67, %58 ], [ %54, %53 ]
  %70 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 6
  %71 = load i16, ptr %70, align 2, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr null, ptr %4, align 8, !tbaa !40
  %72 = sext i16 %71 to i32
  %73 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @event_type_items, i32 noundef %72, ptr noundef nonnull %4) #12
  %74 = icmp eq i8 %73, 0
  %75 = load ptr, ptr %4, align 8
  %76 = select i1 %74, ptr @.str.6, ptr %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %77 = call i64 @BLI_strcpy_rlen(ptr noundef %69, ptr noundef %76) #12
  %78 = sext i32 %2 to i64
  %79 = call i64 @BLI_strncpy_rlen(ptr noundef %1, ptr noundef nonnull %6, i64 noundef %78) #12
  %80 = trunc i64 %79 to i32
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #12
  ret i32 %80
}

declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @WM_key_event_operator_string(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc ptr @wm_keymap_item_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %4, ptr noundef null)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @WM_keymap_item_to_string(ptr noundef nonnull %8, ptr noundef %5, i32 noundef %6)
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %5, %10 ], [ null, %7 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wm_keymap_item_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call fastcc ptr @wm_keymap_item_find_props(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext %4, ptr noundef %6)
  %10 = icmp eq ptr %9, null
  %11 = icmp ne ptr %3, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %43

13:                                               ; preds = %7
  %14 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 1) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  %17 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %3) #12
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %14, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !118
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %19, ptr noundef %17, ptr noundef nonnull %8) #12
  %20 = call zeroext i8 @WM_operator_properties_default(ptr noundef nonnull %8, i8 noundef zeroext 1) #12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = icmp eq i8 %5, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.wmOperatorType, ptr %14, i64 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !119
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = call zeroext i8 @RNA_property_is_set(ptr noundef nonnull %8, ptr noundef nonnull %26) #12
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28, %16
  %32 = icmp eq i8 %5, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.wmOperatorType, ptr %14, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !119
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  call void @RNA_property_unset(ptr noundef nonnull %8, ptr noundef nonnull %35) #12
  br label %38

38:                                               ; preds = %37, %33, %31
  %39 = call fastcc ptr @wm_keymap_item_find_props(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %17, i8 noundef zeroext 0, i8 noundef zeroext %4, ptr noundef %6)
  br label %40

40:                                               ; preds = %38, %28, %24, %22
  %41 = phi ptr [ %39, %38 ], [ null, %22 ], [ null, %28 ], [ null, %24 ]
  call void @IDP_FreeProperty(ptr noundef %17) #12
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  call void %42(ptr noundef %17) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  br label %43

43:                                               ; preds = %13, %40, %7
  %44 = phi ptr [ %9, %7 ], [ %41, %40 ], [ null, %13 ]
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_key_event_operator_id(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc ptr @wm_keymap_item_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext 1, ptr noundef %5)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 15
  %11 = load i16, ptr %10, align 4, !tbaa !84
  %12 = sext i16 %11 to i32
  br label %13

13:                                               ; preds = %6, %9
  %14 = phi i32 [ %12, %9 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_keymap_item_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 13
  %4 = load i16, ptr %3, align 8, !tbaa !58
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %93

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 13
  %9 = load i16, ptr %8, align 8, !tbaa !58
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %93

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 6
  %14 = load i16, ptr %13, align 2, !tbaa !42
  %15 = sext i16 %14 to i32
  %16 = tail call i32 @WM_userdef_event_map(i32 noundef %15) #12
  %17 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 6
  %18 = load i16, ptr %17, align 2, !tbaa !42
  %19 = sext i16 %18 to i32
  %20 = tail call i32 @WM_userdef_event_map(i32 noundef %19) #12
  %21 = icmp eq i32 %16, -1
  %22 = icmp eq i32 %20, -1
  %23 = select i1 %21, i1 true, i1 %22
  %24 = icmp eq i32 %16, %20
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %93

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 7
  %28 = load i16, ptr %27, align 4, !tbaa !88
  %29 = icmp eq i16 %28, -1
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 7
  %32 = load i16, ptr %31, align 4, !tbaa !88
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
  %48 = load i16, ptr %47, align 2, !tbaa !89
  %49 = icmp eq i16 %48, -1
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 8
  %52 = load i16, ptr %51, align 2, !tbaa !89
  %53 = icmp eq i16 %52, -1
  %54 = icmp eq i16 %48, %52
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %50, %46
  %57 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 9
  %58 = load i16, ptr %57, align 8, !tbaa !90
  %59 = icmp eq i16 %58, -1
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 9
  %62 = load i16, ptr %61, align 8, !tbaa !90
  %63 = icmp eq i16 %62, -1
  %64 = icmp eq i16 %58, %62
  %65 = or i1 %63, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %60, %56
  %67 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 10
  %68 = load i16, ptr %67, align 2, !tbaa !91
  %69 = icmp eq i16 %68, -1
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 10
  %72 = load i16, ptr %71, align 2, !tbaa !91
  %73 = icmp eq i16 %72, -1
  %74 = icmp eq i16 %68, %72
  %75 = or i1 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70, %66
  %77 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 11
  %78 = load i16, ptr %77, align 4, !tbaa !92
  %79 = icmp eq i16 %78, -1
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 11
  %82 = load i16, ptr %81, align 4, !tbaa !92
  %83 = icmp eq i16 %82, -1
  %84 = icmp eq i16 %78, %82
  %85 = or i1 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80, %76
  %87 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 12
  %88 = load i16, ptr %87, align 2, !tbaa !93
  %89 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 12
  %90 = load i16, ptr %89, align 2, !tbaa !93
  %91 = icmp eq i16 %88, %90
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %39, %34, %86, %80, %70, %60, %50, %12, %2, %7
  %94 = phi i32 [ 0, %7 ], [ 0, %2 ], [ 0, %12 ], [ 0, %50 ], [ 0, %60 ], [ 0, %70 ], [ 0, %80 ], [ %92, %86 ], [ 0, %34 ], [ 0, %39 ]
  ret i32 %94
}

declare i32 @WM_userdef_event_map(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @WM_keyconfig_update_operatortype() local_unnamed_addr #9 {
  %1 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %2 = or i8 %1, 2
  store i8 %2, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wm_keymap_preset(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 13
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 45), i32 noundef 16) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.wmKeyConfig, ptr %10, i64 0, i32 4
  %12 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 4
  %13 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 5
  %14 = load i16, ptr %13, align 8, !tbaa !77
  %15 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !78
  %17 = load ptr, ptr %11, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %9, %32
  %20 = phi ptr [ %33, %32 ], [ %17, %9 ]
  %21 = getelementptr inbounds %struct.wmKeyMap, ptr %20, i64 0, i32 5
  %22 = load i16, ptr %21, align 8, !tbaa !77
  %23 = icmp eq i16 %22, %14
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wmKeyMap, ptr %20, i64 0, i32 6
  %26 = load i16, ptr %25, align 2, !tbaa !78
  %27 = icmp eq i16 %26, %16
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.wmKeyMap, ptr %20, i64 0, i32 4
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %29, i64 noundef 64) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %24, %19
  %33 = load ptr, ptr %20, align 8, !tbaa !40
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %19, !llvm.loop !79

35:                                               ; preds = %28, %32, %9
  %36 = phi ptr [ null, %9 ], [ %20, %28 ], [ null, %32 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = icmp eq ptr %40, null
  br i1 %41, label %62, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.wmKeyConfig, ptr %40, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !40
  %45 = icmp eq ptr %44, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %42, %59
  %47 = phi ptr [ %60, %59 ], [ %44, %42 ]
  %48 = getelementptr inbounds %struct.wmKeyMap, ptr %47, i64 0, i32 5
  %49 = load i16, ptr %48, align 8, !tbaa !77
  %50 = icmp eq i16 %49, %14
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.wmKeyMap, ptr %47, i64 0, i32 6
  %53 = load i16, ptr %52, align 2, !tbaa !78
  %54 = icmp eq i16 %53, %16
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.wmKeyMap, ptr %47, i64 0, i32 4
  %57 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %56, i64 noundef 64) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55, %51, %46
  %60 = load ptr, ptr %47, align 8, !tbaa !40
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %46, !llvm.loop !79

62:                                               ; preds = %59, %55, %42, %38, %35
  %63 = phi ptr [ %36, %35 ], [ null, %38 ], [ null, %42 ], [ %47, %55 ], [ null, %59 ]
  ret ptr %63
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_keymap_active(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.wmKeyConfig, ptr %6, i64 0, i32 4
  %8 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 4
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 5
  %10 = load i16, ptr %9, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !78
  %13 = load ptr, ptr %7, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %4, %28
  %16 = phi ptr [ %29, %28 ], [ %13, %4 ]
  %17 = getelementptr inbounds %struct.wmKeyMap, ptr %16, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !77
  %19 = icmp eq i16 %18, %10
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.wmKeyMap, ptr %16, i64 0, i32 6
  %22 = load i16, ptr %21, align 2, !tbaa !78
  %23 = icmp eq i16 %22, %12
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.wmKeyMap, ptr %16, i64 0, i32 4
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %25, i64 noundef 64) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %20, %15
  %29 = load ptr, ptr %16, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %15, !llvm.loop !79

31:                                               ; preds = %24, %28, %4
  %32 = phi ptr [ null, %4 ], [ %16, %24 ], [ null, %28 ]
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr %1, ptr %32
  br label %35

35:                                               ; preds = %31, %2
  %36 = phi ptr [ null, %2 ], [ %34, %31 ]
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_keymap_restore_item_to_default(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %5 = icmp eq ptr %1, null
  br i1 %5, label %166, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @wm_keymap_preset(ptr noundef %4, ptr noundef nonnull %1)
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.wmKeyConfig, ptr %9, i64 0, i32 4
  %11 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 4
  %12 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !78
  %16 = load ptr, ptr %10, align 8, !tbaa !40
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %6, %31
  %19 = phi ptr [ %32, %31 ], [ %16, %6 ]
  %20 = getelementptr inbounds %struct.wmKeyMap, ptr %19, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !77
  %22 = icmp eq i16 %21, %13
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.wmKeyMap, ptr %19, i64 0, i32 6
  %25 = load i16, ptr %24, align 2, !tbaa !78
  %26 = icmp eq i16 %25, %15
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.wmKeyMap, ptr %19, i64 0, i32 4
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %28, i64 noundef 64) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %23, %18
  %32 = load ptr, ptr %19, align 8, !tbaa !40
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %18, !llvm.loop !79

34:                                               ; preds = %27, %31, %6
  %35 = phi ptr [ null, %6 ], [ %19, %27 ], [ null, %31 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %76, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @wm_keymap_copy(ptr noundef %7)
  %39 = getelementptr inbounds %struct.wmKeyMap, ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %76, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.wmKeyMap, ptr %38, i64 0, i32 8
  %44 = getelementptr inbounds %struct.wmKeyMap, ptr %38, i64 0, i32 7
  %45 = getelementptr inbounds %struct.wmKeyMap, ptr %38, i64 0, i32 2
  br label %46

46:                                               ; preds = %65, %42
  %47 = phi ptr [ %40, %42 ], [ %74, %65 ]
  %48 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %49 = tail call ptr %48(ptr noundef nonnull %47) #12
  %50 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  %51 = load i16, ptr %50, align 8, !tbaa !58
  %52 = and i16 %51, -9
  store i16 %52, ptr %50, align 8, !tbaa !58
  %53 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %46
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %58 = tail call ptr %57(i64 noundef 24, ptr noundef nonnull @.str.107) #12
  %59 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 17
  store ptr %58, ptr %59, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 2
  tail call void @WM_operator_properties_create(ptr noundef %58, ptr noundef nonnull %60) #12
  %61 = load ptr, ptr %53, align 8, !tbaa !41
  %62 = tail call ptr @IDP_CopyProperty(ptr noundef %61) #12
  store ptr %62, ptr %53, align 8, !tbaa !41
  %63 = load ptr, ptr %59, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct.PointerRNA, ptr %63, i64 0, i32 2
  store ptr %62, ptr %64, align 8, !tbaa !80
  br label %65

65:                                               ; preds = %46, %56
  %66 = load i16, ptr %43, align 2, !tbaa !83
  %67 = add i16 %66, 1
  store i16 %67, ptr %43, align 2, !tbaa !83
  %68 = load i16, ptr %44, align 4, !tbaa !56
  %69 = and i16 %68, 2
  %70 = icmp eq i16 %69, 0
  %71 = xor i16 %66, -1
  %72 = select i1 %70, i16 %67, i16 %71
  %73 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 15
  store i16 %72, ptr %73, align 4, !tbaa !84
  tail call void @BLI_addhead(ptr noundef nonnull %45, ptr noundef %49) #12
  %74 = load ptr, ptr %47, align 8, !tbaa !40
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %46, !llvm.loop !85

76:                                               ; preds = %65, %37, %34
  %77 = phi ptr [ %7, %34 ], [ %38, %37 ], [ %38, %65 ]
  %78 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 15
  %79 = load i16, ptr %78, align 4, !tbaa !84
  %80 = getelementptr inbounds %struct.wmKeyMap, ptr %77, i64 0, i32 2
  br label %81

81:                                               ; preds = %85, %76
  %82 = phi ptr [ %80, %76 ], [ %83, %85 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !40
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.wmKeyMapItem, ptr %83, i64 0, i32 15
  %87 = load i16, ptr %86, align 4, !tbaa !84
  %88 = icmp eq i16 %87, %79
  br i1 %88, label %89, label %81, !llvm.loop !86

89:                                               ; preds = %81, %85
  %90 = phi ptr [ %83, %85 ], [ null, %81 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %163, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 2
  %94 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 2
  %95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(1) %94) #13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  %98 = tail call ptr @BLI_strncpy(ptr noundef nonnull %94, ptr noundef nonnull %93, i64 noundef 64) #12
  %99 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 17
  %100 = load ptr, ptr %99, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  tail call void @WM_operator_properties_free(ptr noundef nonnull %100) #12
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %104 = load ptr, ptr %99, align 8, !tbaa !34
  tail call void %103(ptr noundef %104) #12
  store ptr null, ptr %99, align 8, !tbaa !34
  br label %105

105:                                              ; preds = %97, %102
  %106 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 3
  store ptr null, ptr %106, align 8, !tbaa !41
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %99, ptr noundef nonnull %106, ptr noundef nonnull %94) #12
  %107 = load ptr, ptr %99, align 8, !tbaa !34
  tail call void @WM_operator_properties_sanitize(ptr noundef %107, i8 noundef zeroext 1) #12
  br label %108

108:                                              ; preds = %105, %92
  %109 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !41
  %111 = icmp eq ptr %110, null
  br i1 %111, label %125, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !41
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  tail call void @IDP_FreeProperty(ptr noundef nonnull %114) #12
  %117 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %118 = load ptr, ptr %113, align 8, !tbaa !41
  tail call void %117(ptr noundef %118) #12
  store ptr null, ptr %113, align 8, !tbaa !41
  br label %119

119:                                              ; preds = %116, %112
  %120 = load ptr, ptr %109, align 8, !tbaa !41
  %121 = tail call ptr @IDP_CopyProperty(ptr noundef %120) #12
  store ptr %121, ptr %113, align 8, !tbaa !41
  %122 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 17
  %123 = load ptr, ptr %122, align 8, !tbaa !34
  %124 = getelementptr inbounds %struct.PointerRNA, ptr %123, i64 0, i32 2
  store ptr %121, ptr %124, align 8, !tbaa !80
  br label %125

125:                                              ; preds = %119, %108
  %126 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 5
  %127 = load i16, ptr %126, align 8, !tbaa !87
  %128 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 5
  store i16 %127, ptr %128, align 8, !tbaa !87
  %129 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 6
  %130 = load i16, ptr %129, align 2, !tbaa !42
  %131 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 6
  store i16 %130, ptr %131, align 2, !tbaa !42
  %132 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 7
  %133 = load i16, ptr %132, align 4, !tbaa !88
  %134 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 7
  store i16 %133, ptr %134, align 4, !tbaa !88
  %135 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 8
  %136 = load i16, ptr %135, align 2, !tbaa !89
  %137 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 8
  store i16 %136, ptr %137, align 2, !tbaa !89
  %138 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 9
  %139 = load i16, ptr %138, align 8, !tbaa !90
  %140 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 9
  store i16 %139, ptr %140, align 8, !tbaa !90
  %141 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 10
  %142 = load i16, ptr %141, align 2, !tbaa !91
  %143 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 10
  store i16 %142, ptr %143, align 2, !tbaa !91
  %144 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 11
  %145 = load i16, ptr %144, align 4, !tbaa !92
  %146 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 11
  store i16 %145, ptr %146, align 4, !tbaa !92
  %147 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 12
  %148 = load i16, ptr %147, align 2, !tbaa !93
  %149 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 12
  store i16 %148, ptr %149, align 2, !tbaa !93
  %150 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 14
  %151 = load i16, ptr %150, align 2, !tbaa !94
  %152 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 14
  store i16 %151, ptr %152, align 2, !tbaa !94
  %153 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %154 = or i8 %153, 1
  store i8 %154, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %155 = getelementptr inbounds %struct.wmKeyMap, ptr %1, i64 0, i32 7
  %156 = load i16, ptr %155, align 4, !tbaa !56
  %157 = or i16 %156, 64
  store i16 %157, ptr %155, align 4, !tbaa !56
  %158 = icmp eq ptr %2, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %125
  %160 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 13
  %161 = load i16, ptr %160, align 8, !tbaa !58
  %162 = or i16 %161, 8
  store i16 %162, ptr %160, align 8, !tbaa !58
  br label %163

163:                                              ; preds = %159, %125, %89
  br i1 %36, label %166, label %164

164:                                              ; preds = %163
  tail call void @WM_keymap_free(ptr noundef %77)
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %165(ptr noundef %77) #12
  br label %166

166:                                              ; preds = %163, %164, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wm_keymap_copy(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %3 = tail call ptr %2(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 10
  store ptr %5, ptr %6, align 8, !tbaa !100
  %7 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 9
  store ptr %8, ptr %9, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 2
  %11 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %12 = load i16, ptr %11, align 4, !tbaa !56
  %13 = and i16 %12, -69
  store i16 %13, ptr %11, align 4, !tbaa !56
  %14 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = icmp eq ptr %15, null
  br i1 %16, label %71, label %17

17:                                               ; preds = %1, %68
  %18 = phi ptr [ %69, %68 ], [ %15, %1 ]
  %19 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %20 = tail call ptr %19(ptr noundef nonnull %18) #12
  %21 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %18, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %26 = tail call ptr %25(ptr noundef nonnull %22) #12
  %27 = getelementptr inbounds %struct.wmKeyMapItem, ptr %26, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %28 = load i16, ptr %27, align 8, !tbaa !58
  %29 = and i16 %28, -9
  store i16 %29, ptr %27, align 8, !tbaa !58
  %30 = getelementptr inbounds %struct.wmKeyMapItem, ptr %26, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %24
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %35 = tail call ptr %34(i64 noundef 24, ptr noundef nonnull @.str.107) #12
  %36 = getelementptr inbounds %struct.wmKeyMapItem, ptr %26, i64 0, i32 17
  store ptr %35, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %26, i64 0, i32 2
  tail call void @WM_operator_properties_create(ptr noundef %35, ptr noundef nonnull %37) #12
  %38 = load ptr, ptr %30, align 8, !tbaa !41
  %39 = tail call ptr @IDP_CopyProperty(ptr noundef %38) #12
  store ptr %39, ptr %30, align 8, !tbaa !41
  %40 = load ptr, ptr %36, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.PointerRNA, ptr %40, i64 0, i32 2
  store ptr %39, ptr %41, align 8, !tbaa !80
  br label %42

42:                                               ; preds = %24, %33
  %43 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %20, i64 0, i32 3
  store ptr %26, ptr %43, align 8, !tbaa !61
  br label %44

44:                                               ; preds = %42, %17
  %45 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %18, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !59
  %47 = icmp eq ptr %46, null
  br i1 %47, label %68, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %50 = tail call ptr %49(ptr noundef nonnull %46) #12
  %51 = getelementptr inbounds %struct.wmKeyMapItem, ptr %50, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  %52 = load i16, ptr %51, align 8, !tbaa !58
  %53 = and i16 %52, -9
  store i16 %53, ptr %51, align 8, !tbaa !58
  %54 = getelementptr inbounds %struct.wmKeyMapItem, ptr %50, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !41
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %48
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %59 = tail call ptr %58(i64 noundef 24, ptr noundef nonnull @.str.107) #12
  %60 = getelementptr inbounds %struct.wmKeyMapItem, ptr %50, i64 0, i32 17
  store ptr %59, ptr %60, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %50, i64 0, i32 2
  tail call void @WM_operator_properties_create(ptr noundef %59, ptr noundef nonnull %61) #12
  %62 = load ptr, ptr %54, align 8, !tbaa !41
  %63 = tail call ptr @IDP_CopyProperty(ptr noundef %62) #12
  store ptr %63, ptr %54, align 8, !tbaa !41
  %64 = load ptr, ptr %60, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct.PointerRNA, ptr %64, i64 0, i32 2
  store ptr %63, ptr %65, align 8, !tbaa !80
  br label %66

66:                                               ; preds = %48, %57
  %67 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %20, i64 0, i32 2
  store ptr %50, ptr %67, align 8, !tbaa !59
  br label %68

68:                                               ; preds = %44, %66
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef nonnull %20) #12
  %69 = load ptr, ptr %18, align 8, !tbaa !40
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %17, !llvm.loop !120

71:                                               ; preds = %68, %1
  %72 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !40
  %74 = icmp eq ptr %73, null
  br i1 %74, label %97, label %75

75:                                               ; preds = %71, %94
  %76 = phi ptr [ %95, %94 ], [ %73, %71 ]
  %77 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %78 = tail call ptr %77(ptr noundef nonnull %76) #12
  %79 = getelementptr inbounds %struct.wmKeyMapItem, ptr %78, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  %80 = load i16, ptr %79, align 8, !tbaa !58
  %81 = and i16 %80, -9
  store i16 %81, ptr %79, align 8, !tbaa !58
  %82 = getelementptr inbounds %struct.wmKeyMapItem, ptr %78, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !41
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %75
  %86 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %87 = tail call ptr %86(i64 noundef 24, ptr noundef nonnull @.str.107) #12
  %88 = getelementptr inbounds %struct.wmKeyMapItem, ptr %78, i64 0, i32 17
  store ptr %87, ptr %88, align 8, !tbaa !34
  %89 = getelementptr inbounds %struct.wmKeyMapItem, ptr %78, i64 0, i32 2
  tail call void @WM_operator_properties_create(ptr noundef %87, ptr noundef nonnull %89) #12
  %90 = load ptr, ptr %82, align 8, !tbaa !41
  %91 = tail call ptr @IDP_CopyProperty(ptr noundef %90) #12
  store ptr %91, ptr %82, align 8, !tbaa !41
  %92 = load ptr, ptr %88, align 8, !tbaa !34
  %93 = getelementptr inbounds %struct.PointerRNA, ptr %92, i64 0, i32 2
  store ptr %91, ptr %93, align 8, !tbaa !80
  br label %94

94:                                               ; preds = %75, %85
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %78) #12
  %95 = load ptr, ptr %76, align 8, !tbaa !40
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %75, !llvm.loop !121

97:                                               ; preds = %94, %71
  ret ptr %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_keymap_item_find_id(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 15
  %10 = load i16, ptr %9, align 4, !tbaa !84
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %4, !llvm.loop !86

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %6, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #1

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_keymap_restore_to_default(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %1) #12
  %4 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !78
  %9 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %2, %24
  %12 = phi ptr [ %25, %24 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.wmKeyMap, ptr %12, i64 0, i32 5
  %14 = load i16, ptr %13, align 8, !tbaa !77
  %15 = icmp eq i16 %14, %6
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.wmKeyMap, ptr %12, i64 0, i32 6
  %18 = load i16, ptr %17, align 2, !tbaa !78
  %19 = icmp eq i16 %18, %8
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wmKeyMap, ptr %12, i64 0, i32 4
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %21, i64 noundef 64) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %16, %11
  %25 = load ptr, ptr %12, align 8, !tbaa !40
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %11, !llvm.loop !79

27:                                               ; preds = %20, %24, %2
  %28 = phi ptr [ null, %2 ], [ %12, %20 ], [ null, %24 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  tail call void @WM_keymap_free(ptr noundef nonnull %28)
  tail call void @BLI_freelinkN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), ptr noundef nonnull %28) #12
  %31 = load i8, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  %32 = or i8 %31, 1
  store i8 %32, ptr @wm_keymap_update_flag, align 1, !tbaa !51
  tail call void @WM_keyconfig_update(ptr noundef %3)
  br label %33

33:                                               ; preds = %30, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_keymap_guess_opname(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #12
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.13, i64 noundef 5) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.wmKeyConfig, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1434, label %13

13:                                               ; preds = %6, %26
  %14 = phi ptr [ %27, %26 ], [ %11, %6 ]
  %15 = getelementptr inbounds %struct.wmKeyMap, ptr %14, i64 0, i32 5
  %16 = load i16, ptr %15, align 8, !tbaa !77
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.wmKeyMap, ptr %14, i64 0, i32 6
  %20 = load i16, ptr %19, align 2, !tbaa !78
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wmKeyMap, ptr %14, i64 0, i32 4
  %24 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.14, ptr noundef nonnull dereferenceable(1) %23, i64 noundef 64) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %1434, label %26

26:                                               ; preds = %22, %18, %13
  %27 = load ptr, ptr %14, align 8, !tbaa !40
  %28 = icmp eq ptr %27, null
  br i1 %28, label %1434, label %13, !llvm.loop !79

29:                                               ; preds = %2
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.15, i64 noundef 9) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.16, i64 noundef 9) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.17, i64 noundef 8) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.18, i64 noundef 8) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %38, %35, %32, %29
  %42 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %43 = getelementptr inbounds %struct.wmWindowManager, ptr %42, i64 0, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !66
  %45 = getelementptr inbounds %struct.wmKeyConfig, ptr %44, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !40
  %47 = icmp eq ptr %46, null
  br i1 %47, label %1434, label %48

48:                                               ; preds = %41, %61
  %49 = phi ptr [ %62, %61 ], [ %46, %41 ]
  %50 = getelementptr inbounds %struct.wmKeyMap, ptr %49, i64 0, i32 5
  %51 = load i16, ptr %50, align 8, !tbaa !77
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.wmKeyMap, ptr %49, i64 0, i32 6
  %55 = load i16, ptr %54, align 2, !tbaa !78
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.wmKeyMap, ptr %49, i64 0, i32 4
  %59 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.19, ptr noundef nonnull dereferenceable(1) %58, i64 noundef 64) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %1434, label %61

61:                                               ; preds = %57, %53, %48
  %62 = load ptr, ptr %49, align 8, !tbaa !40
  %63 = icmp eq ptr %62, null
  br i1 %63, label %1434, label %48, !llvm.loop !79

64:                                               ; preds = %38
  %65 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.20, i64 noundef 10) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %69 = getelementptr inbounds %struct.wmWindowManager, ptr %68, i64 0, i32 16
  %70 = load ptr, ptr %69, align 8, !tbaa !66
  %71 = getelementptr inbounds %struct.wmKeyConfig, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !40
  %73 = icmp eq ptr %72, null
  br i1 %73, label %1434, label %74

74:                                               ; preds = %67, %87
  %75 = phi ptr [ %88, %87 ], [ %72, %67 ]
  %76 = getelementptr inbounds %struct.wmKeyMap, ptr %75, i64 0, i32 5
  %77 = load i16, ptr %76, align 8, !tbaa !77
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.wmKeyMap, ptr %75, i64 0, i32 6
  %81 = load i16, ptr %80, align 2, !tbaa !78
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.wmKeyMap, ptr %75, i64 0, i32 4
  %85 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(14) @.str.21, ptr noundef nonnull dereferenceable(1) %84, i64 noundef 64) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %1434, label %87

87:                                               ; preds = %83, %79, %74
  %88 = load ptr, ptr %75, align 8, !tbaa !40
  %89 = icmp eq ptr %88, null
  br i1 %89, label %1434, label %74, !llvm.loop !79

90:                                               ; preds = %64
  %91 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.22, i64 noundef 9) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %95 = getelementptr inbounds %struct.wmWindowManager, ptr %94, i64 0, i32 16
  %96 = load ptr, ptr %95, align 8, !tbaa !66
  %97 = getelementptr inbounds %struct.wmKeyConfig, ptr %96, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !40
  %99 = icmp eq ptr %98, null
  br i1 %99, label %1434, label %100

100:                                              ; preds = %93, %113
  %101 = phi ptr [ %114, %113 ], [ %98, %93 ]
  %102 = getelementptr inbounds %struct.wmKeyMap, ptr %101, i64 0, i32 5
  %103 = load i16, ptr %102, align 8, !tbaa !77
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.wmKeyMap, ptr %101, i64 0, i32 6
  %107 = load i16, ptr %106, align 2, !tbaa !78
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.wmKeyMap, ptr %101, i64 0, i32 4
  %111 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.23, ptr noundef nonnull dereferenceable(1) %110, i64 noundef 64) #13
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %1434, label %113

113:                                              ; preds = %109, %105, %100
  %114 = load ptr, ptr %101, align 8, !tbaa !40
  %115 = icmp eq ptr %114, null
  br i1 %115, label %1434, label %100, !llvm.loop !79

116:                                              ; preds = %90
  %117 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.24, i64 noundef 7) #13
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.25, i64 noundef 7) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %119, %116
  %123 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %124 = getelementptr inbounds %struct.wmWindowManager, ptr %123, i64 0, i32 16
  %125 = load ptr, ptr %124, align 8, !tbaa !66
  %126 = getelementptr inbounds %struct.wmKeyConfig, ptr %125, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !40
  %128 = icmp eq ptr %127, null
  br i1 %128, label %1434, label %129

129:                                              ; preds = %122, %142
  %130 = phi ptr [ %143, %142 ], [ %127, %122 ]
  %131 = getelementptr inbounds %struct.wmKeyMap, ptr %130, i64 0, i32 5
  %132 = load i16, ptr %131, align 8, !tbaa !77
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.wmKeyMap, ptr %130, i64 0, i32 6
  %136 = load i16, ptr %135, align 2, !tbaa !78
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.wmKeyMap, ptr %130, i64 0, i32 4
  %140 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.14, ptr noundef nonnull dereferenceable(1) %139, i64 noundef 64) #13
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %1434, label %142

142:                                              ; preds = %138, %134, %129
  %143 = load ptr, ptr %130, align 8, !tbaa !40
  %144 = icmp eq ptr %143, null
  br i1 %144, label %1434, label %129, !llvm.loop !79

145:                                              ; preds = %119
  %146 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.26, i64 noundef 9) #13
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %150 = load i32, ptr %149, align 8, !tbaa !122
  %151 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %152 = getelementptr inbounds %struct.wmWindowManager, ptr %151, i64 0, i32 16
  %153 = load ptr, ptr %152, align 8, !tbaa !66
  %154 = getelementptr inbounds %struct.wmKeyConfig, ptr %153, i64 0, i32 4
  %155 = load ptr, ptr %154, align 8, !tbaa !40
  %156 = icmp eq ptr %155, null
  br i1 %156, label %1434, label %157

157:                                              ; preds = %148, %171
  %158 = phi ptr [ %172, %171 ], [ %155, %148 ]
  %159 = getelementptr inbounds %struct.wmKeyMap, ptr %158, i64 0, i32 5
  %160 = load i16, ptr %159, align 8, !tbaa !77
  %161 = sext i16 %160 to i32
  %162 = icmp eq i32 %150, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.wmKeyMap, ptr %158, i64 0, i32 6
  %165 = load i16, ptr %164, align 2, !tbaa !78
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.wmKeyMap, ptr %158, i64 0, i32 4
  %169 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.27, ptr noundef nonnull dereferenceable(1) %168, i64 noundef 64) #13
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %1434, label %171

171:                                              ; preds = %167, %163, %157
  %172 = load ptr, ptr %158, align 8, !tbaa !40
  %173 = icmp eq ptr %172, null
  br i1 %173, label %1434, label %157, !llvm.loop !79

174:                                              ; preds = %145
  %175 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.28, i64 noundef 9) #13
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %220

177:                                              ; preds = %174
  %178 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.29, i64 noundef 18) #13
  %179 = icmp eq i32 %178, 0
  %180 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %181 = getelementptr inbounds %struct.wmWindowManager, ptr %180, i64 0, i32 16
  %182 = load ptr, ptr %181, align 8, !tbaa !66
  %183 = getelementptr inbounds %struct.wmKeyConfig, ptr %182, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !40
  %185 = icmp eq ptr %184, null
  br i1 %179, label %186, label %203

186:                                              ; preds = %177
  br i1 %185, label %1434, label %187

187:                                              ; preds = %186, %200
  %188 = phi ptr [ %201, %200 ], [ %184, %186 ]
  %189 = getelementptr inbounds %struct.wmKeyMap, ptr %188, i64 0, i32 5
  %190 = load i16, ptr %189, align 8, !tbaa !77
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.wmKeyMap, ptr %188, i64 0, i32 6
  %194 = load i16, ptr %193, align 2, !tbaa !78
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.wmKeyMap, ptr %188, i64 0, i32 4
  %198 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(17) @.str.30, ptr noundef nonnull dereferenceable(1) %197, i64 noundef 64) #13
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %1434, label %200

200:                                              ; preds = %196, %192, %187
  %201 = load ptr, ptr %188, align 8, !tbaa !40
  %202 = icmp eq ptr %201, null
  br i1 %202, label %1434, label %187, !llvm.loop !79

203:                                              ; preds = %177
  br i1 %185, label %1434, label %204

204:                                              ; preds = %203, %217
  %205 = phi ptr [ %218, %217 ], [ %184, %203 ]
  %206 = getelementptr inbounds %struct.wmKeyMap, ptr %205, i64 0, i32 5
  %207 = load i16, ptr %206, align 8, !tbaa !77
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.wmKeyMap, ptr %205, i64 0, i32 6
  %211 = load i16, ptr %210, align 2, !tbaa !78
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.wmKeyMap, ptr %205, i64 0, i32 4
  %215 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.31, ptr noundef nonnull dereferenceable(1) %214, i64 noundef 64) #13
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %1434, label %217

217:                                              ; preds = %213, %209, %204
  %218 = load ptr, ptr %205, align 8, !tbaa !40
  %219 = icmp eq ptr %218, null
  br i1 %219, label %1434, label %204, !llvm.loop !79

220:                                              ; preds = %174
  %221 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.32, i64 noundef 8) #13
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %232, label %223

223:                                              ; preds = %220
  %224 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.33, i64 noundef 11) #13
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %223
  %227 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.34, i64 noundef 10) #13
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.35, i64 noundef 12) #13
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %255

232:                                              ; preds = %229, %226, %223, %220
  %233 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %234 = getelementptr inbounds %struct.wmWindowManager, ptr %233, i64 0, i32 16
  %235 = load ptr, ptr %234, align 8, !tbaa !66
  %236 = getelementptr inbounds %struct.wmKeyConfig, ptr %235, i64 0, i32 4
  %237 = load ptr, ptr %236, align 8, !tbaa !40
  %238 = icmp eq ptr %237, null
  br i1 %238, label %1434, label %239

239:                                              ; preds = %232, %252
  %240 = phi ptr [ %253, %252 ], [ %237, %232 ]
  %241 = getelementptr inbounds %struct.wmKeyMap, ptr %240, i64 0, i32 5
  %242 = load i16, ptr %241, align 8, !tbaa !77
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.wmKeyMap, ptr %240, i64 0, i32 6
  %246 = load i16, ptr %245, align 2, !tbaa !78
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.wmKeyMap, ptr %240, i64 0, i32 4
  %250 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.31, ptr noundef nonnull dereferenceable(1) %249, i64 noundef 64) #13
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %1434, label %252

252:                                              ; preds = %248, %244, %239
  %253 = load ptr, ptr %240, align 8, !tbaa !40
  %254 = icmp eq ptr %253, null
  br i1 %254, label %1434, label %239, !llvm.loop !79

255:                                              ; preds = %229
  %256 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.36, i64 noundef 7) #13
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %314

258:                                              ; preds = %255
  %259 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %260 = getelementptr inbounds %struct.wmWindowManager, ptr %259, i64 0, i32 16
  %261 = load ptr, ptr %260, align 8, !tbaa !66
  %262 = getelementptr inbounds %struct.wmKeyConfig, ptr %261, i64 0, i32 4
  %263 = load ptr, ptr %262, align 8, !tbaa !40
  %264 = icmp eq ptr %263, null
  br i1 %264, label %281, label %265

265:                                              ; preds = %258, %278
  %266 = phi ptr [ %279, %278 ], [ %263, %258 ]
  %267 = getelementptr inbounds %struct.wmKeyMap, ptr %266, i64 0, i32 5
  %268 = load i16, ptr %267, align 8, !tbaa !77
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.wmKeyMap, ptr %266, i64 0, i32 6
  %272 = load i16, ptr %271, align 2, !tbaa !78
  %273 = icmp eq i16 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.wmKeyMap, ptr %266, i64 0, i32 4
  %276 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.37, ptr noundef nonnull dereferenceable(1) %275, i64 noundef 64) #13
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %274, %270, %265
  %279 = load ptr, ptr %266, align 8, !tbaa !40
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %265, !llvm.loop !79

281:                                              ; preds = %274, %278, %258
  %282 = phi ptr [ null, %258 ], [ %266, %274 ], [ null, %278 ]
  %283 = icmp eq ptr %282, null
  br i1 %283, label %1434, label %284

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.wmKeyMap, ptr %282, i64 0, i32 9
  %286 = load ptr, ptr %285, align 8, !tbaa !101
  %287 = icmp eq ptr %286, null
  br i1 %287, label %1434, label %288

288:                                              ; preds = %284
  %289 = tail call i32 %286(ptr noundef %0) #12
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %1434

291:                                              ; preds = %288
  %292 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %293 = getelementptr inbounds %struct.wmWindowManager, ptr %292, i64 0, i32 16
  %294 = load ptr, ptr %293, align 8, !tbaa !66
  %295 = getelementptr inbounds %struct.wmKeyConfig, ptr %294, i64 0, i32 4
  %296 = load ptr, ptr %295, align 8, !tbaa !40
  %297 = icmp eq ptr %296, null
  br i1 %297, label %1434, label %298

298:                                              ; preds = %291, %311
  %299 = phi ptr [ %312, %311 ], [ %296, %291 ]
  %300 = getelementptr inbounds %struct.wmKeyMap, ptr %299, i64 0, i32 5
  %301 = load i16, ptr %300, align 8, !tbaa !77
  %302 = icmp eq i16 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.wmKeyMap, ptr %299, i64 0, i32 6
  %305 = load i16, ptr %304, align 2, !tbaa !78
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.wmKeyMap, ptr %299, i64 0, i32 4
  %309 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.31, ptr noundef nonnull dereferenceable(1) %308, i64 noundef 64) #13
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %1434, label %311

311:                                              ; preds = %307, %303, %298
  %312 = load ptr, ptr %299, align 8, !tbaa !40
  %313 = icmp eq ptr %312, null
  br i1 %313, label %1434, label %298, !llvm.loop !79

314:                                              ; preds = %255
  %315 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.38, i64 noundef 8) #13
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %314
  %318 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.39, i64 noundef 10) #13
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %376

320:                                              ; preds = %317, %314
  %321 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %322 = getelementptr inbounds %struct.wmWindowManager, ptr %321, i64 0, i32 16
  %323 = load ptr, ptr %322, align 8, !tbaa !66
  %324 = getelementptr inbounds %struct.wmKeyConfig, ptr %323, i64 0, i32 4
  %325 = load ptr, ptr %324, align 8, !tbaa !40
  %326 = icmp eq ptr %325, null
  br i1 %326, label %343, label %327

327:                                              ; preds = %320, %340
  %328 = phi ptr [ %341, %340 ], [ %325, %320 ]
  %329 = getelementptr inbounds %struct.wmKeyMap, ptr %328, i64 0, i32 5
  %330 = load i16, ptr %329, align 8, !tbaa !77
  %331 = icmp eq i16 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %327
  %333 = getelementptr inbounds %struct.wmKeyMap, ptr %328, i64 0, i32 6
  %334 = load i16, ptr %333, align 2, !tbaa !78
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.wmKeyMap, ptr %328, i64 0, i32 4
  %338 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.40, ptr noundef nonnull dereferenceable(1) %337, i64 noundef 64) #13
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %336, %332, %327
  %341 = load ptr, ptr %328, align 8, !tbaa !40
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %327, !llvm.loop !79

343:                                              ; preds = %336, %340, %320
  %344 = phi ptr [ null, %320 ], [ %328, %336 ], [ null, %340 ]
  %345 = icmp eq ptr %344, null
  br i1 %345, label %1434, label %346

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.wmKeyMap, ptr %344, i64 0, i32 9
  %348 = load ptr, ptr %347, align 8, !tbaa !101
  %349 = icmp eq ptr %348, null
  br i1 %349, label %1434, label %350

350:                                              ; preds = %346
  %351 = tail call i32 %348(ptr noundef %0) #12
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %1434

353:                                              ; preds = %350
  %354 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %355 = getelementptr inbounds %struct.wmWindowManager, ptr %354, i64 0, i32 16
  %356 = load ptr, ptr %355, align 8, !tbaa !66
  %357 = getelementptr inbounds %struct.wmKeyConfig, ptr %356, i64 0, i32 4
  %358 = load ptr, ptr %357, align 8, !tbaa !40
  %359 = icmp eq ptr %358, null
  br i1 %359, label %1434, label %360

360:                                              ; preds = %353, %373
  %361 = phi ptr [ %374, %373 ], [ %358, %353 ]
  %362 = getelementptr inbounds %struct.wmKeyMap, ptr %361, i64 0, i32 5
  %363 = load i16, ptr %362, align 8, !tbaa !77
  %364 = icmp eq i16 %363, 0
  br i1 %364, label %365, label %373

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.wmKeyMap, ptr %361, i64 0, i32 6
  %367 = load i16, ptr %366, align 2, !tbaa !78
  %368 = icmp eq i16 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.wmKeyMap, ptr %361, i64 0, i32 4
  %371 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.31, ptr noundef nonnull dereferenceable(1) %370, i64 noundef 64) #13
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %1434, label %373

373:                                              ; preds = %369, %365, %360
  %374 = load ptr, ptr %361, align 8, !tbaa !40
  %375 = icmp eq ptr %374, null
  br i1 %375, label %1434, label %360, !llvm.loop !79

376:                                              ; preds = %317
  %377 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.41, i64 noundef 11) #13
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %376
  %380 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.42, i64 noundef 9) #13
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %405

382:                                              ; preds = %379, %376
  %383 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %384 = getelementptr inbounds %struct.wmWindowManager, ptr %383, i64 0, i32 16
  %385 = load ptr, ptr %384, align 8, !tbaa !66
  %386 = getelementptr inbounds %struct.wmKeyConfig, ptr %385, i64 0, i32 4
  %387 = load ptr, ptr %386, align 8, !tbaa !40
  %388 = icmp eq ptr %387, null
  br i1 %388, label %1434, label %389

389:                                              ; preds = %382, %402
  %390 = phi ptr [ %403, %402 ], [ %387, %382 ]
  %391 = getelementptr inbounds %struct.wmKeyMap, ptr %390, i64 0, i32 5
  %392 = load i16, ptr %391, align 8, !tbaa !77
  %393 = icmp eq i16 %392, 0
  br i1 %393, label %394, label %402

394:                                              ; preds = %389
  %395 = getelementptr inbounds %struct.wmKeyMap, ptr %390, i64 0, i32 6
  %396 = load i16, ptr %395, align 2, !tbaa !78
  %397 = icmp eq i16 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.wmKeyMap, ptr %390, i64 0, i32 4
  %400 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.43, ptr noundef nonnull dereferenceable(1) %399, i64 noundef 64) #13
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %1434, label %402

402:                                              ; preds = %398, %394, %389
  %403 = load ptr, ptr %390, align 8, !tbaa !40
  %404 = icmp eq ptr %403, null
  br i1 %404, label %1434, label %389, !llvm.loop !79

405:                                              ; preds = %379
  %406 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.44, i64 noundef 7) #13
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %411, label %408

408:                                              ; preds = %405
  %409 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.45, i64 noundef 10) #13
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %434

411:                                              ; preds = %408, %405
  %412 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %413 = getelementptr inbounds %struct.wmWindowManager, ptr %412, i64 0, i32 16
  %414 = load ptr, ptr %413, align 8, !tbaa !66
  %415 = getelementptr inbounds %struct.wmKeyConfig, ptr %414, i64 0, i32 4
  %416 = load ptr, ptr %415, align 8, !tbaa !40
  %417 = icmp eq ptr %416, null
  br i1 %417, label %1434, label %418

418:                                              ; preds = %411, %431
  %419 = phi ptr [ %432, %431 ], [ %416, %411 ]
  %420 = getelementptr inbounds %struct.wmKeyMap, ptr %419, i64 0, i32 5
  %421 = load i16, ptr %420, align 8, !tbaa !77
  %422 = icmp eq i16 %421, 0
  br i1 %422, label %423, label %431

423:                                              ; preds = %418
  %424 = getelementptr inbounds %struct.wmKeyMap, ptr %419, i64 0, i32 6
  %425 = load i16, ptr %424, align 2, !tbaa !78
  %426 = icmp eq i16 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.wmKeyMap, ptr %419, i64 0, i32 4
  %429 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.46, ptr noundef nonnull dereferenceable(1) %428, i64 noundef 64) #13
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %1434, label %431

431:                                              ; preds = %427, %423, %418
  %432 = load ptr, ptr %419, align 8, !tbaa !40
  %433 = icmp eq ptr %432, null
  br i1 %433, label %1434, label %418, !llvm.loop !79

434:                                              ; preds = %408
  %435 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.47, i64 noundef 9) #13
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %485

437:                                              ; preds = %434
  %438 = tail call i32 @CTX_data_mode_enum(ptr noundef %0) #12
  switch i32 %438, label %1434 [
    i32 2, label %439
    i32 1, label %462
  ]

439:                                              ; preds = %437
  %440 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %441 = getelementptr inbounds %struct.wmWindowManager, ptr %440, i64 0, i32 16
  %442 = load ptr, ptr %441, align 8, !tbaa !66
  %443 = getelementptr inbounds %struct.wmKeyConfig, ptr %442, i64 0, i32 4
  %444 = load ptr, ptr %443, align 8, !tbaa !40
  %445 = icmp eq ptr %444, null
  br i1 %445, label %1434, label %446

446:                                              ; preds = %439, %459
  %447 = phi ptr [ %460, %459 ], [ %444, %439 ]
  %448 = getelementptr inbounds %struct.wmKeyMap, ptr %447, i64 0, i32 5
  %449 = load i16, ptr %448, align 8, !tbaa !77
  %450 = icmp eq i16 %449, 0
  br i1 %450, label %451, label %459

451:                                              ; preds = %446
  %452 = getelementptr inbounds %struct.wmKeyMap, ptr %447, i64 0, i32 6
  %453 = load i16, ptr %452, align 2, !tbaa !78
  %454 = icmp eq i16 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %451
  %456 = getelementptr inbounds %struct.wmKeyMap, ptr %447, i64 0, i32 4
  %457 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.48, ptr noundef nonnull dereferenceable(1) %456, i64 noundef 64) #13
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %1434, label %459

459:                                              ; preds = %455, %451, %446
  %460 = load ptr, ptr %447, align 8, !tbaa !40
  %461 = icmp eq ptr %460, null
  br i1 %461, label %1434, label %446, !llvm.loop !79

462:                                              ; preds = %437
  %463 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %464 = getelementptr inbounds %struct.wmWindowManager, ptr %463, i64 0, i32 16
  %465 = load ptr, ptr %464, align 8, !tbaa !66
  %466 = getelementptr inbounds %struct.wmKeyConfig, ptr %465, i64 0, i32 4
  %467 = load ptr, ptr %466, align 8, !tbaa !40
  %468 = icmp eq ptr %467, null
  br i1 %468, label %1434, label %469

469:                                              ; preds = %462, %482
  %470 = phi ptr [ %483, %482 ], [ %467, %462 ]
  %471 = getelementptr inbounds %struct.wmKeyMap, ptr %470, i64 0, i32 5
  %472 = load i16, ptr %471, align 8, !tbaa !77
  %473 = icmp eq i16 %472, 0
  br i1 %473, label %474, label %482

474:                                              ; preds = %469
  %475 = getelementptr inbounds %struct.wmKeyMap, ptr %470, i64 0, i32 6
  %476 = load i16, ptr %475, align 2, !tbaa !78
  %477 = icmp eq i16 %476, 0
  br i1 %477, label %478, label %482

478:                                              ; preds = %474
  %479 = getelementptr inbounds %struct.wmKeyMap, ptr %470, i64 0, i32 4
  %480 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.49, ptr noundef nonnull dereferenceable(1) %479, i64 noundef 64) #13
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %1434, label %482

482:                                              ; preds = %478, %474, %469
  %483 = load ptr, ptr %470, align 8, !tbaa !40
  %484 = icmp eq ptr %483, null
  br i1 %484, label %1434, label %469, !llvm.loop !79

485:                                              ; preds = %434
  %486 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.50, i64 noundef 8) #13
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %544

488:                                              ; preds = %485
  %489 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %490 = getelementptr inbounds %struct.wmWindowManager, ptr %489, i64 0, i32 16
  %491 = load ptr, ptr %490, align 8, !tbaa !66
  %492 = getelementptr inbounds %struct.wmKeyConfig, ptr %491, i64 0, i32 4
  %493 = load ptr, ptr %492, align 8, !tbaa !40
  %494 = icmp eq ptr %493, null
  br i1 %494, label %511, label %495

495:                                              ; preds = %488, %508
  %496 = phi ptr [ %509, %508 ], [ %493, %488 ]
  %497 = getelementptr inbounds %struct.wmKeyMap, ptr %496, i64 0, i32 5
  %498 = load i16, ptr %497, align 8, !tbaa !77
  %499 = icmp eq i16 %498, 0
  br i1 %499, label %500, label %508

500:                                              ; preds = %495
  %501 = getelementptr inbounds %struct.wmKeyMap, ptr %496, i64 0, i32 6
  %502 = load i16, ptr %501, align 2, !tbaa !78
  %503 = icmp eq i16 %502, 0
  br i1 %503, label %504, label %508

504:                                              ; preds = %500
  %505 = getelementptr inbounds %struct.wmKeyMap, ptr %496, i64 0, i32 4
  %506 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.51, ptr noundef nonnull dereferenceable(1) %505, i64 noundef 64) #13
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %511, label %508

508:                                              ; preds = %504, %500, %495
  %509 = load ptr, ptr %496, align 8, !tbaa !40
  %510 = icmp eq ptr %509, null
  br i1 %510, label %511, label %495, !llvm.loop !79

511:                                              ; preds = %504, %508, %488
  %512 = phi ptr [ null, %488 ], [ %496, %504 ], [ null, %508 ]
  %513 = icmp eq ptr %512, null
  br i1 %513, label %1434, label %514

514:                                              ; preds = %511
  %515 = getelementptr inbounds %struct.wmKeyMap, ptr %512, i64 0, i32 9
  %516 = load ptr, ptr %515, align 8, !tbaa !101
  %517 = icmp eq ptr %516, null
  br i1 %517, label %1434, label %518

518:                                              ; preds = %514
  %519 = tail call i32 %516(ptr noundef %0) #12
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %1434

521:                                              ; preds = %518
  %522 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %523 = getelementptr inbounds %struct.wmWindowManager, ptr %522, i64 0, i32 16
  %524 = load ptr, ptr %523, align 8, !tbaa !66
  %525 = getelementptr inbounds %struct.wmKeyConfig, ptr %524, i64 0, i32 4
  %526 = load ptr, ptr %525, align 8, !tbaa !40
  %527 = icmp eq ptr %526, null
  br i1 %527, label %1434, label %528

528:                                              ; preds = %521, %541
  %529 = phi ptr [ %542, %541 ], [ %526, %521 ]
  %530 = getelementptr inbounds %struct.wmKeyMap, ptr %529, i64 0, i32 5
  %531 = load i16, ptr %530, align 8, !tbaa !77
  %532 = icmp eq i16 %531, 0
  br i1 %532, label %533, label %541

533:                                              ; preds = %528
  %534 = getelementptr inbounds %struct.wmKeyMap, ptr %529, i64 0, i32 6
  %535 = load i16, ptr %534, align 2, !tbaa !78
  %536 = icmp eq i16 %535, 0
  br i1 %536, label %537, label %541

537:                                              ; preds = %533
  %538 = getelementptr inbounds %struct.wmKeyMap, ptr %529, i64 0, i32 4
  %539 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.31, ptr noundef nonnull dereferenceable(1) %538, i64 noundef 64) #13
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %1434, label %541

541:                                              ; preds = %537, %533, %528
  %542 = load ptr, ptr %529, align 8, !tbaa !40
  %543 = icmp eq ptr %542, null
  br i1 %543, label %1434, label %528, !llvm.loop !79

544:                                              ; preds = %485
  %545 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.52, i64 noundef 10) #13
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %570

547:                                              ; preds = %544
  %548 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %549 = getelementptr inbounds %struct.wmWindowManager, ptr %548, i64 0, i32 16
  %550 = load ptr, ptr %549, align 8, !tbaa !66
  %551 = getelementptr inbounds %struct.wmKeyConfig, ptr %550, i64 0, i32 4
  %552 = load ptr, ptr %551, align 8, !tbaa !40
  %553 = icmp eq ptr %552, null
  br i1 %553, label %1434, label %554

554:                                              ; preds = %547, %567
  %555 = phi ptr [ %568, %567 ], [ %552, %547 ]
  %556 = getelementptr inbounds %struct.wmKeyMap, ptr %555, i64 0, i32 5
  %557 = load i16, ptr %556, align 8, !tbaa !77
  %558 = icmp eq i16 %557, 0
  br i1 %558, label %559, label %567

559:                                              ; preds = %554
  %560 = getelementptr inbounds %struct.wmKeyMap, ptr %555, i64 0, i32 6
  %561 = load i16, ptr %560, align 2, !tbaa !78
  %562 = icmp eq i16 %561, 0
  br i1 %562, label %563, label %567

563:                                              ; preds = %559
  %564 = getelementptr inbounds %struct.wmKeyMap, ptr %555, i64 0, i32 4
  %565 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.53, ptr noundef nonnull dereferenceable(1) %564, i64 noundef 64) #13
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %1434, label %567

567:                                              ; preds = %563, %559, %554
  %568 = load ptr, ptr %555, align 8, !tbaa !40
  %569 = icmp eq ptr %568, null
  br i1 %569, label %1434, label %554, !llvm.loop !79

570:                                              ; preds = %544
  %571 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.54, i64 noundef 11) #13
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %596

573:                                              ; preds = %570
  %574 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %575 = getelementptr inbounds %struct.wmWindowManager, ptr %574, i64 0, i32 16
  %576 = load ptr, ptr %575, align 8, !tbaa !66
  %577 = getelementptr inbounds %struct.wmKeyConfig, ptr %576, i64 0, i32 4
  %578 = load ptr, ptr %577, align 8, !tbaa !40
  %579 = icmp eq ptr %578, null
  br i1 %579, label %1434, label %580

580:                                              ; preds = %573, %593
  %581 = phi ptr [ %594, %593 ], [ %578, %573 ]
  %582 = getelementptr inbounds %struct.wmKeyMap, ptr %581, i64 0, i32 5
  %583 = load i16, ptr %582, align 8, !tbaa !77
  %584 = icmp eq i16 %583, 0
  br i1 %584, label %585, label %593

585:                                              ; preds = %580
  %586 = getelementptr inbounds %struct.wmKeyMap, ptr %581, i64 0, i32 6
  %587 = load i16, ptr %586, align 2, !tbaa !78
  %588 = icmp eq i16 %587, 0
  br i1 %588, label %589, label %593

589:                                              ; preds = %585
  %590 = getelementptr inbounds %struct.wmKeyMap, ptr %581, i64 0, i32 4
  %591 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.55, ptr noundef nonnull dereferenceable(1) %590, i64 noundef 64) #13
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %1434, label %593

593:                                              ; preds = %589, %585, %580
  %594 = load ptr, ptr %581, align 8, !tbaa !40
  %595 = icmp eq ptr %594, null
  br i1 %595, label %1434, label %580, !llvm.loop !79

596:                                              ; preds = %570
  %597 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.56, i64 noundef 7) #13
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %622

599:                                              ; preds = %596
  %600 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %601 = getelementptr inbounds %struct.wmWindowManager, ptr %600, i64 0, i32 16
  %602 = load ptr, ptr %601, align 8, !tbaa !66
  %603 = getelementptr inbounds %struct.wmKeyConfig, ptr %602, i64 0, i32 4
  %604 = load ptr, ptr %603, align 8, !tbaa !40
  %605 = icmp eq ptr %604, null
  br i1 %605, label %1434, label %606

606:                                              ; preds = %599, %619
  %607 = phi ptr [ %620, %619 ], [ %604, %599 ]
  %608 = getelementptr inbounds %struct.wmKeyMap, ptr %607, i64 0, i32 5
  %609 = load i16, ptr %608, align 8, !tbaa !77
  %610 = icmp eq i16 %609, 0
  br i1 %610, label %611, label %619

611:                                              ; preds = %606
  %612 = getelementptr inbounds %struct.wmKeyMap, ptr %607, i64 0, i32 6
  %613 = load i16, ptr %612, align 2, !tbaa !78
  %614 = icmp eq i16 %613, 0
  br i1 %614, label %615, label %619

615:                                              ; preds = %611
  %616 = getelementptr inbounds %struct.wmKeyMap, ptr %607, i64 0, i32 4
  %617 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.57, ptr noundef nonnull dereferenceable(1) %616, i64 noundef 64) #13
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %1434, label %619

619:                                              ; preds = %615, %611, %606
  %620 = load ptr, ptr %607, align 8, !tbaa !40
  %621 = icmp eq ptr %620, null
  br i1 %621, label %1434, label %606, !llvm.loop !79

622:                                              ; preds = %596
  %623 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(21) @.str.58, i64 noundef 20) #13
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %648

625:                                              ; preds = %622
  %626 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %627 = getelementptr inbounds %struct.wmWindowManager, ptr %626, i64 0, i32 16
  %628 = load ptr, ptr %627, align 8, !tbaa !66
  %629 = getelementptr inbounds %struct.wmKeyConfig, ptr %628, i64 0, i32 4
  %630 = load ptr, ptr %629, align 8, !tbaa !40
  %631 = icmp eq ptr %630, null
  br i1 %631, label %1434, label %632

632:                                              ; preds = %625, %645
  %633 = phi ptr [ %646, %645 ], [ %630, %625 ]
  %634 = getelementptr inbounds %struct.wmKeyMap, ptr %633, i64 0, i32 5
  %635 = load i16, ptr %634, align 8, !tbaa !77
  %636 = icmp eq i16 %635, 0
  br i1 %636, label %637, label %645

637:                                              ; preds = %632
  %638 = getelementptr inbounds %struct.wmKeyMap, ptr %633, i64 0, i32 6
  %639 = load i16, ptr %638, align 2, !tbaa !78
  %640 = icmp eq i16 %639, 0
  br i1 %640, label %641, label %645

641:                                              ; preds = %637
  %642 = getelementptr inbounds %struct.wmKeyMap, ptr %633, i64 0, i32 4
  %643 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.59, ptr noundef nonnull dereferenceable(1) %642, i64 noundef 64) #13
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %1434, label %645

645:                                              ; preds = %641, %637, %632
  %646 = load ptr, ptr %633, align 8, !tbaa !40
  %647 = icmp eq ptr %646, null
  br i1 %647, label %1434, label %632, !llvm.loop !79

648:                                              ; preds = %622
  %649 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.60, i64 noundef 8) #13
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %722

651:                                              ; preds = %648
  %652 = tail call i32 @CTX_data_mode_enum(ptr noundef %0) #12
  switch i32 %652, label %1434 [
    i32 8, label %653
    i32 4, label %676
    i32 16, label %699
  ]

653:                                              ; preds = %651
  %654 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %655 = getelementptr inbounds %struct.wmWindowManager, ptr %654, i64 0, i32 16
  %656 = load ptr, ptr %655, align 8, !tbaa !66
  %657 = getelementptr inbounds %struct.wmKeyConfig, ptr %656, i64 0, i32 4
  %658 = load ptr, ptr %657, align 8, !tbaa !40
  %659 = icmp eq ptr %658, null
  br i1 %659, label %1434, label %660

660:                                              ; preds = %653, %673
  %661 = phi ptr [ %674, %673 ], [ %658, %653 ]
  %662 = getelementptr inbounds %struct.wmKeyMap, ptr %661, i64 0, i32 5
  %663 = load i16, ptr %662, align 8, !tbaa !77
  %664 = icmp eq i16 %663, 0
  br i1 %664, label %665, label %673

665:                                              ; preds = %660
  %666 = getelementptr inbounds %struct.wmKeyMap, ptr %661, i64 0, i32 6
  %667 = load i16, ptr %666, align 2, !tbaa !78
  %668 = icmp eq i16 %667, 0
  br i1 %668, label %669, label %673

669:                                              ; preds = %665
  %670 = getelementptr inbounds %struct.wmKeyMap, ptr %661, i64 0, i32 4
  %671 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.61, ptr noundef nonnull dereferenceable(1) %670, i64 noundef 64) #13
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %1434, label %673

673:                                              ; preds = %669, %665, %660
  %674 = load ptr, ptr %661, align 8, !tbaa !40
  %675 = icmp eq ptr %674, null
  br i1 %675, label %1434, label %660, !llvm.loop !79

676:                                              ; preds = %651
  %677 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %678 = getelementptr inbounds %struct.wmWindowManager, ptr %677, i64 0, i32 16
  %679 = load ptr, ptr %678, align 8, !tbaa !66
  %680 = getelementptr inbounds %struct.wmKeyConfig, ptr %679, i64 0, i32 4
  %681 = load ptr, ptr %680, align 8, !tbaa !40
  %682 = icmp eq ptr %681, null
  br i1 %682, label %1434, label %683

683:                                              ; preds = %676, %696
  %684 = phi ptr [ %697, %696 ], [ %681, %676 ]
  %685 = getelementptr inbounds %struct.wmKeyMap, ptr %684, i64 0, i32 5
  %686 = load i16, ptr %685, align 8, !tbaa !77
  %687 = icmp eq i16 %686, 0
  br i1 %687, label %688, label %696

688:                                              ; preds = %683
  %689 = getelementptr inbounds %struct.wmKeyMap, ptr %684, i64 0, i32 6
  %690 = load i16, ptr %689, align 2, !tbaa !78
  %691 = icmp eq i16 %690, 0
  br i1 %691, label %692, label %696

692:                                              ; preds = %688
  %693 = getelementptr inbounds %struct.wmKeyMap, ptr %684, i64 0, i32 4
  %694 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.62, ptr noundef nonnull dereferenceable(1) %693, i64 noundef 64) #13
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %1434, label %696

696:                                              ; preds = %692, %688, %683
  %697 = load ptr, ptr %684, align 8, !tbaa !40
  %698 = icmp eq ptr %697, null
  br i1 %698, label %1434, label %683, !llvm.loop !79

699:                                              ; preds = %651
  %700 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %701 = getelementptr inbounds %struct.wmWindowManager, ptr %700, i64 0, i32 16
  %702 = load ptr, ptr %701, align 8, !tbaa !66
  %703 = getelementptr inbounds %struct.wmKeyConfig, ptr %702, i64 0, i32 4
  %704 = load ptr, ptr %703, align 8, !tbaa !40
  %705 = icmp eq ptr %704, null
  br i1 %705, label %1434, label %706

706:                                              ; preds = %699, %719
  %707 = phi ptr [ %720, %719 ], [ %704, %699 ]
  %708 = getelementptr inbounds %struct.wmKeyMap, ptr %707, i64 0, i32 5
  %709 = load i16, ptr %708, align 8, !tbaa !77
  %710 = icmp eq i16 %709, 0
  br i1 %710, label %711, label %719

711:                                              ; preds = %706
  %712 = getelementptr inbounds %struct.wmKeyMap, ptr %707, i64 0, i32 6
  %713 = load i16, ptr %712, align 2, !tbaa !78
  %714 = icmp eq i16 %713, 0
  br i1 %714, label %715, label %719

715:                                              ; preds = %711
  %716 = getelementptr inbounds %struct.wmKeyMap, ptr %707, i64 0, i32 4
  %717 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.63, ptr noundef nonnull dereferenceable(1) %716, i64 noundef 64) #13
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %1434, label %719

719:                                              ; preds = %715, %711, %706
  %720 = load ptr, ptr %707, align 8, !tbaa !40
  %721 = icmp eq ptr %720, null
  br i1 %721, label %1434, label %706, !llvm.loop !79

722:                                              ; preds = %648
  %723 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.64, i64 noundef 7) #13
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %751

725:                                              ; preds = %722
  %726 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %727 = load i32, ptr %726, align 8, !tbaa !122
  %728 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %729 = getelementptr inbounds %struct.wmWindowManager, ptr %728, i64 0, i32 16
  %730 = load ptr, ptr %729, align 8, !tbaa !66
  %731 = getelementptr inbounds %struct.wmKeyConfig, ptr %730, i64 0, i32 4
  %732 = load ptr, ptr %731, align 8, !tbaa !40
  %733 = icmp eq ptr %732, null
  br i1 %733, label %1434, label %734

734:                                              ; preds = %725, %748
  %735 = phi ptr [ %749, %748 ], [ %732, %725 ]
  %736 = getelementptr inbounds %struct.wmKeyMap, ptr %735, i64 0, i32 5
  %737 = load i16, ptr %736, align 8, !tbaa !77
  %738 = sext i16 %737 to i32
  %739 = icmp eq i32 %727, %738
  br i1 %739, label %740, label %748

740:                                              ; preds = %734
  %741 = getelementptr inbounds %struct.wmKeyMap, ptr %735, i64 0, i32 6
  %742 = load i16, ptr %741, align 2, !tbaa !78
  %743 = icmp eq i16 %742, 0
  br i1 %743, label %744, label %748

744:                                              ; preds = %740
  %745 = getelementptr inbounds %struct.wmKeyMap, ptr %735, i64 0, i32 4
  %746 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.65, ptr noundef nonnull dereferenceable(1) %745, i64 noundef 64) #13
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %1434, label %748

748:                                              ; preds = %744, %740, %734
  %749 = load ptr, ptr %735, align 8, !tbaa !40
  %750 = icmp eq ptr %749, null
  br i1 %750, label %1434, label %734, !llvm.loop !79

751:                                              ; preds = %722
  %752 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.66, i64 noundef 8) #13
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %780

754:                                              ; preds = %751
  %755 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %756 = load i32, ptr %755, align 8, !tbaa !122
  %757 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %758 = getelementptr inbounds %struct.wmWindowManager, ptr %757, i64 0, i32 16
  %759 = load ptr, ptr %758, align 8, !tbaa !66
  %760 = getelementptr inbounds %struct.wmKeyConfig, ptr %759, i64 0, i32 4
  %761 = load ptr, ptr %760, align 8, !tbaa !40
  %762 = icmp eq ptr %761, null
  br i1 %762, label %1434, label %763

763:                                              ; preds = %754, %777
  %764 = phi ptr [ %778, %777 ], [ %761, %754 ]
  %765 = getelementptr inbounds %struct.wmKeyMap, ptr %764, i64 0, i32 5
  %766 = load i16, ptr %765, align 8, !tbaa !77
  %767 = sext i16 %766 to i32
  %768 = icmp eq i32 %756, %767
  br i1 %768, label %769, label %777

769:                                              ; preds = %763
  %770 = getelementptr inbounds %struct.wmKeyMap, ptr %764, i64 0, i32 6
  %771 = load i16, ptr %770, align 2, !tbaa !78
  %772 = icmp eq i16 %771, 0
  br i1 %772, label %773, label %777

773:                                              ; preds = %769
  %774 = getelementptr inbounds %struct.wmKeyMap, ptr %764, i64 0, i32 4
  %775 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.67, ptr noundef nonnull dereferenceable(1) %774, i64 noundef 64) #13
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %1434, label %777

777:                                              ; preds = %773, %769, %763
  %778 = load ptr, ptr %764, align 8, !tbaa !40
  %779 = icmp eq ptr %778, null
  br i1 %779, label %1434, label %763, !llvm.loop !79

780:                                              ; preds = %751
  %781 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.68, i64 noundef 7) #13
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %809

783:                                              ; preds = %780
  %784 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %785 = load i32, ptr %784, align 8, !tbaa !122
  %786 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %787 = getelementptr inbounds %struct.wmWindowManager, ptr %786, i64 0, i32 16
  %788 = load ptr, ptr %787, align 8, !tbaa !66
  %789 = getelementptr inbounds %struct.wmKeyConfig, ptr %788, i64 0, i32 4
  %790 = load ptr, ptr %789, align 8, !tbaa !40
  %791 = icmp eq ptr %790, null
  br i1 %791, label %1434, label %792

792:                                              ; preds = %783, %806
  %793 = phi ptr [ %807, %806 ], [ %790, %783 ]
  %794 = getelementptr inbounds %struct.wmKeyMap, ptr %793, i64 0, i32 5
  %795 = load i16, ptr %794, align 8, !tbaa !77
  %796 = sext i16 %795 to i32
  %797 = icmp eq i32 %785, %796
  br i1 %797, label %798, label %806

798:                                              ; preds = %792
  %799 = getelementptr inbounds %struct.wmKeyMap, ptr %793, i64 0, i32 6
  %800 = load i16, ptr %799, align 2, !tbaa !78
  %801 = icmp eq i16 %800, 0
  br i1 %801, label %802, label %806

802:                                              ; preds = %798
  %803 = getelementptr inbounds %struct.wmKeyMap, ptr %793, i64 0, i32 4
  %804 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.69, ptr noundef nonnull dereferenceable(1) %803, i64 noundef 64) #13
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %1434, label %806

806:                                              ; preds = %802, %798, %792
  %807 = load ptr, ptr %793, align 8, !tbaa !40
  %808 = icmp eq ptr %807, null
  br i1 %808, label %1434, label %792, !llvm.loop !79

809:                                              ; preds = %780
  %810 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.70, i64 noundef 7) #13
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %812, label %835

812:                                              ; preds = %809
  %813 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %814 = getelementptr inbounds %struct.wmWindowManager, ptr %813, i64 0, i32 16
  %815 = load ptr, ptr %814, align 8, !tbaa !66
  %816 = getelementptr inbounds %struct.wmKeyConfig, ptr %815, i64 0, i32 4
  %817 = load ptr, ptr %816, align 8, !tbaa !40
  %818 = icmp eq ptr %817, null
  br i1 %818, label %1434, label %819

819:                                              ; preds = %812, %832
  %820 = phi ptr [ %833, %832 ], [ %817, %812 ]
  %821 = getelementptr inbounds %struct.wmKeyMap, ptr %820, i64 0, i32 5
  %822 = load i16, ptr %821, align 8, !tbaa !77
  %823 = icmp eq i16 %822, 0
  br i1 %823, label %824, label %832

824:                                              ; preds = %819
  %825 = getelementptr inbounds %struct.wmKeyMap, ptr %820, i64 0, i32 6
  %826 = load i16, ptr %825, align 2, !tbaa !78
  %827 = icmp eq i16 %826, 0
  br i1 %827, label %828, label %832

828:                                              ; preds = %824
  %829 = getelementptr inbounds %struct.wmKeyMap, ptr %820, i64 0, i32 4
  %830 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.71, ptr noundef nonnull dereferenceable(1) %829, i64 noundef 64) #13
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %1434, label %832

832:                                              ; preds = %828, %824, %819
  %833 = load ptr, ptr %820, align 8, !tbaa !40
  %834 = icmp eq ptr %833, null
  br i1 %834, label %1434, label %819, !llvm.loop !79

835:                                              ; preds = %809
  %836 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.72, i64 noundef 5) #13
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %864

838:                                              ; preds = %835
  %839 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %840 = load i32, ptr %839, align 8, !tbaa !122
  %841 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %842 = getelementptr inbounds %struct.wmWindowManager, ptr %841, i64 0, i32 16
  %843 = load ptr, ptr %842, align 8, !tbaa !66
  %844 = getelementptr inbounds %struct.wmKeyConfig, ptr %843, i64 0, i32 4
  %845 = load ptr, ptr %844, align 8, !tbaa !40
  %846 = icmp eq ptr %845, null
  br i1 %846, label %1434, label %847

847:                                              ; preds = %838, %861
  %848 = phi ptr [ %862, %861 ], [ %845, %838 ]
  %849 = getelementptr inbounds %struct.wmKeyMap, ptr %848, i64 0, i32 5
  %850 = load i16, ptr %849, align 8, !tbaa !77
  %851 = sext i16 %850 to i32
  %852 = icmp eq i32 %840, %851
  br i1 %852, label %853, label %861

853:                                              ; preds = %847
  %854 = getelementptr inbounds %struct.wmKeyMap, ptr %848, i64 0, i32 6
  %855 = load i16, ptr %854, align 2, !tbaa !78
  %856 = icmp eq i16 %855, 0
  br i1 %856, label %857, label %861

857:                                              ; preds = %853
  %858 = getelementptr inbounds %struct.wmKeyMap, ptr %848, i64 0, i32 4
  %859 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.73, ptr noundef nonnull dereferenceable(1) %858, i64 noundef 64) #13
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %1434, label %861

861:                                              ; preds = %857, %853, %847
  %862 = load ptr, ptr %848, align 8, !tbaa !40
  %863 = icmp eq ptr %862, null
  br i1 %863, label %1434, label %847, !llvm.loop !79

864:                                              ; preds = %835
  %865 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.74, i64 noundef 7) #13
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %867, label %893

867:                                              ; preds = %864
  %868 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %869 = load i32, ptr %868, align 8, !tbaa !122
  %870 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %871 = getelementptr inbounds %struct.wmWindowManager, ptr %870, i64 0, i32 16
  %872 = load ptr, ptr %871, align 8, !tbaa !66
  %873 = getelementptr inbounds %struct.wmKeyConfig, ptr %872, i64 0, i32 4
  %874 = load ptr, ptr %873, align 8, !tbaa !40
  %875 = icmp eq ptr %874, null
  br i1 %875, label %1434, label %876

876:                                              ; preds = %867, %890
  %877 = phi ptr [ %891, %890 ], [ %874, %867 ]
  %878 = getelementptr inbounds %struct.wmKeyMap, ptr %877, i64 0, i32 5
  %879 = load i16, ptr %878, align 8, !tbaa !77
  %880 = sext i16 %879 to i32
  %881 = icmp eq i32 %869, %880
  br i1 %881, label %882, label %890

882:                                              ; preds = %876
  %883 = getelementptr inbounds %struct.wmKeyMap, ptr %877, i64 0, i32 6
  %884 = load i16, ptr %883, align 2, !tbaa !78
  %885 = icmp eq i16 %884, 0
  br i1 %885, label %886, label %890

886:                                              ; preds = %882
  %887 = getelementptr inbounds %struct.wmKeyMap, ptr %877, i64 0, i32 4
  %888 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.75, ptr noundef nonnull dereferenceable(1) %887, i64 noundef 64) #13
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %1434, label %890

890:                                              ; preds = %886, %882, %876
  %891 = load ptr, ptr %877, align 8, !tbaa !40
  %892 = icmp eq ptr %891, null
  br i1 %892, label %1434, label %876, !llvm.loop !79

893:                                              ; preds = %864
  %894 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.76, i64 noundef 16) #13
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %922

896:                                              ; preds = %893
  %897 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %898 = load i32, ptr %897, align 8, !tbaa !122
  %899 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %900 = getelementptr inbounds %struct.wmWindowManager, ptr %899, i64 0, i32 16
  %901 = load ptr, ptr %900, align 8, !tbaa !66
  %902 = getelementptr inbounds %struct.wmKeyConfig, ptr %901, i64 0, i32 4
  %903 = load ptr, ptr %902, align 8, !tbaa !40
  %904 = icmp eq ptr %903, null
  br i1 %904, label %1434, label %905

905:                                              ; preds = %896, %919
  %906 = phi ptr [ %920, %919 ], [ %903, %896 ]
  %907 = getelementptr inbounds %struct.wmKeyMap, ptr %906, i64 0, i32 5
  %908 = load i16, ptr %907, align 8, !tbaa !77
  %909 = sext i16 %908 to i32
  %910 = icmp eq i32 %898, %909
  br i1 %910, label %911, label %919

911:                                              ; preds = %905
  %912 = getelementptr inbounds %struct.wmKeyMap, ptr %906, i64 0, i32 6
  %913 = load i16, ptr %912, align 2, !tbaa !78
  %914 = icmp eq i16 %913, 0
  br i1 %914, label %915, label %919

915:                                              ; preds = %911
  %916 = getelementptr inbounds %struct.wmKeyMap, ptr %906, i64 0, i32 4
  %917 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(19) @.str.77, ptr noundef nonnull dereferenceable(1) %916, i64 noundef 64) #13
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %1434, label %919

919:                                              ; preds = %915, %911, %905
  %920 = load ptr, ptr %906, align 8, !tbaa !40
  %921 = icmp eq ptr %920, null
  br i1 %921, label %1434, label %905, !llvm.loop !79

922:                                              ; preds = %893
  %923 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.78, i64 noundef 7) #13
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %948

925:                                              ; preds = %922
  %926 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %927 = getelementptr inbounds %struct.wmWindowManager, ptr %926, i64 0, i32 16
  %928 = load ptr, ptr %927, align 8, !tbaa !66
  %929 = getelementptr inbounds %struct.wmKeyConfig, ptr %928, i64 0, i32 4
  %930 = load ptr, ptr %929, align 8, !tbaa !40
  %931 = icmp eq ptr %930, null
  br i1 %931, label %1434, label %932

932:                                              ; preds = %925, %945
  %933 = phi ptr [ %946, %945 ], [ %930, %925 ]
  %934 = getelementptr inbounds %struct.wmKeyMap, ptr %933, i64 0, i32 5
  %935 = load i16, ptr %934, align 8, !tbaa !77
  %936 = icmp eq i16 %935, 0
  br i1 %936, label %937, label %945

937:                                              ; preds = %932
  %938 = getelementptr inbounds %struct.wmKeyMap, ptr %933, i64 0, i32 6
  %939 = load i16, ptr %938, align 2, !tbaa !78
  %940 = icmp eq i16 %939, 0
  br i1 %940, label %941, label %945

941:                                              ; preds = %937
  %942 = getelementptr inbounds %struct.wmKeyMap, ptr %933, i64 0, i32 4
  %943 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.79, ptr noundef nonnull dereferenceable(1) %942, i64 noundef 64) #13
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %1434, label %945

945:                                              ; preds = %941, %937, %932
  %946 = load ptr, ptr %933, align 8, !tbaa !40
  %947 = icmp eq ptr %946, null
  br i1 %947, label %1434, label %932, !llvm.loop !79

948:                                              ; preds = %922
  %949 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.80, i64 noundef 8) #13
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %977

951:                                              ; preds = %948
  %952 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %953 = load i32, ptr %952, align 8, !tbaa !122
  %954 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %955 = getelementptr inbounds %struct.wmWindowManager, ptr %954, i64 0, i32 16
  %956 = load ptr, ptr %955, align 8, !tbaa !66
  %957 = getelementptr inbounds %struct.wmKeyConfig, ptr %956, i64 0, i32 4
  %958 = load ptr, ptr %957, align 8, !tbaa !40
  %959 = icmp eq ptr %958, null
  br i1 %959, label %1434, label %960

960:                                              ; preds = %951, %974
  %961 = phi ptr [ %975, %974 ], [ %958, %951 ]
  %962 = getelementptr inbounds %struct.wmKeyMap, ptr %961, i64 0, i32 5
  %963 = load i16, ptr %962, align 8, !tbaa !77
  %964 = sext i16 %963 to i32
  %965 = icmp eq i32 %953, %964
  br i1 %965, label %966, label %974

966:                                              ; preds = %960
  %967 = getelementptr inbounds %struct.wmKeyMap, ptr %961, i64 0, i32 6
  %968 = load i16, ptr %967, align 2, !tbaa !78
  %969 = icmp eq i16 %968, 0
  br i1 %969, label %970, label %974

970:                                              ; preds = %966
  %971 = getelementptr inbounds %struct.wmKeyMap, ptr %961, i64 0, i32 4
  %972 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.81, ptr noundef nonnull dereferenceable(1) %971, i64 noundef 64) #13
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %1434, label %974

974:                                              ; preds = %970, %966, %960
  %975 = load ptr, ptr %961, align 8, !tbaa !40
  %976 = icmp eq ptr %975, null
  br i1 %976, label %1434, label %960, !llvm.loop !79

977:                                              ; preds = %948
  %978 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.82, i64 noundef 9) #13
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %980, label %1006

980:                                              ; preds = %977
  %981 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %982 = load i32, ptr %981, align 8, !tbaa !122
  %983 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %984 = getelementptr inbounds %struct.wmWindowManager, ptr %983, i64 0, i32 16
  %985 = load ptr, ptr %984, align 8, !tbaa !66
  %986 = getelementptr inbounds %struct.wmKeyConfig, ptr %985, i64 0, i32 4
  %987 = load ptr, ptr %986, align 8, !tbaa !40
  %988 = icmp eq ptr %987, null
  br i1 %988, label %1434, label %989

989:                                              ; preds = %980, %1003
  %990 = phi ptr [ %1004, %1003 ], [ %987, %980 ]
  %991 = getelementptr inbounds %struct.wmKeyMap, ptr %990, i64 0, i32 5
  %992 = load i16, ptr %991, align 8, !tbaa !77
  %993 = sext i16 %992 to i32
  %994 = icmp eq i32 %982, %993
  br i1 %994, label %995, label %1003

995:                                              ; preds = %989
  %996 = getelementptr inbounds %struct.wmKeyMap, ptr %990, i64 0, i32 6
  %997 = load i16, ptr %996, align 2, !tbaa !78
  %998 = icmp eq i16 %997, 0
  br i1 %998, label %999, label %1003

999:                                              ; preds = %995
  %1000 = getelementptr inbounds %struct.wmKeyMap, ptr %990, i64 0, i32 4
  %1001 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.83, ptr noundef nonnull dereferenceable(1) %1000, i64 noundef 64) #13
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1434, label %1003

1003:                                             ; preds = %999, %995, %989
  %1004 = load ptr, ptr %990, align 8, !tbaa !40
  %1005 = icmp eq ptr %1004, null
  br i1 %1005, label %1434, label %989, !llvm.loop !79

1006:                                             ; preds = %977
  %1007 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.84, i64 noundef 6) #13
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1009, label %1035

1009:                                             ; preds = %1006
  %1010 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %1011 = load i32, ptr %1010, align 8, !tbaa !122
  %1012 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1013 = getelementptr inbounds %struct.wmWindowManager, ptr %1012, i64 0, i32 16
  %1014 = load ptr, ptr %1013, align 8, !tbaa !66
  %1015 = getelementptr inbounds %struct.wmKeyConfig, ptr %1014, i64 0, i32 4
  %1016 = load ptr, ptr %1015, align 8, !tbaa !40
  %1017 = icmp eq ptr %1016, null
  br i1 %1017, label %1434, label %1018

1018:                                             ; preds = %1009, %1032
  %1019 = phi ptr [ %1033, %1032 ], [ %1016, %1009 ]
  %1020 = getelementptr inbounds %struct.wmKeyMap, ptr %1019, i64 0, i32 5
  %1021 = load i16, ptr %1020, align 8, !tbaa !77
  %1022 = sext i16 %1021 to i32
  %1023 = icmp eq i32 %1011, %1022
  br i1 %1023, label %1024, label %1032

1024:                                             ; preds = %1018
  %1025 = getelementptr inbounds %struct.wmKeyMap, ptr %1019, i64 0, i32 6
  %1026 = load i16, ptr %1025, align 2, !tbaa !78
  %1027 = icmp eq i16 %1026, 0
  br i1 %1027, label %1028, label %1032

1028:                                             ; preds = %1024
  %1029 = getelementptr inbounds %struct.wmKeyMap, ptr %1019, i64 0, i32 4
  %1030 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.85, ptr noundef nonnull dereferenceable(1) %1029, i64 noundef 64) #13
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1434, label %1032

1032:                                             ; preds = %1028, %1024, %1018
  %1033 = load ptr, ptr %1019, align 8, !tbaa !40
  %1034 = icmp eq ptr %1033, null
  br i1 %1034, label %1434, label %1018, !llvm.loop !79

1035:                                             ; preds = %1006
  %1036 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.86, i64 noundef 9) #13
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1038, label %1064

1038:                                             ; preds = %1035
  %1039 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %1040 = load i32, ptr %1039, align 8, !tbaa !122
  %1041 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1042 = getelementptr inbounds %struct.wmWindowManager, ptr %1041, i64 0, i32 16
  %1043 = load ptr, ptr %1042, align 8, !tbaa !66
  %1044 = getelementptr inbounds %struct.wmKeyConfig, ptr %1043, i64 0, i32 4
  %1045 = load ptr, ptr %1044, align 8, !tbaa !40
  %1046 = icmp eq ptr %1045, null
  br i1 %1046, label %1434, label %1047

1047:                                             ; preds = %1038, %1061
  %1048 = phi ptr [ %1062, %1061 ], [ %1045, %1038 ]
  %1049 = getelementptr inbounds %struct.wmKeyMap, ptr %1048, i64 0, i32 5
  %1050 = load i16, ptr %1049, align 8, !tbaa !77
  %1051 = sext i16 %1050 to i32
  %1052 = icmp eq i32 %1040, %1051
  br i1 %1052, label %1053, label %1061

1053:                                             ; preds = %1047
  %1054 = getelementptr inbounds %struct.wmKeyMap, ptr %1048, i64 0, i32 6
  %1055 = load i16, ptr %1054, align 2, !tbaa !78
  %1056 = icmp eq i16 %1055, 0
  br i1 %1056, label %1057, label %1061

1057:                                             ; preds = %1053
  %1058 = getelementptr inbounds %struct.wmKeyMap, ptr %1048, i64 0, i32 4
  %1059 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.87, ptr noundef nonnull dereferenceable(1) %1058, i64 noundef 64) #13
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1434, label %1061

1061:                                             ; preds = %1057, %1053, %1047
  %1062 = load ptr, ptr %1048, align 8, !tbaa !40
  %1063 = icmp eq ptr %1062, null
  br i1 %1063, label %1434, label %1047, !llvm.loop !79

1064:                                             ; preds = %1035
  %1065 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.88, i64 noundef 7) #13
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1067, label %1093

1067:                                             ; preds = %1064
  %1068 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %1069 = load i32, ptr %1068, align 8, !tbaa !122
  %1070 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1071 = getelementptr inbounds %struct.wmWindowManager, ptr %1070, i64 0, i32 16
  %1072 = load ptr, ptr %1071, align 8, !tbaa !66
  %1073 = getelementptr inbounds %struct.wmKeyConfig, ptr %1072, i64 0, i32 4
  %1074 = load ptr, ptr %1073, align 8, !tbaa !40
  %1075 = icmp eq ptr %1074, null
  br i1 %1075, label %1434, label %1076

1076:                                             ; preds = %1067, %1090
  %1077 = phi ptr [ %1091, %1090 ], [ %1074, %1067 ]
  %1078 = getelementptr inbounds %struct.wmKeyMap, ptr %1077, i64 0, i32 5
  %1079 = load i16, ptr %1078, align 8, !tbaa !77
  %1080 = sext i16 %1079 to i32
  %1081 = icmp eq i32 %1069, %1080
  br i1 %1081, label %1082, label %1090

1082:                                             ; preds = %1076
  %1083 = getelementptr inbounds %struct.wmKeyMap, ptr %1077, i64 0, i32 6
  %1084 = load i16, ptr %1083, align 2, !tbaa !78
  %1085 = icmp eq i16 %1084, 0
  br i1 %1085, label %1086, label %1090

1086:                                             ; preds = %1082
  %1087 = getelementptr inbounds %struct.wmKeyMap, ptr %1077, i64 0, i32 4
  %1088 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.89, ptr noundef nonnull dereferenceable(1) %1087, i64 noundef 64) #13
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1434, label %1090

1090:                                             ; preds = %1086, %1082, %1076
  %1091 = load ptr, ptr %1077, align 8, !tbaa !40
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %1434, label %1076, !llvm.loop !79

1093:                                             ; preds = %1064
  %1094 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.90, i64 noundef 12) #13
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1096, label %1122

1096:                                             ; preds = %1093
  %1097 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %1098 = load i32, ptr %1097, align 8, !tbaa !122
  %1099 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1100 = getelementptr inbounds %struct.wmWindowManager, ptr %1099, i64 0, i32 16
  %1101 = load ptr, ptr %1100, align 8, !tbaa !66
  %1102 = getelementptr inbounds %struct.wmKeyConfig, ptr %1101, i64 0, i32 4
  %1103 = load ptr, ptr %1102, align 8, !tbaa !40
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1434, label %1105

1105:                                             ; preds = %1096, %1119
  %1106 = phi ptr [ %1120, %1119 ], [ %1103, %1096 ]
  %1107 = getelementptr inbounds %struct.wmKeyMap, ptr %1106, i64 0, i32 5
  %1108 = load i16, ptr %1107, align 8, !tbaa !77
  %1109 = sext i16 %1108 to i32
  %1110 = icmp eq i32 %1098, %1109
  br i1 %1110, label %1111, label %1119

1111:                                             ; preds = %1105
  %1112 = getelementptr inbounds %struct.wmKeyMap, ptr %1106, i64 0, i32 6
  %1113 = load i16, ptr %1112, align 2, !tbaa !78
  %1114 = icmp eq i16 %1113, 0
  br i1 %1114, label %1115, label %1119

1115:                                             ; preds = %1111
  %1116 = getelementptr inbounds %struct.wmKeyMap, ptr %1106, i64 0, i32 4
  %1117 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.91, ptr noundef nonnull dereferenceable(1) %1116, i64 noundef 64) #13
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1434, label %1119

1119:                                             ; preds = %1115, %1111, %1105
  %1120 = load ptr, ptr %1106, align 8, !tbaa !40
  %1121 = icmp eq ptr %1120, null
  br i1 %1121, label %1434, label %1105, !llvm.loop !79

1122:                                             ; preds = %1093
  %1123 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.92, i64 noundef 10) #13
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1125, label %1151

1125:                                             ; preds = %1122
  %1126 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %1127 = load i32, ptr %1126, align 8, !tbaa !122
  %1128 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1129 = getelementptr inbounds %struct.wmWindowManager, ptr %1128, i64 0, i32 16
  %1130 = load ptr, ptr %1129, align 8, !tbaa !66
  %1131 = getelementptr inbounds %struct.wmKeyConfig, ptr %1130, i64 0, i32 4
  %1132 = load ptr, ptr %1131, align 8, !tbaa !40
  %1133 = icmp eq ptr %1132, null
  br i1 %1133, label %1434, label %1134

1134:                                             ; preds = %1125, %1148
  %1135 = phi ptr [ %1149, %1148 ], [ %1132, %1125 ]
  %1136 = getelementptr inbounds %struct.wmKeyMap, ptr %1135, i64 0, i32 5
  %1137 = load i16, ptr %1136, align 8, !tbaa !77
  %1138 = sext i16 %1137 to i32
  %1139 = icmp eq i32 %1127, %1138
  br i1 %1139, label %1140, label %1148

1140:                                             ; preds = %1134
  %1141 = getelementptr inbounds %struct.wmKeyMap, ptr %1135, i64 0, i32 6
  %1142 = load i16, ptr %1141, align 2, !tbaa !78
  %1143 = icmp eq i16 %1142, 0
  br i1 %1143, label %1144, label %1148

1144:                                             ; preds = %1140
  %1145 = getelementptr inbounds %struct.wmKeyMap, ptr %1135, i64 0, i32 4
  %1146 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.93, ptr noundef nonnull dereferenceable(1) %1145, i64 noundef 64) #13
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1434, label %1148

1148:                                             ; preds = %1144, %1140, %1134
  %1149 = load ptr, ptr %1135, align 8, !tbaa !40
  %1150 = icmp eq ptr %1149, null
  br i1 %1150, label %1434, label %1134, !llvm.loop !79

1151:                                             ; preds = %1122
  %1152 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.94, i64 noundef 7) #13
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1154, label %1180

1154:                                             ; preds = %1151
  %1155 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %1156 = load i32, ptr %1155, align 8, !tbaa !122
  %1157 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1158 = getelementptr inbounds %struct.wmWindowManager, ptr %1157, i64 0, i32 16
  %1159 = load ptr, ptr %1158, align 8, !tbaa !66
  %1160 = getelementptr inbounds %struct.wmKeyConfig, ptr %1159, i64 0, i32 4
  %1161 = load ptr, ptr %1160, align 8, !tbaa !40
  %1162 = icmp eq ptr %1161, null
  br i1 %1162, label %1434, label %1163

1163:                                             ; preds = %1154, %1177
  %1164 = phi ptr [ %1178, %1177 ], [ %1161, %1154 ]
  %1165 = getelementptr inbounds %struct.wmKeyMap, ptr %1164, i64 0, i32 5
  %1166 = load i16, ptr %1165, align 8, !tbaa !77
  %1167 = sext i16 %1166 to i32
  %1168 = icmp eq i32 %1156, %1167
  br i1 %1168, label %1169, label %1177

1169:                                             ; preds = %1163
  %1170 = getelementptr inbounds %struct.wmKeyMap, ptr %1164, i64 0, i32 6
  %1171 = load i16, ptr %1170, align 2, !tbaa !78
  %1172 = icmp eq i16 %1171, 0
  br i1 %1172, label %1173, label %1177

1173:                                             ; preds = %1169
  %1174 = getelementptr inbounds %struct.wmKeyMap, ptr %1164, i64 0, i32 4
  %1175 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.95, ptr noundef nonnull dereferenceable(1) %1174, i64 noundef 64) #13
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1434, label %1177

1177:                                             ; preds = %1173, %1169, %1163
  %1178 = load ptr, ptr %1164, align 8, !tbaa !40
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1434, label %1163, !llvm.loop !79

1180:                                             ; preds = %1151
  %1181 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.96, i64 noundef 7) #13
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1183, label %1209

1183:                                             ; preds = %1180
  %1184 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %1185 = load i32, ptr %1184, align 8, !tbaa !122
  %1186 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1187 = getelementptr inbounds %struct.wmWindowManager, ptr %1186, i64 0, i32 16
  %1188 = load ptr, ptr %1187, align 8, !tbaa !66
  %1189 = getelementptr inbounds %struct.wmKeyConfig, ptr %1188, i64 0, i32 4
  %1190 = load ptr, ptr %1189, align 8, !tbaa !40
  %1191 = icmp eq ptr %1190, null
  br i1 %1191, label %1434, label %1192

1192:                                             ; preds = %1183, %1206
  %1193 = phi ptr [ %1207, %1206 ], [ %1190, %1183 ]
  %1194 = getelementptr inbounds %struct.wmKeyMap, ptr %1193, i64 0, i32 5
  %1195 = load i16, ptr %1194, align 8, !tbaa !77
  %1196 = sext i16 %1195 to i32
  %1197 = icmp eq i32 %1185, %1196
  br i1 %1197, label %1198, label %1206

1198:                                             ; preds = %1192
  %1199 = getelementptr inbounds %struct.wmKeyMap, ptr %1193, i64 0, i32 6
  %1200 = load i16, ptr %1199, align 2, !tbaa !78
  %1201 = icmp eq i16 %1200, 0
  br i1 %1201, label %1202, label %1206

1202:                                             ; preds = %1198
  %1203 = getelementptr inbounds %struct.wmKeyMap, ptr %1193, i64 0, i32 4
  %1204 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.97, ptr noundef nonnull dereferenceable(1) %1203, i64 noundef 64) #13
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1434, label %1206

1206:                                             ; preds = %1202, %1198, %1192
  %1207 = load ptr, ptr %1193, align 8, !tbaa !40
  %1208 = icmp eq ptr %1207, null
  br i1 %1208, label %1434, label %1192, !llvm.loop !79

1209:                                             ; preds = %1180
  %1210 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.98, i64 noundef 8) #13
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1212, label %1238

1212:                                             ; preds = %1209
  %1213 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %1214 = load i32, ptr %1213, align 8, !tbaa !122
  %1215 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1216 = getelementptr inbounds %struct.wmWindowManager, ptr %1215, i64 0, i32 16
  %1217 = load ptr, ptr %1216, align 8, !tbaa !66
  %1218 = getelementptr inbounds %struct.wmKeyConfig, ptr %1217, i64 0, i32 4
  %1219 = load ptr, ptr %1218, align 8, !tbaa !40
  %1220 = icmp eq ptr %1219, null
  br i1 %1220, label %1434, label %1221

1221:                                             ; preds = %1212, %1235
  %1222 = phi ptr [ %1236, %1235 ], [ %1219, %1212 ]
  %1223 = getelementptr inbounds %struct.wmKeyMap, ptr %1222, i64 0, i32 5
  %1224 = load i16, ptr %1223, align 8, !tbaa !77
  %1225 = sext i16 %1224 to i32
  %1226 = icmp eq i32 %1214, %1225
  br i1 %1226, label %1227, label %1235

1227:                                             ; preds = %1221
  %1228 = getelementptr inbounds %struct.wmKeyMap, ptr %1222, i64 0, i32 6
  %1229 = load i16, ptr %1228, align 2, !tbaa !78
  %1230 = icmp eq i16 %1229, 0
  br i1 %1230, label %1231, label %1235

1231:                                             ; preds = %1227
  %1232 = getelementptr inbounds %struct.wmKeyMap, ptr %1222, i64 0, i32 4
  %1233 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.99, ptr noundef nonnull dereferenceable(1) %1232, i64 noundef 64) #13
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1434, label %1235

1235:                                             ; preds = %1231, %1227, %1221
  %1236 = load ptr, ptr %1222, align 8, !tbaa !40
  %1237 = icmp eq ptr %1236, null
  br i1 %1237, label %1434, label %1221, !llvm.loop !79

1238:                                             ; preds = %1209
  %1239 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.100, i64 noundef 11) #13
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1241, label %1267

1241:                                             ; preds = %1238
  %1242 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %1243 = load i32, ptr %1242, align 8, !tbaa !122
  %1244 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1245 = getelementptr inbounds %struct.wmWindowManager, ptr %1244, i64 0, i32 16
  %1246 = load ptr, ptr %1245, align 8, !tbaa !66
  %1247 = getelementptr inbounds %struct.wmKeyConfig, ptr %1246, i64 0, i32 4
  %1248 = load ptr, ptr %1247, align 8, !tbaa !40
  %1249 = icmp eq ptr %1248, null
  br i1 %1249, label %1434, label %1250

1250:                                             ; preds = %1241, %1264
  %1251 = phi ptr [ %1265, %1264 ], [ %1248, %1241 ]
  %1252 = getelementptr inbounds %struct.wmKeyMap, ptr %1251, i64 0, i32 5
  %1253 = load i16, ptr %1252, align 8, !tbaa !77
  %1254 = sext i16 %1253 to i32
  %1255 = icmp eq i32 %1243, %1254
  br i1 %1255, label %1256, label %1264

1256:                                             ; preds = %1250
  %1257 = getelementptr inbounds %struct.wmKeyMap, ptr %1251, i64 0, i32 6
  %1258 = load i16, ptr %1257, align 2, !tbaa !78
  %1259 = icmp eq i16 %1258, 0
  br i1 %1259, label %1260, label %1264

1260:                                             ; preds = %1256
  %1261 = getelementptr inbounds %struct.wmKeyMap, ptr %1251, i64 0, i32 4
  %1262 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.101, ptr noundef nonnull dereferenceable(1) %1261, i64 noundef 64) #13
  %1263 = icmp eq i32 %1262, 0
  br i1 %1263, label %1434, label %1264

1264:                                             ; preds = %1260, %1256, %1250
  %1265 = load ptr, ptr %1251, align 8, !tbaa !40
  %1266 = icmp eq ptr %1265, null
  br i1 %1266, label %1434, label %1250, !llvm.loop !79

1267:                                             ; preds = %1238
  %1268 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.102, i64 noundef 12) #13
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1270, label %1434

1270:                                             ; preds = %1267
  %1271 = getelementptr inbounds %struct.SpaceLink, ptr %3, i64 0, i32 3
  %1272 = load i32, ptr %1271, align 8, !tbaa !122
  switch i32 %1272, label %1434 [
    i32 1, label %1273
    i32 2, label %1296
    i32 12, label %1319
    i32 13, label %1342
    i32 6, label %1365
    i32 16, label %1388
    i32 8, label %1411
  ]

1273:                                             ; preds = %1270
  %1274 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1275 = getelementptr inbounds %struct.wmWindowManager, ptr %1274, i64 0, i32 16
  %1276 = load ptr, ptr %1275, align 8, !tbaa !66
  %1277 = getelementptr inbounds %struct.wmKeyConfig, ptr %1276, i64 0, i32 4
  %1278 = load ptr, ptr %1277, align 8, !tbaa !40
  %1279 = icmp eq ptr %1278, null
  br i1 %1279, label %1434, label %1280

1280:                                             ; preds = %1273, %1293
  %1281 = phi ptr [ %1294, %1293 ], [ %1278, %1273 ]
  %1282 = getelementptr inbounds %struct.wmKeyMap, ptr %1281, i64 0, i32 5
  %1283 = load i16, ptr %1282, align 8, !tbaa !77
  %1284 = icmp eq i16 %1283, 1
  br i1 %1284, label %1285, label %1293

1285:                                             ; preds = %1280
  %1286 = getelementptr inbounds %struct.wmKeyMap, ptr %1281, i64 0, i32 6
  %1287 = load i16, ptr %1286, align 2, !tbaa !78
  %1288 = icmp eq i16 %1287, 0
  br i1 %1288, label %1289, label %1293

1289:                                             ; preds = %1285
  %1290 = getelementptr inbounds %struct.wmKeyMap, ptr %1281, i64 0, i32 4
  %1291 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.27, ptr noundef nonnull dereferenceable(1) %1290, i64 noundef 64) #13
  %1292 = icmp eq i32 %1291, 0
  br i1 %1292, label %1434, label %1293

1293:                                             ; preds = %1289, %1285, %1280
  %1294 = load ptr, ptr %1281, align 8, !tbaa !40
  %1295 = icmp eq ptr %1294, null
  br i1 %1295, label %1434, label %1280, !llvm.loop !79

1296:                                             ; preds = %1270
  %1297 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1298 = getelementptr inbounds %struct.wmWindowManager, ptr %1297, i64 0, i32 16
  %1299 = load ptr, ptr %1298, align 8, !tbaa !66
  %1300 = getelementptr inbounds %struct.wmKeyConfig, ptr %1299, i64 0, i32 4
  %1301 = load ptr, ptr %1300, align 8, !tbaa !40
  %1302 = icmp eq ptr %1301, null
  br i1 %1302, label %1434, label %1303

1303:                                             ; preds = %1296, %1316
  %1304 = phi ptr [ %1317, %1316 ], [ %1301, %1296 ]
  %1305 = getelementptr inbounds %struct.wmKeyMap, ptr %1304, i64 0, i32 5
  %1306 = load i16, ptr %1305, align 8, !tbaa !77
  %1307 = icmp eq i16 %1306, 2
  br i1 %1307, label %1308, label %1316

1308:                                             ; preds = %1303
  %1309 = getelementptr inbounds %struct.wmKeyMap, ptr %1304, i64 0, i32 6
  %1310 = load i16, ptr %1309, align 2, !tbaa !78
  %1311 = icmp eq i16 %1310, 0
  br i1 %1311, label %1312, label %1316

1312:                                             ; preds = %1308
  %1313 = getelementptr inbounds %struct.wmKeyMap, ptr %1304, i64 0, i32 4
  %1314 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.81, ptr noundef nonnull dereferenceable(1) %1313, i64 noundef 64) #13
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1434, label %1316

1316:                                             ; preds = %1312, %1308, %1303
  %1317 = load ptr, ptr %1304, align 8, !tbaa !40
  %1318 = icmp eq ptr %1317, null
  br i1 %1318, label %1434, label %1303, !llvm.loop !79

1319:                                             ; preds = %1270
  %1320 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1321 = getelementptr inbounds %struct.wmWindowManager, ptr %1320, i64 0, i32 16
  %1322 = load ptr, ptr %1321, align 8, !tbaa !66
  %1323 = getelementptr inbounds %struct.wmKeyConfig, ptr %1322, i64 0, i32 4
  %1324 = load ptr, ptr %1323, align 8, !tbaa !40
  %1325 = icmp eq ptr %1324, null
  br i1 %1325, label %1434, label %1326

1326:                                             ; preds = %1319, %1339
  %1327 = phi ptr [ %1340, %1339 ], [ %1324, %1319 ]
  %1328 = getelementptr inbounds %struct.wmKeyMap, ptr %1327, i64 0, i32 5
  %1329 = load i16, ptr %1328, align 8, !tbaa !77
  %1330 = icmp eq i16 %1329, 12
  br i1 %1330, label %1331, label %1339

1331:                                             ; preds = %1326
  %1332 = getelementptr inbounds %struct.wmKeyMap, ptr %1327, i64 0, i32 6
  %1333 = load i16, ptr %1332, align 2, !tbaa !78
  %1334 = icmp eq i16 %1333, 0
  br i1 %1334, label %1335, label %1339

1335:                                             ; preds = %1331
  %1336 = getelementptr inbounds %struct.wmKeyMap, ptr %1327, i64 0, i32 4
  %1337 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.83, ptr noundef nonnull dereferenceable(1) %1336, i64 noundef 64) #13
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1434, label %1339

1339:                                             ; preds = %1335, %1331, %1326
  %1340 = load ptr, ptr %1327, align 8, !tbaa !40
  %1341 = icmp eq ptr %1340, null
  br i1 %1341, label %1434, label %1326, !llvm.loop !79

1342:                                             ; preds = %1270
  %1343 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1344 = getelementptr inbounds %struct.wmWindowManager, ptr %1343, i64 0, i32 16
  %1345 = load ptr, ptr %1344, align 8, !tbaa !66
  %1346 = getelementptr inbounds %struct.wmKeyConfig, ptr %1345, i64 0, i32 4
  %1347 = load ptr, ptr %1346, align 8, !tbaa !40
  %1348 = icmp eq ptr %1347, null
  br i1 %1348, label %1434, label %1349

1349:                                             ; preds = %1342, %1362
  %1350 = phi ptr [ %1363, %1362 ], [ %1347, %1342 ]
  %1351 = getelementptr inbounds %struct.wmKeyMap, ptr %1350, i64 0, i32 5
  %1352 = load i16, ptr %1351, align 8, !tbaa !77
  %1353 = icmp eq i16 %1352, 13
  br i1 %1353, label %1354, label %1362

1354:                                             ; preds = %1349
  %1355 = getelementptr inbounds %struct.wmKeyMap, ptr %1350, i64 0, i32 6
  %1356 = load i16, ptr %1355, align 2, !tbaa !78
  %1357 = icmp eq i16 %1356, 0
  br i1 %1357, label %1358, label %1362

1358:                                             ; preds = %1354
  %1359 = getelementptr inbounds %struct.wmKeyMap, ptr %1350, i64 0, i32 4
  %1360 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.85, ptr noundef nonnull dereferenceable(1) %1359, i64 noundef 64) #13
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1434, label %1362

1362:                                             ; preds = %1358, %1354, %1349
  %1363 = load ptr, ptr %1350, align 8, !tbaa !40
  %1364 = icmp eq ptr %1363, null
  br i1 %1364, label %1434, label %1349, !llvm.loop !79

1365:                                             ; preds = %1270
  %1366 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1367 = getelementptr inbounds %struct.wmWindowManager, ptr %1366, i64 0, i32 16
  %1368 = load ptr, ptr %1367, align 8, !tbaa !66
  %1369 = getelementptr inbounds %struct.wmKeyConfig, ptr %1368, i64 0, i32 4
  %1370 = load ptr, ptr %1369, align 8, !tbaa !40
  %1371 = icmp eq ptr %1370, null
  br i1 %1371, label %1434, label %1372

1372:                                             ; preds = %1365, %1385
  %1373 = phi ptr [ %1386, %1385 ], [ %1370, %1365 ]
  %1374 = getelementptr inbounds %struct.wmKeyMap, ptr %1373, i64 0, i32 5
  %1375 = load i16, ptr %1374, align 8, !tbaa !77
  %1376 = icmp eq i16 %1375, 6
  br i1 %1376, label %1377, label %1385

1377:                                             ; preds = %1372
  %1378 = getelementptr inbounds %struct.wmKeyMap, ptr %1373, i64 0, i32 6
  %1379 = load i16, ptr %1378, align 2, !tbaa !78
  %1380 = icmp eq i16 %1379, 0
  br i1 %1380, label %1381, label %1385

1381:                                             ; preds = %1377
  %1382 = getelementptr inbounds %struct.wmKeyMap, ptr %1373, i64 0, i32 4
  %1383 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.73, ptr noundef nonnull dereferenceable(1) %1382, i64 noundef 64) #13
  %1384 = icmp eq i32 %1383, 0
  br i1 %1384, label %1434, label %1385

1385:                                             ; preds = %1381, %1377, %1372
  %1386 = load ptr, ptr %1373, align 8, !tbaa !40
  %1387 = icmp eq ptr %1386, null
  br i1 %1387, label %1434, label %1372, !llvm.loop !79

1388:                                             ; preds = %1270
  %1389 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1390 = getelementptr inbounds %struct.wmWindowManager, ptr %1389, i64 0, i32 16
  %1391 = load ptr, ptr %1390, align 8, !tbaa !66
  %1392 = getelementptr inbounds %struct.wmKeyConfig, ptr %1391, i64 0, i32 4
  %1393 = load ptr, ptr %1392, align 8, !tbaa !40
  %1394 = icmp eq ptr %1393, null
  br i1 %1394, label %1434, label %1395

1395:                                             ; preds = %1388, %1408
  %1396 = phi ptr [ %1409, %1408 ], [ %1393, %1388 ]
  %1397 = getelementptr inbounds %struct.wmKeyMap, ptr %1396, i64 0, i32 5
  %1398 = load i16, ptr %1397, align 8, !tbaa !77
  %1399 = icmp eq i16 %1398, 16
  br i1 %1399, label %1400, label %1408

1400:                                             ; preds = %1395
  %1401 = getelementptr inbounds %struct.wmKeyMap, ptr %1396, i64 0, i32 6
  %1402 = load i16, ptr %1401, align 2, !tbaa !78
  %1403 = icmp eq i16 %1402, 0
  br i1 %1403, label %1404, label %1408

1404:                                             ; preds = %1400
  %1405 = getelementptr inbounds %struct.wmKeyMap, ptr %1396, i64 0, i32 4
  %1406 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.75, ptr noundef nonnull dereferenceable(1) %1405, i64 noundef 64) #13
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1434, label %1408

1408:                                             ; preds = %1404, %1400, %1395
  %1409 = load ptr, ptr %1396, align 8, !tbaa !40
  %1410 = icmp eq ptr %1409, null
  br i1 %1410, label %1434, label %1395, !llvm.loop !79

1411:                                             ; preds = %1270
  %1412 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %1413 = getelementptr inbounds %struct.wmWindowManager, ptr %1412, i64 0, i32 16
  %1414 = load ptr, ptr %1413, align 8, !tbaa !66
  %1415 = getelementptr inbounds %struct.wmKeyConfig, ptr %1414, i64 0, i32 4
  %1416 = load ptr, ptr %1415, align 8, !tbaa !40
  %1417 = icmp eq ptr %1416, null
  br i1 %1417, label %1434, label %1418

1418:                                             ; preds = %1411, %1431
  %1419 = phi ptr [ %1432, %1431 ], [ %1416, %1411 ]
  %1420 = getelementptr inbounds %struct.wmKeyMap, ptr %1419, i64 0, i32 5
  %1421 = load i16, ptr %1420, align 8, !tbaa !77
  %1422 = icmp eq i16 %1421, 8
  br i1 %1422, label %1423, label %1431

1423:                                             ; preds = %1418
  %1424 = getelementptr inbounds %struct.wmKeyMap, ptr %1419, i64 0, i32 6
  %1425 = load i16, ptr %1424, align 2, !tbaa !78
  %1426 = icmp eq i16 %1425, 0
  br i1 %1426, label %1427, label %1431

1427:                                             ; preds = %1423
  %1428 = getelementptr inbounds %struct.wmKeyMap, ptr %1419, i64 0, i32 4
  %1429 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.91, ptr noundef nonnull dereferenceable(1) %1428, i64 noundef 64) #13
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1434, label %1431

1431:                                             ; preds = %1427, %1423, %1418
  %1432 = load ptr, ptr %1419, align 8, !tbaa !40
  %1433 = icmp eq ptr %1432, null
  br i1 %1433, label %1434, label %1418, !llvm.loop !79

1434:                                             ; preds = %1431, %1427, %1408, %1404, %1385, %1381, %1362, %1358, %1339, %1335, %1316, %1312, %1293, %1289, %1264, %1260, %1235, %1231, %1206, %1202, %1177, %1173, %1148, %1144, %1119, %1115, %1090, %1086, %1061, %1057, %1032, %1028, %1003, %999, %974, %970, %945, %941, %919, %915, %890, %886, %861, %857, %832, %828, %806, %802, %777, %773, %748, %744, %719, %715, %696, %692, %673, %669, %645, %641, %619, %615, %593, %589, %567, %563, %541, %537, %482, %478, %459, %455, %431, %427, %402, %398, %373, %369, %311, %307, %252, %248, %217, %213, %200, %196, %171, %167, %142, %138, %113, %109, %87, %83, %61, %57, %26, %22, %1411, %1388, %1365, %1342, %1319, %1296, %1273, %1241, %1212, %1183, %1154, %1125, %1096, %1067, %1038, %1009, %980, %951, %925, %896, %867, %838, %812, %783, %754, %725, %699, %676, %653, %625, %599, %573, %547, %521, %462, %439, %411, %382, %353, %291, %232, %203, %186, %148, %122, %93, %67, %41, %6, %350, %346, %343, %518, %514, %511, %1270, %1267, %651, %437, %281, %284, %288
  %1435 = phi ptr [ %282, %288 ], [ %282, %284 ], [ null, %281 ], [ %344, %350 ], [ %344, %346 ], [ null, %343 ], [ null, %437 ], [ %512, %518 ], [ %512, %514 ], [ null, %511 ], [ null, %651 ], [ null, %1270 ], [ null, %1267 ], [ null, %6 ], [ null, %41 ], [ null, %67 ], [ null, %93 ], [ null, %122 ], [ null, %148 ], [ null, %186 ], [ null, %203 ], [ null, %232 ], [ null, %291 ], [ null, %353 ], [ null, %382 ], [ null, %411 ], [ null, %439 ], [ null, %462 ], [ null, %521 ], [ null, %547 ], [ null, %573 ], [ null, %599 ], [ null, %625 ], [ null, %653 ], [ null, %676 ], [ null, %699 ], [ null, %725 ], [ null, %754 ], [ null, %783 ], [ null, %812 ], [ null, %838 ], [ null, %867 ], [ null, %896 ], [ null, %925 ], [ null, %951 ], [ null, %980 ], [ null, %1009 ], [ null, %1038 ], [ null, %1067 ], [ null, %1096 ], [ null, %1125 ], [ null, %1154 ], [ null, %1183 ], [ null, %1212 ], [ null, %1241 ], [ null, %1273 ], [ null, %1296 ], [ null, %1319 ], [ null, %1342 ], [ null, %1365 ], [ null, %1388 ], [ null, %1411 ], [ %14, %22 ], [ null, %26 ], [ %49, %57 ], [ null, %61 ], [ %75, %83 ], [ null, %87 ], [ %101, %109 ], [ null, %113 ], [ %130, %138 ], [ null, %142 ], [ %158, %167 ], [ null, %171 ], [ %188, %196 ], [ null, %200 ], [ %205, %213 ], [ null, %217 ], [ %240, %248 ], [ null, %252 ], [ %299, %307 ], [ null, %311 ], [ %361, %369 ], [ null, %373 ], [ %390, %398 ], [ null, %402 ], [ %419, %427 ], [ null, %431 ], [ %447, %455 ], [ null, %459 ], [ %470, %478 ], [ null, %482 ], [ %529, %537 ], [ null, %541 ], [ %555, %563 ], [ null, %567 ], [ %581, %589 ], [ null, %593 ], [ %607, %615 ], [ null, %619 ], [ %633, %641 ], [ null, %645 ], [ %661, %669 ], [ null, %673 ], [ %684, %692 ], [ null, %696 ], [ %707, %715 ], [ null, %719 ], [ %735, %744 ], [ null, %748 ], [ %764, %773 ], [ null, %777 ], [ %793, %802 ], [ null, %806 ], [ %820, %828 ], [ null, %832 ], [ %848, %857 ], [ null, %861 ], [ %877, %886 ], [ null, %890 ], [ %906, %915 ], [ null, %919 ], [ %933, %941 ], [ null, %945 ], [ %961, %970 ], [ null, %974 ], [ %990, %999 ], [ null, %1003 ], [ %1019, %1028 ], [ null, %1032 ], [ %1048, %1057 ], [ null, %1061 ], [ %1077, %1086 ], [ null, %1090 ], [ %1106, %1115 ], [ null, %1119 ], [ %1135, %1144 ], [ null, %1148 ], [ %1164, %1173 ], [ null, %1177 ], [ %1193, %1202 ], [ null, %1206 ], [ %1222, %1231 ], [ null, %1235 ], [ %1251, %1260 ], [ null, %1264 ], [ %1281, %1289 ], [ null, %1293 ], [ %1304, %1312 ], [ null, %1316 ], [ %1327, %1335 ], [ null, %1339 ], [ %1350, %1358 ], [ null, %1362 ], [ %1373, %1381 ], [ null, %1385 ], [ %1396, %1404 ], [ null, %1408 ], [ %1419, %1427 ], [ null, %1431 ]
  ret ptr %1435
}

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #1

declare i32 @CTX_data_mode_enum(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @WM_bool_as_string(i8 noundef zeroext %0) local_unnamed_addr #10 {
  %2 = icmp eq i8 %0, 0
  %3 = select i1 %2, ptr @.str.104, ptr @.str.103
  ret ptr %3
}

declare void @WM_operator_properties_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_operator_properties_sanitize(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wm_keymap_item_find_props(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %11 = icmp eq ptr %8, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 28
  %14 = tail call fastcc ptr @wm_keymap_item_find_handlers(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %1, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6)
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ null, %7 ]
  %17 = icmp ne ptr %9, null
  %18 = icmp eq ptr %16, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 21
  %22 = tail call fastcc ptr @wm_keymap_item_find_handlers(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %1, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6)
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi ptr [ %22, %20 ], [ %16, %15 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  switch i32 %2, label %61 [
    i32 7, label %27
    i32 1, label %27
    i32 8, label %39
    i32 2, label %39
    i32 9, label %50
    i32 3, label %50
  ]

27:                                               ; preds = %26, %26
  br i1 %17, label %28, label %67

28:                                               ; preds = %27
  %29 = icmp eq ptr %10, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %32 = load i16, ptr %31, align 2, !tbaa !125
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30, %28
  %35 = tail call ptr @BKE_area_find_region_type(ptr noundef nonnull %9, i32 noundef 0) #12
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %10, %30 ], [ %35, %34 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %67, label %63

39:                                               ; preds = %26, %26
  %40 = icmp eq ptr %10, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %43 = load i16, ptr %42, align 2, !tbaa !125
  %44 = icmp eq i16 %43, 2
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %39
  %46 = tail call ptr @BKE_area_find_region_type(ptr noundef %9, i32 noundef 2) #12
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %10, %41 ], [ %46, %45 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %63

50:                                               ; preds = %26, %26
  %51 = icmp eq ptr %10, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %54 = load i16, ptr %53, align 2, !tbaa !125
  %55 = icmp eq i16 %54, 7
  br i1 %55, label %58, label %56

56:                                               ; preds = %52, %50
  %57 = tail call ptr @BKE_area_find_region_type(ptr noundef %9, i32 noundef 7) #12
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi ptr [ %10, %52 ], [ %57, %56 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %63

61:                                               ; preds = %26
  %62 = icmp eq ptr %10, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %61, %58, %47, %36
  %64 = phi ptr [ %37, %36 ], [ %48, %47 ], [ %59, %58 ], [ %10, %61 ]
  %65 = getelementptr inbounds %struct.ARegion, ptr %64, i64 0, i32 26
  %66 = tail call fastcc ptr @wm_keymap_item_find_handlers(ptr noundef %0, ptr noundef nonnull %65, ptr noundef %1, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6)
  br label %67

67:                                               ; preds = %63, %36, %27, %58, %61, %47, %23
  %68 = phi ptr [ null, %36 ], [ null, %27 ], [ null, %47 ], [ null, %58 ], [ null, %61 ], [ %24, %23 ], [ %66, %63 ]
  ret ptr %68
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @WM_operator_properties_default(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_property_unset(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wm_keymap_item_find_handlers(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %10 = load ptr, ptr %1, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %121, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %9, i64 0, i32 16
  %14 = icmp eq i8 %5, 0
  %15 = icmp eq ptr %3, null
  br label %16

16:                                               ; preds = %12, %118
  %17 = phi ptr [ %10, %12 ], [ %119, %118 ]
  %18 = getelementptr inbounds %struct.wmEventHandler, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = icmp eq ptr %19, null
  br i1 %20, label %51, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %13, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.wmKeyConfig, ptr %22, i64 0, i32 4
  %24 = getelementptr inbounds %struct.wmKeyMap, ptr %19, i64 0, i32 4
  %25 = getelementptr inbounds %struct.wmKeyMap, ptr %19, i64 0, i32 5
  %26 = load i16, ptr %25, align 8, !tbaa !77
  %27 = getelementptr inbounds %struct.wmKeyMap, ptr %19, i64 0, i32 6
  %28 = load i16, ptr %27, align 2, !tbaa !78
  %29 = load ptr, ptr %23, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %21, %44
  %32 = phi ptr [ %45, %44 ], [ %29, %21 ]
  %33 = getelementptr inbounds %struct.wmKeyMap, ptr %32, i64 0, i32 5
  %34 = load i16, ptr %33, align 8, !tbaa !77
  %35 = icmp eq i16 %34, %26
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.wmKeyMap, ptr %32, i64 0, i32 6
  %38 = load i16, ptr %37, align 2, !tbaa !78
  %39 = icmp eq i16 %38, %28
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.wmKeyMap, ptr %32, i64 0, i32 4
  %42 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %41, i64 noundef 64) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40, %36, %31
  %45 = load ptr, ptr %32, align 8, !tbaa !40
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %31, !llvm.loop !79

47:                                               ; preds = %44, %40, %21
  %48 = phi ptr [ null, %21 ], [ %32, %40 ], [ null, %44 ]
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr %19, ptr %48
  br label %51

51:                                               ; preds = %16, %47
  %52 = phi ptr [ null, %16 ], [ %50, %47 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %118, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.wmKeyMap, ptr %52, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !101
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = call i32 %56(ptr noundef %0) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %118, label %61

61:                                               ; preds = %58, %54
  %62 = getelementptr inbounds %struct.wmKeyMap, ptr %52, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !40
  %64 = icmp eq ptr %63, null
  br i1 %64, label %118, label %65

65:                                               ; preds = %61, %115
  %66 = phi ptr [ %116, %115 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.wmKeyMapItem, ptr %66, i64 0, i32 13
  %68 = load i16, ptr %67, align 8, !tbaa !58
  %69 = and i16 %68, 1
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %115

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.wmKeyMapItem, ptr %66, i64 0, i32 2
  %73 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(1) %2) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %115

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.wmKeyMapItem, ptr %66, i64 0, i32 6
  %77 = load i16, ptr %76, align 2, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  store ptr null, ptr %8, align 8, !tbaa !40
  %78 = sext i16 %77 to i32
  %79 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull @event_type_items, i32 noundef %78, ptr noundef nonnull %8) #12
  %80 = icmp eq i8 %79, 0
  %81 = load ptr, ptr %8, align 8
  %82 = select i1 %80, ptr @.str.6, ptr %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  %83 = load i8, ptr %82, align 1, !tbaa !51
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %115, label %85

85:                                               ; preds = %75
  br i1 %14, label %101, label %86

86:                                               ; preds = %85
  %87 = load i16, ptr %76, align 2, !tbaa !42
  %88 = add i16 %87, -32
  %89 = icmp ult i16 %88, 224
  %90 = add i16 %87, -300
  %91 = icmp ult i16 %90, 20
  %92 = or i1 %89, %91
  %93 = add i16 %87, -1
  %94 = icmp ult i16 %93, 19
  %95 = or i1 %94, %92
  %96 = add i16 %87, -400
  %97 = icmp ult i16 %96, 39
  %98 = or i1 %97, %95
  %99 = freeze i1 %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %86
  switch i16 %87, label %101 [
    i16 218, label %115
    i16 217, label %115
    i16 216, label %115
    i16 215, label %115
    i16 214, label %115
    i16 213, label %115
    i16 212, label %115
    i16 173, label %115
    i16 172, label %115
    i16 171, label %115
  ]

101:                                              ; preds = %100, %85
  br i1 %15, label %113, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.wmKeyMapItem, ptr %66, i64 0, i32 17
  %104 = load ptr, ptr %103, align 8, !tbaa !34
  %105 = icmp eq ptr %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.PointerRNA, ptr %104, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !80
  %109 = call zeroext i8 @IDP_EqualsProperties_ex(ptr noundef nonnull %3, ptr noundef %108, i8 noundef zeroext %4) #12
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = icmp eq ptr %6, null
  br i1 %112, label %126, label %123

113:                                              ; preds = %101
  %114 = icmp eq ptr %6, null
  br i1 %114, label %126, label %123

115:                                              ; preds = %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %86, %71, %75, %102, %106, %65
  %116 = load ptr, ptr %66, align 8, !tbaa !40
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %65, !llvm.loop !132

118:                                              ; preds = %115, %61, %51, %58
  %119 = load ptr, ptr %17, align 8, !tbaa !40
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %16, !llvm.loop !133

121:                                              ; preds = %118, %7
  %122 = icmp eq ptr %6, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %121, %113, %111
  %124 = phi ptr [ %52, %111 ], [ %52, %113 ], [ null, %121 ]
  %125 = phi ptr [ %66, %111 ], [ %66, %113 ], [ null, %121 ]
  store ptr %124, ptr %6, align 8, !tbaa !40
  br label %126

126:                                              ; preds = %123, %121, %113, %111
  %127 = phi ptr [ %66, %111 ], [ %66, %113 ], [ null, %121 ], [ %125, %123 ]
  ret ptr %127
}

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @IDP_EqualsProperties_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_keymap_item_properties_update_ot(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !51
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 3
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef nonnull %2) #12
  %11 = load ptr, ptr %6, align 8, !tbaa !34
  tail call void @WM_operator_properties_sanitize(ptr noundef %11, i8 noundef zeroext 1) #12
  br label %29

12:                                               ; preds = %5
  %13 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %2, i8 noundef zeroext 0) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %13, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = load ptr, ptr %6, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.PointerRNA, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !134
  %21 = icmp eq ptr %17, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  tail call void @WM_operator_properties_create_ptr(ptr noundef %18, ptr noundef nonnull %13) #12
  %23 = load ptr, ptr %6, align 8, !tbaa !34
  tail call void @WM_operator_properties_sanitize(ptr noundef %23, i8 noundef zeroext 1) #12
  br label %29

24:                                               ; preds = %12
  %25 = load ptr, ptr %6, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %28(ptr noundef nonnull %25) #12
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %29

29:                                               ; preds = %22, %15, %27, %24, %1, %9
  ret void
}

declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_struct_equals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_enum_value_from_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 176}
!35 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!35, !36, i64 80}
!42 = !{!35, !39, i64 154}
!43 = !{!44, !46, i64 164}
!44 = !{!"wmKeyConfig", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !45, i64 144, !46, i64 160, !46, i64 164}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!"int", !37, i64 0}
!47 = !{!48, !36, i64 296}
!48 = !{!"wmWindowManager", !49, i64 0, !36, i64 120, !36, i64 128, !45, i64 136, !46, i64 152, !39, i64 156, !39, i64 158, !45, i64 160, !45, i64 176, !50, i64 192, !45, i64 232, !45, i64 248, !45, i64 264, !45, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !45, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!49 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !46, i64 100, !46, i64 104, !46, i64 108, !36, i64 112}
!50 = !{!"ReportList", !45, i64 0, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !36, i64 32}
!51 = !{!37, !37, i64 0}
!52 = !{!44, !36, i64 144}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!57, !39, i64 116}
!57 = !{!"wmKeyMap", !36, i64 0, !36, i64 8, !45, i64 16, !45, i64 32, !37, i64 48, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !36, i64 120, !36, i64 128}
!58 = !{!35, !39, i64 168}
!59 = !{!60, !36, i64 16}
!60 = !{!"wmKeyMapDiffItem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!61 = !{!60, !36, i64 24}
!62 = distinct !{!62, !54, !55}
!63 = distinct !{!63, !54, !55}
!64 = !{!65, !37, i64 2081}
!65 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !45, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !46, i64 2096, !46, i64 2100, !37, i64 2104, !46, i64 2108, !46, i64 2112, !37, i64 2116}
!66 = !{!48, !36, i64 312}
!67 = !{!48, !36, i64 304}
!68 = distinct !{!68, !54, !55}
!69 = distinct !{!69, !54, !55}
!70 = distinct !{!70, !54, !55}
!71 = distinct !{!71, !54, !55}
!72 = distinct !{!72, !54, !55}
!73 = distinct !{!73, !54, !55}
!74 = distinct !{!74, !54, !55}
!75 = distinct !{!75, !54, !55}
!76 = distinct !{!76, !54, !55}
!77 = !{!57, !39, i64 112}
!78 = !{!57, !39, i64 114}
!79 = distinct !{!79, !54, !55}
!80 = !{!81, !36, i64 16}
!81 = !{!"PointerRNA", !82, i64 0, !36, i64 8, !36, i64 16}
!82 = !{!"", !36, i64 0}
!83 = !{!57, !39, i64 118}
!84 = !{!35, !39, i64 172}
!85 = distinct !{!85, !54, !55}
!86 = distinct !{!86, !54, !55}
!87 = !{!35, !39, i64 152}
!88 = !{!35, !39, i64 156}
!89 = !{!35, !39, i64 158}
!90 = !{!35, !39, i64 160}
!91 = !{!35, !39, i64 162}
!92 = !{!35, !39, i64 164}
!93 = !{!35, !39, i64 166}
!94 = !{!35, !39, i64 170}
!95 = distinct !{!95, !54, !55}
!96 = distinct !{!96, !54, !55}
!97 = distinct !{!97, !54, !55}
!98 = !{!57, !36, i64 32}
!99 = distinct !{!99, !54, !55}
!100 = !{!57, !36, i64 128}
!101 = !{!57, !36, i64 120}
!102 = !{!46, !46, i64 0}
!103 = distinct !{!103, !54, !55}
!104 = distinct !{!104, !54, !55}
!105 = distinct !{!105, !54, !55}
!106 = distinct !{!106, !54, !55}
!107 = distinct !{!107, !54, !55}
!108 = distinct !{!108, !54, !55}
!109 = !{!65, !36, i64 0}
!110 = !{!111, !36, i64 1552}
!111 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !112, i64 1048, !37, i64 1056, !39, i64 1072, !36, i64 1080, !45, i64 1088, !45, i64 1104, !45, i64 1120, !45, i64 1136, !45, i64 1152, !45, i64 1168, !45, i64 1184, !45, i64 1200, !45, i64 1216, !45, i64 1232, !45, i64 1248, !45, i64 1264, !45, i64 1280, !45, i64 1296, !45, i64 1312, !45, i64 1328, !45, i64 1344, !45, i64 1360, !45, i64 1376, !45, i64 1392, !45, i64 1408, !45, i64 1424, !45, i64 1440, !45, i64 1456, !45, i64 1472, !45, i64 1488, !45, i64 1504, !45, i64 1520, !45, i64 1536, !45, i64 1552, !45, i64 1568, !45, i64 1584, !45, i64 1600, !45, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!112 = !{!"long", !37, i64 0}
!113 = distinct !{!113, !54, !55}
!114 = distinct !{!114, !54, !55}
!115 = !{!116, !36, i64 128}
!116 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !45, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !117, i64 152, !39, i64 184}
!117 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!118 = !{!116, !36, i64 88}
!119 = !{!116, !36, i64 104}
!120 = distinct !{!120, !54, !55}
!121 = distinct !{!121, !54, !55}
!122 = !{!123, !46, i64 32}
!123 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !45, i64 16, !46, i64 32, !124, i64 36, !37, i64 40}
!124 = !{!"float", !37, i64 0}
!125 = !{!126, !39, i64 214}
!126 = !{!"ARegion", !36, i64 0, !36, i64 8, !127, i64 16, !129, i64 176, !129, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !124, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!127 = !{!"View2D", !128, i64 0, !128, i64 16, !129, i64 32, !129, i64 48, !129, i64 64, !37, i64 80, !37, i64 88, !124, i64 96, !124, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!128 = !{!"rctf", !124, i64 0, !124, i64 4, !124, i64 8, !124, i64 12}
!129 = !{!"rcti", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!130 = !{!131, !36, i64 24}
!131 = !{!"wmEventHandler", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!132 = distinct !{!132, !54, !55}
!133 = distinct !{!133, !54, !55}
!134 = !{!81, !36, i64 8}
