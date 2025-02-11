; ModuleID = 'blender/source/blender/editors/space_sequencer/sequencer_add.c'
source_filename = "blender/source/blender/editors/space_sequencer/sequencer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.SeqLoadInfo = type { i32, i32, i32, i32, i32, i32, [1024 x i8], [64 x i8], ptr, i32, i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.StripElem = type { [256 x i8], i32, i32 }
%struct.SeqEffectHandle = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"Add Scene Strip\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_scene_strip_add\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Add a strip to the sequencer using a blender scene as a source\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Add MovieClip Strip\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"SEQUENCER_OT_movieclip_strip_add\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Add a movieclip strip to the sequencer\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Clip\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Add Mask Strip\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"SEQUENCER_OT_mask_strip_add\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Add a mask strip to the sequencer\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Add Movie Strip\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_movie_strip_add\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Add a movie strip to the sequencer\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Load sound with the movie\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Add Sound Strip\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_sound_strip_add\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Add a sound strip to the sequencer\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Cache\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Cache the sound in memory\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Add Image Strip\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_image_strip_add\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"Add an image or image sequence to the sequencer\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Add Effect Strip\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"SEQUENCER_OT_effect_strip_add\00", align 1
@.str.33 = private unnamed_addr constant [75 x i8] c"Add an effect to the sequencer, most are applied on top of existing strips\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@sequencer_prop_effect_types = external global [0 x %struct.EnumPropertyItem], align 8
@.str.35 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Sequencer effect type\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.39 = private unnamed_addr constant [67 x i8] c"Initialize the strip with this color (only used when type='COLOR')\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.45 = private unnamed_addr constant [16 x i8] c"Scene not found\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"replace_sel\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"overlap\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Start Frame\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"Start frame of the sequence strip\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"End Frame\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"End frame for the color strip\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"Channel\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"Channel to place this strip into\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"Replace Selection\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"Replace the current selection\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"Allow Overlap\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"Don't correct overlap on new sequence strips\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"Movie clip not found\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"Mask not found\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"File '%s' could not be loaded\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"relative_path\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.65 = private unnamed_addr constant [32 x i8] c"Start and end frame are not set\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_scene_strip_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_scene_strip_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_scene_strip_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  tail call fastcc void @sequencer_generic_props__internal(ptr noundef nonnull %0, i32 noundef 1) #7
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @RNA_scene_itemf) #8
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sequencer_add_scene_strip_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.3) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @WM_enum_search_invoke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #8
  br label %12

10:                                               ; preds = %3
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 2) #7
  %11 = tail call i32 @sequencer_add_scene_strip_exec(ptr noundef %0, ptr noundef nonnull %1) #7, !range !23
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %11, %10 ], [ %9, %8 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_scene_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 1) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.41) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !21
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.40) #8
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %5, align 8, !tbaa !21
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.3) #8
  %14 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %13) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.45) #8
  br label %44

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !tbaa !25
  %21 = tail call ptr @BKE_sequence_alloc(ptr noundef %20, i32 noundef %7, i32 noundef %9) #8
  %22 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 6
  store i32 2, ptr %22, align 4, !tbaa !30
  %23 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 46
  store i32 8, ptr %23, align 8, !tbaa !32
  %24 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 26
  store ptr %14, ptr %24, align 8, !tbaa !33
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = tail call ptr %25(i64 noundef 904, ptr noundef nonnull @.str.46) #8
  %27 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 24
  store ptr %26, ptr %27, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !36
  %30 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !56
  %32 = add i32 %29, 1
  %33 = sub i32 %32, %31
  %34 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 7
  store i32 %33, ptr %34, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.Strip, ptr %26, i64 0, i32 2
  store i32 1, ptr %35, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 4, i64 2
  %37 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4, i64 2
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %36, ptr noundef nonnull %37, i64 noundef 62) #8
  %39 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %39, ptr noundef %21) #8
  %40 = load i32, ptr %34, align 8, !tbaa !57
  %41 = add nsw i32 %40, %7
  %42 = tail call ptr @sound_scene_add_scene_sound(ptr noundef %3, ptr noundef %21, i32 noundef %7, i32 noundef %41, i32 noundef 0) #8
  %43 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 38
  store ptr %42, ptr %43, align 8, !tbaa !60
  tail call void @BKE_sequence_calc_disp(ptr noundef %3, ptr noundef %21) #8
  tail call void @BKE_sequencer_sort(ptr noundef %3) #8
  tail call fastcc void @sequencer_add_apply_replace_sel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %21) #7
  tail call fastcc void @sequencer_add_apply_overlap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %21) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #8
  br label %44

44:                                               ; preds = %19, %16
  %45 = phi i32 [ 2, %16 ], [ 4, %19 ]
  ret i32 %45
}

; Function Attrs: optsize
declare i32 @ED_operator_sequencer_active_editable(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sequencer_generic_props__internal(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = tail call ptr @RNA_def_int(ptr noundef %7, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef -2147483648, i32 noundef 2147483647) #8
  br label %9

9:                                                ; preds = %5, %2
  %10 = and i32 %1, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef -2147483648, i32 noundef 2147483647) #8
  br label %16

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = tail call ptr @RNA_def_int(ptr noundef %18, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 1, i32 noundef 32, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 32) #8
  %20 = load ptr, ptr %17, align 8, !tbaa !19
  %21 = tail call ptr @RNA_def_boolean(ptr noundef %20, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #8
  %22 = load ptr, ptr %17, align 8, !tbaa !19
  %23 = tail call ptr @RNA_def_boolean(ptr noundef %22, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #8
  tail call void @RNA_def_property_flag(ptr noundef %23, i32 noundef 524288) #8
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_scene_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_movieclip_strip_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_movieclip_strip_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_movieclip_strip_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  tail call fastcc void @sequencer_generic_props__internal(ptr noundef nonnull %0, i32 noundef 1) #7
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @RNA_movieclip_itemf) #8
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sequencer_add_movieclip_strip_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.9) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @WM_enum_search_invoke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #8
  br label %12

10:                                               ; preds = %3
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 6) #7
  %11 = tail call i32 @sequencer_add_movieclip_strip_exec(ptr noundef %0, ptr noundef nonnull %1) #7, !range !23
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %11, %10 ], [ %9, %8 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_movieclip_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 1) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.41) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !21
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.40) #8
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 42
  %12 = load ptr, ptr %5, align 8, !tbaa !21
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.9) #8
  %14 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %13) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.59) #8
  br label %40

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !tbaa !25
  %21 = tail call ptr @BKE_sequence_alloc(ptr noundef %20, i32 noundef %7, i32 noundef %9) #8
  %22 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 6
  store i32 6, ptr %22, align 4, !tbaa !30
  %23 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 46
  store i32 8, ptr %23, align 8, !tbaa !32
  %24 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 28
  store ptr %14, ptr %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, ptr %25, align 4, !tbaa !62
  br label %29

29:                                               ; preds = %28, %19
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %31 = tail call ptr %30(i64 noundef 904, ptr noundef nonnull @.str.46) #8
  %32 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 24
  store ptr %31, ptr %32, align 8, !tbaa !35
  %33 = tail call i32 @BKE_movieclip_get_duration(ptr noundef nonnull %14) #8
  %34 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 7
  store i32 %33, ptr %34, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.Strip, ptr %31, i64 0, i32 2
  store i32 1, ptr %35, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 4, i64 2
  %37 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4, i64 2
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %36, ptr noundef nonnull %37, i64 noundef 62) #8
  %39 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %39, ptr noundef nonnull %21) #8
  tail call void @BKE_sequence_calc_disp(ptr noundef %3, ptr noundef nonnull %21) #8
  tail call void @BKE_sequencer_sort(ptr noundef %3) #8
  tail call fastcc void @sequencer_add_apply_replace_sel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %21) #7
  tail call fastcc void @sequencer_add_apply_overlap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %21) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #8
  br label %40

40:                                               ; preds = %29, %16
  %41 = phi i32 [ 2, %16 ], [ 4, %29 ]
  ret i32 %41
}

; Function Attrs: optsize
declare ptr @RNA_movieclip_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_mask_strip_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_mask_strip_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_mask_strip_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  tail call fastcc void @sequencer_generic_props__internal(ptr noundef nonnull %0, i32 noundef 1) #7
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @RNA_mask_itemf) #8
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sequencer_add_mask_strip_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.14) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @WM_enum_search_invoke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #8
  br label %12

10:                                               ; preds = %3
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 7) #7
  %11 = tail call i32 @sequencer_add_mask_strip_exec(ptr noundef %0, ptr noundef nonnull %1) #7, !range !23
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %11, %10 ], [ %9, %8 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_mask_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 1) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.41) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !21
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.40) #8
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 43
  %12 = load ptr, ptr %5, align 8, !tbaa !21
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.14) #8
  %14 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %13) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.60) #8
  br label %40

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !tbaa !25
  %21 = tail call ptr @BKE_sequence_alloc(ptr noundef %20, i32 noundef %7, i32 noundef %9) #8
  %22 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 6
  store i32 7, ptr %22, align 4, !tbaa !30
  %23 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 46
  store i32 8, ptr %23, align 8, !tbaa !32
  %24 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 29
  store ptr %14, ptr %24, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !72
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, ptr %25, align 4, !tbaa !72
  br label %29

29:                                               ; preds = %28, %19
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %31 = tail call ptr %30(i64 noundef 904, ptr noundef nonnull @.str.46) #8
  %32 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 24
  store ptr %31, ptr %32, align 8, !tbaa !35
  %33 = tail call i32 @BKE_mask_get_duration(ptr noundef nonnull %14) #8
  %34 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 7
  store i32 %33, ptr %34, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.Strip, ptr %31, i64 0, i32 2
  store i32 1, ptr %35, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 4, i64 2
  %37 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4, i64 2
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %36, ptr noundef nonnull %37, i64 noundef 62) #8
  %39 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %39, ptr noundef nonnull %21) #8
  tail call void @BKE_sequence_calc_disp(ptr noundef %3, ptr noundef nonnull %21) #8
  tail call void @BKE_sequencer_sort(ptr noundef %3) #8
  tail call fastcc void @sequencer_add_apply_replace_sel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %21) #7
  tail call fastcc void @sequencer_add_apply_overlap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %21) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #8
  br label %40

40:                                               ; preds = %29, %16
  %41 = phi i32 [ 2, %16 ], [ 4, %29 ]
  ret i32 %41
}

; Function Attrs: optsize
declare ptr @RNA_mask_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_movie_strip_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_movie_strip_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_movie_strip_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2080, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 25, i16 noundef signext 0) #8
  tail call fastcc void @sequencer_generic_props__internal(ptr noundef nonnull %0, i32 noundef 1) #7
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_movie_strip_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.61) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !21
  %10 = tail call i32 @RNA_collection_length(ptr noundef %9, ptr noundef nonnull @.str.61) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %3
  %13 = load ptr, ptr %4, align 8, !tbaa !21
  %14 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %13, ptr noundef nonnull @.str.43) #8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %8
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 3) #7
  %17 = tail call i32 @sequencer_add_movie_strip_exec(ptr noundef %0, ptr noundef nonnull %1) #7, !range !23
  br label %19

18:                                               ; preds = %12
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 3) #7
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 1, %18 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_movie_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @sequencer_add_generic_strip_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @BKE_sequencer_add_movie_strip) #7, !range !23
  ret i32 %3
}

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_sound_strip_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_sound_strip_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_sound_strip_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2304, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 25, i16 noundef signext 0) #8
  tail call fastcc void @sequencer_generic_props__internal(ptr noundef nonnull %0, i32 noundef 1) #7
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_sound_strip_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.61) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !21
  %10 = tail call i32 @RNA_collection_length(ptr noundef %9, ptr noundef nonnull @.str.61) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %3
  %13 = load ptr, ptr %4, align 8, !tbaa !21
  %14 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %13, ptr noundef nonnull @.str.43) #8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %8
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 4) #7
  %17 = tail call i32 @sequencer_add_sound_strip_exec(ptr noundef %0, ptr noundef nonnull %1) #7, !range !23
  br label %19

18:                                               ; preds = %12
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 4) #7
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 1, %18 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_sound_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @sequencer_add_generic_strip_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @BKE_sequencer_add_sound_strip) #7, !range !23
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_image_strip_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_image_strip_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_image_strip_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2064, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 19, i16 noundef signext 0) #8
  tail call fastcc void @sequencer_generic_props__internal(ptr noundef nonnull %0, i32 noundef 3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_image_strip_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.61) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !21
  %10 = tail call i32 @RNA_collection_length(ptr noundef %9, ptr noundef nonnull @.str.61) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 6, i32 noundef 0) #7
  %13 = tail call i32 @sequencer_add_image_strip_exec(ptr noundef %0, ptr noundef nonnull %1) #7, !range !23
  br label %15

14:                                               ; preds = %8, %3
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2, i32 noundef 0) #7
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 1, %14 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_image_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.SeqLoadInfo, align 8
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 1) #8
  call void @llvm.lifetime.start.p0(i64 1128, ptr nonnull %3) #9
  call fastcc void @seq_load_operator_info(ptr noundef nonnull %3, ptr noundef %1) #7
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = call ptr @RNA_struct_find_property(ptr noundef %9, ptr noundef nonnull @.str.61) #8
  %11 = call i32 @RNA_property_collection_length(ptr noundef %9, ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.SeqLoadInfo, ptr %3, i64 0, i32 5
  store i32 %11, ptr %12, align 4, !tbaa !74
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %56, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.SeqLoadInfo, ptr %3, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  call void @ED_sequencer_deselect_all(ptr noundef %6) #8
  br label %20

20:                                               ; preds = %19, %14
  %21 = load ptr, ptr %7, align 8, !tbaa !25
  %22 = call ptr @BKE_sequencer_add_image_strip(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %3) #8
  %23 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 24
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #9
  %27 = load ptr, ptr %8, align 8, !tbaa !21
  call void @RNA_collection_begin(ptr noundef %27, ptr noundef nonnull @.str.61, ptr noundef nonnull %4) #8
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !78
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi ptr [ %26, %31 ], [ %38, %33 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false), !tbaa.struct !82
  %35 = call ptr @RNA_string_get_alloc(ptr noundef nonnull %5, ptr noundef nonnull @.str.62, ptr noundef null, i32 noundef 0) #8
  %36 = call ptr @BLI_strncpy(ptr noundef %34, ptr noundef %35, i64 noundef 256) #8
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %37(ptr noundef %35) #8
  %38 = getelementptr inbounds %struct.StripElem, ptr %34, i64 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #8
  %39 = load i32, ptr %28, align 8, !tbaa !78
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %33, !llvm.loop !83

41:                                               ; preds = %33, %20
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #9
  %42 = load i32, ptr %12, align 4, !tbaa !74
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, ptr %3, align 8, !tbaa !85
  %46 = getelementptr inbounds %struct.SeqLoadInfo, ptr %3, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !86
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = sub nsw i32 %47, %45
  %51 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 12
  store i32 %50, ptr %51, align 4, !tbaa !87
  br label %52

52:                                               ; preds = %44, %49, %41
  call void @BKE_sequence_init_colorspace(ptr noundef %22) #8
  call void @BKE_sequence_calc_disp(ptr noundef %6, ptr noundef %22) #8
  call void @BKE_sequencer_sort(ptr noundef %6) #8
  %53 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 4
  %54 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 7
  %55 = call ptr @BLI_strncpy(ptr noundef nonnull %53, ptr noundef nonnull %54, i64 noundef 1024) #8
  call fastcc void @sequencer_add_apply_overlap(ptr noundef %0, ptr noundef %1, ptr noundef %22) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %6) #8
  br label %56

56:                                               ; preds = %2, %52
  %57 = phi i32 [ 4, %52 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1128, ptr nonnull %3) #9
  ret i32 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_effect_strip_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_effect_strip_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_effect_strip_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 0, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #8
  tail call fastcc void @sequencer_generic_props__internal(ptr noundef nonnull %0, i32 noundef 3) #7
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @sequencer_prop_effect_types, i32 noundef 8, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !19
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.37, i32 noundef 3, ptr noundef null, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_effect_strip_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.34) #8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !21
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.34) #8
  %11 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %10) #8
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 2, i32 10
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ -1, %3 ], [ %10, %8 ]
  %16 = phi i32 [ 2, %3 ], [ %13, %8 ]
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %16, i32 noundef %15) #7
  %17 = tail call i32 @sequencer_add_effect_strip_exec(ptr noundef %0, ptr noundef nonnull %1) #7, !range !23
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_add_effect_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.SeqEffectHandle, align 8
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %9 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %8, i8 noundef zeroext 1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.41) #8
  %13 = load ptr, ptr %10, align 8, !tbaa !21
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.42) #8
  %15 = load ptr, ptr %10, align 8, !tbaa !21
  %16 = tail call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.40) #8
  %17 = load ptr, ptr %10, align 8, !tbaa !21
  %18 = tail call i32 @RNA_enum_get(ptr noundef %17, ptr noundef nonnull @.str.34) #8
  %19 = call i32 @seq_effect_find_selected(ptr noundef %8, ptr noundef null, i32 noundef %18, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !24
  %24 = load ptr, ptr %6, align 8, !tbaa !34
  call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef %24) #8
  br label %97

25:                                               ; preds = %2
  %26 = load ptr, ptr %3, align 8, !tbaa !34
  %27 = icmp ne ptr %26, null
  %28 = icmp sgt i32 %14, %12
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  call void @BKE_report(ptr noundef %32, i32 noundef 32, ptr noundef nonnull @.str.65) #8
  br label %97

33:                                               ; preds = %25
  %34 = load ptr, ptr %9, align 8, !tbaa !25
  %35 = call ptr @BKE_sequence_alloc(ptr noundef %34, i32 noundef %12, i32 noundef %16) #8
  %36 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 6
  store i32 %18, ptr %36, align 4, !tbaa !30
  %37 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 4, i64 2
  %38 = call ptr @BKE_sequence_give_name(ptr noundef %35) #8
  %39 = call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef %38, i64 noundef 62) #8
  %40 = getelementptr inbounds %struct.Editing, ptr %9, i64 0, i32 1
  call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %40, ptr noundef %35) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #9
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %7, ptr noundef %35) #8
  %41 = getelementptr inbounds i8, ptr %7, i64 8
  %42 = load ptr, ptr %41, align 8, !tbaa.struct !88
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #9
  %43 = load ptr, ptr %3, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 33
  store ptr %43, ptr %44, align 8, !tbaa !89
  %45 = load ptr, ptr %4, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 34
  store ptr %45, ptr %46, align 8, !tbaa !90
  %47 = load ptr, ptr %5, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 35
  store ptr %47, ptr %48, align 8, !tbaa !91
  call void %42(ptr noundef %35) #8
  %49 = load ptr, ptr %3, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 7
  store i32 1, ptr %52, align 8, !tbaa !57
  call void @BKE_sequence_tx_set_final_right(ptr noundef nonnull %35, i32 noundef %14) #8
  br label %53

53:                                               ; preds = %51, %33
  %54 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !92
  %56 = or i32 %55, 4194304
  store i32 %56, ptr %54, align 8, !tbaa !92
  call void @BKE_sequence_calc(ptr noundef %8, ptr noundef nonnull %35) #8
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %58 = call ptr %57(i64 noundef 904, ptr noundef nonnull @.str.46) #8
  %59 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 24
  store ptr %58, ptr %59, align 8, !tbaa !35
  %60 = getelementptr inbounds %struct.Strip, ptr %58, i64 0, i32 2
  store i32 1, ptr %60, align 8, !tbaa !58
  %61 = load i32, ptr %36, align 4, !tbaa !30
  switch i32 %61, label %68 [
    i32 28, label %62
    i32 31, label %66
  ]

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 43
  %64 = load ptr, ptr %63, align 8, !tbaa !93
  %65 = load ptr, ptr %10, align 8, !tbaa !21
  call void @RNA_float_get_array(ptr noundef %65, ptr noundef nonnull @.str.37, ptr noundef %64) #8
  br label %66

66:                                               ; preds = %53, %62
  %67 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 46
  store i32 8, ptr %67, align 8, !tbaa !32
  br label %68

68:                                               ; preds = %66, %53
  %69 = load ptr, ptr %10, align 8, !tbaa !21
  %70 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %69, ptr noundef nonnull @.str.40) #8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = load ptr, ptr %44, align 8, !tbaa !89
  %74 = icmp eq ptr %73, null
  br i1 %74, label %96, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.Sequence, ptr %73, i64 0, i32 13
  %77 = load i32, ptr %76, align 8, !tbaa !94
  %78 = load ptr, ptr %46, align 8, !tbaa !90
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.Sequence, ptr %78, i64 0, i32 13
  %82 = load i32, ptr %81, align 8, !tbaa !94
  br label %83

83:                                               ; preds = %75, %80
  %84 = phi i32 [ %82, %80 ], [ 0, %75 ]
  %85 = load ptr, ptr %48, align 8, !tbaa !91
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.Sequence, ptr %85, i64 0, i32 13
  %89 = load i32, ptr %88, align 8, !tbaa !94
  br label %90

90:                                               ; preds = %83, %87
  %91 = phi i32 [ %89, %87 ], [ 0, %83 ]
  %92 = call fastcc i32 @max_iii(i32 noundef %77, i32 noundef %84, i32 noundef %91) #7
  %93 = icmp slt i32 %92, 32
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 13
  store i32 %92, ptr %95, align 8, !tbaa !94
  br label %96

96:                                               ; preds = %90, %94, %72, %68
  call fastcc void @sequencer_add_apply_replace_sel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %35) #7
  call fastcc void @sequencer_add_apply_overlap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %35) #7
  call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %8, ptr noundef nonnull %35, i32 noundef 1, i32 noundef 1) #8
  call void @BKE_sequencer_sort(ptr noundef %8) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %8) #8
  br label %97

97:                                               ; preds = %96, %30, %21
  %98 = phi i32 [ 2, %30 ], [ 4, %96 ], [ 2, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %98
}

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !95
  %8 = and i32 %2, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = tail call fastcc i32 @sequencer_generic_invoke_xy_guess_channel(ptr noundef %0, i32 noundef %3) #7
  tail call void @RNA_int_set(ptr noundef %12, ptr noundef nonnull @.str.40, i32 noundef %13) #8
  br label %14

14:                                               ; preds = %10, %4
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  tail call void @RNA_int_set(ptr noundef %16, ptr noundef nonnull @.str.41, i32 noundef %7) #8
  %17 = and i32 %2, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 8, !tbaa !21
  %21 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %20, ptr noundef nonnull @.str.42) #8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load ptr, ptr %15, align 8, !tbaa !21
  %25 = add nsw i32 %7, 25
  tail call void @RNA_int_set(ptr noundef %24, ptr noundef nonnull @.str.42, i32 noundef %25) #8
  br label %26

26:                                               ; preds = %23, %19, %14
  %27 = and i32 %2, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call fastcc void @sequencer_generic_invoke_path__internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.43) #7
  tail call fastcc void @sequencer_generic_invoke_path__internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.44) #7
  br label %30

30:                                               ; preds = %29, %26
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sequencer_generic_invoke_xy_guess_channel(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 1) #8
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !95
  %7 = icmp eq ptr %4, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %11
  %15 = icmp eq i32 %1, -1
  br label %16

16:                                               ; preds = %14, %33
  %17 = phi ptr [ %12, %14 ], [ %36, %33 ]
  %18 = phi i32 [ 2147483647, %14 ], [ %35, %33 ]
  %19 = phi ptr [ null, %14 ], [ %34, %33 ]
  br i1 %15, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !30
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %33

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 16
  %26 = load i32, ptr %25, align 4, !tbaa !96
  %27 = icmp slt i32 %26, %6
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = sub nsw i32 %6, %26
  %30 = icmp slt i32 %29, %18
  %31 = select i1 %30, ptr %17, ptr %19
  %32 = tail call i32 @llvm.smin.i32(i32 %29, i32 %18)
  br label %33

33:                                               ; preds = %28, %20, %24
  %34 = phi ptr [ %19, %24 ], [ %19, %20 ], [ %31, %28 ]
  %35 = phi i32 [ %18, %24 ], [ %18, %20 ], [ %32, %28 ]
  %36 = load ptr, ptr %17, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %16, !llvm.loop !97

38:                                               ; preds = %33
  %39 = icmp eq ptr %34, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.Sequence, ptr %34, i64 0, i32 13
  %42 = load i32, ptr %41, align 8, !tbaa !94
  br label %43

43:                                               ; preds = %11, %38, %2, %8, %40
  %44 = phi i32 [ %42, %40 ], [ 1, %8 ], [ 1, %2 ], [ 1, %38 ], [ 1, %11 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sequencer_generic_invoke_path__internal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %6, ptr noundef %2) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %11 = tail call ptr @BKE_sequencer_active_get(ptr noundef %10) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !30
  switch i32 %19, label %27 [
    i32 3, label %20
    i32 0, label %20
    i32 4, label %20
    i32 5, label %20
  ]

20:                                               ; preds = %17, %17, %17, %17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #9
  %21 = getelementptr inbounds %struct.Strip, ptr %15, i64 0, i32 7
  %22 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %21, i64 noundef 1024) #8
  %23 = load ptr, ptr @G, align 8, !tbaa !98
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 2
  %25 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %24) #8
  %26 = load ptr, ptr %5, align 8, !tbaa !21
  call void @RNA_string_set(ptr noundef %26, ptr noundef %2, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #9
  br label %27

27:                                               ; preds = %9, %13, %20, %17, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequencer_active_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequence_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_base_unique_name_recursive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sound_scene_add_scene_sound(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_calc_disp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequencer_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sequencer_add_apply_replace_sel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.47) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  tail call void @ED_sequencer_deselect_all(ptr noundef %4) #8
  tail call void @BKE_sequencer_active_set(ptr noundef %4, ptr noundef %2) #8
  %10 = getelementptr inbounds %struct.Sequence, ptr %2, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !92
  %12 = or i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !92
  br label %13

13:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sequencer_add_apply_overlap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.48) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8, !tbaa !25
  %12 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %11, ptr noundef %2) #8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 8, !tbaa !25
  %16 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %15, ptr noundef %2, ptr noundef %4) #8
  br label %17

17:                                               ; preds = %10, %14, %3
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_sequencer_deselect_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequencer_active_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_test_overlap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_base_shuffle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_movieclip_get_duration(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_mask_get_duration(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @sequencer_add_generic_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.SeqLoadInfo, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct.CollectionPropertyIterator, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %10 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %9, i8 noundef zeroext 1) #8
  call void @llvm.lifetime.start.p0(i64 1128, ptr nonnull %4) #9
  call fastcc void @seq_load_operator_info(ptr noundef nonnull %4, ptr noundef %1) #7
  %11 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !76
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  call void @ED_sequencer_deselect_all(ptr noundef %9) #8
  br label %16

16:                                               ; preds = %15, %3
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %18, ptr noundef nonnull @.str.61) #8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !21
  %23 = call ptr @RNA_struct_find_property(ptr noundef %22, ptr noundef nonnull @.str.61) #8
  %24 = call i32 @RNA_property_collection_length(ptr noundef %22, ptr noundef %23) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #9
  %27 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 6
  call void @BLI_split_dir_part(ptr noundef nonnull %27, ptr noundef nonnull %5, i64 noundef 1024) #8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %7) #9
  %28 = load ptr, ptr %17, align 8, !tbaa !21
  call void @RNA_collection_begin(ptr noundef %28, ptr noundef nonnull @.str.61, ptr noundef nonnull %7) #8
  %29 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %7, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !78
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %7, i64 0, i32 6
  %34 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 7
  %35 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 8
  br label %36

36:                                               ; preds = %32, %45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false), !tbaa.struct !82
  call void @RNA_string_get(ptr noundef nonnull %8, ptr noundef nonnull @.str.62, ptr noundef nonnull %6) #8
  call void @BLI_join_dirfile(ptr noundef nonnull %27, i64 noundef 1024, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %37 = call ptr @BLI_strncpy(ptr noundef nonnull %34, ptr noundef nonnull %6, i64 noundef 64) #8
  %38 = load ptr, ptr %10, align 8, !tbaa !25
  %39 = call ptr %2(ptr noundef %0, ptr noundef %38, ptr noundef nonnull %4) #8, !callees !100
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  call fastcc void @sequencer_add_apply_overlap(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %39) #7
  %42 = load ptr, ptr %35, align 8, !tbaa !101
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call fastcc void @sequencer_add_apply_overlap(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %42) #7
  br label %45

45:                                               ; preds = %41, %44, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @RNA_property_collection_next(ptr noundef nonnull %7) #8
  %46 = load i32, ptr %29, align 8, !tbaa !78
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %36, !llvm.loop !102

48:                                               ; preds = %45, %26
  call void @RNA_property_collection_end(ptr noundef nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #9
  br label %58

49:                                               ; preds = %16, %21
  %50 = load ptr, ptr %10, align 8, !tbaa !25
  %51 = call ptr %2(ptr noundef %0, ptr noundef %50, ptr noundef nonnull %4) #8, !callees !100
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  call fastcc void @sequencer_add_apply_overlap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %51) #7
  %54 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !101
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call fastcc void @sequencer_add_apply_overlap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %55) #7
  br label %58

58:                                               ; preds = %49, %57, %53, %48
  %59 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !103
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !24
  %65 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 6
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %64, i32 noundef 32, ptr noundef nonnull @.str.63, ptr noundef nonnull %65) #8
  br label %67

66:                                               ; preds = %58
  call void @BKE_sequencer_sort(ptr noundef %9) #8
  call void @BKE_sequencer_update_muting(ptr noundef %10) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %9) #8
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ 2, %62 ], [ 4, %66 ]
  call void @llvm.lifetime.end.p0(i64 1128, ptr nonnull %4) #9
  ret i32 %68
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_add_movie_strip(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @seq_load_operator_info(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %6, ptr noundef nonnull @.str.64) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !21
  %11 = tail call i32 @RNA_property_boolean_get(ptr noundef %10, ptr noundef nonnull %7) #8
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1128) %0, i8 0, i64 1128, i1 false)
  %15 = load ptr, ptr %5, align 8, !tbaa !21
  %16 = tail call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.41) #8
  store i32 %16, ptr %0, align 8, !tbaa !85
  %17 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !86
  %18 = load ptr, ptr %5, align 8, !tbaa !21
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.40) #8
  %20 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 5
  store i32 1, ptr %21, align 4, !tbaa !74
  %22 = load ptr, ptr %5, align 8, !tbaa !21
  %23 = tail call ptr @RNA_struct_find_property(ptr noundef %22, ptr noundef nonnull @.str.43) #8
  %24 = icmp eq ptr %23, null
  %25 = load ptr, ptr %5, align 8, !tbaa !21
  br i1 %24, label %28, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 6
  tail call void @RNA_property_string_get(ptr noundef %25, ptr noundef nonnull %23, ptr noundef nonnull %27) #8
  br label %34

28:                                               ; preds = %13
  %29 = tail call ptr @RNA_struct_find_property(ptr noundef %25, ptr noundef nonnull @.str.44) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 8, !tbaa !21
  %33 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 6
  tail call void @RNA_property_string_get(ptr noundef %32, ptr noundef nonnull %29, ptr noundef nonnull %33) #8
  br label %34

34:                                               ; preds = %31, %26
  br i1 %14, label %35, label %39

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 6
  %37 = load ptr, ptr @G, align 8, !tbaa !98
  %38 = getelementptr inbounds %struct.Main, ptr %37, i64 0, i32 2
  tail call void @BLI_path_rel(ptr noundef nonnull %36, ptr noundef nonnull %38) #8
  br label %39

39:                                               ; preds = %28, %35, %34
  %40 = load ptr, ptr %5, align 8, !tbaa !21
  %41 = tail call ptr @RNA_struct_find_property(ptr noundef %40, ptr noundef nonnull @.str.42) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %5, align 8, !tbaa !21
  %45 = tail call i32 @RNA_property_int_get(ptr noundef %44, ptr noundef nonnull %41) #8
  store i32 %45, ptr %17, align 4, !tbaa !86
  br label %46

46:                                               ; preds = %43, %39
  %47 = load ptr, ptr %5, align 8, !tbaa !21
  %48 = tail call ptr @RNA_struct_find_property(ptr noundef %47, ptr noundef nonnull @.str.47) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %5, align 8, !tbaa !21
  %52 = tail call i32 @RNA_property_boolean_get(ptr noundef %51, ptr noundef nonnull %48) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !76
  %57 = or i32 %56, 1
  store i32 %57, ptr %55, align 4, !tbaa !76
  br label %58

58:                                               ; preds = %54, %50, %46
  %59 = load ptr, ptr %5, align 8, !tbaa !21
  %60 = tail call ptr @RNA_struct_find_property(ptr noundef %59, ptr noundef nonnull @.str.25) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %5, align 8, !tbaa !21
  %64 = tail call i32 @RNA_property_boolean_get(ptr noundef %63, ptr noundef nonnull %60) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !76
  %69 = or i32 %68, 8
  store i32 %69, ptr %67, align 4, !tbaa !76
  br label %70

70:                                               ; preds = %66, %62, %58
  %71 = load ptr, ptr %5, align 8, !tbaa !21
  %72 = tail call ptr @RNA_struct_find_property(ptr noundef %71, ptr noundef nonnull @.str.19) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %5, align 8, !tbaa !21
  %76 = tail call i32 @RNA_property_boolean_get(ptr noundef %75, ptr noundef nonnull %72) #8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !76
  %81 = or i32 %80, 4
  store i32 %81, ptr %79, align 4, !tbaa !76
  br label %82

82:                                               ; preds = %78, %74, %70
  %83 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !76
  %85 = or i32 %84, 2
  store i32 %85, ptr %83, align 4, !tbaa !76
  br i1 %24, label %91, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 7
  %88 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 6
  %89 = tail call ptr @BLI_path_basename(ptr noundef nonnull %88) #8
  %90 = tail call ptr @BLI_strncpy(ptr noundef nonnull %87, ptr noundef %89, i64 noundef 64) #8
  br label %107

91:                                               ; preds = %82
  %92 = load ptr, ptr %5, align 8, !tbaa !21
  %93 = tail call ptr @RNA_struct_find_property(ptr noundef %92, ptr noundef nonnull @.str.61) #8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %107, label %95

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #9
  %96 = load ptr, ptr %5, align 8, !tbaa !21
  call void @RNA_property_collection_begin(ptr noundef %96, ptr noundef nonnull %93, ptr noundef nonnull %3) #8
  %97 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !78
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %101 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %101, i64 24, i1 false), !tbaa.struct !82
  %102 = call ptr @RNA_string_get_alloc(ptr noundef nonnull %4, ptr noundef nonnull @.str.62, ptr noundef null, i32 noundef 0) #8
  %103 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 7
  %104 = call ptr @BLI_strncpy(ptr noundef nonnull %103, ptr noundef %102, i64 noundef 64) #8
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %105(ptr noundef %102) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %106

106:                                              ; preds = %100, %95
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #9
  br label %107

107:                                              ; preds = %91, %106, %86
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_split_dir_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequencer_update_muting(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @RNA_property_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequencer_add_sound_strip(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @BKE_sequencer_add_image_strip(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_init_colorspace(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_sequence_effect_get_num_inputs(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @seq_effect_find_selected(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequence_give_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_get_effect(ptr dead_on_unwind writable sret(%struct.SeqEffectHandle) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_tx_set_final_right(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_iii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = tail call fastcc i32 @max_ii(i32 noundef %0, i32 noundef %1) #7
  %5 = tail call fastcc i32 @max_ii(i32 noundef %4, i32 noundef %2) #7
  ret i32 %5
}

; Function Attrs: optsize
declare void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 32}
!17 = !{!6, !7, i64 72}
!18 = !{!6, !12, i64 184}
!19 = !{!6, !7, i64 88}
!20 = !{!6, !7, i64 104}
!21 = !{!22, !7, i64 112}
!22 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!23 = !{i32 2, i32 5}
!24 = !{!22, !7, i64 120}
!25 = !{!26, !7, i64 0}
!26 = !{!"Editing", !7, i64 0, !10, i64 8, !10, i64 24, !7, i64 40, !8, i64 48, !8, i64 1072, !27, i64 2096, !27, i64 2100, !27, i64 2104, !27, i64 2108, !28, i64 2112}
!27 = !{!"int", !8, i64 0}
!28 = !{!"rctf", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12}
!29 = !{!"float", !8, i64 0}
!30 = !{!31, !27, i64 100}
!31 = !{!"Sequence", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !27, i64 96, !27, i64 100, !27, i64 104, !27, i64 108, !27, i64 112, !27, i64 116, !27, i64 120, !27, i64 124, !27, i64 128, !27, i64 132, !27, i64 136, !27, i64 140, !29, i64 144, !29, i64 148, !29, i64 152, !12, i64 156, !12, i64 158, !27, i64 160, !27, i64 164, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !29, i64 224, !29, i64 228, !7, i64 232, !7, i64 240, !7, i64 248, !10, i64 256, !7, i64 272, !7, i64 280, !29, i64 288, !29, i64 292, !29, i64 296, !29, i64 300, !7, i64 304, !27, i64 312, !27, i64 316, !27, i64 320, !29, i64 324, !27, i64 328, !8, i64 332, !8, i64 333, !10, i64 336}
!32 = !{!31, !27, i64 320}
!33 = !{!31, !7, i64 184}
!34 = !{!7, !7, i64 0}
!35 = !{!31, !7, i64 168}
!36 = !{!37, !27, i64 688}
!37 = !{!"Scene", !38, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !27, i64 232, !27, i64 236, !27, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !39, i64 280, !47, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !27, i64 4380, !10, i64 4384, !48, i64 4400, !49, i64 4416, !52, i64 4600, !7, i64 4608, !53, i64 4616, !7, i64 4640, !54, i64 4648, !54, i64 4656, !41, i64 4664, !42, i64 4824, !55, i64 4888, !7, i64 4952}
!38 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !27, i64 100, !27, i64 104, !27, i64 108, !7, i64 112}
!39 = !{!"RenderData", !40, i64 0, !7, i64 248, !7, i64 256, !43, i64 264, !44, i64 328, !27, i64 400, !27, i64 404, !27, i64 408, !29, i64 412, !27, i64 416, !27, i64 420, !27, i64 424, !27, i64 428, !12, i64 432, !12, i64 434, !29, i64 436, !29, i64 440, !29, i64 444, !29, i64 448, !29, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !27, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !27, i64 484, !27, i64 488, !12, i64 492, !12, i64 494, !27, i64 496, !27, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !27, i64 516, !27, i64 520, !27, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !28, i64 544, !28, i64 560, !45, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !29, i64 612, !29, i64 616, !29, i64 620, !29, i64 624, !27, i64 628, !29, i64 632, !29, i64 636, !29, i64 640, !29, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !29, i64 660, !29, i64 664, !12, i64 668, !12, i64 670, !29, i64 672, !29, i64 676, !8, i64 680, !27, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !27, i64 2520, !12, i64 2524, !12, i64 2526, !29, i64 2528, !29, i64 2532, !12, i64 2536, !12, i64 2538, !29, i64 2540, !12, i64 2544, !12, i64 2546, !27, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !29, i64 2560, !29, i64 2564, !7, i64 2568, !27, i64 2576, !29, i64 2580, !8, i64 2584, !46, i64 2616, !27, i64 3976, !27, i64 3980}
!40 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !29, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !41, i64 24, !42, i64 184}
!41 = !{!"ColorManagedViewSettings", !27, i64 0, !27, i64 4, !8, i64 8, !8, i64 72, !29, i64 136, !29, i64 140, !7, i64 144, !7, i64 152}
!42 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!43 = !{!"QuicktimeCodecSettings", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !27, i64 28, !27, i64 32, !27, i64 36, !27, i64 40, !27, i64 44, !12, i64 48, !12, i64 50, !27, i64 52, !27, i64 56, !27, i64 60}
!44 = !{!"FFMpegCodecData", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !27, i64 28, !29, i64 32, !27, i64 36, !27, i64 40, !27, i64 44, !27, i64 48, !27, i64 52, !27, i64 56, !27, i64 60, !7, i64 64}
!45 = !{!"rcti", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12}
!46 = !{!"BakeData", !40, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !29, i64 1280, !29, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!47 = !{!"AudioData", !27, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !27, i64 16, !12, i64 20, !12, i64 22, !29, i64 24, !29, i64 28}
!48 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!49 = !{!"GameData", !48, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !50, i64 40, !12, i64 64, !12, i64 66, !29, i64 68, !51, i64 72, !29, i64 128, !29, i64 132, !27, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !29, i64 164, !29, i64 168, !29, i64 172, !29, i64 176, !29, i64 180}
!50 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !29, i64 8, !29, i64 12, !7, i64 16}
!51 = !{!"RecastData", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !27, i64 40, !29, i64 44, !29, i64 48, !12, i64 52, !12, i64 54}
!52 = !{!"UnitSettings", !29, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!53 = !{!"PhysicsSettings", !8, i64 0, !27, i64 12, !27, i64 16, !27, i64 20}
!54 = !{!"long", !8, i64 0}
!55 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!56 = !{!37, !27, i64 684}
!57 = !{!31, !27, i64 104}
!58 = !{!59, !27, i64 16}
!59 = !{!"Strip", !7, i64 0, !7, i64 8, !27, i64 16, !27, i64 20, !27, i64 24, !27, i64 28, !7, i64 32, !8, i64 40, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !55, i64 840}
!60 = !{!31, !7, i64 280}
!61 = !{!31, !7, i64 200}
!62 = !{!63, !27, i64 100}
!63 = !{!"MovieClip", !38, i64 0, !7, i64 120, !8, i64 128, !27, i64 1152, !27, i64 1156, !8, i64 1160, !29, i64 1168, !29, i64 1172, !7, i64 1176, !7, i64 1184, !7, i64 1192, !64, i64 1200, !7, i64 1528, !70, i64 1536, !27, i64 2312, !27, i64 2316, !27, i64 2320, !27, i64 2324, !55, i64 2328}
!64 = !{!"MovieTracking", !65, i64 0, !66, i64 72, !10, i64 128, !10, i64 144, !67, i64 160, !68, i64 184, !7, i64 232, !7, i64 240, !10, i64 248, !27, i64 264, !27, i64 268, !7, i64 272, !69, i64 280}
!65 = !{!"MovieTrackingSettings", !27, i64 0, !12, i64 4, !12, i64 6, !29, i64 8, !12, i64 12, !12, i64 14, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !29, i64 24, !12, i64 28, !12, i64 30, !27, i64 32, !27, i64 36, !27, i64 40, !12, i64 44, !12, i64 46, !29, i64 48, !27, i64 52, !27, i64 56, !29, i64 60, !29, i64 64, !27, i64 68}
!66 = !{!"MovieTrackingCamera", !7, i64 0, !12, i64 8, !12, i64 10, !29, i64 12, !29, i64 16, !29, i64 20, !12, i64 24, !12, i64 26, !8, i64 28, !29, i64 36, !29, i64 40, !29, i64 44, !29, i64 48, !29, i64 52}
!67 = !{!"MovieTrackingReconstruction", !27, i64 0, !29, i64 4, !27, i64 8, !27, i64 12, !7, i64 16}
!68 = !{!"MovieTrackingStabilization", !27, i64 0, !27, i64 4, !27, i64 8, !29, i64 12, !7, i64 16, !29, i64 24, !29, i64 28, !29, i64 32, !27, i64 36, !27, i64 40, !29, i64 44}
!69 = !{!"MovieTrackingDopesheet", !27, i64 0, !12, i64 4, !12, i64 6, !10, i64 8, !10, i64 24, !27, i64 40, !27, i64 44}
!70 = !{!"MovieClipProxy", !8, i64 0, !12, i64 768, !12, i64 770, !12, i64 772, !12, i64 774}
!71 = !{!31, !7, i64 208}
!72 = !{!73, !27, i64 100}
!73 = !{!"Mask", !38, i64 0, !7, i64 120, !10, i64 128, !27, i64 144, !27, i64 148, !27, i64 152, !27, i64 156, !27, i64 160, !27, i64 164}
!74 = !{!75, !27, i64 20}
!75 = !{!"SeqLoadInfo", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !8, i64 24, !8, i64 1048, !7, i64 1112, !27, i64 1120, !27, i64 1124}
!76 = !{!75, !27, i64 12}
!77 = !{!59, !7, i64 32}
!78 = !{!79, !27, i64 128}
!79 = !{!"CollectionPropertyIterator", !80, i64 0, !80, i64 24, !7, i64 48, !8, i64 56, !27, i64 96, !27, i64 100, !80, i64 104, !27, i64 128}
!80 = !{!"PointerRNA", !81, i64 0, !7, i64 8, !7, i64 16}
!81 = !{!"", !7, i64 0}
!82 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!75, !27, i64 0}
!86 = !{!75, !27, i64 4}
!87 = !{!31, !27, i64 124}
!88 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 8, !34, i64 40, i64 8, !34, i64 48, i64 8, !34, i64 56, i64 8, !34, i64 64, i64 8, !34, i64 72, i64 8, !34, i64 80, i64 8, !34}
!89 = !{!31, !7, i64 232}
!90 = !{!31, !7, i64 240}
!91 = !{!31, !7, i64 248}
!92 = !{!31, !27, i64 96}
!93 = !{!31, !7, i64 304}
!94 = !{!31, !27, i64 128}
!95 = !{!37, !27, i64 680}
!96 = !{!31, !27, i64 140}
!97 = distinct !{!97, !84}
!98 = !{!99, !7, i64 0}
!99 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !27, i64 2096, !27, i64 2100, !8, i64 2104, !27, i64 2108, !27, i64 2112, !8, i64 2116}
!100 = !{ptr @BKE_sequencer_add_movie_strip, ptr @BKE_sequencer_add_sound_strip}
!101 = !{!75, !7, i64 1112}
!102 = distinct !{!102, !84}
!103 = !{!75, !27, i64 1120}
!104 = !{!75, !27, i64 8}
