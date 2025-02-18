; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_sequencer_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_sequencer_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.StripColorBalance = type { [3 x float], [3 x float], [3 x float], i32, i32 }
%struct.StripElem = type { [256 x i8], i32, i32 }
%struct.StripProxy = type { [768 x i8], [256 x i8], ptr, i16, i16, i16, i16 }
%struct.StripCrop = type { i32, i32, i32, i32 }
%struct.StripTransform = type { i32, i32 }
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
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.SequenceModifierData = type { ptr, ptr, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.MetaStack = type { ptr, ptr, ptr, ptr, [2 x i32] }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.GlowVars = type { float, float, float, float, i32, i32 }
%struct.SpeedControlVars = type { ptr, float, i32, i32, i32 }
%struct.TransformVars = type { float, float, float, float, float, i32, i32, i32 }
%struct.WipeVars = type { float, float, i16, i16 }
%struct.GaussianBlurVars = type { float, float }
%struct.SequenceSearchData = type { ptr, ptr, ptr }
%struct.ColorBalanceModifierData = type { %struct.SequenceModifierData, %struct.StripColorBalance, float }
%struct.CurvesModifierData = type { %struct.SequenceModifierData, %struct.CurveMapping }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.HueCorrectModifierData = type { %struct.SequenceModifierData, %struct.CurveMapping }
%struct.BrightContrastModifierData = type { %struct.SequenceModifierData, float, float }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.SeqEffectHandle = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"COLOR_BALANCE\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Color Balance\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CURVES\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Curves\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"HUE_CORRECT\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Hue Correct\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"BRIGHT_CONTRAST\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Bright/Contrast\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@sequence_modifier_type_items = dso_local local_unnamed_addr global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SequenceColorBalanceData_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceColorBalanceData_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceColorBalanceData_rna_properties_begin, ptr @SequenceColorBalanceData_rna_properties_next, ptr @SequenceColorBalanceData_rna_properties_end, ptr @SequenceColorBalanceData_rna_properties_get, ptr null, ptr null, ptr @SequenceColorBalanceData_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_SequenceElement_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceElement_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceElement_rna_properties_begin, ptr @SequenceElement_rna_properties_next, ptr @SequenceElement_rna_properties_end, ptr @SequenceElement_rna_properties_get, ptr null, ptr null, ptr @SequenceElement_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_SequenceProxy_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_rna_properties_begin, ptr @SequenceProxy_rna_properties_next, ptr @SequenceProxy_rna_properties_end, ptr @SequenceProxy_rna_properties_get, ptr null, ptr null, ptr @SequenceProxy_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_SequenceCrop_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceCrop_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceCrop_rna_properties_begin, ptr @SequenceCrop_rna_properties_next, ptr @SequenceCrop_rna_properties_end, ptr @SequenceCrop_rna_properties_get, ptr null, ptr null, ptr @SequenceCrop_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_SequenceTransform_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceTransform_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceTransform_rna_properties_begin, ptr @SequenceTransform_rna_properties_next, ptr @SequenceTransform_rna_properties_end, ptr @SequenceTransform_rna_properties_get, ptr null, ptr null, ptr @SequenceTransform_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Sequence_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_rna_properties_begin, ptr @Sequence_rna_properties_next, ptr @Sequence_rna_properties_end, ptr @Sequence_rna_properties_get, ptr null, ptr null, ptr @Sequence_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Sequence_modifiers = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sequence_speed_factor, i32 -1, ptr @.str.159, i32 0, ptr @.str.160, ptr @.str.161, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_SequenceModifiers, ptr null }, ptr @Sequence_modifiers_begin, ptr @Sequence_modifiers_next, ptr @Sequence_modifiers_end, ptr @Sequence_modifiers_get, ptr null, ptr @Sequence_modifiers_lookup_int, ptr @Sequence_modifiers_lookup_string, ptr null, ptr @RNA_SequenceModifier }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@rna_SequenceModifiers_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceModifiers_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceModifiers_rna_properties_begin, ptr @SequenceModifiers_rna_properties_next, ptr @SequenceModifiers_rna_properties_end, ptr @SequenceModifiers_rna_properties_get, ptr null, ptr null, ptr @SequenceModifiers_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_SequenceEditor_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceEditor_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceEditor_rna_properties_begin, ptr @SequenceEditor_rna_properties_next, ptr @SequenceEditor_rna_properties_end, ptr @SequenceEditor_rna_properties_get, ptr null, ptr null, ptr @SequenceEditor_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_SequenceEditor_sequences = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceEditor_sequences_all, ptr @rna_SequenceEditor_rna_type, i32 -1, ptr @.str.192, i32 0, ptr @.str.193, ptr @.str.194, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_Sequences, ptr null }, ptr @SequenceEditor_sequences_begin, ptr @SequenceEditor_sequences_next, ptr @SequenceEditor_sequences_end, ptr @SequenceEditor_sequences_get, ptr null, ptr @SequenceEditor_sequences_lookup_int, ptr @SequenceEditor_sequences_lookup_string, ptr null, ptr @RNA_Sequence }, align 8
@rna_SequenceEditor_sequences_all = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceEditor_meta_stack, ptr @rna_SequenceEditor_sequences, i32 -1, ptr @.str.195, i32 0, ptr @.str.196, ptr @.str.197, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceEditor_sequences_all_begin, ptr @SequenceEditor_sequences_all_next, ptr @SequenceEditor_sequences_all_end, ptr @SequenceEditor_sequences_all_get, ptr null, ptr null, ptr @SequenceEditor_sequences_all_lookup_string, ptr null, ptr @RNA_Sequence }, align 8
@rna_SequenceEditor_meta_stack = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceEditor_active_strip, ptr @rna_SequenceEditor_sequences_all, i32 -1, ptr @.str.198, i32 0, ptr @.str.199, ptr @.str.200, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceEditor_meta_stack_begin, ptr @SequenceEditor_meta_stack_next, ptr @SequenceEditor_meta_stack_end, ptr @SequenceEditor_meta_stack_get, ptr null, ptr @SequenceEditor_meta_stack_lookup_int, ptr @SequenceEditor_meta_stack_lookup_string, ptr null, ptr @RNA_Sequence }, align 8
@RNA_Sequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SequenceModifiers, ptr @RNA_SequenceTransform, ptr null, %struct.ListBase { ptr @rna_Sequence_rna_properties, ptr @rna_Sequence_modifiers } }, ptr @.str.109, ptr null, ptr null, i32 4, ptr @.str.109, ptr @.str.177, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr null, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_Sequence_update_func, ptr @rna_Sequence_swap_func } }, align 8
@rna_Sequences_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequences_rna_properties_begin, ptr @Sequences_rna_properties_next, ptr @Sequences_rna_properties_end, ptr @Sequences_rna_properties_get, ptr null, ptr null, ptr @Sequences_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ImageSequence_elements = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_use_deinterlace, ptr @rna_ImageSequence_directory, i32 -1, ptr @.str.254, i32 16384, ptr @.str.255, ptr @.str.2, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_SequenceElements, ptr null }, ptr @ImageSequence_elements_begin, ptr @ImageSequence_elements_next, ptr @ImageSequence_elements_end, ptr @ImageSequence_elements_get, ptr @rna_SequenceEditor_elements_length, ptr @ImageSequence_elements_lookup_int, ptr null, ptr null, ptr @RNA_SequenceElement }, align 8
@.str.12 = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.ImageSequence_elements_lookup_int = private unnamed_addr constant [34 x i8] c"ImageSequence_elements_lookup_int\00", align 1
@RNA_SequenceTransform = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Sequence, ptr @RNA_SequenceCrop, ptr null, %struct.ListBase { ptr @rna_SequenceTransform_rna_properties, ptr @rna_SequenceTransform_offset_y } }, ptr @.str.102, ptr null, ptr null, i32 4, ptr @.str.103, ptr @.str.104, ptr @.str.16, i32 17, ptr null, ptr @rna_SequenceTransform_rna_properties, ptr null, ptr null, ptr null, ptr @rna_SequenceTransform_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_SequenceCrop = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SequenceTransform, ptr @RNA_SequenceColorBalance, ptr null, %struct.ListBase { ptr @rna_SequenceCrop_rna_properties, ptr @rna_SequenceCrop_max_x } }, ptr @.str.95, ptr null, ptr null, i32 4, ptr @.str.96, ptr @.str.97, ptr @.str.16, i32 17, ptr null, ptr @rna_SequenceCrop_rna_properties, ptr null, ptr null, ptr null, ptr @rna_SequenceCrop_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_SequenceProxy = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SequenceColorBalance, ptr @RNA_SequenceElement, ptr null, %struct.ListBase { ptr @rna_SequenceProxy_rna_properties, ptr @rna_SequenceProxy_timecode } }, ptr @.str.81, ptr null, ptr null, i32 4, ptr @.str.82, ptr @.str.83, ptr @.str.16, i32 17, ptr null, ptr @rna_SequenceProxy_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_ColorManagedInputColorspaceSettings = external global %struct.StructRNA, align 8
@rna_SequenceElements_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceElements_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceElements_rna_properties_begin, ptr @SequenceElements_rna_properties_next, ptr @SequenceElements_rna_properties_end, ptr @SequenceElements_rna_properties_get, ptr null, ptr null, ptr @SequenceElements_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MetaSequence_sequences = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_use_deinterlace, ptr null, i32 -1, ptr @.str.192, i32 0, ptr @.str.193, ptr @.str.2, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_sequences_begin, ptr @MetaSequence_sequences_next, ptr @MetaSequence_sequences_end, ptr @MetaSequence_sequences_get, ptr null, ptr @MetaSequence_sequences_lookup_int, ptr @MetaSequence_sequences_lookup_string, ptr null, ptr @RNA_Sequence }, align 8
@RNA_Scene = external global %struct.StructRNA, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@rna_MovieSequence_elements = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_filepath, ptr @rna_MovieSequence_stream_index, i32 -1, ptr @.str.254, i32 16384, ptr @.str.255, ptr @.str.2, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_elements_begin, ptr @MovieSequence_elements_next, ptr @MovieSequence_elements_end, ptr @MovieSequence_elements_get, ptr @rna_SequenceEditor_elements_length, ptr @MovieSequence_elements_lookup_int, ptr null, ptr null, ptr @RNA_SequenceElement }, align 8
@__func__.MovieSequence_elements_lookup_int = private unnamed_addr constant [34 x i8] c"MovieSequence_elements_lookup_int\00", align 1
@RNA_Mask = external global %struct.StructRNA, align 8
@RNA_Sound = external global %struct.StructRNA, align 8
@rna_SequenceModifier_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceModifier_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.16, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceModifier_rna_properties_begin, ptr @SequenceModifier_rna_properties_next, ptr @SequenceModifier_rna_properties_end, ptr @SequenceModifier_rna_properties_get, ptr null, ptr null, ptr @SequenceModifier_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_SequenceColorBalanceData = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SequenceElement, ptr @RNA_JoystickSensor, ptr null, %struct.ListBase { ptr @rna_SequenceColorBalanceData_rna_properties, ptr @rna_SequenceColorBalanceData_invert_lift } }, ptr @.str.35, ptr null, ptr null, i32 4, ptr @.str.36, ptr @.str.37, ptr @.str.16, i32 17, ptr null, ptr @rna_SequenceColorBalanceData_rna_properties, ptr null, ptr null, ptr null, ptr @rna_SequenceColorBalance_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_CurveMapping = external global %struct.StructRNA, align 8
@rna_SequenceColorBalanceData_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceColorBalanceData_lift, ptr @rna_SequenceColorBalanceData_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceColorBalanceData_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_SequenceColorBalanceData_lift = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceColorBalanceData_gamma, ptr @rna_SequenceColorBalanceData_rna_type, i32 -1, ptr @.str.20, i32 8195, ptr @.str.21, ptr @.str.22, i32 0, ptr @.str.16, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_SequenceColorBalance_update, i32 67502080, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SequenceColorBalanceData_lift_get, ptr @SequenceColorBalanceData_lift_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 1.000000e+00, ptr @rna_SequenceColorBalanceData_lift_default }, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_SequenceColorBalanceData_gamma = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceColorBalanceData_gain, ptr @rna_SequenceColorBalanceData_lift, i32 -1, ptr @.str.23, i32 8195, ptr @.str.24, ptr @.str.25, i32 0, ptr @.str.16, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_SequenceColorBalance_update, i32 67502080, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SequenceColorBalanceData_gamma_get, ptr @SequenceColorBalanceData_gamma_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 1.000000e+00, ptr @rna_SequenceColorBalanceData_gamma_default }, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"lift\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Lift\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Color balance lift (shadows)\00", align 1
@rna_SequenceColorBalanceData_lift_default = internal global [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@rna_SequenceColorBalanceData_gain = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceColorBalanceData_invert_gain, ptr @rna_SequenceColorBalanceData_gamma, i32 -1, ptr @.str.26, i32 8195, ptr @.str.27, ptr @.str.28, i32 0, ptr @.str.16, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_SequenceColorBalance_update, i32 67502080, ptr null, ptr null, i32 24, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SequenceColorBalanceData_gain_get, ptr @SequenceColorBalanceData_gain_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 1.000000e+00, ptr @rna_SequenceColorBalanceData_gain_default }, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Color balance gamma (midtones)\00", align 1
@rna_SequenceColorBalanceData_gamma_default = internal global [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@rna_SequenceColorBalanceData_invert_gain = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceColorBalanceData_invert_gamma, ptr @rna_SequenceColorBalanceData_gain, i32 -1, ptr @.str.29, i32 3, ptr @.str.30, ptr @.str.2, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceColorBalance_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceColorBalanceData_invert_gain_get, ptr @SequenceColorBalanceData_invert_gain_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"Gain\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Color balance gain (highlights)\00", align 1
@rna_SequenceColorBalanceData_gain_default = internal global [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@rna_SequenceColorBalanceData_invert_gamma = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceColorBalanceData_invert_lift, ptr @rna_SequenceColorBalanceData_invert_gain, i32 -1, ptr @.str.31, i32 3, ptr @.str.32, ptr @.str.2, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceColorBalance_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceColorBalanceData_invert_gamma_get, ptr @SequenceColorBalanceData_invert_gamma_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.29 = private unnamed_addr constant [12 x i8] c"invert_gain\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Inverse Gain\00", align 1
@rna_SequenceColorBalanceData_invert_lift = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SequenceColorBalanceData_invert_gamma, i32 -1, ptr @.str.33, i32 3, ptr @.str.34, ptr @.str.2, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceColorBalance_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceColorBalanceData_invert_lift_get, ptr @SequenceColorBalanceData_invert_lift_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.31 = private unnamed_addr constant [13 x i8] c"invert_gamma\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"Inverse Gamma\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"invert_lift\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Inverse Lift\00", align 1
@RNA_SequenceElement = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SequenceProxy, ptr @RNA_SequenceColorBalanceData, ptr null, %struct.ListBase { ptr @rna_SequenceElement_rna_properties, ptr @rna_SequenceElement_orig_height } }, ptr @.str.46, ptr null, ptr null, i32 4, ptr @.str.47, ptr @.str.48, ptr @.str.16, i32 17, ptr null, ptr @rna_SequenceElement_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_JoystickSensor = external global %struct.StructRNA, align 8
@.str.35 = private unnamed_addr constant [25 x i8] c"SequenceColorBalanceData\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"Sequence Color Balance Data\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"Color balance parameters for a sequence strip and it's modifiers\00", align 1
@rna_SequenceElement_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceElement_filename, ptr @rna_SequenceElement_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceElement_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SequenceElement_filename = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceElement_orig_width, ptr @rna_SequenceElement_rna_type, i32 -1, ptr @.str.38, i32 262145, ptr @.str.39, ptr @.str.2, i32 0, ptr @.str.16, i32 3, i32 3, ptr null, i32 0, [3 x i32] [i32 256, i32 0, i32 0], i32 0, ptr @rna_SequenceElement_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceElement_filename_get, ptr @SequenceElement_filename_length, ptr @SequenceElement_filename_set, ptr null, ptr null, ptr null, i32 256, ptr @.str.2 }, align 8
@rna_SequenceElement_orig_width = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceElement_orig_height, ptr @rna_SequenceElement_filename, i32 -1, ptr @.str.40, i32 8194, ptr @.str.41, ptr @.str.42, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 256, i32 0, ptr null, ptr null }, ptr @SequenceElement_orig_width_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.38 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@rna_SequenceElement_orig_height = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SequenceElement_orig_width, i32 -1, ptr @.str.43, i32 8194, ptr @.str.44, ptr @.str.45, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 260, i32 0, ptr null, ptr null }, ptr @SequenceElement_orig_height_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.40 = private unnamed_addr constant [11 x i8] c"orig_width\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Orig Width\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Original image width\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"orig_height\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"Orig Height\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"Original image height\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"SequenceElement\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"Sequence Element\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"Sequence strip data for a single frame\00", align 1
@rna_SequenceProxy_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_directory, ptr @rna_SequenceProxy_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SequenceProxy_directory = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_filepath, ptr @rna_SequenceProxy_rna_type, i32 -1, ptr @.str.49, i32 262145, ptr @.str.50, ptr @.str.51, i32 0, ptr @.str.16, i32 3, i32 2, ptr null, i32 0, [3 x i32] [i32 768, i32 0, i32 0], i32 0, ptr @rna_SequenceProxy_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_directory_get, ptr @SequenceProxy_directory_length, ptr @SequenceProxy_directory_set, ptr null, ptr null, ptr null, i32 768, ptr @.str.2 }, align 8
@rna_SequenceProxy_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_build_25, ptr @rna_SequenceProxy_directory, i32 -1, ptr @.str.52, i32 262145, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.16, i32 3, i32 1, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceProxy_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_filepath_get, ptr @SequenceProxy_filepath_length, ptr @SequenceProxy_filepath_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@.str.49 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"Directory\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"Location to store the proxy files\00", align 1
@rna_SequenceProxy_build_25 = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_build_50, ptr @rna_SequenceProxy_filepath, i32 -1, ptr @.str.55, i32 3, ptr @.str.56, ptr @.str.57, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_build_25_get, ptr @SequenceProxy_build_25_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.52 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"Location of custom proxy file\00", align 1
@rna_SequenceProxy_build_50 = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_build_75, ptr @rna_SequenceProxy_build_25, i32 -1, ptr @.str.58, i32 3, ptr @.str.59, ptr @.str.60, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_build_50_get, ptr @SequenceProxy_build_50_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.55 = private unnamed_addr constant [9 x i8] c"build_25\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"25%\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"Build 25% proxy resolution\00", align 1
@rna_SequenceProxy_build_75 = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_build_100, ptr @rna_SequenceProxy_build_50, i32 -1, ptr @.str.61, i32 3, ptr @.str.62, ptr @.str.63, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_build_75_get, ptr @SequenceProxy_build_75_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.58 = private unnamed_addr constant [9 x i8] c"build_50\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"50%\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"Build 50% proxy resolution\00", align 1
@rna_SequenceProxy_build_100 = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_build_record_run, ptr @rna_SequenceProxy_build_75, i32 -1, ptr @.str.64, i32 3, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_build_100_get, ptr @SequenceProxy_build_100_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.61 = private unnamed_addr constant [9 x i8] c"build_75\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"75%\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"Build 75% proxy resolution\00", align 1
@rna_SequenceProxy_build_record_run = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_build_free_run, ptr @rna_SequenceProxy_build_100, i32 -1, ptr @.str.67, i32 3, ptr @.str.68, ptr @.str.69, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_build_record_run_get, ptr @SequenceProxy_build_record_run_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.64 = private unnamed_addr constant [10 x i8] c"build_100\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"100%\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"Build 100% proxy resolution\00", align 1
@rna_SequenceProxy_build_free_run = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_build_free_run_rec_date, ptr @rna_SequenceProxy_build_record_run, i32 -1, ptr @.str.70, i32 3, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_build_free_run_get, ptr @SequenceProxy_build_free_run_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.67 = private unnamed_addr constant [17 x i8] c"build_record_run\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"Rec Run\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"Build record run time code index\00", align 1
@rna_SequenceProxy_build_free_run_rec_date = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_quality, ptr @rna_SequenceProxy_build_free_run, i32 -1, ptr @.str.73, i32 3, ptr @.str.74, ptr @.str.75, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_build_free_run_rec_date_get, ptr @SequenceProxy_build_free_run_rec_date_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.70 = private unnamed_addr constant [15 x i8] c"build_free_run\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"Free Run\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"Build free run time code index\00", align 1
@rna_SequenceProxy_quality = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceProxy_timecode, ptr @rna_SequenceProxy_build_free_run_rec_date, i32 -1, ptr @.str.76, i32 8195, ptr @.str.77, ptr @.str.78, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1034, i32 1, ptr null, ptr null }, ptr @SequenceProxy_quality_get, ptr @SequenceProxy_quality_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 100, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.73 = private unnamed_addr constant [24 x i8] c"build_free_run_rec_date\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"Free Run (Rec Date)\00", align 1
@.str.75 = private unnamed_addr constant [54 x i8] c"Build free run time code index using Record Date/Time\00", align 1
@rna_SequenceProxy_timecode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SequenceProxy_quality, i32 -1, ptr @.str.79, i32 3, ptr @.str.80, ptr @.str.2, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_tcindex_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceProxy_timecode_get, ptr @SequenceProxy_timecode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SequenceProxy_timecode_items, i32 5, i32 0 }, align 8
@.str.76 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"JPEG Quality of proxies to build\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"timecode\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"Timecode\00", align 1
@rna_SequenceProxy_timecode_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.539, i32 0, ptr @.str.540, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.541, i32 0, ptr @.str.542, ptr @.str.543 }, %struct.EnumPropertyItem { i32 2, ptr @.str.544, i32 0, ptr @.str.71, ptr @.str.545 }, %struct.EnumPropertyItem { i32 4, ptr @.str.546, i32 0, ptr @.str.547, ptr @.str.548 }, %struct.EnumPropertyItem { i32 8, ptr @.str.549, i32 0, ptr @.str.550, ptr @.str.551 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_SequenceColorBalance = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SequenceCrop, ptr @RNA_SequenceProxy, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.84, ptr null, ptr null, i32 4, ptr @.str.85, ptr @.str.86, ptr @.str.16, i32 17, ptr null, ptr @rna_SequenceColorBalanceData_rna_properties, ptr @RNA_SequenceColorBalanceData, ptr null, ptr null, ptr @rna_SequenceColorBalance_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.81 = private unnamed_addr constant [14 x i8] c"SequenceProxy\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"Sequence Proxy\00", align 1
@.str.83 = private unnamed_addr constant [38 x i8] c"Proxy parameters for a sequence strip\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"SequenceColorBalance\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"Sequence Color Balance\00", align 1
@.str.86 = private unnamed_addr constant [46 x i8] c"Color balance parameters for a sequence strip\00", align 1
@rna_SequenceCrop_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceCrop_max_y, ptr @rna_SequenceCrop_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceCrop_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SequenceCrop_max_y = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceCrop_min_y, ptr @rna_SequenceCrop_rna_type, i32 -1, ptr @.str.87, i32 8195, ptr @.str.88, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceCrop_update, i32 67502080, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, ptr @SequenceCrop_max_y_get, ptr @SequenceCrop_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 4096, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_SequenceCrop_min_y = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceCrop_min_x, ptr @rna_SequenceCrop_max_y, i32 -1, ptr @.str.89, i32 8195, ptr @.str.90, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceCrop_update, i32 67502080, ptr null, ptr null, i32 4, i32 0, ptr null, ptr null }, ptr @SequenceCrop_min_y_get, ptr @SequenceCrop_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 4096, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.87 = private unnamed_addr constant [6 x i8] c"max_y\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"Top\00", align 1
@rna_SequenceCrop_min_x = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceCrop_max_x, ptr @rna_SequenceCrop_min_y, i32 -1, ptr @.str.91, i32 8195, ptr @.str.92, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceCrop_update, i32 67502080, ptr null, ptr null, i32 8, i32 0, ptr null, ptr null }, ptr @SequenceCrop_min_x_get, ptr @SequenceCrop_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 4096, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.89 = private unnamed_addr constant [6 x i8] c"min_y\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"Bottom\00", align 1
@rna_SequenceCrop_max_x = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SequenceCrop_min_x, i32 -1, ptr @.str.93, i32 8195, ptr @.str.94, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceCrop_update, i32 67502080, ptr null, ptr null, i32 12, i32 0, ptr null, ptr null }, ptr @SequenceCrop_max_x_get, ptr @SequenceCrop_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 4096, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.91 = private unnamed_addr constant [6 x i8] c"min_x\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"max_x\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"SequenceCrop\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"Sequence Crop\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"Cropping parameters for a sequence strip\00", align 1
@rna_SequenceTransform_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceTransform_offset_x, ptr @rna_SequenceTransform_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceTransform_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SequenceTransform_offset_x = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceTransform_offset_y, ptr @rna_SequenceTransform_rna_type, i32 -1, ptr @.str.98, i32 8195, ptr @.str.99, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceTransform_update, i32 67502080, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, ptr @SequenceTransform_offset_x_get, ptr @SequenceTransform_offset_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -4096, i32 4096, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_SequenceTransform_offset_y = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SequenceTransform_offset_x, i32 -1, ptr @.str.100, i32 8195, ptr @.str.101, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceTransform_update, i32 67502080, ptr null, ptr null, i32 4, i32 0, ptr null, ptr null }, ptr @SequenceTransform_offset_y_get, ptr @SequenceTransform_offset_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -4096, i32 4096, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.98 = private unnamed_addr constant [9 x i8] c"offset_x\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"Offset X\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"offset_y\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"Offset Y\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"SequenceTransform\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"Sequence Transform\00", align 1
@.str.104 = private unnamed_addr constant [42 x i8] c"Transform parameters for a sequence strip\00", align 1
@rna_Sequence_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Sequence_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_type, ptr @rna_Sequence_rna_type, i32 -1, ptr @.str.105, i32 262145, ptr @.str.106, ptr @.str.2, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_name_get, ptr @Sequence_name_length, ptr @Sequence_name_set, ptr null, ptr null, ptr null, i32 62, ptr @.str.2 }, align 8
@rna_Sequence_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_select, ptr @rna_Sequence_name, i32 -1, ptr @.str.107, i32 2, ptr @.str.108, ptr @.str.2, i32 0, ptr @.str.109, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Sequence_type_items, i32 23, i32 0 }, align 8
@.str.105 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@rna_Sequence_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_select_left_handle, ptr @rna_Sequence_type, i32 -1, ptr @.str.110, i32 3, ptr @.str.111, ptr @.str.2, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 67502086, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_select_get, ptr @Sequence_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.107 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"Sequence\00", align 1
@rna_Sequence_type_items = internal global [24 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.554, i32 0, ptr @.str.555, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.556, i32 0, ptr @.str.557, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.558, i32 0, ptr @.str.326, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.559, i32 0, ptr @.str.560, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.561, i32 0, ptr @.str.562, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.563, i32 0, ptr @.str.357, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.564, i32 0, ptr @.str.565, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.566, i32 0, ptr @.str.567, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.568, i32 0, ptr @.str.569, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.570, i32 0, ptr @.str.571, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.572, i32 0, ptr @.str.573, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.574, i32 0, ptr @.str.575, ptr @.str.2 }, %struct.EnumPropertyItem { i32 14, ptr @.str.576, i32 0, ptr @.str.577, ptr @.str.2 }, %struct.EnumPropertyItem { i32 15, ptr @.str.578, i32 0, ptr @.str.579, ptr @.str.2 }, %struct.EnumPropertyItem { i32 25, ptr @.str.580, i32 0, ptr @.str.581, ptr @.str.2 }, %struct.EnumPropertyItem { i32 26, ptr @.str.582, i32 0, ptr @.str.583, ptr @.str.2 }, %struct.EnumPropertyItem { i32 27, ptr @.str.584, i32 0, ptr @.str.285, ptr @.str.2 }, %struct.EnumPropertyItem { i32 28, ptr @.str.585, i32 0, ptr @.str.394, ptr @.str.2 }, %struct.EnumPropertyItem { i32 29, ptr @.str.586, i32 0, ptr @.str.587, ptr @.str.2 }, %struct.EnumPropertyItem { i32 30, ptr @.str.588, i32 0, ptr @.str.589, ptr @.str.2 }, %struct.EnumPropertyItem { i32 31, ptr @.str.590, i32 0, ptr @.str.591, ptr @.str.2 }, %struct.EnumPropertyItem { i32 40, ptr @.str.592, i32 0, ptr @.str.593, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Sequence_select_left_handle = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_select_right_handle, ptr @rna_Sequence_select, i32 -1, ptr @.str.112, i32 3, ptr @.str.113, ptr @.str.2, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 67502086, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_select_left_handle_get, ptr @Sequence_select_left_handle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.110 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@rna_Sequence_select_right_handle = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_mute, ptr @rna_Sequence_select_left_handle, i32 -1, ptr @.str.114, i32 3, ptr @.str.115, ptr @.str.2, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 67502086, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_select_right_handle_get, ptr @Sequence_select_right_handle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.112 = private unnamed_addr constant [19 x i8] c"select_left_handle\00", align 1
@.str.113 = private unnamed_addr constant [21 x i8] c"Left Handle Selected\00", align 1
@rna_Sequence_mute = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_lock, ptr @rna_Sequence_select_right_handle, i32 -1, ptr @.str.116, i32 4099, ptr @.str.117, ptr @.str.2, i32 253, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_mute_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_mute_get, ptr @Sequence_mute_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.114 = private unnamed_addr constant [20 x i8] c"select_right_handle\00", align 1
@.str.115 = private unnamed_addr constant [22 x i8] c"Right Handle Selected\00", align 1
@rna_Sequence_lock = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_frame_final_duration, ptr @rna_Sequence_mute, i32 -1, ptr @.str.118, i32 4099, ptr @.str.119, ptr @.str.120, i32 40, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_lock_get, ptr @Sequence_lock_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.116 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"Mute\00", align 1
@rna_Sequence_frame_final_duration = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_frame_duration, ptr @rna_Sequence_lock, i32 -1, ptr @.str.121, i32 1, ptr @.str.122, ptr @.str.123, i32 0, ptr @.str.16, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr @rna_Sequence_frame_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_frame_final_duration_get, ptr @Sequence_frame_final_duration_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 300000, i32 1, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.118 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.120 = private unnamed_addr constant [43 x i8] c"Lock strip so that it can't be transformed\00", align 1
@rna_Sequence_frame_duration = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_frame_start, ptr @rna_Sequence_frame_final_duration, i32 -1, ptr @.str.124, i32 8192, ptr @.str.122, ptr @.str.125, i32 0, ptr @.str.16, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 104, i32 0, ptr null, ptr null }, ptr @Sequence_frame_duration_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 300000, i32 1, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.121 = private unnamed_addr constant [21 x i8] c"frame_final_duration\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.123 = private unnamed_addr constant [71 x i8] c"The length of the contents of this strip after the handles are applied\00", align 1
@rna_Sequence_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_frame_final_start, ptr @rna_Sequence_frame_duration, i32 -1, ptr @.str.126, i32 1, ptr @.str.127, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr @rna_Sequence_frame_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_frame_start_get, ptr @Sequence_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.124 = private unnamed_addr constant [15 x i8] c"frame_duration\00", align 1
@.str.125 = private unnamed_addr constant [72 x i8] c"The length of the contents of this strip before the handles are applied\00", align 1
@rna_Sequence_frame_final_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_frame_final_end, ptr @rna_Sequence_frame_start, i32 -1, ptr @.str.128, i32 1, ptr @.str.127, ptr @.str.129, i32 0, ptr @.str.16, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr @rna_Sequence_frame_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_frame_final_start_get, ptr @Sequence_frame_final_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.126 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"Start Frame\00", align 1
@rna_Sequence_frame_final_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_frame_offset_start, ptr @rna_Sequence_frame_final_start, i32 -1, ptr @.str.130, i32 1, ptr @.str.131, ptr @.str.132, i32 0, ptr @.str.16, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr @rna_Sequence_frame_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_frame_final_end_get, ptr @Sequence_frame_final_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.128 = private unnamed_addr constant [18 x i8] c"frame_final_start\00", align 1
@.str.129 = private unnamed_addr constant [148 x i8] c"Start frame displayed in the sequence editor after offsets are applied, setting this is equivalent to moving the handle, not the actual start frame\00", align 1
@rna_Sequence_frame_offset_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_frame_offset_end, ptr @rna_Sequence_frame_final_end, i32 -1, ptr @.str.133, i32 8195, ptr @.str.134, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_frame_change_update, i32 67502080, ptr null, ptr null, i32 112, i32 0, ptr null, ptr null }, ptr @Sequence_frame_offset_start_get, ptr @Sequence_frame_offset_start_set, ptr null, ptr null, ptr @rna_Sequence_frame_offset_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.130 = private unnamed_addr constant [16 x i8] c"frame_final_end\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"End Frame\00", align 1
@.str.132 = private unnamed_addr constant [69 x i8] c"End frame displayed in the sequence editor after offsets are applied\00", align 1
@rna_Sequence_frame_offset_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_frame_still_start, ptr @rna_Sequence_frame_offset_start, i32 -1, ptr @.str.135, i32 8195, ptr @.str.136, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_frame_change_update, i32 67502080, ptr null, ptr null, i32 116, i32 0, ptr null, ptr null }, ptr @Sequence_frame_offset_end_get, ptr @Sequence_frame_offset_end_set, ptr null, ptr null, ptr @rna_Sequence_frame_offset_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.133 = private unnamed_addr constant [19 x i8] c"frame_offset_start\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"Start Offset\00", align 1
@rna_Sequence_frame_still_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_frame_still_end, ptr @rna_Sequence_frame_offset_end, i32 -1, ptr @.str.137, i32 8195, ptr @.str.138, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_frame_change_update, i32 67502080, ptr null, ptr null, i32 120, i32 0, ptr null, ptr null }, ptr @Sequence_frame_still_start_get, ptr @Sequence_frame_still_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 300000, i32 0, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.135 = private unnamed_addr constant [17 x i8] c"frame_offset_end\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"End Offset\00", align 1
@rna_Sequence_frame_still_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_channel, ptr @rna_Sequence_frame_still_start, i32 -1, ptr @.str.139, i32 8195, ptr @.str.140, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_frame_change_update, i32 67502080, ptr null, ptr null, i32 124, i32 0, ptr null, ptr null }, ptr @Sequence_frame_still_end_get, ptr @Sequence_frame_still_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 300000, i32 0, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.137 = private unnamed_addr constant [18 x i8] c"frame_still_start\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"Start Still\00", align 1
@rna_Sequence_channel = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_use_linear_modifiers, ptr @rna_Sequence_frame_still_end, i32 -1, ptr @.str.141, i32 3, ptr @.str.142, ptr @.str.143, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_channel_get, ptr @Sequence_channel_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 31, i32 0, i32 31, i32 1, i32 0, ptr null }, align 8
@.str.139 = private unnamed_addr constant [16 x i8] c"frame_still_end\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"End Still\00", align 1
@rna_Sequence_use_linear_modifiers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_blend_type, ptr @rna_Sequence_channel, i32 -1, ptr @.str.144, i32 3, ptr @.str.145, ptr @.str.146, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_use_linear_modifiers_get, ptr @Sequence_use_linear_modifiers_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.141 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"Channel\00", align 1
@.str.143 = private unnamed_addr constant [33 x i8] c"Y position of the sequence strip\00", align 1
@rna_Sequence_blend_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_blend_alpha, ptr @rna_Sequence_use_linear_modifiers, i32 -1, ptr @.str.147, i32 3, ptr @.str.148, ptr @.str.2, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_blend_type_get, ptr @Sequence_blend_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Sequence_blend_type_items, i32 9, i32 0 }, align 8
@.str.144 = private unnamed_addr constant [21 x i8] c"use_linear_modifiers\00", align 1
@.str.145 = private unnamed_addr constant [21 x i8] c"Use Linear Modifiers\00", align 1
@.str.146 = private unnamed_addr constant [65 x i8] c"Calculate modifiers in linear space instead of sequencer's space\00", align 1
@rna_Sequence_blend_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_effect_fader, ptr @rna_Sequence_blend_type, i32 -1, ptr @.str.149, i32 3, ptr @.str.150, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_blend_alpha_get, ptr @Sequence_blend_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.147 = private unnamed_addr constant [11 x i8] c"blend_type\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"Blend Mode\00", align 1
@rna_Sequence_blend_type_items = internal global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.594, i32 0, ptr @.str.595, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.564, i32 0, ptr @.str.565, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.566, i32 0, ptr @.str.567, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.568, i32 0, ptr @.str.569, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.570, i32 0, ptr @.str.571, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.572, i32 0, ptr @.str.573, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.574, i32 0, ptr @.str.575, ptr @.str.2 }, %struct.EnumPropertyItem { i32 14, ptr @.str.576, i32 0, ptr @.str.577, ptr @.str.2 }, %struct.EnumPropertyItem { i32 15, ptr @.str.578, i32 0, ptr @.str.579, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Sequence_effect_fader = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_use_default_fade, ptr @rna_Sequence_blend_alpha, i32 -1, ptr @.str.151, i32 8195, ptr @.str.152, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 224, i32 4, ptr null, ptr null }, ptr @Sequence_effect_fader_get, ptr @Sequence_effect_fader_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.149 = private unnamed_addr constant [12 x i8] c"blend_alpha\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"Blend Opacity\00", align 1
@rna_Sequence_use_default_fade = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_speed_factor, ptr @rna_Sequence_effect_fader, i32 -1, ptr @.str.153, i32 3, ptr @.str.154, ptr @.str.155, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequence_use_default_fade_get, ptr @Sequence_use_default_fade_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.151 = private unnamed_addr constant [13 x i8] c"effect_fader\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"Effect fader position\00", align 1
@rna_Sequence_speed_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_modifiers, ptr @rna_Sequence_use_default_fade, i32 -1, ptr @.str.156, i32 8195, ptr @.str.157, ptr @.str.158, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 228, i32 4, ptr null, ptr null }, ptr @Sequence_speed_factor_get, ptr @Sequence_speed_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.153 = private unnamed_addr constant [17 x i8] c"use_default_fade\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"Use Default Fade\00", align 1
@.str.155 = private unnamed_addr constant [89 x i8] c"Fade effect using the built-in default (usually make transition as long as effect strip)\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"speed_factor\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"Speed factor\00", align 1
@.str.158 = private unnamed_addr constant [97 x i8] c"Multiply the current speed of the sequence with this number or remap current frame to this frame\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"modifiers\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"Modifiers\00", align 1
@.str.161 = private unnamed_addr constant [31 x i8] c"Modifiers affecting this strip\00", align 1
@RNA_SequenceModifiers = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SequenceEditor, ptr @RNA_Sequence, ptr null, %struct.ListBase { ptr @rna_SequenceModifiers_rna_properties, ptr @rna_SequenceModifiers_rna_type } }, ptr @.str.189, ptr null, ptr null, i32 4, ptr @.str.190, ptr @.str.191, ptr @.str.16, i32 17, ptr null, ptr @rna_SequenceModifiers_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_SequenceModifiers_new_func, ptr @rna_SequenceModifiers_clear_func } }, align 8
@RNA_SequenceModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ColorBalanceModifier, ptr @RNA_GaussianBlurSequence, ptr null, %struct.ListBase { ptr @rna_SequenceModifier_rna_properties, ptr @rna_SequenceModifier_input_mask_id } }, ptr @.str.499, ptr null, ptr null, i32 4, ptr @.str.499, ptr @.str.500, ptr @.str.16, i32 17, ptr @rna_SequenceModifier_name, ptr @rna_SequenceModifier_rna_properties, ptr null, ptr null, ptr @rna_SequenceModifier_refine, ptr @rna_SequenceModifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.162 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.164 = private unnamed_addr constant [18 x i8] c"Update strip data\00", align 1
@rna_Sequence_update_data = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.162, i32 3, ptr @.str.163, ptr @.str.164, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_Sequence_strip_elem_from_frame_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Sequence_swap_func, ptr @rna_Sequence_update_func, ptr null, %struct.ListBase { ptr @rna_Sequence_strip_elem_from_frame_frame, ptr @rna_Sequence_strip_elem_from_frame_elem } }, ptr @.str.172, i32 0, ptr @.str.173, ptr @Sequence_strip_elem_from_frame_call, ptr @rna_Sequence_strip_elem_from_frame_elem }, align 8
@.str.165 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.166 = private unnamed_addr constant [28 x i8] c"Update the strip dimensions\00", align 1
@rna_Sequence_update_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Sequence_strip_elem_from_frame_func, ptr null, ptr null, %struct.ListBase { ptr @rna_Sequence_update_data, ptr @rna_Sequence_update_data } }, ptr @.str.165, i32 2048, ptr @.str.166, ptr @Sequence_update_call, ptr null }, align 8
@rna_Sequence_strip_elem_from_frame_elem = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sequence_strip_elem_from_frame_frame, i32 -1, ptr @.str.170, i32 8388616, ptr @.str.2, ptr @.str.171, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_SequenceElement }, align 8
@.str.167 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.169 = private unnamed_addr constant [40 x i8] c"The frame to get the strip element from\00", align 1
@rna_Sequence_strip_elem_from_frame_frame = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequence_strip_elem_from_frame_elem, ptr null, i32 -1, ptr @.str.167, i32 7, ptr @.str.168, ptr @.str.169, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.170 = private unnamed_addr constant [5 x i8] c"elem\00", align 1
@.str.171 = private unnamed_addr constant [35 x i8] c"strip element of the current frame\00", align 1
@rna_Sequence_swap_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_Sequence_strip_elem_from_frame_func, ptr null, %struct.ListBase { ptr @rna_Sequence_swap_other, ptr @rna_Sequence_swap_other } }, ptr @.str.176, i32 16, ptr @.str.176, ptr @Sequence_swap_call, ptr null }, align 8
@.str.172 = private unnamed_addr constant [22 x i8] c"strip_elem_from_frame\00", align 1
@.str.173 = private unnamed_addr constant [52 x i8] c"Return the strip element from a given frame or None\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@rna_Sequence_swap_other = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.174, i32 8650756, ptr @.str.175, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@.str.176 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.177 = private unnamed_addr constant [38 x i8] c"Sequence strip in the sequence editor\00", align 1
@rna_SequenceModifiers_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SequenceModifiers_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceModifiers_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SequenceModifiers_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceModifiers_new_modifier, ptr @rna_SequenceModifiers_new_name, i32 -1, ptr @.str.107, i32 7, ptr @.str.2, ptr @.str.179, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_SequenceModifiers_new_type_items, i32 5, i32 1 }, align 8
@.str.178 = private unnamed_addr constant [26 x i8] c"New name for the modifier\00", align 1
@rna_SequenceModifiers_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceModifiers_new_type, ptr null, i32 -1, ptr @.str.105, i32 262149, ptr @.str.2, ptr @.str.178, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.106 }, align 8
@rna_SequenceModifiers_new_modifier = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SequenceModifiers_new_type, i32 -1, ptr @.str.180, i32 8388616, ptr @.str.2, ptr @.str.181, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_SequenceModifier }, align 8
@.str.179 = private unnamed_addr constant [21 x i8] c"Modifier type to add\00", align 1
@rna_SequenceModifiers_new_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.180 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@.str.181 = private unnamed_addr constant [23 x i8] c"Newly created modifier\00", align 1
@rna_SequenceModifiers_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_SequenceModifiers_clear_func, ptr @rna_SequenceModifiers_new_func, ptr null, %struct.ListBase { ptr @rna_SequenceModifiers_remove_modifier, ptr @rna_SequenceModifiers_remove_modifier } }, ptr @.str.185, i32 24, ptr @.str.186, ptr @SequenceModifiers_remove_call, ptr null }, align 8
@.str.182 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.183 = private unnamed_addr constant [19 x i8] c"Add a new modifier\00", align 1
@rna_SequenceModifiers_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_SequenceModifiers_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_SequenceModifiers_new_name, ptr @rna_SequenceModifiers_new_modifier } }, ptr @.str.182, i32 24, ptr @.str.183, ptr @SequenceModifiers_new_call, ptr @rna_SequenceModifiers_new_modifier }, align 8
@.str.184 = private unnamed_addr constant [19 x i8] c"Modifier to remove\00", align 1
@rna_SequenceModifiers_remove_modifier = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.180, i32 264196, ptr @.str.2, ptr @.str.184, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_SequenceModifier }, align 8
@rna_SequenceModifiers_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_SequenceModifiers_remove_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.187, i32 8, ptr @.str.188, ptr @SequenceModifiers_clear_call, ptr null }, align 8
@.str.185 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.186 = private unnamed_addr constant [46 x i8] c"Remove an existing modifier from the sequence\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.188 = private unnamed_addr constant [39 x i8] c"Remove all modifiers from the sequence\00", align 1
@RNA_SequenceEditor = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Sequences, ptr @RNA_SequenceModifiers, ptr null, %struct.ListBase { ptr @rna_SequenceEditor_rna_properties, ptr @rna_SequenceEditor_overlay_frame } }, ptr @.str.211, ptr null, ptr null, i32 4, ptr @.str.212, ptr @.str.213, ptr @.str.16, i32 111, ptr null, ptr @rna_SequenceEditor_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.189 = private unnamed_addr constant [18 x i8] c"SequenceModifiers\00", align 1
@.str.190 = private unnamed_addr constant [16 x i8] c"Strip Modifiers\00", align 1
@.str.191 = private unnamed_addr constant [30 x i8] c"Collection of strip modifiers\00", align 1
@rna_SequenceEditor_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceEditor_sequences, ptr @rna_SequenceEditor_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceEditor_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.192 = private unnamed_addr constant [10 x i8] c"sequences\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"Sequences\00", align 1
@.str.194 = private unnamed_addr constant [22 x i8] c"Top-level strips only\00", align 1
@RNA_Sequences = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ImageSequence, ptr @RNA_SequenceEditor, ptr null, %struct.ListBase { ptr @rna_Sequences_rna_properties, ptr @rna_Sequences_rna_type } }, ptr @.str.193, ptr null, ptr null, i32 4, ptr @.str.193, ptr @.str.253, ptr @.str.16, i32 17, ptr null, ptr @rna_Sequences_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_Sequences_new_clip_func, ptr @rna_Sequences_remove_func } }, align 8
@.str.195 = private unnamed_addr constant [14 x i8] c"sequences_all\00", align 1
@.str.196 = private unnamed_addr constant [14 x i8] c"All Sequences\00", align 1
@.str.197 = private unnamed_addr constant [58 x i8] c"All strips, recursively including those inside metastrips\00", align 1
@rna_SequenceEditor_active_strip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceEditor_show_overlay, ptr @rna_SequenceEditor_meta_stack, i32 -1, ptr @.str.201, i32 8388609, ptr @.str.202, ptr @.str.203, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceEditor_active_strip_get, ptr @SequenceEditor_active_strip_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@.str.198 = private unnamed_addr constant [11 x i8] c"meta_stack\00", align 1
@.str.199 = private unnamed_addr constant [11 x i8] c"Meta Stack\00", align 1
@.str.200 = private unnamed_addr constant [54 x i8] c"Meta strip stack, last is currently edited meta strip\00", align 1
@rna_SequenceEditor_show_overlay = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceEditor_use_overlay_lock, ptr @rna_SequenceEditor_active_strip, i32 -1, ptr @.str.204, i32 3, ptr @.str.205, ptr @.str.206, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceEditor_show_overlay_get, ptr @SequenceEditor_show_overlay_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.201 = private unnamed_addr constant [13 x i8] c"active_strip\00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"Active Strip\00", align 1
@.str.203 = private unnamed_addr constant [25 x i8] c"Sequencer's active strip\00", align 1
@rna_SequenceEditor_use_overlay_lock = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceEditor_overlay_frame, ptr @rna_SequenceEditor_show_overlay, i32 -1, ptr @.str.207, i32 3, ptr @.str.208, ptr @.str.2, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceEditor_use_overlay_lock_get, ptr @SequenceEditor_use_overlay_lock_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.204 = private unnamed_addr constant [13 x i8] c"show_overlay\00", align 1
@.str.205 = private unnamed_addr constant [10 x i8] c"Draw Axes\00", align 1
@.str.206 = private unnamed_addr constant [40 x i8] c"Partial overlay on top of the sequencer\00", align 1
@rna_SequenceEditor_overlay_frame = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SequenceEditor_use_overlay_lock, i32 -1, ptr @.str.209, i32 3, ptr @.str.210, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252706816, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceEditor_overlay_frame_get, ptr @SequenceEditor_overlay_frame_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.207 = private unnamed_addr constant [17 x i8] c"use_overlay_lock\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"Overlay Lock\00", align 1
@.str.209 = private unnamed_addr constant [14 x i8] c"overlay_frame\00", align 1
@.str.210 = private unnamed_addr constant [15 x i8] c"Overlay Offset\00", align 1
@.str.211 = private unnamed_addr constant [15 x i8] c"SequenceEditor\00", align 1
@.str.212 = private unnamed_addr constant [16 x i8] c"Sequence Editor\00", align 1
@.str.213 = private unnamed_addr constant [44 x i8] c"Sequence editing data for a Scene datablock\00", align 1
@rna_Sequences_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sequences_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Sequences_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Sequences_new_clip_clip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_clip_channel, ptr @rna_Sequences_new_clip_name, i32 -1, ptr @.str.215, i32 8650756, ptr @.str.2, ptr @.str.216, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_MovieClip }, align 8
@.str.214 = private unnamed_addr constant [26 x i8] c"Name for the new sequence\00", align 1
@rna_Sequences_new_clip_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_clip_clip, ptr null, i32 -1, ptr @.str.105, i32 262149, ptr @.str.2, ptr @.str.214, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.106 }, align 8
@rna_Sequences_new_clip_channel = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_clip_frame_start, ptr @rna_Sequences_new_clip_clip, i32 -1, ptr @.str.141, i32 7, ptr @.str.142, ptr @.str.217, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 31, i32 0, i32 31, i32 1, i32 0, ptr null }, align 8
@.str.215 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.216 = private unnamed_addr constant [18 x i8] c"Movie clip to add\00", align 1
@RNA_MovieClip = external global %struct.StructRNA, align 8
@rna_Sequences_new_clip_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_clip_sequence, ptr @rna_Sequences_new_clip_channel, i32 -1, ptr @.str.126, i32 7, ptr @.str.2, ptr @.str.218, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.217 = private unnamed_addr constant [33 x i8] c"The channel for the new sequence\00", align 1
@rna_Sequences_new_clip_sequence = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sequences_new_clip_frame_start, i32 -1, ptr @.str.219, i32 8388616, ptr @.str.2, ptr @.str.220, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@.str.218 = private unnamed_addr constant [37 x i8] c"The start frame for the new sequence\00", align 1
@.str.219 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.220 = private unnamed_addr constant [13 x i8] c"New Sequence\00", align 1
@rna_Sequences_new_mask_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Sequences_new_scene_func, ptr @rna_Sequences_new_clip_func, ptr null, %struct.ListBase { ptr @rna_Sequences_new_mask_name, ptr @rna_Sequences_new_mask_sequence } }, ptr @.str.225, i32 2048, ptr @.str.226, ptr @Sequences_new_mask_call, ptr @rna_Sequences_new_mask_sequence }, align 8
@.str.221 = private unnamed_addr constant [9 x i8] c"new_clip\00", align 1
@.str.222 = private unnamed_addr constant [30 x i8] c"Add a new movie clip sequence\00", align 1
@rna_Sequences_new_clip_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Sequences_new_mask_func, ptr null, ptr null, %struct.ListBase { ptr @rna_Sequences_new_clip_name, ptr @rna_Sequences_new_clip_sequence } }, ptr @.str.221, i32 2048, ptr @.str.222, ptr @Sequences_new_clip_call, ptr @rna_Sequences_new_clip_sequence }, align 8
@rna_Sequences_new_mask_mask = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_mask_channel, ptr @rna_Sequences_new_mask_name, i32 -1, ptr @.str.223, i32 8650756, ptr @.str.2, ptr @.str.224, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Mask }, align 8
@rna_Sequences_new_mask_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_mask_mask, ptr null, i32 -1, ptr @.str.105, i32 262149, ptr @.str.2, ptr @.str.214, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.106 }, align 8
@rna_Sequences_new_mask_channel = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_mask_frame_start, ptr @rna_Sequences_new_mask_mask, i32 -1, ptr @.str.141, i32 7, ptr @.str.142, ptr @.str.217, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 31, i32 0, i32 31, i32 1, i32 0, ptr null }, align 8
@.str.223 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.224 = private unnamed_addr constant [12 x i8] c"Mask to add\00", align 1
@rna_Sequences_new_mask_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_mask_sequence, ptr @rna_Sequences_new_mask_channel, i32 -1, ptr @.str.126, i32 7, ptr @.str.2, ptr @.str.218, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@rna_Sequences_new_mask_sequence = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sequences_new_mask_frame_start, i32 -1, ptr @.str.219, i32 8388616, ptr @.str.2, ptr @.str.220, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_Sequences_new_scene_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Sequences_new_image_func, ptr @rna_Sequences_new_mask_func, ptr null, %struct.ListBase { ptr @rna_Sequences_new_scene_name, ptr @rna_Sequences_new_scene_sequence } }, ptr @.str.229, i32 2048, ptr @.str.230, ptr @Sequences_new_scene_call, ptr @rna_Sequences_new_scene_sequence }, align 8
@.str.225 = private unnamed_addr constant [9 x i8] c"new_mask\00", align 1
@.str.226 = private unnamed_addr constant [24 x i8] c"Add a new mask sequence\00", align 1
@rna_Sequences_new_scene_scene = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_scene_channel, ptr @rna_Sequences_new_scene_name, i32 -1, ptr @.str.227, i32 8650756, ptr @.str.2, ptr @.str.228, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Scene }, align 8
@rna_Sequences_new_scene_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_scene_scene, ptr null, i32 -1, ptr @.str.105, i32 262149, ptr @.str.2, ptr @.str.214, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.106 }, align 8
@rna_Sequences_new_scene_channel = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_scene_frame_start, ptr @rna_Sequences_new_scene_scene, i32 -1, ptr @.str.141, i32 7, ptr @.str.142, ptr @.str.217, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 31, i32 0, i32 31, i32 1, i32 0, ptr null }, align 8
@.str.227 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"Scene to add\00", align 1
@rna_Sequences_new_scene_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_scene_sequence, ptr @rna_Sequences_new_scene_channel, i32 -1, ptr @.str.126, i32 7, ptr @.str.2, ptr @.str.218, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@rna_Sequences_new_scene_sequence = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sequences_new_scene_frame_start, i32 -1, ptr @.str.219, i32 8388616, ptr @.str.2, ptr @.str.220, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_Sequences_new_image_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Sequences_new_movie_func, ptr @rna_Sequences_new_scene_func, ptr null, %struct.ListBase { ptr @rna_Sequences_new_image_name, ptr @rna_Sequences_new_image_sequence } }, ptr @.str.233, i32 2064, ptr @.str.234, ptr @Sequences_new_image_call, ptr @rna_Sequences_new_image_sequence }, align 8
@.str.229 = private unnamed_addr constant [10 x i8] c"new_scene\00", align 1
@.str.230 = private unnamed_addr constant [25 x i8] c"Add a new scene sequence\00", align 1
@rna_Sequences_new_image_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_image_channel, ptr @rna_Sequences_new_image_name, i32 -1, ptr @.str.52, i32 262149, ptr @.str.2, ptr @.str.231, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.232 }, align 8
@rna_Sequences_new_image_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_image_filepath, ptr null, i32 -1, ptr @.str.105, i32 262149, ptr @.str.2, ptr @.str.214, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.106 }, align 8
@rna_Sequences_new_image_channel = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_image_frame_start, ptr @rna_Sequences_new_image_filepath, i32 -1, ptr @.str.141, i32 7, ptr @.str.142, ptr @.str.217, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 31, i32 0, i32 31, i32 1, i32 0, ptr null }, align 8
@.str.231 = private unnamed_addr constant [18 x i8] c"Filepath to image\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@rna_Sequences_new_image_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_image_sequence, ptr @rna_Sequences_new_image_channel, i32 -1, ptr @.str.126, i32 7, ptr @.str.2, ptr @.str.218, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@rna_Sequences_new_image_sequence = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sequences_new_image_frame_start, i32 -1, ptr @.str.219, i32 8388616, ptr @.str.2, ptr @.str.220, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_Sequences_new_movie_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Sequences_new_sound_func, ptr @rna_Sequences_new_image_func, ptr null, %struct.ListBase { ptr @rna_Sequences_new_movie_name, ptr @rna_Sequences_new_movie_sequence } }, ptr @.str.236, i32 2064, ptr @.str.237, ptr @Sequences_new_movie_call, ptr @rna_Sequences_new_movie_sequence }, align 8
@.str.233 = private unnamed_addr constant [10 x i8] c"new_image\00", align 1
@.str.234 = private unnamed_addr constant [25 x i8] c"Add a new image sequence\00", align 1
@rna_Sequences_new_movie_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_movie_channel, ptr @rna_Sequences_new_movie_name, i32 -1, ptr @.str.52, i32 262149, ptr @.str.2, ptr @.str.235, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.232 }, align 8
@rna_Sequences_new_movie_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_movie_filepath, ptr null, i32 -1, ptr @.str.105, i32 262149, ptr @.str.2, ptr @.str.214, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.106 }, align 8
@rna_Sequences_new_movie_channel = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_movie_frame_start, ptr @rna_Sequences_new_movie_filepath, i32 -1, ptr @.str.141, i32 7, ptr @.str.142, ptr @.str.217, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 31, i32 0, i32 31, i32 1, i32 0, ptr null }, align 8
@.str.235 = private unnamed_addr constant [18 x i8] c"Filepath to movie\00", align 1
@rna_Sequences_new_movie_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_movie_sequence, ptr @rna_Sequences_new_movie_channel, i32 -1, ptr @.str.126, i32 7, ptr @.str.2, ptr @.str.218, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@rna_Sequences_new_movie_sequence = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sequences_new_movie_frame_start, i32 -1, ptr @.str.219, i32 8388616, ptr @.str.2, ptr @.str.220, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_Sequences_new_sound_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Sequences_new_effect_func, ptr @rna_Sequences_new_movie_func, ptr null, %struct.ListBase { ptr @rna_Sequences_new_sound_name, ptr @rna_Sequences_new_sound_sequence } }, ptr @.str.238, i32 2068, ptr @.str.239, ptr @Sequences_new_sound_call, ptr @rna_Sequences_new_sound_sequence }, align 8
@.str.236 = private unnamed_addr constant [10 x i8] c"new_movie\00", align 1
@.str.237 = private unnamed_addr constant [25 x i8] c"Add a new movie sequence\00", align 1
@rna_Sequences_new_sound_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_sound_channel, ptr @rna_Sequences_new_sound_name, i32 -1, ptr @.str.52, i32 262149, ptr @.str.2, ptr @.str.235, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.232 }, align 8
@rna_Sequences_new_sound_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_sound_filepath, ptr null, i32 -1, ptr @.str.105, i32 262149, ptr @.str.2, ptr @.str.214, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.106 }, align 8
@rna_Sequences_new_sound_channel = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_sound_frame_start, ptr @rna_Sequences_new_sound_filepath, i32 -1, ptr @.str.141, i32 7, ptr @.str.142, ptr @.str.217, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 31, i32 0, i32 31, i32 1, i32 0, ptr null }, align 8
@rna_Sequences_new_sound_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_sound_sequence, ptr @rna_Sequences_new_sound_channel, i32 -1, ptr @.str.126, i32 7, ptr @.str.2, ptr @.str.218, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@rna_Sequences_new_sound_sequence = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sequences_new_sound_frame_start, i32 -1, ptr @.str.219, i32 8388616, ptr @.str.2, ptr @.str.220, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_Sequences_new_effect_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Sequences_remove_func, ptr @rna_Sequences_new_sound_func, ptr null, %struct.ListBase { ptr @rna_Sequences_new_effect_name, ptr @rna_Sequences_new_effect_sequence } }, ptr @.str.249, i32 2064, ptr @.str.250, ptr @Sequences_new_effect_call, ptr @rna_Sequences_new_effect_sequence }, align 8
@.str.238 = private unnamed_addr constant [10 x i8] c"new_sound\00", align 1
@.str.239 = private unnamed_addr constant [25 x i8] c"Add a new sound sequence\00", align 1
@rna_Sequences_new_effect_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_effect_channel, ptr @rna_Sequences_new_effect_name, i32 -1, ptr @.str.107, i32 7, ptr @.str.108, ptr @.str.240, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Sequences_new_effect_type_items, i32 16, i32 8 }, align 8
@rna_Sequences_new_effect_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_effect_type, ptr null, i32 -1, ptr @.str.105, i32 262149, ptr @.str.2, ptr @.str.214, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.106 }, align 8
@rna_Sequences_new_effect_channel = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_effect_frame_start, ptr @rna_Sequences_new_effect_type, i32 -1, ptr @.str.141, i32 7, ptr @.str.142, ptr @.str.217, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 31, i32 0, i32 31, i32 1, i32 0, ptr null }, align 8
@.str.240 = private unnamed_addr constant [26 x i8] c"type for the new sequence\00", align 1
@rna_Sequences_new_effect_type_items = internal global [17 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 8, ptr @.str.564, i32 0, ptr @.str.565, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.566, i32 0, ptr @.str.567, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.568, i32 0, ptr @.str.569, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.570, i32 0, ptr @.str.571, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.572, i32 0, ptr @.str.573, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.574, i32 0, ptr @.str.575, ptr @.str.2 }, %struct.EnumPropertyItem { i32 14, ptr @.str.576, i32 0, ptr @.str.577, ptr @.str.2 }, %struct.EnumPropertyItem { i32 15, ptr @.str.578, i32 0, ptr @.str.579, ptr @.str.2 }, %struct.EnumPropertyItem { i32 25, ptr @.str.580, i32 0, ptr @.str.581, ptr @.str.2 }, %struct.EnumPropertyItem { i32 26, ptr @.str.582, i32 0, ptr @.str.583, ptr @.str.2 }, %struct.EnumPropertyItem { i32 27, ptr @.str.584, i32 0, ptr @.str.285, ptr @.str.2 }, %struct.EnumPropertyItem { i32 28, ptr @.str.585, i32 0, ptr @.str.394, ptr @.str.2 }, %struct.EnumPropertyItem { i32 29, ptr @.str.586, i32 0, ptr @.str.587, ptr @.str.2 }, %struct.EnumPropertyItem { i32 30, ptr @.str.588, i32 0, ptr @.str.589, ptr @.str.2 }, %struct.EnumPropertyItem { i32 31, ptr @.str.590, i32 0, ptr @.str.591, ptr @.str.2 }, %struct.EnumPropertyItem { i32 40, ptr @.str.592, i32 0, ptr @.str.593, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Sequences_new_effect_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_effect_frame_end, ptr @rna_Sequences_new_effect_channel, i32 -1, ptr @.str.126, i32 7, ptr @.str.2, ptr @.str.218, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -2147483648, i32 2147483647, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_Sequences_new_effect_frame_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_effect_seq1, ptr @rna_Sequences_new_effect_frame_start, i32 -1, ptr @.str.241, i32 3, ptr @.str.2, ptr @.str.242, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -2147483648, i32 2147483647, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_Sequences_new_effect_seq1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_effect_seq2, ptr @rna_Sequences_new_effect_frame_end, i32 -1, ptr @.str.243, i32 8388608, ptr @.str.2, ptr @.str.244, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@.str.241 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.242 = private unnamed_addr constant [35 x i8] c"The end frame for the new sequence\00", align 1
@rna_Sequences_new_effect_seq2 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_effect_seq3, ptr @rna_Sequences_new_effect_seq1, i32 -1, ptr @.str.245, i32 8388608, ptr @.str.2, ptr @.str.246, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@.str.243 = private unnamed_addr constant [5 x i8] c"seq1\00", align 1
@.str.244 = private unnamed_addr constant [22 x i8] c"Sequence 1 for effect\00", align 1
@rna_Sequences_new_effect_seq3 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Sequences_new_effect_sequence, ptr @rna_Sequences_new_effect_seq2, i32 -1, ptr @.str.247, i32 8388608, ptr @.str.2, ptr @.str.248, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@.str.245 = private unnamed_addr constant [5 x i8] c"seq2\00", align 1
@.str.246 = private unnamed_addr constant [22 x i8] c"Sequence 2 for effect\00", align 1
@rna_Sequences_new_effect_sequence = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Sequences_new_effect_seq3, i32 -1, ptr @.str.219, i32 8388616, ptr @.str.2, ptr @.str.220, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@.str.247 = private unnamed_addr constant [5 x i8] c"seq3\00", align 1
@.str.248 = private unnamed_addr constant [22 x i8] c"Sequence 3 for effect\00", align 1
@rna_Sequences_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_Sequences_new_effect_func, ptr null, %struct.ListBase { ptr @rna_Sequences_remove_sequence, ptr @rna_Sequences_remove_sequence } }, ptr @.str.185, i32 2064, ptr @.str.252, ptr @Sequences_remove_call, ptr null }, align 8
@.str.249 = private unnamed_addr constant [11 x i8] c"new_effect\00", align 1
@.str.250 = private unnamed_addr constant [26 x i8] c"Add a new effect sequence\00", align 1
@.str.251 = private unnamed_addr constant [19 x i8] c"Sequence to remove\00", align 1
@rna_Sequences_remove_sequence = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.219, i32 264196, ptr @.str.2, ptr @.str.251, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@.str.252 = private unnamed_addr constant [18 x i8] c"Remove a Sequence\00", align 1
@RNA_ImageSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SequenceElements, ptr @RNA_Sequences, ptr null, %struct.ListBase { ptr @rna_ImageSequence_directory, ptr @rna_ImageSequence_colorspace_settings } }, ptr @.str.311, ptr null, ptr null, i32 4, ptr @.str.312, ptr @.str.313, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_Sequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.253 = private unnamed_addr constant [24 x i8] c"Collection of Sequences\00", align 1
@rna_ImageSequence_directory = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_elements, ptr null, i32 -1, ptr @.str.49, i32 262145, ptr @.str.50, ptr @.str.2, i32 0, ptr @.str.16, i32 3, i32 2, ptr null, i32 0, [3 x i32] [i32 768, i32 0, i32 0], i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_directory_get, ptr @ImageSequence_directory_length, ptr @ImageSequence_directory_set, ptr null, ptr null, ptr null, i32 768, ptr @.str.2 }, align 8
@rna_ImageSequence_use_deinterlace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_alpha_mode, ptr @rna_ImageSequence_elements, i32 -1, ptr @.str.256, i32 3, ptr @.str.257, ptr @.str.258, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update_reopen_files, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_use_deinterlace_get, ptr @ImageSequence_use_deinterlace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.254 = private unnamed_addr constant [9 x i8] c"elements\00", align 1
@.str.255 = private unnamed_addr constant [9 x i8] c"Elements\00", align 1
@RNA_SequenceElements = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MetaSequence, ptr @RNA_ImageSequence, ptr null, %struct.ListBase { ptr @rna_SequenceElements_rna_properties, ptr @rna_SequenceElements_rna_type } }, ptr @.str.321, ptr null, ptr null, i32 4, ptr @.str.321, ptr @.str.322, ptr @.str.16, i32 17, ptr null, ptr @rna_SequenceElements_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_SequenceElements_append_func, ptr @rna_SequenceElements_pop_func } }, align 8
@rna_ImageSequence_alpha_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_use_flip_x, ptr @rna_ImageSequence_use_deinterlace, i32 -1, ptr @.str.259, i32 3, ptr @.str.260, ptr @.str.261, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_alpha_mode_get, ptr @ImageSequence_alpha_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ImageSequence_alpha_mode_items, i32 2, i32 0 }, align 8
@.str.256 = private unnamed_addr constant [16 x i8] c"use_deinterlace\00", align 1
@.str.257 = private unnamed_addr constant [13 x i8] c"De-Interlace\00", align 1
@.str.258 = private unnamed_addr constant [34 x i8] c"For video movies to remove fields\00", align 1
@rna_ImageSequence_use_flip_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_use_flip_y, ptr @rna_ImageSequence_alpha_mode, i32 -1, ptr @.str.262, i32 3, ptr @.str.263, ptr @.str.264, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_use_flip_x_get, ptr @ImageSequence_use_flip_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.259 = private unnamed_addr constant [11 x i8] c"alpha_mode\00", align 1
@.str.260 = private unnamed_addr constant [11 x i8] c"Alpha Mode\00", align 1
@.str.261 = private unnamed_addr constant [55 x i8] c"Representation of alpha information in the RGBA pixels\00", align 1
@rna_ImageSequence_alpha_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.597, i32 0, ptr @.str.598, ptr @.str.599 }, %struct.EnumPropertyItem { i32 1, ptr @.str.600, i32 0, ptr @.str.601, ptr @.str.602 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ImageSequence_use_flip_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_use_float, ptr @rna_ImageSequence_use_flip_x, i32 -1, ptr @.str.265, i32 3, ptr @.str.266, ptr @.str.267, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_use_flip_y_get, ptr @ImageSequence_use_flip_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.262 = private unnamed_addr constant [11 x i8] c"use_flip_x\00", align 1
@.str.263 = private unnamed_addr constant [7 x i8] c"Flip X\00", align 1
@.str.264 = private unnamed_addr constant [19 x i8] c"Flip on the X axis\00", align 1
@rna_ImageSequence_use_float = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_use_reverse_frames, ptr @rna_ImageSequence_use_flip_y, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_use_float_get, ptr @ImageSequence_use_float_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.265 = private unnamed_addr constant [11 x i8] c"use_flip_y\00", align 1
@.str.266 = private unnamed_addr constant [7 x i8] c"Flip Y\00", align 1
@.str.267 = private unnamed_addr constant [19 x i8] c"Flip on the Y axis\00", align 1
@rna_ImageSequence_use_reverse_frames = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_color_multiply, ptr @rna_ImageSequence_use_float, i32 -1, ptr @.str.271, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_use_reverse_frames_get, ptr @ImageSequence_use_reverse_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.268 = private unnamed_addr constant [10 x i8] c"use_float\00", align 1
@.str.269 = private unnamed_addr constant [14 x i8] c"Convert Float\00", align 1
@.str.270 = private unnamed_addr constant [28 x i8] c"Convert input to float data\00", align 1
@rna_ImageSequence_color_multiply = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_color_saturation, ptr @rna_ImageSequence_use_reverse_frames, i32 -1, ptr @.str.274, i32 8195, ptr @.str.275, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @ImageSequence_color_multiply_get, ptr @ImageSequence_color_multiply_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.271 = private unnamed_addr constant [19 x i8] c"use_reverse_frames\00", align 1
@.str.272 = private unnamed_addr constant [10 x i8] c"Flip Time\00", align 1
@.str.273 = private unnamed_addr constant [20 x i8] c"Reverse frame order\00", align 1
@rna_ImageSequence_color_saturation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_strobe, ptr @rna_ImageSequence_color_multiply, i32 -1, ptr @.str.276, i32 8195, ptr @.str.277, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @ImageSequence_color_saturation_get, ptr @ImageSequence_color_saturation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+01, float 3.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.274 = private unnamed_addr constant [15 x i8] c"color_multiply\00", align 1
@.str.275 = private unnamed_addr constant [16 x i8] c"Multiply Colors\00", align 1
@rna_ImageSequence_strobe = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_use_translation, ptr @rna_ImageSequence_color_saturation, i32 -1, ptr @.str.278, i32 8195, ptr @.str.279, ptr @.str.280, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @ImageSequence_strobe_get, ptr @ImageSequence_strobe_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 3.000000e+01, float 1.000000e+00, float 3.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.276 = private unnamed_addr constant [17 x i8] c"color_saturation\00", align 1
@.str.277 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@rna_ImageSequence_use_translation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_transform, ptr @rna_ImageSequence_strobe, i32 -1, ptr @.str.281, i32 3, ptr @.str.282, ptr @.str.283, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_use_translation_get, ptr @ImageSequence_use_translation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.278 = private unnamed_addr constant [7 x i8] c"strobe\00", align 1
@.str.279 = private unnamed_addr constant [7 x i8] c"Strobe\00", align 1
@.str.280 = private unnamed_addr constant [29 x i8] c"Only display every nth frame\00", align 1
@rna_ImageSequence_transform = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_use_crop, ptr @rna_ImageSequence_use_translation, i32 -1, ptr @.str.284, i32 8388608, ptr @.str.285, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_transform_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceTransform }, align 8
@.str.281 = private unnamed_addr constant [16 x i8] c"use_translation\00", align 1
@.str.282 = private unnamed_addr constant [16 x i8] c"Use Translation\00", align 1
@.str.283 = private unnamed_addr constant [34 x i8] c"Translate image before processing\00", align 1
@rna_ImageSequence_use_crop = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_crop, ptr @rna_ImageSequence_transform, i32 -1, ptr @.str.286, i32 3, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_use_crop_get, ptr @ImageSequence_use_crop_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.284 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.285 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@rna_ImageSequence_crop = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_use_proxy, ptr @rna_ImageSequence_use_crop, i32 -1, ptr @.str.289, i32 8388608, ptr @.str.290, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_crop_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceCrop }, align 8
@.str.286 = private unnamed_addr constant [9 x i8] c"use_crop\00", align 1
@.str.287 = private unnamed_addr constant [9 x i8] c"Use Crop\00", align 1
@.str.288 = private unnamed_addr constant [29 x i8] c"Crop image before processing\00", align 1
@rna_ImageSequence_use_proxy = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_proxy, ptr @rna_ImageSequence_crop, i32 -1, ptr @.str.291, i32 3, ptr @.str.292, ptr @.str.293, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_use_proxy_get, ptr @ImageSequence_use_proxy_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.289 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.290 = private unnamed_addr constant [5 x i8] c"Crop\00", align 1
@rna_ImageSequence_proxy = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_use_proxy_custom_directory, ptr @rna_ImageSequence_use_proxy, i32 -1, ptr @.str.294, i32 8388608, ptr @.str.295, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_proxy_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceProxy }, align 8
@.str.291 = private unnamed_addr constant [10 x i8] c"use_proxy\00", align 1
@.str.292 = private unnamed_addr constant [21 x i8] c"Use Proxy / Timecode\00", align 1
@.str.293 = private unnamed_addr constant [57 x i8] c"Use a preview proxy and/or timecode index for this strip\00", align 1
@rna_ImageSequence_use_proxy_custom_directory = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_use_proxy_custom_file, ptr @rna_ImageSequence_proxy, i32 -1, ptr @.str.296, i32 3, ptr @.str.297, ptr @.str.298, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_use_proxy_custom_directory_get, ptr @ImageSequence_use_proxy_custom_directory_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.294 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.295 = private unnamed_addr constant [6 x i8] c"Proxy\00", align 1
@rna_ImageSequence_use_proxy_custom_file = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_animation_offset_start, ptr @rna_ImageSequence_use_proxy_custom_directory, i32 -1, ptr @.str.299, i32 3, ptr @.str.300, ptr @.str.301, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_use_proxy_custom_file_get, ptr @ImageSequence_use_proxy_custom_file_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.296 = private unnamed_addr constant [27 x i8] c"use_proxy_custom_directory\00", align 1
@.str.297 = private unnamed_addr constant [23 x i8] c"Proxy Custom Directory\00", align 1
@.str.298 = private unnamed_addr constant [37 x i8] c"Use a custom directory to store data\00", align 1
@rna_ImageSequence_animation_offset_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_animation_offset_end, ptr @rna_ImageSequence_use_proxy_custom_file, i32 -1, ptr @.str.302, i32 1, ptr @.str.303, ptr @.str.304, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_animation_offset_start_get, ptr @ImageSequence_animation_offset_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.299 = private unnamed_addr constant [22 x i8] c"use_proxy_custom_file\00", align 1
@.str.300 = private unnamed_addr constant [18 x i8] c"Proxy Custom File\00", align 1
@.str.301 = private unnamed_addr constant [42 x i8] c"Use a custom file to read proxy data from\00", align 1
@rna_ImageSequence_animation_offset_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ImageSequence_colorspace_settings, ptr @rna_ImageSequence_animation_offset_start, i32 -1, ptr @.str.305, i32 1, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_animation_offset_end_get, ptr @ImageSequence_animation_offset_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.302 = private unnamed_addr constant [23 x i8] c"animation_offset_start\00", align 1
@.str.303 = private unnamed_addr constant [23 x i8] c"Animation Start Offset\00", align 1
@.str.304 = private unnamed_addr constant [36 x i8] c"Animation start offset (trim start)\00", align 1
@rna_ImageSequence_colorspace_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ImageSequence_animation_offset_end, i32 -1, ptr @.str.308, i32 8388608, ptr @.str.309, ptr @.str.310, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ImageSequence_colorspace_settings_get, ptr null, ptr null, ptr null, ptr @RNA_ColorManagedInputColorspaceSettings }, align 8
@.str.305 = private unnamed_addr constant [21 x i8] c"animation_offset_end\00", align 1
@.str.306 = private unnamed_addr constant [21 x i8] c"Animation End Offset\00", align 1
@.str.307 = private unnamed_addr constant [32 x i8] c"Animation end offset (trim end)\00", align 1
@.str.308 = private unnamed_addr constant [20 x i8] c"colorspace_settings\00", align 1
@.str.309 = private unnamed_addr constant [21 x i8] c"Color Space Settings\00", align 1
@.str.310 = private unnamed_addr constant [27 x i8] c"Input color space settings\00", align 1
@.str.311 = private unnamed_addr constant [14 x i8] c"ImageSequence\00", align 1
@.str.312 = private unnamed_addr constant [15 x i8] c"Image Sequence\00", align 1
@.str.313 = private unnamed_addr constant [42 x i8] c"Sequence strip to load one or more images\00", align 1
@rna_SequenceElements_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SequenceElements_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceElements_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SequenceElements_append_elem = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SequenceElements_append_filename, i32 -1, ptr @.str.170, i32 8388616, ptr @.str.2, ptr @.str.314, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_SequenceElement }, align 8
@rna_SequenceElements_append_filename = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceElements_append_elem, ptr null, i32 -1, ptr @.str.38, i32 262149, ptr @.str.2, ptr @.str.231, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.232 }, align 8
@.str.314 = private unnamed_addr constant [20 x i8] c"New SequenceElement\00", align 1
@rna_SequenceElements_pop_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_SequenceElements_append_func, ptr null, %struct.ListBase { ptr @rna_SequenceElements_pop_index, ptr @rna_SequenceElements_pop_index } }, ptr @.str.319, i32 2064, ptr @.str.320, ptr @SequenceElements_pop_call, ptr null }, align 8
@.str.315 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.316 = private unnamed_addr constant [43 x i8] c"Push an image from ImageSequence.directory\00", align 1
@rna_SequenceElements_append_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_SequenceElements_pop_func, ptr null, ptr null, %struct.ListBase { ptr @rna_SequenceElements_append_filename, ptr @rna_SequenceElements_append_elem } }, ptr @.str.315, i32 2048, ptr @.str.316, ptr @SequenceElements_append_call, ptr @rna_SequenceElements_append_elem }, align 8
@.str.317 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.318 = private unnamed_addr constant [25 x i8] c"Index of image to remove\00", align 1
@rna_SequenceElements_pop_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.317, i32 7, ptr @.str.2, ptr @.str.318, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -2147483648, i32 2147483647, i32 -2147483648, i32 2147483647, i32 1, i32 -1, ptr null }, align 8
@.str.319 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.320 = private unnamed_addr constant [32 x i8] c"Pop an image off the collection\00", align 1
@RNA_MetaSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SceneSequence, ptr @RNA_SequenceElements, ptr null, %struct.ListBase { ptr @rna_MetaSequence_sequences, ptr @rna_MetaSequence_animation_offset_end } }, ptr @.str.323, ptr null, ptr null, i32 4, ptr @.str.324, ptr @.str.325, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_Sequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.321 = private unnamed_addr constant [17 x i8] c"SequenceElements\00", align 1
@.str.322 = private unnamed_addr constant [30 x i8] c"Collection of SequenceElement\00", align 1
@rna_MetaSequence_use_deinterlace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_alpha_mode, ptr @rna_MetaSequence_sequences, i32 -1, ptr @.str.256, i32 3, ptr @.str.257, ptr @.str.258, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update_reopen_files, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_use_deinterlace_get, ptr @MetaSequence_use_deinterlace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MetaSequence_alpha_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_use_flip_x, ptr @rna_MetaSequence_use_deinterlace, i32 -1, ptr @.str.259, i32 3, ptr @.str.260, ptr @.str.261, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_alpha_mode_get, ptr @MetaSequence_alpha_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MetaSequence_alpha_mode_items, i32 2, i32 0 }, align 8
@rna_MetaSequence_use_flip_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_use_flip_y, ptr @rna_MetaSequence_alpha_mode, i32 -1, ptr @.str.262, i32 3, ptr @.str.263, ptr @.str.264, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_use_flip_x_get, ptr @MetaSequence_use_flip_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MetaSequence_alpha_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.597, i32 0, ptr @.str.598, ptr @.str.599 }, %struct.EnumPropertyItem { i32 1, ptr @.str.600, i32 0, ptr @.str.601, ptr @.str.602 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MetaSequence_use_flip_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_use_float, ptr @rna_MetaSequence_use_flip_x, i32 -1, ptr @.str.265, i32 3, ptr @.str.266, ptr @.str.267, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_use_flip_y_get, ptr @MetaSequence_use_flip_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MetaSequence_use_float = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_use_reverse_frames, ptr @rna_MetaSequence_use_flip_y, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_use_float_get, ptr @MetaSequence_use_float_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MetaSequence_use_reverse_frames = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_color_multiply, ptr @rna_MetaSequence_use_float, i32 -1, ptr @.str.271, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_use_reverse_frames_get, ptr @MetaSequence_use_reverse_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MetaSequence_color_multiply = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_color_saturation, ptr @rna_MetaSequence_use_reverse_frames, i32 -1, ptr @.str.274, i32 8195, ptr @.str.275, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @MetaSequence_color_multiply_get, ptr @MetaSequence_color_multiply_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_MetaSequence_color_saturation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_strobe, ptr @rna_MetaSequence_color_multiply, i32 -1, ptr @.str.276, i32 8195, ptr @.str.277, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @MetaSequence_color_saturation_get, ptr @MetaSequence_color_saturation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+01, float 3.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_MetaSequence_strobe = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_use_translation, ptr @rna_MetaSequence_color_saturation, i32 -1, ptr @.str.278, i32 8195, ptr @.str.279, ptr @.str.280, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @MetaSequence_strobe_get, ptr @MetaSequence_strobe_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 3.000000e+01, float 1.000000e+00, float 3.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_MetaSequence_use_translation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_transform, ptr @rna_MetaSequence_strobe, i32 -1, ptr @.str.281, i32 3, ptr @.str.282, ptr @.str.283, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_use_translation_get, ptr @MetaSequence_use_translation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MetaSequence_transform = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_use_crop, ptr @rna_MetaSequence_use_translation, i32 -1, ptr @.str.284, i32 8388608, ptr @.str.285, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_transform_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceTransform }, align 8
@rna_MetaSequence_use_crop = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_crop, ptr @rna_MetaSequence_transform, i32 -1, ptr @.str.286, i32 3, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_use_crop_get, ptr @MetaSequence_use_crop_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MetaSequence_crop = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_use_proxy, ptr @rna_MetaSequence_use_crop, i32 -1, ptr @.str.289, i32 8388608, ptr @.str.290, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_crop_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceCrop }, align 8
@rna_MetaSequence_use_proxy = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_proxy, ptr @rna_MetaSequence_crop, i32 -1, ptr @.str.291, i32 3, ptr @.str.292, ptr @.str.293, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_use_proxy_get, ptr @MetaSequence_use_proxy_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MetaSequence_proxy = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_use_proxy_custom_directory, ptr @rna_MetaSequence_use_proxy, i32 -1, ptr @.str.294, i32 8388608, ptr @.str.295, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_proxy_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceProxy }, align 8
@rna_MetaSequence_use_proxy_custom_directory = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_use_proxy_custom_file, ptr @rna_MetaSequence_proxy, i32 -1, ptr @.str.296, i32 3, ptr @.str.297, ptr @.str.298, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_use_proxy_custom_directory_get, ptr @MetaSequence_use_proxy_custom_directory_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MetaSequence_use_proxy_custom_file = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_animation_offset_start, ptr @rna_MetaSequence_use_proxy_custom_directory, i32 -1, ptr @.str.299, i32 3, ptr @.str.300, ptr @.str.301, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_use_proxy_custom_file_get, ptr @MetaSequence_use_proxy_custom_file_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MetaSequence_animation_offset_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MetaSequence_animation_offset_end, ptr @rna_MetaSequence_use_proxy_custom_file, i32 -1, ptr @.str.302, i32 1, ptr @.str.303, ptr @.str.304, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_animation_offset_start_get, ptr @MetaSequence_animation_offset_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_MetaSequence_animation_offset_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MetaSequence_animation_offset_start, i32 -1, ptr @.str.305, i32 1, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MetaSequence_animation_offset_end_get, ptr @MetaSequence_animation_offset_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@RNA_SceneSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MovieSequence, ptr @RNA_MetaSequence, ptr null, %struct.ListBase { ptr @rna_SceneSequence_scene, ptr @rna_SceneSequence_animation_offset_end } }, ptr @.str.331, ptr null, ptr null, i32 4, ptr @.str.332, ptr @.str.333, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_Sequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.323 = private unnamed_addr constant [13 x i8] c"MetaSequence\00", align 1
@.str.324 = private unnamed_addr constant [14 x i8] c"Meta Sequence\00", align 1
@.str.325 = private unnamed_addr constant [64 x i8] c"Sequence strip to group other strips as a single sequence strip\00", align 1
@rna_SceneSequence_scene_camera = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_use_deinterlace, ptr @rna_SceneSequence_scene, i32 -1, ptr @.str.328, i32 8388609, ptr @.str.329, ptr @.str.330, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_scene_camera_get, ptr @SceneSequence_scene_camera_set, ptr null, ptr @rna_Camera_object_poll, ptr @RNA_Object }, align 8
@.str.326 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.327 = private unnamed_addr constant [30 x i8] c"Scene that this sequence uses\00", align 1
@rna_SceneSequence_scene = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_scene_camera, ptr null, i32 -1, ptr @.str.227, i32 8388609, ptr @.str.326, ptr @.str.327, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_scene_get, ptr @SceneSequence_scene_set, ptr null, ptr null, ptr @RNA_Scene }, align 8
@rna_SceneSequence_use_deinterlace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_alpha_mode, ptr @rna_SceneSequence_scene_camera, i32 -1, ptr @.str.256, i32 3, ptr @.str.257, ptr @.str.258, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update_reopen_files, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_use_deinterlace_get, ptr @SceneSequence_use_deinterlace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.328 = private unnamed_addr constant [13 x i8] c"scene_camera\00", align 1
@.str.329 = private unnamed_addr constant [16 x i8] c"Camera Override\00", align 1
@.str.330 = private unnamed_addr constant [34 x i8] c"Override the scenes active camera\00", align 1
@rna_SceneSequence_alpha_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_use_flip_x, ptr @rna_SceneSequence_use_deinterlace, i32 -1, ptr @.str.259, i32 3, ptr @.str.260, ptr @.str.261, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_alpha_mode_get, ptr @SceneSequence_alpha_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SceneSequence_alpha_mode_items, i32 2, i32 0 }, align 8
@rna_SceneSequence_use_flip_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_use_flip_y, ptr @rna_SceneSequence_alpha_mode, i32 -1, ptr @.str.262, i32 3, ptr @.str.263, ptr @.str.264, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_use_flip_x_get, ptr @SceneSequence_use_flip_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SceneSequence_alpha_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.597, i32 0, ptr @.str.598, ptr @.str.599 }, %struct.EnumPropertyItem { i32 1, ptr @.str.600, i32 0, ptr @.str.601, ptr @.str.602 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SceneSequence_use_flip_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_use_float, ptr @rna_SceneSequence_use_flip_x, i32 -1, ptr @.str.265, i32 3, ptr @.str.266, ptr @.str.267, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_use_flip_y_get, ptr @SceneSequence_use_flip_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SceneSequence_use_float = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_use_reverse_frames, ptr @rna_SceneSequence_use_flip_y, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_use_float_get, ptr @SceneSequence_use_float_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SceneSequence_use_reverse_frames = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_color_multiply, ptr @rna_SceneSequence_use_float, i32 -1, ptr @.str.271, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_use_reverse_frames_get, ptr @SceneSequence_use_reverse_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SceneSequence_color_multiply = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_color_saturation, ptr @rna_SceneSequence_use_reverse_frames, i32 -1, ptr @.str.274, i32 8195, ptr @.str.275, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @SceneSequence_color_multiply_get, ptr @SceneSequence_color_multiply_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_SceneSequence_color_saturation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_strobe, ptr @rna_SceneSequence_color_multiply, i32 -1, ptr @.str.276, i32 8195, ptr @.str.277, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @SceneSequence_color_saturation_get, ptr @SceneSequence_color_saturation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+01, float 3.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_SceneSequence_strobe = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_use_translation, ptr @rna_SceneSequence_color_saturation, i32 -1, ptr @.str.278, i32 8195, ptr @.str.279, ptr @.str.280, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @SceneSequence_strobe_get, ptr @SceneSequence_strobe_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 3.000000e+01, float 1.000000e+00, float 3.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_SceneSequence_use_translation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_transform, ptr @rna_SceneSequence_strobe, i32 -1, ptr @.str.281, i32 3, ptr @.str.282, ptr @.str.283, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_use_translation_get, ptr @SceneSequence_use_translation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SceneSequence_transform = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_use_crop, ptr @rna_SceneSequence_use_translation, i32 -1, ptr @.str.284, i32 8388608, ptr @.str.285, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_transform_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceTransform }, align 8
@rna_SceneSequence_use_crop = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_crop, ptr @rna_SceneSequence_transform, i32 -1, ptr @.str.286, i32 3, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_use_crop_get, ptr @SceneSequence_use_crop_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SceneSequence_crop = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_use_proxy, ptr @rna_SceneSequence_use_crop, i32 -1, ptr @.str.289, i32 8388608, ptr @.str.290, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_crop_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceCrop }, align 8
@rna_SceneSequence_use_proxy = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_proxy, ptr @rna_SceneSequence_crop, i32 -1, ptr @.str.291, i32 3, ptr @.str.292, ptr @.str.293, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_use_proxy_get, ptr @SceneSequence_use_proxy_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SceneSequence_proxy = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_use_proxy_custom_directory, ptr @rna_SceneSequence_use_proxy, i32 -1, ptr @.str.294, i32 8388608, ptr @.str.295, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_proxy_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceProxy }, align 8
@rna_SceneSequence_use_proxy_custom_directory = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_use_proxy_custom_file, ptr @rna_SceneSequence_proxy, i32 -1, ptr @.str.296, i32 3, ptr @.str.297, ptr @.str.298, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_use_proxy_custom_directory_get, ptr @SceneSequence_use_proxy_custom_directory_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SceneSequence_use_proxy_custom_file = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_animation_offset_start, ptr @rna_SceneSequence_use_proxy_custom_directory, i32 -1, ptr @.str.299, i32 3, ptr @.str.300, ptr @.str.301, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_use_proxy_custom_file_get, ptr @SceneSequence_use_proxy_custom_file_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SceneSequence_animation_offset_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SceneSequence_animation_offset_end, ptr @rna_SceneSequence_use_proxy_custom_file, i32 -1, ptr @.str.302, i32 1, ptr @.str.303, ptr @.str.304, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_animation_offset_start_get, ptr @SceneSequence_animation_offset_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_SceneSequence_animation_offset_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SceneSequence_animation_offset_start, i32 -1, ptr @.str.305, i32 1, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SceneSequence_animation_offset_end_get, ptr @SceneSequence_animation_offset_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@RNA_MovieSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MovieClipSequence, ptr @RNA_SceneSequence, ptr null, %struct.ListBase { ptr @rna_MovieSequence_mpeg_preseek, ptr @rna_MovieSequence_colorspace_settings } }, ptr @.str.340, ptr null, ptr null, i32 4, ptr @.str.341, ptr @.str.342, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_Sequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.331 = private unnamed_addr constant [14 x i8] c"SceneSequence\00", align 1
@.str.332 = private unnamed_addr constant [15 x i8] c"Scene Sequence\00", align 1
@.str.333 = private unnamed_addr constant [53 x i8] c"Sequence strip to used the rendered image of a scene\00", align 1
@rna_MovieSequence_stream_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_elements, ptr @rna_MovieSequence_mpeg_preseek, i32 -1, ptr @.str.337, i32 8195, ptr @.str.338, ptr @.str.339, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update_reopen_files, i32 67502080, ptr null, ptr null, i32 158, i32 1, ptr null, ptr null }, ptr @MovieSequence_stream_index_get, ptr @MovieSequence_stream_index_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 20, i32 0, i32 20, i32 1, i32 0, ptr null }, align 8
@.str.334 = private unnamed_addr constant [13 x i8] c"mpeg_preseek\00", align 1
@.str.335 = private unnamed_addr constant [13 x i8] c"MPEG Preseek\00", align 1
@.str.336 = private unnamed_addr constant [42 x i8] c"For MPEG movies, preseek this many frames\00", align 1
@rna_MovieSequence_mpeg_preseek = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_stream_index, ptr null, i32 -1, ptr @.str.334, i32 8195, ptr @.str.335, ptr @.str.336, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 156, i32 1, ptr null, ptr null }, ptr @MovieSequence_mpeg_preseek_get, ptr @MovieSequence_mpeg_preseek_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 50, i32 0, i32 50, i32 1, i32 0, ptr null }, align 8
@.str.337 = private unnamed_addr constant [13 x i8] c"stream_index\00", align 1
@.str.338 = private unnamed_addr constant [13 x i8] c"Stream Index\00", align 1
@.str.339 = private unnamed_addr constant [74 x i8] c"For files with several movie streams, use the stream with the given index\00", align 1
@rna_MovieSequence_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_use_deinterlace, ptr @rna_MovieSequence_elements, i32 -1, ptr @.str.52, i32 262145, ptr @.str.232, ptr @.str.2, i32 0, ptr @.str.16, i32 3, i32 1, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_filepath_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_filepath_get, ptr @MovieSequence_filepath_length, ptr @MovieSequence_filepath_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@rna_MovieSequence_use_deinterlace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_alpha_mode, ptr @rna_MovieSequence_filepath, i32 -1, ptr @.str.256, i32 3, ptr @.str.257, ptr @.str.258, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update_reopen_files, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_use_deinterlace_get, ptr @MovieSequence_use_deinterlace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieSequence_alpha_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_use_flip_x, ptr @rna_MovieSequence_use_deinterlace, i32 -1, ptr @.str.259, i32 3, ptr @.str.260, ptr @.str.261, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_alpha_mode_get, ptr @MovieSequence_alpha_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MovieSequence_alpha_mode_items, i32 2, i32 0 }, align 8
@rna_MovieSequence_use_flip_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_use_flip_y, ptr @rna_MovieSequence_alpha_mode, i32 -1, ptr @.str.262, i32 3, ptr @.str.263, ptr @.str.264, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_use_flip_x_get, ptr @MovieSequence_use_flip_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieSequence_alpha_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.597, i32 0, ptr @.str.598, ptr @.str.599 }, %struct.EnumPropertyItem { i32 1, ptr @.str.600, i32 0, ptr @.str.601, ptr @.str.602 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MovieSequence_use_flip_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_use_float, ptr @rna_MovieSequence_use_flip_x, i32 -1, ptr @.str.265, i32 3, ptr @.str.266, ptr @.str.267, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_use_flip_y_get, ptr @MovieSequence_use_flip_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieSequence_use_float = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_use_reverse_frames, ptr @rna_MovieSequence_use_flip_y, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_use_float_get, ptr @MovieSequence_use_float_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieSequence_use_reverse_frames = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_color_multiply, ptr @rna_MovieSequence_use_float, i32 -1, ptr @.str.271, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_use_reverse_frames_get, ptr @MovieSequence_use_reverse_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieSequence_color_multiply = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_color_saturation, ptr @rna_MovieSequence_use_reverse_frames, i32 -1, ptr @.str.274, i32 8195, ptr @.str.275, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @MovieSequence_color_multiply_get, ptr @MovieSequence_color_multiply_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_MovieSequence_color_saturation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_strobe, ptr @rna_MovieSequence_color_multiply, i32 -1, ptr @.str.276, i32 8195, ptr @.str.277, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @MovieSequence_color_saturation_get, ptr @MovieSequence_color_saturation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+01, float 3.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_MovieSequence_strobe = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_use_translation, ptr @rna_MovieSequence_color_saturation, i32 -1, ptr @.str.278, i32 8195, ptr @.str.279, ptr @.str.280, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @MovieSequence_strobe_get, ptr @MovieSequence_strobe_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 3.000000e+01, float 1.000000e+00, float 3.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_MovieSequence_use_translation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_transform, ptr @rna_MovieSequence_strobe, i32 -1, ptr @.str.281, i32 3, ptr @.str.282, ptr @.str.283, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_use_translation_get, ptr @MovieSequence_use_translation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieSequence_transform = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_use_crop, ptr @rna_MovieSequence_use_translation, i32 -1, ptr @.str.284, i32 8388608, ptr @.str.285, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_transform_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceTransform }, align 8
@rna_MovieSequence_use_crop = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_crop, ptr @rna_MovieSequence_transform, i32 -1, ptr @.str.286, i32 3, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_use_crop_get, ptr @MovieSequence_use_crop_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieSequence_crop = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_use_proxy, ptr @rna_MovieSequence_use_crop, i32 -1, ptr @.str.289, i32 8388608, ptr @.str.290, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_crop_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceCrop }, align 8
@rna_MovieSequence_use_proxy = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_proxy, ptr @rna_MovieSequence_crop, i32 -1, ptr @.str.291, i32 3, ptr @.str.292, ptr @.str.293, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_use_proxy_get, ptr @MovieSequence_use_proxy_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieSequence_proxy = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_use_proxy_custom_directory, ptr @rna_MovieSequence_use_proxy, i32 -1, ptr @.str.294, i32 8388608, ptr @.str.295, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_proxy_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceProxy }, align 8
@rna_MovieSequence_use_proxy_custom_directory = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_use_proxy_custom_file, ptr @rna_MovieSequence_proxy, i32 -1, ptr @.str.296, i32 3, ptr @.str.297, ptr @.str.298, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_use_proxy_custom_directory_get, ptr @MovieSequence_use_proxy_custom_directory_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieSequence_use_proxy_custom_file = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_animation_offset_start, ptr @rna_MovieSequence_use_proxy_custom_directory, i32 -1, ptr @.str.299, i32 3, ptr @.str.300, ptr @.str.301, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_use_proxy_custom_file_get, ptr @MovieSequence_use_proxy_custom_file_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieSequence_animation_offset_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_animation_offset_end, ptr @rna_MovieSequence_use_proxy_custom_file, i32 -1, ptr @.str.302, i32 1, ptr @.str.303, ptr @.str.304, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_animation_offset_start_get, ptr @MovieSequence_animation_offset_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_MovieSequence_animation_offset_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieSequence_colorspace_settings, ptr @rna_MovieSequence_animation_offset_start, i32 -1, ptr @.str.305, i32 1, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_animation_offset_end_get, ptr @MovieSequence_animation_offset_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_MovieSequence_colorspace_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MovieSequence_animation_offset_end, i32 -1, ptr @.str.308, i32 8388608, ptr @.str.309, ptr @.str.310, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieSequence_colorspace_settings_get, ptr null, ptr null, ptr null, ptr @RNA_ColorManagedInputColorspaceSettings }, align 8
@RNA_MovieClipSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaskSequence, ptr @RNA_MovieSequence, ptr null, %struct.ListBase { ptr @rna_MovieClipSequence_undistort, ptr @rna_MovieClipSequence_animation_offset_end } }, ptr @.str.349, ptr null, ptr null, i32 4, ptr @.str.350, ptr @.str.351, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_Sequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.340 = private unnamed_addr constant [14 x i8] c"MovieSequence\00", align 1
@.str.341 = private unnamed_addr constant [15 x i8] c"Movie Sequence\00", align 1
@.str.342 = private unnamed_addr constant [31 x i8] c"Sequence strip to load a video\00", align 1
@rna_MovieClipSequence_stabilize2d = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_use_deinterlace, ptr @rna_MovieClipSequence_undistort, i32 -1, ptr @.str.346, i32 3, ptr @.str.347, ptr @.str.348, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_stabilize2d_get, ptr @MovieClipSequence_stabilize2d_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.343 = private unnamed_addr constant [10 x i8] c"undistort\00", align 1
@.str.344 = private unnamed_addr constant [15 x i8] c"Undistort Clip\00", align 1
@.str.345 = private unnamed_addr constant [40 x i8] c"Use the undistorted version of the clip\00", align 1
@rna_MovieClipSequence_undistort = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_stabilize2d, ptr null, i32 -1, ptr @.str.343, i32 3, ptr @.str.344, ptr @.str.345, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_undistort_get, ptr @MovieClipSequence_undistort_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieClipSequence_use_deinterlace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_alpha_mode, ptr @rna_MovieClipSequence_stabilize2d, i32 -1, ptr @.str.256, i32 3, ptr @.str.257, ptr @.str.258, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update_reopen_files, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_use_deinterlace_get, ptr @MovieClipSequence_use_deinterlace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.346 = private unnamed_addr constant [12 x i8] c"stabilize2d\00", align 1
@.str.347 = private unnamed_addr constant [18 x i8] c"Stabilize 2D Clip\00", align 1
@.str.348 = private unnamed_addr constant [42 x i8] c"Use the 2D stabilized version of the clip\00", align 1
@rna_MovieClipSequence_alpha_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_use_flip_x, ptr @rna_MovieClipSequence_use_deinterlace, i32 -1, ptr @.str.259, i32 3, ptr @.str.260, ptr @.str.261, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_alpha_mode_get, ptr @MovieClipSequence_alpha_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MovieClipSequence_alpha_mode_items, i32 2, i32 0 }, align 8
@rna_MovieClipSequence_use_flip_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_use_flip_y, ptr @rna_MovieClipSequence_alpha_mode, i32 -1, ptr @.str.262, i32 3, ptr @.str.263, ptr @.str.264, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_use_flip_x_get, ptr @MovieClipSequence_use_flip_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieClipSequence_alpha_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.597, i32 0, ptr @.str.598, ptr @.str.599 }, %struct.EnumPropertyItem { i32 1, ptr @.str.600, i32 0, ptr @.str.601, ptr @.str.602 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MovieClipSequence_use_flip_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_use_float, ptr @rna_MovieClipSequence_use_flip_x, i32 -1, ptr @.str.265, i32 3, ptr @.str.266, ptr @.str.267, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_use_flip_y_get, ptr @MovieClipSequence_use_flip_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieClipSequence_use_float = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_use_reverse_frames, ptr @rna_MovieClipSequence_use_flip_y, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_use_float_get, ptr @MovieClipSequence_use_float_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieClipSequence_use_reverse_frames = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_color_multiply, ptr @rna_MovieClipSequence_use_float, i32 -1, ptr @.str.271, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_use_reverse_frames_get, ptr @MovieClipSequence_use_reverse_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieClipSequence_color_multiply = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_color_saturation, ptr @rna_MovieClipSequence_use_reverse_frames, i32 -1, ptr @.str.274, i32 8195, ptr @.str.275, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @MovieClipSequence_color_multiply_get, ptr @MovieClipSequence_color_multiply_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_MovieClipSequence_color_saturation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_strobe, ptr @rna_MovieClipSequence_color_multiply, i32 -1, ptr @.str.276, i32 8195, ptr @.str.277, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @MovieClipSequence_color_saturation_get, ptr @MovieClipSequence_color_saturation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+01, float 3.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_MovieClipSequence_strobe = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_use_translation, ptr @rna_MovieClipSequence_color_saturation, i32 -1, ptr @.str.278, i32 8195, ptr @.str.279, ptr @.str.280, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @MovieClipSequence_strobe_get, ptr @MovieClipSequence_strobe_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 3.000000e+01, float 1.000000e+00, float 3.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_MovieClipSequence_use_translation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_transform, ptr @rna_MovieClipSequence_strobe, i32 -1, ptr @.str.281, i32 3, ptr @.str.282, ptr @.str.283, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_use_translation_get, ptr @MovieClipSequence_use_translation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieClipSequence_transform = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_use_crop, ptr @rna_MovieClipSequence_use_translation, i32 -1, ptr @.str.284, i32 8388608, ptr @.str.285, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_transform_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceTransform }, align 8
@rna_MovieClipSequence_use_crop = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_crop, ptr @rna_MovieClipSequence_transform, i32 -1, ptr @.str.286, i32 3, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_use_crop_get, ptr @MovieClipSequence_use_crop_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MovieClipSequence_crop = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_animation_offset_start, ptr @rna_MovieClipSequence_use_crop, i32 -1, ptr @.str.289, i32 8388608, ptr @.str.290, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_crop_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceCrop }, align 8
@rna_MovieClipSequence_animation_offset_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MovieClipSequence_animation_offset_end, ptr @rna_MovieClipSequence_crop, i32 -1, ptr @.str.302, i32 1, ptr @.str.303, ptr @.str.304, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_animation_offset_start_get, ptr @MovieClipSequence_animation_offset_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_MovieClipSequence_animation_offset_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MovieClipSequence_animation_offset_start, i32 -1, ptr @.str.305, i32 1, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MovieClipSequence_animation_offset_end_get, ptr @MovieClipSequence_animation_offset_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@RNA_MaskSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SoundSequence, ptr @RNA_MovieClipSequence, ptr null, %struct.ListBase { ptr @rna_MaskSequence_mask, ptr @rna_MaskSequence_animation_offset_end } }, ptr @.str.353, ptr null, ptr null, i32 4, ptr @.str.354, ptr @.str.355, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_Sequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.349 = private unnamed_addr constant [18 x i8] c"MovieClipSequence\00", align 1
@.str.350 = private unnamed_addr constant [19 x i8] c"MovieClip Sequence\00", align 1
@.str.351 = private unnamed_addr constant [52 x i8] c"Sequence strip to load a video from the clip editor\00", align 1
@rna_MaskSequence_use_deinterlace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_alpha_mode, ptr @rna_MaskSequence_mask, i32 -1, ptr @.str.256, i32 3, ptr @.str.257, ptr @.str.258, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update_reopen_files, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_use_deinterlace_get, ptr @MaskSequence_use_deinterlace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.352 = private unnamed_addr constant [29 x i8] c"Mask that this sequence uses\00", align 1
@rna_MaskSequence_mask = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_use_deinterlace, ptr null, i32 -1, ptr @.str.223, i32 8388673, ptr @.str.10, ptr @.str.352, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_mask_get, ptr @MaskSequence_mask_set, ptr null, ptr null, ptr @RNA_Mask }, align 8
@rna_MaskSequence_alpha_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_use_flip_x, ptr @rna_MaskSequence_use_deinterlace, i32 -1, ptr @.str.259, i32 3, ptr @.str.260, ptr @.str.261, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_alpha_mode_get, ptr @MaskSequence_alpha_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaskSequence_alpha_mode_items, i32 2, i32 0 }, align 8
@rna_MaskSequence_use_flip_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_use_flip_y, ptr @rna_MaskSequence_alpha_mode, i32 -1, ptr @.str.262, i32 3, ptr @.str.263, ptr @.str.264, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_use_flip_x_get, ptr @MaskSequence_use_flip_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MaskSequence_alpha_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.597, i32 0, ptr @.str.598, ptr @.str.599 }, %struct.EnumPropertyItem { i32 1, ptr @.str.600, i32 0, ptr @.str.601, ptr @.str.602 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaskSequence_use_flip_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_use_float, ptr @rna_MaskSequence_use_flip_x, i32 -1, ptr @.str.265, i32 3, ptr @.str.266, ptr @.str.267, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_use_flip_y_get, ptr @MaskSequence_use_flip_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MaskSequence_use_float = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_use_reverse_frames, ptr @rna_MaskSequence_use_flip_y, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_use_float_get, ptr @MaskSequence_use_float_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MaskSequence_use_reverse_frames = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_color_multiply, ptr @rna_MaskSequence_use_float, i32 -1, ptr @.str.271, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_use_reverse_frames_get, ptr @MaskSequence_use_reverse_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MaskSequence_color_multiply = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_color_saturation, ptr @rna_MaskSequence_use_reverse_frames, i32 -1, ptr @.str.274, i32 8195, ptr @.str.275, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @MaskSequence_color_multiply_get, ptr @MaskSequence_color_multiply_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_MaskSequence_color_saturation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_strobe, ptr @rna_MaskSequence_color_multiply, i32 -1, ptr @.str.276, i32 8195, ptr @.str.277, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @MaskSequence_color_saturation_get, ptr @MaskSequence_color_saturation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+01, float 3.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_MaskSequence_strobe = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_use_translation, ptr @rna_MaskSequence_color_saturation, i32 -1, ptr @.str.278, i32 8195, ptr @.str.279, ptr @.str.280, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @MaskSequence_strobe_get, ptr @MaskSequence_strobe_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 3.000000e+01, float 1.000000e+00, float 3.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_MaskSequence_use_translation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_transform, ptr @rna_MaskSequence_strobe, i32 -1, ptr @.str.281, i32 3, ptr @.str.282, ptr @.str.283, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_use_translation_get, ptr @MaskSequence_use_translation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MaskSequence_transform = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_use_crop, ptr @rna_MaskSequence_use_translation, i32 -1, ptr @.str.284, i32 8388608, ptr @.str.285, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_transform_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceTransform }, align 8
@rna_MaskSequence_use_crop = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_crop, ptr @rna_MaskSequence_transform, i32 -1, ptr @.str.286, i32 3, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_use_crop_get, ptr @MaskSequence_use_crop_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MaskSequence_crop = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_animation_offset_start, ptr @rna_MaskSequence_use_crop, i32 -1, ptr @.str.289, i32 8388608, ptr @.str.290, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_crop_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceCrop }, align 8
@rna_MaskSequence_animation_offset_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskSequence_animation_offset_end, ptr @rna_MaskSequence_crop, i32 -1, ptr @.str.302, i32 1, ptr @.str.303, ptr @.str.304, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_animation_offset_start_get, ptr @MaskSequence_animation_offset_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_MaskSequence_animation_offset_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaskSequence_animation_offset_start, i32 -1, ptr @.str.305, i32 1, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskSequence_animation_offset_end_get, ptr @MaskSequence_animation_offset_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@RNA_SoundSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_EffectSequence, ptr @RNA_MaskSequence, ptr null, %struct.ListBase { ptr @rna_SoundSequence_sound, ptr @rna_SoundSequence_animation_offset_end } }, ptr @.str.371, ptr null, ptr null, i32 4, ptr @.str.372, ptr @.str.373, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_Sequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.353 = private unnamed_addr constant [13 x i8] c"MaskSequence\00", align 1
@.str.354 = private unnamed_addr constant [14 x i8] c"Mask Sequence\00", align 1
@.str.355 = private unnamed_addr constant [43 x i8] c"Sequence strip to load a video from a mask\00", align 1
@rna_SoundSequence_volume = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundSequence_pitch, ptr @rna_SoundSequence_sound, i32 -1, ptr @.str.359, i32 3, ptr @.str.360, ptr @.str.361, i32 0, ptr @.str.357, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoundSequence_volume_get, ptr @SoundSequence_volume_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.356 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@.str.357 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@.str.358 = private unnamed_addr constant [38 x i8] c"Sound datablock used by this sequence\00", align 1
@rna_SoundSequence_sound = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundSequence_volume, ptr null, i32 -1, ptr @.str.356, i32 8388672, ptr @.str.357, ptr @.str.358, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoundSequence_sound_get, ptr null, ptr null, ptr null, ptr @RNA_Sound }, align 8
@rna_SoundSequence_pitch = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundSequence_pan, ptr @rna_SoundSequence_volume, i32 -1, ptr @.str.362, i32 3, ptr @.str.363, ptr @.str.364, i32 0, ptr @.str.357, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoundSequence_pitch_get, ptr @SoundSequence_pitch_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 1.000000e+01, float 0x3FB99999A0000000, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.359 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.361 = private unnamed_addr constant [29 x i8] c"Playback volume of the sound\00", align 1
@rna_SoundSequence_pan = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundSequence_filepath, ptr @rna_SoundSequence_pitch, i32 -1, ptr @.str.365, i32 3, ptr @.str.366, ptr @.str.367, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoundSequence_pan_get, ptr @SoundSequence_pan_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -2.000000e+00, float 2.000000e+00, float -2.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.362 = private unnamed_addr constant [6 x i8] c"pitch\00", align 1
@.str.363 = private unnamed_addr constant [6 x i8] c"Pitch\00", align 1
@.str.364 = private unnamed_addr constant [28 x i8] c"Playback pitch of the sound\00", align 1
@rna_SoundSequence_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundSequence_show_waveform, ptr @rna_SoundSequence_pan, i32 -1, ptr @.str.52, i32 262145, ptr @.str.232, ptr @.str.2, i32 0, ptr @.str.16, i32 3, i32 1, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_filepath_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoundSequence_filepath_get, ptr @SoundSequence_filepath_length, ptr @SoundSequence_filepath_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@.str.365 = private unnamed_addr constant [4 x i8] c"pan\00", align 1
@.str.366 = private unnamed_addr constant [4 x i8] c"Pan\00", align 1
@.str.367 = private unnamed_addr constant [54 x i8] c"Playback panning of the sound (only for Mono sources)\00", align 1
@rna_SoundSequence_show_waveform = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundSequence_animation_offset_start, ptr @rna_SoundSequence_filepath, i32 -1, ptr @.str.368, i32 3, ptr @.str.369, ptr @.str.370, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoundSequence_show_waveform_get, ptr @SoundSequence_show_waveform_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SoundSequence_animation_offset_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SoundSequence_animation_offset_end, ptr @rna_SoundSequence_show_waveform, i32 -1, ptr @.str.302, i32 1, ptr @.str.303, ptr @.str.304, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoundSequence_animation_offset_start_get, ptr @SoundSequence_animation_offset_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.368 = private unnamed_addr constant [14 x i8] c"show_waveform\00", align 1
@.str.369 = private unnamed_addr constant [14 x i8] c"Draw Waveform\00", align 1
@.str.370 = private unnamed_addr constant [37 x i8] c"Whether to draw the sound's waveform\00", align 1
@rna_SoundSequence_animation_offset_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SoundSequence_animation_offset_start, i32 -1, ptr @.str.305, i32 1, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoundSequence_animation_offset_end_get, ptr @SoundSequence_animation_offset_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@RNA_EffectSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_AddSequence, ptr @RNA_SoundSequence, ptr null, %struct.ListBase { ptr @rna_EffectSequence_use_deinterlace, ptr @rna_EffectSequence_use_proxy_custom_file } }, ptr @.str.374, ptr null, ptr null, i32 4, ptr @.str.375, ptr @.str.376, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_Sequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.371 = private unnamed_addr constant [14 x i8] c"SoundSequence\00", align 1
@.str.372 = private unnamed_addr constant [15 x i8] c"Sound Sequence\00", align 1
@.str.373 = private unnamed_addr constant [67 x i8] c"Sequence strip defining a sound to be played over a period of time\00", align 1
@rna_EffectSequence_alpha_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_use_flip_x, ptr @rna_EffectSequence_use_deinterlace, i32 -1, ptr @.str.259, i32 3, ptr @.str.260, ptr @.str.261, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_alpha_mode_get, ptr @EffectSequence_alpha_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_EffectSequence_alpha_mode_items, i32 2, i32 0 }, align 8
@rna_EffectSequence_use_deinterlace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_alpha_mode, ptr null, i32 -1, ptr @.str.256, i32 3, ptr @.str.257, ptr @.str.258, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update_reopen_files, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_use_deinterlace_get, ptr @EffectSequence_use_deinterlace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EffectSequence_use_flip_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_use_flip_y, ptr @rna_EffectSequence_alpha_mode, i32 -1, ptr @.str.262, i32 3, ptr @.str.263, ptr @.str.264, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_use_flip_x_get, ptr @EffectSequence_use_flip_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EffectSequence_alpha_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.597, i32 0, ptr @.str.598, ptr @.str.599 }, %struct.EnumPropertyItem { i32 1, ptr @.str.600, i32 0, ptr @.str.601, ptr @.str.602 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_EffectSequence_use_flip_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_use_float, ptr @rna_EffectSequence_use_flip_x, i32 -1, ptr @.str.265, i32 3, ptr @.str.266, ptr @.str.267, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_use_flip_y_get, ptr @EffectSequence_use_flip_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EffectSequence_use_float = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_use_reverse_frames, ptr @rna_EffectSequence_use_flip_y, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_use_float_get, ptr @EffectSequence_use_float_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EffectSequence_use_reverse_frames = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_color_multiply, ptr @rna_EffectSequence_use_float, i32 -1, ptr @.str.271, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_use_reverse_frames_get, ptr @EffectSequence_use_reverse_frames_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EffectSequence_color_multiply = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_color_saturation, ptr @rna_EffectSequence_use_reverse_frames, i32 -1, ptr @.str.274, i32 8195, ptr @.str.275, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @EffectSequence_color_multiply_get, ptr @EffectSequence_color_multiply_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_EffectSequence_color_saturation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_strobe, ptr @rna_EffectSequence_color_multiply, i32 -1, ptr @.str.276, i32 8195, ptr @.str.277, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @EffectSequence_color_saturation_get, ptr @EffectSequence_color_saturation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+01, float 3.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@rna_EffectSequence_strobe = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_use_translation, ptr @rna_EffectSequence_color_saturation, i32 -1, ptr @.str.278, i32 8195, ptr @.str.279, ptr @.str.280, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @EffectSequence_strobe_get, ptr @EffectSequence_strobe_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 3.000000e+01, float 1.000000e+00, float 3.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_EffectSequence_use_translation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_transform, ptr @rna_EffectSequence_strobe, i32 -1, ptr @.str.281, i32 3, ptr @.str.282, ptr @.str.283, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_use_translation_get, ptr @EffectSequence_use_translation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EffectSequence_transform = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_use_crop, ptr @rna_EffectSequence_use_translation, i32 -1, ptr @.str.284, i32 8388608, ptr @.str.285, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_transform_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceTransform }, align 8
@rna_EffectSequence_use_crop = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_crop, ptr @rna_EffectSequence_transform, i32 -1, ptr @.str.286, i32 3, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_use_crop_get, ptr @EffectSequence_use_crop_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EffectSequence_crop = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_use_proxy, ptr @rna_EffectSequence_use_crop, i32 -1, ptr @.str.289, i32 8388608, ptr @.str.290, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_crop_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceCrop }, align 8
@rna_EffectSequence_use_proxy = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_proxy, ptr @rna_EffectSequence_crop, i32 -1, ptr @.str.291, i32 3, ptr @.str.292, ptr @.str.293, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_use_proxy_get, ptr @EffectSequence_use_proxy_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EffectSequence_proxy = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_use_proxy_custom_directory, ptr @rna_EffectSequence_use_proxy, i32 -1, ptr @.str.294, i32 8388608, ptr @.str.295, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_proxy_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceProxy }, align 8
@rna_EffectSequence_use_proxy_custom_directory = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EffectSequence_use_proxy_custom_file, ptr @rna_EffectSequence_proxy, i32 -1, ptr @.str.296, i32 3, ptr @.str.297, ptr @.str.298, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_use_proxy_custom_directory_get, ptr @EffectSequence_use_proxy_custom_directory_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EffectSequence_use_proxy_custom_file = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_EffectSequence_use_proxy_custom_directory, i32 -1, ptr @.str.299, i32 3, ptr @.str.300, ptr @.str.301, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EffectSequence_use_proxy_custom_file_get, ptr @EffectSequence_use_proxy_custom_file_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@RNA_AddSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_AdjustmentSequence, ptr @RNA_EffectSequence, ptr null, %struct.ListBase { ptr @rna_AddSequence_input_count, ptr @rna_AddSequence_input_2 } }, ptr @.str.384, ptr null, ptr null, i32 4, ptr @.str.385, ptr @.str.385, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.374 = private unnamed_addr constant [15 x i8] c"EffectSequence\00", align 1
@.str.375 = private unnamed_addr constant [16 x i8] c"Effect Sequence\00", align 1
@.str.376 = private unnamed_addr constant [72 x i8] c"Sequence strip applying an effect on the images created by other strips\00", align 1
@rna_AddSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_AddSequence_input_2, ptr @rna_AddSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AddSequence_input_1_get, ptr @AddSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@.str.377 = private unnamed_addr constant [12 x i8] c"input_count\00", align 1
@rna_AddSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_AddSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AddSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_AddSequence_input_2 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_AddSequence_input_1, i32 -1, ptr @.str.381, i32 8650753, ptr @.str.382, ptr @.str.383, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AddSequence_input_2_get, ptr @AddSequence_input_2_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@.str.378 = private unnamed_addr constant [8 x i8] c"input_1\00", align 1
@.str.379 = private unnamed_addr constant [8 x i8] c"Input 1\00", align 1
@.str.380 = private unnamed_addr constant [33 x i8] c"First input for the effect strip\00", align 1
@.str.381 = private unnamed_addr constant [8 x i8] c"input_2\00", align 1
@.str.382 = private unnamed_addr constant [8 x i8] c"Input 2\00", align 1
@.str.383 = private unnamed_addr constant [34 x i8] c"Second input for the effect strip\00", align 1
@RNA_AdjustmentSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_AlphaOverSequence, ptr @RNA_AddSequence, ptr null, %struct.ListBase { ptr @rna_AdjustmentSequence_input_count, ptr @rna_AdjustmentSequence_animation_offset_end } }, ptr @.str.386, ptr null, ptr null, i32 4, ptr @.str.387, ptr @.str.388, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.384 = private unnamed_addr constant [12 x i8] c"AddSequence\00", align 1
@.str.385 = private unnamed_addr constant [13 x i8] c"Add Sequence\00", align 1
@rna_AdjustmentSequence_animation_offset_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_AdjustmentSequence_animation_offset_end, ptr @rna_AdjustmentSequence_input_count, i32 -1, ptr @.str.302, i32 1, ptr @.str.303, ptr @.str.304, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AdjustmentSequence_animation_offset_start_get, ptr @AdjustmentSequence_animation_offset_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_AdjustmentSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_AdjustmentSequence_animation_offset_start, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AdjustmentSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_AdjustmentSequence_animation_offset_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_AdjustmentSequence_animation_offset_start, i32 -1, ptr @.str.305, i32 1, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AdjustmentSequence_animation_offset_end_get, ptr @AdjustmentSequence_animation_offset_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@RNA_AlphaOverSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_AlphaUnderSequence, ptr @RNA_AdjustmentSequence, ptr null, %struct.ListBase { ptr @rna_AlphaOverSequence_input_count, ptr @rna_AlphaOverSequence_input_2 } }, ptr @.str.389, ptr null, ptr null, i32 4, ptr @.str.390, ptr @.str.390, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.386 = private unnamed_addr constant [19 x i8] c"AdjustmentSequence\00", align 1
@.str.387 = private unnamed_addr constant [26 x i8] c"Adjustment Layer Sequence\00", align 1
@.str.388 = private unnamed_addr constant [61 x i8] c"Sequence strip to perform filter adjustments to layers below\00", align 1
@rna_AlphaOverSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_AlphaOverSequence_input_2, ptr @rna_AlphaOverSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AlphaOverSequence_input_1_get, ptr @AlphaOverSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_AlphaOverSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_AlphaOverSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AlphaOverSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_AlphaOverSequence_input_2 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_AlphaOverSequence_input_1, i32 -1, ptr @.str.381, i32 8650753, ptr @.str.382, ptr @.str.383, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AlphaOverSequence_input_2_get, ptr @AlphaOverSequence_input_2_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@RNA_AlphaUnderSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ColorSequence, ptr @RNA_AlphaOverSequence, ptr null, %struct.ListBase { ptr @rna_AlphaUnderSequence_input_count, ptr @rna_AlphaUnderSequence_input_2 } }, ptr @.str.391, ptr null, ptr null, i32 4, ptr @.str.392, ptr @.str.392, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.389 = private unnamed_addr constant [18 x i8] c"AlphaOverSequence\00", align 1
@.str.390 = private unnamed_addr constant [20 x i8] c"Alpha Over Sequence\00", align 1
@rna_AlphaUnderSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_AlphaUnderSequence_input_2, ptr @rna_AlphaUnderSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AlphaUnderSequence_input_1_get, ptr @AlphaUnderSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_AlphaUnderSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_AlphaUnderSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AlphaUnderSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_AlphaUnderSequence_input_2 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_AlphaUnderSequence_input_1, i32 -1, ptr @.str.381, i32 8650753, ptr @.str.382, ptr @.str.383, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AlphaUnderSequence_input_2_get, ptr @AlphaUnderSequence_input_2_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@RNA_ColorSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CrossSequence, ptr @RNA_AlphaUnderSequence, ptr null, %struct.ListBase { ptr @rna_ColorSequence_input_count, ptr @rna_ColorSequence_color } }, ptr @.str.395, ptr null, ptr null, i32 4, ptr @.str.396, ptr @.str.397, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.391 = private unnamed_addr constant [19 x i8] c"AlphaUnderSequence\00", align 1
@.str.392 = private unnamed_addr constant [21 x i8] c"Alpha Under Sequence\00", align 1
@rna_ColorSequence_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ColorSequence_input_count, i32 -1, ptr @.str.393, i32 8195, ptr @.str.394, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ColorSequence_color_get, ptr @ColorSequence_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_ColorSequence_color_default }, align 8
@rna_ColorSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorSequence_color, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.393 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.394 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@rna_ColorSequence_color_default = internal global [3 x float] zeroinitializer, align 4
@RNA_CrossSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GammaCrossSequence, ptr @RNA_ColorSequence, ptr null, %struct.ListBase { ptr @rna_CrossSequence_input_count, ptr @rna_CrossSequence_input_2 } }, ptr @.str.398, ptr null, ptr null, i32 4, ptr @.str.399, ptr @.str.399, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.395 = private unnamed_addr constant [14 x i8] c"ColorSequence\00", align 1
@.str.396 = private unnamed_addr constant [15 x i8] c"Color Sequence\00", align 1
@.str.397 = private unnamed_addr constant [60 x i8] c"Sequence strip creating an image filled with a single color\00", align 1
@rna_CrossSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CrossSequence_input_2, ptr @rna_CrossSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CrossSequence_input_1_get, ptr @CrossSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_CrossSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_CrossSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CrossSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_CrossSequence_input_2 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CrossSequence_input_1, i32 -1, ptr @.str.381, i32 8650753, ptr @.str.382, ptr @.str.383, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CrossSequence_input_2_get, ptr @CrossSequence_input_2_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@RNA_GammaCrossSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GlowSequence, ptr @RNA_CrossSequence, ptr null, %struct.ListBase { ptr @rna_GammaCrossSequence_input_count, ptr @rna_GammaCrossSequence_input_2 } }, ptr @.str.400, ptr null, ptr null, i32 4, ptr @.str.401, ptr @.str.401, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.398 = private unnamed_addr constant [14 x i8] c"CrossSequence\00", align 1
@.str.399 = private unnamed_addr constant [15 x i8] c"Cross Sequence\00", align 1
@rna_GammaCrossSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GammaCrossSequence_input_2, ptr @rna_GammaCrossSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GammaCrossSequence_input_1_get, ptr @GammaCrossSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_GammaCrossSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_GammaCrossSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GammaCrossSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_GammaCrossSequence_input_2 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GammaCrossSequence_input_1, i32 -1, ptr @.str.381, i32 8650753, ptr @.str.382, ptr @.str.383, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GammaCrossSequence_input_2_get, ptr @GammaCrossSequence_input_2_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@RNA_GlowSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MulticamSequence, ptr @RNA_GammaCrossSequence, ptr null, %struct.ListBase { ptr @rna_GlowSequence_input_count, ptr @rna_GlowSequence_use_only_boost } }, ptr @.str.418, ptr null, ptr null, i32 4, ptr @.str.419, ptr @.str.420, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.400 = private unnamed_addr constant [19 x i8] c"GammaCrossSequence\00", align 1
@.str.401 = private unnamed_addr constant [21 x i8] c"Gamma Cross Sequence\00", align 1
@rna_GlowSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GlowSequence_threshold, ptr @rna_GlowSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GlowSequence_input_1_get, ptr @GlowSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_GlowSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_GlowSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GlowSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_GlowSequence_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GlowSequence_clamp, ptr @rna_GlowSequence_input_1, i32 -1, ptr @.str.402, i32 8195, ptr @.str.403, ptr @.str.404, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @GlowSequence_threshold_get, ptr @GlowSequence_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_GlowSequence_clamp = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GlowSequence_boost_factor, ptr @rna_GlowSequence_threshold, i32 -1, ptr @.str.405, i32 8195, ptr @.str.406, ptr @.str.407, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @GlowSequence_clamp_get, ptr @GlowSequence_clamp_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.402 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.403 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.404 = private unnamed_addr constant [36 x i8] c"Minimum intensity to trigger a glow\00", align 1
@rna_GlowSequence_boost_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GlowSequence_blur_radius, ptr @rna_GlowSequence_clamp, i32 -1, ptr @.str.408, i32 8195, ptr @.str.409, ptr @.str.410, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @GlowSequence_boost_factor_get, ptr @GlowSequence_boost_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.405 = private unnamed_addr constant [6 x i8] c"clamp\00", align 1
@.str.406 = private unnamed_addr constant [6 x i8] c"Clamp\00", align 1
@.str.407 = private unnamed_addr constant [30 x i8] c"Brightness limit of intensity\00", align 1
@rna_GlowSequence_blur_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GlowSequence_quality, ptr @rna_GlowSequence_boost_factor, i32 -1, ptr @.str.411, i32 8195, ptr @.str.412, ptr @.str.413, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @GlowSequence_blur_radius_get, ptr @GlowSequence_blur_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 5.000000e-01, float 2.000000e+01, float 5.000000e-01, float 2.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.408 = private unnamed_addr constant [13 x i8] c"boost_factor\00", align 1
@.str.409 = private unnamed_addr constant [13 x i8] c"Boost Factor\00", align 1
@.str.410 = private unnamed_addr constant [22 x i8] c"Brightness multiplier\00", align 1
@rna_GlowSequence_quality = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_GlowSequence_use_only_boost, ptr @rna_GlowSequence_blur_radius, i32 -1, ptr @.str.76, i32 8195, ptr @.str.77, ptr @.str.414, i32 0, ptr @.str.16, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 16, i32 0, ptr null, ptr null }, ptr @GlowSequence_quality_get, ptr @GlowSequence_quality_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 5, i32 1, i32 5, i32 1, i32 0, ptr null }, align 8
@.str.411 = private unnamed_addr constant [12 x i8] c"blur_radius\00", align 1
@.str.412 = private unnamed_addr constant [14 x i8] c"Blur Distance\00", align 1
@.str.413 = private unnamed_addr constant [22 x i8] c"Radius of glow effect\00", align 1
@rna_GlowSequence_use_only_boost = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GlowSequence_quality, i32 -1, ptr @.str.415, i32 8195, ptr @.str.416, ptr @.str.417, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 20, i32 0, ptr null, ptr null }, ptr @GlowSequence_use_only_boost_get, ptr @GlowSequence_use_only_boost_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.414 = private unnamed_addr constant [28 x i8] c"Accuracy of the blur effect\00", align 1
@.str.415 = private unnamed_addr constant [15 x i8] c"use_only_boost\00", align 1
@.str.416 = private unnamed_addr constant [11 x i8] c"Only Boost\00", align 1
@.str.417 = private unnamed_addr constant [26 x i8] c"Show the glow buffer only\00", align 1
@RNA_MulticamSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MultiplySequence, ptr @RNA_GlowSequence, ptr null, %struct.ListBase { ptr @rna_MulticamSequence_input_count, ptr @rna_MulticamSequence_animation_offset_end } }, ptr @.str.423, ptr null, ptr null, i32 4, ptr @.str.424, ptr @.str.425, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.418 = private unnamed_addr constant [13 x i8] c"GlowSequence\00", align 1
@.str.419 = private unnamed_addr constant [14 x i8] c"Glow Sequence\00", align 1
@.str.420 = private unnamed_addr constant [38 x i8] c"Sequence strip creating a glow effect\00", align 1
@rna_MulticamSequence_multicam_source = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MulticamSequence_animation_offset_start, ptr @rna_MulticamSequence_input_count, i32 -1, ptr @.str.421, i32 8195, ptr @.str.422, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 160, i32 0, ptr null, ptr null }, ptr @MulticamSequence_multicam_source_get, ptr @MulticamSequence_multicam_source_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 31, i32 0, i32 31, i32 1, i32 0, ptr null }, align 8
@rna_MulticamSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MulticamSequence_multicam_source, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MulticamSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_MulticamSequence_animation_offset_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MulticamSequence_animation_offset_end, ptr @rna_MulticamSequence_multicam_source, i32 -1, ptr @.str.302, i32 1, ptr @.str.303, ptr @.str.304, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MulticamSequence_animation_offset_start_get, ptr @MulticamSequence_animation_offset_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.421 = private unnamed_addr constant [16 x i8] c"multicam_source\00", align 1
@.str.422 = private unnamed_addr constant [24 x i8] c"Multicam Source Channel\00", align 1
@rna_MulticamSequence_animation_offset_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MulticamSequence_animation_offset_start, i32 -1, ptr @.str.305, i32 1, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MulticamSequence_animation_offset_end_get, ptr @MulticamSequence_animation_offset_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@RNA_MultiplySequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_OverDropSequence, ptr @RNA_MulticamSequence, ptr null, %struct.ListBase { ptr @rna_MultiplySequence_input_count, ptr @rna_MultiplySequence_input_2 } }, ptr @.str.426, ptr null, ptr null, i32 4, ptr @.str.427, ptr @.str.427, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.423 = private unnamed_addr constant [17 x i8] c"MulticamSequence\00", align 1
@.str.424 = private unnamed_addr constant [25 x i8] c"Multicam Select Sequence\00", align 1
@.str.425 = private unnamed_addr constant [43 x i8] c"Sequence strip to perform multicam editing\00", align 1
@rna_MultiplySequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MultiplySequence_input_2, ptr @rna_MultiplySequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MultiplySequence_input_1_get, ptr @MultiplySequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_MultiplySequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MultiplySequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MultiplySequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_MultiplySequence_input_2 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MultiplySequence_input_1, i32 -1, ptr @.str.381, i32 8650753, ptr @.str.382, ptr @.str.383, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MultiplySequence_input_2_get, ptr @MultiplySequence_input_2_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@RNA_OverDropSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SpeedControlSequence, ptr @RNA_MultiplySequence, ptr null, %struct.ListBase { ptr @rna_OverDropSequence_input_count, ptr @rna_OverDropSequence_input_2 } }, ptr @.str.428, ptr null, ptr null, i32 4, ptr @.str.429, ptr @.str.429, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.426 = private unnamed_addr constant [17 x i8] c"MultiplySequence\00", align 1
@.str.427 = private unnamed_addr constant [18 x i8] c"Multiply Sequence\00", align 1
@rna_OverDropSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_OverDropSequence_input_2, ptr @rna_OverDropSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OverDropSequence_input_1_get, ptr @OverDropSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_OverDropSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_OverDropSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OverDropSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_OverDropSequence_input_2 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_OverDropSequence_input_1, i32 -1, ptr @.str.381, i32 8650753, ptr @.str.382, ptr @.str.383, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OverDropSequence_input_2_get, ptr @OverDropSequence_input_2_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@RNA_SpeedControlSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SubtractSequence, ptr @RNA_OverDropSequence, ptr null, %struct.ListBase { ptr @rna_SpeedControlSequence_input_count, ptr @rna_SpeedControlSequence_scale_to_length } }, ptr @.str.439, ptr null, ptr null, i32 4, ptr @.str.440, ptr @.str.441, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.428 = private unnamed_addr constant [17 x i8] c"OverDropSequence\00", align 1
@.str.429 = private unnamed_addr constant [19 x i8] c"Over Drop Sequence\00", align 1
@rna_SpeedControlSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SpeedControlSequence_multiply_speed, ptr @rna_SpeedControlSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpeedControlSequence_input_1_get, ptr @SpeedControlSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_SpeedControlSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SpeedControlSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpeedControlSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_SpeedControlSequence_multiply_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SpeedControlSequence_use_as_speed, ptr @rna_SpeedControlSequence_input_1, i32 -1, ptr @.str.430, i32 8193, ptr @.str.431, ptr @.str.432, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @SpeedControlSequence_multiply_speed_get, ptr @SpeedControlSequence_multiply_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@rna_SpeedControlSequence_use_as_speed = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SpeedControlSequence_scale_to_length, ptr @rna_SpeedControlSequence_multiply_speed, i32 -1, ptr @.str.433, i32 3, ptr @.str.434, ptr @.str.435, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpeedControlSequence_use_as_speed_get, ptr @SpeedControlSequence_use_as_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.430 = private unnamed_addr constant [15 x i8] c"multiply_speed\00", align 1
@.str.431 = private unnamed_addr constant [15 x i8] c"Multiply Speed\00", align 1
@.str.432 = private unnamed_addr constant [52 x i8] c"Multiply the resulting speed after the speed factor\00", align 1
@rna_SpeedControlSequence_scale_to_length = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SpeedControlSequence_use_as_speed, i32 -1, ptr @.str.436, i32 3, ptr @.str.437, ptr @.str.438, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SpeedControlSequence_scale_to_length_get, ptr @SpeedControlSequence_scale_to_length_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.433 = private unnamed_addr constant [13 x i8] c"use_as_speed\00", align 1
@.str.434 = private unnamed_addr constant [13 x i8] c"Use as speed\00", align 1
@.str.435 = private unnamed_addr constant [55 x i8] c"Interpret the value as speed instead of a frame number\00", align 1
@.str.436 = private unnamed_addr constant [16 x i8] c"scale_to_length\00", align 1
@.str.437 = private unnamed_addr constant [16 x i8] c"Scale to length\00", align 1
@.str.438 = private unnamed_addr constant [55 x i8] c"Scale values from 0.0 to 1.0 to target sequence length\00", align 1
@RNA_SubtractSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_TransformSequence, ptr @RNA_SpeedControlSequence, ptr null, %struct.ListBase { ptr @rna_SubtractSequence_input_count, ptr @rna_SubtractSequence_input_2 } }, ptr @.str.442, ptr null, ptr null, i32 4, ptr @.str.443, ptr @.str.443, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.439 = private unnamed_addr constant [21 x i8] c"SpeedControlSequence\00", align 1
@.str.440 = private unnamed_addr constant [22 x i8] c"SpeedControl Sequence\00", align 1
@.str.441 = private unnamed_addr constant [52 x i8] c"Sequence strip to control the speed of other strips\00", align 1
@rna_SubtractSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SubtractSequence_input_2, ptr @rna_SubtractSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SubtractSequence_input_1_get, ptr @SubtractSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_SubtractSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SubtractSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SubtractSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_SubtractSequence_input_2 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SubtractSequence_input_1, i32 -1, ptr @.str.381, i32 8650753, ptr @.str.382, ptr @.str.383, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SubtractSequence_input_2_get, ptr @SubtractSequence_input_2_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@RNA_TransformSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_WipeSequence, ptr @RNA_SubtractSequence, ptr null, %struct.ListBase { ptr @rna_TransformSequence_input_count, ptr @rna_TransformSequence_interpolation } }, ptr @.str.461, ptr null, ptr null, i32 4, ptr @.str.462, ptr @.str.463, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.442 = private unnamed_addr constant [17 x i8] c"SubtractSequence\00", align 1
@.str.443 = private unnamed_addr constant [18 x i8] c"Subtract Sequence\00", align 1
@rna_TransformSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformSequence_scale_start_x, ptr @rna_TransformSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformSequence_input_1_get, ptr @TransformSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_TransformSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_TransformSequence_scale_start_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformSequence_scale_start_y, ptr @rna_TransformSequence_input_1, i32 -1, ptr @.str.444, i32 8195, ptr @.str.445, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @TransformSequence_scale_start_x_get, ptr @TransformSequence_scale_start_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 0x47EFFFFFE0000000, float 3.000000e+00, i32 6, float 0.000000e+00, ptr null }, align 8
@rna_TransformSequence_scale_start_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformSequence_use_uniform_scale, ptr @rna_TransformSequence_scale_start_x, i32 -1, ptr @.str.446, i32 8195, ptr @.str.447, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @TransformSequence_scale_start_y_get, ptr @TransformSequence_scale_start_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 0x47EFFFFFE0000000, float 3.000000e+00, i32 6, float 0.000000e+00, ptr null }, align 8
@.str.444 = private unnamed_addr constant [14 x i8] c"scale_start_x\00", align 1
@.str.445 = private unnamed_addr constant [8 x i8] c"Scale X\00", align 1
@rna_TransformSequence_use_uniform_scale = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformSequence_translate_start_x, ptr @rna_TransformSequence_scale_start_y, i32 -1, ptr @.str.448, i32 8195, ptr @.str.449, ptr @.str.450, i32 0, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 28, i32 0, ptr null, ptr null }, ptr @TransformSequence_use_uniform_scale_get, ptr @TransformSequence_use_uniform_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.446 = private unnamed_addr constant [14 x i8] c"scale_start_y\00", align 1
@.str.447 = private unnamed_addr constant [8 x i8] c"Scale Y\00", align 1
@rna_TransformSequence_translate_start_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformSequence_translate_start_y, ptr @rna_TransformSequence_use_uniform_scale, i32 -1, ptr @.str.451, i32 8195, ptr @.str.452, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @TransformSequence_translate_start_x_get, ptr @TransformSequence_translate_start_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -4.000000e+03, float 4.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 3.000000e+00, i32 6, float 0.000000e+00, ptr null }, align 8
@.str.448 = private unnamed_addr constant [18 x i8] c"use_uniform_scale\00", align 1
@.str.449 = private unnamed_addr constant [14 x i8] c"Uniform Scale\00", align 1
@.str.450 = private unnamed_addr constant [41 x i8] c"Scale uniformly, preserving aspect ratio\00", align 1
@rna_TransformSequence_translate_start_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformSequence_rotation_start, ptr @rna_TransformSequence_translate_start_x, i32 -1, ptr @.str.453, i32 8195, ptr @.str.454, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @TransformSequence_translate_start_y_get, ptr @TransformSequence_translate_start_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -4.000000e+03, float 4.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 3.000000e+00, i32 6, float 0.000000e+00, ptr null }, align 8
@.str.451 = private unnamed_addr constant [18 x i8] c"translate_start_x\00", align 1
@.str.452 = private unnamed_addr constant [12 x i8] c"Translate X\00", align 1
@rna_TransformSequence_rotation_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformSequence_translation_unit, ptr @rna_TransformSequence_translate_start_y, i32 -1, ptr @.str.455, i32 8195, ptr @.str.456, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @TransformSequence_rotation_start_get, ptr @TransformSequence_rotation_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -3.600000e+02, float 3.600000e+02, float -3.600000e+02, float 3.600000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.453 = private unnamed_addr constant [18 x i8] c"translate_start_y\00", align 1
@.str.454 = private unnamed_addr constant [12 x i8] c"Translate Y\00", align 1
@rna_TransformSequence_translation_unit = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformSequence_interpolation, ptr @rna_TransformSequence_rotation_start, i32 -1, ptr @.str.457, i32 1, ptr @.str.458, ptr @.str.2, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformSequence_translation_unit_get, ptr @TransformSequence_translation_unit_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TransformSequence_translation_unit_items, i32 2, i32 0 }, align 8
@.str.455 = private unnamed_addr constant [15 x i8] c"rotation_start\00", align 1
@.str.456 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@rna_TransformSequence_interpolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_TransformSequence_translation_unit, i32 -1, ptr @.str.459, i32 1, ptr @.str.460, ptr @.str.2, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformSequence_interpolation_get, ptr @TransformSequence_interpolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TransformSequence_interpolation_items, i32 3, i32 0 }, align 8
@.str.457 = private unnamed_addr constant [17 x i8] c"translation_unit\00", align 1
@.str.458 = private unnamed_addr constant [17 x i8] c"Translation Unit\00", align 1
@rna_TransformSequence_translation_unit_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.603, i32 0, ptr @.str.604, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.605, i32 0, ptr @.str.606, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.459 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.460 = private unnamed_addr constant [14 x i8] c"Interpolation\00", align 1
@rna_TransformSequence_interpolation_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.539, i32 0, ptr @.str.607, ptr @.str.608 }, %struct.EnumPropertyItem { i32 1, ptr @.str.609, i32 0, ptr @.str.610, ptr @.str.611 }, %struct.EnumPropertyItem { i32 2, ptr @.str.612, i32 0, ptr @.str.613, ptr @.str.614 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_WipeSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GaussianBlurSequence, ptr @RNA_TransformSequence, ptr null, %struct.ListBase { ptr @rna_WipeSequence_input_count, ptr @rna_WipeSequence_transition_type } }, ptr @.str.475, ptr null, ptr null, i32 4, ptr @.str.476, ptr @.str.477, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.461 = private unnamed_addr constant [18 x i8] c"TransformSequence\00", align 1
@.str.462 = private unnamed_addr constant [19 x i8] c"Transform Sequence\00", align 1
@.str.463 = private unnamed_addr constant [63 x i8] c"Sequence strip applying affine transformations to other strips\00", align 1
@rna_WipeSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WipeSequence_blur_width, ptr @rna_WipeSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WipeSequence_input_1_get, ptr @WipeSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_WipeSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_WipeSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WipeSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_WipeSequence_blur_width = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WipeSequence_angle, ptr @rna_WipeSequence_input_1, i32 -1, ptr @.str.464, i32 8195, ptr @.str.465, ptr @.str.466, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @WipeSequence_blur_width_get, ptr @WipeSequence_blur_width_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_WipeSequence_angle = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WipeSequence_direction, ptr @rna_WipeSequence_blur_width, i32 -1, ptr @.str.467, i32 8195, ptr @.str.468, ptr @.str.469, i32 0, ptr @.str.16, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @WipeSequence_angle_get, ptr @WipeSequence_angle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xBFF921FB60000000, float 0x3FF921FB60000000, float 0xBFF921FB60000000, float 0x3FF921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.464 = private unnamed_addr constant [11 x i8] c"blur_width\00", align 1
@.str.465 = private unnamed_addr constant [11 x i8] c"Blur Width\00", align 1
@.str.466 = private unnamed_addr constant [65 x i8] c"Width of the blur edge, in percentage relative to the image size\00", align 1
@rna_WipeSequence_direction = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_WipeSequence_transition_type, ptr @rna_WipeSequence_angle, i32 -1, ptr @.str.470, i32 3, ptr @.str.471, ptr @.str.472, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WipeSequence_direction_get, ptr @WipeSequence_direction_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_WipeSequence_direction_items, i32 2, i32 0 }, align 8
@.str.467 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.468 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.469 = private unnamed_addr constant [11 x i8] c"Edge angle\00", align 1
@rna_WipeSequence_transition_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WipeSequence_direction, i32 -1, ptr @.str.473, i32 3, ptr @.str.474, ptr @.str.2, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WipeSequence_transition_type_get, ptr @WipeSequence_transition_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_WipeSequence_transition_type_items, i32 4, i32 0 }, align 8
@.str.470 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.471 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.472 = private unnamed_addr constant [15 x i8] c"Wipe direction\00", align 1
@rna_WipeSequence_direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.615, i32 0, ptr @.str.616, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.617, i32 0, ptr @.str.618, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.473 = private unnamed_addr constant [16 x i8] c"transition_type\00", align 1
@.str.474 = private unnamed_addr constant [16 x i8] c"Transition Type\00", align 1
@rna_WipeSequence_transition_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.619, i32 0, ptr @.str.620, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.621, i32 0, ptr @.str.622, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.623, i32 0, ptr @.str.624, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.625, i32 0, ptr @.str.626, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_GaussianBlurSequence = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SequenceModifier, ptr @RNA_WipeSequence, ptr null, %struct.ListBase { ptr @rna_GaussianBlurSequence_input_count, ptr @rna_GaussianBlurSequence_size_y } }, ptr @.str.484, ptr null, ptr null, i32 4, ptr @.str.485, ptr @.str.486, ptr @.str.16, i32 17, ptr @rna_Sequence_name, ptr @rna_Sequence_rna_properties, ptr @RNA_EffectSequence, ptr null, ptr @rna_Sequence_refine, ptr @rna_Sequence_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.475 = private unnamed_addr constant [13 x i8] c"WipeSequence\00", align 1
@.str.476 = private unnamed_addr constant [14 x i8] c"Wipe Sequence\00", align 1
@.str.477 = private unnamed_addr constant [42 x i8] c"Sequence strip creating a wipe transition\00", align 1
@rna_GaussianBlurSequence_input_1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GaussianBlurSequence_size_x, ptr @rna_GaussianBlurSequence_input_count, i32 -1, ptr @.str.378, i32 8650753, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GaussianBlurSequence_input_1_get, ptr @GaussianBlurSequence_input_1_set, ptr null, ptr null, ptr @RNA_Sequence }, align 8
@rna_GaussianBlurSequence_input_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_GaussianBlurSequence_input_1, ptr null, i32 -1, ptr @.str.377, i32 2, ptr @.str.377, ptr @.str.2, i32 0, ptr @.str.16, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GaussianBlurSequence_input_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_GaussianBlurSequence_size_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GaussianBlurSequence_size_y, ptr @rna_GaussianBlurSequence_input_1, i32 -1, ptr @.str.478, i32 8195, ptr @.str.479, ptr @.str.480, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @GaussianBlurSequence_size_x_get, ptr @GaussianBlurSequence_size_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@rna_GaussianBlurSequence_size_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GaussianBlurSequence_size_x, i32 -1, ptr @.str.481, i32 8195, ptr @.str.482, ptr @.str.483, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Sequence_update, i32 67502080, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @GaussianBlurSequence_size_y_get, ptr @GaussianBlurSequence_size_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.478 = private unnamed_addr constant [7 x i8] c"size_x\00", align 1
@.str.479 = private unnamed_addr constant [7 x i8] c"Size X\00", align 1
@.str.480 = private unnamed_addr constant [30 x i8] c"Size of the blur along X axis\00", align 1
@.str.481 = private unnamed_addr constant [7 x i8] c"size_y\00", align 1
@.str.482 = private unnamed_addr constant [7 x i8] c"Size Y\00", align 1
@.str.483 = private unnamed_addr constant [30 x i8] c"Size of the blur along Y axis\00", align 1
@.str.484 = private unnamed_addr constant [21 x i8] c"GaussianBlurSequence\00", align 1
@.str.485 = private unnamed_addr constant [23 x i8] c"Gaussian Blur Sequence\00", align 1
@.str.486 = private unnamed_addr constant [40 x i8] c"Sequence strip creating a gaussian blur\00", align 1
@rna_SequenceModifier_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceModifier_name, ptr @rna_SequenceModifier_rna_properties, i32 -1, ptr @.str.17, i32 8912896, ptr @.str.18, ptr @.str.19, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceModifier_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SequenceModifier_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceModifier_type, ptr @rna_SequenceModifier_rna_type, i32 -1, ptr @.str.105, i32 262145, ptr @.str.106, ptr @.str.2, i32 0, ptr @.str.16, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceModifier_name_get, ptr @SequenceModifier_name_length, ptr @SequenceModifier_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@rna_SequenceModifier_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceModifier_mute, ptr @rna_SequenceModifier_name, i32 -1, ptr @.str.107, i32 2, ptr @.str.108, ptr @.str.2, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceModifier_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_SequenceModifier_type_items, i32 5, i32 1 }, align 8
@rna_SequenceModifier_mute = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceModifier_show_expanded, ptr @rna_SequenceModifier_type, i32 -1, ptr @.str.116, i32 4099, ptr @.str.117, ptr @.str.487, i32 253, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceModifier_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceModifier_mute_get, ptr @SequenceModifier_mute_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SequenceModifier_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SequenceModifier_show_expanded = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceModifier_input_mask_type, ptr @rna_SequenceModifier_mute, i32 -1, ptr @.str.488, i32 4099, ptr @.str.489, ptr @.str.490, i32 4, ptr @.str.16, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceModifier_show_expanded_get, ptr @SequenceModifier_show_expanded_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.487 = private unnamed_addr constant [19 x i8] c"Mute this modifier\00", align 1
@rna_SequenceModifier_input_mask_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceModifier_input_mask_strip, ptr @rna_SequenceModifier_show_expanded, i32 -1, ptr @.str.491, i32 3, ptr @.str.492, ptr @.str.493, i32 0, ptr @.str.16, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceModifier_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceModifier_input_mask_type_get, ptr @SequenceModifier_input_mask_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SequenceModifier_input_mask_type_items, i32 2, i32 0 }, align 8
@.str.488 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.489 = private unnamed_addr constant [9 x i8] c"Expanded\00", align 1
@.str.490 = private unnamed_addr constant [40 x i8] c"Mute expanded settings for the modifier\00", align 1
@rna_SequenceModifier_input_mask_strip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SequenceModifier_input_mask_id, ptr @rna_SequenceModifier_input_mask_type, i32 -1, ptr @.str.494, i32 8388609, ptr @.str.495, ptr @.str.496, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceModifier_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceModifier_input_mask_strip_get, ptr @SequenceModifier_input_mask_strip_set, ptr null, ptr @rna_SequenceModifier_otherSequence_poll, ptr @RNA_Sequence }, align 8
@.str.491 = private unnamed_addr constant [16 x i8] c"input_mask_type\00", align 1
@.str.492 = private unnamed_addr constant [16 x i8] c"Mask Input Type\00", align 1
@.str.493 = private unnamed_addr constant [33 x i8] c"Type of input data used for mask\00", align 1
@rna_SequenceModifier_input_mask_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.627, i32 0, ptr @.str.628, ptr @.str.629 }, %struct.EnumPropertyItem { i32 1, ptr @.str.630, i32 0, ptr @.str.10, ptr @.str.631 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SequenceModifier_input_mask_id = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SequenceModifier_input_mask_strip, i32 -1, ptr @.str.497, i32 8388673, ptr @.str.10, ptr @.str.498, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceModifier_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SequenceModifier_input_mask_id_get, ptr @SequenceModifier_input_mask_id_set, ptr null, ptr null, ptr @RNA_Mask }, align 8
@.str.494 = private unnamed_addr constant [17 x i8] c"input_mask_strip\00", align 1
@.str.495 = private unnamed_addr constant [11 x i8] c"Mask Strip\00", align 1
@.str.496 = private unnamed_addr constant [42 x i8] c"Strip used as mask input for the modifier\00", align 1
@.str.497 = private unnamed_addr constant [14 x i8] c"input_mask_id\00", align 1
@.str.498 = private unnamed_addr constant [44 x i8] c"Mask ID used as mask input for the modifier\00", align 1
@RNA_ColorBalanceModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CurvesModifier, ptr @RNA_SequenceModifier, ptr null, %struct.ListBase { ptr @rna_ColorBalanceModifier_color_balance, ptr @rna_ColorBalanceModifier_color_multiply } }, ptr @.str.502, ptr null, ptr null, i32 4, ptr @.str.502, ptr @.str.503, ptr @.str.16, i32 17, ptr @rna_SequenceModifier_name, ptr @rna_SequenceModifier_rna_properties, ptr @RNA_SequenceModifier, ptr null, ptr @rna_SequenceModifier_refine, ptr @rna_SequenceModifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.499 = private unnamed_addr constant [17 x i8] c"SequenceModifier\00", align 1
@.str.500 = private unnamed_addr constant [28 x i8] c"Modifier for sequence strip\00", align 1
@rna_ColorBalanceModifier_color_multiply = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ColorBalanceModifier_color_balance, i32 -1, ptr @.str.274, i32 8195, ptr @.str.275, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceModifier_update, i32 67502080, ptr null, ptr null, i32 156, i32 4, ptr null, ptr null }, ptr @ColorBalanceModifier_color_multiply_get, ptr @ColorBalanceModifier_color_multiply_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.501 = private unnamed_addr constant [14 x i8] c"color_balance\00", align 1
@rna_ColorBalanceModifier_color_balance = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ColorBalanceModifier_color_multiply, ptr null, i32 -1, ptr @.str.501, i32 8388608, ptr @.str.501, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ColorBalanceModifier_color_balance_get, ptr null, ptr null, ptr null, ptr @RNA_SequenceColorBalanceData }, align 8
@RNA_CurvesModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_HueCorrectModifier, ptr @RNA_ColorBalanceModifier, ptr null, %struct.ListBase { ptr @rna_CurvesModifier_curve_mapping, ptr @rna_CurvesModifier_curve_mapping } }, ptr @.str.506, ptr null, ptr null, i32 4, ptr @.str.506, ptr @.str.507, ptr @.str.16, i32 17, ptr @rna_SequenceModifier_name, ptr @rna_SequenceModifier_rna_properties, ptr @RNA_SequenceModifier, ptr null, ptr @rna_SequenceModifier_refine, ptr @rna_SequenceModifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.502 = private unnamed_addr constant [21 x i8] c"ColorBalanceModifier\00", align 1
@.str.503 = private unnamed_addr constant [42 x i8] c"Color balance modifier for sequence strip\00", align 1
@.str.504 = private unnamed_addr constant [14 x i8] c"curve_mapping\00", align 1
@.str.505 = private unnamed_addr constant [14 x i8] c"Curve Mapping\00", align 1
@rna_CurvesModifier_curve_mapping = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.504, i32 8388608, ptr @.str.505, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceModifier_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurvesModifier_curve_mapping_get, ptr null, ptr null, ptr null, ptr @RNA_CurveMapping }, align 8
@RNA_HueCorrectModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BrightContrastModifier, ptr @RNA_CurvesModifier, ptr null, %struct.ListBase { ptr @rna_HueCorrectModifier_curve_mapping, ptr @rna_HueCorrectModifier_curve_mapping } }, ptr @.str.508, ptr null, ptr null, i32 4, ptr @.str.508, ptr @.str.509, ptr @.str.16, i32 17, ptr @rna_SequenceModifier_name, ptr @rna_SequenceModifier_rna_properties, ptr @RNA_SequenceModifier, ptr null, ptr @rna_SequenceModifier_refine, ptr @rna_SequenceModifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.506 = private unnamed_addr constant [15 x i8] c"CurvesModifier\00", align 1
@.str.507 = private unnamed_addr constant [39 x i8] c"RGB curves modifier for sequence strip\00", align 1
@rna_HueCorrectModifier_curve_mapping = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.504, i32 8388608, ptr @.str.505, ptr @.str.2, i32 0, ptr @.str.16, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceModifier_update, i32 67502080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @HueCorrectModifier_curve_mapping_get, ptr null, ptr null, ptr null, ptr @RNA_CurveMapping }, align 8
@RNA_BrightContrastModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SmokeDomainSettings, ptr @RNA_HueCorrectModifier, ptr null, %struct.ListBase { ptr @rna_BrightContrastModifier_bright, ptr @rna_BrightContrastModifier_contrast } }, ptr @.str.514, ptr null, ptr null, i32 4, ptr @.str.514, ptr @.str.515, ptr @.str.16, i32 17, ptr @rna_SequenceModifier_name, ptr @rna_SequenceModifier_rna_properties, ptr @RNA_SequenceModifier, ptr null, ptr @rna_SequenceModifier_refine, ptr @rna_SequenceModifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.508 = private unnamed_addr constant [19 x i8] c"HueCorrectModifier\00", align 1
@.str.509 = private unnamed_addr constant [43 x i8] c"Hue correction modifier for sequence strip\00", align 1
@rna_BrightContrastModifier_contrast = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BrightContrastModifier_bright, i32 -1, ptr @.str.512, i32 8195, ptr @.str.513, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceModifier_update, i32 67502080, ptr null, ptr null, i32 116, i32 4, ptr null, ptr null }, ptr @BrightContrastModifier_contrast_get, ptr @BrightContrastModifier_contrast_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.510 = private unnamed_addr constant [7 x i8] c"bright\00", align 1
@.str.511 = private unnamed_addr constant [7 x i8] c"Bright\00", align 1
@rna_BrightContrastModifier_bright = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BrightContrastModifier_contrast, ptr null, i32 -1, ptr @.str.510, i32 8195, ptr @.str.511, ptr @.str.2, i32 0, ptr @.str.16, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_SequenceModifier_update, i32 67502080, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @BrightContrastModifier_bright_get, ptr @BrightContrastModifier_bright_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.512 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.513 = private unnamed_addr constant [9 x i8] c"Contrast\00", align 1
@RNA_SmokeDomainSettings = external global %struct.StructRNA, align 8
@.str.514 = private unnamed_addr constant [23 x i8] c"BrightContrastModifier\00", align 1
@.str.515 = private unnamed_addr constant [49 x i8] c"Bright/contrast modifier data for sequence strip\00", align 1
@.str.516 = private unnamed_addr constant [30 x i8] c"sequence_editor.sequences_all\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.517 = private unnamed_addr constant [15 x i8] c"StripTransform\00", align 1
@.str.518 = private unnamed_addr constant [10 x i8] c"StripCrop\00", align 1
@.str.519 = private unnamed_addr constant [11 x i8] c"StripProxy\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.520 = private unnamed_addr constant [46 x i8] c"sequence_editor.sequences_all[\22%s\22].modifiers\00", align 1
@.str.521 = private unnamed_addr constant [41 x i8] c"Sequence type does not support modifiers\00", align 1
@.str.522 = private unnamed_addr constant [36 x i8] c"Modifier was not found in the stack\00", align 1
@.str.523 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.524 = private unnamed_addr constant [10 x i8] c"stripelem\00", align 1
@.str.525 = private unnamed_addr constant [47 x i8] c"Sequences.new_image: unable to open image file\00", align 1
@.str.526 = private unnamed_addr constant [47 x i8] c"Sequences.new_movie: unable to open movie file\00", align 1
@.str.527 = private unnamed_addr constant [43 x i8] c"Blender compiled without Audaspace support\00", align 1
@.str.528 = private unnamed_addr constant [40 x i8] c"Sequences.new_effect: end frame not set\00", align 1
@.str.529 = private unnamed_addr constant [52 x i8] c"Sequences.new_effect: effect takes 1 input sequence\00", align 1
@.str.530 = private unnamed_addr constant [53 x i8] c"Sequences.new_effect: effect takes 2 input sequences\00", align 1
@.str.531 = private unnamed_addr constant [53 x i8] c"Sequences.new_effect: effect takes 3 input sequences\00", align 1
@.str.532 = private unnamed_addr constant [83 x i8] c"Sequences.new_effect: effect expects more than 3 inputs (%d, should never happen!)\00", align 1
@.str.533 = private unnamed_addr constant [32 x i8] c"Sequence '%s' not in scene '%s'\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.rna_SequenceElements_append = private unnamed_addr constant [28 x i8] c"rna_SequenceElements_append\00", align 1
@.str.534 = private unnamed_addr constant [50 x i8] c"SequenceElements.pop: cannot pop the last element\00", align 1
@.str.535 = private unnamed_addr constant [41 x i8] c"SequenceElements.pop: index out of range\00", align 1
@.str.536 = private unnamed_addr constant [21 x i8] c"SequenceElements_pop\00", align 1
@.str.537 = private unnamed_addr constant [50 x i8] c"sequence_editor.sequences_all[\22%s\22].color_balance\00", align 1
@.str.538 = private unnamed_addr constant [66 x i8] c"sequence_editor.sequences_all[\22%s\22].modifiers[\22%s\22].color_balance\00", align 1
@.str.539 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.540 = private unnamed_addr constant [13 x i8] c"No TC in use\00", align 1
@.str.541 = private unnamed_addr constant [11 x i8] c"RECORD_RUN\00", align 1
@.str.542 = private unnamed_addr constant [11 x i8] c"Record Run\00", align 1
@.str.543 = private unnamed_addr constant [45 x i8] c"Use images in the order as they are recorded\00", align 1
@.str.544 = private unnamed_addr constant [9 x i8] c"FREE_RUN\00", align 1
@.str.545 = private unnamed_addr constant [49 x i8] c"Use global timestamp written by recording device\00", align 1
@.str.546 = private unnamed_addr constant [18 x i8] c"FREE_RUN_REC_DATE\00", align 1
@.str.547 = private unnamed_addr constant [20 x i8] c"Free Run (rec date)\00", align 1
@.str.548 = private unnamed_addr constant [90 x i8] c"Interpolate a global timestamp using the record date and time written by recording device\00", align 1
@.str.549 = private unnamed_addr constant [19 x i8] c"RECORD_RUN_NO_GAPS\00", align 1
@.str.550 = private unnamed_addr constant [19 x i8] c"Record Run No Gaps\00", align 1
@.str.551 = private unnamed_addr constant [71 x i8] c"Like record run, but ignore timecode, changes in framerate or dropouts\00", align 1
@.str.552 = private unnamed_addr constant [41 x i8] c"sequence_editor.sequences_all[\22%s\22].crop\00", align 1
@.str.553 = private unnamed_addr constant [46 x i8] c"sequence_editor.sequences_all[\22%s\22].transform\00", align 1
@.str.554 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.555 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.556 = private unnamed_addr constant [5 x i8] c"META\00", align 1
@.str.557 = private unnamed_addr constant [5 x i8] c"Meta\00", align 1
@.str.558 = private unnamed_addr constant [6 x i8] c"SCENE\00", align 1
@.str.559 = private unnamed_addr constant [6 x i8] c"MOVIE\00", align 1
@.str.560 = private unnamed_addr constant [6 x i8] c"Movie\00", align 1
@.str.561 = private unnamed_addr constant [10 x i8] c"MOVIECLIP\00", align 1
@.str.562 = private unnamed_addr constant [5 x i8] c"Clip\00", align 1
@.str.563 = private unnamed_addr constant [6 x i8] c"SOUND\00", align 1
@.str.564 = private unnamed_addr constant [6 x i8] c"CROSS\00", align 1
@.str.565 = private unnamed_addr constant [6 x i8] c"Cross\00", align 1
@.str.566 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.567 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.568 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@.str.569 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.570 = private unnamed_addr constant [11 x i8] c"ALPHA_OVER\00", align 1
@.str.571 = private unnamed_addr constant [11 x i8] c"Alpha Over\00", align 1
@.str.572 = private unnamed_addr constant [12 x i8] c"ALPHA_UNDER\00", align 1
@.str.573 = private unnamed_addr constant [12 x i8] c"Alpha Under\00", align 1
@.str.574 = private unnamed_addr constant [12 x i8] c"GAMMA_CROSS\00", align 1
@.str.575 = private unnamed_addr constant [12 x i8] c"Gamma Cross\00", align 1
@.str.576 = private unnamed_addr constant [9 x i8] c"MULTIPLY\00", align 1
@.str.577 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.578 = private unnamed_addr constant [10 x i8] c"OVER_DROP\00", align 1
@.str.579 = private unnamed_addr constant [10 x i8] c"Over Drop\00", align 1
@.str.580 = private unnamed_addr constant [5 x i8] c"WIPE\00", align 1
@.str.581 = private unnamed_addr constant [5 x i8] c"Wipe\00", align 1
@.str.582 = private unnamed_addr constant [5 x i8] c"GLOW\00", align 1
@.str.583 = private unnamed_addr constant [5 x i8] c"Glow\00", align 1
@.str.584 = private unnamed_addr constant [10 x i8] c"TRANSFORM\00", align 1
@.str.585 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.586 = private unnamed_addr constant [6 x i8] c"SPEED\00", align 1
@.str.587 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.588 = private unnamed_addr constant [9 x i8] c"MULTICAM\00", align 1
@.str.589 = private unnamed_addr constant [18 x i8] c"Multicam Selector\00", align 1
@.str.590 = private unnamed_addr constant [11 x i8] c"ADJUSTMENT\00", align 1
@.str.591 = private unnamed_addr constant [17 x i8] c"Adjustment Layer\00", align 1
@.str.592 = private unnamed_addr constant [14 x i8] c"GAUSSIAN_BLUR\00", align 1
@.str.593 = private unnamed_addr constant [14 x i8] c"Gaussian Blur\00", align 1
@.str.594 = private unnamed_addr constant [8 x i8] c"REPLACE\00", align 1
@.str.595 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.596 = private unnamed_addr constant [36 x i8] c"sequence_editor.sequences_all[\22%s\22]\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.597 = private unnamed_addr constant [9 x i8] c"STRAIGHT\00", align 1
@.str.598 = private unnamed_addr constant [9 x i8] c"Straight\00", align 1
@.str.599 = private unnamed_addr constant [71 x i8] c"RGB channels in transparent pixels are unaffected by the alpha channel\00", align 1
@.str.600 = private unnamed_addr constant [7 x i8] c"PREMUL\00", align 1
@.str.601 = private unnamed_addr constant [14 x i8] c"Premultiplied\00", align 1
@.str.602 = private unnamed_addr constant [71 x i8] c"RGB channels in transparent pixels are multiplied by the alpha channel\00", align 1
@.str.603 = private unnamed_addr constant [7 x i8] c"PIXELS\00", align 1
@.str.604 = private unnamed_addr constant [7 x i8] c"Pixels\00", align 1
@.str.605 = private unnamed_addr constant [8 x i8] c"PERCENT\00", align 1
@.str.606 = private unnamed_addr constant [8 x i8] c"Percent\00", align 1
@.str.607 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.608 = private unnamed_addr constant [17 x i8] c"No interpolation\00", align 1
@.str.609 = private unnamed_addr constant [9 x i8] c"BILINEAR\00", align 1
@.str.610 = private unnamed_addr constant [9 x i8] c"Bilinear\00", align 1
@.str.611 = private unnamed_addr constant [23 x i8] c"Bilinear interpolation\00", align 1
@.str.612 = private unnamed_addr constant [8 x i8] c"BICUBIC\00", align 1
@.str.613 = private unnamed_addr constant [8 x i8] c"Bicubic\00", align 1
@.str.614 = private unnamed_addr constant [22 x i8] c"Bicubic interpolation\00", align 1
@.str.615 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.616 = private unnamed_addr constant [4 x i8] c"Out\00", align 1
@.str.617 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.618 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.619 = private unnamed_addr constant [7 x i8] c"SINGLE\00", align 1
@.str.620 = private unnamed_addr constant [7 x i8] c"Single\00", align 1
@.str.621 = private unnamed_addr constant [7 x i8] c"DOUBLE\00", align 1
@.str.622 = private unnamed_addr constant [7 x i8] c"Double\00", align 1
@.str.623 = private unnamed_addr constant [5 x i8] c"IRIS\00", align 1
@.str.624 = private unnamed_addr constant [5 x i8] c"Iris\00", align 1
@.str.625 = private unnamed_addr constant [6 x i8] c"CLOCK\00", align 1
@.str.626 = private unnamed_addr constant [6 x i8] c"Clock\00", align 1
@.str.627 = private unnamed_addr constant [6 x i8] c"STRIP\00", align 1
@.str.628 = private unnamed_addr constant [6 x i8] c"Strip\00", align 1
@.str.629 = private unnamed_addr constant [34 x i8] c"Use sequencer strip as mask input\00", align 1
@.str.630 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.631 = private unnamed_addr constant [26 x i8] c"Use mask ID as mask input\00", align 1
@.str.632 = private unnamed_addr constant [52 x i8] c"sequence_editor.sequences_all[\22%s\22].modifiers[\22%s\22]\00", align 1
@switch.table.rna_Sequence_refine = private unnamed_addr constant [41 x ptr] [ptr @RNA_ImageSequence, ptr @RNA_MetaSequence, ptr @RNA_SceneSequence, ptr @RNA_MovieSequence, ptr @RNA_SoundSequence, ptr @RNA_Sequence, ptr @RNA_MovieClipSequence, ptr @RNA_MaskSequence, ptr @RNA_CrossSequence, ptr @RNA_AddSequence, ptr @RNA_SubtractSequence, ptr @RNA_AlphaOverSequence, ptr @RNA_AlphaUnderSequence, ptr @RNA_GammaCrossSequence, ptr @RNA_MultiplySequence, ptr @RNA_OverDropSequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_WipeSequence, ptr @RNA_GlowSequence, ptr @RNA_TransformSequence, ptr @RNA_ColorSequence, ptr @RNA_SpeedControlSequence, ptr @RNA_MulticamSequence, ptr @RNA_AdjustmentSequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_Sequence, ptr @RNA_GaussianBlurSequence], align 8
@switch.table.rna_SequenceModifier_refine = private unnamed_addr constant [4 x ptr] [ptr @RNA_ColorBalanceModifier, ptr @RNA_CurvesModifier, ptr @RNA_HueCorrectModifier, ptr @RNA_BrightContrastModifier], align 8

; Function Attrs: nounwind uwtable
define dso_local void @SequenceColorBalanceData_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceColorBalanceData_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define internal void @SequenceColorBalanceData_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @SequenceColorBalanceData_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SequenceColorBalanceData_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceColorBalanceData_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SequenceColorBalanceData_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceColorBalanceData_lift_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !46
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !48

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceColorBalanceData_lift_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %2, %13
  %6 = phi i64 [ 0, %2 ], [ %16, %13 ]
  %7 = getelementptr inbounds float, ptr %1, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fcmp olt float %8, 0.000000e+00
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = fcmp ogt float %8, 0x47EFFFFFE0000000
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %10, %5
  %14 = phi float [ 0.000000e+00, %5 ], [ %8, %12 ], [ 0x47EFFFFFE0000000, %10 ]
  %15 = getelementptr inbounds float, ptr %4, i64 %6
  store float %14, ptr %15, align 4, !tbaa !46
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %5, !llvm.loop !51

18:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceColorBalanceData_gamma_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.StripColorBalance, ptr %4, i64 0, i32 1
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !46
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !52

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceColorBalanceData_gamma_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.StripColorBalance, ptr %4, i64 0, i32 1
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !46
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !53

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceColorBalanceData_gain_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.StripColorBalance, ptr %4, i64 0, i32 2
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !46
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !54

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceColorBalanceData_gain_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.StripColorBalance, ptr %4, i64 0, i32 2
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !46
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !55

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceColorBalanceData_invert_gain_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripColorBalance, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceColorBalanceData_invert_gain_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.StripColorBalance, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceColorBalanceData_invert_gamma_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripColorBalance, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceColorBalanceData_invert_gamma_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.StripColorBalance, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceColorBalanceData_invert_lift_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripColorBalance, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceColorBalanceData_invert_lift_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.StripColorBalance, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElement_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceElement_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SequenceElement_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElement_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElement_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceElement_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElement_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElement_filename_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %4, i64 noundef 256) #17
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceElement_filename_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #18
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElement_filename_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call ptr @BLI_strncpy(ptr noundef %4, ptr noundef %1, i64 noundef 256) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceElement_orig_width_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripElem, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !58
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceElement_orig_height_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripElem, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !60
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceProxy_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceProxy_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SequenceProxy_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceProxy_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceProxy_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceProxy_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceProxy_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceProxy_directory_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %4, i64 noundef 768) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceProxy_directory_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #18
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceProxy_directory_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call ptr @BLI_strncpy(ptr noundef %4, ptr noundef %1, i64 noundef 768) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceProxy_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 1
  tail call void @BLI_join_dirfile(ptr noundef %1, i64 noundef 1024, ptr noundef %4, ptr noundef nonnull %5) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceProxy_filepath_length(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #17
  %5 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 1
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef %4, ptr noundef nonnull %5) #17
  %6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %7 = trunc i64 %6 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #17
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceProxy_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 1
  tail call void @BLI_split_dirfile(ptr noundef %1, ptr noundef %4, ptr noundef nonnull %5, i64 noundef 768, i64 noundef 256) #17
  %6 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @IMB_free_anim(ptr noundef nonnull %7) #17
  store ptr null, ptr %6, align 8, !tbaa !61
  br label %10

10:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceProxy_build_25_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripProxy, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !64
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceProxy_build_25_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 4, !tbaa !64
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceProxy_build_50_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripProxy, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !64
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceProxy_build_50_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 4, !tbaa !64
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceProxy_build_75_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripProxy, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !64
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceProxy_build_75_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 4, !tbaa !64
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceProxy_build_100_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripProxy, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !64
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceProxy_build_100_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 4, !tbaa !64
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceProxy_build_record_run_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripProxy, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !65
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceProxy_build_record_run_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !65
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceProxy_build_free_run_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripProxy, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !65
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceProxy_build_free_run_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !65
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceProxy_build_free_run_rec_date_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripProxy, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !65
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceProxy_build_free_run_rec_date_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !65
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceProxy_quality_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripProxy, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !66
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceProxy_quality_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 4
  store i16 %7, ptr %8, align 2, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceProxy_timecode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripProxy, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !67
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceProxy_timecode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.StripProxy, ptr %4, i64 0, i32 3
  store i16 %5, ptr %6, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceCrop_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceCrop_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SequenceCrop_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceCrop_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceCrop_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceCrop_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceCrop_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceCrop_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load i32, ptr %3, align 4, !tbaa !68
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceCrop_max_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  store i32 %5, ptr %4, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceCrop_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripCrop, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !70
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceCrop_min_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = getelementptr inbounds %struct.StripCrop, ptr %4, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceCrop_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripCrop, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !71
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceCrop_min_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = getelementptr inbounds %struct.StripCrop, ptr %4, i64 0, i32 2
  store i32 %5, ptr %6, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceCrop_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripCrop, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !72
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceCrop_max_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = getelementptr inbounds %struct.StripCrop, ptr %4, i64 0, i32 3
  store i32 %5, ptr %6, align 4, !tbaa !72
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceTransform_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceTransform_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SequenceTransform_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceTransform_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceTransform_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceTransform_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceTransform_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceTransform_offset_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load i32, ptr %3, align 4, !tbaa !73
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceTransform_offset_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  store i32 %1, ptr %4, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceTransform_offset_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.StripTransform, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !75
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceTransform_offset_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.StripTransform, ptr %4, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !75
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Sequence_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Sequence_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 4, i64 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 62) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_name_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 4, i64 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #18
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %7 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 4, i64 2
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %7, i64 noundef 62) #17
  %9 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 62) #17
  %10 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = getelementptr inbounds %struct.Editing, ptr %11, i64 0, i32 1
  call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %12, ptr noundef %6) #17
  %13 = call ptr @BKE_animdata_from_id(ptr noundef %4) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  call void @BKE_animdata_fix_paths_rename(ptr noundef %4, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull @.str.516, ptr noundef nonnull %3, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #17
  br label %16

16:                                               ; preds = %2, %15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_select_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_select_left_handle_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_select_left_handle_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_select_right_handle_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_select_right_handle_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_mute_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_mute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_lock_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 14
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_lock_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -16385
  %9 = select i1 %5, i32 0, i32 16384
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_frame_final_duration_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef %3, i8 noundef zeroext 0) #17
  %5 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef %3, i8 noundef zeroext 0) #17
  %6 = sub nsw i32 %4, %5
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_frame_final_duration_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !102
  %8 = add nsw i32 %7, %1
  tail call void @BKE_sequence_tx_set_final_right(ptr noundef %4, i32 noundef %8) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_frame_duration_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !103
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_frame_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !102
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_frame_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !102
  %8 = sub nsw i32 %1, %7
  tail call void @BKE_sequence_translate(ptr noundef %5, ptr noundef %4, i32 noundef %8) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_frame_final_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !104
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_frame_final_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  tail call void @BKE_sequence_tx_set_final_left(ptr noundef %4, i32 noundef %1) #17
  tail call void @BKE_sequence_single_fix(ptr noundef %4) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_frame_final_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 4, !tbaa !105
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_frame_final_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  tail call void @BKE_sequence_tx_set_final_right(ptr noundef %4, i32 noundef %1) #17
  tail call void @BKE_sequence_single_fix(ptr noundef %4) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_frame_offset_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !106
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_frame_offset_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !99
  %7 = and i32 %6, -2
  %8 = icmp eq i32 %7, 4
  %9 = select i1 %8, i32 0, i32 -2147483648
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 %1)
  %11 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 9
  store i32 %10, ptr %11, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_Sequence_frame_offset_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #12 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !99
  %10 = and i32 %9, -2
  %11 = icmp eq i32 %10, 4
  %12 = select i1 %11, i32 0, i32 -2147483648
  store i32 %12, ptr %1, align 4, !tbaa !107
  store i32 2147483647, ptr %2, align 4, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_frame_offset_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !108
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_frame_offset_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !99
  %7 = and i32 %6, -2
  %8 = icmp eq i32 %7, 4
  %9 = select i1 %8, i32 0, i32 -2147483648
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 %1)
  %11 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 10
  store i32 %10, ptr %11, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_frame_still_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !109
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_frame_still_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 11
  store i32 %6, ptr %7, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_frame_still_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !110
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_frame_still_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 12
  store i32 %6, ptr %7, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_channel_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !111
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_channel_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #17
  %7 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BKE_sequence_seqbase(ptr noundef nonnull %7, ptr noundef %4) #17
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 13
  store i32 %1, ptr %9, align 8, !tbaa !111
  %10 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %8, ptr noundef %4) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %8, ptr noundef %4, ptr noundef %5) #17
  br label %14

14:                                               ; preds = %2, %12
  tail call void @BKE_sequencer_sort(ptr noundef %5) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_use_linear_modifiers_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 23
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_use_linear_modifiers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -8388609
  %9 = select i1 %5, i32 0, i32 8388608
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_blend_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 46
  %5 = load i32, ptr %4, align 8, !tbaa !112
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_blend_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 46
  store i32 %1, ptr %5, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Sequence_blend_alpha_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 47
  %5 = load float, ptr %4, align 4, !tbaa !113
  %6 = fdiv float %5, 1.000000e+02
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_blend_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = fcmp ogt float %1, 1.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %2, %6, %8
  %10 = phi float [ 1.000000e+00, %8 ], [ %1, %6 ], [ 0.000000e+00, %2 ]
  %11 = fmul float %10, 1.000000e+02
  %12 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 47
  store float %11, ptr %12, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Sequence_effect_fader_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 31
  %5 = load float, ptr %4, align 8, !tbaa !114
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_effect_fader_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 31
  store float %8, ptr %9, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Sequence_use_default_fade_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 22
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_use_default_fade_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -4194305
  %9 = select i1 %5, i32 0, i32 4194304
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Sequence_speed_factor_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 32
  %5 = load float, ptr %4, align 4, !tbaa !115
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Sequence_speed_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 32
  store float %1, ptr %5, align 4, !tbaa !115
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_modifiers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Sequence_modifiers, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 51
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #17
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #17, !noalias !116
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_SequenceModifier, ptr noundef %13) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @Sequence_modifiers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #17
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceModifier, ptr noundef %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_modifiers_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #17, !noalias !119
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_SequenceModifier, ptr noundef %8) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_modifiers_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Sequence_modifiers_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_Sequence_modifiers, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 51
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #17
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #17, !noalias !122
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_SequenceModifier, ptr noundef %17) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = icmp eq ptr %24, null
  %26 = icmp sgt i32 %1, 0
  br i1 %25, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %12, align 8
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %34, label %41

31:                                               ; preds = %21
  br i1 %26, label %32, label %54

32:                                               ; preds = %31
  %33 = load ptr, ptr %22, align 8, !tbaa !127
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #17
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !128

41:                                               ; preds = %34, %27
  %42 = phi i32 [ %1, %27 ], [ %36, %34 ]
  %43 = phi i1 [ %29, %27 ], [ %39, %34 ]
  %44 = icmp eq i32 %42, 0
  %45 = select i1 %44, i1 %43, i1 false
  br label %60

46:                                               ; preds = %32, %50
  %47 = phi i32 [ %51, %50 ], [ %1, %32 ]
  %48 = phi ptr [ %52, %50 ], [ %33, %32 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = add nsw i32 %47, -1
  %52 = load ptr, ptr %48, align 8, !tbaa !129
  store ptr %52, ptr %22, align 8, !tbaa !127
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !131

54:                                               ; preds = %46, %50, %31
  %55 = phi i32 [ %1, %31 ], [ %47, %46 ], [ 0, %50 ]
  %56 = icmp eq i32 %55, 0
  %57 = load ptr, ptr %22, align 8
  %58 = icmp ne ptr %57, null
  %59 = select i1 %56, i1 %58, i1 false
  br label %60

60:                                               ; preds = %54, %41
  %61 = phi i1 [ %45, %41 ], [ %59, %54 ]
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #17, !noalias !132
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_SequenceModifier, ptr noundef %63) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #17
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_modifiers_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #17
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_Sequence_modifiers, ptr %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 51
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #17
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %18 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #17, !noalias !135
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_SequenceModifier, ptr noundef %18) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %19

19:                                               ; preds = %3, %16
  %20 = load i32, ptr %13, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %25

25:                                               ; preds = %22, %59
  %26 = phi i8 [ 0, %22 ], [ %54, %59 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.SequenceModifierData, ptr %27, i64 0, i32 4
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #18
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 1024
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef nonnull %30, i64 noundef 64) #17
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %50

38:                                               ; preds = %29
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %40 = add i64 %31, 1
  %41 = and i64 %40, 4294967295
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.11) #17
  %43 = load ptr, ptr %24, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.SequenceModifierData, ptr %43, i64 0, i32 4
  %45 = call ptr @BLI_strncpy_utf8(ptr noundef %42, ptr noundef nonnull %44, i64 noundef 64) #17
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %1) #18
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %48(ptr noundef %42) #17
  br i1 %47, label %49, label %50

49:                                               ; preds = %38, %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  br label %50

50:                                               ; preds = %49, %38, %34
  %51 = phi i8 [ %26, %34 ], [ %26, %38 ], [ 1, %49 ]
  %52 = phi i1 [ true, %34 ], [ true, %38 ], [ false, %49 ]
  br i1 %52, label %53, label %62

53:                                               ; preds = %50, %25
  %54 = phi i8 [ %51, %50 ], [ %26, %25 ]
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #17
  %55 = load i32, ptr %13, align 8, !tbaa !44
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %58 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #17, !noalias !138
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_SequenceModifier, ptr noundef %58) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %59

59:                                               ; preds = %53, %57
  %60 = load i32, ptr %13, align 8, !tbaa !44
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %25, !llvm.loop !141

62:                                               ; preds = %50, %59
  %63 = phi i8 [ %54, %59 ], [ %51, %50 ]
  %64 = zext nneg i8 %63 to i32
  br label %65

65:                                               ; preds = %62, %19
  %66 = phi i32 [ 0, %19 ], [ %64, %62 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #17
  ret i32 %66
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceModifier_name_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SequenceModifierData, ptr %3, i64 0, i32 4
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #18
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifier_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SequenceModifierData, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifiers_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceModifiers_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SequenceModifiers_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifiers_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifiers_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceModifiers_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifiers_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceEditor_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SequenceEditor_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceEditor_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_sequences_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceEditor_sequences, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 1
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #17
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #17, !noalias !142
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_Sequence, ptr noundef %13) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SequenceEditor_sequences_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #17
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_sequences_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #17, !noalias !145
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_Sequence, ptr noundef %8) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_sequences_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SequenceEditor_sequences_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_SequenceEditor_sequences, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.Editing, ptr %8, i64 0, i32 1
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #17
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #17, !noalias !148
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Sequence, ptr noundef %17) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = icmp eq ptr %24, null
  %26 = icmp sgt i32 %1, 0
  br i1 %25, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %12, align 8
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %34, label %41

31:                                               ; preds = %21
  br i1 %26, label %32, label %54

32:                                               ; preds = %31
  %33 = load ptr, ptr %22, align 8, !tbaa !127
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #17
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !151

41:                                               ; preds = %34, %27
  %42 = phi i32 [ %1, %27 ], [ %36, %34 ]
  %43 = phi i1 [ %29, %27 ], [ %39, %34 ]
  %44 = icmp eq i32 %42, 0
  %45 = select i1 %44, i1 %43, i1 false
  br label %60

46:                                               ; preds = %32, %50
  %47 = phi i32 [ %51, %50 ], [ %1, %32 ]
  %48 = phi ptr [ %52, %50 ], [ %33, %32 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = add nsw i32 %47, -1
  %52 = load ptr, ptr %48, align 8, !tbaa !129
  store ptr %52, ptr %22, align 8, !tbaa !127
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !152

54:                                               ; preds = %46, %50, %31
  %55 = phi i32 [ %1, %31 ], [ %47, %46 ], [ 0, %50 ]
  %56 = icmp eq i32 %55, 0
  %57 = load ptr, ptr %22, align 8
  %58 = icmp ne ptr %57, null
  %59 = select i1 %56, i1 %58, i1 false
  br label %60

60:                                               ; preds = %54, %41
  %61 = phi i1 [ %45, %41 ], [ %59, %54 ]
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #17, !noalias !153
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Sequence, ptr noundef %63) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #17
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceEditor_sequences_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #17
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_SequenceEditor_sequences, ptr %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.Editing, ptr %9, i64 0, i32 1
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #17
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %18 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #17, !noalias !156
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Sequence, ptr noundef %18) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %19

19:                                               ; preds = %3, %16
  %20 = load i32, ptr %13, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %25

25:                                               ; preds = %22, %59
  %26 = phi i8 [ 0, %22 ], [ %54, %59 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Sequence, ptr %27, i64 0, i32 4, i64 2
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #18
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 1024
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %30, i64 noundef 62) #17
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %50

38:                                               ; preds = %29
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %40 = add i64 %31, 1
  %41 = and i64 %40, 4294967295
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.11) #17
  %43 = load ptr, ptr %24, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.Sequence, ptr %43, i64 0, i32 4, i64 2
  %45 = call ptr @BLI_strncpy(ptr noundef %42, ptr noundef nonnull %44, i64 noundef 62) #17
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %1) #18
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %48(ptr noundef %42) #17
  br i1 %47, label %49, label %50

49:                                               ; preds = %38, %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  br label %50

50:                                               ; preds = %49, %38, %34
  %51 = phi i8 [ %26, %34 ], [ %26, %38 ], [ 1, %49 ]
  %52 = phi i1 [ true, %34 ], [ true, %38 ], [ false, %49 ]
  br i1 %52, label %53, label %62

53:                                               ; preds = %50, %25
  %54 = phi i8 [ %51, %50 ], [ %26, %25 ]
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #17
  %55 = load i32, ptr %13, align 8, !tbaa !44
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %58 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #17, !noalias !159
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Sequence, ptr noundef %58) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %59

59:                                               ; preds = %53, %57
  %60 = load i32, ptr %13, align 8, !tbaa !44
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %25, !llvm.loop !162

62:                                               ; preds = %50, %59
  %63 = phi i8 [ %54, %59 ], [ %51, %50 ]
  %64 = zext nneg i8 %63 to i32
  br label %65

65:                                               ; preds = %62, %19
  %66 = phi i32 [ 0, %19 ], [ %64, %62 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #17
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_sequences_all_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceEditor_sequences_all, ptr %4, align 8, !tbaa !39
  %5 = load ptr, ptr %1, align 8, !tbaa !76
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #17
  %7 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  tail call fastcc void @meta_tmp_ref(ptr noundef null, ptr noundef %8)
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #17
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %14 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #17, !noalias !165
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_Sequence, ptr noundef %14) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %15

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SequenceEditor_sequences_all_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #17
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_sequences_all_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 36
  %6 = load ptr, ptr %5, align 8, !tbaa !168
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 8, !tbaa !169
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  store ptr null, ptr %3, align 8, !tbaa !127
  br label %12

12:                                               ; preds = %17, %11
  %13 = phi ptr [ %4, %11 ], [ %15, %17 ]
  %14 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !170
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %15, align 8, !tbaa !169
  %19 = icmp eq ptr %18, null
  br i1 %19, label %12, label %20, !llvm.loop !171

20:                                               ; preds = %17, %8, %1
  %21 = phi ptr [ %6, %1 ], [ %9, %8 ], [ %18, %17 ]
  store ptr %21, ptr %3, align 8, !tbaa !127
  br label %22

22:                                               ; preds = %12, %20
  %23 = load ptr, ptr %3, align 8, !tbaa !127
  %24 = icmp ne ptr %23, null
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  store i32 %25, ptr %26, align 8, !tbaa !44
  br i1 %24, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %29 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #17, !noalias !172
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_Sequence, ptr noundef %29) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %30

30:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_sequences_all_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceEditor_sequences_all_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #17
  %8 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %8, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_SequenceEditor_sequences_all, ptr %9, align 8, !tbaa !39
  %10 = load ptr, ptr %0, align 8, !tbaa !76
  %11 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %10, i8 noundef zeroext 0) #17
  %12 = getelementptr inbounds %struct.Editing, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !163
  tail call fastcc void @meta_tmp_ref(ptr noundef null, ptr noundef %13)
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #17
  %14 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %19 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #17, !noalias !175
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Sequence, ptr noundef %19) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %20

20:                                               ; preds = %3, %17
  %21 = load i32, ptr %14, align 8, !tbaa !44
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %87, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 3
  br label %27

27:                                               ; preds = %23, %81
  %28 = phi i8 [ 0, %23 ], [ %56, %81 ]
  %29 = load ptr, ptr %25, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  br i1 %30, label %55, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Sequence, ptr %29, i64 0, i32 4, i64 2
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #18
  %34 = trunc i64 %33 to i32
  %35 = icmp slt i32 %34, 1024
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %32, i64 noundef 62) #17
  %38 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #18
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %52

40:                                               ; preds = %31
  %41 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %42 = add i64 %33, 1
  %43 = and i64 %42, 4294967295
  %44 = call ptr %41(i64 noundef %43, ptr noundef nonnull @.str.11) #17
  %45 = load ptr, ptr %25, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct.Sequence, ptr %45, i64 0, i32 4, i64 2
  %47 = call ptr @BLI_strncpy(ptr noundef %44, ptr noundef nonnull %46, i64 noundef 62) #17
  %48 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) %1) #18
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %50(ptr noundef %44) #17
  br i1 %49, label %51, label %52

51:                                               ; preds = %40, %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %24, i64 24, i1 false)
  br label %52

52:                                               ; preds = %51, %40, %36
  %53 = phi i8 [ %28, %36 ], [ %28, %40 ], [ 1, %51 ]
  %54 = phi i1 [ true, %36 ], [ true, %40 ], [ false, %51 ]
  br i1 %54, label %55, label %84

55:                                               ; preds = %52, %27
  %56 = phi i8 [ %53, %52 ], [ %28, %27 ]
  %57 = load ptr, ptr %26, align 8, !tbaa !127
  %58 = getelementptr inbounds %struct.Sequence, ptr %57, i64 0, i32 36
  %59 = load ptr, ptr %58, align 8, !tbaa !168
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load ptr, ptr %57, align 8, !tbaa !169
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  store ptr null, ptr %26, align 8, !tbaa !127
  br label %65

65:                                               ; preds = %70, %64
  %66 = phi ptr [ %57, %64 ], [ %68, %70 ]
  %67 = getelementptr inbounds %struct.Sequence, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !170
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %68, align 8, !tbaa !169
  %72 = icmp eq ptr %71, null
  br i1 %72, label %65, label %73, !llvm.loop !171

73:                                               ; preds = %70, %61, %55
  %74 = phi ptr [ %59, %55 ], [ %62, %61 ], [ %71, %70 ]
  store ptr %74, ptr %26, align 8, !tbaa !127
  br label %75

75:                                               ; preds = %65, %73
  %76 = load ptr, ptr %26, align 8, !tbaa !127
  %77 = icmp ne ptr %76, null
  %78 = zext i1 %77 to i32
  store i32 %78, ptr %14, align 8, !tbaa !44
  br i1 %77, label %79, label %81

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %80 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #17, !noalias !178
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Sequence, ptr noundef %80) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %81

81:                                               ; preds = %75, %79
  %82 = load i32, ptr %14, align 8, !tbaa !44
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %27, !llvm.loop !181

84:                                               ; preds = %52, %81
  %85 = phi i8 [ %56, %81 ], [ %53, %52 ]
  %86 = zext nneg i8 %85 to i32
  br label %87

87:                                               ; preds = %84, %20
  %88 = phi i32 [ 0, %20 ], [ %86, %84 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #17
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_meta_stack_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceEditor_meta_stack, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #17
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !127, !noalias !182
  %15 = getelementptr inbounds %struct.MetaStack, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !187, !noalias !182
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_Sequence, ptr noundef %16) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SequenceEditor_meta_stack_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !127, !noalias !189
  %5 = getelementptr inbounds %struct.MetaStack, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !187, !noalias !189
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_meta_stack_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !127, !noalias !192
  %10 = getelementptr inbounds %struct.MetaStack, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !187, !noalias !192
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_Sequence, ptr noundef %11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_meta_stack_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SequenceEditor_meta_stack_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_SequenceEditor_meta_stack, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.Editing, ptr %8, i64 0, i32 2
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #17
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !127, !noalias !197
  %19 = getelementptr inbounds %struct.MetaStack, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !187, !noalias !197
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Sequence, ptr noundef %20) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %21

21:                                               ; preds = %3, %15
  %22 = load i32, ptr %12, align 8, !tbaa !44
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !125
  %28 = icmp eq ptr %27, null
  %29 = icmp sgt i32 %1, 0
  br i1 %28, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %12, align 8
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %37, label %44

34:                                               ; preds = %24
  br i1 %29, label %35, label %57

35:                                               ; preds = %34
  %36 = load ptr, ptr %25, align 8, !tbaa !127
  br label %49

37:                                               ; preds = %30, %37
  %38 = phi i32 [ %39, %37 ], [ %1, %30 ]
  %39 = add nsw i32 %38, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #17
  %40 = icmp sgt i32 %38, 1
  %41 = load i32, ptr %12, align 8
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %37, label %44, !llvm.loop !202

44:                                               ; preds = %37, %30
  %45 = phi i32 [ %1, %30 ], [ %39, %37 ]
  %46 = phi i1 [ %32, %30 ], [ %42, %37 ]
  %47 = icmp eq i32 %45, 0
  %48 = select i1 %47, i1 %46, i1 false
  br label %63

49:                                               ; preds = %35, %53
  %50 = phi i32 [ %54, %53 ], [ %1, %35 ]
  %51 = phi ptr [ %55, %53 ], [ %36, %35 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = add nsw i32 %50, -1
  %55 = load ptr, ptr %51, align 8, !tbaa !129
  store ptr %55, ptr %25, align 8, !tbaa !127
  %56 = icmp sgt i32 %50, 1
  br i1 %56, label %49, label %57, !llvm.loop !203

57:                                               ; preds = %49, %53, %34
  %58 = phi i32 [ %1, %34 ], [ %50, %49 ], [ 0, %53 ]
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr %25, align 8
  %61 = icmp ne ptr %60, null
  %62 = select i1 %59, i1 %61, i1 false
  br label %63

63:                                               ; preds = %57, %44
  %64 = phi i1 [ %48, %44 ], [ %62, %57 ]
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %66 = load ptr, ptr %25, align 8, !tbaa !127, !noalias !204
  %67 = getelementptr inbounds %struct.MetaStack, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !187, !noalias !204
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Sequence, ptr noundef %68) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %69

69:                                               ; preds = %63, %65, %21
  %70 = phi i1 [ false, %21 ], [ %64, %65 ], [ %64, %63 ]
  %71 = zext i1 %70 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #17
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceEditor_meta_stack_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #17
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_SequenceEditor_meta_stack, ptr %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.Editing, ptr %9, i64 0, i32 2
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #17
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %18 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !127, !noalias !209
  %20 = getelementptr inbounds %struct.MetaStack, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !187, !noalias !209
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Sequence, ptr noundef %21) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %22

22:                                               ; preds = %3, %16
  %23 = load i32, ptr %13, align 8, !tbaa !44
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %71, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 3
  br label %29

29:                                               ; preds = %25, %65
  %30 = phi i8 [ 0, %25 ], [ %58, %65 ]
  %31 = load ptr, ptr %27, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Sequence, ptr %31, i64 0, i32 4, i64 2
  %35 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #18
  %36 = trunc i64 %35 to i32
  %37 = icmp slt i32 %36, 1024
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %34, i64 noundef 62) #17
  %40 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %54

42:                                               ; preds = %33
  %43 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %44 = add i64 %35, 1
  %45 = and i64 %44, 4294967295
  %46 = call ptr %43(i64 noundef %45, ptr noundef nonnull @.str.11) #17
  %47 = load ptr, ptr %27, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.Sequence, ptr %47, i64 0, i32 4, i64 2
  %49 = call ptr @BLI_strncpy(ptr noundef %46, ptr noundef nonnull %48, i64 noundef 62) #17
  %50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) %1) #18
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %52(ptr noundef %46) #17
  br i1 %51, label %53, label %54

53:                                               ; preds = %42, %38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 24, i1 false)
  br label %54

54:                                               ; preds = %53, %42, %38
  %55 = phi i8 [ %30, %38 ], [ %30, %42 ], [ 1, %53 ]
  %56 = phi i1 [ true, %38 ], [ true, %42 ], [ false, %53 ]
  br i1 %56, label %57, label %68

57:                                               ; preds = %54, %29
  %58 = phi i8 [ %55, %54 ], [ %30, %29 ]
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #17
  %59 = load i32, ptr %13, align 8, !tbaa !44
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %62 = load ptr, ptr %28, align 8, !tbaa !127, !noalias !214
  %63 = getelementptr inbounds %struct.MetaStack, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !187, !noalias !214
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Sequence, ptr noundef %64) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %65

65:                                               ; preds = %57, %61
  %66 = load i32, ptr %13, align 8, !tbaa !44
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %29, !llvm.loop !219

68:                                               ; preds = %54, %65
  %69 = phi i8 [ %58, %65 ], [ %55, %54 ]
  %70 = zext nneg i8 %69 to i32
  br label %71

71:                                               ; preds = %68, %22
  %72 = phi i32 [ 0, %22 ], [ %70, %68 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #17
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_active_strip_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !220
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceEditor_active_strip_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceEditor_show_overlay_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !221
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceEditor_show_overlay_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !221
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceEditor_use_overlay_lock_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !221
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_use_overlay_lock_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !221
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32 %1, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !222
  %16 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !223
  %18 = add nsw i32 %17, %15
  %19 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 7
  store i32 %18, ptr %19, align 4, !tbaa !224
  %20 = or i32 %8, 2
  br label %31

21:                                               ; preds = %6
  %22 = or i1 %11, %10
  br i1 %22, label %33, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !224
  %26 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !222
  %28 = sub nsw i32 %25, %27
  %29 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 6
  store i32 %28, ptr %29, align 8, !tbaa !223
  %30 = and i32 %8, -3
  br label %31

31:                                               ; preds = %23, %13
  %32 = phi i32 [ %20, %13 ], [ %30, %23 ]
  store i32 %32, ptr %7, align 8, !tbaa !221
  br label %33

33:                                               ; preds = %31, %2, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceEditor_overlay_frame_get(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %2, i8 noundef zeroext 0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !222
  br label %22

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !221
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !224
  %16 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !222
  %18 = sub nsw i32 %15, %17
  br label %22

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !223
  br label %22

22:                                               ; preds = %5, %13, %19
  %23 = phi i32 [ %7, %5 ], [ %18, %13 ], [ %21, %19 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceEditor_overlay_frame_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !221
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !222
  %14 = add nsw i32 %13, %1
  %15 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 7
  store i32 %14, ptr %15, align 4, !tbaa !224
  br label %18

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 6
  store i32 %1, ptr %17, align 8, !tbaa !223
  br label %18

18:                                               ; preds = %2, %11, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Sequences_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Sequences_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequences_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_directory_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 7
  %8 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 768) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_directory_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !225
  %6 = getelementptr inbounds %struct.Strip, ptr %5, i64 0, i32 7
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_directory_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 7
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 768) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_elements_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ImageSequence_elements, ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !226
  %11 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !35
  %12 = tail call i64 %11(ptr noundef %10) #17
  %13 = udiv i64 %12, 264
  %14 = trunc i64 %13 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %10, i32 noundef 264, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #17
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %20 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #17, !noalias !228
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_SequenceElement, ptr noundef %20) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ImageSequence_elements_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #17
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceElement, ptr noundef %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_elements_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #17, !noalias !231
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_SequenceElement, ptr noundef %8) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_elements_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #17
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ImageSequence_elements_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #17
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %7, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_ImageSequence_elements, ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !225
  %13 = getelementptr inbounds %struct.Strip, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !35
  %16 = tail call i64 %15(ptr noundef %14) #17
  %17 = udiv i64 %16, 264
  %18 = trunc i64 %17 to i32
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %14, i32 noundef 264, i32 noundef %18, i8 noundef zeroext 0, ptr noundef null) #17
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %24 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #17, !noalias !234
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_SequenceElement, ptr noundef %24) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %25

25:                                               ; preds = %3, %22
  %26 = load i32, ptr %19, align 8, !tbaa !44
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %71, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %30 = icmp sgt i32 %1, -1
  %31 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, %1
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull @__func__.ImageSequence_elements_lookup_int, i32 noundef %1)
  br label %66

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !237
  %40 = icmp eq ptr %39, null
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = icmp sgt i32 %1, 0
  %43 = load i32, ptr %19, align 8
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %53

46:                                               ; preds = %41, %46
  %47 = phi i32 [ %48, %46 ], [ %1, %41 ]
  %48 = add nsw i32 %47, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #17
  %49 = icmp sgt i32 %47, 1
  %50 = load i32, ptr %19, align 8
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %46, label %53, !llvm.loop !239

53:                                               ; preds = %46, %41
  %54 = phi i32 [ %1, %41 ], [ %48, %46 ]
  %55 = phi i1 [ %44, %41 ], [ %51, %46 ]
  %56 = icmp eq i32 %54, 0
  %57 = select i1 %56, i1 %55, i1 false
  %58 = zext i1 %57 to i32
  br label %66

59:                                               ; preds = %37
  %60 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !240
  %62 = mul nsw i32 %61, %1
  %63 = load ptr, ptr %29, align 8, !tbaa !241
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, ptr %63, i64 %64
  store ptr %65, ptr %29, align 8, !tbaa !241
  br label %66

66:                                               ; preds = %53, %59, %35
  %67 = phi i32 [ 0, %35 ], [ %58, %53 ], [ 1, %59 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %70 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #17, !noalias !242
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_SequenceElement, ptr noundef %70) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %71

71:                                               ; preds = %66, %69, %25
  %72 = phi i32 [ 0, %25 ], [ %67, %69 ], [ %67, %66 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #17
  ret i32 %72
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_use_deinterlace_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImageSequence_use_deinterlace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_alpha_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 49
  %5 = load i8, ptr %4, align 4, !tbaa !245
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImageSequence_alpha_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 49
  store i8 %5, ptr %6, align 4, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_use_flip_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImageSequence_use_flip_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_use_flip_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImageSequence_use_flip_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_use_float_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImageSequence_use_float_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_use_reverse_frames_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImageSequence_use_reverse_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ImageSequence_color_multiply_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !246
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImageSequence_color_multiply_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 4, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ImageSequence_color_saturation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !247
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImageSequence_color_saturation_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !247
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ImageSequence_strobe_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 4, !tbaa !248
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImageSequence_strobe_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+01
  %7 = select i1 %6, float 3.000000e+01, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 4, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_use_translation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_use_translation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 65536
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !249
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 8, ptr noundef nonnull @.str.517) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 10
  store ptr %17, ptr %19, align 8, !tbaa !249
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 65536
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_transform_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !249
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceTransform, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_use_crop_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_use_crop_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 131072
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !250
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 16, ptr noundef nonnull @.str.518) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 9
  store ptr %17, ptr %19, align 8, !tbaa !250
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 131072
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_crop_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceCrop, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_use_proxy_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_use_proxy_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %23, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 32768
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !251
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 1040, ptr noundef nonnull @.str.519) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 8
  store ptr %17, ptr %19, align 8, !tbaa !251
  %20 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 4
  store i16 90, ptr %20, align 2, !tbaa !66
  %21 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 6
  store i16 15, ptr %21, align 2, !tbaa !65
  %22 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 5
  store i16 1, ptr %22, align 4, !tbaa !64
  br label %25

23:                                               ; preds = %2
  %24 = xor i32 %7, 32768
  store i32 %24, ptr %6, align 8, !tbaa !101
  br label %25

25:                                               ; preds = %8, %15, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_proxy_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceProxy, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_use_proxy_custom_directory_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImageSequence_use_proxy_custom_directory_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -524289
  %9 = select i1 %5, i32 0, i32 524288
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_use_proxy_custom_file_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ImageSequence_use_proxy_custom_file_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2097153
  %9 = select i1 %5, i32 0, i32 2097152
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_animation_offset_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 44
  %5 = load i32, ptr %4, align 8, !tbaa !252
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_animation_offset_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 44
  %9 = load i32, ptr %8, align 8, !tbaa !252
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 8, !tbaa !252
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ImageSequence_animation_offset_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 45
  %5 = load i32, ptr %4, align 4, !tbaa !253
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_animation_offset_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 45
  %9 = load i32, ptr %8, align 4, !tbaa !253
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 4, !tbaa !253
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ImageSequence_colorspace_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 12
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ColorManagedInputColorspaceSettings, ptr noundef nonnull %7) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElements_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceElements_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SequenceElements_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElements_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElements_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceElements_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElements_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaSequence_sequences_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MetaSequence_sequences, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 36
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #17
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #17, !noalias !254
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_Sequence, ptr noundef %13) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MetaSequence_sequences_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #17
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaSequence_sequences_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #17, !noalias !257
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_Sequence, ptr noundef %8) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaSequence_sequences_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MetaSequence_sequences_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_MetaSequence_sequences, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 36
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #17
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #17, !noalias !260
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Sequence, ptr noundef %17) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = icmp eq ptr %24, null
  %26 = icmp sgt i32 %1, 0
  br i1 %25, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %12, align 8
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %34, label %41

31:                                               ; preds = %21
  br i1 %26, label %32, label %54

32:                                               ; preds = %31
  %33 = load ptr, ptr %22, align 8, !tbaa !127
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #17
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !263

41:                                               ; preds = %34, %27
  %42 = phi i32 [ %1, %27 ], [ %36, %34 ]
  %43 = phi i1 [ %29, %27 ], [ %39, %34 ]
  %44 = icmp eq i32 %42, 0
  %45 = select i1 %44, i1 %43, i1 false
  br label %60

46:                                               ; preds = %32, %50
  %47 = phi i32 [ %51, %50 ], [ %1, %32 ]
  %48 = phi ptr [ %52, %50 ], [ %33, %32 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = add nsw i32 %47, -1
  %52 = load ptr, ptr %48, align 8, !tbaa !129
  store ptr %52, ptr %22, align 8, !tbaa !127
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !264

54:                                               ; preds = %46, %50, %31
  %55 = phi i32 [ %1, %31 ], [ %47, %46 ], [ 0, %50 ]
  %56 = icmp eq i32 %55, 0
  %57 = load ptr, ptr %22, align 8
  %58 = icmp ne ptr %57, null
  %59 = select i1 %56, i1 %58, i1 false
  br label %60

60:                                               ; preds = %54, %41
  %61 = phi i1 [ %45, %41 ], [ %59, %54 ]
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #17, !noalias !265
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Sequence, ptr noundef %63) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #17
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MetaSequence_sequences_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #17
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_MetaSequence_sequences, ptr %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 36
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #17
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %18 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #17, !noalias !268
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Sequence, ptr noundef %18) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %19

19:                                               ; preds = %3, %16
  %20 = load i32, ptr %13, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %25

25:                                               ; preds = %22, %59
  %26 = phi i8 [ 0, %22 ], [ %54, %59 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Sequence, ptr %27, i64 0, i32 4, i64 2
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #18
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 1024
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %30, i64 noundef 62) #17
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %50

38:                                               ; preds = %29
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %40 = add i64 %31, 1
  %41 = and i64 %40, 4294967295
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.11) #17
  %43 = load ptr, ptr %24, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.Sequence, ptr %43, i64 0, i32 4, i64 2
  %45 = call ptr @BLI_strncpy(ptr noundef %42, ptr noundef nonnull %44, i64 noundef 62) #17
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %1) #18
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %48(ptr noundef %42) #17
  br i1 %47, label %49, label %50

49:                                               ; preds = %38, %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  br label %50

50:                                               ; preds = %49, %38, %34
  %51 = phi i8 [ %26, %34 ], [ %26, %38 ], [ 1, %49 ]
  %52 = phi i1 [ true, %34 ], [ true, %38 ], [ false, %49 ]
  br i1 %52, label %53, label %62

53:                                               ; preds = %50, %25
  %54 = phi i8 [ %51, %50 ], [ %26, %25 ]
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #17
  %55 = load i32, ptr %13, align 8, !tbaa !44
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %58 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #17, !noalias !271
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Sequence, ptr noundef %58) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %59

59:                                               ; preds = %53, %57
  %60 = load i32, ptr %13, align 8, !tbaa !44
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %25, !llvm.loop !274

62:                                               ; preds = %50, %59
  %63 = phi i8 [ %54, %59 ], [ %51, %50 ]
  %64 = zext nneg i8 %63 to i32
  br label %65

65:                                               ; preds = %62, %19
  %66 = phi i32 [ 0, %19 ], [ %64, %62 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #17
  ret i32 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_use_deinterlace_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaSequence_use_deinterlace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_alpha_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 49
  %5 = load i8, ptr %4, align 4, !tbaa !245
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaSequence_alpha_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 49
  store i8 %5, ptr %6, align 4, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_use_flip_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaSequence_use_flip_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_use_flip_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaSequence_use_flip_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_use_float_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaSequence_use_float_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_use_reverse_frames_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaSequence_use_reverse_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaSequence_color_multiply_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !246
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaSequence_color_multiply_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 4, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaSequence_color_saturation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !247
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaSequence_color_saturation_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !247
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MetaSequence_strobe_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 4, !tbaa !248
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaSequence_strobe_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+01
  %7 = select i1 %6, float 3.000000e+01, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 4, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_use_translation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaSequence_use_translation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 65536
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !249
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 8, ptr noundef nonnull @.str.517) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 10
  store ptr %17, ptr %19, align 8, !tbaa !249
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 65536
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaSequence_transform_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !249
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceTransform, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_use_crop_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaSequence_use_crop_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 131072
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !250
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 16, ptr noundef nonnull @.str.518) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 9
  store ptr %17, ptr %19, align 8, !tbaa !250
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 131072
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaSequence_crop_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceCrop, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_use_proxy_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaSequence_use_proxy_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %23, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 32768
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !251
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 1040, ptr noundef nonnull @.str.519) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 8
  store ptr %17, ptr %19, align 8, !tbaa !251
  %20 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 4
  store i16 90, ptr %20, align 2, !tbaa !66
  %21 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 6
  store i16 15, ptr %21, align 2, !tbaa !65
  %22 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 5
  store i16 1, ptr %22, align 4, !tbaa !64
  br label %25

23:                                               ; preds = %2
  %24 = xor i32 %7, 32768
  store i32 %24, ptr %6, align 8, !tbaa !101
  br label %25

25:                                               ; preds = %8, %15, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaSequence_proxy_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceProxy, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_use_proxy_custom_directory_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaSequence_use_proxy_custom_directory_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -524289
  %9 = select i1 %5, i32 0, i32 524288
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_use_proxy_custom_file_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MetaSequence_use_proxy_custom_file_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2097153
  %9 = select i1 %5, i32 0, i32 2097152
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_animation_offset_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 44
  %5 = load i32, ptr %4, align 8, !tbaa !252
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaSequence_animation_offset_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 44
  %9 = load i32, ptr %8, align 8, !tbaa !252
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 8, !tbaa !252
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MetaSequence_animation_offset_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 45
  %5 = load i32, ptr %4, align 4, !tbaa !253
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @MetaSequence_animation_offset_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 45
  %9 = load i32, ptr %8, align 4, !tbaa !253
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 4, !tbaa !253
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_scene_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !275
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Scene, ptr noundef %6) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_scene_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #17
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 26
  store ptr %6, ptr %10, align 8, !tbaa !275
  ret void
}

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_scene_camera_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !276
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_scene_camera_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #17
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 27
  store ptr %6, ptr %10, align 8, !tbaa !276
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_use_deinterlace_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneSequence_use_deinterlace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_alpha_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 49
  %5 = load i8, ptr %4, align 4, !tbaa !245
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneSequence_alpha_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 49
  store i8 %5, ptr %6, align 4, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_use_flip_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneSequence_use_flip_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_use_flip_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneSequence_use_flip_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_use_float_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneSequence_use_float_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_use_reverse_frames_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneSequence_use_reverse_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SceneSequence_color_multiply_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !246
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneSequence_color_multiply_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 4, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SceneSequence_color_saturation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !247
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneSequence_color_saturation_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !247
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SceneSequence_strobe_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 4, !tbaa !248
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneSequence_strobe_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+01
  %7 = select i1 %6, float 3.000000e+01, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 4, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_use_translation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_use_translation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 65536
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !249
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 8, ptr noundef nonnull @.str.517) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 10
  store ptr %17, ptr %19, align 8, !tbaa !249
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 65536
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_transform_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !249
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceTransform, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_use_crop_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_use_crop_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 131072
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !250
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 16, ptr noundef nonnull @.str.518) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 9
  store ptr %17, ptr %19, align 8, !tbaa !250
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 131072
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_crop_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceCrop, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_use_proxy_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_use_proxy_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %23, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 32768
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !251
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 1040, ptr noundef nonnull @.str.519) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 8
  store ptr %17, ptr %19, align 8, !tbaa !251
  %20 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 4
  store i16 90, ptr %20, align 2, !tbaa !66
  %21 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 6
  store i16 15, ptr %21, align 2, !tbaa !65
  %22 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 5
  store i16 1, ptr %22, align 4, !tbaa !64
  br label %25

23:                                               ; preds = %2
  %24 = xor i32 %7, 32768
  store i32 %24, ptr %6, align 8, !tbaa !101
  br label %25

25:                                               ; preds = %8, %15, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_proxy_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceProxy, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_use_proxy_custom_directory_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneSequence_use_proxy_custom_directory_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -524289
  %9 = select i1 %5, i32 0, i32 524288
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_use_proxy_custom_file_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SceneSequence_use_proxy_custom_file_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2097153
  %9 = select i1 %5, i32 0, i32 2097152
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_animation_offset_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 44
  %5 = load i32, ptr %4, align 8, !tbaa !252
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_animation_offset_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 44
  %9 = load i32, ptr %8, align 8, !tbaa !252
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 8, !tbaa !252
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SceneSequence_animation_offset_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 45
  %5 = load i32, ptr %4, align 4, !tbaa !253
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @SceneSequence_animation_offset_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 45
  %9 = load i32, ptr %8, align 4, !tbaa !253
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 4, !tbaa !253
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_mpeg_preseek_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 20
  %5 = load i16, ptr %4, align 4, !tbaa !277
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_mpeg_preseek_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 50)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 20
  store i16 %7, ptr %8, align 4, !tbaa !277
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_stream_index_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 21
  %5 = load i16, ptr %4, align 2, !tbaa !278
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_stream_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 20)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 21
  store i16 %7, ptr %8, align 2, !tbaa !278
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_elements_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MovieSequence_elements, ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !226
  %11 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !35
  %12 = tail call i64 %11(ptr noundef %10) #17
  %13 = udiv i64 %12, 264
  %14 = trunc i64 %13 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %10, i32 noundef 264, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #17
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %20 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #17, !noalias !279
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_SequenceElement, ptr noundef %20) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MovieSequence_elements_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #17
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceElement, ptr noundef %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_elements_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #17, !noalias !282
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_SequenceElement, ptr noundef %8) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_elements_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MovieSequence_elements_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #17
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %7, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_MovieSequence_elements, ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.Sequence, ptr %10, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !225
  %13 = getelementptr inbounds %struct.Strip, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !35
  %16 = tail call i64 %15(ptr noundef %14) #17
  %17 = udiv i64 %16, 264
  %18 = trunc i64 %17 to i32
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %14, i32 noundef 264, i32 noundef %18, i8 noundef zeroext 0, ptr noundef null) #17
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %24 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #17, !noalias !285
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_SequenceElement, ptr noundef %24) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %25

25:                                               ; preds = %3, %22
  %26 = load i32, ptr %19, align 8, !tbaa !44
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %71, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %30 = icmp sgt i32 %1, -1
  %31 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, %1
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull @__func__.MovieSequence_elements_lookup_int, i32 noundef %1)
  br label %66

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !237
  %40 = icmp eq ptr %39, null
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = icmp sgt i32 %1, 0
  %43 = load i32, ptr %19, align 8
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %53

46:                                               ; preds = %41, %46
  %47 = phi i32 [ %48, %46 ], [ %1, %41 ]
  %48 = add nsw i32 %47, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #17
  %49 = icmp sgt i32 %47, 1
  %50 = load i32, ptr %19, align 8
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %46, label %53, !llvm.loop !288

53:                                               ; preds = %46, %41
  %54 = phi i32 [ %1, %41 ], [ %48, %46 ]
  %55 = phi i1 [ %44, %41 ], [ %51, %46 ]
  %56 = icmp eq i32 %54, 0
  %57 = select i1 %56, i1 %55, i1 false
  %58 = zext i1 %57 to i32
  br label %66

59:                                               ; preds = %37
  %60 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !240
  %62 = mul nsw i32 %61, %1
  %63 = load ptr, ptr %29, align 8, !tbaa !241
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, ptr %63, i64 %64
  store ptr %65, ptr %29, align 8, !tbaa !241
  br label %66

66:                                               ; preds = %53, %59, %35
  %67 = phi i32 [ 0, %35 ], [ %58, %53 ], [ 1, %59 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %70 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #17, !noalias !289
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_SequenceElement, ptr noundef %70) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %71

71:                                               ; preds = %66, %69, %25
  %72 = phi i32 [ 0, %25 ], [ %67, %69 ], [ %67, %66 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #17
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 7
  %8 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  tail call void @BLI_join_dirfile(ptr noundef %1, i64 noundef 1024, ptr noundef nonnull %7, ptr noundef %9) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MovieSequence_filepath_length(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #17
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 7
  %8 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef nonnull %7, ptr noundef %9) #17
  %10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %11 = trunc i64 %10 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #17
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Sequence_filepath_set(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rna_Sequence_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 37
  %11 = load ptr, ptr %10, align 8, !tbaa !292
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @RNA_id_pointer_create(ptr noundef nonnull %11, ptr noundef nonnull %3) #17
  call void @RNA_string_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.52, ptr noundef %1) #17
  %14 = load ptr, ptr @G, align 8, !tbaa !293
  %15 = load ptr, ptr %10, align 8, !tbaa !292
  call void @sound_load(ptr noundef %14, ptr noundef %15) #17
  %16 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 38
  %17 = load ptr, ptr %16, align 8, !tbaa !295
  %18 = load ptr, ptr %10, align 8, !tbaa !292
  call void @sound_update_scene_sound(ptr noundef %17, ptr noundef %18) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %19

19:                                               ; preds = %13, %9, %2
  %20 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 24
  %21 = load ptr, ptr %20, align 8, !tbaa !225
  %22 = getelementptr inbounds %struct.Strip, ptr %21, i64 0, i32 7
  %23 = getelementptr inbounds %struct.Strip, ptr %21, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !226
  call void @BLI_split_dirfile(ptr noundef %1, ptr noundef nonnull %22, ptr noundef %24, i64 noundef 768, i64 noundef 256) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_use_deinterlace_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_use_deinterlace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_alpha_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 49
  %5 = load i8, ptr %4, align 4, !tbaa !245
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_alpha_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 49
  store i8 %5, ptr %6, align 4, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_use_flip_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_use_flip_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_use_flip_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_use_flip_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_use_float_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_use_float_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_use_reverse_frames_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_use_reverse_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MovieSequence_color_multiply_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !246
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_color_multiply_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 4, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MovieSequence_color_saturation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !247
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_color_saturation_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !247
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MovieSequence_strobe_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 4, !tbaa !248
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_strobe_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+01
  %7 = select i1 %6, float 3.000000e+01, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 4, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_use_translation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_use_translation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 65536
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !249
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 8, ptr noundef nonnull @.str.517) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 10
  store ptr %17, ptr %19, align 8, !tbaa !249
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 65536
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_transform_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !249
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceTransform, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_use_crop_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_use_crop_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 131072
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !250
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 16, ptr noundef nonnull @.str.518) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 9
  store ptr %17, ptr %19, align 8, !tbaa !250
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 131072
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_crop_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceCrop, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_use_proxy_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_use_proxy_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %23, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 32768
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !251
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 1040, ptr noundef nonnull @.str.519) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 8
  store ptr %17, ptr %19, align 8, !tbaa !251
  %20 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 4
  store i16 90, ptr %20, align 2, !tbaa !66
  %21 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 6
  store i16 15, ptr %21, align 2, !tbaa !65
  %22 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 5
  store i16 1, ptr %22, align 4, !tbaa !64
  br label %25

23:                                               ; preds = %2
  %24 = xor i32 %7, 32768
  store i32 %24, ptr %6, align 8, !tbaa !101
  br label %25

25:                                               ; preds = %8, %15, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_proxy_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceProxy, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_use_proxy_custom_directory_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_use_proxy_custom_directory_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -524289
  %9 = select i1 %5, i32 0, i32 524288
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_use_proxy_custom_file_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieSequence_use_proxy_custom_file_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2097153
  %9 = select i1 %5, i32 0, i32 2097152
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_animation_offset_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 44
  %5 = load i32, ptr %4, align 8, !tbaa !252
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_animation_offset_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 44
  %9 = load i32, ptr %8, align 8, !tbaa !252
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 8, !tbaa !252
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieSequence_animation_offset_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 45
  %5 = load i32, ptr %4, align 4, !tbaa !253
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_animation_offset_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 45
  %9 = load i32, ptr %8, align 4, !tbaa !253
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 4, !tbaa !253
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieSequence_colorspace_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 12
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ColorManagedInputColorspaceSettings, ptr noundef nonnull %7) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_undistort_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !296
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieClipSequence_undistort_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !296
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_stabilize2d_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !296
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieClipSequence_stabilize2d_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !296
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_use_deinterlace_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieClipSequence_use_deinterlace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_alpha_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 49
  %5 = load i8, ptr %4, align 4, !tbaa !245
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieClipSequence_alpha_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 49
  store i8 %5, ptr %6, align 4, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_use_flip_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieClipSequence_use_flip_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_use_flip_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieClipSequence_use_flip_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_use_float_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieClipSequence_use_float_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_use_reverse_frames_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieClipSequence_use_reverse_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MovieClipSequence_color_multiply_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !246
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieClipSequence_color_multiply_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 4, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MovieClipSequence_color_saturation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !247
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieClipSequence_color_saturation_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !247
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MovieClipSequence_strobe_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 4, !tbaa !248
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MovieClipSequence_strobe_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+01
  %7 = select i1 %6, float 3.000000e+01, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 4, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_use_translation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieClipSequence_use_translation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 65536
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !249
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 8, ptr noundef nonnull @.str.517) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 10
  store ptr %17, ptr %19, align 8, !tbaa !249
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 65536
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieClipSequence_transform_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !249
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceTransform, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_use_crop_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieClipSequence_use_crop_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 131072
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !250
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 16, ptr noundef nonnull @.str.518) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 9
  store ptr %17, ptr %19, align 8, !tbaa !250
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 131072
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieClipSequence_crop_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceCrop, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_animation_offset_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 44
  %5 = load i32, ptr %4, align 8, !tbaa !252
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieClipSequence_animation_offset_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 44
  %9 = load i32, ptr %8, align 8, !tbaa !252
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 8, !tbaa !252
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MovieClipSequence_animation_offset_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 45
  %5 = load i32, ptr %4, align 4, !tbaa !253
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @MovieClipSequence_animation_offset_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 45
  %9 = load i32, ptr %8, align 4, !tbaa !253
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 4, !tbaa !253
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSequence_mask_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !297
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Mask, ptr noundef %6) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSequence_mask_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !297
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #17
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !297
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSequence_use_deinterlace_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSequence_use_deinterlace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSequence_alpha_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 49
  %5 = load i8, ptr %4, align 4, !tbaa !245
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSequence_alpha_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 49
  store i8 %5, ptr %6, align 4, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSequence_use_flip_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSequence_use_flip_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSequence_use_flip_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSequence_use_flip_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSequence_use_float_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSequence_use_float_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSequence_use_reverse_frames_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSequence_use_reverse_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaskSequence_color_multiply_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !246
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSequence_color_multiply_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 4, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaskSequence_color_saturation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !247
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSequence_color_saturation_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !247
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaskSequence_strobe_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 4, !tbaa !248
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskSequence_strobe_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+01
  %7 = select i1 %6, float 3.000000e+01, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 4, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSequence_use_translation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSequence_use_translation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 65536
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !249
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 8, ptr noundef nonnull @.str.517) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 10
  store ptr %17, ptr %19, align 8, !tbaa !249
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 65536
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSequence_transform_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !249
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceTransform, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSequence_use_crop_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSequence_use_crop_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 131072
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !250
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 16, ptr noundef nonnull @.str.518) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 9
  store ptr %17, ptr %19, align 8, !tbaa !250
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 131072
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSequence_crop_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceCrop, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSequence_animation_offset_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 44
  %5 = load i32, ptr %4, align 8, !tbaa !252
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSequence_animation_offset_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 44
  %9 = load i32, ptr %8, align 8, !tbaa !252
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 8, !tbaa !252
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskSequence_animation_offset_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 45
  %5 = load i32, ptr %4, align 4, !tbaa !253
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskSequence_animation_offset_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 45
  %9 = load i32, ptr %8, align 4, !tbaa !253
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 4, !tbaa !253
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SoundSequence_sound_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !292
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sound, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundSequence_volume_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 39
  %5 = load float, ptr %4, align 8, !tbaa !298
  ret float %5
}

; Function Attrs: nounwind uwtable
define dso_local void @SoundSequence_volume_set(ptr nocapture noundef readonly %0, float noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 39
  store float %1, ptr %5, align 8, !tbaa !298
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 38
  %7 = load ptr, ptr %6, align 8, !tbaa !295
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !101
  %12 = lshr i32 %11, 24
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  tail call void @sound_set_scene_sound_volume(ptr noundef nonnull %7, float noundef %1, i8 noundef zeroext %14) #17
  br label %15

15:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundSequence_pitch_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 40
  %5 = load float, ptr %4, align 4, !tbaa !299
  ret float %5
}

; Function Attrs: nounwind uwtable
define dso_local void @SoundSequence_pitch_set(ptr nocapture noundef readonly %0, float noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 40
  store float %1, ptr %5, align 4, !tbaa !299
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 38
  %7 = load ptr, ptr %6, align 8, !tbaa !295
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !101
  %12 = lshr i32 %11, 25
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  tail call void @sound_set_scene_sound_pitch(ptr noundef nonnull %7, float noundef %1, i8 noundef zeroext %14) #17
  br label %15

15:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SoundSequence_pan_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 41
  %5 = load float, ptr %4, align 8, !tbaa !300
  ret float %5
}

; Function Attrs: nounwind uwtable
define dso_local void @SoundSequence_pan_set(ptr nocapture noundef readonly %0, float noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 41
  store float %1, ptr %5, align 8, !tbaa !300
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 38
  %7 = load ptr, ptr %6, align 8, !tbaa !295
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !101
  %12 = lshr i32 %11, 26
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  tail call void @sound_set_scene_sound_pan(ptr noundef nonnull %7, float noundef %1, i8 noundef zeroext %14) #17
  br label %15

15:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SoundSequence_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 7
  %8 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  tail call void @BLI_join_dirfile(ptr noundef %1, i64 noundef 1024, ptr noundef nonnull %7, ptr noundef %9) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SoundSequence_filepath_length(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #17
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 7
  %8 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef nonnull %7, ptr noundef %9) #17
  %10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %11 = trunc i64 %10 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #17
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @SoundSequence_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Sequence_filepath_set(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SoundSequence_show_waveform_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 27
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SoundSequence_show_waveform_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -134217729
  %9 = select i1 %5, i32 0, i32 134217728
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SoundSequence_animation_offset_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 44
  %5 = load i32, ptr %4, align 8, !tbaa !252
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @SoundSequence_animation_offset_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 44
  %9 = load i32, ptr %8, align 8, !tbaa !252
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 8, !tbaa !252
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SoundSequence_animation_offset_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 45
  %5 = load i32, ptr %4, align 4, !tbaa !253
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @SoundSequence_animation_offset_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 45
  %9 = load i32, ptr %8, align 4, !tbaa !253
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 4, !tbaa !253
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EffectSequence_use_deinterlace_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EffectSequence_use_deinterlace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EffectSequence_alpha_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 49
  %5 = load i8, ptr %4, align 4, !tbaa !245
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EffectSequence_alpha_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 49
  store i8 %5, ptr %6, align 4, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EffectSequence_use_flip_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EffectSequence_use_flip_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EffectSequence_use_flip_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EffectSequence_use_flip_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EffectSequence_use_float_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EffectSequence_use_float_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EffectSequence_use_reverse_frames_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EffectSequence_use_reverse_frames_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EffectSequence_color_multiply_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !246
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EffectSequence_color_multiply_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 4, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EffectSequence_color_saturation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !247
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EffectSequence_color_saturation_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !247
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EffectSequence_strobe_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 4, !tbaa !248
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EffectSequence_strobe_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+01
  %7 = select i1 %6, float 3.000000e+01, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 4, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EffectSequence_use_translation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @EffectSequence_use_translation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 65536
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !249
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 8, ptr noundef nonnull @.str.517) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 10
  store ptr %17, ptr %19, align 8, !tbaa !249
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 65536
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @EffectSequence_transform_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !249
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceTransform, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EffectSequence_use_crop_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @EffectSequence_use_crop_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 131072
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !250
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 16, ptr noundef nonnull @.str.518) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 9
  store ptr %17, ptr %19, align 8, !tbaa !250
  br label %22

20:                                               ; preds = %2
  %21 = xor i32 %7, 131072
  store i32 %21, ptr %6, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %8, %15, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @EffectSequence_crop_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceCrop, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EffectSequence_use_proxy_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @EffectSequence_use_proxy_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  br i1 %5, label %23, label %8

8:                                                ; preds = %2
  %9 = or i32 %7, 32768
  store i32 %9, ptr %6, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !251
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 1040, ptr noundef nonnull @.str.519) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.Strip, ptr %18, i64 0, i32 8
  store ptr %17, ptr %19, align 8, !tbaa !251
  %20 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 4
  store i16 90, ptr %20, align 2, !tbaa !66
  %21 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 6
  store i16 15, ptr %21, align 2, !tbaa !65
  %22 = getelementptr inbounds %struct.StripProxy, ptr %17, i64 0, i32 5
  store i16 1, ptr %22, align 4, !tbaa !64
  br label %25

23:                                               ; preds = %2
  %24 = xor i32 %7, 32768
  store i32 %24, ptr %6, align 8, !tbaa !101
  br label %25

25:                                               ; preds = %8, %15, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @EffectSequence_proxy_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceProxy, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EffectSequence_use_proxy_custom_directory_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EffectSequence_use_proxy_custom_directory_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -524289
  %9 = select i1 %5, i32 0, i32 524288
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EffectSequence_use_proxy_custom_file_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EffectSequence_use_proxy_custom_file_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, -2097153
  %9 = select i1 %5, i32 0, i32 2097152
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @AddSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @AddSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AddSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AddSequence_input_2_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AddSequence_input_2_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  store ptr %6, ptr %7, align 8, !tbaa !302
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @AdjustmentSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AdjustmentSequence_animation_offset_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 44
  %5 = load i32, ptr %4, align 8, !tbaa !252
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @AdjustmentSequence_animation_offset_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 44
  %9 = load i32, ptr %8, align 8, !tbaa !252
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 8, !tbaa !252
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @AdjustmentSequence_animation_offset_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 45
  %5 = load i32, ptr %4, align 4, !tbaa !253
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @AdjustmentSequence_animation_offset_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 45
  %9 = load i32, ptr %8, align 4, !tbaa !253
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 4, !tbaa !253
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @AlphaOverSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @AlphaOverSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AlphaOverSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AlphaOverSequence_input_2_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AlphaOverSequence_input_2_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  store ptr %6, ptr %7, align 8, !tbaa !302
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @AlphaUnderSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @AlphaUnderSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AlphaUnderSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AlphaUnderSequence_input_2_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @AlphaUnderSequence_input_2_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  store ptr %6, ptr %7, align 8, !tbaa !302
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorSequence_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i64 [ 0, %2 ], [ %12, %7 ]
  %9 = getelementptr inbounds float, ptr %6, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = getelementptr inbounds float, ptr %1, i64 %8
  store float %10, ptr %11, align 4, !tbaa !46
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, 3
  br i1 %13, label %14, label %7, !llvm.loop !304

14:                                               ; preds = %7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorSequence_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  br label %7

7:                                                ; preds = %2, %15
  %8 = phi i64 [ 0, %2 ], [ %18, %15 ]
  %9 = getelementptr inbounds float, ptr %1, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = fcmp olt float %10, 0.000000e+00
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = fcmp ogt float %10, 0x47EFFFFFE0000000
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14, %12, %7
  %16 = phi float [ 0.000000e+00, %7 ], [ %10, %14 ], [ 0x47EFFFFFE0000000, %12 ]
  %17 = getelementptr inbounds float, ptr %6, i64 %8
  store float %16, ptr %17, align 4, !tbaa !46
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %20, label %7, !llvm.loop !305

20:                                               ; preds = %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CrossSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @CrossSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CrossSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CrossSequence_input_2_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CrossSequence_input_2_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  store ptr %6, ptr %7, align 8, !tbaa !302
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GammaCrossSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @GammaCrossSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GammaCrossSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GammaCrossSequence_input_2_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GammaCrossSequence_input_2_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  store ptr %6, ptr %7, align 8, !tbaa !302
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GlowSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @GlowSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GlowSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GlowSequence_threshold_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = load float, ptr %5, align 4, !tbaa !306
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GlowSequence_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  store float %10, ptr %6, align 4, !tbaa !306
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GlowSequence_clamp_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.GlowVars, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !308
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GlowSequence_clamp_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.GlowVars, ptr %6, i64 0, i32 1
  store float %10, ptr %11, align 4, !tbaa !308
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GlowSequence_boost_factor_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.GlowVars, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !309
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GlowSequence_boost_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+01
  %9 = select i1 %8, float 1.000000e+01, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.GlowVars, ptr %6, i64 0, i32 2
  store float %10, ptr %11, align 4, !tbaa !309
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GlowSequence_blur_radius_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.GlowVars, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !310
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GlowSequence_blur_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, 5.000000e-01
  %8 = fcmp ogt float %1, 2.000000e+01
  %9 = select i1 %8, float 2.000000e+01, float %1
  %10 = select i1 %7, float 5.000000e-01, float %9
  %11 = getelementptr inbounds %struct.GlowVars, ptr %6, i64 0, i32 3
  store float %10, ptr %11, align 4, !tbaa !310
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GlowSequence_quality_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.GlowVars, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !311
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GlowSequence_quality_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 5)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %9 = getelementptr inbounds %struct.GlowVars, ptr %6, i64 0, i32 4
  store i32 %8, ptr %9, align 4, !tbaa !311
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GlowSequence_use_only_boost_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.GlowVars, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !312
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GlowSequence_use_only_boost_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = getelementptr inbounds %struct.GlowVars, ptr %6, i64 0, i32 5
  store i32 %1, ptr %7, align 4, !tbaa !312
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MulticamSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MulticamSequence_multicam_source_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !313
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MulticamSequence_multicam_source_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 31)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 22
  store i32 %6, ptr %7, align 8, !tbaa !313
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MulticamSequence_animation_offset_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 44
  %5 = load i32, ptr %4, align 8, !tbaa !252
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @MulticamSequence_animation_offset_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 44
  %9 = load i32, ptr %8, align 8, !tbaa !252
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 8, !tbaa !252
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MulticamSequence_animation_offset_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 45
  %5 = load i32, ptr %4, align 4, !tbaa !253
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @MulticamSequence_animation_offset_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 45
  %9 = load i32, ptr %8, align 4, !tbaa !253
  %10 = add nsw i32 %9, %7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  store i32 %11, ptr %8, align 4, !tbaa !253
  tail call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %4, i8 noundef zeroext 0) #17
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MultiplySequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @MultiplySequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MultiplySequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MultiplySequence_input_2_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MultiplySequence_input_2_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  store ptr %6, ptr %7, align 8, !tbaa !302
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OverDropSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @OverDropSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OverDropSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @OverDropSequence_input_2_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OverDropSequence_input_2_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  store ptr %6, ptr %7, align 8, !tbaa !302
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SpeedControlSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @SpeedControlSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpeedControlSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SpeedControlSequence_multiply_speed_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !314
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpeedControlSequence_multiply_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %9 = select i1 %8, float 0x47EFFFFFE0000000, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 1
  store float %10, ptr %11, align 8, !tbaa !314
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpeedControlSequence_use_as_speed_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !316
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpeedControlSequence_use_as_speed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !316
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !316
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SpeedControlSequence_scale_to_length_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !316
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SpeedControlSequence_scale_to_length_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !316
  %10 = and i32 %9, -5
  %11 = select i1 %7, i32 0, i32 4
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !316
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SubtractSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @SubtractSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SubtractSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SubtractSequence_input_2_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SubtractSequence_input_2_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 34
  store ptr %6, ptr %7, align 8, !tbaa !302
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TransformSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @TransformSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformSequence_scale_start_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = load float, ptr %5, align 4, !tbaa !317
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformSequence_scale_start_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %9 = select i1 %8, float 0x47EFFFFFE0000000, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  store float %10, ptr %6, align 4, !tbaa !317
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformSequence_scale_start_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.TransformVars, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !319
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformSequence_scale_start_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %9 = select i1 %8, float 0x47EFFFFFE0000000, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.TransformVars, ptr %6, i64 0, i32 1
  store float %10, ptr %11, align 4, !tbaa !319
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TransformSequence_use_uniform_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.TransformVars, ptr %5, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !320
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformSequence_use_uniform_scale_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = getelementptr inbounds %struct.TransformVars, ptr %6, i64 0, i32 7
  store i32 %1, ptr %7, align 4, !tbaa !320
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformSequence_translate_start_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.TransformVars, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !321
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformSequence_translate_start_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = getelementptr inbounds %struct.TransformVars, ptr %6, i64 0, i32 2
  store float %1, ptr %7, align 4, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformSequence_translate_start_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.TransformVars, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !322
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformSequence_translate_start_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = getelementptr inbounds %struct.TransformVars, ptr %6, i64 0, i32 3
  store float %1, ptr %7, align 4, !tbaa !322
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformSequence_rotation_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.TransformVars, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !323
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformSequence_rotation_start_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, -3.600000e+02
  %8 = fcmp ogt float %1, 3.600000e+02
  %9 = select i1 %8, float 3.600000e+02, float %1
  %10 = select i1 %7, float -3.600000e+02, float %9
  %11 = getelementptr inbounds %struct.TransformVars, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !323
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TransformSequence_translation_unit_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.TransformVars, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !324
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformSequence_translation_unit_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = getelementptr inbounds %struct.TransformVars, ptr %6, i64 0, i32 5
  store i32 %1, ptr %7, align 4, !tbaa !324
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TransformSequence_interpolation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.TransformVars, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !325
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformSequence_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = getelementptr inbounds %struct.TransformVars, ptr %6, i64 0, i32 6
  store i32 %1, ptr %7, align 4, !tbaa !325
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WipeSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @WipeSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WipeSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WipeSequence_blur_width_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = load float, ptr %5, align 4, !tbaa !326
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WipeSequence_blur_width_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  store float %10, ptr %6, align 4, !tbaa !326
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WipeSequence_angle_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.WipeVars, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !328
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WipeSequence_angle_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, 0xBFF921FB60000000
  %8 = fcmp ogt float %1, 0x3FF921FB60000000
  %9 = select i1 %8, float 0x3FF921FB60000000, float %1
  %10 = select i1 %7, float 0xBFF921FB60000000, float %9
  %11 = getelementptr inbounds %struct.WipeVars, ptr %6, i64 0, i32 1
  store float %10, ptr %11, align 4, !tbaa !328
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WipeSequence_direction_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.WipeVars, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !329
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WipeSequence_direction_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.WipeVars, ptr %6, i64 0, i32 2
  store i16 %7, ptr %8, align 4, !tbaa !329
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WipeSequence_transition_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.WipeVars, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !330
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WipeSequence_transition_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.WipeVars, ptr %6, i64 0, i32 3
  store i16 %7, ptr %8, align 2, !tbaa !330
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GaussianBlurSequence_input_count_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @GaussianBlurSequence_input_1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GaussianBlurSequence_input_1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 33
  store ptr %6, ptr %7, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GaussianBlurSequence_size_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = load float, ptr %5, align 4, !tbaa !331
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GaussianBlurSequence_size_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %9 = select i1 %8, float 0x47EFFFFFE0000000, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  store float %10, ptr %6, align 4, !tbaa !331
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GaussianBlurSequence_size_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.GaussianBlurVars, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !333
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GaussianBlurSequence_size_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %9 = select i1 %8, float 0x47EFFFFFE0000000, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.GaussianBlurVars, ptr %6, i64 0, i32 1
  store float %10, ptr %11, align 4, !tbaa !333
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifier_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SequenceModifier_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SequenceModifier_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifier_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifier_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SequenceModifier_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifier_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #17
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifier_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.SequenceSearchData, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %0, align 8, !tbaa !76
  %9 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %8, i8 noundef zeroext 0) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !334
  %10 = getelementptr inbounds %struct.SequenceSearchData, ptr %3, i64 0, i32 1
  store ptr %7, ptr %10, align 8, !tbaa !336
  %11 = getelementptr inbounds %struct.Editing, ptr %9, i64 0, i32 1
  %12 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %11, ptr noundef nonnull @modifier_seq_cmp_cb, ptr noundef nonnull %3) #17
  %13 = load ptr, ptr %3, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %14 = getelementptr inbounds %struct.SequenceModifierData, ptr %7, i64 0, i32 4
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %14, ptr noundef %1, i64 noundef 64) #17
  call void @BKE_sequence_modifier_unique_name(ptr noundef %13, ptr noundef %7) #17
  %17 = call ptr @BKE_animdata_from_id(ptr noundef %8) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #17
  %20 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 4, i64 2
  %21 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.520, ptr noundef nonnull %20) #17
  call void @BKE_animdata_fix_paths_rename(ptr noundef %8, ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %14, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #17
  br label %22

22:                                               ; preds = %2, %19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceModifier_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SequenceModifierData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !337
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceModifier_mute_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SequenceModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !339
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceModifier_mute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SequenceModifierData, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !339
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !339
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceModifier_show_expanded_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SequenceModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !339
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceModifier_show_expanded_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SequenceModifierData, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !339
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !339
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SequenceModifier_input_mask_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SequenceModifierData, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !340
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceModifier_input_mask_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SequenceModifierData, ptr %4, i64 0, i32 5
  store i32 %1, ptr %5, align 8, !tbaa !340
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifier_input_mask_strip_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SequenceModifierData, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !341
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SequenceModifier_input_mask_strip_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.SequenceModifierData, ptr %4, i64 0, i32 7
  store ptr %6, ptr %7, align 8, !tbaa !341
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifier_input_mask_id_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SequenceModifierData, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !342
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Mask, ptr noundef %6) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifier_input_mask_id_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SequenceModifierData, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !342
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #17
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !342
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ColorBalanceModifier_color_balance_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %4, i64 0, i32 1
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SequenceColorBalanceData, ptr noundef nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ColorBalanceModifier_color_multiply_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !343
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ColorBalanceModifier_color_multiply_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !343
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurvesModifier_curve_mapping_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurvesModifierData, ptr %4, i64 0, i32 1
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapping, ptr noundef nonnull %5) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @HueCorrectModifier_curve_mapping_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %4, i64 0, i32 1
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapping, ptr noundef nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BrightContrastModifier_bright_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BrightContrastModifierData, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !345
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BrightContrastModifier_bright_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.BrightContrastModifierData, ptr %4, i64 0, i32 1
  store float %1, ptr %5, align 8, !tbaa !345
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BrightContrastModifier_contrast_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BrightContrastModifierData, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !347
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BrightContrastModifier_contrast_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.BrightContrastModifierData, ptr %4, i64 0, i32 2
  store float %1, ptr %5, align 4, !tbaa !347
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 1) #17
  br label %6

6:                                                ; preds = %3, %5
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef %1) #17
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_update_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !348
  %9 = load i32, ptr %8, align 4, !tbaa !107
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef %5, ptr noundef %7, i32 noundef 1, i32 noundef 1) #17
  br label %12

12:                                               ; preds = %4, %11
  tail call void @BKE_sequence_calc(ptr noundef %5, ptr noundef %7) #17
  tail call void @BKE_sequence_calc_disp(ptr noundef %5, ptr noundef %7) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_strip_elem_from_frame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_sequencer_give_stripelem(ptr noundef %0, i32 noundef %1) #17
  ret ptr %3
}

declare ptr @BKE_sequencer_give_stripelem(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_strip_elem_from_frame_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !348
  %8 = load i32, ptr %7, align 4, !tbaa !107
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = tail call ptr @BKE_sequencer_give_stripelem(ptr noundef %6, i32 noundef %8) #17
  store ptr %10, ptr %9, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_swap(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = call i32 @BKE_sequence_swap(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !35
  call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef %8) #17
  br label %9

9:                                                ; preds = %3, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_swap_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !348
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %10 = call i32 @BKE_sequence_swap(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %5) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !tbaa !35
  call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef %13) #17
  br label %14

14:                                               ; preds = %4, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SequenceModifiers_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @BKE_sequence_supports_modifiers(ptr noundef %0) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.521) #17
  br label %12

9:                                                ; preds = %5
  %10 = tail call ptr @CTX_data_scene(ptr noundef %1) #17
  %11 = tail call ptr @BKE_sequence_modifier_new(ptr noundef %0, ptr noundef %3, i32 noundef %4) #17
  tail call void @BKE_sequence_invalidate_cache_for_modifier(ptr noundef %10, ptr noundef %0) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef null) #17
  br label %12

12:                                               ; preds = %8, %9
  %13 = phi ptr [ %11, %9 ], [ null, %8 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifiers_new_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !348
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !107
  %11 = tail call i32 @BKE_sequence_supports_modifiers(ptr noundef %6) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.521) #17
  br label %17

14:                                               ; preds = %4
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %16 = tail call ptr @BKE_sequence_modifier_new(ptr noundef %6, ptr noundef %8, i32 noundef %10) #17
  tail call void @BKE_sequence_invalidate_cache_for_modifier(ptr noundef %15, ptr noundef %6) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef null) #17
  br label %17

17:                                               ; preds = %13, %14
  %18 = phi ptr [ %16, %14 ], [ null, %13 ]
  %19 = getelementptr inbounds i8, ptr %7, i64 12
  store ptr %18, ptr %19, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifiers_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = tail call ptr @CTX_data_scene(ptr noundef %1) #17
  %8 = tail call zeroext i8 @BKE_sequence_modifier_remove(ptr noundef %0, ptr noundef %6) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.522) #17
  br label %12

11:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @BKE_sequence_invalidate_cache_for_modifier(ptr noundef %7, ptr noundef %0) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef null) #17
  br label %12

12:                                               ; preds = %10, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifiers_remove_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !348
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %12 = tail call zeroext i8 @BKE_sequence_modifier_remove(ptr noundef %6, ptr noundef %10) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.522) #17
  br label %16

15:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @BKE_sequence_invalidate_cache_for_modifier(ptr noundef %11, ptr noundef %6) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef null) #17
  br label %16

16:                                               ; preds = %14, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifiers_clear(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %1) #17
  tail call void @BKE_sequence_modifier_clear(ptr noundef %0) #17
  tail call void @BKE_sequence_invalidate_cache_for_modifier(ptr noundef %3, ptr noundef %0) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef null) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceModifiers_clear_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  tail call void @BKE_sequence_modifier_clear(ptr noundef %6) #17
  tail call void @BKE_sequence_invalidate_cache_for_modifier(ptr noundef %7, ptr noundef %6) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef null) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequences_new_clip(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %1, align 8, !tbaa !350
  %9 = tail call ptr @BKE_sequence_alloc(ptr noundef %8, i32 noundef %5, i32 noundef %4) #17
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 6
  store i32 6, ptr %10, align 4, !tbaa !99
  %11 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 4, i64 2
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef %2, i64 noundef 62) #17
  %13 = getelementptr inbounds %struct.Editing, ptr %1, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %13, ptr noundef %9) #17
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %15 = tail call ptr %14(i64 noundef 904, ptr noundef nonnull @.str.523) #17
  %16 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 24
  store ptr %15, ptr %16, align 8, !tbaa !225
  %17 = getelementptr inbounds %struct.Strip, ptr %15, i64 0, i32 2
  store i32 1, ptr %17, align 8, !tbaa !351
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %19 = tail call ptr %18(i64 noundef 264, ptr noundef nonnull @.str.524) #17
  %20 = getelementptr inbounds %struct.Strip, ptr %15, i64 0, i32 6
  store ptr %19, ptr %20, align 8, !tbaa !226
  %21 = getelementptr inbounds %struct.Strip, ptr %15, i64 0, i32 7
  tail call void @BLI_split_dirfile(ptr noundef nonnull %7, ptr noundef nonnull %21, ptr noundef %19, i64 noundef 768, i64 noundef 256) #17
  tail call void @BKE_sequence_init_colorspace(ptr noundef %9) #17
  %22 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 28
  store ptr %3, ptr %22, align 8, !tbaa !352
  %23 = tail call i32 @BKE_movieclip_get_duration(ptr noundef %3) #17
  %24 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 7
  store i32 %23, ptr %24, align 8, !tbaa !103
  tail call void @id_us_plus(ptr noundef %3) #17
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %9) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %0) #17
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_new_clip_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !348
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds i8, ptr %8, i64 16
  %13 = load i32, ptr %12, align 4, !tbaa !107
  %14 = getelementptr inbounds i8, ptr %8, i64 20
  %15 = load i32, ptr %14, align 4, !tbaa !107
  %16 = getelementptr inbounds i8, ptr %8, i64 24
  %17 = getelementptr inbounds %struct.MovieClip, ptr %11, i64 0, i32 2
  %18 = load ptr, ptr %7, align 8, !tbaa !350
  %19 = tail call ptr @BKE_sequence_alloc(ptr noundef %18, i32 noundef %15, i32 noundef %13) #17
  %20 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 6
  store i32 6, ptr %20, align 4, !tbaa !99
  %21 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 4, i64 2
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef %9, i64 noundef 62) #17
  %23 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %23, ptr noundef %19) #17
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %25 = tail call ptr %24(i64 noundef 904, ptr noundef nonnull @.str.523) #17
  %26 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 24
  store ptr %25, ptr %26, align 8, !tbaa !225
  %27 = getelementptr inbounds %struct.Strip, ptr %25, i64 0, i32 2
  store i32 1, ptr %27, align 8, !tbaa !351
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %29 = tail call ptr %28(i64 noundef 264, ptr noundef nonnull @.str.524) #17
  %30 = getelementptr inbounds %struct.Strip, ptr %25, i64 0, i32 6
  store ptr %29, ptr %30, align 8, !tbaa !226
  %31 = getelementptr inbounds %struct.Strip, ptr %25, i64 0, i32 7
  tail call void @BLI_split_dirfile(ptr noundef nonnull %17, ptr noundef nonnull %31, ptr noundef %29, i64 noundef 768, i64 noundef 256) #17
  tail call void @BKE_sequence_init_colorspace(ptr noundef %19) #17
  %32 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 28
  store ptr %11, ptr %32, align 8, !tbaa !352
  %33 = tail call i32 @BKE_movieclip_get_duration(ptr noundef %11) #17
  %34 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 7
  store i32 %33, ptr %34, align 8, !tbaa !103
  tail call void @id_us_plus(ptr noundef %11) #17
  tail call void @BKE_sequence_calc_disp(ptr noundef %5, ptr noundef %19) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %5) #17
  store ptr %19, ptr %16, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequences_new_mask(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %1, align 8, !tbaa !350
  %9 = tail call ptr @BKE_sequence_alloc(ptr noundef %8, i32 noundef %5, i32 noundef %4) #17
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 6
  store i32 7, ptr %10, align 4, !tbaa !99
  %11 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 4, i64 2
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef %2, i64 noundef 62) #17
  %13 = getelementptr inbounds %struct.Editing, ptr %1, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %13, ptr noundef %9) #17
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %15 = tail call ptr %14(i64 noundef 904, ptr noundef nonnull @.str.523) #17
  %16 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 24
  store ptr %15, ptr %16, align 8, !tbaa !225
  %17 = getelementptr inbounds %struct.Strip, ptr %15, i64 0, i32 2
  store i32 1, ptr %17, align 8, !tbaa !351
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %19 = tail call ptr %18(i64 noundef 264, ptr noundef nonnull @.str.524) #17
  %20 = getelementptr inbounds %struct.Strip, ptr %15, i64 0, i32 6
  store ptr %19, ptr %20, align 8, !tbaa !226
  %21 = getelementptr inbounds %struct.Strip, ptr %15, i64 0, i32 7
  tail call void @BLI_split_dirfile(ptr noundef nonnull %7, ptr noundef nonnull %21, ptr noundef %19, i64 noundef 768, i64 noundef 256) #17
  tail call void @BKE_sequence_init_colorspace(ptr noundef %9) #17
  %22 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 29
  store ptr %3, ptr %22, align 8, !tbaa !297
  %23 = tail call i32 @BKE_mask_get_duration(ptr noundef %3) #17
  %24 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 7
  store i32 %23, ptr %24, align 8, !tbaa !103
  tail call void @id_us_plus(ptr noundef %3) #17
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %9) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %0) #17
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_new_mask_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !348
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds i8, ptr %8, i64 16
  %13 = load i32, ptr %12, align 4, !tbaa !107
  %14 = getelementptr inbounds i8, ptr %8, i64 20
  %15 = load i32, ptr %14, align 4, !tbaa !107
  %16 = getelementptr inbounds i8, ptr %8, i64 24
  %17 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %18 = load ptr, ptr %7, align 8, !tbaa !350
  %19 = tail call ptr @BKE_sequence_alloc(ptr noundef %18, i32 noundef %15, i32 noundef %13) #17
  %20 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 6
  store i32 7, ptr %20, align 4, !tbaa !99
  %21 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 4, i64 2
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef %9, i64 noundef 62) #17
  %23 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %23, ptr noundef %19) #17
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %25 = tail call ptr %24(i64 noundef 904, ptr noundef nonnull @.str.523) #17
  %26 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 24
  store ptr %25, ptr %26, align 8, !tbaa !225
  %27 = getelementptr inbounds %struct.Strip, ptr %25, i64 0, i32 2
  store i32 1, ptr %27, align 8, !tbaa !351
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %29 = tail call ptr %28(i64 noundef 264, ptr noundef nonnull @.str.524) #17
  %30 = getelementptr inbounds %struct.Strip, ptr %25, i64 0, i32 6
  store ptr %29, ptr %30, align 8, !tbaa !226
  %31 = getelementptr inbounds %struct.Strip, ptr %25, i64 0, i32 7
  tail call void @BLI_split_dirfile(ptr noundef nonnull %17, ptr noundef nonnull %31, ptr noundef %29, i64 noundef 768, i64 noundef 256) #17
  tail call void @BKE_sequence_init_colorspace(ptr noundef %19) #17
  %32 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 29
  store ptr %11, ptr %32, align 8, !tbaa !297
  %33 = tail call i32 @BKE_mask_get_duration(ptr noundef %11) #17
  %34 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 7
  store i32 %33, ptr %34, align 8, !tbaa !103
  tail call void @id_us_plus(ptr noundef %11) #17
  tail call void @BKE_sequence_calc_disp(ptr noundef %5, ptr noundef %19) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %5) #17
  store ptr %19, ptr %16, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequences_new_scene(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr %1, align 8, !tbaa !350
  %8 = tail call ptr @BKE_sequence_alloc(ptr noundef %7, i32 noundef %5, i32 noundef %4) #17
  %9 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 6
  store i32 2, ptr %9, align 4, !tbaa !99
  %10 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 4, i64 2
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %2, i64 noundef 62) #17
  %12 = getelementptr inbounds %struct.Editing, ptr %1, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %12, ptr noundef %8) #17
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %14 = tail call ptr %13(i64 noundef 904, ptr noundef nonnull @.str.523) #17
  %15 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 24
  store ptr %14, ptr %15, align 8, !tbaa !225
  %16 = getelementptr inbounds %struct.Strip, ptr %14, i64 0, i32 2
  store i32 1, ptr %16, align 8, !tbaa !351
  %17 = getelementptr inbounds %struct.Strip, ptr %14, i64 0, i32 6
  store ptr null, ptr %17, align 8, !tbaa !226
  %18 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 26
  store ptr %3, ptr %18, align 8, !tbaa !275
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !353
  %21 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !354
  %23 = sub nsw i32 %20, %22
  %24 = add nsw i32 %23, 1
  %25 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 7
  store i32 %24, ptr %25, align 8, !tbaa !103
  %26 = add nsw i32 %24, %5
  %27 = tail call ptr @sound_scene_add_scene_sound(ptr noundef %0, ptr noundef %8, i32 noundef %5, i32 noundef %26, i32 noundef 0) #17
  %28 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 38
  store ptr %27, ptr %28, align 8, !tbaa !295
  tail call void @id_us_plus(ptr noundef %3) #17
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %8) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %0) #17
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_new_scene_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !348
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds i8, ptr %8, i64 16
  %13 = load i32, ptr %12, align 4, !tbaa !107
  %14 = getelementptr inbounds i8, ptr %8, i64 20
  %15 = load i32, ptr %14, align 4, !tbaa !107
  %16 = getelementptr inbounds i8, ptr %8, i64 24
  %17 = load ptr, ptr %7, align 8, !tbaa !350
  %18 = tail call ptr @BKE_sequence_alloc(ptr noundef %17, i32 noundef %15, i32 noundef %13) #17
  %19 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 6
  store i32 2, ptr %19, align 4, !tbaa !99
  %20 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 4, i64 2
  %21 = tail call ptr @BLI_strncpy(ptr noundef nonnull %20, ptr noundef %9, i64 noundef 62) #17
  %22 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %22, ptr noundef %18) #17
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %24 = tail call ptr %23(i64 noundef 904, ptr noundef nonnull @.str.523) #17
  %25 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 24
  store ptr %24, ptr %25, align 8, !tbaa !225
  %26 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 2
  store i32 1, ptr %26, align 8, !tbaa !351
  %27 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 6
  store ptr null, ptr %27, align 8, !tbaa !226
  %28 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 26
  store ptr %11, ptr %28, align 8, !tbaa !275
  %29 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !353
  %31 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !354
  %33 = sub nsw i32 %30, %32
  %34 = add nsw i32 %33, 1
  %35 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 7
  store i32 %34, ptr %35, align 8, !tbaa !103
  %36 = add nsw i32 %34, %15
  %37 = tail call ptr @sound_scene_add_scene_sound(ptr noundef %5, ptr noundef %18, i32 noundef %15, i32 noundef %36, i32 noundef 0) #17
  %38 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 38
  store ptr %37, ptr %38, align 8, !tbaa !295
  tail call void @id_us_plus(ptr noundef %11) #17
  tail call void @BKE_sequence_calc_disp(ptr noundef %5, ptr noundef %18) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %5) #17
  store ptr %18, ptr %16, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequences_new_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc ptr @rna_Sequences_new_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rna_Sequences_new_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = tail call fastcc ptr @alloc_generic_sequence(ptr noundef %1, ptr noundef %3, i32 noundef %6, i32 noundef %5, i32 noundef 0, ptr noundef %4)
  %9 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 7
  store i32 1, ptr %9, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !226
  %14 = load i8, ptr %13, align 4, !tbaa !355
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.525) #17
  %17 = getelementptr inbounds %struct.Editing, ptr %1, i64 0, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %17, ptr noundef %8) #17
  tail call void @BKE_sequence_free(ptr noundef %0, ptr noundef %8) #17
  br label %19

18:                                               ; preds = %7
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %8) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %0) #17
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi ptr [ null, %16 ], [ %8, %18 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_new_image_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !348
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds i8, ptr %8, i64 16
  %13 = load i32, ptr %12, align 4, !tbaa !107
  %14 = getelementptr inbounds i8, ptr %8, i64 20
  %15 = load i32, ptr %14, align 4, !tbaa !107
  %16 = getelementptr inbounds i8, ptr %8, i64 24
  %17 = tail call fastcc ptr @rna_Sequences_new_image(ptr noundef %5, ptr noundef %7, ptr noundef %1, ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %15)
  store ptr %17, ptr %16, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequences_new_movie(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc ptr @rna_Sequences_new_movie(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rna_Sequences_new_movie(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = tail call ptr @openanim(ptr noundef %4, i32 noundef 1, i32 noundef 0, ptr noundef null) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.526) #17
  br label %19

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @alloc_generic_sequence(ptr noundef %1, ptr noundef %3, i32 noundef %6, i32 noundef %5, i32 noundef 3, ptr noundef %4)
  %13 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 30
  store ptr %8, ptr %13, align 8, !tbaa !356
  %14 = tail call i32 @IMB_anim_get_preseek(ptr noundef nonnull %8) #17
  %15 = trunc i32 %14 to i16
  %16 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 20
  store i16 %15, ptr %16, align 4, !tbaa !277
  %17 = tail call i32 @IMB_anim_get_duration(ptr noundef nonnull %8, i32 noundef 1) #17
  %18 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 7
  store i32 %17, ptr %18, align 8, !tbaa !103
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %12) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %0) #17
  br label %19

19:                                               ; preds = %11, %10
  %20 = phi ptr [ null, %10 ], [ %12, %11 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_new_movie_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !348
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds i8, ptr %8, i64 16
  %13 = load i32, ptr %12, align 4, !tbaa !107
  %14 = getelementptr inbounds i8, ptr %8, i64 20
  %15 = load i32, ptr %14, align 4, !tbaa !107
  %16 = getelementptr inbounds i8, ptr %8, i64 24
  %17 = tail call fastcc ptr @rna_Sequences_new_movie(ptr noundef %5, ptr noundef %7, ptr noundef %1, ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %15)
  store ptr %17, ptr %16, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @Sequences_new_sound(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.527) #17
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_new_sound_call(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !348
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #17
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.527) #17
  store ptr null, ptr %6, align 8, !tbaa !35
  ret void
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequences_new_effect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  %12 = tail call fastcc ptr @rna_Sequences_new_effect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10)
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rna_Sequences_new_effect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) unnamed_addr #0 {
  %12 = alloca %struct.SeqEffectHandle, align 8
  %13 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %4) #17
  switch i32 %13, label %32 [
    i32 0, label %14
    i32 1, label %17
    i32 2, label %20
    i32 3, label %25
  ]

14:                                               ; preds = %11
  %15 = icmp sgt i32 %7, %6
  br i1 %15, label %33, label %16

16:                                               ; preds = %14
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.528) #17
  br label %57

17:                                               ; preds = %11
  %18 = icmp eq ptr %8, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.529) #17
  br label %57

20:                                               ; preds = %11
  %21 = icmp eq ptr %8, null
  %22 = icmp eq ptr %9, null
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.530) #17
  br label %57

25:                                               ; preds = %11
  %26 = icmp eq ptr %8, null
  %27 = icmp eq ptr %9, null
  %28 = or i1 %26, %27
  %29 = icmp eq ptr %10, null
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.531) #17
  br label %57

32:                                               ; preds = %11
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.532, i32 noundef %13) #17
  br label %57

33:                                               ; preds = %25, %20, %17, %14
  %34 = load ptr, ptr %1, align 8, !tbaa !350
  %35 = tail call ptr @BKE_sequence_alloc(ptr noundef %34, i32 noundef %6, i32 noundef %5) #17
  %36 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 6
  store i32 %4, ptr %36, align 4, !tbaa !99
  %37 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 4, i64 2
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef %3, i64 noundef 62) #17
  %39 = getelementptr inbounds %struct.Editing, ptr %1, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %39, ptr noundef %35) #17
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %41 = tail call ptr %40(i64 noundef 904, ptr noundef nonnull @.str.523) #17
  %42 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 24
  store ptr %41, ptr %42, align 8, !tbaa !225
  %43 = getelementptr inbounds %struct.Strip, ptr %41, i64 0, i32 2
  store i32 1, ptr %43, align 8, !tbaa !351
  %44 = getelementptr inbounds %struct.Strip, ptr %41, i64 0, i32 6
  store ptr null, ptr %44, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %12) #17
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %12, ptr noundef %35) #17
  %45 = getelementptr inbounds i8, ptr %12, i64 8
  %46 = load ptr, ptr %45, align 8, !tbaa.struct !357
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %12) #17
  %47 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 33
  store ptr %8, ptr %47, align 8, !tbaa !301
  %48 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 34
  store ptr %9, ptr %48, align 8, !tbaa !302
  %49 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 35
  store ptr %10, ptr %49, align 8, !tbaa !358
  call void %46(ptr noundef %35) #17
  %50 = icmp eq ptr %8, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 7
  store i32 1, ptr %52, align 8, !tbaa !103
  call void @BKE_sequence_tx_set_final_right(ptr noundef %35, i32 noundef %7) #17
  br label %53

53:                                               ; preds = %51, %33
  %54 = getelementptr inbounds %struct.Sequence, ptr %35, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !101
  %56 = or i32 %55, 4194304
  store i32 %56, ptr %54, align 8, !tbaa !101
  call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %35) #17
  call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %0) #17
  br label %57

57:                                               ; preds = %53, %32, %31, %24, %19, %16
  %58 = phi ptr [ null, %32 ], [ null, %31 ], [ %35, %53 ], [ null, %24 ], [ null, %19 ], [ null, %16 ]
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_new_effect_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !348
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  %11 = load i32, ptr %10, align 4, !tbaa !107
  %12 = getelementptr inbounds i8, ptr %8, i64 12
  %13 = load i32, ptr %12, align 4, !tbaa !107
  %14 = getelementptr inbounds i8, ptr %8, i64 16
  %15 = load i32, ptr %14, align 4, !tbaa !107
  %16 = getelementptr inbounds i8, ptr %8, i64 20
  %17 = load i32, ptr %16, align 4, !tbaa !107
  %18 = getelementptr inbounds i8, ptr %8, i64 24
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds i8, ptr %8, i64 32
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds i8, ptr %8, i64 40
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds i8, ptr %8, i64 48
  %25 = tail call fastcc ptr @rna_Sequences_new_effect(ptr noundef %5, ptr noundef %7, ptr noundef %1, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  store ptr %25, ptr %24, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.Editing, ptr %1, i64 0, i32 1
  %8 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %7, ptr noundef %6) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 4, i64 2
  %12 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.533, ptr noundef nonnull %11, ptr noundef nonnull %12) #17
  br label %14

13:                                               ; preds = %4
  tail call void @BKE_sequence_free(ptr noundef %0, ptr noundef %6) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %0) #17
  br label %14

14:                                               ; preds = %10, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequences_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !348
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 1
  %13 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef nonnull %12, ptr noundef %11) #17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 4, i64 2
  %17 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.533, ptr noundef nonnull %16, ptr noundef nonnull %17) #17
  br label %19

18:                                               ; preds = %4
  tail call void @BKE_sequence_free(ptr noundef %5, ptr noundef %11) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %5) #17
  br label %19

19:                                               ; preds = %15, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @SequenceElements_append(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !226
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !103
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %12, 264
  %14 = tail call ptr %4(ptr noundef %8, i64 noundef %13, ptr noundef nonnull @__func__.rna_SequenceElements_append) #17
  %15 = load ptr, ptr %5, align 8, !tbaa !225
  %16 = getelementptr inbounds %struct.Strip, ptr %15, i64 0, i32 6
  store ptr %14, ptr %16, align 8, !tbaa !226
  %17 = load i32, ptr %9, align 8, !tbaa !103
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.StripElem, ptr %14, i64 %18
  %20 = tail call ptr @BLI_strncpy(ptr noundef %19, ptr noundef %2, i64 noundef 256) #17
  %21 = load i32, ptr %9, align 8, !tbaa !103
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %9, align 8, !tbaa !103
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %1) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %0) #17
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElements_append_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !348
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  %11 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !225
  %14 = getelementptr inbounds %struct.Strip, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !226
  %16 = getelementptr inbounds %struct.Sequence, ptr %7, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !103
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 264
  %21 = tail call ptr %11(ptr noundef %15, i64 noundef %20, ptr noundef nonnull @__func__.rna_SequenceElements_append) #17
  %22 = load ptr, ptr %12, align 8, !tbaa !225
  %23 = getelementptr inbounds %struct.Strip, ptr %22, i64 0, i32 6
  store ptr %21, ptr %23, align 8, !tbaa !226
  %24 = load i32, ptr %16, align 8, !tbaa !103
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.StripElem, ptr %21, i64 %25
  %27 = tail call ptr @BLI_strncpy(ptr noundef %26, ptr noundef %9, i64 noundef 256) #17
  %28 = load i32, ptr %16, align 8, !tbaa !103
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %16, align 8, !tbaa !103
  tail call void @BKE_sequence_calc_disp(ptr noundef %5, ptr noundef %7) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %5) #17
  store ptr %26, ptr %10, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElements_pop(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_SequenceElements_pop(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rna_SequenceElements_pop(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !103
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.534) #17
  br label %52

9:                                                ; preds = %4
  %10 = icmp slt i32 %3, 0
  %11 = select i1 %10, i32 %6, i32 0
  %12 = add nsw i32 %11, %3
  %13 = icmp sle i32 %6, %12
  %14 = icmp slt i32 %12, 0
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.535) #17
  br label %52

17:                                               ; preds = %9
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %19 = add nsw i32 %6, -1
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, 264
  %22 = tail call ptr %18(i64 noundef %21, ptr noundef nonnull @.str.536) #17
  %23 = load i32, ptr %5, align 8, !tbaa !103
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %5, align 8, !tbaa !103
  %25 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %26 = load ptr, ptr %25, align 8, !tbaa !225
  %27 = getelementptr inbounds %struct.Strip, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !226
  %29 = icmp sgt i32 %12, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = zext nneg i32 %12 to i64
  %32 = mul nuw nsw i64 %31, 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %22, ptr align 4 %28, i64 %32, i1 false)
  br label %33

33:                                               ; preds = %30, %17
  %34 = load i32, ptr %5, align 8, !tbaa !103
  %35 = icmp slt i32 %12, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = zext nneg i32 %12 to i64
  %38 = getelementptr inbounds %struct.StripElem, ptr %22, i64 %37
  %39 = sext i32 %12 to i64
  %40 = getelementptr %struct.StripElem, ptr %28, i64 %39
  %41 = getelementptr %struct.StripElem, ptr %40, i64 1
  %42 = sub nsw i32 %34, %12
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %38, ptr align 4 %41, i64 %44, i1 false)
  br label %45

45:                                               ; preds = %36, %33
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %47 = load ptr, ptr %25, align 8, !tbaa !225
  %48 = getelementptr inbounds %struct.Strip, ptr %47, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !226
  tail call void %46(ptr noundef %49) #17
  %50 = load ptr, ptr %25, align 8, !tbaa !225
  %51 = getelementptr inbounds %struct.Strip, ptr %50, i64 0, i32 6
  store ptr %22, ptr %51, align 8, !tbaa !226
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %1) #17
  tail call void @WM_main_add_notifier(i32 noundef 67502080, ptr noundef %0) #17
  br label %52

52:                                               ; preds = %45, %16, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SequenceElements_pop_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %3, align 8, !tbaa !348
  %9 = load i32, ptr %8, align 4, !tbaa !107
  tail call fastcc void @rna_SequenceElements_pop(ptr noundef %5, ptr noundef %7, ptr noundef %1, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_SequenceColorBalance_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.SequenceSearchData, align 8
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !334
  %9 = getelementptr inbounds %struct.SequenceSearchData, ptr %4, i64 0, i32 2
  store ptr null, ptr %9, align 8, !tbaa !359
  %10 = getelementptr inbounds %struct.SequenceSearchData, ptr %4, i64 0, i32 1
  store ptr %8, ptr %10, align 8, !tbaa !336
  %11 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  %12 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %11, ptr noundef nonnull @colbalance_seq_cmp_cb, ptr noundef nonnull %4) #17
  %13 = load ptr, ptr %9, align 8, !tbaa !359
  %14 = load ptr, ptr %4, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  call void @BKE_sequence_invalidate_cache(ptr noundef %5, ptr noundef %14) #17
  br label %18

17:                                               ; preds = %3
  call void @BKE_sequence_invalidate_cache_for_modifier(ptr noundef %5, ptr noundef %14) #17
  br label %18

18:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_SequenceColorBalance_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.SequenceSearchData, align 8
  %3 = alloca [124 x i8], align 16
  %4 = alloca [124 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !76
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 0) #17
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !334
  %10 = getelementptr inbounds %struct.SequenceSearchData, ptr %2, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !359
  %11 = getelementptr inbounds %struct.SequenceSearchData, ptr %2, i64 0, i32 1
  store ptr %9, ptr %11, align 8, !tbaa !336
  %12 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 1
  %13 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %12, ptr noundef nonnull @colbalance_seq_cmp_cb, ptr noundef nonnull %2) #17
  %14 = load ptr, ptr %10, align 8, !tbaa !359
  %15 = load ptr, ptr %2, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 4, i64 2
  br i1 %16, label %30, label %18

18:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %3) #17
  %19 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef nonnull %17, i64 noundef 124) #17
  %20 = icmp eq ptr %14, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.537, ptr noundef nonnull %3) #17
  br label %28

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #17
  %24 = call i64 @BLI_strescape(ptr noundef nonnull %4, ptr noundef nonnull %17, i64 noundef 124) #17
  %25 = getelementptr inbounds %struct.SequenceModifierData, ptr %14, i64 0, i32 4
  %26 = call i64 @BLI_strescape(ptr noundef nonnull %5, ptr noundef nonnull %25, i64 noundef 128) #17
  %27 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.538, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %4) #17
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi ptr [ %27, %23 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %3) #17
  br label %32

30:                                               ; preds = %1
  %31 = call ptr @BLI_strdup(ptr noundef nonnull @.str.2) #17
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %29, %28 ], [ %31, %30 ]
  ret ptr %33
}

; Function Attrs: nounwind uwtable
define internal void @rna_SequenceElement_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !76
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 1
  %11 = tail call ptr @BKE_sequencer_from_elem(ptr noundef nonnull %10, ptr noundef %9) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @BKE_sequence_invalidate_cache(ptr noundef %4, ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %7, %13, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_SequenceProxy_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.SequenceSearchData, align 8
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !334
  %9 = getelementptr inbounds %struct.SequenceSearchData, ptr %4, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !336
  %10 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  %11 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %10, ptr noundef nonnull @seqproxy_seq_cmp_cb, ptr noundef nonnull %4) #17
  %12 = load ptr, ptr %4, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @BKE_sequence_invalidate_cache(ptr noundef %5, ptr noundef %12) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Sequence_tcindex_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.SequenceSearchData, align 8
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !334
  %9 = getelementptr inbounds %struct.SequenceSearchData, ptr %4, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !336
  %10 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  %11 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %10, ptr noundef nonnull @seqproxy_seq_cmp_cb, ptr noundef nonnull %4) #17
  %12 = load ptr, ptr %4, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @BKE_sequence_reload_new_file(ptr noundef %5, ptr noundef %12, i8 noundef zeroext 0) #17
  call fastcc void @do_sequence_frame_change_update(ptr noundef %5, ptr noundef %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_SequenceCrop_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.SequenceSearchData, align 8
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !334
  %9 = getelementptr inbounds %struct.SequenceSearchData, ptr %4, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !336
  %10 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  %11 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %10, ptr noundef nonnull @crop_seq_cmp_cb, ptr noundef nonnull %4) #17
  %12 = load ptr, ptr %4, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @BKE_sequence_invalidate_cache(ptr noundef %5, ptr noundef %12) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_SequenceCrop_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.SequenceSearchData, align 8
  %3 = alloca [124 x i8], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !76
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #17
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !334
  %8 = getelementptr inbounds %struct.SequenceSearchData, ptr %2, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !336
  %9 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 1
  %10 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %9, ptr noundef nonnull @crop_seq_cmp_cb, ptr noundef nonnull %2) #17
  %11 = load ptr, ptr %2, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 4, i64 2
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %3) #17
  %15 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef nonnull %14, i64 noundef 124) #17
  %16 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.552, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %3) #17
  br label %19

17:                                               ; preds = %1
  %18 = call ptr @BLI_strdup(ptr noundef nonnull @.str.2) #17
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %16, %13 ], [ %18, %17 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define internal void @rna_SequenceTransform_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.SequenceSearchData, align 8
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !334
  %9 = getelementptr inbounds %struct.SequenceSearchData, ptr %4, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !336
  %10 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  %11 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %10, ptr noundef nonnull @transform_seq_cmp_cb, ptr noundef nonnull %4) #17
  %12 = load ptr, ptr %4, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @BKE_sequence_invalidate_cache(ptr noundef %5, ptr noundef %12) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_SequenceTransform_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.SequenceSearchData, align 8
  %3 = alloca [124 x i8], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !76
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #17
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !334
  %8 = getelementptr inbounds %struct.SequenceSearchData, ptr %2, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !336
  %9 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 1
  %10 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %9, ptr noundef nonnull @transform_seq_cmp_cb, ptr noundef nonnull %2) #17
  %11 = load ptr, ptr %2, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 4, i64 2
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %3) #17
  %15 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef nonnull %14, i64 noundef 124) #17
  %16 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.553, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %3) #17
  br label %19

17:                                               ; preds = %1
  %18 = call ptr @BLI_strdup(ptr noundef nonnull @.str.2) #17
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %16, %13 ], [ %18, %17 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define internal void @rna_Sequence_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !76
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  tail call void @BKE_sequence_invalidate_cache(ptr noundef %4, ptr noundef %9) #17
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Sequence_mute_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !76
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #17
  tail call void @BKE_sequencer_update_muting(ptr noundef %5) #17
  %6 = load ptr, ptr %2, align 8, !tbaa !76
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 0) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  tail call void @BKE_sequence_invalidate_cache(ptr noundef %6, ptr noundef %11) #17
  br label %12

12:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @rna_Sequence_frame_editable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = tail call i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %5) #17
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @rna_Sequence_frame_change_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  tail call fastcc void @do_sequence_frame_change_update(ptr noundef %4, ptr noundef %6)
  %7 = load ptr, ptr %2, align 8, !tbaa !76
  %8 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %7, i8 noundef zeroext 0) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8, !tbaa !45
  tail call void @BKE_sequence_invalidate_cache(ptr noundef %7, ptr noundef %11) #17
  br label %12

12:                                               ; preds = %3, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_Sequence_refine(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = icmp ult i32 %5, 41
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [41 x ptr], ptr @switch.table.rna_Sequence_refine, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %10, %7 ], [ @RNA_Sequence, %1 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_Sequence_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [124 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 4, i64 2
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %2) #17
  %6 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %5, i64 noundef 124) #17
  %7 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.596, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %2) #17
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal i32 @rna_SequenceEditor_elements_length(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.Strip, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !226
  %9 = tail call i64 %4(ptr noundef %8) #17
  %10 = udiv i64 %9, 264
  %11 = trunc i64 %10 to i32
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal void @rna_Sequence_update_reopen_files(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !76
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #17
  %6 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 1
  tail call void @BKE_sequencer_free_imbuf(ptr noundef %4, ptr noundef nonnull %6, i8 noundef zeroext 0) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !360
  %9 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %8, ptr noundef nonnull @RNA_SoundSequence) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @BKE_sequencer_update_sound_bounds(ptr noundef %4, ptr noundef %13) #17
  br label %14

14:                                               ; preds = %11, %3
  ret void
}

declare i32 @rna_Camera_object_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

; Function Attrs: nounwind uwtable
define internal void @rna_Sequence_filepath_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  tail call void @BKE_sequence_reload_new_file(ptr noundef %4, ptr noundef %6, i8 noundef zeroext 1) #17
  tail call void @BKE_sequence_calc(ptr noundef %4, ptr noundef %6) #17
  %7 = load ptr, ptr %2, align 8, !tbaa !76
  %8 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %7, i8 noundef zeroext 0) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8, !tbaa !45
  tail call void @BKE_sequence_invalidate_cache(ptr noundef %7, ptr noundef %11) #17
  br label %12

12:                                               ; preds = %3, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_SequenceModifier_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.SequenceSearchData, align 8
  %5 = load ptr, ptr %2, align 8, !tbaa !76
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !334
  %9 = getelementptr inbounds %struct.SequenceSearchData, ptr %4, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !336
  %10 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  %11 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %10, ptr noundef nonnull @modifier_seq_cmp_cb, ptr noundef nonnull %4) #17
  %12 = load ptr, ptr %4, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @BKE_sequence_invalidate_cache_for_modifier(ptr noundef %5, ptr noundef %12) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @rna_SequenceModifier_otherSequence_poll(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = alloca %struct.SequenceSearchData, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !76
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #17
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !334
  %8 = getelementptr inbounds %struct.SequenceSearchData, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !336
  %9 = getelementptr inbounds %struct.Editing, ptr %5, i64 0, i32 1
  %10 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %9, ptr noundef nonnull @modifier_seq_cmp_cb, ptr noundef nonnull %3) #17
  %11 = load ptr, ptr %3, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp ne ptr %11, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_SequenceModifier_refine(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SequenceModifierData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !337
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds [4 x ptr], ptr @switch.table.rna_SequenceModifier_refine, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %11, %8 ], [ @RNA_SequenceModifier, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_SequenceModifier_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.SequenceSearchData, align 8
  %3 = alloca [124 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #17
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !334
  %9 = getelementptr inbounds %struct.SequenceSearchData, ptr %2, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !336
  %10 = getelementptr inbounds %struct.Editing, ptr %6, i64 0, i32 1
  %11 = call i32 @BKE_sequencer_base_recursive_apply(ptr noundef nonnull %10, ptr noundef nonnull @modifier_seq_cmp_cb, ptr noundef nonnull %2) #17
  %12 = load ptr, ptr %2, align 8, !tbaa !334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 4, i64 2
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #17
  %16 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef nonnull %15, i64 noundef 124) #17
  %17 = getelementptr inbounds %struct.SequenceModifierData, ptr %8, i64 0, i32 4
  %18 = call i64 @BLI_strescape(ptr noundef nonnull %4, ptr noundef nonnull %17, i64 noundef 128) #17
  %19 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.632, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %3) #17
  br label %22

20:                                               ; preds = %1
  %21 = call ptr @BLI_strdup(ptr noundef nonnull @.str.2) #17
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %19, %14 ], [ %21, %20 ]
  ret ptr %23
}

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @IMB_free_anim(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_base_unique_name_recursive(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

declare void @BKE_animdata_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @BKE_sequence_tx_get_final_right(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @BKE_sequence_tx_get_final_left(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_sequence_tx_set_final_right(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @do_sequence_frame_change_update(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #17
  %4 = getelementptr inbounds %struct.Editing, ptr %3, i64 0, i32 1
  %5 = tail call ptr @BKE_sequence_seqbase(ptr noundef nonnull %4, ptr noundef %1) #17
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef %1) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %2, %22
  %9 = phi ptr [ %23, %22 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 33
  %11 = load ptr, ptr %10, align 8, !tbaa !301
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 34
  %15 = load ptr, ptr %14, align 8, !tbaa !302
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 35
  %19 = load ptr, ptr %18, align 8, !tbaa !358
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %13, %8
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %9) #17
  br label %22

22:                                               ; preds = %17, %21
  %23 = load ptr, ptr %9, align 8, !tbaa !35
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !361

25:                                               ; preds = %22, %2
  %26 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef nonnull %5, ptr noundef %1) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %0) #17
  br label %30

30:                                               ; preds = %28, %25
  tail call void @BKE_sequencer_sort(ptr noundef %0) #17
  ret void
}

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @BKE_sequence_seqbase(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_calc_disp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_calc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_sequence_test_overlap(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_sequence_base_shuffle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_sort(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_translate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_sequence_tx_set_final_left(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_sequence_single_fix(ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @meta_tmp_ref(ptr noundef %0, ptr noundef %1) unnamed_addr #15 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %13
  %5 = phi ptr [ %14, %13 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 2
  store ptr %0, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !99
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  tail call fastcc void @meta_tmp_ref(ptr noundef nonnull %5, ptr noundef %12)
  br label %13

13:                                               ; preds = %4, %10
  %14 = load ptr, ptr %5, align 8, !tbaa !169
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !llvm.loop !362

16:                                               ; preds = %13, %2
  ret void
}

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_reload_new_file(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sound_load(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sound_update_scene_sound(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sound_set_scene_sound_volume(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @sound_set_scene_sound_pitch(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @sound_set_scene_sound_pan(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @BKE_sequence_effect_get_num_inputs(i32 noundef) local_unnamed_addr #3

declare void @BKE_sequence_modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @BKE_sequencer_base_recursive_apply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_seq_cmp_cb(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  %4 = getelementptr inbounds %struct.SequenceSearchData, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !336
  %6 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %5) #17
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store ptr %0, ptr %1, align 8, !tbaa !334
  br label %9

9:                                                ; preds = %2, %8
  %10 = phi i32 [ -1, %8 ], [ 1, %2 ]
  ret i32 %10
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_update_changed_seq_and_deps(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BKE_sequence_swap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BKE_sequence_supports_modifiers(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_sequence_modifier_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_sequence_invalidate_cache_for_modifier(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_sequence_modifier_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_modifier_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @alloc_generic_sequence(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = load ptr, ptr %0, align 8, !tbaa !350
  %8 = tail call ptr @BKE_sequence_alloc(ptr noundef %7, i32 noundef %2, i32 noundef %3) #17
  %9 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 6
  store i32 %4, ptr %9, align 4, !tbaa !99
  %10 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 4, i64 2
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %1, i64 noundef 62) #17
  %12 = getelementptr inbounds %struct.Editing, ptr %0, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %12, ptr noundef %8) #17
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %14 = tail call ptr %13(i64 noundef 904, ptr noundef nonnull @.str.523) #17
  %15 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 24
  store ptr %14, ptr %15, align 8, !tbaa !225
  %16 = getelementptr inbounds %struct.Strip, ptr %14, i64 0, i32 2
  store i32 1, ptr %16, align 8, !tbaa !351
  %17 = icmp eq ptr %5, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %6
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %20 = tail call ptr %19(i64 noundef 264, ptr noundef nonnull @.str.524) #17
  %21 = getelementptr inbounds %struct.Strip, ptr %14, i64 0, i32 6
  store ptr %20, ptr %21, align 8, !tbaa !226
  %22 = getelementptr inbounds %struct.Strip, ptr %14, i64 0, i32 7
  tail call void @BLI_split_dirfile(ptr noundef nonnull %5, ptr noundef nonnull %22, ptr noundef %20, i64 noundef 768, i64 noundef 256) #17
  tail call void @BKE_sequence_init_colorspace(ptr noundef %8) #17
  br label %25

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Strip, ptr %14, i64 0, i32 6
  store ptr null, ptr %24, align 8, !tbaa !226
  br label %25

25:                                               ; preds = %23, %18
  ret ptr %8
}

declare i32 @BKE_movieclip_get_duration(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_sequence_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_sequence_init_colorspace(ptr noundef) local_unnamed_addr #3

declare i32 @BKE_mask_get_duration(ptr noundef) local_unnamed_addr #3

declare ptr @sound_scene_add_scene_sound(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @openanim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @IMB_anim_get_preseek(ptr noundef) local_unnamed_addr #3

declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @BKE_sequence_get_effect(ptr dead_on_unwind writable sret(%struct.SeqEffectHandle) align 8, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_remlink_safe(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_invalidate_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @colbalance_seq_cmp_cb(ptr noundef %0, ptr nocapture noundef %1) #5 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  %4 = load ptr, ptr %3, align 8, !tbaa !363
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SequenceSearchData, ptr %1, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %19
  %9 = phi ptr [ %4, %6 ], [ %20, %19 ]
  %10 = getelementptr inbounds %struct.SequenceModifierData, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !337
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %7, align 8, !tbaa !336
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  store ptr %0, ptr %1, align 8, !tbaa !334
  %18 = getelementptr inbounds %struct.SequenceSearchData, ptr %1, i64 0, i32 2
  store ptr %9, ptr %18, align 8, !tbaa !359
  br label %22

19:                                               ; preds = %13, %8
  %20 = load ptr, ptr %9, align 8, !tbaa !364
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !365

22:                                               ; preds = %19, %2, %17
  %23 = phi i32 [ -1, %17 ], [ 1, %2 ], [ 1, %19 ]
  ret i32 %23
}

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_sequencer_from_elem(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @seqproxy_seq_cmp_cb(ptr noundef %0, ptr nocapture noundef %1) #12 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !225
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Strip, ptr %4, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  %9 = getelementptr inbounds %struct.SequenceSearchData, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !336
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store ptr %0, ptr %1, align 8, !tbaa !334
  br label %13

13:                                               ; preds = %2, %6, %12
  %14 = phi i32 [ -1, %12 ], [ 1, %6 ], [ 1, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @crop_seq_cmp_cb(ptr noundef %0, ptr nocapture noundef %1) #12 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !225
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Strip, ptr %4, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  %9 = getelementptr inbounds %struct.SequenceSearchData, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !336
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store ptr %0, ptr %1, align 8, !tbaa !334
  br label %13

13:                                               ; preds = %2, %6, %12
  %14 = phi i32 [ -1, %12 ], [ 1, %6 ], [ 1, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @transform_seq_cmp_cb(ptr noundef %0, ptr nocapture noundef %1) #12 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !225
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Strip, ptr %4, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !249
  %9 = getelementptr inbounds %struct.SequenceSearchData, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !336
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store ptr %0, ptr %1, align 8, !tbaa !334
  br label %13

13:                                               ; preds = %2, %6, %12
  %14 = phi i32 [ -1, %12 ], [ 1, %6 ], [ 1, %2 ]
  ret i32 %14
}

declare void @BKE_sequencer_update_muting(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_free_imbuf(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_update_sound_bounds(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }

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
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 48}
!40 = !{!"CollectionPropertyIterator", !41, i64 0, !41, i64 24, !36, i64 48, !37, i64 56, !43, i64 96, !43, i64 100, !41, i64 104, !43, i64 128}
!41 = !{!"PointerRNA", !42, i64 0, !36, i64 8, !36, i64 16}
!42 = !{!"", !36, i64 0}
!43 = !{!"int", !37, i64 0}
!44 = !{!40, !43, i64 128}
!45 = !{!41, !36, i64 16}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !37, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = distinct !{!52, !49, !50}
!53 = distinct !{!53, !49, !50}
!54 = distinct !{!54, !49, !50}
!55 = distinct !{!55, !49, !50}
!56 = !{!57, !43, i64 36}
!57 = !{!"StripColorBalance", !37, i64 0, !37, i64 12, !37, i64 24, !43, i64 36, !43, i64 40}
!58 = !{!59, !43, i64 256}
!59 = !{!"StripElem", !37, i64 0, !43, i64 256, !43, i64 260}
!60 = !{!59, !43, i64 260}
!61 = !{!62, !36, i64 1024}
!62 = !{!"StripProxy", !37, i64 0, !37, i64 768, !36, i64 1024, !63, i64 1032, !63, i64 1034, !63, i64 1036, !63, i64 1038}
!63 = !{!"short", !37, i64 0}
!64 = !{!62, !63, i64 1036}
!65 = !{!62, !63, i64 1038}
!66 = !{!62, !63, i64 1034}
!67 = !{!62, !63, i64 1032}
!68 = !{!69, !43, i64 0}
!69 = !{!"StripCrop", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!70 = !{!69, !43, i64 4}
!71 = !{!69, !43, i64 8}
!72 = !{!69, !43, i64 12}
!73 = !{!74, !43, i64 0}
!74 = !{!"StripTransform", !43, i64 0, !43, i64 4}
!75 = !{!74, !43, i64 4}
!76 = !{!41, !36, i64 0}
!77 = !{!78, !36, i64 256}
!78 = !{!"Scene", !79, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !80, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !63, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !81, i64 280, !90, i64 4264, !80, i64 4296, !80, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !63, i64 4376, !63, i64 4378, !43, i64 4380, !80, i64 4384, !91, i64 4400, !92, i64 4416, !95, i64 4600, !36, i64 4608, !96, i64 4616, !36, i64 4640, !97, i64 4648, !97, i64 4656, !83, i64 4664, !84, i64 4824, !98, i64 4888, !36, i64 4952}
!79 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !63, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!80 = !{!"ListBase", !36, i64 0, !36, i64 8}
!81 = !{!"RenderData", !82, i64 0, !36, i64 248, !36, i64 256, !85, i64 264, !86, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !47, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !63, i64 432, !63, i64 434, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !63, i64 456, !63, i64 458, !63, i64 460, !63, i64 462, !63, i64 464, !63, i64 466, !43, i64 468, !63, i64 472, !63, i64 474, !63, i64 476, !63, i64 478, !63, i64 480, !63, i64 482, !43, i64 484, !43, i64 488, !63, i64 492, !63, i64 494, !43, i64 496, !43, i64 500, !63, i64 504, !63, i64 506, !63, i64 508, !63, i64 510, !63, i64 512, !37, i64 514, !37, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !63, i64 528, !63, i64 530, !63, i64 532, !63, i64 534, !63, i64 536, !63, i64 538, !63, i64 540, !63, i64 542, !87, i64 544, !87, i64 560, !88, i64 576, !80, i64 592, !63, i64 608, !63, i64 610, !47, i64 612, !47, i64 616, !47, i64 620, !47, i64 624, !43, i64 628, !47, i64 632, !47, i64 636, !47, i64 640, !47, i64 644, !63, i64 648, !63, i64 650, !63, i64 652, !63, i64 654, !63, i64 656, !63, i64 658, !47, i64 660, !47, i64 664, !63, i64 668, !63, i64 670, !47, i64 672, !47, i64 676, !37, i64 680, !43, i64 1704, !63, i64 1708, !63, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !43, i64 2520, !63, i64 2524, !63, i64 2526, !47, i64 2528, !47, i64 2532, !63, i64 2536, !63, i64 2538, !47, i64 2540, !63, i64 2544, !63, i64 2546, !43, i64 2548, !63, i64 2552, !63, i64 2554, !63, i64 2556, !63, i64 2558, !47, i64 2560, !47, i64 2564, !36, i64 2568, !43, i64 2576, !47, i64 2580, !37, i64 2584, !89, i64 2616, !43, i64 3976, !43, i64 3980}
!82 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !63, i64 8, !63, i64 10, !47, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !83, i64 24, !84, i64 184}
!83 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 72, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!84 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!85 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !63, i64 48, !63, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!86 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !47, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !36, i64 64}
!87 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!88 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!89 = !{!"BakeData", !82, i64 0, !37, i64 248, !63, i64 1272, !63, i64 1274, !63, i64 1276, !63, i64 1278, !47, i64 1280, !47, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!90 = !{!"AudioData", !43, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !43, i64 16, !63, i64 20, !63, i64 22, !47, i64 24, !47, i64 28}
!91 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!92 = !{!"GameData", !91, i64 0, !63, i64 16, !63, i64 18, !63, i64 20, !63, i64 22, !63, i64 24, !63, i64 26, !63, i64 28, !63, i64 30, !63, i64 32, !37, i64 34, !93, i64 40, !63, i64 64, !63, i64 66, !47, i64 68, !94, i64 72, !47, i64 128, !47, i64 132, !43, i64 136, !63, i64 140, !63, i64 142, !63, i64 144, !63, i64 146, !63, i64 148, !63, i64 150, !63, i64 152, !63, i64 154, !63, i64 156, !63, i64 158, !63, i64 160, !63, i64 162, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180}
!93 = !{!"GameDome", !63, i64 0, !63, i64 2, !63, i64 4, !63, i64 6, !47, i64 8, !47, i64 12, !36, i64 16}
!94 = !{!"RecastData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !43, i64 40, !47, i64 44, !47, i64 48, !63, i64 52, !63, i64 54}
!95 = !{!"UnitSettings", !47, i64 0, !37, i64 4, !37, i64 5, !63, i64 6}
!96 = !{!"PhysicsSettings", !37, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!97 = !{!"long", !37, i64 0}
!98 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!99 = !{!100, !43, i64 100}
!100 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !63, i64 156, !63, i64 158, !43, i64 160, !43, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !47, i64 224, !47, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !80, i64 256, !36, i64 272, !36, i64 280, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !36, i64 304, !43, i64 312, !43, i64 316, !43, i64 320, !47, i64 324, !43, i64 328, !37, i64 332, !37, i64 333, !80, i64 336}
!101 = !{!100, !43, i64 96}
!102 = !{!100, !43, i64 108}
!103 = !{!100, !43, i64 104}
!104 = !{!100, !43, i64 136}
!105 = !{!100, !43, i64 140}
!106 = !{!100, !43, i64 112}
!107 = !{!43, !43, i64 0}
!108 = !{!100, !43, i64 116}
!109 = !{!100, !43, i64 120}
!110 = !{!100, !43, i64 124}
!111 = !{!100, !43, i64 128}
!112 = !{!100, !43, i64 320}
!113 = !{!100, !47, i64 324}
!114 = !{!100, !47, i64 224}
!115 = !{!100, !47, i64 228}
!116 = !{!117}
!117 = distinct !{!117, !118, !"Sequence_modifiers_get: argument 0"}
!118 = distinct !{!118, !"Sequence_modifiers_get"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"Sequence_modifiers_get: argument 0"}
!121 = distinct !{!121, !"Sequence_modifiers_get"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"Sequence_modifiers_get: argument 0"}
!124 = distinct !{!124, !"Sequence_modifiers_get"}
!125 = !{!126, !36, i64 16}
!126 = !{!"ListBaseIterator", !36, i64 0, !43, i64 8, !36, i64 16}
!127 = !{!126, !36, i64 0}
!128 = distinct !{!128, !49, !50}
!129 = !{!130, !36, i64 0}
!130 = !{!"Link", !36, i64 0, !36, i64 8}
!131 = distinct !{!131, !49, !50}
!132 = !{!133}
!133 = distinct !{!133, !134, !"Sequence_modifiers_get: argument 0"}
!134 = distinct !{!134, !"Sequence_modifiers_get"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"Sequence_modifiers_get: argument 0"}
!137 = distinct !{!137, !"Sequence_modifiers_get"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"Sequence_modifiers_get: argument 0"}
!140 = distinct !{!140, !"Sequence_modifiers_get"}
!141 = distinct !{!141, !49, !50}
!142 = !{!143}
!143 = distinct !{!143, !144, !"SequenceEditor_sequences_get: argument 0"}
!144 = distinct !{!144, !"SequenceEditor_sequences_get"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"SequenceEditor_sequences_get: argument 0"}
!147 = distinct !{!147, !"SequenceEditor_sequences_get"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"SequenceEditor_sequences_get: argument 0"}
!150 = distinct !{!150, !"SequenceEditor_sequences_get"}
!151 = distinct !{!151, !49, !50}
!152 = distinct !{!152, !49, !50}
!153 = !{!154}
!154 = distinct !{!154, !155, !"SequenceEditor_sequences_get: argument 0"}
!155 = distinct !{!155, !"SequenceEditor_sequences_get"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"SequenceEditor_sequences_get: argument 0"}
!158 = distinct !{!158, !"SequenceEditor_sequences_get"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"SequenceEditor_sequences_get: argument 0"}
!161 = distinct !{!161, !"SequenceEditor_sequences_get"}
!162 = distinct !{!162, !49, !50}
!163 = !{!164, !36, i64 8}
!164 = !{!"Editing", !36, i64 0, !80, i64 8, !80, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !43, i64 2096, !43, i64 2100, !43, i64 2104, !43, i64 2108, !87, i64 2112}
!165 = !{!166}
!166 = distinct !{!166, !167, !"SequenceEditor_sequences_all_get: argument 0"}
!167 = distinct !{!167, !"SequenceEditor_sequences_all_get"}
!168 = !{!100, !36, i64 256}
!169 = !{!100, !36, i64 0}
!170 = !{!100, !36, i64 16}
!171 = distinct !{!171, !49, !50}
!172 = !{!173}
!173 = distinct !{!173, !174, !"SequenceEditor_sequences_all_get: argument 0"}
!174 = distinct !{!174, !"SequenceEditor_sequences_all_get"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"SequenceEditor_sequences_all_get: argument 0"}
!177 = distinct !{!177, !"SequenceEditor_sequences_all_get"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"SequenceEditor_sequences_all_get: argument 0"}
!180 = distinct !{!180, !"SequenceEditor_sequences_all_get"}
!181 = distinct !{!181, !49, !50}
!182 = !{!183, !185}
!183 = distinct !{!183, !184, !"rna_SequenceEditor_meta_stack_get: argument 0"}
!184 = distinct !{!184, !"rna_SequenceEditor_meta_stack_get"}
!185 = distinct !{!185, !186, !"SequenceEditor_meta_stack_get: argument 0"}
!186 = distinct !{!186, !"SequenceEditor_meta_stack_get"}
!187 = !{!188, !36, i64 24}
!188 = !{!"MetaStack", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32}
!189 = !{!190}
!190 = distinct !{!190, !191, !"rna_SequenceEditor_meta_stack_get: argument 0"}
!191 = distinct !{!191, !"rna_SequenceEditor_meta_stack_get"}
!192 = !{!193, !195}
!193 = distinct !{!193, !194, !"rna_SequenceEditor_meta_stack_get: argument 0"}
!194 = distinct !{!194, !"rna_SequenceEditor_meta_stack_get"}
!195 = distinct !{!195, !196, !"SequenceEditor_meta_stack_get: argument 0"}
!196 = distinct !{!196, !"SequenceEditor_meta_stack_get"}
!197 = !{!198, !200}
!198 = distinct !{!198, !199, !"rna_SequenceEditor_meta_stack_get: argument 0"}
!199 = distinct !{!199, !"rna_SequenceEditor_meta_stack_get"}
!200 = distinct !{!200, !201, !"SequenceEditor_meta_stack_get: argument 0"}
!201 = distinct !{!201, !"SequenceEditor_meta_stack_get"}
!202 = distinct !{!202, !49, !50}
!203 = distinct !{!203, !49, !50}
!204 = !{!205, !207}
!205 = distinct !{!205, !206, !"rna_SequenceEditor_meta_stack_get: argument 0"}
!206 = distinct !{!206, !"rna_SequenceEditor_meta_stack_get"}
!207 = distinct !{!207, !208, !"SequenceEditor_meta_stack_get: argument 0"}
!208 = distinct !{!208, !"SequenceEditor_meta_stack_get"}
!209 = !{!210, !212}
!210 = distinct !{!210, !211, !"rna_SequenceEditor_meta_stack_get: argument 0"}
!211 = distinct !{!211, !"rna_SequenceEditor_meta_stack_get"}
!212 = distinct !{!212, !213, !"SequenceEditor_meta_stack_get: argument 0"}
!213 = distinct !{!213, !"SequenceEditor_meta_stack_get"}
!214 = !{!215, !217}
!215 = distinct !{!215, !216, !"rna_SequenceEditor_meta_stack_get: argument 0"}
!216 = distinct !{!216, !"rna_SequenceEditor_meta_stack_get"}
!217 = distinct !{!217, !218, !"SequenceEditor_meta_stack_get: argument 0"}
!218 = distinct !{!218, !"SequenceEditor_meta_stack_get"}
!219 = distinct !{!219, !49, !50}
!220 = !{!164, !36, i64 40}
!221 = !{!164, !43, i64 2104}
!222 = !{!78, !43, i64 680}
!223 = !{!164, !43, i64 2096}
!224 = !{!164, !43, i64 2100}
!225 = !{!100, !36, i64 168}
!226 = !{!227, !36, i64 32}
!227 = !{!"Strip", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !98, i64 840}
!228 = !{!229}
!229 = distinct !{!229, !230, !"ImageSequence_elements_get: argument 0"}
!230 = distinct !{!230, !"ImageSequence_elements_get"}
!231 = !{!232}
!232 = distinct !{!232, !233, !"ImageSequence_elements_get: argument 0"}
!233 = distinct !{!233, !"ImageSequence_elements_get"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"ImageSequence_elements_get: argument 0"}
!236 = distinct !{!236, !"ImageSequence_elements_get"}
!237 = !{!238, !36, i64 32}
!238 = !{!"ArrayIterator", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 28, !36, i64 32}
!239 = distinct !{!239, !49, !50}
!240 = !{!238, !43, i64 24}
!241 = !{!238, !36, i64 0}
!242 = !{!243}
!243 = distinct !{!243, !244, !"ImageSequence_elements_get: argument 0"}
!244 = distinct !{!244, !"ImageSequence_elements_get"}
!245 = !{!100, !37, i64 332}
!246 = !{!100, !47, i64 148}
!247 = !{!100, !47, i64 144}
!248 = !{!100, !47, i64 300}
!249 = !{!227, !36, i64 824}
!250 = !{!227, !36, i64 816}
!251 = !{!227, !36, i64 808}
!252 = !{!100, !43, i64 312}
!253 = !{!100, !43, i64 316}
!254 = !{!255}
!255 = distinct !{!255, !256, !"MetaSequence_sequences_get: argument 0"}
!256 = distinct !{!256, !"MetaSequence_sequences_get"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"MetaSequence_sequences_get: argument 0"}
!259 = distinct !{!259, !"MetaSequence_sequences_get"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"MetaSequence_sequences_get: argument 0"}
!262 = distinct !{!262, !"MetaSequence_sequences_get"}
!263 = distinct !{!263, !49, !50}
!264 = distinct !{!264, !49, !50}
!265 = !{!266}
!266 = distinct !{!266, !267, !"MetaSequence_sequences_get: argument 0"}
!267 = distinct !{!267, !"MetaSequence_sequences_get"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"MetaSequence_sequences_get: argument 0"}
!270 = distinct !{!270, !"MetaSequence_sequences_get"}
!271 = !{!272}
!272 = distinct !{!272, !273, !"MetaSequence_sequences_get: argument 0"}
!273 = distinct !{!273, !"MetaSequence_sequences_get"}
!274 = distinct !{!274, !49, !50}
!275 = !{!100, !36, i64 184}
!276 = !{!100, !36, i64 192}
!277 = !{!100, !63, i64 156}
!278 = !{!100, !63, i64 158}
!279 = !{!280}
!280 = distinct !{!280, !281, !"MovieSequence_elements_get: argument 0"}
!281 = distinct !{!281, !"MovieSequence_elements_get"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"MovieSequence_elements_get: argument 0"}
!284 = distinct !{!284, !"MovieSequence_elements_get"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"MovieSequence_elements_get: argument 0"}
!287 = distinct !{!287, !"MovieSequence_elements_get"}
!288 = distinct !{!288, !49, !50}
!289 = !{!290}
!290 = distinct !{!290, !291, !"MovieSequence_elements_get: argument 0"}
!291 = distinct !{!291, !"MovieSequence_elements_get"}
!292 = !{!100, !36, i64 272}
!293 = !{!294, !36, i64 0}
!294 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !80, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !63, i64 2084, !63, i64 2086, !63, i64 2088, !37, i64 2090, !63, i64 2092, !43, i64 2096, !43, i64 2100, !37, i64 2104, !43, i64 2108, !43, i64 2112, !37, i64 2116}
!295 = !{!100, !36, i64 280}
!296 = !{!100, !43, i64 164}
!297 = !{!100, !36, i64 208}
!298 = !{!100, !47, i64 288}
!299 = !{!100, !47, i64 292}
!300 = !{!100, !47, i64 296}
!301 = !{!100, !36, i64 232}
!302 = !{!100, !36, i64 240}
!303 = !{!100, !36, i64 304}
!304 = distinct !{!304, !49, !50}
!305 = distinct !{!305, !49, !50}
!306 = !{!307, !47, i64 0}
!307 = !{!"GlowVars", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !43, i64 16, !43, i64 20}
!308 = !{!307, !47, i64 4}
!309 = !{!307, !47, i64 8}
!310 = !{!307, !47, i64 12}
!311 = !{!307, !43, i64 16}
!312 = !{!307, !43, i64 20}
!313 = !{!100, !43, i64 160}
!314 = !{!315, !47, i64 8}
!315 = !{!"SpeedControlVars", !36, i64 0, !47, i64 8, !43, i64 12, !43, i64 16, !43, i64 20}
!316 = !{!315, !43, i64 12}
!317 = !{!318, !47, i64 0}
!318 = !{!"TransformVars", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !43, i64 20, !43, i64 24, !43, i64 28}
!319 = !{!318, !47, i64 4}
!320 = !{!318, !43, i64 28}
!321 = !{!318, !47, i64 8}
!322 = !{!318, !47, i64 12}
!323 = !{!318, !47, i64 16}
!324 = !{!318, !43, i64 20}
!325 = !{!318, !43, i64 24}
!326 = !{!327, !47, i64 0}
!327 = !{!"WipeVars", !47, i64 0, !47, i64 4, !63, i64 8, !63, i64 10}
!328 = !{!327, !47, i64 4}
!329 = !{!327, !63, i64 8}
!330 = !{!327, !63, i64 10}
!331 = !{!332, !47, i64 0}
!332 = !{!"GaussianBlurVars", !47, i64 0, !47, i64 4}
!333 = !{!332, !47, i64 4}
!334 = !{!335, !36, i64 0}
!335 = !{!"SequenceSearchData", !36, i64 0, !36, i64 8, !36, i64 16}
!336 = !{!335, !36, i64 8}
!337 = !{!338, !43, i64 16}
!338 = !{!"SequenceModifierData", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !37, i64 24, !43, i64 88, !43, i64 92, !36, i64 96, !36, i64 104}
!339 = !{!338, !43, i64 20}
!340 = !{!338, !43, i64 88}
!341 = !{!338, !36, i64 96}
!342 = !{!338, !36, i64 104}
!343 = !{!344, !47, i64 156}
!344 = !{!"ColorBalanceModifierData", !338, i64 0, !57, i64 112, !47, i64 156}
!345 = !{!346, !47, i64 112}
!346 = !{!"BrightContrastModifierData", !338, i64 0, !47, i64 112, !47, i64 116}
!347 = !{!346, !47, i64 116}
!348 = !{!349, !36, i64 0}
!349 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!350 = !{!164, !36, i64 0}
!351 = !{!227, !43, i64 16}
!352 = !{!100, !36, i64 200}
!353 = !{!78, !43, i64 688}
!354 = !{!78, !43, i64 684}
!355 = !{!37, !37, i64 0}
!356 = !{!100, !36, i64 216}
!357 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 8, !35, i64 40, i64 8, !35, i64 48, i64 8, !35, i64 56, i64 8, !35, i64 64, i64 8, !35, i64 72, i64 8, !35, i64 80, i64 8, !35}
!358 = !{!100, !36, i64 248}
!359 = !{!335, !36, i64 16}
!360 = !{!41, !36, i64 8}
!361 = distinct !{!361, !49, !50}
!362 = distinct !{!362, !49, !50}
!363 = !{!100, !36, i64 336}
!364 = !{!338, !36, i64 0}
!365 = distinct !{!365, !49, !50}
