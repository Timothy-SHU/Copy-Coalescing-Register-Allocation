; ModuleID = 'blender/source/blender/blenkernel/intern/seqmodifier.c'
source_filename = "blender/source/blender/blenkernel/intern/seqmodifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SequenceModifierTypeInfo = type { [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr }
%struct.SequenceModifierData = type { ptr, ptr, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.SeqRenderData = type { ptr, ptr, ptr, i32, i32, i32, i32, float, i8, i8 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ColorBalanceModifierData = type { %struct.SequenceModifierData, %struct.StripColorBalance, float }
%struct.StripColorBalance = type { [3 x float], [3 x float], [3 x float], i32, i32 }
%struct.CurvesModifierData = type { %struct.SequenceModifierData, %struct.CurveMapping }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.rctf = type { float, float, float, float }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.ModifierInitData = type { ptr, ptr, ptr, ptr }
%struct.ModifierThread = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.HueCorrectModifierData = type { %struct.SequenceModifierData, %struct.CurveMapping }
%struct.BrightContrastThreadData = type { float, float }
%struct.BrightContrastModifierData = type { %struct.SequenceModifierData, float, float }

@modifierTypesInit = internal unnamed_addr global i1 false, align 1
@modifiersTypes = internal unnamed_addr global [6 x ptr] zeroinitializer, align 16
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"sequence modifier\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@seqModifier_ColorBalance = internal global %struct.SequenceModifierTypeInfo { [64 x i8] c"Color Balance\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"ColorBalanceModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 160, ptr @colorBalance_init_data, ptr null, ptr null, ptr @colorBalance_apply }, align 8
@seqModifier_Curves = internal global %struct.SequenceModifierTypeInfo { [64 x i8] c"Curves\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"CurvesModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 496, ptr @curves_init_data, ptr @curves_free_data, ptr @curves_copy_data, ptr @curves_apply }, align 8
@seqModifier_HueCorrect = internal global %struct.SequenceModifierTypeInfo { [64 x i8] c"Hue Correct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"HueCorrectModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 496, ptr @hue_correct_init_data, ptr @hue_correct_free_data, ptr @hue_correct_copy_data, ptr @hue_correct_apply }, align 8
@seqModifier_BrightContrast = internal global %struct.SequenceModifierTypeInfo { [64 x i8] c"Bright/Contrast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"BrightContrastModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 120, ptr null, ptr null, ptr null, ptr @brightcontrast_apply }, align 8
@seqModifier_Mask = internal global %struct.SequenceModifierTypeInfo { [64 x i8] c"Mask\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"SequencerMaskModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 112, ptr null, ptr null, ptr null, ptr @maskmodifier_apply }, align 8
@__const.hue_correct_apply_threaded.mask = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequence_modifier_type_info_get(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @modifierTypesInit, align 1
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store ptr @seqModifier_ColorBalance, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 1), align 8, !tbaa !34
  store ptr @seqModifier_Curves, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 2), align 16, !tbaa !34
  store ptr @seqModifier_HueCorrect, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 3), align 8, !tbaa !34
  store ptr @seqModifier_BrightContrast, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 4), align 16, !tbaa !34
  store ptr @seqModifier_Mask, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 5), align 8, !tbaa !34
  store i1 true, ptr @modifierTypesInit, align 1
  br label %4

4:                                                ; preds = %3, %1
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [6 x ptr], ptr @modifiersTypes, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequence_modifier_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load i1, ptr @modifierTypesInit, align 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store ptr @seqModifier_ColorBalance, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 1), align 8, !tbaa !34
  store ptr @seqModifier_Curves, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 2), align 16, !tbaa !34
  store ptr @seqModifier_HueCorrect, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 3), align 8, !tbaa !34
  store ptr @seqModifier_BrightContrast, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 4), align 16, !tbaa !34
  store ptr @seqModifier_Mask, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 5), align 8, !tbaa !34
  store i1 true, ptr @modifierTypesInit, align 1
  br label %6

6:                                                ; preds = %3, %5
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [6 x ptr], ptr @modifiersTypes, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = sext i32 %12 to i64
  %14 = tail call ptr %10(i64 noundef %13, ptr noundef nonnull @.str) #12
  %15 = getelementptr inbounds %struct.SequenceModifierData, ptr %14, i64 0, i32 2
  store i32 %2, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.SequenceModifierData, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !43
  %18 = or i32 %17, 2
  store i32 %18, ptr %16, align 4, !tbaa !43
  %19 = icmp eq ptr %1, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i8, ptr %1, align 1, !tbaa !44
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %6
  %24 = getelementptr inbounds %struct.SequenceModifierData, ptr %14, i64 0, i32 4
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %9, i64 noundef 64) #12
  br label %29

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.SequenceModifierData, ptr %14, i64 0, i32 4
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef nonnull %1, i64 noundef 64) #12
  br label %29

29:                                               ; preds = %26, %23
  %30 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  tail call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef %14) #12
  %31 = load i32, ptr %15, align 8, !tbaa !41
  %32 = load i1, ptr @modifierTypesInit, align 1
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store ptr @seqModifier_ColorBalance, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 1), align 8, !tbaa !34
  store ptr @seqModifier_Curves, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 2), align 16, !tbaa !34
  store ptr @seqModifier_HueCorrect, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 3), align 8, !tbaa !34
  store ptr @seqModifier_BrightContrast, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 4), align 16, !tbaa !34
  store ptr @seqModifier_Mask, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 5), align 8, !tbaa !34
  store i1 true, ptr @modifierTypesInit, align 1
  br label %34

34:                                               ; preds = %29, %33
  %35 = sext i32 %31 to i64
  %36 = getelementptr inbounds [6 x ptr], ptr @modifiersTypes, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  tail call void @BLI_uniquename(ptr noundef nonnull %30, ptr noundef %14, ptr noundef %37, i8 noundef zeroext 46, i32 noundef 24, i32 noundef 64) #12
  %38 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %9, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  tail call void %39(ptr noundef %14) #12
  br label %42

42:                                               ; preds = %41, %34
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_modifier_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.SequenceModifierData, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = load i1, ptr @modifierTypesInit, align 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store ptr @seqModifier_ColorBalance, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 1), align 8, !tbaa !34
  store ptr @seqModifier_Curves, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 2), align 16, !tbaa !34
  store ptr @seqModifier_HueCorrect, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 3), align 8, !tbaa !34
  store ptr @seqModifier_BrightContrast, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 4), align 16, !tbaa !34
  store ptr @seqModifier_Mask, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 5), align 8, !tbaa !34
  store i1 true, ptr @modifierTypesInit, align 1
  br label %7

7:                                                ; preds = %2, %6
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds [6 x ptr], ptr @modifiersTypes, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  tail call void @BLI_uniquename(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %10, i8 noundef zeroext 46, i32 noundef 24, i32 noundef 64) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_sequence_modifier_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #12
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #12
  %7 = getelementptr inbounds %struct.SequenceModifierData, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = load i1, ptr @modifierTypesInit, align 1
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store ptr @seqModifier_ColorBalance, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 1), align 8, !tbaa !34
  store ptr @seqModifier_Curves, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 2), align 16, !tbaa !34
  store ptr @seqModifier_HueCorrect, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 3), align 8, !tbaa !34
  store ptr @seqModifier_BrightContrast, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 4), align 16, !tbaa !34
  store ptr @seqModifier_Mask, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 5), align 8, !tbaa !34
  store i1 true, ptr @modifierTypesInit, align 1
  br label %11

11:                                               ; preds = %10, %6
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds [6 x ptr], ptr @modifiersTypes, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %1) #12
  br label %21

21:                                               ; preds = %11, %16, %20
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef %1) #12
  br label %23

23:                                               ; preds = %2, %21
  %24 = phi i8 [ 1, %21 ], [ 0, %2 ]
  ret i8 %24
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_modifier_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.SequenceModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = load i1, ptr @modifierTypesInit, align 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store ptr @seqModifier_ColorBalance, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 1), align 8, !tbaa !34
  store ptr @seqModifier_Curves, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 2), align 16, !tbaa !34
  store ptr @seqModifier_HueCorrect, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 3), align 8, !tbaa !34
  store ptr @seqModifier_BrightContrast, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 4), align 16, !tbaa !34
  store ptr @seqModifier_Mask, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 5), align 8, !tbaa !34
  store i1 true, ptr @modifierTypesInit, align 1
  br label %6

6:                                                ; preds = %1, %5
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [6 x ptr], ptr @modifiersTypes, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %9, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %0) #12
  br label %16

16:                                               ; preds = %15, %11, %6
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_modifier_clear(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1, %22
  %6 = phi ptr [ %7, %22 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.SequenceModifierData, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !41
  %10 = load i1, ptr @modifierTypesInit, align 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  store ptr @seqModifier_ColorBalance, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 1), align 8, !tbaa !34
  store ptr @seqModifier_Curves, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 2), align 16, !tbaa !34
  store ptr @seqModifier_HueCorrect, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 3), align 8, !tbaa !34
  store ptr @seqModifier_BrightContrast, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 4), align 16, !tbaa !34
  store ptr @seqModifier_Mask, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 5), align 8, !tbaa !34
  store i1 true, ptr @modifierTypesInit, align 1
  br label %12

12:                                               ; preds = %11, %5
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds [6 x ptr], ptr @modifiersTypes, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %15, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void %19(ptr noundef nonnull %6) #12
  br label %22

22:                                               ; preds = %12, %17, %21
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %6) #12
  %24 = icmp eq ptr %7, null
  br i1 %24, label %25, label %5, !llvm.loop !53

25:                                               ; preds = %22, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequence_modifier_find_by_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 24) #12
  ret ptr %4
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_sequence_modifier_apply_stack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !56
  %11 = and i32 %10, 8388608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @IMB_dupImBuf(ptr noundef %2) #12
  %15 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  tail call void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef %16, ptr noundef %14) #12
  br label %17

17:                                               ; preds = %13, %8, %4
  %18 = phi ptr [ %14, %13 ], [ %2, %8 ], [ %2, %4 ]
  %19 = load ptr, ptr %5, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %67, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  br label %23

23:                                               ; preds = %21, %63
  %24 = phi ptr [ %19, %21 ], [ %65, %63 ]
  %25 = phi ptr [ %18, %21 ], [ %64, %63 ]
  %26 = getelementptr inbounds %struct.SequenceModifierData, ptr %24, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !41
  %28 = load i1, ptr @modifierTypesInit, align 1
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store ptr @seqModifier_ColorBalance, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 1), align 8, !tbaa !34
  store ptr @seqModifier_Curves, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 2), align 16, !tbaa !34
  store ptr @seqModifier_HueCorrect, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 3), align 8, !tbaa !34
  store ptr @seqModifier_BrightContrast, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 4), align 16, !tbaa !34
  store ptr @seqModifier_Mask, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 5), align 8, !tbaa !34
  store i1 true, ptr @modifierTypesInit, align 1
  br label %30

30:                                               ; preds = %23, %29
  %31 = sext i32 %27 to i64
  %32 = getelementptr inbounds [6 x ptr], ptr @modifiersTypes, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %63, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.SequenceModifierData, ptr %24, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !43
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %33, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !59
  %43 = icmp eq ptr %42, null
  br i1 %43, label %63, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %22, align 8, !tbaa !60
  %46 = icmp ne ptr %45, null
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.SequenceModifierData, ptr %24, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !64
  %50 = getelementptr inbounds %struct.SequenceModifierData, ptr %24, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.SequenceModifierData, ptr %24, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !66
  %54 = tail call ptr @BKE_sequencer_render_mask_input(ptr noundef %0, i32 noundef %49, ptr noundef %51, ptr noundef %53, i32 noundef %3, i8 noundef zeroext %47) #12
  %55 = icmp eq ptr %25, %2
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = tail call ptr @IMB_dupImBuf(ptr noundef %2) #12
  br label %58

58:                                               ; preds = %56, %44
  %59 = phi ptr [ %57, %56 ], [ %25, %44 ]
  %60 = load ptr, ptr %41, align 8, !tbaa !59
  tail call void %60(ptr noundef nonnull %24, ptr noundef %59, ptr noundef %54) #12
  %61 = icmp eq ptr %54, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @IMB_freeImBuf(ptr noundef nonnull %54) #12
  br label %63

63:                                               ; preds = %40, %62, %58, %35, %30
  %64 = phi ptr [ %25, %30 ], [ %25, %35 ], [ %25, %40 ], [ %59, %62 ], [ %59, %58 ]
  %65 = load ptr, ptr %24, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %23, !llvm.loop !67

67:                                               ; preds = %63, %17
  %68 = phi ptr [ %18, %17 ], [ %64, %63 ]
  %69 = load ptr, ptr %5, align 8, !tbaa !47
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !56
  %74 = and i32 %73, 8388608
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !57
  tail call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %78, ptr noundef %68, i8 noundef zeroext 0) #12
  br label %79

79:                                               ; preds = %76, %71, %67
  ret ptr %68
}

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_modifier_list_copy(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  br label %8

8:                                                ; preds = %6, %26
  %9 = phi ptr [ %4, %6 ], [ %27, %26 ]
  %10 = getelementptr inbounds %struct.SequenceModifierData, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !41
  %12 = load i1, ptr @modifierTypesInit, align 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store ptr @seqModifier_ColorBalance, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 1), align 8, !tbaa !34
  store ptr @seqModifier_Curves, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 2), align 16, !tbaa !34
  store ptr @seqModifier_HueCorrect, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 3), align 8, !tbaa !34
  store ptr @seqModifier_BrightContrast, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 4), align 16, !tbaa !34
  store ptr @seqModifier_Mask, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 5), align 8, !tbaa !34
  store i1 true, ptr @modifierTypesInit, align 1
  br label %14

14:                                               ; preds = %8, %13
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds [6 x ptr], ptr @modifiersTypes, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %19 = tail call ptr %18(ptr noundef nonnull %9) #12
  %20 = icmp eq ptr %17, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %17, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void %23(ptr noundef %19, ptr noundef nonnull %9) #12
  br label %26

26:                                               ; preds = %25, %21, %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef nonnull %19) #12
  %27 = load ptr, ptr %9, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %8, !llvm.loop !69

29:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_sequence_supports_modifiers(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !70
  %4 = add i32 %3, -6
  %5 = icmp ult i32 %4, -2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @colorBalance_init_data(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 2
  store float 1.000000e+00, ptr %2, align 4, !tbaa !71
  %3 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ 0, %1 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %5
  store float 1.000000e+00, ptr %6, align 4, !tbaa !74
  %7 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 1, i32 1, i64 %5
  store float 1.000000e+00, ptr %7, align 4, !tbaa !74
  %8 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 1, i32 2, i64 %5
  store float 1.000000e+00, ptr %8, align 4, !tbaa !74
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %11, label %4, !llvm.loop !75

11:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorBalance_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 4, !tbaa !71
  tail call void @BKE_sequencer_color_balance_apply(ptr noundef nonnull %4, ptr noundef %1, float noundef %6, i8 noundef zeroext 0, ptr noundef %2) #12
  ret void
}

declare void @BKE_sequencer_color_balance_apply(ptr noundef, ptr noundef, float noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @curves_init_data(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.CurvesModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_set_defaults(ptr noundef nonnull %2, i32 noundef 4, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @curves_free_data(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.CurvesModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_free_data(ptr noundef nonnull %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @curves_copy_data(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.CurvesModifierData, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.CurvesModifierData, ptr %1, i64 0, i32 1
  tail call void @curvemapping_copy_data(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @curves_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.ModifierInitData, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.hue_correct_apply_threaded.mask, i64 12, i1 false)
  %7 = getelementptr inbounds %struct.CurvesModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_initialize(ptr noundef nonnull %7) #12
  tail call void @curvemapping_premultiply(ptr noundef nonnull %7, i32 noundef 0) #12
  call void @curvemapping_set_black_white(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  store ptr %1, ptr %4, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 2
  store ptr %7, ptr %9, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 3
  store ptr @curves_apply_threaded, ptr %10, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !81
  call void @IMB_processor_apply_threaded(i32 noundef %12, i32 noundef 56, ptr noundef nonnull %4, ptr noundef nonnull @modifier_init_handle, ptr noundef nonnull @modifier_do_thread) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  call void @curvemapping_premultiply(ptr noundef nonnull %7, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret void
}

declare void @curvemapping_set_defaults(ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @curvemapping_free_data(ptr noundef) local_unnamed_addr #3

declare void @curvemapping_copy_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #3

declare void @curvemapping_premultiply(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @curvemapping_set_black_white(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @curves_apply_threaded(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5, ptr noundef %6) #1 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %207

13:                                               ; preds = %7
  %14 = icmp sgt i32 %0, 0
  %15 = icmp eq ptr %3, null
  %16 = icmp eq ptr %5, null
  %17 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %18 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %19 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %20 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %21 = icmp eq ptr %2, null
  %22 = getelementptr inbounds float, ptr %10, i64 1
  %23 = getelementptr inbounds float, ptr %10, i64 2
  %24 = getelementptr inbounds float, ptr %10, i64 3
  %25 = icmp eq ptr %4, null
  %26 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %27 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %28 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %29 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %30 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %31 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %32 = zext nneg i32 %1 to i64
  %33 = zext nneg i32 %0 to i64
  br label %34

34:                                               ; preds = %13, %204
  %35 = phi i64 [ 0, %13 ], [ %205, %204 ]
  br i1 %14, label %36, label %204

36:                                               ; preds = %34
  %37 = trunc i64 %35 to i32
  %38 = mul i32 %37, %0
  br label %39

39:                                               ; preds = %36, %201
  %40 = phi i64 [ 0, %36 ], [ %202, %201 ]
  %41 = trunc i64 %40 to i32
  %42 = add i32 %38, %41
  %43 = shl nsw i32 %42, 2
  br i1 %15, label %78, label %44

44:                                               ; preds = %39
  %45 = zext nneg i32 %43 to i64
  %46 = getelementptr inbounds float, ptr %3, i64 %45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @curvemapping_evaluate_premulRGBF(ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %46) #12
  br i1 %16, label %71, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds float, ptr %5, i64 %45
  %49 = load float, ptr %46, align 4, !tbaa !74
  %50 = load float, ptr %48, align 4, !tbaa !74
  %51 = fsub float 1.000000e+00, %50
  %52 = load float, ptr %8, align 4, !tbaa !74
  %53 = fmul float %50, %52
  %54 = call float @llvm.fmuladd.f32(float %49, float %51, float %53)
  store float %54, ptr %46, align 4, !tbaa !74
  %55 = getelementptr inbounds float, ptr %46, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !74
  %57 = getelementptr inbounds float, ptr %48, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !74
  %59 = fsub float 1.000000e+00, %58
  %60 = load float, ptr %17, align 4, !tbaa !74
  %61 = fmul float %58, %60
  %62 = call float @llvm.fmuladd.f32(float %56, float %59, float %61)
  store float %62, ptr %55, align 4, !tbaa !74
  %63 = getelementptr inbounds float, ptr %46, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !74
  %65 = getelementptr inbounds float, ptr %48, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !74
  %67 = fsub float 1.000000e+00, %66
  %68 = load float, ptr %18, align 4, !tbaa !74
  %69 = fmul float %66, %68
  %70 = call float @llvm.fmuladd.f32(float %64, float %67, float %69)
  store float %70, ptr %63, align 4, !tbaa !74
  br label %77

71:                                               ; preds = %44
  %72 = load float, ptr %8, align 4, !tbaa !74
  store float %72, ptr %46, align 4, !tbaa !74
  %73 = load float, ptr %19, align 4, !tbaa !74
  %74 = getelementptr inbounds float, ptr %46, i64 1
  store float %73, ptr %74, align 4, !tbaa !74
  %75 = load float, ptr %20, align 4, !tbaa !74
  %76 = getelementptr inbounds float, ptr %46, i64 2
  store float %75, ptr %76, align 4, !tbaa !74
  br label %77

77:                                               ; preds = %71, %47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  br label %78

78:                                               ; preds = %77, %39
  br i1 %21, label %201, label %79

79:                                               ; preds = %78
  %80 = zext nneg i32 %43 to i64
  %81 = getelementptr inbounds i8, ptr %2, i64 %80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  %82 = getelementptr inbounds i8, ptr %81, i64 3
  %83 = load i8, ptr %82, align 1, !tbaa !44
  %84 = uitofp i8 %83 to float
  %85 = fmul float %84, 0x3F70101020000000
  %86 = fmul float %85, 0x3F70101020000000
  %87 = load i8, ptr %81, align 1, !tbaa !44
  %88 = uitofp i8 %87 to float
  %89 = fmul float %86, %88
  store float %89, ptr %10, align 16, !tbaa !74
  %90 = getelementptr inbounds i8, ptr %81, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !44
  %92 = uitofp i8 %91 to float
  %93 = fmul float %86, %92
  store float %93, ptr %22, align 4, !tbaa !74
  %94 = getelementptr inbounds i8, ptr %81, i64 2
  %95 = load i8, ptr %94, align 1, !tbaa !44
  %96 = uitofp i8 %95 to float
  %97 = fmul float %86, %96
  store float %97, ptr %23, align 8, !tbaa !74
  store float %85, ptr %24, align 4, !tbaa !74
  call void @curvemapping_evaluate_premulRGBF(ptr noundef %6, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  br i1 %25, label %118, label %98

98:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %99 = getelementptr inbounds i8, ptr %4, i64 %80
  call void @rgb_uchar_to_float(ptr noundef nonnull %11, ptr noundef nonnull %99) #12
  %100 = load float, ptr %10, align 16, !tbaa !74
  %101 = load float, ptr %11, align 4, !tbaa !74
  %102 = fsub float 1.000000e+00, %101
  %103 = load float, ptr %9, align 4, !tbaa !74
  %104 = fmul float %101, %103
  %105 = call float @llvm.fmuladd.f32(float %100, float %102, float %104)
  store float %105, ptr %10, align 16, !tbaa !74
  %106 = load float, ptr %22, align 4, !tbaa !74
  %107 = load float, ptr %26, align 4, !tbaa !74
  %108 = fsub float 1.000000e+00, %107
  %109 = load float, ptr %27, align 4, !tbaa !74
  %110 = fmul float %107, %109
  %111 = call float @llvm.fmuladd.f32(float %106, float %108, float %110)
  store float %111, ptr %22, align 4, !tbaa !74
  %112 = load float, ptr %23, align 8, !tbaa !74
  %113 = load float, ptr %28, align 4, !tbaa !74
  %114 = fsub float 1.000000e+00, %113
  %115 = load float, ptr %29, align 4, !tbaa !74
  %116 = fmul float %113, %115
  %117 = call float @llvm.fmuladd.f32(float %112, float %114, float %116)
  store float %117, ptr %23, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  br label %122

118:                                              ; preds = %79
  %119 = load float, ptr %9, align 4, !tbaa !74
  store float %119, ptr %10, align 16, !tbaa !74
  %120 = load float, ptr %30, align 4, !tbaa !74
  store float %120, ptr %22, align 4, !tbaa !74
  %121 = load float, ptr %31, align 4, !tbaa !74
  store float %121, ptr %23, align 8, !tbaa !74
  br label %122

122:                                              ; preds = %118, %98
  %123 = load float, ptr %24, align 4, !tbaa !74
  %124 = fcmp oeq float %123, 0.000000e+00
  %125 = fcmp oeq float %123, 1.000000e+00
  %126 = or i1 %124, %125
  br i1 %126, label %127, label %161

127:                                              ; preds = %122
  %128 = load float, ptr %10, align 16, !tbaa !74
  %129 = fcmp ugt float %128, 0.000000e+00
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = fcmp ogt float %128, 0x3FEFEFEFE0000000
  br i1 %131, label %135, label %132

132:                                              ; preds = %130
  %133 = call float @llvm.fmuladd.f32(float %128, float 2.550000e+02, float 5.000000e-01)
  %134 = fptoui float %133 to i8
  br label %135

135:                                              ; preds = %132, %130, %127
  %136 = phi i8 [ 0, %127 ], [ %134, %132 ], [ -1, %130 ]
  store i8 %136, ptr %81, align 1, !tbaa !44
  %137 = load float, ptr %22, align 4, !tbaa !74
  %138 = fcmp ugt float %137, 0.000000e+00
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = fcmp ogt float %137, 0x3FEFEFEFE0000000
  br i1 %140, label %144, label %141

141:                                              ; preds = %139
  %142 = call float @llvm.fmuladd.f32(float %137, float 2.550000e+02, float 5.000000e-01)
  %143 = fptoui float %142 to i8
  br label %144

144:                                              ; preds = %141, %139, %135
  %145 = phi i8 [ 0, %135 ], [ %143, %141 ], [ -1, %139 ]
  store i8 %145, ptr %90, align 1, !tbaa !44
  %146 = load float, ptr %23, align 8, !tbaa !74
  %147 = fcmp ugt float %146, 0.000000e+00
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = fcmp ogt float %146, 0x3FEFEFEFE0000000
  br i1 %149, label %153, label %150

150:                                              ; preds = %148
  %151 = call float @llvm.fmuladd.f32(float %146, float 2.550000e+02, float 5.000000e-01)
  %152 = fptoui float %151 to i8
  br label %153

153:                                              ; preds = %150, %148, %144
  %154 = phi i8 [ 0, %144 ], [ %152, %150 ], [ -1, %148 ]
  store i8 %154, ptr %94, align 1, !tbaa !44
  %155 = fcmp ugt float %123, 0.000000e+00
  br i1 %155, label %156, label %199

156:                                              ; preds = %153
  %157 = fcmp ogt float %123, 0x3FEFEFEFE0000000
  br i1 %157, label %199, label %158

158:                                              ; preds = %156
  %159 = call float @llvm.fmuladd.f32(float %123, float 2.550000e+02, float 5.000000e-01)
  %160 = fptoui float %159 to i8
  br label %199

161:                                              ; preds = %122
  %162 = fdiv float 1.000000e+00, %123
  %163 = load float, ptr %10, align 16, !tbaa !74
  %164 = fmul float %162, %163
  %165 = fcmp ugt float %164, 0.000000e+00
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = fcmp ogt float %164, 0x3FEFEFEFE0000000
  br i1 %167, label %171, label %168

168:                                              ; preds = %166
  %169 = call float @llvm.fmuladd.f32(float %164, float 2.550000e+02, float 5.000000e-01)
  %170 = fptoui float %169 to i8
  br label %171

171:                                              ; preds = %168, %166, %161
  %172 = phi i8 [ 0, %161 ], [ %170, %168 ], [ -1, %166 ]
  store i8 %172, ptr %81, align 1, !tbaa !44
  %173 = load float, ptr %22, align 4, !tbaa !74
  %174 = fmul float %162, %173
  %175 = fcmp ugt float %174, 0.000000e+00
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = fcmp ogt float %174, 0x3FEFEFEFE0000000
  br i1 %177, label %181, label %178

178:                                              ; preds = %176
  %179 = call float @llvm.fmuladd.f32(float %174, float 2.550000e+02, float 5.000000e-01)
  %180 = fptoui float %179 to i8
  br label %181

181:                                              ; preds = %178, %176, %171
  %182 = phi i8 [ 0, %171 ], [ %180, %178 ], [ -1, %176 ]
  store i8 %182, ptr %90, align 1, !tbaa !44
  %183 = load float, ptr %23, align 8, !tbaa !74
  %184 = fmul float %162, %183
  %185 = fcmp ugt float %184, 0.000000e+00
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = fcmp ogt float %184, 0x3FEFEFEFE0000000
  br i1 %187, label %191, label %188

188:                                              ; preds = %186
  %189 = call float @llvm.fmuladd.f32(float %184, float 2.550000e+02, float 5.000000e-01)
  %190 = fptoui float %189 to i8
  br label %191

191:                                              ; preds = %188, %186, %181
  %192 = phi i8 [ 0, %181 ], [ %190, %188 ], [ -1, %186 ]
  store i8 %192, ptr %94, align 1, !tbaa !44
  %193 = fcmp ugt float %123, 0.000000e+00
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = fcmp ogt float %123, 0x3FEFEFEFE0000000
  br i1 %195, label %199, label %196

196:                                              ; preds = %194
  %197 = call float @llvm.fmuladd.f32(float %123, float 2.550000e+02, float 5.000000e-01)
  %198 = fptoui float %197 to i8
  br label %199

199:                                              ; preds = %191, %194, %196, %153, %156, %158
  %200 = phi i8 [ 0, %153 ], [ %160, %158 ], [ -1, %156 ], [ 0, %191 ], [ %198, %196 ], [ -1, %194 ]
  store i8 %200, ptr %82, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br label %201

201:                                              ; preds = %199, %78
  %202 = add nuw nsw i64 %40, 1
  %203 = icmp eq i64 %202, %33
  br i1 %203, label %204, label %39, !llvm.loop !82

204:                                              ; preds = %201, %34
  %205 = add nuw nsw i64 %35, 1
  %206 = icmp eq i64 %205, %32
  br i1 %206, label %207, label %34, !llvm.loop !83

207:                                              ; preds = %204, %7
  ret void
}

declare void @IMB_processor_apply_threaded(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @modifier_init_handle(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #8 {
  %5 = load ptr, ptr %3, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.ModifierInitData, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = shl nsw i32 %1, 2
  %9 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !84
  %11 = mul nsw i32 %10, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %12 = load i32, ptr %9, align 8, !tbaa !84
  store i32 %12, ptr %0, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 1
  store i32 %2, ptr %13, align 4, !tbaa !87
  %14 = getelementptr inbounds %struct.ModifierInitData, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 7
  store ptr %15, ptr %16, align 8, !tbaa !88
  %17 = getelementptr inbounds %struct.ModifierInitData, ptr %3, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !89
  %20 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = sext i32 %11 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !91
  br label %27

27:                                               ; preds = %23, %4
  %28 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = sext i32 %11 to i64
  %33 = getelementptr inbounds float, ptr %29, i64 %32
  %34 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 4
  store ptr %33, ptr %34, align 8, !tbaa !92
  br label %35

35:                                               ; preds = %31, %27
  %36 = icmp eq ptr %7, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !90
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = sext i32 %11 to i64
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  %44 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !93
  br label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = sext i32 %11 to i64
  %51 = getelementptr inbounds float, ptr %47, i64 %50
  br label %54

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 3
  store ptr null, ptr %53, align 8, !tbaa !93
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi ptr [ %51, %49 ], [ null, %52 ]
  %56 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 5
  store ptr %55, ptr %56, align 8, !tbaa !94
  br label %57

57:                                               ; preds = %54, %45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @modifier_do_thread(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = load i32, ptr %0, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !87
  %7 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  tail call void %3(i32 noundef %4, i32 noundef %6, ptr noundef %8, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %16) #12
  ret ptr null
}

declare void @curvemapping_evaluate_premulRGBF(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @hue_correct_init_data(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_set_defaults(ptr noundef nonnull %2, i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #12
  %3 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1, i32 2
  store i32 4, ptr %3, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1, i32 5
  br label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ 0, %1 ], [ %9, %5 ]
  %7 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1, i32 6, i64 %6
  %8 = load i32, ptr %3, align 8, !tbaa !95
  tail call void @curvemap_reset(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef %8, i32 noundef 1) #12
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %11, label %5, !llvm.loop !99

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1, i32 1
  store i32 1, ptr %12, align 4, !tbaa !100
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hue_correct_free_data(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_free_data(ptr noundef nonnull %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hue_correct_copy_data(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %1, i64 0, i32 1
  tail call void @curvemapping_copy_data(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hue_correct_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.ModifierInitData, align 8
  %5 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_initialize(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  store ptr %1, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 3
  store ptr @hue_correct_apply_threaded, ptr %8, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !81
  call void @IMB_processor_apply_threaded(i32 noundef %10, i32 noundef 56, ptr noundef nonnull %4, ptr noundef nonnull @modifier_init_handle, ptr noundef nonnull @modifier_do_thread) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  ret void
}

declare void @curvemap_reset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @hue_correct_apply_threaded(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5, ptr noundef %6) #1 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %125

13:                                               ; preds = %7
  %14 = icmp sgt i32 %0, 0
  %15 = icmp eq ptr %3, null
  %16 = getelementptr inbounds float, ptr %8, i64 1
  %17 = getelementptr inbounds float, ptr %8, i64 2
  %18 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %19 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %20 = getelementptr inbounds float, ptr %11, i64 1
  %21 = getelementptr inbounds float, ptr %11, i64 2
  %22 = getelementptr inbounds float, ptr %9, i64 1
  %23 = getelementptr inbounds float, ptr %9, i64 2
  %24 = icmp eq ptr %5, null
  %25 = getelementptr inbounds float, ptr %10, i64 1
  %26 = getelementptr inbounds float, ptr %10, i64 2
  %27 = icmp eq ptr %4, null
  %28 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %29 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %30 = zext nneg i32 %1 to i64
  %31 = zext nneg i32 %0 to i64
  br label %32

32:                                               ; preds = %13, %122
  %33 = phi i64 [ 0, %13 ], [ %123, %122 ]
  br i1 %14, label %34, label %122

34:                                               ; preds = %32
  %35 = trunc i64 %33 to i32
  %36 = mul i32 %35, %0
  br label %37

37:                                               ; preds = %34, %119
  %38 = phi i64 [ 0, %34 ], [ %120, %119 ]
  %39 = trunc i64 %38 to i32
  %40 = add i32 %36, %39
  %41 = shl nsw i32 %40, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) @__const.hue_correct_apply_threaded.mask, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %42 = zext nneg i32 %41 to i64
  br i1 %15, label %50, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds float, ptr %3, i64 %42
  %45 = load float, ptr %44, align 4, !tbaa !74
  store float %45, ptr %8, align 4, !tbaa !74
  %46 = getelementptr inbounds float, ptr %44, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !74
  store float %47, ptr %16, align 4, !tbaa !74
  %48 = getelementptr inbounds float, ptr %44, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !74
  store float %49, ptr %17, align 4, !tbaa !74
  br label %52

50:                                               ; preds = %37
  %51 = getelementptr inbounds i8, ptr %2, i64 %42
  call void @rgb_uchar_to_float(ptr noundef nonnull %8, ptr noundef %51) #12
  br label %52

52:                                               ; preds = %50, %43
  %53 = load float, ptr %8, align 4, !tbaa !74
  %54 = load float, ptr %18, align 4, !tbaa !74
  %55 = load float, ptr %19, align 4, !tbaa !74
  call void @rgb_to_hsv(float noundef %53, float noundef %54, float noundef %55, ptr noundef nonnull %11, ptr noundef nonnull %20, ptr noundef nonnull %21) #12
  %56 = load float, ptr %11, align 4, !tbaa !74
  %57 = call float @curvemapping_evaluateF(ptr noundef %6, i32 noundef 0, float noundef %56) #12
  %58 = fadd float %57, -5.000000e-01
  %59 = load float, ptr %11, align 4, !tbaa !74
  %60 = fadd float %59, %58
  store float %60, ptr %11, align 4, !tbaa !74
  %61 = call float @curvemapping_evaluateF(ptr noundef %6, i32 noundef 1, float noundef %60) #12
  %62 = fmul float %61, 2.000000e+00
  %63 = load float, ptr %20, align 4, !tbaa !74
  %64 = fmul float %63, %62
  store float %64, ptr %20, align 4, !tbaa !74
  %65 = load float, ptr %11, align 4, !tbaa !74
  %66 = call float @curvemapping_evaluateF(ptr noundef %6, i32 noundef 2, float noundef %65) #12
  %67 = fmul float %66, 2.000000e+00
  %68 = load float, ptr %21, align 4, !tbaa !74
  %69 = fmul float %68, %67
  store float %69, ptr %21, align 4, !tbaa !74
  %70 = load float, ptr %11, align 4, !tbaa !74
  %71 = call float @llvm.floor.f32(float %70)
  %72 = fsub float %70, %71
  store float %72, ptr %11, align 4, !tbaa !74
  %73 = load float, ptr %20, align 4, !tbaa !74
  %74 = fcmp olt float %73, 0.000000e+00
  br i1 %74, label %77, label %75

75:                                               ; preds = %52
  %76 = fcmp ogt float %73, 1.000000e+00
  br i1 %76, label %77, label %79

77:                                               ; preds = %75, %52
  %78 = phi float [ 0.000000e+00, %52 ], [ 1.000000e+00, %75 ]
  store float %78, ptr %20, align 4, !tbaa !74
  br label %79

79:                                               ; preds = %77, %75
  %80 = load float, ptr %20, align 4, !tbaa !74
  call void @hsv_to_rgb(float noundef %72, float noundef %80, float noundef %69, ptr noundef nonnull %9, ptr noundef nonnull %22, ptr noundef nonnull %23) #12
  br i1 %24, label %89, label %81

81:                                               ; preds = %79
  %82 = zext nneg i32 %41 to i64
  %83 = getelementptr inbounds float, ptr %5, i64 %82
  %84 = load float, ptr %83, align 4, !tbaa !74
  store float %84, ptr %10, align 4, !tbaa !74
  %85 = getelementptr inbounds float, ptr %83, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !74
  store float %86, ptr %25, align 4, !tbaa !74
  %87 = getelementptr inbounds float, ptr %83, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !74
  store float %88, ptr %26, align 4, !tbaa !74
  br label %93

89:                                               ; preds = %79
  br i1 %27, label %93, label %90

90:                                               ; preds = %89
  %91 = zext nneg i32 %41 to i64
  %92 = getelementptr inbounds i8, ptr %4, i64 %91
  call void @rgb_uchar_to_float(ptr noundef nonnull %10, ptr noundef nonnull %92) #12
  br label %93

93:                                               ; preds = %89, %90, %81
  %94 = load float, ptr %8, align 4, !tbaa !74
  %95 = load float, ptr %10, align 4, !tbaa !74
  %96 = fsub float 1.000000e+00, %95
  %97 = load float, ptr %9, align 4, !tbaa !74
  %98 = fmul float %95, %97
  %99 = call float @llvm.fmuladd.f32(float %94, float %96, float %98)
  store float %99, ptr %9, align 4, !tbaa !74
  %100 = load float, ptr %18, align 4, !tbaa !74
  %101 = load float, ptr %28, align 4, !tbaa !74
  %102 = fsub float 1.000000e+00, %101
  %103 = load float, ptr %22, align 4, !tbaa !74
  %104 = fmul float %101, %103
  %105 = call float @llvm.fmuladd.f32(float %100, float %102, float %104)
  store float %105, ptr %22, align 4, !tbaa !74
  %106 = load float, ptr %19, align 4, !tbaa !74
  %107 = load float, ptr %29, align 4, !tbaa !74
  %108 = fsub float 1.000000e+00, %107
  %109 = load float, ptr %23, align 4, !tbaa !74
  %110 = fmul float %107, %109
  %111 = call float @llvm.fmuladd.f32(float %106, float %108, float %110)
  store float %111, ptr %23, align 4, !tbaa !74
  %112 = zext nneg i32 %41 to i64
  br i1 %15, label %117, label %113

113:                                              ; preds = %93
  %114 = getelementptr inbounds float, ptr %3, i64 %112
  store float %99, ptr %114, align 4, !tbaa !74
  %115 = getelementptr inbounds float, ptr %114, i64 1
  store float %105, ptr %115, align 4, !tbaa !74
  %116 = getelementptr inbounds float, ptr %114, i64 2
  store float %111, ptr %116, align 4, !tbaa !74
  br label %119

117:                                              ; preds = %93
  %118 = getelementptr inbounds i8, ptr %2, i64 %112
  call void @rgb_float_to_uchar(ptr noundef %118, ptr noundef nonnull %9) #12
  br label %119

119:                                              ; preds = %117, %113
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  %120 = add nuw nsw i64 %38, 1
  %121 = icmp eq i64 %120, %31
  br i1 %121, label %122, label %37, !llvm.loop !101

122:                                              ; preds = %119, %32
  %123 = add nuw nsw i64 %33, 1
  %124 = icmp eq i64 %123, %30
  br i1 %124, label %125, label %32, !llvm.loop !102

125:                                              ; preds = %122, %7
  ret void
}

declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @brightcontrast_apply(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.ModifierInitData, align 8
  %5 = alloca %struct.BrightContrastThreadData, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.BrightContrastModifierData, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !103
  store float %7, ptr %5, align 4, !tbaa !105
  %8 = getelementptr inbounds %struct.BrightContrastModifierData, ptr %0, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !107
  %10 = getelementptr inbounds %struct.BrightContrastThreadData, ptr %5, i64 0, i32 1
  store float %9, ptr %10, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  store ptr %1, ptr %4, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 2
  store ptr %5, ptr %12, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 3
  store ptr @brightcontrast_apply_threaded, ptr %13, align 8, !tbaa !80
  %14 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !81
  call void @IMB_processor_apply_threaded(i32 noundef %15, i32 noundef 56, ptr noundef nonnull %4, ptr noundef nonnull @modifier_init_handle, ptr noundef nonnull @modifier_do_thread) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @brightcontrast_apply_threaded(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr nocapture noundef readonly %6) #10 {
  %8 = load float, ptr %6, align 4, !tbaa !105
  %9 = fdiv float %8, 1.000000e+02
  %10 = getelementptr inbounds %struct.BrightContrastThreadData, ptr %6, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !108
  %12 = fdiv float %11, 2.000000e+02
  %13 = fneg float %12
  %14 = tail call float @llvm.fmuladd.f32(float %13, float 2.000000e+00, float 1.000000e+00)
  %15 = fcmp ogt float %11, 0.000000e+00
  %16 = fsub float %9, %12
  %17 = fdiv float 1.000000e+00, %14
  %18 = fsub float %9, %12
  %19 = select i1 %15, float %17, float %16
  %20 = select i1 %15, float %18, float %14
  %21 = select i1 %15, float %17, float %14
  %22 = fmul float %20, %19
  %23 = icmp sgt i32 %1, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %7
  %25 = icmp sgt i32 %0, 0
  %26 = icmp eq ptr %2, null
  %27 = icmp eq ptr %4, null
  %28 = icmp eq ptr %3, null
  %29 = icmp eq ptr %5, null
  %30 = zext nneg i32 %1 to i64
  %31 = zext nneg i32 %0 to i64
  br label %32

32:                                               ; preds = %24, %96
  %33 = phi i64 [ 0, %24 ], [ %97, %96 ]
  br i1 %25, label %34, label %96

34:                                               ; preds = %32
  %35 = trunc i64 %33 to i32
  %36 = mul i32 %35, %0
  br label %37

37:                                               ; preds = %34, %93
  %38 = phi i64 [ 0, %34 ], [ %94, %93 ]
  %39 = trunc i64 %38 to i32
  %40 = add i32 %36, %39
  %41 = shl nsw i32 %40, 2
  br i1 %26, label %73, label %42

42:                                               ; preds = %37
  %43 = zext nneg i32 %41 to i64
  %44 = getelementptr inbounds i8, ptr %2, i64 %43
  %45 = getelementptr inbounds i8, ptr %4, i64 %43
  br label %46

46:                                               ; preds = %42, %68
  %47 = phi i64 [ 0, %42 ], [ %71, %68 ]
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !44
  %50 = uitofp i8 %49 to float
  %51 = fdiv float %50, 2.550000e+02
  %52 = tail call float @llvm.fmuladd.f32(float %21, float %51, float %22)
  br i1 %27, label %61, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds i8, ptr %45, i64 %47
  %55 = load i8, ptr %54, align 1, !tbaa !44
  %56 = uitofp i8 %55 to float
  %57 = fdiv float %56, 2.550000e+02
  %58 = fsub float 1.000000e+00, %57
  %59 = fmul float %52, %57
  %60 = tail call float @llvm.fmuladd.f32(float %51, float %58, float %59)
  br label %61

61:                                               ; preds = %53, %46
  %62 = phi float [ %60, %53 ], [ %52, %46 ]
  %63 = fcmp ugt float %62, 0.000000e+00
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = fcmp ogt float %62, 0x3FEFEFEFE0000000
  %66 = tail call float @llvm.fmuladd.f32(float %62, float 2.550000e+02, float 5.000000e-01)
  %67 = select i1 %65, float 2.550000e+02, float %66
  br label %68

68:                                               ; preds = %61, %64
  %69 = phi float [ %67, %64 ], [ 0.000000e+00, %61 ]
  %70 = fptoui float %69 to i8
  store i8 %70, ptr %48, align 1, !tbaa !44
  %71 = add nuw nsw i64 %47, 1
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %93, label %46, !llvm.loop !109

73:                                               ; preds = %37
  br i1 %28, label %93, label %74

74:                                               ; preds = %73
  %75 = zext nneg i32 %41 to i64
  %76 = getelementptr inbounds float, ptr %3, i64 %75
  %77 = getelementptr inbounds float, ptr %5, i64 %75
  br label %78

78:                                               ; preds = %74, %89
  %79 = phi i64 [ 0, %74 ], [ %91, %89 ]
  %80 = getelementptr inbounds float, ptr %76, i64 %79
  %81 = load float, ptr %80, align 4, !tbaa !74
  %82 = tail call float @llvm.fmuladd.f32(float %21, float %81, float %22)
  br i1 %29, label %89, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds float, ptr %77, i64 %79
  %85 = load float, ptr %84, align 4, !tbaa !74
  %86 = fsub float 1.000000e+00, %85
  %87 = fmul float %82, %85
  %88 = tail call float @llvm.fmuladd.f32(float %81, float %86, float %87)
  br label %89

89:                                               ; preds = %78, %83
  %90 = phi float [ %88, %83 ], [ %82, %78 ]
  store float %90, ptr %80, align 4, !tbaa !74
  %91 = add nuw nsw i64 %79, 1
  %92 = icmp eq i64 %91, 3
  br i1 %92, label %93, label %78, !llvm.loop !110

93:                                               ; preds = %68, %89, %73
  %94 = add nuw nsw i64 %38, 1
  %95 = icmp eq i64 %94, %31
  br i1 %95, label %96, label %37, !llvm.loop !111

96:                                               ; preds = %93, %32
  %97 = add nuw nsw i64 %33, 1
  %98 = icmp eq i64 %97, %30
  br i1 %98, label %99, label %32, !llvm.loop !112

99:                                               ; preds = %96, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @maskmodifier_apply(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.ModifierInitData, align 8
  %5 = alloca %struct.BrightContrastThreadData, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.BrightContrastModifierData, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !103
  store float %7, ptr %5, align 4, !tbaa !105
  %8 = getelementptr inbounds %struct.BrightContrastModifierData, ptr %0, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !107
  %10 = getelementptr inbounds %struct.BrightContrastThreadData, ptr %5, i64 0, i32 1
  store float %9, ptr %10, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  store ptr %1, ptr %4, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 2
  store ptr %5, ptr %12, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.ModifierInitData, ptr %4, i64 0, i32 3
  store ptr @maskmodifier_apply_threaded, ptr %13, align 8, !tbaa !80
  %14 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !81
  call void @IMB_processor_apply_threaded(i32 noundef %15, i32 noundef 56, ptr noundef nonnull %4, ptr noundef nonnull @modifier_init_handle, ptr noundef nonnull @modifier_do_thread) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @maskmodifier_apply_threaded(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr nocapture readnone %6) #10 {
  %8 = icmp eq ptr %2, null
  %9 = icmp ne ptr %4, null
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %79

11:                                               ; preds = %7
  %12 = icmp eq ptr %3, null
  %13 = icmp ne ptr %5, null
  %14 = or i1 %12, %13
  %15 = icmp sgt i32 %1, 0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %79

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %2, i64 3
  %19 = icmp sgt i32 %0, 0
  %20 = zext i32 %1 to i64
  %21 = zext nneg i32 %0 to i64
  br label %22

22:                                               ; preds = %17, %76
  %23 = phi i64 [ 0, %17 ], [ %77, %76 ]
  br i1 %19, label %24, label %76

24:                                               ; preds = %22
  %25 = trunc i64 %23 to i32
  %26 = mul i32 %25, %0
  br label %27

27:                                               ; preds = %24, %73
  %28 = phi i64 [ 0, %24 ], [ %74, %73 ]
  %29 = trunc i64 %28 to i32
  %30 = add i32 %26, %29
  %31 = shl nsw i32 %30, 2
  br i1 %8, label %52, label %32

32:                                               ; preds = %27
  %33 = zext nneg i32 %31 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !44
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !44
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i8, ptr %34, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !44
  %42 = zext i8 %41 to i32
  %43 = tail call i32 @llvm.smin.i32(i32 %36, i32 %39)
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %42)
  %45 = getelementptr i8, ptr %18, i64 %33
  %46 = load i8, ptr %45, align 1, !tbaa !44
  %47 = zext i8 %46 to i32
  %48 = mul nuw nsw i32 %44, %47
  %49 = sitofp i32 %48 to float
  %50 = fdiv float %49, 2.550000e+02
  %51 = fptoui float %50 to i8
  store i8 %51, ptr %45, align 1, !tbaa !44
  br label %73

52:                                               ; preds = %27
  br i1 %12, label %73, label %53

53:                                               ; preds = %52
  %54 = zext nneg i32 %31 to i64
  %55 = getelementptr inbounds float, ptr %3, i64 %54
  %56 = getelementptr inbounds float, ptr %5, i64 %54
  %57 = load float, ptr %56, align 4, !tbaa !74
  %58 = getelementptr inbounds float, ptr %56, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !74
  %60 = getelementptr inbounds float, ptr %56, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !74
  %62 = fcmp olt float %57, %59
  %63 = select i1 %62, float %57, float %59
  %64 = fcmp olt float %63, %61
  %65 = select i1 %64, float %63, float %61
  br label %66

66:                                               ; preds = %53, %66
  %67 = phi i64 [ 0, %53 ], [ %71, %66 ]
  %68 = getelementptr inbounds float, ptr %55, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !74
  %70 = fmul float %65, %69
  store float %70, ptr %68, align 4, !tbaa !74
  %71 = add nuw nsw i64 %67, 1
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %73, label %66, !llvm.loop !113

73:                                               ; preds = %66, %52, %32
  %74 = add nuw nsw i64 %28, 1
  %75 = icmp eq i64 %74, %21
  br i1 %75, label %76, label %27, !llvm.loop !114

76:                                               ; preds = %73, %22
  %77 = add nuw nsw i64 %23, 1
  %78 = icmp eq i64 %77, %20
  br i1 %78, label %79, label %22, !llvm.loop !115

79:                                               ; preds = %76, %11, %7
  ret void
}

declare ptr @BKE_sequencer_render_mask_input(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 128}
!39 = !{!"SequenceModifierTypeInfo", !36, i64 0, !36, i64 64, !40, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160}
!40 = !{!"int", !36, i64 0}
!41 = !{!42, !40, i64 16}
!42 = !{!"SequenceModifierData", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 88, !40, i64 92, !35, i64 96, !35, i64 104}
!43 = !{!42, !40, i64 20}
!44 = !{!36, !36, i64 0}
!45 = !{!39, !35, i64 136}
!46 = !{!39, !35, i64 144}
!47 = !{!48, !35, i64 336}
!48 = !{!"Sequence", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !50, i64 156, !50, i64 158, !40, i64 160, !40, i64 164, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !49, i64 224, !49, i64 228, !35, i64 232, !35, i64 240, !35, i64 248, !51, i64 256, !35, i64 272, !35, i64 280, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !35, i64 304, !40, i64 312, !40, i64 316, !40, i64 320, !49, i64 324, !40, i64 328, !36, i64 332, !36, i64 333, !51, i64 336}
!49 = !{!"float", !36, i64 0}
!50 = !{!"short", !36, i64 0}
!51 = !{!"ListBase", !35, i64 0, !35, i64 8}
!52 = !{!42, !35, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!48, !40, i64 96}
!57 = !{!58, !35, i64 16}
!58 = !{!"SeqRenderData", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !49, i64 40, !36, i64 44, !36, i64 45}
!59 = !{!39, !35, i64 160}
!60 = !{!61, !35, i64 48}
!61 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !49, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !62, i64 2436, !63, i64 2456}
!62 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!63 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!64 = !{!42, !40, i64 88}
!65 = !{!42, !35, i64 96}
!66 = !{!42, !35, i64 104}
!67 = distinct !{!67, !54, !55}
!68 = !{!39, !35, i64 152}
!69 = distinct !{!69, !54, !55}
!70 = !{!48, !40, i64 100}
!71 = !{!72, !49, i64 156}
!72 = !{!"ColorBalanceModifierData", !42, i64 0, !73, i64 112, !49, i64 156}
!73 = !{!"StripColorBalance", !36, i64 0, !36, i64 12, !36, i64 24, !40, i64 36, !40, i64 40}
!74 = !{!49, !49, i64 0}
!75 = distinct !{!75, !54, !55}
!76 = !{!77, !35, i64 0}
!77 = !{!"ModifierInitData", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!78 = !{!77, !35, i64 8}
!79 = !{!77, !35, i64 16}
!80 = !{!77, !35, i64 24}
!81 = !{!61, !40, i64 20}
!82 = distinct !{!82, !54, !55}
!83 = distinct !{!83, !54, !55}
!84 = !{!61, !40, i64 16}
!85 = !{!86, !40, i64 0}
!86 = !{!"ModifierThread", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48}
!87 = !{!86, !40, i64 4}
!88 = !{!86, !35, i64 48}
!89 = !{!86, !35, i64 40}
!90 = !{!61, !35, i64 40}
!91 = !{!86, !35, i64 8}
!92 = !{!86, !35, i64 24}
!93 = !{!86, !35, i64 16}
!94 = !{!86, !35, i64 32}
!95 = !{!96, !40, i64 120}
!96 = !{!"HueCorrectModifierData", !42, i64 0, !97, i64 112}
!97 = !{!"CurveMapping", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !98, i64 16, !98, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!98 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!99 = distinct !{!99, !54, !55}
!100 = !{!96, !40, i64 116}
!101 = distinct !{!101, !54, !55}
!102 = distinct !{!102, !54, !55}
!103 = !{!104, !49, i64 112}
!104 = !{!"BrightContrastModifierData", !42, i64 0, !49, i64 112, !49, i64 116}
!105 = !{!106, !49, i64 0}
!106 = !{!"BrightContrastThreadData", !49, i64 0, !49, i64 4}
!107 = !{!104, !49, i64 116}
!108 = !{!106, !49, i64 4}
!109 = distinct !{!109, !54, !55}
!110 = distinct !{!110, !54, !55}
!111 = distinct !{!111, !54, !55}
!112 = distinct !{!112, !54, !55}
!113 = distinct !{!113, !54, !55}
!114 = distinct !{!114, !54, !55}
!115 = distinct !{!115, !54, !55}
