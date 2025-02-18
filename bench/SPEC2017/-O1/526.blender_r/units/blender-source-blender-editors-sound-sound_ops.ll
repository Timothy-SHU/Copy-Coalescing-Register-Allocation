; ModuleID = 'blender/source/blender/editors/sound/sound_ops.c'
source_filename = "blender/source/blender/editors/sound/sound_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.StructRNA = type opaque
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.PropertyPointerRNA = type { %struct.PointerRNA, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
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
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.bSound = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, float, float, float, float, float, float, i32, i32, ptr, ptr, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Open Sound\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Load a sound file\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"SOUND_OT_open\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Cache\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Cache the sound in memory\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Mono\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Mixdown the sound to mono\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Compiled without sound support\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"OpenPropertyPointerRNA\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"Open Sound Mono\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Load a sound file as mono\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"SOUND_OT_open_mono\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Mixdown\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Mixes the scene's audio to a sound file\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"SOUND_OT_mixdown\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Pack Sound\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Pack the sound into the current blend file\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"SOUND_OT_pack\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Unpack Sound\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Unpack the sound to the samples filename\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"SOUND_OT_unpack\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@unpack_method_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.25 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"How to unpack\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Sound Name\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Sound datablock name to unpack\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.30 = private unnamed_addr constant [64 x i8] c"AutoPack is enabled, so image will be packed again on file save\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"sounds\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Update Animation\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"Update animation flags\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"SOUND_OT_update_animation_flags\00", align 1
@RNA_Sequence = external global %struct.StructRNA, align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"pitch\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"pan\00", align 1
@RNA_Scene = external global %struct.StructRNA, align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"audio_volume\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"Update Animation Cache\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"Update the audio animation cache\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"SOUND_OT_bake_animation\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatortypes_sound() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @SOUND_OT_open) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @SOUND_OT_open_mono) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @SOUND_OT_mixdown) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @SOUND_OT_pack) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @SOUND_OT_unpack) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @SOUND_OT_update_animation_flags) #5
  tail call void @WM_operatortype_append(ptr noundef nonnull @SOUND_OT_bake_animation) #5
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @SOUND_OT_open(ptr noundef %0) #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_open_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sound_open_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sound_open_cancel, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2336, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #5
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SOUND_OT_open_mono(ptr noundef %0) #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_open_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sound_open_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sound_open_cancel, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2336, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #5
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SOUND_OT_mixdown(ptr noundef %0) #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_mixdown_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sound_mixdown_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !47
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2304, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 9, i16 noundef signext 0) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SOUND_OT_pack(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_pack_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sound_poll, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SOUND_OT_unpack(ptr nocapture noundef %0) #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_unpack_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sound_unpack_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sound_poll, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.24, ptr noundef nonnull @unpack_method_items, i32 noundef 5, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #5
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.27, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SOUND_OT_update_animation_flags(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_update_animation_flags_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %5, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SOUND_OT_bake_animation(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_bake_animation_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %5, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sound_open_exec(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  tail call void @BKE_report(ptr noundef %4, i32 noundef 32, ptr noundef nonnull @.str.9) #5
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @sound_open_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.10) #5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  tail call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.9) #5
  br label %17

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %13 = tail call ptr %12(i64 noundef 32, ptr noundef nonnull @.str.11) #5
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %13, i64 0, i32 1
  tail call void @uiIDContextProperty(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %15) #5
  %16 = tail call i32 @WM_operator_filesel(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i32 [ 2, %8 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @sound_open_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void %3(ptr noundef %5) #5
  store ptr null, ptr %4, align 8, !tbaa !54
  ret void
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WM_operator_filesel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @sound_mixdown_exec(ptr nocapture readnone %0, ptr nocapture readnone %1) #4 {
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @sound_mixdown_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.10) #5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @WM_operator_filesel(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i32 [ %9, %8 ], [ 4, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sound_pack_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #5
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !80
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 37
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bSound, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = getelementptr inbounds %struct.bSound, ptr %18, i64 0, i32 1
  %28 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !85
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.Library, ptr %29, i64 0, i32 4
  %32 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 2
  %33 = select i1 %30, ptr %32, ptr %31
  %34 = tail call ptr @newPackedFile(ptr noundef %26, ptr noundef nonnull %27, ptr noundef nonnull %33) #5
  store ptr %34, ptr %21, align 8, !tbaa !83
  tail call void @sound_load(ptr noundef %3, ptr noundef nonnull %18) #5
  br label %35

35:                                               ; preds = %16, %20, %2, %8, %12, %24
  %36 = phi i32 [ 4, %24 ], [ 2, %12 ], [ 2, %8 ], [ 2, %2 ], [ 2, %20 ], [ 2, %16 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @sound_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !80
  %13 = icmp eq i32 %12, 4
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %1, %6
  %16 = phi i32 [ 0, %6 ], [ 0, %1 ], [ %14, %10 ]
  ret i32 %16
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @newPackedFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sound_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @sound_unpack_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.24) #5
  %8 = load ptr, ptr %5, align 8, !tbaa !52
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.27) #5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  %12 = load ptr, ptr %5, align 8, !tbaa !52
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.27, ptr noundef nonnull %3) #5
  %13 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 31
  %14 = call ptr @BLI_findstring(ptr noundef nonnull %13, ptr noundef nonnull %3, i32 noundef 34) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi ptr [ %14, %11 ], [ null, %2 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.bSound, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !86
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  call void @BKE_report(ptr noundef %28, i32 noundef 16, ptr noundef nonnull @.str.30) #5
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = call i32 @unpackSound(ptr noundef %4, ptr noundef %31, ptr noundef nonnull %16, i32 noundef %7) #5
  br label %33

33:                                               ; preds = %15, %18, %29
  %34 = phi i32 [ 4, %29 ], [ 2, %18 ], [ 2, %15 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sound_unpack_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.27) #5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @sound_unpack_exec(ptr noundef %0, ptr noundef %1), !range !88
  br label %42

13:                                               ; preds = %3
  %14 = icmp eq ptr %6, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !80
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 37
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bSound, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !83
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !86
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  tail call void @BKE_report(ptr noundef %37, i32 noundef 16, ptr noundef nonnull @.str.30) #5
  br label %38

38:                                               ; preds = %35, %31
  %39 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 4, i64 2
  %40 = getelementptr inbounds %struct.bSound, ptr %25, i64 0, i32 1
  %41 = load ptr, ptr %28, align 8, !tbaa !83
  tail call void @unpack_menu(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull @.str.31, ptr noundef %41) #5
  br label %42

42:                                               ; preds = %23, %27, %13, %15, %19, %38, %11
  %43 = phi i32 [ %12, %11 ], [ 4, %38 ], [ 2, %19 ], [ 2, %15 ], [ 2, %13 ], [ 2, %27 ], [ 2, %23 ]
  ret i32 %43
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @unpackSound(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @unpack_menu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @sound_update_animation_flags_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.SeqIterator, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  call void @BKE_sequence_iterator_begin(ptr noundef %7, ptr noundef nonnull %4, i8 noundef zeroext 0) #5
  %8 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !89
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %13

13:                                               ; preds = %11, %13
  %14 = load ptr, ptr %12, align 8, !tbaa !91
  %15 = call ptr @id_data_find_fcurve(ptr noundef %5, ptr noundef %14, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull %3) #5
  %16 = icmp ne ptr %15, null
  %17 = load i8, ptr %3, align 1
  %18 = icmp ne i8 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  %20 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !92
  %22 = and i32 %21, -16777217
  %23 = select i1 %19, i32 16777216, i32 0
  %24 = or disjoint i32 %22, %23
  store i32 %24, ptr %20, align 8, !tbaa !92
  %25 = call ptr @id_data_find_fcurve(ptr noundef %5, ptr noundef %14, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull %3) #5
  %26 = icmp ne ptr %25, null
  %27 = load i8, ptr %3, align 1
  %28 = icmp ne i8 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  %30 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !92
  %32 = and i32 %31, -33554433
  %33 = select i1 %29, i32 33554432, i32 0
  %34 = or disjoint i32 %32, %33
  store i32 %34, ptr %30, align 8, !tbaa !92
  %35 = call ptr @id_data_find_fcurve(ptr noundef %5, ptr noundef %14, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull %3) #5
  %36 = icmp ne ptr %35, null
  %37 = load i8, ptr %3, align 1
  %38 = icmp ne i8 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  %40 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !92
  %42 = and i32 %41, -67108865
  %43 = select i1 %39, i32 67108864, i32 0
  %44 = or disjoint i32 %42, %43
  store i32 %44, ptr %40, align 8, !tbaa !92
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #5
  %45 = load i32, ptr %8, align 8, !tbaa !89
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %13, !llvm.loop !93

47:                                               ; preds = %13, %2
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  %48 = call ptr @id_data_find_fcurve(ptr noundef %5, ptr noundef %5, ptr noundef nonnull @RNA_Scene, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull %3) #5
  %49 = icmp ne ptr %48, null
  %50 = load i8, ptr %3, align 1
  %51 = icmp ne i8 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  %53 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 23, i32 5
  %54 = load i16, ptr %53, align 4, !tbaa !96
  %55 = and i16 %54, -9
  %56 = select i1 %52, i16 8, i16 0
  %57 = or disjoint i16 %55, %56
  store i16 %57, ptr %53, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  ret i32 4
}

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @id_data_find_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #1

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @sound_bake_animation_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #5
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !97
  %7 = tail call i32 @sound_update_animation_flags_exec(ptr noundef %0, ptr poison)
  %8 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !98
  %10 = icmp sgt i32 %9, 0
  %11 = add nsw i32 %9, -1
  %12 = select i1 %10, i32 %11, i32 0
  %13 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !99
  %15 = add nsw i32 %14, 1
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 46
  %19 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 12
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i32 [ %12, %17 ], [ %24, %20 ]
  store i32 %21, ptr %5, align 8, !tbaa !97
  %22 = load ptr, ptr %18, align 8, !tbaa !100
  %23 = load i32, ptr %19, align 8, !tbaa !102
  tail call void @BKE_scene_update_for_newframe(ptr noundef %22, ptr noundef %3, ptr noundef %4, i32 noundef %23) #5
  %24 = add nsw i32 %21, 1
  %25 = load i32, ptr %13, align 8, !tbaa !99
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %20, !llvm.loop !103

27:                                               ; preds = %20, %2
  store i32 %6, ptr %5, align 8, !tbaa !97
  %28 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 46
  %29 = load ptr, ptr %28, align 8, !tbaa !100
  %30 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 12
  %31 = load i32, ptr %30, align 8, !tbaa !102
  tail call void @BKE_scene_update_for_newframe(ptr noundef %29, ptr noundef %3, ptr noundef %4, i32 noundef %31) #5
  ret i32 4
}

declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 56}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!35, !36, i64 72}
!50 = !{!51, !36, i64 120}
!51 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!52 = !{!51, !36, i64 112}
!53 = !{!36, !36, i64 0}
!54 = !{!51, !36, i64 96}
!55 = !{!56, !36, i64 256}
!56 = !{!"Scene", !57, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !58, i64 232, !58, i64 236, !58, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !59, i64 280, !69, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !58, i64 4380, !39, i64 4384, !70, i64 4400, !71, i64 4416, !74, i64 4600, !36, i64 4608, !75, i64 4616, !36, i64 4640, !76, i64 4648, !76, i64 4656, !62, i64 4664, !63, i64 4824, !77, i64 4888, !36, i64 4952}
!57 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !58, i64 100, !58, i64 104, !58, i64 108, !36, i64 112}
!58 = !{!"int", !37, i64 0}
!59 = !{!"RenderData", !60, i64 0, !36, i64 248, !36, i64 256, !64, i64 264, !65, i64 328, !58, i64 400, !58, i64 404, !58, i64 408, !61, i64 412, !58, i64 416, !58, i64 420, !58, i64 424, !58, i64 428, !41, i64 432, !41, i64 434, !61, i64 436, !61, i64 440, !61, i64 444, !61, i64 448, !61, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !58, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !58, i64 484, !58, i64 488, !41, i64 492, !41, i64 494, !58, i64 496, !58, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !58, i64 516, !58, i64 520, !58, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !66, i64 544, !66, i64 560, !67, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !61, i64 612, !61, i64 616, !61, i64 620, !61, i64 624, !58, i64 628, !61, i64 632, !61, i64 636, !61, i64 640, !61, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !61, i64 660, !61, i64 664, !41, i64 668, !41, i64 670, !61, i64 672, !61, i64 676, !37, i64 680, !58, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !58, i64 2520, !41, i64 2524, !41, i64 2526, !61, i64 2528, !61, i64 2532, !41, i64 2536, !41, i64 2538, !61, i64 2540, !41, i64 2544, !41, i64 2546, !58, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !61, i64 2560, !61, i64 2564, !36, i64 2568, !58, i64 2576, !61, i64 2580, !37, i64 2584, !68, i64 2616, !58, i64 3976, !58, i64 3980}
!60 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !61, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !62, i64 24, !63, i64 184}
!61 = !{!"float", !37, i64 0}
!62 = !{!"ColorManagedViewSettings", !58, i64 0, !58, i64 4, !37, i64 8, !37, i64 72, !61, i64 136, !61, i64 140, !36, i64 144, !36, i64 152}
!63 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!64 = !{!"QuicktimeCodecSettings", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !41, i64 48, !41, i64 50, !58, i64 52, !58, i64 56, !58, i64 60}
!65 = !{!"FFMpegCodecData", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !61, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !58, i64 56, !58, i64 60, !36, i64 64}
!66 = !{!"rctf", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!67 = !{!"rcti", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!68 = !{!"BakeData", !60, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !61, i64 1280, !61, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!69 = !{!"AudioData", !58, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !58, i64 16, !41, i64 20, !41, i64 22, !61, i64 24, !61, i64 28}
!70 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!71 = !{!"GameData", !70, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !72, i64 40, !41, i64 64, !41, i64 66, !61, i64 68, !73, i64 72, !61, i64 128, !61, i64 132, !58, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !61, i64 164, !61, i64 168, !61, i64 172, !61, i64 176, !61, i64 180}
!72 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !61, i64 8, !61, i64 12, !36, i64 16}
!73 = !{!"RecastData", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !61, i64 32, !61, i64 36, !58, i64 40, !61, i64 44, !61, i64 48, !41, i64 52, !41, i64 54}
!74 = !{!"UnitSettings", !61, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!75 = !{!"PhysicsSettings", !37, i64 0, !58, i64 12, !58, i64 16, !58, i64 20}
!76 = !{!"long", !37, i64 0}
!77 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!78 = !{!79, !36, i64 40}
!79 = !{!"Editing", !36, i64 0, !39, i64 8, !39, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !58, i64 2096, !58, i64 2100, !58, i64 2104, !58, i64 2108, !66, i64 2112}
!80 = !{!81, !58, i64 100}
!81 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !58, i64 96, !58, i64 100, !58, i64 104, !58, i64 108, !58, i64 112, !58, i64 116, !58, i64 120, !58, i64 124, !58, i64 128, !58, i64 132, !58, i64 136, !58, i64 140, !61, i64 144, !61, i64 148, !61, i64 152, !41, i64 156, !41, i64 158, !58, i64 160, !58, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !61, i64 224, !61, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !39, i64 256, !36, i64 272, !36, i64 280, !61, i64 288, !61, i64 292, !61, i64 296, !61, i64 300, !36, i64 304, !58, i64 312, !58, i64 316, !58, i64 320, !61, i64 324, !58, i64 328, !37, i64 332, !37, i64 333, !39, i64 336}
!82 = !{!81, !36, i64 272}
!83 = !{!84, !36, i64 1144}
!84 = !{!"bSound", !57, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !61, i64 1176, !61, i64 1180, !61, i64 1184, !61, i64 1188, !61, i64 1192, !61, i64 1196, !58, i64 1200, !58, i64 1204, !36, i64 1208, !36, i64 1216, !36, i64 1224}
!85 = !{!84, !36, i64 24}
!86 = !{!87, !58, i64 2108}
!87 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !58, i64 2096, !58, i64 2100, !37, i64 2104, !58, i64 2108, !58, i64 2112, !37, i64 2116}
!88 = !{i32 2, i32 5}
!89 = !{!90, !58, i64 24}
!90 = !{!"SeqIterator", !36, i64 0, !58, i64 8, !58, i64 12, !36, i64 16, !58, i64 24}
!91 = !{!90, !36, i64 16}
!92 = !{!81, !58, i64 96}
!93 = distinct !{!93, !94, !95}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!56, !41, i64 4284}
!97 = !{!56, !58, i64 680}
!98 = !{!56, !58, i64 684}
!99 = !{!56, !58, i64 688}
!100 = !{!101, !36, i64 1888}
!101 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !76, i64 1048, !37, i64 1056, !41, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!102 = !{!56, !58, i64 232}
!103 = distinct !{!103, !94, !95}
