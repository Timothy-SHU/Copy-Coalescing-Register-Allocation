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

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_scene_strip_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_scene_strip_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_scene_strip_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef -2147483648, i32 noundef 2147483647) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 1, i32 noundef 32, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 32) #6
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #6
  %15 = load ptr, ptr %8, align 8, !tbaa !48
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #6
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 524288) #6
  %17 = load ptr, ptr %8, align 8, !tbaa !48
  %18 = tail call ptr @RNA_def_enum(ptr noundef %17, ptr noundef nonnull @.str.3, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  tail call void @RNA_def_enum_funcs(ptr noundef %18, ptr noundef nonnull @RNA_scene_itemf) #6
  tail call void @RNA_def_property_flag(ptr noundef %18, i32 noundef 536870912) #6
  %19 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %18, ptr %19, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @sequencer_add_scene_strip_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.3) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @WM_enum_search_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  br label %12

10:                                               ; preds = %3
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 2)
  %11 = tail call i32 @sequencer_add_scene_strip_exec(ptr noundef %0, ptr noundef %1), !range !52
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %11, %10 ], [ %9, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_scene_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 1) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.41) #6
  %8 = load ptr, ptr %5, align 8, !tbaa !50
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.40) #6
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %5, align 8, !tbaa !50
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.3) #6
  %14 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %13) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.45) #6
  br label %66

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !tbaa !54
  %21 = tail call ptr @BKE_sequence_alloc(ptr noundef %20, i32 noundef %7, i32 noundef %9) #6
  %22 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 6
  store i32 2, ptr %22, align 4, !tbaa !59
  %23 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 46
  store i32 8, ptr %23, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 26
  store ptr %14, ptr %24, align 8, !tbaa !62
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %26 = tail call ptr %25(i64 noundef 904, ptr noundef nonnull @.str.46) #6
  %27 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 24
  store ptr %26, ptr %27, align 8, !tbaa !64
  %28 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !85
  %32 = add i32 %29, 1
  %33 = sub i32 %32, %31
  %34 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 7
  store i32 %33, ptr %34, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.Strip, ptr %26, i64 0, i32 2
  store i32 1, ptr %35, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 4, i64 2
  %37 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4, i64 2
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %36, ptr noundef nonnull %37, i64 noundef 62) #6
  %39 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %39, ptr noundef %21) #6
  %40 = load i32, ptr %34, align 8, !tbaa !86
  %41 = add nsw i32 %40, %7
  %42 = tail call ptr @sound_scene_add_scene_sound(ptr noundef %3, ptr noundef %21, i32 noundef %7, i32 noundef %41, i32 noundef 0) #6
  %43 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 38
  store ptr %42, ptr %43, align 8, !tbaa !89
  tail call void @BKE_sequence_calc_disp(ptr noundef %3, ptr noundef %21) #6
  tail call void @BKE_sequencer_sort(ptr noundef %3) #6
  %44 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %45 = load ptr, ptr %5, align 8, !tbaa !50
  %46 = tail call i32 @RNA_boolean_get(ptr noundef %45, ptr noundef nonnull @.str.47) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %19
  tail call void @ED_sequencer_deselect_all(ptr noundef %44) #6
  tail call void @BKE_sequencer_active_set(ptr noundef %44, ptr noundef %21) #6
  %49 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !90
  %51 = or i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !90
  br label %52

52:                                               ; preds = %19, %48
  %53 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %54 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %53, i8 noundef zeroext 0) #6
  %55 = load ptr, ptr %5, align 8, !tbaa !50
  %56 = tail call i32 @RNA_boolean_get(ptr noundef %55, ptr noundef nonnull @.str.48) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load ptr, ptr %54, align 8, !tbaa !54
  %60 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %59, ptr noundef %21) #6
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %54, align 8, !tbaa !54
  %64 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %63, ptr noundef %21, ptr noundef %53) #6
  br label %65

65:                                               ; preds = %52, %58, %62
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #6
  br label %66

66:                                               ; preds = %65, %16
  %67 = phi i32 [ 2, %16 ], [ 4, %65 ]
  ret i32 %67
}

declare i32 @ED_operator_sequencer_active_editable(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sequencer_generic_props__internal(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call ptr @RNA_def_int(ptr noundef %7, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef -2147483648, i32 noundef 2147483647) #6
  br label %9

9:                                                ; preds = %5, %2
  %10 = and i32 %1, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef -2147483648, i32 noundef 2147483647) #6
  br label %16

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = tail call ptr @RNA_def_int(ptr noundef %18, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 1, i32 noundef 32, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 32) #6
  %20 = load ptr, ptr %17, align 8, !tbaa !48
  %21 = tail call ptr @RNA_def_boolean(ptr noundef %20, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #6
  %22 = load ptr, ptr %17, align 8, !tbaa !48
  %23 = tail call ptr @RNA_def_boolean(ptr noundef %22, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #6
  tail call void @RNA_def_property_flag(ptr noundef %23, i32 noundef 524288) #6
  ret void
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_scene_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_movieclip_strip_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_movieclip_strip_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_movieclip_strip_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef -2147483648, i32 noundef 2147483647) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 1, i32 noundef 32, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 32) #6
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #6
  %15 = load ptr, ptr %8, align 8, !tbaa !48
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #6
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 524288) #6
  %17 = load ptr, ptr %8, align 8, !tbaa !48
  %18 = tail call ptr @RNA_def_enum(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #6
  tail call void @RNA_def_enum_funcs(ptr noundef %18, ptr noundef nonnull @RNA_movieclip_itemf) #6
  tail call void @RNA_def_property_flag(ptr noundef %18, i32 noundef 536870912) #6
  %19 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %18, ptr %19, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @sequencer_add_movieclip_strip_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.9) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @WM_enum_search_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  br label %12

10:                                               ; preds = %3
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 6)
  %11 = tail call i32 @sequencer_add_movieclip_strip_exec(ptr noundef %0, ptr noundef %1), !range !52
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %11, %10 ], [ %9, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_movieclip_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 1) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.41) #6
  %8 = load ptr, ptr %5, align 8, !tbaa !50
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.40) #6
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 42
  %12 = load ptr, ptr %5, align 8, !tbaa !50
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.9) #6
  %14 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %13) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.59) #6
  br label %62

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !tbaa !54
  %21 = tail call ptr @BKE_sequence_alloc(ptr noundef %20, i32 noundef %7, i32 noundef %9) #6
  %22 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 6
  store i32 6, ptr %22, align 4, !tbaa !59
  %23 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 46
  store i32 8, ptr %23, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 28
  store ptr %14, ptr %24, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !92
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, ptr %25, align 4, !tbaa !92
  br label %29

29:                                               ; preds = %28, %19
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %31 = tail call ptr %30(i64 noundef 904, ptr noundef nonnull @.str.46) #6
  %32 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 24
  store ptr %31, ptr %32, align 8, !tbaa !64
  %33 = tail call i32 @BKE_movieclip_get_duration(ptr noundef nonnull %14) #6
  %34 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 7
  store i32 %33, ptr %34, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.Strip, ptr %31, i64 0, i32 2
  store i32 1, ptr %35, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 4, i64 2
  %37 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4, i64 2
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %36, ptr noundef nonnull %37, i64 noundef 62) #6
  %39 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %39, ptr noundef %21) #6
  tail call void @BKE_sequence_calc_disp(ptr noundef %3, ptr noundef %21) #6
  tail call void @BKE_sequencer_sort(ptr noundef %3) #6
  %40 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %41 = load ptr, ptr %5, align 8, !tbaa !50
  %42 = tail call i32 @RNA_boolean_get(ptr noundef %41, ptr noundef nonnull @.str.47) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %29
  tail call void @ED_sequencer_deselect_all(ptr noundef %40) #6
  tail call void @BKE_sequencer_active_set(ptr noundef %40, ptr noundef %21) #6
  %45 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !90
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !90
  br label %48

48:                                               ; preds = %29, %44
  %49 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %50 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %49, i8 noundef zeroext 0) #6
  %51 = load ptr, ptr %5, align 8, !tbaa !50
  %52 = tail call i32 @RNA_boolean_get(ptr noundef %51, ptr noundef nonnull @.str.48) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load ptr, ptr %50, align 8, !tbaa !54
  %56 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %55, ptr noundef %21) #6
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !54
  %60 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %59, ptr noundef %21, ptr noundef %49) #6
  br label %61

61:                                               ; preds = %48, %54, %58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #6
  br label %62

62:                                               ; preds = %61, %16
  %63 = phi i32 [ 2, %16 ], [ 4, %61 ]
  ret i32 %63
}

declare ptr @RNA_movieclip_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_mask_strip_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_mask_strip_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_mask_strip_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef -2147483648, i32 noundef 2147483647) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 1, i32 noundef 32, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 32) #6
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #6
  %15 = load ptr, ptr %8, align 8, !tbaa !48
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #6
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 524288) #6
  %17 = load ptr, ptr %8, align 8, !tbaa !48
  %18 = tail call ptr @RNA_def_enum(ptr noundef %17, ptr noundef nonnull @.str.14, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5) #6
  tail call void @RNA_def_enum_funcs(ptr noundef %18, ptr noundef nonnull @RNA_mask_itemf) #6
  tail call void @RNA_def_property_flag(ptr noundef %18, i32 noundef 536870912) #6
  %19 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %18, ptr %19, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @sequencer_add_mask_strip_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.14) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @WM_enum_search_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  br label %12

10:                                               ; preds = %3
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 7)
  %11 = tail call i32 @sequencer_add_mask_strip_exec(ptr noundef %0, ptr noundef %1), !range !52
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %11, %10 ], [ %9, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_mask_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 1) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.41) #6
  %8 = load ptr, ptr %5, align 8, !tbaa !50
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.40) #6
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 43
  %12 = load ptr, ptr %5, align 8, !tbaa !50
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.14) #6
  %14 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %13) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.60) #6
  br label %62

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !tbaa !54
  %21 = tail call ptr @BKE_sequence_alloc(ptr noundef %20, i32 noundef %7, i32 noundef %9) #6
  %22 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 6
  store i32 7, ptr %22, align 4, !tbaa !59
  %23 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 46
  store i32 8, ptr %23, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 29
  store ptr %14, ptr %24, align 8, !tbaa !101
  %25 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !102
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, ptr %25, align 4, !tbaa !102
  br label %29

29:                                               ; preds = %28, %19
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %31 = tail call ptr %30(i64 noundef 904, ptr noundef nonnull @.str.46) #6
  %32 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 24
  store ptr %31, ptr %32, align 8, !tbaa !64
  %33 = tail call i32 @BKE_mask_get_duration(ptr noundef nonnull %14) #6
  %34 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 7
  store i32 %33, ptr %34, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.Strip, ptr %31, i64 0, i32 2
  store i32 1, ptr %35, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 4, i64 2
  %37 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4, i64 2
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %36, ptr noundef nonnull %37, i64 noundef 62) #6
  %39 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %39, ptr noundef %21) #6
  tail call void @BKE_sequence_calc_disp(ptr noundef %3, ptr noundef %21) #6
  tail call void @BKE_sequencer_sort(ptr noundef %3) #6
  %40 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %41 = load ptr, ptr %5, align 8, !tbaa !50
  %42 = tail call i32 @RNA_boolean_get(ptr noundef %41, ptr noundef nonnull @.str.47) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %29
  tail call void @ED_sequencer_deselect_all(ptr noundef %40) #6
  tail call void @BKE_sequencer_active_set(ptr noundef %40, ptr noundef %21) #6
  %45 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !90
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !90
  br label %48

48:                                               ; preds = %29, %44
  %49 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %50 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %49, i8 noundef zeroext 0) #6
  %51 = load ptr, ptr %5, align 8, !tbaa !50
  %52 = tail call i32 @RNA_boolean_get(ptr noundef %51, ptr noundef nonnull @.str.48) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load ptr, ptr %50, align 8, !tbaa !54
  %56 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %55, ptr noundef %21) #6
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !54
  %60 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %59, ptr noundef %21, ptr noundef %49) #6
  br label %61

61:                                               ; preds = %48, %54, %58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %3) #6
  br label %62

62:                                               ; preds = %61, %16
  %63 = phi i32 [ 2, %16 ], [ 4, %61 ]
  ret i32 %63
}

declare ptr @RNA_mask_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_movie_strip_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_movie_strip_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_movie_strip_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2080, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 25, i16 noundef signext 0) #6
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef -2147483648, i32 noundef 2147483647) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 1, i32 noundef 32, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 32) #6
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #6
  %15 = load ptr, ptr %8, align 8, !tbaa !48
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #6
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 524288) #6
  %17 = load ptr, ptr %8, align 8, !tbaa !48
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_movie_strip_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.61) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !50
  %10 = tail call i32 @RNA_collection_length(ptr noundef %9, ptr noundef nonnull @.str.61) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %3
  %13 = load ptr, ptr %4, align 8, !tbaa !50
  %14 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %13, ptr noundef nonnull @.str.43) #6
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %8
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef %1, i32 noundef 4, i32 noundef 3)
  %17 = tail call fastcc i32 @sequencer_add_generic_strip_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @BKE_sequencer_add_movie_strip), !range !52
  br label %19

18:                                               ; preds = %12
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 3)
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #6
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 1, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_movie_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @sequencer_add_generic_strip_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @BKE_sequencer_add_movie_strip), !range !52
  ret i32 %3
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_sound_strip_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_sound_strip_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_sound_strip_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2304, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 25, i16 noundef signext 0) #6
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef -2147483648, i32 noundef 2147483647) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 1, i32 noundef 32, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 32) #6
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #6
  %15 = load ptr, ptr %8, align 8, !tbaa !48
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #6
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 524288) #6
  %17 = load ptr, ptr %8, align 8, !tbaa !48
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_sound_strip_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.61) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !50
  %10 = tail call i32 @RNA_collection_length(ptr noundef %9, ptr noundef nonnull @.str.61) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %3
  %13 = load ptr, ptr %4, align 8, !tbaa !50
  %14 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %13, ptr noundef nonnull @.str.43) #6
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %8
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef %1, i32 noundef 4, i32 noundef 4)
  %17 = tail call fastcc i32 @sequencer_add_generic_strip_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @BKE_sequencer_add_sound_strip), !range !52
  br label %19

18:                                               ; preds = %12
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 4)
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #6
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 1, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_sound_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @sequencer_add_generic_strip_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @BKE_sequencer_add_sound_strip), !range !52
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_image_strip_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_image_strip_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_image_strip_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2064, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 19, i16 noundef signext 0) #6
  tail call fastcc void @sequencer_generic_props__internal(ptr noundef nonnull %0, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_image_strip_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.61) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !50
  %10 = tail call i32 @RNA_collection_length(ptr noundef %9, ptr noundef nonnull @.str.61) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef %1, i32 noundef 6, i32 noundef 0)
  %13 = tail call i32 @sequencer_add_image_strip_exec(ptr noundef %0, ptr noundef %1), !range !52
  br label %15

14:                                               ; preds = %8, %3
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 0)
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #6
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 1, %14 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_image_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.SeqLoadInfo, align 8
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 1128, ptr nonnull %3) #6
  call fastcc void @seq_load_operator_info(ptr noundef nonnull %3, ptr noundef %1)
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = call ptr @RNA_struct_find_property(ptr noundef %9, ptr noundef nonnull @.str.61) #6
  %11 = call i32 @RNA_property_collection_length(ptr noundef %9, ptr noundef %10) #6
  %12 = getelementptr inbounds %struct.SeqLoadInfo, ptr %3, i64 0, i32 5
  store i32 %11, ptr %12, align 4, !tbaa !104
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %69, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.SeqLoadInfo, ptr %3, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !106
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  call void @ED_sequencer_deselect_all(ptr noundef %6) #6
  br label %20

20:                                               ; preds = %19, %14
  %21 = load ptr, ptr %7, align 8, !tbaa !54
  %22 = call ptr @BKE_sequencer_add_image_strip(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %3) #6
  %23 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 24
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #6
  %27 = load ptr, ptr %8, align 8, !tbaa !50
  call void @RNA_collection_begin(ptr noundef %27, ptr noundef nonnull @.str.61, ptr noundef nonnull %4) #6
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !108
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi ptr [ %26, %31 ], [ %38, %33 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false), !tbaa.struct !112
  %35 = call ptr @RNA_string_get_alloc(ptr noundef nonnull %5, ptr noundef nonnull @.str.62, ptr noundef null, i32 noundef 0) #6
  %36 = call ptr @BLI_strncpy(ptr noundef %34, ptr noundef %35, i64 noundef 256) #6
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %37(ptr noundef %35) #6
  %38 = getelementptr inbounds %struct.StripElem, ptr %34, i64 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #6
  %39 = load i32, ptr %28, align 8, !tbaa !108
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %33, !llvm.loop !113

41:                                               ; preds = %33, %20
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #6
  %42 = load i32, ptr %12, align 4, !tbaa !104
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, ptr %3, align 8, !tbaa !116
  %46 = getelementptr inbounds %struct.SeqLoadInfo, ptr %3, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !117
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = sub nsw i32 %47, %45
  %51 = getelementptr inbounds %struct.Sequence, ptr %22, i64 0, i32 12
  store i32 %50, ptr %51, align 4, !tbaa !118
  br label %52

52:                                               ; preds = %44, %49, %41
  call void @BKE_sequence_init_colorspace(ptr noundef %22) #6
  call void @BKE_sequence_calc_disp(ptr noundef %6, ptr noundef %22) #6
  call void @BKE_sequencer_sort(ptr noundef %6) #6
  %53 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 4
  %54 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 7
  %55 = call ptr @BLI_strncpy(ptr noundef nonnull %53, ptr noundef nonnull %54, i64 noundef 1024) #6
  %56 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %57 = call ptr @BKE_sequencer_editing_get(ptr noundef %56, i8 noundef zeroext 0) #6
  %58 = load ptr, ptr %8, align 8, !tbaa !50
  %59 = call i32 @RNA_boolean_get(ptr noundef %58, ptr noundef nonnull @.str.48) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load ptr, ptr %57, align 8, !tbaa !54
  %63 = call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %62, ptr noundef %22) #6
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %57, align 8, !tbaa !54
  %67 = call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %66, ptr noundef %22, ptr noundef %56) #6
  br label %68

68:                                               ; preds = %52, %61, %65
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %6) #6
  br label %69

69:                                               ; preds = %2, %68
  %70 = phi i32 [ 4, %68 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1128, ptr nonnull %3) #6
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_effect_strip_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_add_effect_strip_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_add_effect_strip_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active_editable, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 0, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #6
  tail call fastcc void @sequencer_generic_props__internal(ptr noundef nonnull %0, i32 noundef 3)
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @sequencer_prop_effect_types, i32 noundef 8, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.37, i32 noundef 3, ptr noundef null, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, float noundef 0.000000e+00, float noundef 1.000000e+00) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_effect_strip_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.34) #6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !50
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.34) #6
  %11 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %10) #6
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 2, i32 10
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ -1, %3 ], [ %10, %8 ]
  %16 = phi i32 [ 2, %3 ], [ %13, %8 ]
  tail call fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr noundef %1, i32 noundef %16, i32 noundef %15)
  %17 = tail call i32 @sequencer_add_effect_strip_exec(ptr noundef %0, ptr noundef %1), !range !52
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_add_effect_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.SeqEffectHandle, align 8
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %9 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %8, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.41) #6
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.42) #6
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.40) #6
  %17 = load ptr, ptr %10, align 8, !tbaa !50
  %18 = tail call i32 @RNA_enum_get(ptr noundef %17, ptr noundef nonnull @.str.34) #6
  %19 = call i32 @seq_effect_find_selected(ptr noundef %8, ptr noundef null, i32 noundef %18, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = load ptr, ptr %6, align 8, !tbaa !63
  call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef %24) #6
  br label %119

25:                                               ; preds = %2
  %26 = load ptr, ptr %3, align 8, !tbaa !63
  %27 = icmp ne ptr %26, null
  %28 = icmp sgt i32 %14, %12
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  call void @BKE_report(ptr noundef %32, i32 noundef 32, ptr noundef nonnull @.str.65) #6
  br label %119

33:                                               ; preds = %25
  %34 = load ptr, ptr %9, align 8, !tbaa !54
  %35 = call ptr @BKE_sequence_alloc(ptr noundef %34, i32 noundef %12, i32 noundef %16) #6
  %36 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 6
  store i32 %18, ptr %36, align 4, !tbaa !59
  %37 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 4, i64 2
  %38 = call ptr @BKE_sequence_give_name(ptr noundef %35) #6
  %39 = call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef %38, i64 noundef 62) #6
  %40 = getelementptr inbounds %struct.Editing, ptr %9, i64 0, i32 1
  call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %40, ptr noundef %35) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #6
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %7, ptr noundef %35) #6
  %41 = getelementptr inbounds i8, ptr %7, i64 8
  %42 = load ptr, ptr %41, align 8, !tbaa.struct !119
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #6
  %43 = load ptr, ptr %3, align 8, !tbaa !63
  %44 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 33
  store ptr %43, ptr %44, align 8, !tbaa !120
  %45 = load ptr, ptr %4, align 8, !tbaa !63
  %46 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 34
  store ptr %45, ptr %46, align 8, !tbaa !121
  %47 = load ptr, ptr %5, align 8, !tbaa !63
  %48 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 35
  store ptr %47, ptr %48, align 8, !tbaa !122
  call void %42(ptr noundef %35) #6
  %49 = load ptr, ptr %3, align 8, !tbaa !63
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 7
  store i32 1, ptr %52, align 8, !tbaa !86
  call void @BKE_sequence_tx_set_final_right(ptr noundef %35, i32 noundef %14) #6
  br label %53

53:                                               ; preds = %51, %33
  %54 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !90
  %56 = or i32 %55, 4194304
  store i32 %56, ptr %54, align 8, !tbaa !90
  call void @BKE_sequence_calc(ptr noundef %8, ptr noundef %35) #6
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %58 = call ptr %57(i64 noundef 904, ptr noundef nonnull @.str.46) #6
  %59 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 24
  store ptr %58, ptr %59, align 8, !tbaa !64
  %60 = getelementptr inbounds %struct.Strip, ptr %58, i64 0, i32 2
  store i32 1, ptr %60, align 8, !tbaa !87
  %61 = load i32, ptr %36, align 4, !tbaa !59
  switch i32 %61, label %68 [
    i32 28, label %62
    i32 31, label %66
  ]

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 43
  %64 = load ptr, ptr %63, align 8, !tbaa !123
  %65 = load ptr, ptr %10, align 8, !tbaa !50
  call void @RNA_float_get_array(ptr noundef %65, ptr noundef nonnull @.str.37, ptr noundef %64) #6
  br label %66

66:                                               ; preds = %53, %62
  %67 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 46
  store i32 8, ptr %67, align 8, !tbaa !61
  br label %68

68:                                               ; preds = %66, %53
  %69 = load ptr, ptr %10, align 8, !tbaa !50
  %70 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %69, ptr noundef nonnull @.str.40) #6
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  %73 = load ptr, ptr %44, align 8, !tbaa !120
  %74 = icmp eq ptr %73, null
  br i1 %74, label %97, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.Sequence, ptr %73, i64 0, i32 13
  %77 = load i32, ptr %76, align 8, !tbaa !124
  %78 = load ptr, ptr %46, align 8, !tbaa !121
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.Sequence, ptr %78, i64 0, i32 13
  %82 = load i32, ptr %81, align 8, !tbaa !124
  br label %83

83:                                               ; preds = %75, %80
  %84 = phi i32 [ %82, %80 ], [ 0, %75 ]
  %85 = load ptr, ptr %48, align 8, !tbaa !122
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.Sequence, ptr %85, i64 0, i32 13
  %89 = load i32, ptr %88, align 8, !tbaa !124
  br label %90

90:                                               ; preds = %83, %87
  %91 = phi i32 [ %89, %87 ], [ 0, %83 ]
  %92 = call i32 @llvm.smax.i32(i32 %84, i32 %77)
  %93 = call i32 @llvm.smax.i32(i32 %91, i32 %92)
  %94 = icmp slt i32 %93, 32
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 13
  store i32 %93, ptr %96, align 8, !tbaa !124
  br label %97

97:                                               ; preds = %90, %95, %72, %68
  %98 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %99 = load ptr, ptr %10, align 8, !tbaa !50
  %100 = call i32 @RNA_boolean_get(ptr noundef %99, ptr noundef nonnull @.str.47) #6
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  call void @ED_sequencer_deselect_all(ptr noundef %98) #6
  call void @BKE_sequencer_active_set(ptr noundef %98, ptr noundef %35) #6
  %103 = load i32, ptr %54, align 8, !tbaa !90
  %104 = or i32 %103, 1
  store i32 %104, ptr %54, align 8, !tbaa !90
  br label %105

105:                                              ; preds = %97, %102
  %106 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %107 = call ptr @BKE_sequencer_editing_get(ptr noundef %106, i8 noundef zeroext 0) #6
  %108 = load ptr, ptr %10, align 8, !tbaa !50
  %109 = call i32 @RNA_boolean_get(ptr noundef %108, ptr noundef nonnull @.str.48) #6
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load ptr, ptr %107, align 8, !tbaa !54
  %113 = call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %112, ptr noundef %35) #6
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %107, align 8, !tbaa !54
  %117 = call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %116, ptr noundef %35, ptr noundef %106) #6
  br label %118

118:                                              ; preds = %105, %111, %115
  call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %8, ptr noundef %35, i32 noundef 1, i32 noundef 1) #6
  call void @BKE_sequencer_sort(ptr noundef %8) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %8) #6
  br label %119

119:                                              ; preds = %118, %30, %21
  %120 = phi i32 [ 2, %30 ], [ 4, %118 ], [ 2, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %120
}

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sequencer_generic_invoke_xy__internal(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !125
  %8 = and i32 %2, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %14 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %13, i8 noundef zeroext 1) #6
  %15 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !125
  %17 = icmp eq ptr %14, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr %14, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 8, !tbaa !63
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %21
  %25 = icmp eq i32 %3, -1
  br label %26

26:                                               ; preds = %24, %43
  %27 = phi ptr [ %22, %24 ], [ %46, %43 ]
  %28 = phi i32 [ 2147483647, %24 ], [ %45, %43 ]
  %29 = phi ptr [ null, %24 ], [ %44, %43 ]
  br i1 %25, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Sequence, ptr %27, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !59
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %34, label %43

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.Sequence, ptr %27, i64 0, i32 16
  %36 = load i32, ptr %35, align 4, !tbaa !126
  %37 = icmp slt i32 %36, %16
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = sub nsw i32 %16, %36
  %40 = icmp slt i32 %39, %28
  %41 = select i1 %40, ptr %27, ptr %29
  %42 = tail call i32 @llvm.smin.i32(i32 %39, i32 %28)
  br label %43

43:                                               ; preds = %38, %34, %30
  %44 = phi ptr [ %29, %34 ], [ %29, %30 ], [ %41, %38 ]
  %45 = phi i32 [ %28, %34 ], [ %28, %30 ], [ %42, %38 ]
  %46 = load ptr, ptr %27, align 8, !tbaa !63
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %26, !llvm.loop !127

48:                                               ; preds = %43, %21
  %49 = phi ptr [ null, %21 ], [ %44, %43 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.Sequence, ptr %49, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !124
  br label %54

54:                                               ; preds = %10, %18, %48, %51
  %55 = phi i32 [ %53, %51 ], [ 1, %18 ], [ 1, %10 ], [ 1, %48 ]
  tail call void @RNA_int_set(ptr noundef %12, ptr noundef nonnull @.str.40, i32 noundef %55) #6
  br label %56

56:                                               ; preds = %54, %4
  %57 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !50
  tail call void @RNA_int_set(ptr noundef %58, ptr noundef nonnull @.str.41, i32 noundef %7) #6
  %59 = and i32 %2, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %57, align 8, !tbaa !50
  %63 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %62, ptr noundef nonnull @.str.42) #6
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load ptr, ptr %57, align 8, !tbaa !50
  %67 = add nsw i32 %7, 25
  tail call void @RNA_int_set(ptr noundef %66, ptr noundef nonnull @.str.42, i32 noundef %67) #6
  br label %68

68:                                               ; preds = %65, %61, %56
  %69 = and i32 %2, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  tail call fastcc void @sequencer_generic_invoke_path__internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.43)
  tail call fastcc void @sequencer_generic_invoke_path__internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.44)
  br label %72

72:                                               ; preds = %71, %68
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sequencer_generic_invoke_path__internal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %6, ptr noundef %2) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %11 = tail call ptr @BKE_sequencer_active_get(ptr noundef %10) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !59
  switch i32 %19, label %28 [
    i32 3, label %20
    i32 0, label %20
    i32 4, label %20
    i32 5, label %20
  ]

20:                                               ; preds = %17, %17, %17, %17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #6
  %21 = load ptr, ptr %14, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.Strip, ptr %21, i64 0, i32 7
  %23 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %22, i64 noundef 1024) #6
  %24 = load ptr, ptr @G, align 8, !tbaa !128
  %25 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 2
  %26 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %25) #6
  %27 = load ptr, ptr %5, align 8, !tbaa !50
  call void @RNA_string_set(ptr noundef %27, ptr noundef %2, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #6
  br label %28

28:                                               ; preds = %9, %13, %20, %17, %3
  ret void
}

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_active_get(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequence_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_sequence_base_unique_name_recursive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @sound_scene_add_scene_sound(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_sequence_calc_disp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequencer_sort(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_sequencer_deselect_all(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequencer_active_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_sequence_test_overlap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_sequence_base_shuffle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BKE_movieclip_get_duration(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_mask_get_duration(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @sequencer_add_generic_strip_exec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.SeqLoadInfo, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct.CollectionPropertyIterator, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %10 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %9, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 1128, ptr nonnull %4) #6
  call fastcc void @seq_load_operator_info(ptr noundef nonnull %4, ptr noundef %1)
  %11 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !106
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  call void @ED_sequencer_deselect_all(ptr noundef %9) #6
  br label %16

16:                                               ; preds = %15, %3
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %18, ptr noundef nonnull @.str.61) #6
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %74, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !50
  %23 = call ptr @RNA_struct_find_property(ptr noundef %22, ptr noundef nonnull @.str.61) #6
  %24 = call i32 @RNA_property_collection_length(ptr noundef %22, ptr noundef %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %74, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #6
  %27 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 6
  call void @BLI_split_dir_part(ptr noundef nonnull %27, ptr noundef nonnull %5, i64 noundef 1024) #6
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %7) #6
  %28 = load ptr, ptr %17, align 8, !tbaa !50
  call void @RNA_collection_begin(ptr noundef %28, ptr noundef nonnull @.str.61, ptr noundef nonnull %7) #6
  %29 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %7, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !108
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %7, i64 0, i32 6
  %34 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 7
  %35 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 8
  br label %36

36:                                               ; preds = %32, %70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false), !tbaa.struct !112
  call void @RNA_string_get(ptr noundef nonnull %8, ptr noundef nonnull @.str.62, ptr noundef nonnull %6) #6
  call void @BLI_join_dirfile(ptr noundef nonnull %27, i64 noundef 1024, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %37 = call ptr @BLI_strncpy(ptr noundef nonnull %34, ptr noundef nonnull %6, i64 noundef 64) #6
  %38 = load ptr, ptr %10, align 8, !tbaa !54
  %39 = call ptr %2(ptr noundef %0, ptr noundef %38, ptr noundef nonnull %4) #6, !callees !130
  %40 = icmp eq ptr %39, null
  br i1 %40, label %70, label %41

41:                                               ; preds = %36
  %42 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %43 = call ptr @BKE_sequencer_editing_get(ptr noundef %42, i8 noundef zeroext 0) #6
  %44 = load ptr, ptr %17, align 8, !tbaa !50
  %45 = call i32 @RNA_boolean_get(ptr noundef %44, ptr noundef nonnull @.str.48) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load ptr, ptr %43, align 8, !tbaa !54
  %49 = call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %48, ptr noundef nonnull %39) #6
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %43, align 8, !tbaa !54
  %53 = call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %52, ptr noundef nonnull %39, ptr noundef %42) #6
  br label %54

54:                                               ; preds = %41, %47, %51
  %55 = load ptr, ptr %35, align 8, !tbaa !131
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  %58 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %59 = call ptr @BKE_sequencer_editing_get(ptr noundef %58, i8 noundef zeroext 0) #6
  %60 = load ptr, ptr %17, align 8, !tbaa !50
  %61 = call i32 @RNA_boolean_get(ptr noundef %60, ptr noundef nonnull @.str.48) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load ptr, ptr %59, align 8, !tbaa !54
  %65 = call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %64, ptr noundef nonnull %55) #6
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %59, align 8, !tbaa !54
  %69 = call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %68, ptr noundef nonnull %55, ptr noundef %58) #6
  br label %70

70:                                               ; preds = %67, %63, %57, %54, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  call void @RNA_property_collection_next(ptr noundef nonnull %7) #6
  %71 = load i32, ptr %29, align 8, !tbaa !108
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %36, !llvm.loop !132

73:                                               ; preds = %70, %26
  call void @RNA_property_collection_end(ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #6
  br label %108

74:                                               ; preds = %16, %21
  %75 = load ptr, ptr %10, align 8, !tbaa !54
  %76 = call ptr %2(ptr noundef %0, ptr noundef %75, ptr noundef nonnull %4) #6, !callees !130
  %77 = icmp eq ptr %76, null
  br i1 %77, label %108, label %78

78:                                               ; preds = %74
  %79 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %80 = call ptr @BKE_sequencer_editing_get(ptr noundef %79, i8 noundef zeroext 0) #6
  %81 = load ptr, ptr %17, align 8, !tbaa !50
  %82 = call i32 @RNA_boolean_get(ptr noundef %81, ptr noundef nonnull @.str.48) #6
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load ptr, ptr %80, align 8, !tbaa !54
  %86 = call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %85, ptr noundef nonnull %76) #6
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %80, align 8, !tbaa !54
  %90 = call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %89, ptr noundef nonnull %76, ptr noundef %79) #6
  br label %91

91:                                               ; preds = %78, %84, %88
  %92 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !131
  %94 = icmp eq ptr %93, null
  br i1 %94, label %108, label %95

95:                                               ; preds = %91
  %96 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %97 = call ptr @BKE_sequencer_editing_get(ptr noundef %96, i8 noundef zeroext 0) #6
  %98 = load ptr, ptr %17, align 8, !tbaa !50
  %99 = call i32 @RNA_boolean_get(ptr noundef %98, ptr noundef nonnull @.str.48) #6
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load ptr, ptr %97, align 8, !tbaa !54
  %103 = call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %102, ptr noundef nonnull %93) #6
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %97, align 8, !tbaa !54
  %107 = call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %106, ptr noundef nonnull %93, ptr noundef %96) #6
  br label %108

108:                                              ; preds = %105, %101, %95, %74, %91, %73
  %109 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 9
  %110 = load i32, ptr %109, align 8, !tbaa !133
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %114 = load ptr, ptr %113, align 8, !tbaa !53
  %115 = getelementptr inbounds %struct.SeqLoadInfo, ptr %4, i64 0, i32 6
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %114, i32 noundef 32, ptr noundef nonnull @.str.63, ptr noundef nonnull %115) #6
  br label %117

116:                                              ; preds = %108
  call void @BKE_sequencer_sort(ptr noundef %9) #6
  call void @BKE_sequencer_update_muting(ptr noundef %10) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef %9) #6
  br label %117

117:                                              ; preds = %116, %112
  %118 = phi i32 [ 2, %112 ], [ 4, %116 ]
  call void @llvm.lifetime.end.p0(i64 1128, ptr nonnull %4) #6
  ret i32 %118
}

declare ptr @BKE_sequencer_add_movie_strip(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @seq_load_operator_info(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %6, ptr noundef nonnull @.str.64) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !50
  %11 = tail call i32 @RNA_property_boolean_get(ptr noundef %10, ptr noundef nonnull %7) #6
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1128) %0, i8 0, i64 1128, i1 false)
  %15 = load ptr, ptr %5, align 8, !tbaa !50
  %16 = tail call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.41) #6
  store i32 %16, ptr %0, align 8, !tbaa !116
  %17 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !117
  %18 = load ptr, ptr %5, align 8, !tbaa !50
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.40) #6
  %20 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !134
  %21 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 5
  store i32 1, ptr %21, align 4, !tbaa !104
  %22 = load ptr, ptr %5, align 8, !tbaa !50
  %23 = tail call ptr @RNA_struct_find_property(ptr noundef %22, ptr noundef nonnull @.str.43) #6
  %24 = icmp eq ptr %23, null
  %25 = load ptr, ptr %5, align 8, !tbaa !50
  br i1 %24, label %28, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 6
  tail call void @RNA_property_string_get(ptr noundef %25, ptr noundef nonnull %23, ptr noundef nonnull %27) #6
  br label %34

28:                                               ; preds = %13
  %29 = tail call ptr @RNA_struct_find_property(ptr noundef %25, ptr noundef nonnull @.str.44) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 8, !tbaa !50
  %33 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 6
  tail call void @RNA_property_string_get(ptr noundef %32, ptr noundef nonnull %29, ptr noundef nonnull %33) #6
  br label %34

34:                                               ; preds = %31, %26
  br i1 %14, label %35, label %39

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 6
  %37 = load ptr, ptr @G, align 8, !tbaa !128
  %38 = getelementptr inbounds %struct.Main, ptr %37, i64 0, i32 2
  tail call void @BLI_path_rel(ptr noundef nonnull %36, ptr noundef nonnull %38) #6
  br label %39

39:                                               ; preds = %28, %35, %34
  %40 = load ptr, ptr %5, align 8, !tbaa !50
  %41 = tail call ptr @RNA_struct_find_property(ptr noundef %40, ptr noundef nonnull @.str.42) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %5, align 8, !tbaa !50
  %45 = tail call i32 @RNA_property_int_get(ptr noundef %44, ptr noundef nonnull %41) #6
  store i32 %45, ptr %17, align 4, !tbaa !117
  br label %46

46:                                               ; preds = %43, %39
  %47 = load ptr, ptr %5, align 8, !tbaa !50
  %48 = tail call ptr @RNA_struct_find_property(ptr noundef %47, ptr noundef nonnull @.str.47) #6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %5, align 8, !tbaa !50
  %52 = tail call i32 @RNA_property_boolean_get(ptr noundef %51, ptr noundef nonnull %48) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !106
  %57 = or i32 %56, 1
  store i32 %57, ptr %55, align 4, !tbaa !106
  br label %58

58:                                               ; preds = %54, %50, %46
  %59 = load ptr, ptr %5, align 8, !tbaa !50
  %60 = tail call ptr @RNA_struct_find_property(ptr noundef %59, ptr noundef nonnull @.str.25) #6
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %5, align 8, !tbaa !50
  %64 = tail call i32 @RNA_property_boolean_get(ptr noundef %63, ptr noundef nonnull %60) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !106
  %69 = or i32 %68, 8
  store i32 %69, ptr %67, align 4, !tbaa !106
  br label %70

70:                                               ; preds = %66, %62, %58
  %71 = load ptr, ptr %5, align 8, !tbaa !50
  %72 = tail call ptr @RNA_struct_find_property(ptr noundef %71, ptr noundef nonnull @.str.19) #6
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %5, align 8, !tbaa !50
  %76 = tail call i32 @RNA_property_boolean_get(ptr noundef %75, ptr noundef nonnull %72) #6
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !106
  %81 = or i32 %80, 4
  store i32 %81, ptr %79, align 4, !tbaa !106
  br label %82

82:                                               ; preds = %78, %74, %70
  %83 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !106
  %85 = or i32 %84, 2
  store i32 %85, ptr %83, align 4, !tbaa !106
  br i1 %24, label %91, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 7
  %88 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 6
  %89 = tail call ptr @BLI_path_basename(ptr noundef nonnull %88) #6
  %90 = tail call ptr @BLI_strncpy(ptr noundef nonnull %87, ptr noundef %89, i64 noundef 64) #6
  br label %107

91:                                               ; preds = %82
  %92 = load ptr, ptr %5, align 8, !tbaa !50
  %93 = tail call ptr @RNA_struct_find_property(ptr noundef %92, ptr noundef nonnull @.str.61) #6
  %94 = icmp eq ptr %93, null
  br i1 %94, label %107, label %95

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #6
  %96 = load ptr, ptr %5, align 8, !tbaa !50
  call void @RNA_property_collection_begin(ptr noundef %96, ptr noundef nonnull %93, ptr noundef nonnull %3) #6
  %97 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !108
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  %101 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %101, i64 24, i1 false), !tbaa.struct !112
  %102 = call ptr @RNA_string_get_alloc(ptr noundef nonnull %4, ptr noundef nonnull @.str.62, ptr noundef null, i32 noundef 0) #6
  %103 = getelementptr inbounds %struct.SeqLoadInfo, ptr %0, i64 0, i32 7
  %104 = call ptr @BLI_strncpy(ptr noundef nonnull %103, ptr noundef %102, i64 noundef 64) #6
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %105(ptr noundef %102) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  br label %106

106:                                              ; preds = %100, %95
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #6
  br label %107

107:                                              ; preds = %91, %106, %86
  ret void
}

declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_split_dir_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BKE_sequencer_update_muting(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @RNA_property_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_add_sound_strip(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @BKE_sequencer_add_image_strip(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_init_colorspace(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_sequence_effect_get_num_inputs(i32 noundef) local_unnamed_addr #2

declare i32 @seq_effect_find_selected(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequence_give_name(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_get_effect(ptr dead_on_unwind writable sret(%struct.SeqEffectHandle) align 8, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_tx_set_final_right(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_sequence_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 32}
!46 = !{!35, !36, i64 72}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!35, !36, i64 104}
!50 = !{!51, !36, i64 112}
!51 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!52 = !{i32 2, i32 5}
!53 = !{!51, !36, i64 120}
!54 = !{!55, !36, i64 0}
!55 = !{!"Editing", !36, i64 0, !39, i64 8, !39, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !56, i64 2096, !56, i64 2100, !56, i64 2104, !56, i64 2108, !57, i64 2112}
!56 = !{!"int", !37, i64 0}
!57 = !{!"rctf", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!58 = !{!"float", !37, i64 0}
!59 = !{!60, !56, i64 100}
!60 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !56, i64 96, !56, i64 100, !56, i64 104, !56, i64 108, !56, i64 112, !56, i64 116, !56, i64 120, !56, i64 124, !56, i64 128, !56, i64 132, !56, i64 136, !56, i64 140, !58, i64 144, !58, i64 148, !58, i64 152, !41, i64 156, !41, i64 158, !56, i64 160, !56, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !58, i64 224, !58, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !39, i64 256, !36, i64 272, !36, i64 280, !58, i64 288, !58, i64 292, !58, i64 296, !58, i64 300, !36, i64 304, !56, i64 312, !56, i64 316, !56, i64 320, !58, i64 324, !56, i64 328, !37, i64 332, !37, i64 333, !39, i64 336}
!61 = !{!60, !56, i64 320}
!62 = !{!60, !36, i64 184}
!63 = !{!36, !36, i64 0}
!64 = !{!60, !36, i64 168}
!65 = !{!66, !56, i64 688}
!66 = !{!"Scene", !67, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !56, i64 232, !56, i64 236, !56, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !68, i64 280, !76, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !56, i64 4380, !39, i64 4384, !77, i64 4400, !78, i64 4416, !81, i64 4600, !36, i64 4608, !82, i64 4616, !36, i64 4640, !83, i64 4648, !83, i64 4656, !70, i64 4664, !71, i64 4824, !84, i64 4888, !36, i64 4952}
!67 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !56, i64 100, !56, i64 104, !56, i64 108, !36, i64 112}
!68 = !{!"RenderData", !69, i64 0, !36, i64 248, !36, i64 256, !72, i64 264, !73, i64 328, !56, i64 400, !56, i64 404, !56, i64 408, !58, i64 412, !56, i64 416, !56, i64 420, !56, i64 424, !56, i64 428, !41, i64 432, !41, i64 434, !58, i64 436, !58, i64 440, !58, i64 444, !58, i64 448, !58, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !56, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !56, i64 484, !56, i64 488, !41, i64 492, !41, i64 494, !56, i64 496, !56, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !56, i64 516, !56, i64 520, !56, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !57, i64 544, !57, i64 560, !74, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !58, i64 612, !58, i64 616, !58, i64 620, !58, i64 624, !56, i64 628, !58, i64 632, !58, i64 636, !58, i64 640, !58, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !58, i64 660, !58, i64 664, !41, i64 668, !41, i64 670, !58, i64 672, !58, i64 676, !37, i64 680, !56, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !56, i64 2520, !41, i64 2524, !41, i64 2526, !58, i64 2528, !58, i64 2532, !41, i64 2536, !41, i64 2538, !58, i64 2540, !41, i64 2544, !41, i64 2546, !56, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !58, i64 2560, !58, i64 2564, !36, i64 2568, !56, i64 2576, !58, i64 2580, !37, i64 2584, !75, i64 2616, !56, i64 3976, !56, i64 3980}
!69 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !58, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !70, i64 24, !71, i64 184}
!70 = !{!"ColorManagedViewSettings", !56, i64 0, !56, i64 4, !37, i64 8, !37, i64 72, !58, i64 136, !58, i64 140, !36, i64 144, !36, i64 152}
!71 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!72 = !{!"QuicktimeCodecSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !41, i64 48, !41, i64 50, !56, i64 52, !56, i64 56, !56, i64 60}
!73 = !{!"FFMpegCodecData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !58, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !36, i64 64}
!74 = !{!"rcti", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!75 = !{!"BakeData", !69, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !58, i64 1280, !58, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!76 = !{!"AudioData", !56, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !56, i64 16, !41, i64 20, !41, i64 22, !58, i64 24, !58, i64 28}
!77 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!78 = !{!"GameData", !77, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !79, i64 40, !41, i64 64, !41, i64 66, !58, i64 68, !80, i64 72, !58, i64 128, !58, i64 132, !56, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !58, i64 164, !58, i64 168, !58, i64 172, !58, i64 176, !58, i64 180}
!79 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !58, i64 8, !58, i64 12, !36, i64 16}
!80 = !{!"RecastData", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !56, i64 40, !58, i64 44, !58, i64 48, !41, i64 52, !41, i64 54}
!81 = !{!"UnitSettings", !58, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!82 = !{!"PhysicsSettings", !37, i64 0, !56, i64 12, !56, i64 16, !56, i64 20}
!83 = !{!"long", !37, i64 0}
!84 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!85 = !{!66, !56, i64 684}
!86 = !{!60, !56, i64 104}
!87 = !{!88, !56, i64 16}
!88 = !{!"Strip", !36, i64 0, !36, i64 8, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !84, i64 840}
!89 = !{!60, !36, i64 280}
!90 = !{!60, !56, i64 96}
!91 = !{!60, !36, i64 200}
!92 = !{!93, !56, i64 100}
!93 = !{!"MovieClip", !67, i64 0, !36, i64 120, !37, i64 128, !56, i64 1152, !56, i64 1156, !37, i64 1160, !58, i64 1168, !58, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !94, i64 1200, !36, i64 1528, !100, i64 1536, !56, i64 2312, !56, i64 2316, !56, i64 2320, !56, i64 2324, !84, i64 2328}
!94 = !{!"MovieTracking", !95, i64 0, !96, i64 72, !39, i64 128, !39, i64 144, !97, i64 160, !98, i64 184, !36, i64 232, !36, i64 240, !39, i64 248, !56, i64 264, !56, i64 268, !36, i64 272, !99, i64 280}
!95 = !{!"MovieTrackingSettings", !56, i64 0, !41, i64 4, !41, i64 6, !58, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !58, i64 24, !41, i64 28, !41, i64 30, !56, i64 32, !56, i64 36, !56, i64 40, !41, i64 44, !41, i64 46, !58, i64 48, !56, i64 52, !56, i64 56, !58, i64 60, !58, i64 64, !56, i64 68}
!96 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !58, i64 12, !58, i64 16, !58, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52}
!97 = !{!"MovieTrackingReconstruction", !56, i64 0, !58, i64 4, !56, i64 8, !56, i64 12, !36, i64 16}
!98 = !{!"MovieTrackingStabilization", !56, i64 0, !56, i64 4, !56, i64 8, !58, i64 12, !36, i64 16, !58, i64 24, !58, i64 28, !58, i64 32, !56, i64 36, !56, i64 40, !58, i64 44}
!99 = !{!"MovieTrackingDopesheet", !56, i64 0, !41, i64 4, !41, i64 6, !39, i64 8, !39, i64 24, !56, i64 40, !56, i64 44}
!100 = !{!"MovieClipProxy", !37, i64 0, !41, i64 768, !41, i64 770, !41, i64 772, !41, i64 774}
!101 = !{!60, !36, i64 208}
!102 = !{!103, !56, i64 100}
!103 = !{!"Mask", !67, i64 0, !36, i64 120, !39, i64 128, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164}
!104 = !{!105, !56, i64 20}
!105 = !{!"SeqLoadInfo", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !37, i64 24, !37, i64 1048, !36, i64 1112, !56, i64 1120, !56, i64 1124}
!106 = !{!105, !56, i64 12}
!107 = !{!88, !36, i64 32}
!108 = !{!109, !56, i64 128}
!109 = !{!"CollectionPropertyIterator", !110, i64 0, !110, i64 24, !36, i64 48, !37, i64 56, !56, i64 96, !56, i64 100, !110, i64 104, !56, i64 128}
!110 = !{!"PointerRNA", !111, i64 0, !36, i64 8, !36, i64 16}
!111 = !{!"", !36, i64 0}
!112 = !{i64 0, i64 8, !63, i64 8, i64 8, !63, i64 16, i64 8, !63}
!113 = distinct !{!113, !114, !115}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"llvm.loop.unroll.disable"}
!116 = !{!105, !56, i64 0}
!117 = !{!105, !56, i64 4}
!118 = !{!60, !56, i64 124}
!119 = !{i64 0, i64 8, !63, i64 8, i64 8, !63, i64 16, i64 8, !63, i64 24, i64 8, !63, i64 32, i64 8, !63, i64 40, i64 8, !63, i64 48, i64 8, !63, i64 56, i64 8, !63, i64 64, i64 8, !63, i64 72, i64 8, !63, i64 80, i64 8, !63}
!120 = !{!60, !36, i64 232}
!121 = !{!60, !36, i64 240}
!122 = !{!60, !36, i64 248}
!123 = !{!60, !36, i64 304}
!124 = !{!60, !56, i64 128}
!125 = !{!66, !56, i64 680}
!126 = !{!60, !56, i64 140}
!127 = distinct !{!127, !114, !115}
!128 = !{!129, !36, i64 0}
!129 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !56, i64 2096, !56, i64 2100, !37, i64 2104, !56, i64 2108, !56, i64 2112, !37, i64 2116}
!130 = !{ptr @BKE_sequencer_add_movie_strip, ptr @BKE_sequencer_add_sound_strip}
!131 = !{!105, !36, i64 1112}
!132 = distinct !{!132, !114, !115}
!133 = !{!105, !56, i64 1120}
!134 = !{!105, !56, i64 8}
