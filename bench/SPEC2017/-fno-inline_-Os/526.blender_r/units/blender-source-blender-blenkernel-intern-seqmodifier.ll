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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_sequence_modifier_type_info_get(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @modifierTypesInit, align 1
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call fastcc void @sequence_modifier_type_info_init() #16
  store i1 true, ptr @modifierTypesInit, align 1
  br label %4

4:                                                ; preds = %3, %1
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [6 x ptr], ptr @modifiersTypes, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @sequence_modifier_type_info_init() unnamed_addr #1 !PGOFuncName !38 {
  store ptr @seqModifier_ColorBalance, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 1), align 8, !tbaa !34
  store ptr @seqModifier_Curves, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 2), align 16, !tbaa !34
  store ptr @seqModifier_HueCorrect, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 3), align 8, !tbaa !34
  store ptr @seqModifier_BrightContrast, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 4), align 16, !tbaa !34
  store ptr @seqModifier_Mask, ptr getelementptr inbounds ([6 x ptr], ptr @modifiersTypes, i64 0, i64 5), align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequence_modifier_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @BKE_sequence_modifier_type_info_get(i32 noundef %2) #16
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = sext i32 %7 to i64
  %9 = tail call ptr %5(i64 noundef %8, ptr noundef nonnull @.str) #17
  %10 = getelementptr inbounds %struct.SequenceModifierData, ptr %9, i64 0, i32 2
  store i32 %2, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.SequenceModifierData, ptr %9, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = or i32 %12, 2
  store i32 %13, ptr %11, align 4, !tbaa !44
  %14 = icmp eq ptr %1, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i8, ptr %1, align 1, !tbaa !45
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, ptr %4, ptr %1
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi ptr [ %4, %3 ], [ %18, %15 ]
  %21 = getelementptr inbounds %struct.SequenceModifierData, ptr %9, i64 0, i32 4
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef nonnull %20, i64 noundef 64) #17
  %23 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  tail call void @BLI_addtail(ptr noundef nonnull %23, ptr noundef nonnull %9) #17
  tail call void @BKE_sequence_modifier_unique_name(ptr noundef %0, ptr noundef nonnull %9) #16
  %24 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %4, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  tail call void %25(ptr noundef nonnull %9) #17
  br label %28

28:                                               ; preds = %27, %19
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_modifier_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.SequenceModifierData, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = tail call ptr @BKE_sequence_modifier_type_info_get(i32 noundef %4) #16
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  tail call void @BLI_uniquename(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %5, i8 noundef zeroext 46, i32 noundef 24, i32 noundef 64) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_sequence_modifier_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #17
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #17
  tail call void @BKE_sequence_modifier_free(ptr noundef %1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_modifier_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.SequenceModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = tail call ptr @BKE_sequence_modifier_type_info_get(i32 noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef nonnull %0) #17
  br label %11

11:                                               ; preds = %10, %6, %1
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_modifier_clear(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  tail call void @BKE_sequence_modifier_free(ptr noundef nonnull %6) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !54

9:                                                ; preds = %5, %1
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !56 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequence_modifier_find_by_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 24) #17
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_sequence_modifier_apply_stack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !57
  %11 = and i32 %10, 8388608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @IMB_dupImBuf(ptr noundef %2) #17
  %15 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  tail call void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef %16, ptr noundef %14) #17
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %67, label %19

19:                                               ; preds = %8, %13
  %20 = phi ptr [ %14, %13 ], [ %2, %8 ]
  %21 = phi ptr [ %17, %13 ], [ %6, %8 ]
  %22 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  br label %23

23:                                               ; preds = %19, %52
  %24 = phi ptr [ %21, %19 ], [ %54, %52 ]
  %25 = phi ptr [ %20, %19 ], [ %53, %52 ]
  %26 = getelementptr inbounds %struct.SequenceModifierData, ptr %24, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !42
  %28 = tail call ptr @BKE_sequence_modifier_type_info_get(i32 noundef %27) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.SequenceModifierData, ptr %24, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !44
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %28, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %22, align 8, !tbaa !61
  %41 = icmp ne ptr %40, null
  %42 = zext i1 %41 to i8
  %43 = tail call fastcc ptr @modifier_mask_get(ptr noundef nonnull %24, ptr noundef %0, i32 noundef %3, i8 noundef zeroext %42) #16
  %44 = icmp eq ptr %25, %2
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %2) #17
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %46, %45 ], [ %25, %39 ]
  %49 = load ptr, ptr %36, align 8, !tbaa !60
  tail call void %49(ptr noundef nonnull %24, ptr noundef %48, ptr noundef %43) #17
  %50 = icmp eq ptr %43, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @IMB_freeImBuf(ptr noundef nonnull %43) #17
  br label %52

52:                                               ; preds = %35, %51, %47, %30, %23
  %53 = phi ptr [ %25, %23 ], [ %25, %30 ], [ %25, %35 ], [ %48, %51 ], [ %48, %47 ]
  %54 = load ptr, ptr %24, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %23, !llvm.loop !65

56:                                               ; preds = %52
  %57 = load ptr, ptr %5, align 8, !tbaa !48
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !57
  %62 = and i32 %61, 8388608
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !58
  tail call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %66, ptr noundef %53, i8 noundef zeroext 0) #17
  br label %67

67:                                               ; preds = %4, %13, %64, %59, %56
  %68 = phi ptr [ %53, %64 ], [ %53, %59 ], [ %53, %56 ], [ %14, %13 ], [ %2, %4 ]
  ret ptr %68
}

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_sequencer_imbuf_from_sequencer_space(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @modifier_mask_get(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #2 !PGOFuncName !66 {
  %5 = getelementptr inbounds %struct.SequenceModifierData, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.SequenceModifierData, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.SequenceModifierData, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = tail call ptr @BKE_sequencer_render_mask_input(ptr noundef %1, i32 noundef %6, ptr noundef %8, ptr noundef %10, i32 noundef %2, i8 noundef zeroext %3) #17
  ret ptr %11
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_modifier_list_copy(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 51
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 51
  br label %8

8:                                                ; preds = %6, %21
  %9 = phi ptr [ %4, %6 ], [ %22, %21 ]
  %10 = getelementptr inbounds %struct.SequenceModifierData, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !42
  %12 = tail call ptr @BKE_sequence_modifier_type_info_get(i32 noundef %11) #16
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %14 = tail call ptr %13(ptr noundef nonnull %9) #17
  %15 = icmp eq ptr %12, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %12, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %14, ptr noundef nonnull %9) #17
  br label %21

21:                                               ; preds = %20, %16, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef nonnull %14) #17
  %22 = load ptr, ptr %9, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %8, !llvm.loop !71

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_sequence_supports_modifiers(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !72
  %4 = add i32 %3, -6
  %5 = icmp ult i32 %4, -2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal void @colorBalance_init_data(ptr nocapture noundef writeonly %0) #7 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 2
  store float 1.000000e+00, ptr %2, align 4, !tbaa !74
  %3 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ 0, %1 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %5
  store float 1.000000e+00, ptr %6, align 4, !tbaa !77
  %7 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 1, i32 1, i64 %5
  store float 1.000000e+00, ptr %7, align 4, !tbaa !77
  %8 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 1, i32 2, i64 %5
  store float 1.000000e+00, ptr %8, align 4, !tbaa !77
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %11, label %4, !llvm.loop !78

11:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @colorBalance_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 !PGOFuncName !79 {
  %4 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 4, !tbaa !74
  tail call void @BKE_sequencer_color_balance_apply(ptr noundef nonnull %4, ptr noundef %1, float noundef %6, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequencer_color_balance_apply(ptr noundef, ptr noundef, float noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curves_init_data(ptr noundef %0) #2 !PGOFuncName !80 {
  %2 = getelementptr inbounds %struct.CurvesModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_set_defaults(ptr noundef nonnull %2, i32 noundef 4, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curves_free_data(ptr noundef %0) #2 !PGOFuncName !81 {
  %2 = getelementptr inbounds %struct.CurvesModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_free_data(ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curves_copy_data(ptr noundef %0, ptr noundef %1) #2 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.CurvesModifierData, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.CurvesModifierData, ptr %1, i64 0, i32 1
  tail call void @curvemapping_copy_data(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curves_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 !PGOFuncName !83 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.hue_correct_apply_threaded.mask, i64 12, i1 false)
  %6 = getelementptr inbounds %struct.CurvesModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_initialize(ptr noundef nonnull %6) #17
  tail call void @curvemapping_premultiply(ptr noundef nonnull %6, i32 noundef 0) #17
  call void @curvemapping_set_black_white(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  call fastcc void @modifier_apply_threaded(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @curves_apply_threaded, ptr noundef nonnull %6) #16
  call void @curvemapping_premultiply(ptr noundef nonnull %6, i32 noundef 1) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare void @curvemapping_set_defaults(ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @curvemapping_free_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @curvemapping_copy_data(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @curvemapping_premultiply(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @curvemapping_set_black_white(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @modifier_apply_threaded(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 !PGOFuncName !84 {
  %5 = alloca %struct.ModifierInitData, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  store ptr %0, ptr %5, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.ModifierInitData, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.ModifierInitData, ptr %5, i64 0, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.ModifierInitData, ptr %5, i64 0, i32 3
  store ptr %2, ptr %8, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !90
  call void @IMB_processor_apply_threaded(i32 noundef %10, i32 noundef 56, ptr noundef nonnull %5, ptr noundef nonnull @modifier_init_handle, ptr noundef nonnull @modifier_do_thread) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curves_apply_threaded(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5, ptr noundef %6) #2 !PGOFuncName !91 {
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 8
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %96

13:                                               ; preds = %7
  %14 = icmp sgt i32 %0, 0
  %15 = icmp eq ptr %3, null
  %16 = icmp eq ptr %5, null
  %17 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %18 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %19 = icmp eq ptr %2, null
  %20 = icmp eq ptr %4, null
  %21 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  %22 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %23 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %24 = zext nneg i32 %1 to i64
  %25 = zext nneg i32 %0 to i64
  br label %26

26:                                               ; preds = %13, %93
  %27 = phi i64 [ 0, %13 ], [ %94, %93 ]
  br i1 %14, label %28, label %93

28:                                               ; preds = %26
  %29 = trunc i64 %27 to i32
  %30 = mul i32 %29, %0
  br label %31

31:                                               ; preds = %28, %90
  %32 = phi i64 [ 0, %28 ], [ %91, %90 ]
  %33 = trunc i64 %32 to i32
  %34 = add i32 %30, %33
  %35 = shl nsw i32 %34, 2
  br i1 %15, label %68, label %36

36:                                               ; preds = %31
  %37 = zext nneg i32 %35 to i64
  %38 = getelementptr inbounds float, ptr %3, i64 %37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @curvemapping_evaluate_premulRGBF(ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %38) #17
  br i1 %16, label %63, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds float, ptr %5, i64 %37
  %41 = load float, ptr %38, align 4, !tbaa !77
  %42 = load float, ptr %40, align 4, !tbaa !77
  %43 = fsub float 1.000000e+00, %42
  %44 = load float, ptr %8, align 8, !tbaa !77
  %45 = fmul float %42, %44
  %46 = call float @llvm.fmuladd.f32(float %41, float %43, float %45)
  store float %46, ptr %38, align 4, !tbaa !77
  %47 = getelementptr inbounds float, ptr %38, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !77
  %49 = getelementptr inbounds float, ptr %40, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !77
  %51 = fsub float 1.000000e+00, %50
  %52 = load float, ptr %17, align 4, !tbaa !77
  %53 = fmul float %50, %52
  %54 = call float @llvm.fmuladd.f32(float %48, float %51, float %53)
  store float %54, ptr %47, align 4, !tbaa !77
  %55 = getelementptr inbounds float, ptr %38, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !77
  %57 = getelementptr inbounds float, ptr %40, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !77
  %59 = fsub float 1.000000e+00, %58
  %60 = load float, ptr %18, align 8, !tbaa !77
  %61 = fmul float %58, %60
  %62 = call float @llvm.fmuladd.f32(float %56, float %59, float %61)
  store float %62, ptr %55, align 4, !tbaa !77
  br label %67

63:                                               ; preds = %36
  %64 = load <2 x float>, ptr %8, align 8, !tbaa !77
  store <2 x float> %64, ptr %38, align 4, !tbaa !77
  %65 = load float, ptr %18, align 8, !tbaa !77
  %66 = getelementptr inbounds float, ptr %38, i64 2
  store float %65, ptr %66, align 4, !tbaa !77
  br label %67

67:                                               ; preds = %63, %39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  br label %68

68:                                               ; preds = %67, %31
  br i1 %19, label %90, label %69

69:                                               ; preds = %68
  %70 = zext nneg i32 %35 to i64
  %71 = getelementptr inbounds i8, ptr %2, i64 %70
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %10, ptr noundef nonnull %71) #16
  call void @curvemapping_evaluate_premulRGBF(ptr noundef %6, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  br i1 %20, label %86, label %72

72:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  %73 = getelementptr inbounds i8, ptr %4, i64 %70
  call void @rgb_uchar_to_float(ptr noundef nonnull %11, ptr noundef nonnull %73) #17
  %74 = load <2 x float>, ptr %10, align 16, !tbaa !77
  %75 = load <2 x float>, ptr %11, align 8, !tbaa !77
  %76 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %75
  %77 = load <2 x float>, ptr %9, align 8, !tbaa !77
  %78 = fmul <2 x float> %75, %77
  %79 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %74, <2 x float> %76, <2 x float> %78)
  store <2 x float> %79, ptr %10, align 16, !tbaa !77
  %80 = load float, ptr %21, align 8, !tbaa !77
  %81 = load float, ptr %22, align 8, !tbaa !77
  %82 = fsub float 1.000000e+00, %81
  %83 = load float, ptr %23, align 8, !tbaa !77
  %84 = fmul float %81, %83
  %85 = call float @llvm.fmuladd.f32(float %80, float %82, float %84)
  store float %85, ptr %21, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  br label %89

86:                                               ; preds = %69
  %87 = load <2 x float>, ptr %9, align 8, !tbaa !77
  store <2 x float> %87, ptr %10, align 16, !tbaa !77
  %88 = load float, ptr %23, align 8, !tbaa !77
  store float %88, ptr %21, align 8, !tbaa !77
  br label %89

89:                                               ; preds = %86, %72
  call fastcc void @premul_float_to_straight_uchar(ptr noundef nonnull %71, ptr noundef nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  br label %90

90:                                               ; preds = %89, %68
  %91 = add nuw nsw i64 %32, 1
  %92 = icmp eq i64 %91, %25
  br i1 %92, label %93, label %31, !llvm.loop !92

93:                                               ; preds = %90, %26
  %94 = add nuw nsw i64 %27, 1
  %95 = icmp eq i64 %94, %24
  br i1 %95, label %96, label %26, !llvm.loop !93

96:                                               ; preds = %93, %7
  ret void
}

; Function Attrs: optsize
declare void @IMB_processor_apply_threaded(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @modifier_init_handle(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #10 !PGOFuncName !94 {
  %5 = load ptr, ptr %3, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.ModifierInitData, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = shl nsw i32 %1, 2
  %9 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !95
  %11 = mul nsw i32 %10, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %12 = load i32, ptr %9, align 8, !tbaa !95
  store i32 %12, ptr %0, align 8, !tbaa !96
  %13 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 1
  store i32 %2, ptr %13, align 4, !tbaa !98
  %14 = getelementptr inbounds %struct.ModifierInitData, ptr %3, i64 0, i32 2
  %15 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 6
  %16 = load <2 x ptr>, ptr %14, align 8, !tbaa !34
  store <2 x ptr> %16, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = sext i32 %11 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  %23 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !100
  br label %24

24:                                               ; preds = %20, %4
  %25 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = sext i32 %11 to i64
  %30 = getelementptr inbounds float, ptr %26, i64 %29
  %31 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !101
  br label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq ptr %7, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !99
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = sext i32 %11 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 3
  store ptr %40, ptr %41, align 8, !tbaa !102
  br label %42

42:                                               ; preds = %38, %34
  %43 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !61
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = sext i32 %11 to i64
  %48 = getelementptr inbounds float, ptr %44, i64 %47
  br label %51

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 3
  store ptr null, ptr %50, align 8, !tbaa !102
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi ptr [ %48, %46 ], [ null, %49 ]
  %53 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 5
  store ptr %52, ptr %53, align 8, !tbaa !103
  br label %54

54:                                               ; preds = %51, %42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @modifier_do_thread(ptr nocapture noundef readonly %0) #2 !PGOFuncName !104 {
  %2 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = load i32, ptr %0, align 8, !tbaa !96
  %5 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !98
  %7 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.ModifierThread, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  tail call void %3(i32 noundef %4, i32 noundef %6, ptr noundef %8, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %16) #17
  ret ptr null
}

; Function Attrs: optsize
declare void @curvemapping_evaluate_premulRGBF(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_uchar_to_premul_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !107 {
  %3 = getelementptr inbounds i8, ptr %1, i64 3
  %4 = load i8, ptr %3, align 1, !tbaa !45
  %5 = uitofp i8 %4 to float
  %6 = fmul float %5, 0x3F70101020000000
  %7 = fmul float %6, 0x3F70101020000000
  %8 = load i8, ptr %1, align 1, !tbaa !45
  %9 = uitofp i8 %8 to float
  %10 = fmul float %7, %9
  store float %10, ptr %0, align 4, !tbaa !77
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !45
  %13 = uitofp i8 %12 to float
  %14 = fmul float %7, %13
  %15 = getelementptr inbounds float, ptr %0, i64 1
  store float %14, ptr %15, align 4, !tbaa !77
  %16 = getelementptr inbounds i8, ptr %1, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !45
  %18 = uitofp i8 %17 to float
  %19 = fmul float %7, %18
  %20 = getelementptr inbounds float, ptr %0, i64 2
  store float %19, ptr %20, align 4, !tbaa !77
  %21 = getelementptr inbounds float, ptr %0, i64 3
  store float %6, ptr %21, align 4, !tbaa !77
  ret void
}

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_float_to_straight_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !108 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !77
  %5 = fcmp oeq float %4, 0.000000e+00
  %6 = fcmp oeq float %4, 1.000000e+00
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %2
  %9 = load float, ptr %1, align 4, !tbaa !77
  %10 = fcmp ugt float %9, 0.000000e+00
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = fcmp ogt float %9, 0x3FEFEFEFE0000000
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = tail call float @llvm.fmuladd.f32(float %9, float 2.550000e+02, float 5.000000e-01)
  %15 = fptoui float %14 to i8
  br label %16

16:                                               ; preds = %13, %11, %8
  %17 = phi i8 [ 0, %8 ], [ %15, %13 ], [ -1, %11 ]
  store i8 %17, ptr %0, align 1, !tbaa !45
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !77
  %20 = fcmp ugt float %19, 0.000000e+00
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = fcmp ogt float %19, 0x3FEFEFEFE0000000
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = tail call float @llvm.fmuladd.f32(float %19, float 2.550000e+02, float 5.000000e-01)
  %25 = fptoui float %24 to i8
  br label %26

26:                                               ; preds = %23, %21, %16
  %27 = phi i8 [ 0, %16 ], [ %25, %23 ], [ -1, %21 ]
  %28 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !45
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !77
  %31 = fcmp ugt float %30, 0.000000e+00
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = fcmp ogt float %30, 0x3FEFEFEFE0000000
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = tail call float @llvm.fmuladd.f32(float %30, float 2.550000e+02, float 5.000000e-01)
  %36 = fptoui float %35 to i8
  br label %37

37:                                               ; preds = %34, %32, %26
  %38 = phi i8 [ 0, %26 ], [ %36, %34 ], [ -1, %32 ]
  %39 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %38, ptr %39, align 1, !tbaa !45
  %40 = load float, ptr %3, align 4, !tbaa !77
  %41 = fcmp ugt float %40, 0.000000e+00
  br i1 %41, label %42, label %90

42:                                               ; preds = %37
  %43 = fcmp ogt float %40, 0x3FEFEFEFE0000000
  br i1 %43, label %90, label %44

44:                                               ; preds = %42
  %45 = tail call float @llvm.fmuladd.f32(float %40, float 2.550000e+02, float 5.000000e-01)
  %46 = fptoui float %45 to i8
  br label %90

47:                                               ; preds = %2
  %48 = fdiv float 1.000000e+00, %4
  %49 = load float, ptr %1, align 4, !tbaa !77
  %50 = fmul float %48, %49
  %51 = fcmp ugt float %50, 0.000000e+00
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = fcmp ogt float %50, 0x3FEFEFEFE0000000
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = tail call float @llvm.fmuladd.f32(float %50, float 2.550000e+02, float 5.000000e-01)
  %56 = fptoui float %55 to i8
  br label %57

57:                                               ; preds = %54, %52, %47
  %58 = phi i8 [ 0, %47 ], [ %56, %54 ], [ -1, %52 ]
  store i8 %58, ptr %0, align 1, !tbaa !45
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !77
  %61 = fmul float %48, %60
  %62 = fcmp ugt float %61, 0.000000e+00
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = fcmp ogt float %61, 0x3FEFEFEFE0000000
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = tail call float @llvm.fmuladd.f32(float %61, float 2.550000e+02, float 5.000000e-01)
  %67 = fptoui float %66 to i8
  br label %68

68:                                               ; preds = %65, %63, %57
  %69 = phi i8 [ 0, %57 ], [ %67, %65 ], [ -1, %63 ]
  %70 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %69, ptr %70, align 1, !tbaa !45
  %71 = getelementptr inbounds float, ptr %1, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !77
  %73 = fmul float %48, %72
  %74 = fcmp ugt float %73, 0.000000e+00
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = fcmp ogt float %73, 0x3FEFEFEFE0000000
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = tail call float @llvm.fmuladd.f32(float %73, float 2.550000e+02, float 5.000000e-01)
  %79 = fptoui float %78 to i8
  br label %80

80:                                               ; preds = %77, %75, %68
  %81 = phi i8 [ 0, %68 ], [ %79, %77 ], [ -1, %75 ]
  %82 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %81, ptr %82, align 1, !tbaa !45
  %83 = load float, ptr %3, align 4, !tbaa !77
  %84 = fcmp ugt float %83, 0.000000e+00
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = fcmp ogt float %83, 0x3FEFEFEFE0000000
  br i1 %86, label %90, label %87

87:                                               ; preds = %85
  %88 = tail call float @llvm.fmuladd.f32(float %83, float 2.550000e+02, float 5.000000e-01)
  %89 = fptoui float %88 to i8
  br label %90

90:                                               ; preds = %80, %85, %87, %37, %42, %44
  %91 = phi i8 [ 0, %37 ], [ %46, %44 ], [ -1, %42 ], [ 0, %80 ], [ %89, %87 ], [ -1, %85 ]
  %92 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %91, ptr %92, align 1, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @hue_correct_init_data(ptr noundef %0) #2 !PGOFuncName !109 {
  %2 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_set_defaults(ptr noundef nonnull %2, i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #17
  %3 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1, i32 2
  store i32 4, ptr %3, align 8, !tbaa !110
  %4 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1, i32 5
  br label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ 0, %1 ], [ %9, %5 ]
  %7 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1, i32 6, i64 %6
  %8 = load i32, ptr %3, align 8, !tbaa !110
  tail call void @curvemap_reset(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef %8, i32 noundef 1) #17
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %11, label %5, !llvm.loop !114

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1, i32 1
  store i32 1, ptr %12, align 4, !tbaa !115
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @hue_correct_free_data(ptr noundef %0) #2 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_free_data(ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @hue_correct_copy_data(ptr noundef %0, ptr noundef %1) #2 !PGOFuncName !117 {
  %3 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %1, i64 0, i32 1
  tail call void @curvemapping_copy_data(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @hue_correct_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 !PGOFuncName !118 {
  %4 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %0, i64 0, i32 1
  tail call void @curvemapping_initialize(ptr noundef nonnull %4) #17
  tail call fastcc void @modifier_apply_threaded(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @hue_correct_apply_threaded, ptr noundef nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @curvemap_reset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @hue_correct_apply_threaded(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5, ptr noundef %6) #2 !PGOFuncName !119 {
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 4
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %102

13:                                               ; preds = %7
  %14 = icmp sgt i32 %0, 0
  %15 = icmp eq ptr %3, null
  %16 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %17 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %18 = getelementptr inbounds float, ptr %11, i64 1
  %19 = getelementptr inbounds float, ptr %11, i64 2
  %20 = getelementptr inbounds float, ptr %9, i64 1
  %21 = getelementptr inbounds float, ptr %9, i64 2
  %22 = icmp eq ptr %5, null
  %23 = icmp eq ptr %4, null
  %24 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %25 = zext nneg i32 %1 to i64
  %26 = zext nneg i32 %0 to i64
  br label %27

27:                                               ; preds = %13, %99
  %28 = phi i64 [ 0, %13 ], [ %100, %99 ]
  br i1 %14, label %29, label %99

29:                                               ; preds = %27
  %30 = trunc i64 %28 to i32
  %31 = mul i32 %30, %0
  br label %32

32:                                               ; preds = %29, %96
  %33 = phi i64 [ 0, %29 ], [ %97, %96 ]
  %34 = trunc i64 %33 to i32
  %35 = add i32 %31, %34
  %36 = shl nsw i32 %35, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) @__const.hue_correct_apply_threaded.mask, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  %37 = zext nneg i32 %36 to i64
  br i1 %15, label %40, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds float, ptr %3, i64 %37
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %39) #16
  br label %42

40:                                               ; preds = %32
  %41 = getelementptr inbounds i8, ptr %2, i64 %37
  call void @rgb_uchar_to_float(ptr noundef nonnull %8, ptr noundef %41) #17
  br label %42

42:                                               ; preds = %40, %38
  %43 = load float, ptr %8, align 8, !tbaa !77
  %44 = load float, ptr %16, align 4, !tbaa !77
  %45 = load float, ptr %17, align 8, !tbaa !77
  call void @rgb_to_hsv(float noundef %43, float noundef %44, float noundef %45, ptr noundef nonnull %11, ptr noundef nonnull %18, ptr noundef nonnull %19) #17
  %46 = load float, ptr %11, align 4, !tbaa !77
  %47 = call float @curvemapping_evaluateF(ptr noundef %6, i32 noundef 0, float noundef %46) #17
  %48 = fadd float %47, -5.000000e-01
  %49 = load float, ptr %11, align 4, !tbaa !77
  %50 = fadd float %49, %48
  store float %50, ptr %11, align 4, !tbaa !77
  %51 = call float @curvemapping_evaluateF(ptr noundef %6, i32 noundef 1, float noundef %50) #17
  %52 = fmul float %51, 2.000000e+00
  %53 = load float, ptr %18, align 4, !tbaa !77
  %54 = fmul float %53, %52
  store float %54, ptr %18, align 4, !tbaa !77
  %55 = load float, ptr %11, align 4, !tbaa !77
  %56 = call float @curvemapping_evaluateF(ptr noundef %6, i32 noundef 2, float noundef %55) #17
  %57 = fmul float %56, 2.000000e+00
  %58 = load float, ptr %19, align 4, !tbaa !77
  %59 = fmul float %58, %57
  store float %59, ptr %19, align 4, !tbaa !77
  %60 = load float, ptr %11, align 4, !tbaa !77
  %61 = call float @llvm.floor.f32(float %60)
  %62 = fsub float %60, %61
  store float %62, ptr %11, align 4, !tbaa !77
  %63 = load float, ptr %18, align 4, !tbaa !77
  %64 = fcmp olt float %63, 0.000000e+00
  br i1 %64, label %67, label %65

65:                                               ; preds = %42
  %66 = fcmp ogt float %63, 1.000000e+00
  br i1 %66, label %67, label %69

67:                                               ; preds = %65, %42
  %68 = phi float [ 0.000000e+00, %42 ], [ 1.000000e+00, %65 ]
  store float %68, ptr %18, align 4, !tbaa !77
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi float [ %63, %65 ], [ %68, %67 ]
  call void @hsv_to_rgb(float noundef %62, float noundef %70, float noundef %59, ptr noundef nonnull %9, ptr noundef nonnull %20, ptr noundef nonnull %21) #17
  br i1 %22, label %74, label %71

71:                                               ; preds = %69
  %72 = zext nneg i32 %36 to i64
  %73 = getelementptr inbounds float, ptr %5, i64 %72
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %73) #16
  br label %78

74:                                               ; preds = %69
  br i1 %23, label %78, label %75

75:                                               ; preds = %74
  %76 = zext nneg i32 %36 to i64
  %77 = getelementptr inbounds i8, ptr %4, i64 %76
  call void @rgb_uchar_to_float(ptr noundef nonnull %10, ptr noundef nonnull %77) #17
  br label %78

78:                                               ; preds = %74, %75, %71
  %79 = load <2 x float>, ptr %8, align 8, !tbaa !77
  %80 = load <2 x float>, ptr %10, align 8, !tbaa !77
  %81 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %80
  %82 = load <2 x float>, ptr %9, align 8, !tbaa !77
  %83 = fmul <2 x float> %80, %82
  %84 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %79, <2 x float> %81, <2 x float> %83)
  store <2 x float> %84, ptr %9, align 8, !tbaa !77
  %85 = load float, ptr %17, align 8, !tbaa !77
  %86 = load float, ptr %24, align 8, !tbaa !77
  %87 = fsub float 1.000000e+00, %86
  %88 = load float, ptr %21, align 8, !tbaa !77
  %89 = fmul float %86, %88
  %90 = call float @llvm.fmuladd.f32(float %85, float %87, float %89)
  store float %90, ptr %21, align 8, !tbaa !77
  %91 = zext nneg i32 %36 to i64
  br i1 %15, label %94, label %92

92:                                               ; preds = %78
  %93 = getelementptr inbounds float, ptr %3, i64 %91
  call fastcc void @copy_v3_v3(ptr noundef nonnull %93, ptr noundef nonnull %9) #16
  br label %96

94:                                               ; preds = %78
  %95 = getelementptr inbounds i8, ptr %2, i64 %91
  call void @rgb_float_to_uchar(ptr noundef %95, ptr noundef nonnull %9) #17
  br label %96

96:                                               ; preds = %94, %92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  %97 = add nuw nsw i64 %33, 1
  %98 = icmp eq i64 %97, %26
  br i1 %98, label %99, label %32, !llvm.loop !120

99:                                               ; preds = %96, %27
  %100 = add nuw nsw i64 %28, 1
  %101 = icmp eq i64 %100, %25
  br i1 %101, label %102, label %27, !llvm.loop !121

102:                                              ; preds = %99, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !122 {
  %3 = load float, ptr %1, align 4, !tbaa !77
  store float %3, ptr %0, align 4, !tbaa !77
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !77
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !77
  ret void
}

; Function Attrs: optsize
declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: optsize
declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @brightcontrast_apply(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 !PGOFuncName !123 {
  %4 = alloca %struct.BrightContrastThreadData, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.BrightContrastModifierData, ptr %0, i64 0, i32 1
  %6 = load <2 x float>, ptr %5, align 8, !tbaa !77
  store <2 x float> %6, ptr %4, align 8, !tbaa !77
  call fastcc void @modifier_apply_threaded(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @brightcontrast_apply_threaded, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @brightcontrast_apply_threaded(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr nocapture noundef readonly %6) #13 !PGOFuncName !124 {
  %8 = load float, ptr %6, align 4, !tbaa !125
  %9 = fdiv float %8, 1.000000e+02
  %10 = getelementptr inbounds %struct.BrightContrastThreadData, ptr %6, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !127
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
  %49 = load i8, ptr %48, align 1, !tbaa !45
  %50 = uitofp i8 %49 to float
  %51 = fdiv float %50, 2.550000e+02
  %52 = tail call float @llvm.fmuladd.f32(float %21, float %51, float %22)
  br i1 %27, label %61, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds i8, ptr %45, i64 %47
  %55 = load i8, ptr %54, align 1, !tbaa !45
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
  store i8 %70, ptr %48, align 1, !tbaa !45
  %71 = add nuw nsw i64 %47, 1
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %93, label %46, !llvm.loop !128

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
  %81 = load float, ptr %80, align 4, !tbaa !77
  %82 = tail call float @llvm.fmuladd.f32(float %21, float %81, float %22)
  br i1 %29, label %89, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds float, ptr %77, i64 %79
  %85 = load float, ptr %84, align 4, !tbaa !77
  %86 = fsub float 1.000000e+00, %85
  %87 = fmul float %82, %85
  %88 = tail call float @llvm.fmuladd.f32(float %81, float %86, float %87)
  br label %89

89:                                               ; preds = %78, %83
  %90 = phi float [ %88, %83 ], [ %82, %78 ]
  store float %90, ptr %80, align 4, !tbaa !77
  %91 = add nuw nsw i64 %79, 1
  %92 = icmp eq i64 %91, 3
  br i1 %92, label %93, label %78, !llvm.loop !129

93:                                               ; preds = %68, %89, %73
  %94 = add nuw nsw i64 %38, 1
  %95 = icmp eq i64 %94, %31
  br i1 %95, label %96, label %37, !llvm.loop !130

96:                                               ; preds = %93, %32
  %97 = add nuw nsw i64 %33, 1
  %98 = icmp eq i64 %97, %30
  br i1 %98, label %99, label %32, !llvm.loop !131

99:                                               ; preds = %96, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @maskmodifier_apply(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 !PGOFuncName !132 {
  %4 = alloca %struct.BrightContrastThreadData, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.BrightContrastModifierData, ptr %0, i64 0, i32 1
  %6 = load <2 x float>, ptr %5, align 8, !tbaa !77
  store <2 x float> %6, ptr %4, align 8, !tbaa !77
  call fastcc void @modifier_apply_threaded(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @maskmodifier_apply_threaded, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @maskmodifier_apply_threaded(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr nocapture readnone %6) #13 !PGOFuncName !133 {
  %8 = icmp eq ptr %2, null
  %9 = icmp ne ptr %4, null
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %72

11:                                               ; preds = %7
  %12 = icmp eq ptr %3, null
  %13 = icmp ne ptr %5, null
  %14 = or i1 %12, %13
  %15 = icmp sgt i32 %1, 0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %2, i64 3
  %19 = icmp sgt i32 %0, 0
  %20 = zext nneg i32 %1 to i64
  %21 = zext nneg i32 %0 to i64
  br label %22

22:                                               ; preds = %17, %69
  %23 = phi i64 [ 0, %17 ], [ %70, %69 ]
  br i1 %19, label %24, label %69

24:                                               ; preds = %22
  %25 = trunc i64 %23 to i32
  %26 = mul i32 %25, %0
  br label %27

27:                                               ; preds = %24, %66
  %28 = phi i64 [ 0, %24 ], [ %67, %66 ]
  %29 = trunc i64 %28 to i32
  %30 = add i32 %26, %29
  %31 = shl nsw i32 %30, 2
  br i1 %8, label %51, label %32

32:                                               ; preds = %27
  %33 = zext nneg i32 %31 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !45
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !45
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i8, ptr %34, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !45
  %42 = zext i8 %41 to i32
  %43 = tail call fastcc i32 @min_iii(i32 noundef %36, i32 noundef %39, i32 noundef %42) #16, !range !134
  %44 = getelementptr i8, ptr %18, i64 %33
  %45 = load i8, ptr %44, align 1, !tbaa !45
  %46 = zext i8 %45 to i32
  %47 = mul nuw nsw i32 %43, %46
  %48 = sitofp i32 %47 to float
  %49 = fdiv float %48, 2.550000e+02
  %50 = fptoui float %49 to i8
  store i8 %50, ptr %44, align 1, !tbaa !45
  br label %66

51:                                               ; preds = %27
  br i1 %12, label %66, label %52

52:                                               ; preds = %51
  %53 = zext nneg i32 %31 to i64
  %54 = getelementptr inbounds float, ptr %3, i64 %53
  %55 = getelementptr inbounds float, ptr %5, i64 %53
  %56 = load float, ptr %55, align 4, !tbaa !77
  %57 = getelementptr inbounds float, ptr %55, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !77
  %59 = getelementptr inbounds float, ptr %55, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !77
  %61 = tail call fastcc float @min_fff(float noundef %56, float noundef %58, float noundef %60) #16
  %62 = insertelement <4 x float> poison, float %61, i64 0
  %63 = shufflevector <4 x float> %62, <4 x float> poison, <4 x i32> zeroinitializer
  %64 = load <4 x float>, ptr %54, align 4, !tbaa !77
  %65 = fmul <4 x float> %63, %64
  store <4 x float> %65, ptr %54, align 4, !tbaa !77
  br label %66

66:                                               ; preds = %52, %51, %32
  %67 = add nuw nsw i64 %28, 1
  %68 = icmp eq i64 %67, %21
  br i1 %68, label %69, label %27, !llvm.loop !135

69:                                               ; preds = %66, %22
  %70 = add nuw nsw i64 %23, 1
  %71 = icmp eq i64 %70, %20
  br i1 %71, label %72, label %22, !llvm.loop !136

72:                                               ; preds = %69, %11, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_iii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 !PGOFuncName !137 {
  %4 = tail call fastcc i32 @min_ii(i32 noundef %0, i32 noundef %1) #16, !range !134
  %5 = tail call fastcc i32 @min_ii(i32 noundef %4, i32 noundef %2) #16, !range !134
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #14 !PGOFuncName !138 {
  %4 = tail call fastcc float @min_ff(float noundef %0, float noundef %1) #16
  %5 = tail call fastcc float @min_ff(float noundef %4, float noundef %2) #16
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #14 !PGOFuncName !139 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #14 !PGOFuncName !140 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_render_mask_input(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"seqmodifier.c:sequence_modifier_type_info_init"}
!39 = !{!40, !41, i64 128}
!40 = !{!"SequenceModifierTypeInfo", !36, i64 0, !36, i64 64, !41, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160}
!41 = !{!"int", !36, i64 0}
!42 = !{!43, !41, i64 16}
!43 = !{!"SequenceModifierData", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !36, i64 24, !41, i64 88, !41, i64 92, !35, i64 96, !35, i64 104}
!44 = !{!43, !41, i64 20}
!45 = !{!36, !36, i64 0}
!46 = !{!40, !35, i64 136}
!47 = !{!40, !35, i64 144}
!48 = !{!49, !35, i64 336}
!49 = !{!"Sequence", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !51, i64 156, !51, i64 158, !41, i64 160, !41, i64 164, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !50, i64 224, !50, i64 228, !35, i64 232, !35, i64 240, !35, i64 248, !52, i64 256, !35, i64 272, !35, i64 280, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !35, i64 304, !41, i64 312, !41, i64 316, !41, i64 320, !50, i64 324, !41, i64 328, !36, i64 332, !36, i64 333, !52, i64 336}
!50 = !{!"float", !36, i64 0}
!51 = !{!"short", !36, i64 0}
!52 = !{!"ListBase", !35, i64 0, !35, i64 8}
!53 = !{!43, !35, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"seqmodifier.c:BLI_listbase_clear"}
!57 = !{!49, !41, i64 96}
!58 = !{!59, !35, i64 16}
!59 = !{!"SeqRenderData", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !50, i64 40, !36, i64 44, !36, i64 45}
!60 = !{!40, !35, i64 160}
!61 = !{!62, !35, i64 48}
!62 = !{!"ImBuf", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !36, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !50, i64 112, !36, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !35, i64 296, !35, i64 304, !41, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !41, i64 2376, !35, i64 2384, !41, i64 2392, !41, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !41, i64 2432, !63, i64 2436, !64, i64 2456}
!63 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!64 = !{!"DDSData", !41, i64 0, !41, i64 4, !35, i64 8, !41, i64 16}
!65 = distinct !{!65, !55}
!66 = !{!"seqmodifier.c:modifier_mask_get"}
!67 = !{!43, !41, i64 88}
!68 = !{!43, !35, i64 96}
!69 = !{!43, !35, i64 104}
!70 = !{!40, !35, i64 152}
!71 = distinct !{!71, !55}
!72 = !{!49, !41, i64 100}
!73 = !{!"seqmodifier.c:colorBalance_init_data"}
!74 = !{!75, !50, i64 156}
!75 = !{!"ColorBalanceModifierData", !43, i64 0, !76, i64 112, !50, i64 156}
!76 = !{!"StripColorBalance", !36, i64 0, !36, i64 12, !36, i64 24, !41, i64 36, !41, i64 40}
!77 = !{!50, !50, i64 0}
!78 = distinct !{!78, !55}
!79 = !{!"seqmodifier.c:colorBalance_apply"}
!80 = !{!"seqmodifier.c:curves_init_data"}
!81 = !{!"seqmodifier.c:curves_free_data"}
!82 = !{!"seqmodifier.c:curves_copy_data"}
!83 = !{!"seqmodifier.c:curves_apply"}
!84 = !{!"seqmodifier.c:modifier_apply_threaded"}
!85 = !{!86, !35, i64 0}
!86 = !{!"ModifierInitData", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!87 = !{!86, !35, i64 8}
!88 = !{!86, !35, i64 16}
!89 = !{!86, !35, i64 24}
!90 = !{!62, !41, i64 20}
!91 = !{!"seqmodifier.c:curves_apply_threaded"}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !55}
!94 = !{!"seqmodifier.c:modifier_init_handle"}
!95 = !{!62, !41, i64 16}
!96 = !{!97, !41, i64 0}
!97 = !{!"ModifierThread", !41, i64 0, !41, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48}
!98 = !{!97, !41, i64 4}
!99 = !{!62, !35, i64 40}
!100 = !{!97, !35, i64 8}
!101 = !{!97, !35, i64 24}
!102 = !{!97, !35, i64 16}
!103 = !{!97, !35, i64 32}
!104 = !{!"seqmodifier.c:modifier_do_thread"}
!105 = !{!97, !35, i64 48}
!106 = !{!97, !35, i64 40}
!107 = !{!"seqmodifier.c:straight_uchar_to_premul_float"}
!108 = !{!"seqmodifier.c:premul_float_to_straight_uchar"}
!109 = !{!"seqmodifier.c:hue_correct_init_data"}
!110 = !{!111, !41, i64 120}
!111 = !{!"HueCorrectModifierData", !43, i64 0, !112, i64 112}
!112 = !{!"CurveMapping", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !113, i64 16, !113, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!113 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!114 = distinct !{!114, !55}
!115 = !{!111, !41, i64 116}
!116 = !{!"seqmodifier.c:hue_correct_free_data"}
!117 = !{!"seqmodifier.c:hue_correct_copy_data"}
!118 = !{!"seqmodifier.c:hue_correct_apply"}
!119 = !{!"seqmodifier.c:hue_correct_apply_threaded"}
!120 = distinct !{!120, !55}
!121 = distinct !{!121, !55}
!122 = !{!"seqmodifier.c:copy_v3_v3"}
!123 = !{!"seqmodifier.c:brightcontrast_apply"}
!124 = !{!"seqmodifier.c:brightcontrast_apply_threaded"}
!125 = !{!126, !50, i64 0}
!126 = !{!"BrightContrastThreadData", !50, i64 0, !50, i64 4}
!127 = !{!126, !50, i64 4}
!128 = distinct !{!128, !55}
!129 = distinct !{!129, !55}
!130 = distinct !{!130, !55}
!131 = distinct !{!131, !55}
!132 = !{!"seqmodifier.c:maskmodifier_apply"}
!133 = !{!"seqmodifier.c:maskmodifier_apply_threaded"}
!134 = !{i32 0, i32 256}
!135 = distinct !{!135, !55}
!136 = distinct !{!136, !55}
!137 = !{!"seqmodifier.c:min_iii"}
!138 = !{!"seqmodifier.c:min_fff"}
!139 = !{!"seqmodifier.c:min_ii"}
!140 = !{!"seqmodifier.c:min_ff"}
