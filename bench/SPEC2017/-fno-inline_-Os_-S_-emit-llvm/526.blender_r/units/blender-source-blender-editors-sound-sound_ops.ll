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

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SOUND_OT_open(ptr noundef %0) #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_open_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sound_open_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sound_open_cancel, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2336, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #5
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  %11 = load ptr, ptr %8, align 8, !tbaa !19
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SOUND_OT_open_mono(ptr noundef %0) #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_open_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sound_open_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sound_open_cancel, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2336, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #5
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  %11 = load ptr, ptr %8, align 8, !tbaa !19
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SOUND_OT_mixdown(ptr noundef %0) #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_mixdown_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sound_mixdown_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !18
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2304, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 9, i16 noundef signext 0) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SOUND_OT_pack(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_pack_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sound_poll, ptr %5, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SOUND_OT_unpack(ptr nocapture noundef %0) #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_unpack_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sound_unpack_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sound_poll, ptr %6, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.24, ptr noundef nonnull @unpack_method_items, i32 noundef 5, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #5
  %11 = load ptr, ptr %8, align 8, !tbaa !19
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.27, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SOUND_OT_update_animation_flags(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_update_animation_flags_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %5, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SOUND_OT_bake_animation(ptr nocapture noundef writeonly %0) #2 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sound_bake_animation_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %5, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sound_open_exec(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  tail call void @BKE_report(ptr noundef %4, i32 noundef 32, ptr noundef nonnull @.str.9) #5
  ret i32 2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sound_open_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.10) #5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @sound_open_exec(ptr poison, ptr noundef nonnull %1) #6
  br label %12

10:                                               ; preds = %3
  tail call fastcc void @sound_open_init(ptr noundef %0, ptr noundef nonnull %1) #6
  %11 = tail call i32 @WM_operator_filesel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #5
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ 2, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sound_open_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  tail call void %3(ptr noundef %5) #5
  store ptr null, ptr %4, align 8, !tbaa !25
  ret void
}

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sound_open_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !24
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str.11) #5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %4, i64 0, i32 1
  tail call void @uiIDContextProperty(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %6) #5
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_filesel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @sound_mixdown_exec(ptr nocapture readnone %0, ptr nocapture readnone %1) #4 {
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sound_mixdown_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.10) #5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @WM_operator_filesel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #5
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i32 [ %9, %8 ], [ 4, %3 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sound_pack_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #5
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 37
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bSound, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  %27 = getelementptr inbounds %struct.bSound, ptr %18, i64 0, i32 1
  %28 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.Library, ptr %29, i64 0, i32 4
  %32 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 2
  %33 = select i1 %30, ptr %32, ptr %31
  %34 = tail call ptr @newPackedFile(ptr noundef %26, ptr noundef nonnull %27, ptr noundef nonnull %33) #5
  store ptr %34, ptr %21, align 8, !tbaa !54
  tail call void @sound_load(ptr noundef %3, ptr noundef nonnull %18) #5
  br label %35

35:                                               ; preds = %16, %20, %2, %8, %12, %24
  %36 = phi i32 [ 4, %24 ], [ 2, %12 ], [ 2, %8 ], [ 2, %2 ], [ 2, %20 ], [ 2, %16 ]
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sound_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !51
  %13 = icmp eq i32 %12, 4
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %1, %6
  %16 = phi i32 [ 0, %6 ], [ 0, %1 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @newPackedFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sound_unpack_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.24) #5
  %8 = load ptr, ptr %5, align 8, !tbaa !23
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.27) #5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %12 = load ptr, ptr %5, align 8, !tbaa !23
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.27, ptr noundef nonnull %3) #5
  %13 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 31
  %14 = call ptr @BLI_findstring(ptr noundef nonnull %13, ptr noundef nonnull %3, i32 noundef 34) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bSound, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !57
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  call void @BKE_report(ptr noundef %26, i32 noundef 16, ptr noundef nonnull @.str.30) #5
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  %30 = call i32 @unpackSound(ptr noundef %4, ptr noundef %29, ptr noundef nonnull %14, i32 noundef %7) #5
  br label %31

31:                                               ; preds = %2, %11, %16, %27
  %32 = phi i32 [ 4, %27 ], [ 2, %16 ], [ 2, %11 ], [ 2, %2 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sound_unpack_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.27) #5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @sound_unpack_exec(ptr noundef %0, ptr noundef nonnull %1) #6, !range !59
  br label %43

13:                                               ; preds = %3
  %14 = icmp eq ptr %6, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 37
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bSound, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !57
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  tail call void @BKE_report(ptr noundef %37, i32 noundef 16, ptr noundef nonnull @.str.30) #5
  %38 = load ptr, ptr %28, align 8, !tbaa !54
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi ptr [ %38, %35 ], [ %29, %31 ]
  %41 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 4, i64 2
  %42 = getelementptr inbounds %struct.bSound, ptr %25, i64 0, i32 1
  tail call void @unpack_menu(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %41, ptr noundef nonnull %42, ptr noundef nonnull @.str.31, ptr noundef %40) #5
  br label %43

43:                                               ; preds = %23, %27, %13, %15, %19, %39, %11
  %44 = phi i32 [ %12, %11 ], [ 4, %39 ], [ 2, %19 ], [ 2, %15 ], [ 2, %13 ], [ 2, %27 ], [ 2, %23 ]
  ret i32 %44
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @unpackSound(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unpack_menu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sound_update_animation_flags_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.SeqIterator, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  call void @BKE_sequence_iterator_begin(ptr noundef %7, ptr noundef nonnull %4, i8 noundef zeroext 0) #5
  %8 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %13

13:                                               ; preds = %11, %13
  %14 = load ptr, ptr %12, align 8, !tbaa !62
  %15 = call ptr @id_data_find_fcurve(ptr noundef %5, ptr noundef %14, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull %3) #5
  %16 = icmp ne ptr %15, null
  %17 = load i8, ptr %3, align 1
  %18 = icmp ne i8 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  %20 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !63
  %22 = and i32 %21, -16777217
  %23 = select i1 %19, i32 16777216, i32 0
  %24 = or disjoint i32 %22, %23
  store i32 %24, ptr %20, align 8, !tbaa !63
  %25 = call ptr @id_data_find_fcurve(ptr noundef %5, ptr noundef nonnull %14, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull %3) #5
  %26 = icmp ne ptr %25, null
  %27 = load i8, ptr %3, align 1
  %28 = icmp ne i8 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  %30 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !63
  %32 = and i32 %31, -33554433
  %33 = select i1 %29, i32 33554432, i32 0
  %34 = or disjoint i32 %32, %33
  store i32 %34, ptr %30, align 8, !tbaa !63
  %35 = call ptr @id_data_find_fcurve(ptr noundef %5, ptr noundef nonnull %14, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull %3) #5
  %36 = icmp ne ptr %35, null
  %37 = load i8, ptr %3, align 1
  %38 = icmp ne i8 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  %40 = getelementptr inbounds %struct.Sequence, ptr %14, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !63
  %42 = and i32 %41, -67108865
  %43 = select i1 %39, i32 67108864, i32 0
  %44 = or disjoint i32 %42, %43
  store i32 %44, ptr %40, align 8, !tbaa !63
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #5
  %45 = load i32, ptr %8, align 8, !tbaa !60
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %13, !llvm.loop !64

47:                                               ; preds = %13, %2
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  %48 = call ptr @id_data_find_fcurve(ptr noundef %5, ptr noundef %5, ptr noundef nonnull @RNA_Scene, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull %3) #5
  %49 = icmp ne ptr %48, null
  %50 = load i8, ptr %3, align 1
  %51 = icmp ne i8 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  %53 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 23, i32 5
  %54 = load i16, ptr %53, align 4, !tbaa !66
  %55 = and i16 %54, -9
  %56 = select i1 %52, i16 8, i16 0
  %57 = or disjoint i16 %55, %56
  store i16 %57, ptr %53, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 4
}

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @id_data_find_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sound_bake_animation_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #5
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !67
  %7 = tail call i32 @sound_update_animation_flags_exec(ptr noundef %0, ptr poison) #6
  %8 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !68
  %10 = icmp sgt i32 %9, 0
  %11 = add nsw i32 %9, -1
  %12 = select i1 %10, i32 %11, i32 0
  %13 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !69
  %15 = add nsw i32 %14, 1
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 46
  %19 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 12
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i32 [ %12, %17 ], [ %24, %20 ]
  store i32 %21, ptr %5, align 8, !tbaa !67
  %22 = load ptr, ptr %18, align 8, !tbaa !70
  %23 = load i32, ptr %19, align 8, !tbaa !72
  tail call void @BKE_scene_update_for_newframe(ptr noundef %22, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %23) #5
  %24 = add nsw i32 %21, 1
  %25 = load i32, ptr %13, align 8, !tbaa !69
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %20, !llvm.loop !73

27:                                               ; preds = %20, %2
  store i32 %6, ptr %5, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 46
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  %30 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 12
  %31 = load i32, ptr %30, align 8, !tbaa !72
  tail call void @BKE_scene_update_for_newframe(ptr noundef %29, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %31) #5
  ret i32 4
}

; Function Attrs: optsize
declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

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
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 48}
!17 = !{!6, !7, i64 56}
!18 = !{!6, !12, i64 184}
!19 = !{!6, !7, i64 88}
!20 = !{!6, !7, i64 72}
!21 = !{!22, !7, i64 120}
!22 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!23 = !{!22, !7, i64 112}
!24 = !{!7, !7, i64 0}
!25 = !{!22, !7, i64 96}
!26 = !{!27, !7, i64 256}
!27 = !{!"Scene", !28, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !29, i64 232, !29, i64 236, !29, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !30, i64 280, !40, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !29, i64 4380, !10, i64 4384, !41, i64 4400, !42, i64 4416, !45, i64 4600, !7, i64 4608, !46, i64 4616, !7, i64 4640, !47, i64 4648, !47, i64 4656, !33, i64 4664, !34, i64 4824, !48, i64 4888, !7, i64 4952}
!28 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !29, i64 100, !29, i64 104, !29, i64 108, !7, i64 112}
!29 = !{!"int", !8, i64 0}
!30 = !{!"RenderData", !31, i64 0, !7, i64 248, !7, i64 256, !35, i64 264, !36, i64 328, !29, i64 400, !29, i64 404, !29, i64 408, !32, i64 412, !29, i64 416, !29, i64 420, !29, i64 424, !29, i64 428, !12, i64 432, !12, i64 434, !32, i64 436, !32, i64 440, !32, i64 444, !32, i64 448, !32, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !29, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !29, i64 484, !29, i64 488, !12, i64 492, !12, i64 494, !29, i64 496, !29, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !29, i64 516, !29, i64 520, !29, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !37, i64 544, !37, i64 560, !38, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !32, i64 612, !32, i64 616, !32, i64 620, !32, i64 624, !29, i64 628, !32, i64 632, !32, i64 636, !32, i64 640, !32, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !32, i64 660, !32, i64 664, !12, i64 668, !12, i64 670, !32, i64 672, !32, i64 676, !8, i64 680, !29, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !29, i64 2520, !12, i64 2524, !12, i64 2526, !32, i64 2528, !32, i64 2532, !12, i64 2536, !12, i64 2538, !32, i64 2540, !12, i64 2544, !12, i64 2546, !29, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !32, i64 2560, !32, i64 2564, !7, i64 2568, !29, i64 2576, !32, i64 2580, !8, i64 2584, !39, i64 2616, !29, i64 3976, !29, i64 3980}
!31 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !32, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !33, i64 24, !34, i64 184}
!32 = !{!"float", !8, i64 0}
!33 = !{!"ColorManagedViewSettings", !29, i64 0, !29, i64 4, !8, i64 8, !8, i64 72, !32, i64 136, !32, i64 140, !7, i64 144, !7, i64 152}
!34 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!35 = !{!"QuicktimeCodecSettings", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !12, i64 48, !12, i64 50, !29, i64 52, !29, i64 56, !29, i64 60}
!36 = !{!"FFMpegCodecData", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !32, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !29, i64 48, !29, i64 52, !29, i64 56, !29, i64 60, !7, i64 64}
!37 = !{!"rctf", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12}
!38 = !{!"rcti", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12}
!39 = !{!"BakeData", !31, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !32, i64 1280, !32, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!40 = !{!"AudioData", !29, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !29, i64 16, !12, i64 20, !12, i64 22, !32, i64 24, !32, i64 28}
!41 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!42 = !{!"GameData", !41, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !43, i64 40, !12, i64 64, !12, i64 66, !32, i64 68, !44, i64 72, !32, i64 128, !32, i64 132, !29, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !32, i64 164, !32, i64 168, !32, i64 172, !32, i64 176, !32, i64 180}
!43 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !32, i64 8, !32, i64 12, !7, i64 16}
!44 = !{!"RecastData", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !32, i64 32, !32, i64 36, !29, i64 40, !32, i64 44, !32, i64 48, !12, i64 52, !12, i64 54}
!45 = !{!"UnitSettings", !32, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!46 = !{!"PhysicsSettings", !8, i64 0, !29, i64 12, !29, i64 16, !29, i64 20}
!47 = !{!"long", !8, i64 0}
!48 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!49 = !{!50, !7, i64 40}
!50 = !{!"Editing", !7, i64 0, !10, i64 8, !10, i64 24, !7, i64 40, !8, i64 48, !8, i64 1072, !29, i64 2096, !29, i64 2100, !29, i64 2104, !29, i64 2108, !37, i64 2112}
!51 = !{!52, !29, i64 100}
!52 = !{!"Sequence", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !29, i64 96, !29, i64 100, !29, i64 104, !29, i64 108, !29, i64 112, !29, i64 116, !29, i64 120, !29, i64 124, !29, i64 128, !29, i64 132, !29, i64 136, !29, i64 140, !32, i64 144, !32, i64 148, !32, i64 152, !12, i64 156, !12, i64 158, !29, i64 160, !29, i64 164, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !32, i64 224, !32, i64 228, !7, i64 232, !7, i64 240, !7, i64 248, !10, i64 256, !7, i64 272, !7, i64 280, !32, i64 288, !32, i64 292, !32, i64 296, !32, i64 300, !7, i64 304, !29, i64 312, !29, i64 316, !29, i64 320, !32, i64 324, !29, i64 328, !8, i64 332, !8, i64 333, !10, i64 336}
!53 = !{!52, !7, i64 272}
!54 = !{!55, !7, i64 1144}
!55 = !{!"bSound", !28, i64 0, !8, i64 120, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !32, i64 1176, !32, i64 1180, !32, i64 1184, !32, i64 1188, !32, i64 1192, !32, i64 1196, !29, i64 1200, !29, i64 1204, !7, i64 1208, !7, i64 1216, !7, i64 1224}
!56 = !{!55, !7, i64 24}
!57 = !{!58, !29, i64 2108}
!58 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !29, i64 2096, !29, i64 2100, !8, i64 2104, !29, i64 2108, !29, i64 2112, !8, i64 2116}
!59 = !{i32 2, i32 5}
!60 = !{!61, !29, i64 24}
!61 = !{!"SeqIterator", !7, i64 0, !29, i64 8, !29, i64 12, !7, i64 16, !29, i64 24}
!62 = !{!61, !7, i64 16}
!63 = !{!52, !29, i64 96}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!27, !12, i64 4284}
!67 = !{!27, !29, i64 680}
!68 = !{!27, !29, i64 684}
!69 = !{!27, !29, i64 688}
!70 = !{!71, !7, i64 1888}
!71 = !{!"Main", !7, i64 0, !7, i64 8, !8, i64 16, !12, i64 1040, !12, i64 1042, !12, i64 1044, !12, i64 1046, !47, i64 1048, !8, i64 1056, !12, i64 1072, !7, i64 1080, !10, i64 1088, !10, i64 1104, !10, i64 1120, !10, i64 1136, !10, i64 1152, !10, i64 1168, !10, i64 1184, !10, i64 1200, !10, i64 1216, !10, i64 1232, !10, i64 1248, !10, i64 1264, !10, i64 1280, !10, i64 1296, !10, i64 1312, !10, i64 1328, !10, i64 1344, !10, i64 1360, !10, i64 1376, !10, i64 1392, !10, i64 1408, !10, i64 1424, !10, i64 1440, !10, i64 1456, !10, i64 1472, !10, i64 1488, !10, i64 1504, !10, i64 1520, !10, i64 1536, !10, i64 1552, !10, i64 1568, !10, i64 1584, !10, i64 1600, !10, i64 1616, !8, i64 1632, !7, i64 1888, !7, i64 1896}
!72 = !{!27, !29, i64 232}
!73 = distinct !{!73, !65}
