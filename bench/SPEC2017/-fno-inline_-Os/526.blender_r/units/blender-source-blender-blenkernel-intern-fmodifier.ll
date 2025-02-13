; ModuleID = 'blender/source/blender/blenkernel/intern/fmodifier.c'
source_filename = "blender/source/blender/blenkernel/intern/fmodifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FModifierTypeInfo = type { i16, i16, i16, i16, [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FCM_EnvelopeData = type { float, float, float, i16, i16 }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.FMod_Generator = type { ptr, i32, i32, i32, i32 }
%struct.FMod_FunctionGenerator = type { float, float, float, float, i32, i32 }
%struct.FMod_Envelope = type { ptr, i32, float, float, float }
%struct.FMod_Cycles = type { i16, i16, i16, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.FPoint = type { [2 x float], i32, i32 }
%struct.FMod_Noise = type { float, float, float, float, i16, i16 }
%struct.FMod_Python = type { ptr, ptr }
%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }
%struct.FMod_Limits = type { %struct.rctf, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.FMod_Stepped = type { float, float, float, float, i32 }

@.str.2 = private unnamed_addr constant [50 x i8] c"\09round = %d: start = %d, end = %d, arraylen = %d\0A\00", align 1
@FMI_INIT = internal unnamed_addr global i1 false, align 2
@fmodifiersTypeInfo = internal unnamed_addr global [10 x ptr] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [63 x i8] c"No valid F-Curve Modifier type-info data available. Type = %i\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"F-Curve Modifier\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"fmodifier stack temp storage\00", align 1
@FMI_GENERATOR = internal global %struct.FModifierTypeInfo { i16 1, i16 24, i16 3, i16 2, [64 x i8] c"Generator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"FMod_Generator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fcm_generator_free, ptr @fcm_generator_copy, ptr @fcm_generator_new_data, ptr @fcm_generator_verify, ptr null, ptr @fcm_generator_evaluate, ptr null, ptr null }, align 8
@FMI_FN_GENERATOR = internal global %struct.FModifierTypeInfo { i16 2, i16 24, i16 3, i16 2, [64 x i8] c"Built-In Function\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"FMod_FunctionGenerator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @fcm_fn_generator_new_data, ptr null, ptr null, ptr @fcm_fn_generator_evaluate, ptr null, ptr null }, align 8
@FMI_ENVELOPE = internal global %struct.FModifierTypeInfo { i16 3, i16 24, i16 2, i16 0, [64 x i8] c"Envelope\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"FMod_Envelope\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fcm_envelope_free, ptr @fcm_envelope_copy, ptr @fcm_envelope_new_data, ptr @fcm_envelope_verify, ptr null, ptr @fcm_envelope_evaluate, ptr null, ptr null }, align 8
@FMI_CYCLES = internal global %struct.FModifierTypeInfo { i16 4, i16 8, i16 0, i16 9, [64 x i8] c"Cycles\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"FMod_Cycles\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @fcm_cycles_new_data, ptr null, ptr null, ptr null, ptr @fcm_cycles_time, ptr @fcm_cycles_evaluate }, align 8
@FMI_NOISE = internal global %struct.FModifierTypeInfo { i16 5, i16 20, i16 2, i16 0, [64 x i8] c"Noise\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"FMod_Noise\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @fcm_noise_new_data, ptr null, ptr null, ptr @fcm_noise_evaluate, ptr null, ptr null }, align 8
@FMI_PYTHON = internal global %struct.FModifierTypeInfo { i16 7, i16 16, i16 3, i16 4, [64 x i8] c"Python\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"FMod_Python\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fcm_python_free, ptr @fcm_python_copy, ptr @fcm_python_new_data, ptr null, ptr null, ptr @fcm_python_evaluate, ptr null, ptr null }, align 8
@FMI_LIMITS = internal global %struct.FModifierTypeInfo { i16 8, i16 24, i16 3, i16 4, [64 x i8] c"Limits\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"FMod_Limits\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr null, ptr @fcm_limits_time, ptr @fcm_limits_evaluate, ptr null, ptr null }, align 8
@FMI_STEPPED = internal global %struct.FModifierTypeInfo { i16 9, i16 24, i16 3, i16 4, [64 x i8] c"Stepped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"FMod_Stepped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @fcm_stepped_new_data, ptr null, ptr @fcm_stepped_time, ptr null, ptr null, ptr null }, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"FMod_Generator_Coefs\00", align 1
@MEM_recallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.fcm_generator_verify = private unnamed_addr constant [21 x i8] c"fcm_generator_verify\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Poly Powers\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Invalid Function-Generator for F-Modifier - %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"tFCMED_Cycles\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"PyFModifierProps\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Error: binarysearch_fcm_envelopedata_index() was taking too long\00", align 1
@str.14 = private unnamed_addr constant [73 x i8] c"Warning: binarysearch_fcm_envelopedata_index() encountered invalid array\00", align 1
@str.15 = private unnamed_addr constant [97 x i8] c"Error: Cannot add 'Cycles' modifier to F-Curve, as 'Cycles' modifier can only be first in stack.\00", align 1
@str.16 = private unnamed_addr constant [45 x i8] c"remove_fmodifier() - no modifier stack given\00", align 1
@str.17 = private unnamed_addr constant [49 x i8] c"Error: No F-Curve with F-Curve Modifiers to Bake\00", align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @BKE_fcm_envelope_find_index(ptr noundef readonly %0, float noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = shl nsw i32 %2, 1
  store i8 0, ptr %3, align 1, !tbaa !34
  %6 = icmp slt i32 %2, 1
  %7 = icmp eq ptr %0, null
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  br label %74

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %0, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !37
  %14 = fcmp olt float %13, %1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = fsub float %1, %13
  %17 = fcmp ugt float %16, 0x3F1A36E2E0000000
  br i1 %17, label %22, label %21

18:                                               ; preds = %11
  %19 = fsub float %13, %1
  %20 = fcmp ugt float %19, 0x3F1A36E2E0000000
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %15
  store i8 1, ptr %3, align 1, !tbaa !34
  br label %74

22:                                               ; preds = %18, %15
  %23 = fcmp ogt float %13, %1
  br i1 %23, label %74, label %24

24:                                               ; preds = %22
  %25 = add nsw i32 %2, -1
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %0, i64 %26, i32 2
  %28 = load float, ptr %27, align 4, !tbaa !37
  %29 = fcmp olt float %28, %1
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = fsub float %1, %28
  %32 = fcmp ugt float %31, 0x3F1A36E2E0000000
  br i1 %32, label %74, label %36

33:                                               ; preds = %24
  %34 = fsub float %28, %1
  %35 = fcmp ugt float %34, 0x3F1A36E2E0000000
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %30
  store i8 1, ptr %3, align 1, !tbaa !34
  br label %74

37:                                               ; preds = %33, %61
  %38 = phi i32 [ %63, %61 ], [ 0, %33 ]
  %39 = phi i32 [ %62, %61 ], [ %2, %33 ]
  %40 = phi i32 [ %64, %61 ], [ 0, %33 ]
  %41 = sub nsw i32 %39, %38
  %42 = sdiv i32 %41, 2
  %43 = add nsw i32 %42, %38
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %0, i64 %44, i32 2
  %46 = load float, ptr %45, align 4, !tbaa !37
  %47 = fcmp olt float %46, %1
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = fsub float %1, %46
  %50 = fcmp ugt float %49, 0x3F1A36E2E0000000
  br i1 %50, label %54, label %60

51:                                               ; preds = %37
  %52 = fsub float %46, %1
  %53 = fcmp ugt float %52, 0x3F1A36E2E0000000
  br i1 %53, label %56, label %60

54:                                               ; preds = %48
  %55 = add nsw i32 %43, 1
  br label %61

56:                                               ; preds = %51
  %57 = fcmp ogt float %46, %1
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = add nsw i32 %43, -1
  br label %61

60:                                               ; preds = %48, %51
  store i8 1, ptr %3, align 1, !tbaa !34
  br label %74

61:                                               ; preds = %56, %58, %54
  %62 = phi i32 [ %39, %56 ], [ %59, %58 ], [ %39, %54 ]
  %63 = phi i32 [ %38, %56 ], [ %38, %58 ], [ %55, %54 ]
  %64 = add nuw nsw i32 %40, 1
  %65 = icmp sle i32 %63, %62
  %66 = icmp slt i32 %64, %5
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %37, label %68, !llvm.loop !41

68:                                               ; preds = %61
  %69 = add i32 %5, -2
  %70 = icmp eq i32 %40, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %64, i32 noundef %63, i32 noundef %62, i32 noundef %2) #20
  br label %74

74:                                               ; preds = %22, %36, %21, %30, %60, %68, %71, %9
  %75 = phi i32 [ 0, %9 ], [ %43, %60 ], [ %63, %71 ], [ %63, %68 ], [ %2, %30 ], [ 0, %22 ], [ %25, %36 ], [ 0, %21 ]
  ret i32 %75
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @get_fmodifier_typeinfo(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @FMI_INIT, align 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call fastcc void @fmods_init_typeinfo() #20
  store i1 true, ptr @FMI_INIT, align 2
  br label %4

4:                                                ; preds = %3, %1
  %5 = icmp ult i32 %0, 10
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext nneg i32 %0 to i64
  %8 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  br label %12

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0) #20
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %9, %6 ], [ null, %10 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @fmods_init_typeinfo() unnamed_addr #3 !PGOFuncName !45 {
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !43
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !43
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !43
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !43
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !43
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !43
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !43
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !43
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !43
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !43
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @fmodifier_get_typeinfo(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !46
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @get_fmodifier_typeinfo(i32 noundef %6) #20
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @add_fmodifier(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = tail call ptr @get_fmodifier_typeinfo(i32 noundef %1) #20
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %3, null
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !48
  %9 = icmp ne ptr %8, null
  %10 = icmp eq i32 %1, 4
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  br label %38

14:                                               ; preds = %7
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %16 = tail call ptr %15(i64 noundef 112, ptr noundef nonnull @.str.5) #21
  %17 = trunc i32 %1 to i16
  %18 = getelementptr inbounds %struct.FModifier, ptr %16, i64 0, i32 4
  store i16 %17, ptr %18, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.FModifier, ptr %16, i64 0, i32 5
  store i16 2, ptr %19, align 2, !tbaa !50
  %20 = getelementptr inbounds %struct.FModifier, ptr %16, i64 0, i32 6
  store float 1.000000e+00, ptr %20, align 4, !tbaa !51
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %16) #21
  %21 = tail call fastcc zeroext i8 @BLI_listbase_is_single(ptr noundef nonnull %0) #20, !range !52
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i16, ptr %19, align 2, !tbaa !50
  %25 = or i16 %24, 4
  store i16 %25, ptr %19, align 2, !tbaa !50
  br label %26

26:                                               ; preds = %23, %14
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %3, i64 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !53
  %30 = sext i16 %29 to i64
  %31 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %3, i64 0, i32 5
  %32 = tail call ptr %27(i64 noundef %30, ptr noundef nonnull %31) #21
  %33 = getelementptr inbounds %struct.FModifier, ptr %16, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %3, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  tail call void %35(ptr noundef %32) #21
  br label %38

38:                                               ; preds = %26, %37, %2, %12
  %39 = phi ptr [ null, %12 ], [ null, %2 ], [ %16, %37 ], [ %16, %26 ]
  ret ptr %39
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_single(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !57 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %2, %6
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_fmodifier(ptr noundef %0) local_unnamed_addr #4 {
  %2 = tail call ptr @fmodifier_get_typeinfo(ptr noundef %0) #20
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %6 = tail call ptr %5(ptr noundef nonnull %0) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = tail call ptr %7(ptr noundef %9) #21
  %11 = getelementptr inbounds %struct.FModifier, ptr %6, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !55
  %12 = icmp eq ptr %2, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %2, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void %15(ptr noundef nonnull %6, ptr noundef nonnull %0) #21
  br label %18

18:                                               ; preds = %4, %13, %17, %1
  %19 = phi ptr [ null, %1 ], [ %6, %17 ], [ %6, %13 ], [ %6, %4 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_fmodifiers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #20
  tail call void @BLI_duplicatelist(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  %7 = load ptr, ptr %0, align 8, !tbaa !43
  %8 = load ptr, ptr %1, align 8, !tbaa !43
  %9 = icmp ne ptr %7, null
  %10 = icmp ne ptr %8, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %32

12:                                               ; preds = %6, %26
  %13 = phi ptr [ %28, %26 ], [ %8, %6 ]
  %14 = phi ptr [ %27, %26 ], [ %7, %6 ]
  %15 = tail call ptr @fmodifier_get_typeinfo(ptr noundef nonnull %14) #20
  %16 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.FModifier, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = tail call ptr %16(ptr noundef %18) #21
  store ptr %19, ptr %17, align 8, !tbaa !55
  %20 = icmp eq ptr %15, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %15, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void %23(ptr noundef nonnull %14, ptr noundef nonnull %13) #21
  br label %26

26:                                               ; preds = %25, %21, %12
  %27 = load ptr, ptr %14, align 8, !tbaa !43
  %28 = load ptr, ptr %13, align 8, !tbaa !43
  %29 = icmp ne ptr %27, null
  %30 = icmp ne ptr %28, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %12, label %32, !llvm.loop !60

32:                                               ; preds = %26, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !61 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @remove_fmodifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call ptr @fmodifier_get_typeinfo(ptr noundef %1) #20
  %4 = icmp eq ptr %1, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %3, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef nonnull %1) #21
  %16 = load ptr, ptr %6, align 8, !tbaa !55
  br label %17

17:                                               ; preds = %15, %11, %9
  %18 = phi ptr [ %16, %15 ], [ %7, %11 ], [ %7, %9 ]
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %19(ptr noundef %18) #21
  br label %20

20:                                               ; preds = %17, %5
  %21 = icmp eq ptr %0, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  br label %26

23:                                               ; preds = %20
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %25(ptr noundef nonnull %1) #21
  br label %26

26:                                               ; preds = %2, %23, %22
  %27 = phi i8 [ 1, %22 ], [ 0, %23 ], [ 0, %2 ]
  ret i8 %27
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_fmodifiers(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call zeroext i8 @remove_fmodifier(ptr noundef nonnull %0, ptr noundef nonnull %7) #20, !range !52
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %6, !llvm.loop !64

11:                                               ; preds = %6, %3, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @find_active_fmodifier(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %12
  %7 = phi ptr [ %13, %12 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.FModifier, ptr %7, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !50
  %10 = and i16 %9, 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 8, !tbaa !63
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !65

15:                                               ; preds = %12, %6, %1, %3
  %16 = phi ptr [ null, %3 ], [ null, %1 ], [ null, %12 ], [ %7, %6 ]
  ret ptr %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_active_fmodifier(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.FModifier, ptr %8, i64 0, i32 5
  %10 = load i16, ptr %9, align 2, !tbaa !50
  %11 = and i16 %10, -5
  store i16 %11, ptr %9, align 2, !tbaa !50
  %12 = load ptr, ptr %8, align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !66

14:                                               ; preds = %7
  %15 = icmp eq ptr %1, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 5
  %18 = load i16, ptr %17, align 2, !tbaa !50
  %19 = or i16 %18, 4
  store i16 %19, ptr %17, align 2, !tbaa !50
  br label %20

20:                                               ; preds = %14, %16, %2, %4
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local zeroext i8 @list_has_suitable_fmodifier(ptr noundef readonly %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  %5 = icmp eq i16 %2, 0
  %6 = and i1 %4, %5
  %7 = icmp eq ptr %0, null
  br i1 %6, label %8, label %13

8:                                                ; preds = %3
  br i1 %7, label %39, label %9

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !48
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  br label %39

13:                                               ; preds = %3
  br i1 %7, label %39, label %14

14:                                               ; preds = %13
  %15 = load ptr, ptr %0, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %14
  %18 = icmp sgt i16 %2, -1
  br label %19

19:                                               ; preds = %17, %36
  %20 = phi ptr [ %15, %17 ], [ %37, %36 ]
  %21 = tail call ptr @fmodifier_get_typeinfo(ptr noundef nonnull %20) #20
  br i1 %4, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.FModifier, ptr %20, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !46
  %25 = sext i16 %24 to i32
  %26 = icmp eq i32 %25, %1
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ %26, %22 ], [ true, %19 ]
  br i1 %18, label %29, label %33

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %21, i64 0, i32 2
  %31 = load i16, ptr %30, align 4, !tbaa !67
  %32 = icmp eq i16 %31, %2
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i1 [ %32, %29 ], [ true, %27 ]
  %35 = select i1 %28, i1 %34, i1 false
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %20, align 8, !tbaa !63
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %19, !llvm.loop !68

39:                                               ; preds = %36, %33, %13, %14, %8, %9
  %40 = phi i8 [ 0, %8 ], [ %12, %9 ], [ 0, %14 ], [ 0, %13 ], [ 0, %36 ], [ 1, %33 ]
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @evaluate_fmodifiers_storage_new(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3, %18
  %8 = phi ptr [ %20, %18 ], [ %5, %3 ]
  %9 = tail call ptr @fmodifier_get_typeinfo(ptr noundef nonnull %8) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !69
  %14 = and i16 %13, 8
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @BLI_ghashutil_ptrhash, ptr noundef nonnull @BLI_ghashutil_ptrcmp, ptr noundef nonnull @.str.7) #21
  br label %22

18:                                               ; preds = %7, %11
  %19 = getelementptr inbounds %struct.FModifier, ptr %8, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !71

22:                                               ; preds = %18, %16, %1, %3
  %23 = phi ptr [ %17, %16 ], [ null, %3 ], [ null, %1 ], [ null, %18 ]
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BLI_ghashutil_ptrhash(ptr noundef) #5

; Function Attrs: optsize
declare zeroext i8 @BLI_ghashutil_ptrcmp(ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @evaluate_fmodifiers_storage_free(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @BLI_ghash_free(ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #21
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fmodifiers_storage_put(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  tail call void @BLI_ghash_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fmodifiers_storage_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fmodifiers_storage_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef %1) #21
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @evaluate_time_fmodifiers(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #4 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %63, label %11

11:                                               ; preds = %7, %58
  %12 = phi float [ %59, %58 ], [ %4, %7 ]
  %13 = phi ptr [ %61, %58 ], [ %9, %7 ]
  %14 = tail call ptr @fmodifier_get_typeinfo(ptr noundef nonnull %13) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 5
  %18 = load i16, ptr %17, align 2, !tbaa !50
  %19 = and i16 %18, 16
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 7
  %23 = load float, ptr %22, align 8, !tbaa !72
  %24 = fcmp ugt float %23, %12
  br i1 %24, label %58, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 8
  %27 = load float, ptr %26, align 4, !tbaa !73
  %28 = fcmp ult float %27, %12
  br i1 %28, label %58, label %29

29:                                               ; preds = %25, %16
  %30 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %14, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %14, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = icmp ne ptr %35, null
  %37 = and i16 %18, 9
  %38 = icmp eq i16 %37, 0
  %39 = and i1 %38, %36
  br i1 %39, label %43, label %58

40:                                               ; preds = %29
  %41 = and i16 %18, 9
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %33, %40
  %44 = tail call fastcc float @eval_fmodifier_influence(ptr noundef nonnull %13, float noundef %12) #20
  %45 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %14, i64 0, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !69
  %47 = and i16 %46, 8
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = tail call float %31(ptr noundef %2, ptr noundef nonnull %13, float noundef %3, float noundef %12) #21
  br label %55

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %14, i64 0, i32 12
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  %54 = tail call float %53(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %13, float noundef %3, float noundef %12) #21
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi float [ %50, %49 ], [ %54, %51 ]
  %57 = tail call fastcc float @interpf(float noundef %56, float noundef %12, float noundef %44) #20
  br label %58

58:                                               ; preds = %21, %25, %40, %55, %33, %11
  %59 = phi float [ %12, %11 ], [ %57, %55 ], [ %12, %40 ], [ %12, %33 ], [ %12, %25 ], [ %12, %21 ]
  %60 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !70
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %11, !llvm.loop !76

63:                                               ; preds = %58, %5, %7
  %64 = phi float [ %4, %7 ], [ %4, %5 ], [ %59, %58 ]
  ret float %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @eval_fmodifier_influence(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #6 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 5
  %4 = load i16, ptr %3, align 2, !tbaa !50
  %5 = and i16 %4, 32
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !51
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi float [ %9, %7 ], [ 1.000000e+00, %2 ]
  %12 = and i16 %4, 16
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !72
  %17 = fcmp ult float %16, %1
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 8
  %20 = load float, ptr %19, align 4, !tbaa !73
  %21 = fcmp ugt float %20, %1
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = fcmp olt float %16, %1
  br i1 %23, label %24, label %34

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 9
  %26 = load float, ptr %25, align 8, !tbaa !78
  %27 = fadd float %16, %26
  %28 = fcmp ogt float %27, %1
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = fsub float %1, %16
  %31 = fmul float %11, %30
  %32 = fsub float %27, %16
  %33 = fdiv float %31, %32
  br label %46

34:                                               ; preds = %24, %22
  %35 = fcmp ogt float %20, %1
  br i1 %35, label %36, label %46

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 10
  %38 = load float, ptr %37, align 4, !tbaa !79
  %39 = fsub float %20, %38
  %40 = fcmp olt float %39, %1
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = fsub float %1, %20
  %43 = fmul float %11, %42
  %44 = fsub float %39, %20
  %45 = fdiv float %43, %44
  br label %46

46:                                               ; preds = %10, %36, %34, %14, %18, %41, %29
  %47 = phi float [ %33, %29 ], [ %45, %41 ], [ 0.000000e+00, %18 ], [ 0.000000e+00, %14 ], [ %11, %34 ], [ %11, %36 ], [ %11, %10 ]
  ret float %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @interpf(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #10 !PGOFuncName !80 {
  %4 = fsub float 1.000000e+00, %2
  %5 = fmul float %4, %1
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %0, float %5)
  ret float %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @evaluate_value_fmodifiers(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, float noundef %4) local_unnamed_addr #4 {
  %6 = alloca float, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %60, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %1, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %8, %57
  %12 = phi ptr [ %58, %57 ], [ %9, %8 ]
  %13 = call ptr @fmodifier_get_typeinfo(ptr noundef nonnull %12) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 5
  %17 = load i16, ptr %16, align 2, !tbaa !50
  %18 = and i16 %17, 16
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 7
  %22 = load float, ptr %21, align 8, !tbaa !72
  %23 = fcmp ugt float %22, %4
  br i1 %23, label %57, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 8
  %26 = load float, ptr %25, align 4, !tbaa !73
  %27 = fcmp ult float %26, %4
  br i1 %27, label %57, label %28

28:                                               ; preds = %24, %15
  %29 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %13, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !81
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %13, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !82
  %35 = icmp ne ptr %34, null
  %36 = and i16 %17, 9
  %37 = icmp eq i16 %36, 0
  %38 = and i1 %37, %35
  br i1 %38, label %42, label %57

39:                                               ; preds = %28
  %40 = and i16 %17, 9
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %32, %39
  %43 = call fastcc float @eval_fmodifier_influence(ptr noundef nonnull %12, float noundef %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %44 = load float, ptr %3, align 4, !tbaa !83
  store float %44, ptr %6, align 4, !tbaa !83
  %45 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %13, i64 0, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !69
  %47 = and i16 %46, 8
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  call void %30(ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %6, float noundef %4) #21
  br label %53

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %13, i64 0, i32 13
  %52 = load ptr, ptr %51, align 8, !tbaa !82
  call void %52(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %6, float noundef %4) #21
  br label %53

53:                                               ; preds = %50, %49
  %54 = load float, ptr %6, align 4, !tbaa !83
  %55 = load float, ptr %3, align 4, !tbaa !83
  %56 = call fastcc float @interpf(float noundef %54, float noundef %55, float noundef %43) #20
  store float %56, ptr %3, align 4, !tbaa !83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  br label %57

57:                                               ; preds = %20, %24, %39, %53, %32, %11
  %58 = load ptr, ptr %12, align 8, !tbaa !63
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %11, !llvm.loop !84

60:                                               ; preds = %57, %5, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fcurve_bake_modifiers(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %3
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  br label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  store ptr null, ptr %12, align 8, !tbaa !88
  tail call void @fcurve_store_samples(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @fcurve_samplingcb_evalcurve) #21
  tail call void @free_fmodifiers(ptr noundef nonnull %6) #20
  store ptr %13, ptr %12, align 8, !tbaa !88
  br label %14

14:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: optsize
declare void @fcurve_store_samples(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @fcurve_samplingcb_evalcurve(ptr noundef, ptr noundef, float noundef) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_generator_free(ptr nocapture noundef readonly %0) #4 !PGOFuncName !89 {
  %2 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %7(ptr noundef nonnull %4) #21
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_generator_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !92 {
  %3 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %11 = tail call ptr %10(ptr noundef nonnull %5) #21
  store ptr %11, ptr %9, align 8, !tbaa !90
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_generator_new_data(ptr nocapture noundef writeonly %0) #4 !PGOFuncName !93 {
  %2 = getelementptr inbounds %struct.FMod_Generator, ptr %0, i64 0, i32 2
  store i32 1, ptr %2, align 4, !tbaa !94
  %3 = getelementptr inbounds %struct.FMod_Generator, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 8, !tbaa !95
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %5 = tail call ptr %4(i64 noundef 8, ptr noundef nonnull @.str.9) #21
  store ptr %5, ptr %0, align 8, !tbaa !90
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %5, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_generator_verify(ptr nocapture noundef readonly %0) #4 !PGOFuncName !96 {
  %2 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.FMod_Generator, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !97
  switch i32 %5, label %32 [
    i32 0, label %6
    i32 1, label %19
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FMod_Generator, ptr %3, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.FMod_Generator, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !95
  %12 = icmp eq i32 %11, %9
  br i1 %12, label %32, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !43
  %15 = load ptr, ptr %3, align 8, !tbaa !90
  %16 = sext i32 %9 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call ptr %14(ptr noundef %15, i64 noundef %17, ptr noundef nonnull @__func__.fcm_generator_verify) #21
  store ptr %18, ptr %3, align 8, !tbaa !90
  store i32 %9, ptr %10, align 8, !tbaa !95
  br label %32

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.FMod_Generator, ptr %3, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !94
  %22 = shl nsw i32 %21, 1
  %23 = getelementptr inbounds %struct.FMod_Generator, ptr %3, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !95
  %25 = icmp eq i32 %24, %22
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !43
  %28 = load ptr, ptr %3, align 8, !tbaa !90
  %29 = sext i32 %22 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr %27(ptr noundef %28, i64 noundef %30, ptr noundef nonnull @__func__.fcm_generator_verify) #21
  store ptr %31, ptr %3, align 8, !tbaa !90
  store i32 %22, ptr %23, align 8, !tbaa !95
  br label %32

32:                                               ; preds = %19, %26, %6, %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_generator_evaluate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float noundef %3) #4 !PGOFuncName !98 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !97
  switch i32 %8, label %97 [
    i32 0, label %9
    i32 1, label %66
  ]

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !95
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.10) #21
  %16 = load i32, ptr %11, align 8, !tbaa !95
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %9
  %19 = zext i32 %16 to i64
  %20 = getelementptr float, ptr %15, i64 -1
  br label %25

21:                                               ; preds = %34
  br i1 %17, label %47, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %6, align 8, !tbaa !90
  %24 = zext i32 %16 to i64
  br label %37

25:                                               ; preds = %18, %34
  %26 = phi i64 [ 0, %18 ], [ %35, %34 ]
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr float, ptr %20, i64 %26
  %30 = load float, ptr %29, align 4, !tbaa !83
  %31 = fmul float %30, %3
  %32 = getelementptr inbounds float, ptr %15, i64 %26
  store float %31, ptr %32, align 4, !tbaa !83
  br label %34

33:                                               ; preds = %25
  store float 1.000000e+00, ptr %15, align 4, !tbaa !83
  br label %34

34:                                               ; preds = %28, %33
  %35 = add nuw nsw i64 %26, 1
  %36 = icmp eq i64 %35, %19
  br i1 %36, label %21, label %25, !llvm.loop !99

37:                                               ; preds = %22, %37
  %38 = phi i64 [ 0, %22 ], [ %45, %37 ]
  %39 = phi float [ 0.000000e+00, %22 ], [ %44, %37 ]
  %40 = getelementptr inbounds float, ptr %23, i64 %38
  %41 = load float, ptr %40, align 4, !tbaa !83
  %42 = getelementptr inbounds float, ptr %15, i64 %38
  %43 = load float, ptr %42, align 4, !tbaa !83
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %43, float %39)
  %45 = add nuw nsw i64 %38, 1
  %46 = icmp eq i64 %45, %24
  br i1 %46, label %47, label %37, !llvm.loop !100

47:                                               ; preds = %37, %9, %21
  %48 = phi float [ 0.000000e+00, %21 ], [ 0.000000e+00, %9 ], [ %44, %37 ]
  %49 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !94
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !101
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load float, ptr %2, align 4, !tbaa !83
  %59 = fadd float %48, %58
  br label %60

60:                                               ; preds = %52, %57
  %61 = phi float [ %59, %57 ], [ %48, %52 ]
  store float %61, ptr %2, align 4, !tbaa !83
  br label %62

62:                                               ; preds = %60, %47
  %63 = icmp eq ptr %15, null
  br i1 %63, label %97, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %65(ptr noundef nonnull %15) #21
  br label %97

66:                                               ; preds = %4
  %67 = load ptr, ptr %6, align 8, !tbaa !90
  %68 = icmp eq ptr %67, null
  %69 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !94
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %68, i1 true, i1 %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %66, %73
  %74 = phi float [ %81, %73 ], [ 1.000000e+00, %66 ]
  %75 = phi ptr [ %82, %73 ], [ %67, %66 ]
  %76 = phi i32 [ %83, %73 ], [ 0, %66 ]
  %77 = load float, ptr %75, align 4, !tbaa !83
  %78 = getelementptr inbounds float, ptr %75, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !83
  %80 = tail call float @llvm.fmuladd.f32(float %77, float %3, float %79)
  %81 = fmul float %74, %80
  %82 = getelementptr inbounds float, ptr %75, i64 2
  %83 = add i32 %76, 1
  %84 = icmp eq i32 %83, %70
  br i1 %84, label %85, label %73

85:                                               ; preds = %73, %66
  %86 = phi float [ 1.000000e+00, %66 ], [ %81, %73 ]
  %87 = icmp eq i32 %70, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 4
  %90 = load i32, ptr %89, align 4, !tbaa !101
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load float, ptr %2, align 4, !tbaa !83
  %95 = fadd float %86, %94
  store float %95, ptr %2, align 4, !tbaa !83
  br label %97

96:                                               ; preds = %88
  store float %86, ptr %2, align 4, !tbaa !83
  br label %97

97:                                               ; preds = %85, %96, %93, %62, %64, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @fcm_fn_generator_new_data(ptr nocapture noundef writeonly %0) #7 !PGOFuncName !102 {
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_fn_generator_evaluate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float noundef %3) #4 !PGOFuncName !103 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !104
  %9 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !106
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %3, float %10)
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !107
  switch i32 %14, label %44 [
    i32 0, label %46
    i32 1, label %15
    i32 5, label %16
    i32 2, label %17
    i32 4, label %28
    i32 3, label %36
  ]

15:                                               ; preds = %4
  br label %46

16:                                               ; preds = %4
  br label %46

17:                                               ; preds = %4
  %18 = fadd double %12, 0xBFF921FB54442D18
  %19 = tail call double @fmod(double noundef %18, double noundef 0x400921FB54442D18) #21
  %20 = tail call double @llvm.fabs.f64(double %19)
  %21 = fcmp ult double %20, 0x3E80000000000000
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !108
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  store float 0.000000e+00, ptr %2, align 4, !tbaa !83
  br label %63

28:                                               ; preds = %4
  %29 = fcmp ogt float %11, 1.000000e+00
  br i1 %29, label %46, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !108
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  store float 0.000000e+00, ptr %2, align 4, !tbaa !83
  br label %63

36:                                               ; preds = %4
  %37 = fcmp ogt float %11, 0.000000e+00
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !108
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  store float 0.000000e+00, ptr %2, align 4, !tbaa !83
  br label %63

44:                                               ; preds = %4
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %14) #20
  br label %63

46:                                               ; preds = %15, %16, %4, %17, %28, %36
  %47 = phi ptr [ @sinc, %16 ], [ @cos, %15 ], [ @sin, %4 ], [ @tan, %17 ], [ @log, %28 ], [ @sqrt, %36 ]
  %48 = load float, ptr %6, align 4, !tbaa !109
  %49 = tail call double %47(double noundef %12) #21
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 3
  %52 = load float, ptr %51, align 4, !tbaa !110
  %53 = tail call float @llvm.fmuladd.f32(float %48, float %50, float %52)
  %54 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 5
  %55 = load i32, ptr %54, align 4, !tbaa !108
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load float, ptr %2, align 4, !tbaa !83
  %60 = fadd float %53, %59
  br label %61

61:                                               ; preds = %46, %58
  %62 = phi float [ %60, %58 ], [ %53, %46 ]
  store float %62, ptr %2, align 4, !tbaa !83
  br label %63

63:                                               ; preds = %22, %27, %30, %35, %38, %43, %44, %61
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal double @sinc(double noundef %0) unnamed_addr #13 !PGOFuncName !111 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp olt double %2, 1.000000e-04
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = fmul double %0, 0x400921FB54442D18
  %6 = tail call double @sin(double noundef %5) #21
  %7 = fdiv double %6, %5
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi double [ %7, %4 ], [ 1.000000e+00, %1 ]
  ret double %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_envelope_free(ptr nocapture noundef readonly %0) #4 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %7(ptr noundef nonnull %4) #21
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_envelope_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !115 {
  %3 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !43
  %11 = tail call ptr %10(ptr noundef nonnull %5) #21
  store ptr %11, ptr %9, align 8, !tbaa !113
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @fcm_envelope_new_data(ptr nocapture noundef writeonly %0) #7 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.FMod_Envelope, ptr %0, i64 0, i32 3
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %2, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @fcm_envelope_verify(ptr nocapture readnone %0) #10 !PGOFuncName !117 {
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @fcm_envelope_evaluate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float noundef %3) #14 !PGOFuncName !118 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !119
  %12 = sext i32 %11 to i64
  %13 = getelementptr %struct.FCM_EnvelopeData, ptr %7, i64 %12
  %14 = getelementptr %struct.FCM_EnvelopeData, ptr %13, i64 -1
  %15 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %7, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !37
  %17 = fcmp ult float %16, %3
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = load <2 x float>, ptr %7, align 4, !tbaa !83
  br label %58

20:                                               ; preds = %9
  %21 = getelementptr %struct.FCM_EnvelopeData, ptr %13, i64 -1, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !37
  %23 = fcmp ugt float %22, %3
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = icmp sgt i32 %11, 1
  br i1 %25, label %26, label %58

26:                                               ; preds = %24
  %27 = add nsw i32 %11, -2
  br label %30

28:                                               ; preds = %20
  %29 = load <2 x float>, ptr %14, align 4, !tbaa !83
  br label %58

30:                                               ; preds = %26, %55
  %31 = phi ptr [ %33, %55 ], [ %7, %26 ]
  %32 = phi i32 [ %56, %55 ], [ 0, %26 ]
  %33 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %31, i64 1
  %34 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %31, i64 0, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !37
  %36 = fcmp ugt float %35, %3
  br i1 %36, label %55, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %31, i64 1, i32 2
  %39 = load float, ptr %38, align 4, !tbaa !37
  %40 = fcmp ult float %39, %3
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = fsub float %39, %35
  %43 = fsub float %3, %35
  %44 = fdiv float %43, %42
  %45 = fsub float %39, %3
  %46 = fdiv float %45, %42
  %47 = load <2 x float>, ptr %31, align 4, !tbaa !83
  %48 = load <2 x float>, ptr %33, align 4, !tbaa !83
  %49 = insertelement <2 x float> poison, float %44, i64 0
  %50 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> zeroinitializer
  %51 = fmul <2 x float> %50, %48
  %52 = insertelement <2 x float> poison, float %46, i64 0
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> zeroinitializer
  %54 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %53, <2 x float> %47, <2 x float> %51)
  br label %58

55:                                               ; preds = %30, %37
  %56 = add nuw nsw i32 %32, 1
  %57 = icmp eq i32 %32, %27
  br i1 %57, label %58, label %30, !llvm.loop !120

58:                                               ; preds = %55, %24, %28, %41, %18
  %59 = phi <2 x float> [ %19, %18 ], [ %29, %28 ], [ %54, %41 ], [ zeroinitializer, %24 ], [ zeroinitializer, %55 ]
  %60 = load float, ptr %2, align 4, !tbaa !83
  %61 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 2
  %62 = load float, ptr %61, align 4, !tbaa !121
  %63 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 3
  %64 = load float, ptr %63, align 8, !tbaa !122
  %65 = fadd float %62, %64
  %66 = fsub float %60, %65
  %67 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 4
  %68 = load float, ptr %67, align 4, !tbaa !123
  %69 = fsub float %68, %64
  %70 = fdiv float %66, %69
  %71 = extractelement <2 x float> %59, i64 0
  %72 = shufflevector <2 x float> %59, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %73 = fsub <2 x float> %72, %59
  %74 = extractelement <2 x float> %73, i64 0
  %75 = tail call float @llvm.fmuladd.f32(float %70, float %74, float %71)
  store float %75, ptr %2, align 4, !tbaa !83
  br label %76

76:                                               ; preds = %4, %58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @fcm_cycles_new_data(ptr nocapture noundef writeonly %0) #7 !PGOFuncName !124 {
  %2 = getelementptr inbounds %struct.FMod_Cycles, ptr %0, i64 0, i32 1
  store i16 1, ptr %2, align 2, !tbaa !125
  store i16 1, ptr %0, align 2, !tbaa !127
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal float @fcm_cycles_time(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, float %3, float noundef %4) #4 !PGOFuncName !128 {
  %6 = getelementptr inbounds %struct.FModifier, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.FModifier, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.FModifier, ptr %2, i64 0, i32 5
  %13 = load i16, ptr %12, align 2, !tbaa !50
  %14 = or i16 %13, 1
  store i16 %14, ptr %12, align 2, !tbaa !50
  br label %143

15:                                               ; preds = %5
  %16 = icmp eq ptr %1, null
  br i1 %16, label %143, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !130
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 %24
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 1
  %27 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 1, i64 1
  %28 = getelementptr %struct.BezTriple, ptr %25, i64 -1, i32 0, i64 1
  %29 = getelementptr %struct.BezTriple, ptr %25, i64 -1, i32 0, i64 1, i64 1
  br label %42

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !131
  %33 = icmp eq ptr %32, null
  br i1 %33, label %143, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !130
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.FPoint, ptr %32, i64 %37
  %39 = getelementptr inbounds %struct.FPoint, ptr %38, i64 -1
  %40 = getelementptr inbounds [2 x float], ptr %32, i64 0, i64 1
  %41 = getelementptr %struct.FPoint, ptr %38, i64 -1, i32 0, i64 1
  br label %42

42:                                               ; preds = %34, %21
  %43 = phi ptr [ %28, %21 ], [ %39, %34 ]
  %44 = phi ptr [ %29, %21 ], [ %41, %34 ]
  %45 = phi ptr [ %26, %21 ], [ %32, %34 ]
  %46 = phi ptr [ %27, %21 ], [ %40, %34 ]
  %47 = load float, ptr %46, align 4, !tbaa !83
  %48 = load float, ptr %45, align 4, !tbaa !83
  %49 = load float, ptr %44, align 4, !tbaa !83
  %50 = load float, ptr %43, align 4, !tbaa !83
  %51 = fcmp ule float %48, %4
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = load i16, ptr %7, align 2, !tbaa !127
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %143, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.FMod_Cycles, ptr %7, i64 0, i32 2
  br label %65

57:                                               ; preds = %42
  %58 = fcmp olt float %50, %4
  br i1 %58, label %59, label %143

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.FMod_Cycles, ptr %7, i64 0, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !125
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %143, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.FMod_Cycles, ptr %7, i64 0, i32 3
  br label %65

65:                                               ; preds = %63, %55
  %66 = phi float [ -1.000000e+00, %55 ], [ 1.000000e+00, %63 ]
  %67 = phi i16 [ %53, %55 ], [ %61, %63 ]
  %68 = phi ptr [ %56, %55 ], [ %64, %63 ]
  %69 = phi float [ %48, %55 ], [ %50, %63 ]
  %70 = fsub float %50, %48
  %71 = fsub float %49, %47
  %72 = fcmp oeq float %70, 0.000000e+00
  br i1 %72, label %143, label %73

73:                                               ; preds = %65
  %74 = load i16, ptr %68, align 2, !tbaa !132
  %75 = fsub float %4, %69
  %76 = fmul float %66, %75
  %77 = fdiv float %76, %70
  %78 = fpext float %75 to double
  %79 = fpext float %70 to double
  %80 = tail call double @fmod(double noundef %78, double noundef %79) #21
  %81 = fptrunc double %80 to float
  %82 = icmp ne i16 %74, 0
  %83 = sitofp i16 %74 to float
  %84 = fcmp ogt float %77, %83
  %85 = and i1 %82, %84
  br i1 %85, label %143, label %86

86:                                               ; preds = %73
  %87 = icmp eq i16 %67, 2
  br i1 %87, label %88, label %94

88:                                               ; preds = %86
  %89 = fdiv float %75, %70
  br i1 %51, label %92, label %90

90:                                               ; preds = %88
  %91 = tail call float @llvm.floor.f32(float %89)
  br label %96

92:                                               ; preds = %88
  %93 = tail call float @llvm.ceil.f32(float %89)
  br label %96

94:                                               ; preds = %86
  %95 = fcmp oeq float %81, 0.000000e+00
  br i1 %95, label %108, label %121

96:                                               ; preds = %90, %92
  %97 = phi float [ %48, %90 ], [ %50, %92 ]
  %98 = phi float [ %91, %90 ], [ %93, %92 ]
  %99 = fmul float %71, %98
  %100 = fcmp oeq float %81, 0.000000e+00
  %101 = fadd float %48, %81
  %102 = select i1 %100, float %97, float %101
  %103 = fcmp olt float %102, %48
  %104 = select i1 %103, float %70, float -0.000000e+00
  %105 = fadd float %102, %104
  %106 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %107 = tail call ptr %106(i64 noundef 4, ptr noundef nonnull @.str.12) #21
  store float %99, ptr %107, align 4, !tbaa !133
  tail call void @fmodifiers_storage_put(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %107) #20
  br label %143

108:                                              ; preds = %94
  %109 = select i1 %51, float %50, float %48
  %110 = icmp eq i16 %67, 3
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = fcmp olt float %109, %48
  %113 = select i1 %112, float %70, float -0.000000e+00
  %114 = fadd float %109, %113
  br label %143

115:                                              ; preds = %108
  %116 = fptosi float %77 to i32
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %115
  %120 = select i1 %51, float %48, float %50
  br label %133

121:                                              ; preds = %94
  %122 = icmp eq i16 %67, 3
  br i1 %122, label %123, label %138

123:                                              ; preds = %121
  %124 = fadd float %77, 1.000000e+00
  %125 = fptosi float %124 to i32
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %123
  br i1 %51, label %131, label %129

129:                                              ; preds = %128
  %130 = fsub float %48, %81
  br label %133

131:                                              ; preds = %128
  %132 = fsub float %50, %81
  br label %133

133:                                              ; preds = %131, %129, %115, %119
  %134 = phi float [ %132, %131 ], [ %130, %129 ], [ %109, %115 ], [ %120, %119 ]
  %135 = fcmp olt float %134, %48
  %136 = select i1 %135, float %70, float -0.000000e+00
  %137 = fadd float %134, %136
  br label %143

138:                                              ; preds = %121, %123
  %139 = fadd float %48, %81
  %140 = fcmp olt float %139, %48
  %141 = select i1 %140, float %70, float -0.000000e+00
  %142 = fadd float %139, %141
  br label %143

143:                                              ; preds = %138, %111, %73, %65, %57, %59, %52, %133, %96, %30, %15, %11
  %144 = phi float [ %4, %11 ], [ %4, %15 ], [ %4, %30 ], [ %105, %96 ], [ %137, %133 ], [ %4, %52 ], [ %4, %59 ], [ %4, %57 ], [ %4, %65 ], [ %4, %73 ], [ %114, %111 ], [ %142, %138 ]
  ret float %144
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_cycles_evaluate(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef %3, float %4) #4 !PGOFuncName !135 {
  %6 = tail call ptr @fmodifiers_storage_get(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = load float, ptr %6, align 4, !tbaa !133
  %10 = load float, ptr %3, align 4, !tbaa !83
  %11 = fadd float %9, %10
  store float %11, ptr %3, align 4, !tbaa !83
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %12(ptr noundef nonnull %6) #21
  tail call void @fmodifiers_storage_remove(ptr noundef %0, ptr noundef %2) #20
  br label %13

13:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @fcm_noise_new_data(ptr nocapture noundef writeonly %0) #7 !PGOFuncName !136 {
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !83
  %2 = getelementptr inbounds %struct.FMod_Noise, ptr %0, i64 0, i32 2
  store float 1.000000e+00, ptr %2, align 4, !tbaa !137
  %3 = getelementptr inbounds %struct.FMod_Noise, ptr %0, i64 0, i32 3
  store i64 0, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_noise_evaluate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float noundef %3) #4 !PGOFuncName !139 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load float, ptr %6, align 4, !tbaa !140
  %8 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !141
  %10 = fsub float %3, %9
  %11 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !137
  %13 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 4
  %14 = load i16, ptr %13, align 4, !tbaa !142
  %15 = sext i16 %14 to i32
  %16 = tail call float @BLI_turbulence(float noundef %7, float noundef %10, float noundef %12, float noundef 0x3FB99999A0000000, i32 noundef %15) #21
  %17 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 5
  %18 = load i16, ptr %17, align 2, !tbaa !143
  %19 = load float, ptr %2, align 4, !tbaa !83
  switch i16 %18, label %34 [
    i16 1, label %20
    i16 2, label %24
    i16 3, label %29
  ]

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !144
  %23 = tail call float @llvm.fmuladd.f32(float %16, float %22, float %19)
  br label %39

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !144
  %27 = fneg float %16
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %26, float %19)
  br label %39

29:                                               ; preds = %4
  %30 = fmul float %16, %19
  %31 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !144
  %33 = fmul float %30, %32
  br label %39

34:                                               ; preds = %4
  %35 = fadd float %16, -5.000000e-01
  %36 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !144
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %37, float %19)
  br label %39

39:                                               ; preds = %34, %29, %24, %20
  %40 = phi float [ %38, %34 ], [ %33, %29 ], [ %28, %24 ], [ %23, %20 ]
  store float %40, ptr %2, align 4, !tbaa !83
  ret void
}

; Function Attrs: optsize
declare float @BLI_turbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_python_free(ptr nocapture noundef readonly %0) #4 !PGOFuncName !145 {
  %2 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.FMod_Python, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !146
  tail call void @IDP_FreeProperty(ptr noundef %5) #21
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %7 = load ptr, ptr %4, align 8, !tbaa !146
  tail call void %6(ptr noundef %7) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_python_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !148 {
  %3 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_Python, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = tail call ptr @IDP_CopyProperty(ptr noundef %8) #21
  %10 = getelementptr inbounds %struct.FMod_Python, ptr %4, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !146
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fcm_python_new_data(ptr nocapture noundef writeonly %0) #4 !PGOFuncName !149 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @.str.13) #21
  %4 = getelementptr inbounds %struct.FMod_Python, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !146
  %5 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 2
  store i8 6, ptr %5, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @fcm_python_evaluate(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, float %3) #10 !PGOFuncName !153 {
  ret void
}

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal float @fcm_limits_time(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, float %2, float noundef %3) #15 !PGOFuncName !154 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_Limits, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !155
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load float, ptr %6, align 4, !tbaa !158
  %13 = fcmp ogt float %12, %3
  br i1 %13, label %22, label %14

14:                                               ; preds = %11, %4
  %15 = and i32 %8, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  %19 = load float, ptr %18, align 4, !tbaa !159
  %20 = fcmp olt float %19, %3
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %14
  br label %22

22:                                               ; preds = %17, %11, %21
  %23 = phi float [ %3, %21 ], [ %12, %11 ], [ %19, %17 ]
  ret float %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @fcm_limits_evaluate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float %3) #16 !PGOFuncName !160 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_Limits, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !155
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = load float, ptr %2, align 4, !tbaa !83
  %13 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !161
  %15 = fcmp olt float %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store float %14, ptr %2, align 4, !tbaa !83
  br label %17

17:                                               ; preds = %16, %11, %4
  %18 = and i32 %8, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load float, ptr %2, align 4, !tbaa !83
  %22 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !162
  %24 = fcmp ogt float %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store float %23, ptr %2, align 4, !tbaa !83
  br label %26

26:                                               ; preds = %25, %20, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @fcm_stepped_new_data(ptr nocapture noundef writeonly %0) #7 !PGOFuncName !163 {
  store float 2.000000e+00, ptr %0, align 4, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal float @fcm_stepped_time(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, float %2, float noundef %3) #15 !PGOFuncName !166 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !167
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !168
  %14 = fcmp ogt float %13, %3
  br i1 %14, label %31, label %15

15:                                               ; preds = %11, %4
  %16 = and i32 %8, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !169
  %21 = fcmp olt float %20, %3
  br i1 %21, label %31, label %22

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !170
  %25 = fsub float %3, %24
  %26 = load float, ptr %6, align 4, !tbaa !164
  %27 = fdiv float %25, %26
  %28 = fptosi float %27 to i32
  %29 = sitofp i32 %28 to float
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %26, float %24)
  br label %31

31:                                               ; preds = %18, %11, %22
  %32 = phi float [ %30, %22 ], [ %3, %11 ], [ %3, %18 ]
  ret float %32
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !39, i64 8}
!38 = !{!"FCM_EnvelopeData", !39, i64 0, !39, i64 4, !39, i64 8, !40, i64 12, !40, i64 14}
!39 = !{!"float", !35, i64 0}
!40 = !{!"short", !35, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !35, i64 0}
!45 = !{!"fmodifier.c:fmods_init_typeinfo"}
!46 = !{!47, !40, i64 88}
!47 = !{!"FModifier", !44, i64 0, !44, i64 8, !44, i64 16, !35, i64 24, !40, i64 88, !40, i64 90, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108}
!48 = !{!49, !44, i64 0}
!49 = !{!"ListBase", !44, i64 0, !44, i64 8}
!50 = !{!47, !40, i64 90}
!51 = !{!47, !39, i64 92}
!52 = !{i8 0, i8 2}
!53 = !{!54, !40, i64 2}
!54 = !{!"FModifierTypeInfo", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !35, i64 8, !35, i64 72, !44, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !44, i64 184, !44, i64 192}
!55 = !{!47, !44, i64 16}
!56 = !{!54, !44, i64 152}
!57 = !{!"fmodifier.c:BLI_listbase_is_single"}
!58 = !{!49, !44, i64 8}
!59 = !{!54, !44, i64 144}
!60 = distinct !{!60, !42}
!61 = !{!"fmodifier.c:BLI_listbase_clear"}
!62 = !{!54, !44, i64 136}
!63 = !{!47, !44, i64 0}
!64 = distinct !{!64, !42}
!65 = distinct !{!65, !42}
!66 = distinct !{!66, !42}
!67 = !{!54, !40, i64 4}
!68 = distinct !{!68, !42}
!69 = !{!54, !40, i64 6}
!70 = !{!47, !44, i64 8}
!71 = distinct !{!71, !42}
!72 = !{!47, !39, i64 96}
!73 = !{!47, !39, i64 100}
!74 = !{!54, !44, i64 168}
!75 = !{!54, !44, i64 184}
!76 = distinct !{!76, !42}
!77 = !{!"fmodifier.c:eval_fmodifier_influence"}
!78 = !{!47, !39, i64 104}
!79 = !{!47, !39, i64 108}
!80 = !{!"fmodifier.c:interpf"}
!81 = !{!54, !44, i64 176}
!82 = !{!54, !44, i64 192}
!83 = !{!39, !39, i64 0}
!84 = distinct !{!84, !42}
!85 = !{!86, !44, i64 32}
!86 = !{!"FCurve", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !49, i64 32, !44, i64 48, !44, i64 56, !87, i64 64, !39, i64 68, !40, i64 72, !40, i64 74, !87, i64 76, !44, i64 80, !87, i64 88, !35, i64 92, !39, i64 104, !39, i64 108}
!87 = !{!"int", !35, i64 0}
!88 = !{!86, !44, i64 24}
!89 = !{!"fmodifier.c:fcm_generator_free"}
!90 = !{!91, !44, i64 0}
!91 = !{!"FMod_Generator", !44, i64 0, !87, i64 8, !87, i64 12, !87, i64 16, !87, i64 20}
!92 = !{!"fmodifier.c:fcm_generator_copy"}
!93 = !{!"fmodifier.c:fcm_generator_new_data"}
!94 = !{!91, !87, i64 12}
!95 = !{!91, !87, i64 8}
!96 = !{!"fmodifier.c:fcm_generator_verify"}
!97 = !{!91, !87, i64 16}
!98 = !{!"fmodifier.c:fcm_generator_evaluate"}
!99 = distinct !{!99, !42}
!100 = distinct !{!100, !42}
!101 = !{!91, !87, i64 20}
!102 = !{!"fmodifier.c:fcm_fn_generator_new_data"}
!103 = !{!"fmodifier.c:fcm_fn_generator_evaluate"}
!104 = !{!105, !39, i64 4}
!105 = !{!"FMod_FunctionGenerator", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !87, i64 16, !87, i64 20}
!106 = !{!105, !39, i64 8}
!107 = !{!105, !87, i64 16}
!108 = !{!105, !87, i64 20}
!109 = !{!105, !39, i64 0}
!110 = !{!105, !39, i64 12}
!111 = !{!"fmodifier.c:sinc"}
!112 = !{!"fmodifier.c:fcm_envelope_free"}
!113 = !{!114, !44, i64 0}
!114 = !{!"FMod_Envelope", !44, i64 0, !87, i64 8, !39, i64 12, !39, i64 16, !39, i64 20}
!115 = !{!"fmodifier.c:fcm_envelope_copy"}
!116 = !{!"fmodifier.c:fcm_envelope_new_data"}
!117 = !{!"fmodifier.c:fcm_envelope_verify"}
!118 = !{!"fmodifier.c:fcm_envelope_evaluate"}
!119 = !{!114, !87, i64 8}
!120 = distinct !{!120, !42}
!121 = !{!114, !39, i64 12}
!122 = !{!114, !39, i64 16}
!123 = !{!114, !39, i64 20}
!124 = !{!"fmodifier.c:fcm_cycles_new_data"}
!125 = !{!126, !40, i64 2}
!126 = !{!"FMod_Cycles", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6}
!127 = !{!126, !40, i64 0}
!128 = !{!"fmodifier.c:fcm_cycles_time"}
!129 = !{!86, !44, i64 48}
!130 = !{!86, !87, i64 64}
!131 = !{!86, !44, i64 56}
!132 = !{!40, !40, i64 0}
!133 = !{!134, !39, i64 0}
!134 = !{!"tFCMED_Cycles", !39, i64 0}
!135 = !{!"fmodifier.c:fcm_cycles_evaluate"}
!136 = !{!"fmodifier.c:fcm_noise_new_data"}
!137 = !{!138, !39, i64 8}
!138 = !{!"FMod_Noise", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !40, i64 18}
!139 = !{!"fmodifier.c:fcm_noise_evaluate"}
!140 = !{!138, !39, i64 0}
!141 = !{!138, !39, i64 12}
!142 = !{!138, !40, i64 16}
!143 = !{!138, !40, i64 18}
!144 = !{!138, !39, i64 4}
!145 = !{!"fmodifier.c:fcm_python_free"}
!146 = !{!147, !44, i64 8}
!147 = !{!"FMod_Python", !44, i64 0, !44, i64 8}
!148 = !{!"fmodifier.c:fcm_python_copy"}
!149 = !{!"fmodifier.c:fcm_python_new_data"}
!150 = !{!151, !35, i64 16}
!151 = !{!"IDProperty", !44, i64 0, !44, i64 8, !35, i64 16, !35, i64 17, !40, i64 18, !35, i64 20, !87, i64 84, !152, i64 88, !87, i64 120, !87, i64 124}
!152 = !{!"IDPropertyData", !44, i64 0, !49, i64 8, !87, i64 24, !87, i64 28}
!153 = !{!"fmodifier.c:fcm_python_evaluate"}
!154 = !{!"fmodifier.c:fcm_limits_time"}
!155 = !{!156, !87, i64 16}
!156 = !{!"FMod_Limits", !157, i64 0, !87, i64 16, !87, i64 20}
!157 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!158 = !{!156, !39, i64 0}
!159 = !{!156, !39, i64 4}
!160 = !{!"fmodifier.c:fcm_limits_evaluate"}
!161 = !{!156, !39, i64 8}
!162 = !{!156, !39, i64 12}
!163 = !{!"fmodifier.c:fcm_stepped_new_data"}
!164 = !{!165, !39, i64 0}
!165 = !{!"FMod_Stepped", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !87, i64 16}
!166 = !{!"fmodifier.c:fcm_stepped_time"}
!167 = !{!165, !87, i64 16}
!168 = !{!165, !39, i64 8}
!169 = !{!165, !39, i64 12}
!170 = !{!165, !39, i64 4}
