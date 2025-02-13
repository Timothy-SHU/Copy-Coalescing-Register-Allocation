; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_speaker_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_speaker_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Speaker = type { %struct.ID, ptr, ptr, float, float, float, float, float, float, float, float, float, float, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }

@RNA_Sound = external global %struct.StructRNA, align 8
@RNA_AnimData = external global %struct.StructRNA, align 8
@rna_Speaker_relative = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_sound, ptr @rna_Speaker_muted, i32 -1, ptr @.str.4, i32 2, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.7, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Speaker_relative_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"muted\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Mute\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Mute the speaker\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@rna_Speaker_muted = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_relative, ptr null, i32 -1, ptr @.str, i32 1, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Speaker_muted_get, ptr @Speaker_muted_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_Speaker_sound = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_volume_max, ptr @rna_Speaker_relative, i32 -1, ptr @.str.8, i32 8388673, ptr @.str.3, ptr @.str.9, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Speaker_sound_get, ptr @Speaker_sound_set, ptr null, ptr null, ptr @RNA_Sound }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Relative\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Whether the source is relative to the camera or not\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rna_Speaker_volume_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_volume_min, ptr @rna_Speaker_sound, i32 -1, ptr @.str.10, i32 8193, ptr @.str.11, ptr @.str.12, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 136, i32 4, ptr null, ptr null }, ptr @Speaker_volume_max_get, ptr @Speaker_volume_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Sound datablock used by this speaker\00", align 1
@rna_Speaker_volume_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_distance_max, ptr @rna_Speaker_volume_max, i32 -1, ptr @.str.13, i32 8193, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 140, i32 4, ptr null, ptr null }, ptr @Speaker_volume_min_get, ptr @Speaker_volume_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"volume_max\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Maximum Volume\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"Maximum volume, no matter how near the object is\00", align 1
@rna_Speaker_distance_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_distance_reference, ptr @rna_Speaker_volume_min, i32 -1, ptr @.str.16, i32 8193, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @Speaker_distance_max_get, ptr @Speaker_distance_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"volume_min\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Minimum Volume\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"Minimum volume, no matter how far away the object is\00", align 1
@rna_Speaker_distance_reference = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_attenuation, ptr @rna_Speaker_distance_max, i32 -1, ptr @.str.19, i32 8193, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @Speaker_distance_reference_get, ptr @Speaker_distance_reference_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"distance_max\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Maximum Distance\00", align 1
@.str.18 = private unnamed_addr constant [78 x i8] c"Maximum distance for volume calculation, no matter how far away the object is\00", align 1
@rna_Speaker_attenuation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_cone_angle_outer, ptr @rna_Speaker_distance_reference, i32 -1, ptr @.str.22, i32 8193, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 152, i32 4, ptr null, ptr null }, ptr @Speaker_attenuation_get, ptr @Speaker_attenuation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.19 = private unnamed_addr constant [19 x i8] c"distance_reference\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Reference Distance\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"Reference distance at which volume is 100 %\00", align 1
@rna_Speaker_cone_angle_outer = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_cone_angle_inner, ptr @rna_Speaker_attenuation, i32 -1, ptr @.str.25, i32 8193, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 156, i32 4, ptr null, ptr null }, ptr @Speaker_cone_angle_outer_get, ptr @Speaker_cone_angle_outer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 3.600000e+02, float 0.000000e+00, float 3.600000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"attenuation\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Attenuation\00", align 1
@.str.24 = private unnamed_addr constant [68 x i8] c"How strong the distance affects volume, depending on distance model\00", align 1
@rna_Speaker_cone_angle_inner = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_cone_volume_outer, ptr @rna_Speaker_cone_angle_outer, i32 -1, ptr @.str.28, i32 8193, ptr @.str.29, ptr @.str.30, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 160, i32 4, ptr null, ptr null }, ptr @Speaker_cone_angle_inner_get, ptr @Speaker_cone_angle_inner_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 3.600000e+02, float 0.000000e+00, float 3.600000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.25 = private unnamed_addr constant [17 x i8] c"cone_angle_outer\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Outer Cone Angle\00", align 1
@.str.27 = private unnamed_addr constant [148 x i8] c"Angle of the outer cone, in degrees, outside this cone the volume is the outer cone volume, between inner and outer cone the volume is interpolated\00", align 1
@rna_Speaker_cone_volume_outer = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_volume, ptr @rna_Speaker_cone_angle_inner, i32 -1, ptr @.str.31, i32 8193, ptr @.str.32, ptr @.str.33, i32 0, ptr @.str.7, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 164, i32 4, ptr null, ptr null }, ptr @Speaker_cone_volume_outer_get, ptr @Speaker_cone_volume_outer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.28 = private unnamed_addr constant [17 x i8] c"cone_angle_inner\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Inner Cone Angle\00", align 1
@.str.30 = private unnamed_addr constant [73 x i8] c"Angle of the inner cone, in degrees, inside the cone the volume is 100 %\00", align 1
@rna_Speaker_volume = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_pitch, ptr @rna_Speaker_cone_volume_outer, i32 -1, ptr @.str.34, i32 8195, ptr @.str.35, ptr @.str.36, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 168, i32 4, ptr null, ptr null }, ptr @Speaker_volume_get, ptr @Speaker_volume_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.31 = private unnamed_addr constant [18 x i8] c"cone_volume_outer\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Outer Cone Volume\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Volume outside the outer cone\00", align 1
@rna_Speaker_pitch = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Speaker_animation_data, ptr @rna_Speaker_volume, i32 -1, ptr @.str.37, i32 8195, ptr @.str.38, ptr @.str.39, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 172, i32 4, ptr null, ptr null }, ptr @Speaker_pitch_get, ptr @Speaker_pitch_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 1.000000e+01, float 0x3FB99999A0000000, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.34 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"How loud the sound is\00", align 1
@rna_Speaker_animation_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Speaker_pitch, i32 -1, ptr @.str.40, i32 8388608, ptr @.str.41, ptr @.str.42, i32 0, ptr @.str.7, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Speaker_animation_data_get, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@.str.37 = private unnamed_addr constant [6 x i8] c"pitch\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Pitch\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"Playback pitch of the sound\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"animation_data\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@RNA_TextLine = external global %struct.StructRNA, align 8
@RNA_SpaceClipEditor = external global %struct.StructRNA, align 8
@.str.43 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"Speaker datablock for 3D audio speaker objects\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Speaker = dso_local local_unnamed_addr global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_TextLine, ptr @RNA_SpaceClipEditor, ptr null, %struct.ListBase { ptr @rna_Speaker_muted, ptr @rna_Speaker_animation_data } }, ptr @.str.43, ptr null, ptr null, i32 7, ptr @.str.43, ptr @.str.44, ptr @.str.7, i32 90, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Speaker_muted_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Speaker_muted_set(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 8, !tbaa !40
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Speaker_relative_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Speaker_sound_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sound, ptr noundef %6) #5
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Speaker_sound_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #5
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #5
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Speaker_volume_max_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 8, !tbaa !47
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Speaker_volume_max_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Speaker_volume_min_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !48
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Speaker_volume_min_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Speaker_distance_max_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !49
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Speaker_distance_max_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Speaker_distance_reference_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 4, !tbaa !50
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Speaker_distance_reference_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Speaker_attenuation_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 8, !tbaa !51
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Speaker_attenuation_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Speaker_cone_angle_outer_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !52
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Speaker_cone_angle_outer_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 3.600000e+02
  %7 = select i1 %6, float 3.600000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Speaker_cone_angle_inner_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 8, !tbaa !53
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Speaker_cone_angle_inner_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 3.600000e+02
  %7 = select i1 %6, float 3.600000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Speaker_cone_volume_outer_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !54
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Speaker_cone_volume_outer_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Speaker_volume_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 8, !tbaa !55
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Speaker_volume_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Speaker_pitch_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Speaker, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !56
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Speaker_pitch_set(ptr nocapture noundef readonly %0, float noundef %1) #4 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3FB99999A0000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3FB99999A0000000, float %7
  %9 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 12
  store float %8, ptr %9, align 4, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Speaker_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Speaker, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #5
  ret void
}

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #3

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !43, i64 176}
!41 = !{!"Speaker", !42, i64 0, !37, i64 120, !37, i64 128, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !43, i64 176, !38, i64 178}
!42 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !37, i64 112}
!43 = !{!"short", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = !{!"float", !38, i64 0}
!46 = !{!41, !37, i64 128}
!47 = !{!41, !45, i64 136}
!48 = !{!41, !45, i64 140}
!49 = !{!41, !45, i64 144}
!50 = !{!41, !45, i64 148}
!51 = !{!41, !45, i64 152}
!52 = !{!41, !45, i64 156}
!53 = !{!41, !45, i64 160}
!54 = !{!41, !45, i64 164}
!55 = !{!41, !45, i64 168}
!56 = !{!41, !45, i64 172}
!57 = !{!41, !37, i64 120}
