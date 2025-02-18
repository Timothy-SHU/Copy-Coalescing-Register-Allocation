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

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @BKE_fcm_envelope_find_index(ptr noundef readonly %0, float noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = shl nsw i32 %2, 1
  store i8 0, ptr %3, align 1, !tbaa !34
  %6 = icmp slt i32 %2, 1
  %7 = icmp eq ptr %0, null
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  br label %87

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %0, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !37
  %14 = fcmp olt float %13, %1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = fsub float %1, %13
  %17 = fcmp ugt float %16, 0x3F1A36E2E0000000
  br i1 %17, label %21, label %35

18:                                               ; preds = %11
  %19 = fsub float %13, %1
  %20 = fcmp ugt float %19, 0x3F1A36E2E0000000
  br i1 %20, label %21, label %35

21:                                               ; preds = %18, %15
  %22 = fcmp ogt float %13, %1
  br i1 %22, label %37, label %23

23:                                               ; preds = %21
  %24 = add nsw i32 %2, -1
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %0, i64 %25, i32 2
  %27 = load float, ptr %26, align 4, !tbaa !37
  %28 = fcmp uge float %27, %1
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = fsub float %1, %27
  %31 = fcmp ugt float %30, 0x3F1A36E2E0000000
  br i1 %31, label %37, label %35

32:                                               ; preds = %23
  %33 = fsub float %27, %1
  %34 = fcmp ugt float %33, 0x3F1A36E2E0000000
  br i1 %34, label %37, label %35

35:                                               ; preds = %29, %32, %15, %18
  %36 = phi i32 [ 0, %18 ], [ 0, %15 ], [ %24, %32 ], [ %24, %29 ]
  store i8 1, ptr %3, align 1, !tbaa !34
  br label %37

37:                                               ; preds = %35, %29, %32, %21
  %38 = phi i1 [ false, %21 ], [ %28, %32 ], [ %28, %29 ], [ false, %35 ]
  %39 = phi i32 [ 0, %21 ], [ %2, %32 ], [ %2, %29 ], [ %36, %35 ]
  br i1 %38, label %40, label %87

40:                                               ; preds = %37
  %41 = icmp sgt i32 %2, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %40, %73
  %43 = phi i32 [ %72, %73 ], [ %39, %40 ]
  %44 = phi i32 [ %71, %73 ], [ 0, %40 ]
  %45 = phi i32 [ %69, %73 ], [ %2, %40 ]
  %46 = phi i32 [ %74, %73 ], [ 0, %40 ]
  %47 = sub nsw i32 %45, %44
  %48 = sdiv i32 %47, 2
  %49 = add nsw i32 %48, %44
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %0, i64 %50, i32 2
  %52 = load float, ptr %51, align 4, !tbaa !37
  %53 = fcmp olt float %52, %1
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = fsub float %1, %52
  %56 = fcmp ugt float %55, 0x3F1A36E2E0000000
  br i1 %56, label %61, label %60

57:                                               ; preds = %42
  %58 = fsub float %52, %1
  %59 = fcmp ugt float %58, 0x3F1A36E2E0000000
  br i1 %59, label %61, label %60

60:                                               ; preds = %57, %54
  store i8 1, ptr %3, align 1, !tbaa !34
  br label %68

61:                                               ; preds = %57, %54
  br i1 %53, label %62, label %64

62:                                               ; preds = %61
  %63 = add nsw i32 %49, 1
  br label %68

64:                                               ; preds = %61
  %65 = fcmp ogt float %52, %1
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = add nsw i32 %49, -1
  br label %68

68:                                               ; preds = %62, %66, %64, %60
  %69 = phi i32 [ %45, %60 ], [ %45, %62 ], [ %67, %66 ], [ %45, %64 ]
  %70 = phi i1 [ false, %60 ], [ true, %62 ], [ true, %66 ], [ true, %64 ]
  %71 = phi i32 [ %44, %60 ], [ %63, %62 ], [ %44, %66 ], [ %44, %64 ]
  %72 = phi i32 [ %49, %60 ], [ %43, %62 ], [ %43, %66 ], [ %43, %64 ]
  br i1 %70, label %73, label %87

73:                                               ; preds = %68
  %74 = add nuw nsw i32 %46, 1
  %75 = icmp sle i32 %71, %69
  %76 = icmp slt i32 %74, %5
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %42, label %78, !llvm.loop !41

78:                                               ; preds = %73, %40
  %79 = phi i32 [ 0, %40 ], [ %74, %73 ]
  %80 = phi i32 [ %2, %40 ], [ %69, %73 ]
  %81 = phi i32 [ 0, %40 ], [ %71, %73 ]
  %82 = add nsw i32 %5, -1
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %86 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %79, i32 noundef %81, i32 noundef %80, i32 noundef %2)
  br label %87

87:                                               ; preds = %68, %78, %84, %37, %9
  %88 = phi i32 [ 0, %9 ], [ %39, %37 ], [ %81, %84 ], [ %81, %78 ], [ %72, %68 ]
  ret i32 %88
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @get_fmodifier_typeinfo(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @FMI_INIT, align 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %4

4:                                                ; preds = %3, %1
  %5 = icmp ult i32 %0, 10
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext nneg i32 %0 to i64
  %8 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  br label %12

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0)
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %9, %6 ], [ null, %10 ]
  ret ptr %13
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @fmodifier_get_typeinfo(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !46
  %6 = sext i16 %5 to i32
  %7 = load i1, ptr @FMI_INIT, align 2
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %9

9:                                                ; preds = %8, %3
  %10 = icmp ult i16 %5, 10
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = zext nneg i32 %6 to i64
  %13 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  br label %17

15:                                               ; preds = %9
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %6)
  br label %17

17:                                               ; preds = %15, %11, %1
  %18 = phi ptr [ null, %1 ], [ %14, %11 ], [ null, %15 ]
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @add_fmodifier(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load i1, ptr @FMI_INIT, align 2
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %5

5:                                                ; preds = %4, %2
  %6 = icmp ult i32 %1, 10
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  br label %13

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %1)
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %10, %7 ], [ null, %11 ]
  %15 = icmp eq ptr %0, null
  %16 = icmp eq ptr %14, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %53, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !48
  %20 = icmp ne ptr %19, null
  %21 = icmp eq i32 %1, 4
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  br label %53

25:                                               ; preds = %18
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %27 = tail call ptr %26(i64 noundef 112, ptr noundef nonnull @.str.5) #18
  %28 = trunc i32 %1 to i16
  %29 = getelementptr inbounds %struct.FModifier, ptr %27, i64 0, i32 4
  store i16 %28, ptr %29, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.FModifier, ptr %27, i64 0, i32 5
  store i16 2, ptr %30, align 2, !tbaa !50
  %31 = getelementptr inbounds %struct.FModifier, ptr %27, i64 0, i32 6
  store float 1.000000e+00, ptr %31, align 4, !tbaa !51
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %27) #18
  %32 = load ptr, ptr %0, align 8, !tbaa !48
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = icmp eq ptr %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i16, ptr %30, align 2, !tbaa !50
  %40 = or i16 %39, 4
  store i16 %40, ptr %30, align 2, !tbaa !50
  br label %41

41:                                               ; preds = %25, %38, %34
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %14, i64 0, i32 1
  %44 = load i16, ptr %43, align 2, !tbaa !53
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %14, i64 0, i32 5
  %47 = tail call ptr %42(i64 noundef %45, ptr noundef nonnull %46) #18
  %48 = getelementptr inbounds %struct.FModifier, ptr %27, i64 0, i32 2
  store ptr %47, ptr %48, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %14, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !56
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  tail call void %50(ptr noundef %47) #18
  br label %53

53:                                               ; preds = %41, %52, %13, %23
  %54 = phi ptr [ null, %23 ], [ null, %13 ], [ %27, %52 ], [ %27, %41 ]
  ret ptr %54
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @copy_fmodifier(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !46
  %6 = sext i16 %5 to i32
  %7 = load i1, ptr @FMI_INIT, align 2
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %9

9:                                                ; preds = %8, %3
  %10 = icmp ult i16 %5, 10
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = zext nneg i32 %6 to i64
  %13 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  br label %17

15:                                               ; preds = %9
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %6)
  br label %17

17:                                               ; preds = %15, %11, %1
  %18 = phi ptr [ null, %1 ], [ %14, %11 ], [ null, %15 ]
  br i1 %2, label %33, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %21 = tail call ptr %20(ptr noundef nonnull %0) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = tail call ptr %22(ptr noundef %24) #18
  %26 = getelementptr inbounds %struct.FModifier, ptr %21, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !55
  %27 = icmp eq ptr %18, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %18, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void %30(ptr noundef nonnull %21, ptr noundef nonnull %0) #18
  br label %33

33:                                               ; preds = %19, %28, %32, %17
  %34 = phi ptr [ null, %17 ], [ %21, %32 ], [ %21, %28 ], [ %21, %19 ]
  ret ptr %34
}

; Function Attrs: nounwind uwtable
define dso_local void @copy_fmodifiers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  tail call void @BLI_duplicatelist(ptr noundef nonnull %0, ptr noundef %1) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = load ptr, ptr %1, align 8, !tbaa !44
  %9 = icmp ne ptr %7, null
  %10 = icmp ne ptr %8, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %46

12:                                               ; preds = %6, %40
  %13 = phi ptr [ %42, %40 ], [ %8, %6 ]
  %14 = phi ptr [ %41, %40 ], [ %7, %6 ]
  %15 = getelementptr inbounds %struct.FModifier, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 8, !tbaa !46
  %17 = sext i16 %16 to i32
  %18 = load i1, ptr @FMI_INIT, align 2
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %20

20:                                               ; preds = %19, %12
  %21 = icmp ult i16 %16, 10
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  br label %28

26:                                               ; preds = %20
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %17)
  br label %28

28:                                               ; preds = %22, %26
  %29 = phi ptr [ %25, %22 ], [ null, %26 ]
  %30 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.FModifier, ptr %14, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = tail call ptr %30(ptr noundef %32) #18
  store ptr %33, ptr %31, align 8, !tbaa !55
  %34 = icmp eq ptr %29, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %29, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void %37(ptr noundef nonnull %14, ptr noundef nonnull %13) #18
  br label %40

40:                                               ; preds = %39, %35, %28
  %41 = load ptr, ptr %14, align 8, !tbaa !44
  %42 = load ptr, ptr %13, align 8, !tbaa !44
  %43 = icmp ne ptr %41, null
  %44 = icmp ne ptr %42, null
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %12, label %46, !llvm.loop !58

46:                                               ; preds = %40, %6, %2
  ret void
}

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @remove_fmodifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !46
  %7 = sext i16 %6 to i32
  %8 = load i1, ptr @FMI_INIT, align 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %10

10:                                               ; preds = %9, %4
  %11 = icmp ult i16 %6, 10
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = zext nneg i32 %7 to i64
  %14 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  br label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %7)
  br label %18

18:                                               ; preds = %16, %12, %2
  %19 = phi ptr [ null, %2 ], [ %15, %12 ], [ null, %16 ]
  br i1 %3, label %40, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = icmp eq ptr %19, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %19, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void %28(ptr noundef nonnull %1) #18
  br label %31

31:                                               ; preds = %30, %26, %24
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %33 = load ptr, ptr %21, align 8, !tbaa !55
  tail call void %32(ptr noundef %33) #18
  br label %34

34:                                               ; preds = %31, %20
  %35 = icmp eq ptr %0, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  br label %40

37:                                               ; preds = %34
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %39(ptr noundef nonnull %1) #18
  br label %40

40:                                               ; preds = %18, %37, %36
  %41 = phi i8 [ 1, %36 ], [ 0, %37 ], [ 0, %18 ]
  ret i8 %41
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @free_fmodifiers(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %3, %37
  %7 = phi ptr [ %8, %37 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.FModifier, ptr %7, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !46
  %11 = sext i16 %10 to i32
  %12 = load i1, ptr @FMI_INIT, align 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %14

14:                                               ; preds = %13, %6
  %15 = icmp ult i16 %10, 10
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = zext nneg i32 %11 to i64
  %18 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  br label %22

20:                                               ; preds = %14
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %11)
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi ptr [ %19, %16 ], [ null, %20 ]
  %24 = getelementptr inbounds %struct.FModifier, ptr %7, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = icmp eq ptr %23, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %23, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void %31(ptr noundef nonnull %7) #18
  br label %34

34:                                               ; preds = %33, %29, %27
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %36 = load ptr, ptr %24, align 8, !tbaa !55
  tail call void %35(ptr noundef %36) #18
  br label %37

37:                                               ; preds = %22, %34
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %7) #18
  %38 = icmp eq ptr %8, null
  br i1 %38, label %39, label %6, !llvm.loop !61

39:                                               ; preds = %37, %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @find_active_fmodifier(ptr noundef readonly %0) local_unnamed_addr #5 {
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
  %13 = load ptr, ptr %7, align 8, !tbaa !60
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !62

15:                                               ; preds = %12, %6, %1, %3
  %16 = phi ptr [ null, %3 ], [ null, %1 ], [ %7, %6 ], [ null, %12 ]
  ret ptr %16
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_active_fmodifier(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #6 {
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
  %12 = load ptr, ptr %8, align 8, !tbaa !60
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !63

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

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i8 @list_has_suitable_fmodifier(ptr noundef readonly %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  %5 = icmp eq i16 %2, 0
  %6 = and i1 %4, %5
  %7 = icmp eq ptr %0, null
  br i1 %6, label %8, label %13

8:                                                ; preds = %3
  br i1 %7, label %52, label %9

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !48
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  br label %52

13:                                               ; preds = %3
  br i1 %7, label %52, label %14

14:                                               ; preds = %13
  %15 = load ptr, ptr %0, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %14
  %18 = icmp sgt i16 %2, -1
  br label %19

19:                                               ; preds = %17, %49
  %20 = phi ptr [ %15, %17 ], [ %50, %49 ]
  %21 = getelementptr inbounds %struct.FModifier, ptr %20, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !46
  %23 = sext i16 %22 to i32
  %24 = load i1, ptr @FMI_INIT, align 2
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %26

26:                                               ; preds = %25, %19
  %27 = icmp ult i16 %22, 10
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = zext nneg i32 %23 to i64
  %30 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  br label %34

32:                                               ; preds = %26
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %23)
  br label %34

34:                                               ; preds = %28, %32
  %35 = phi ptr [ %31, %28 ], [ null, %32 ]
  br i1 %4, label %40, label %36

36:                                               ; preds = %34
  %37 = load i16, ptr %21, align 8, !tbaa !46
  %38 = sext i16 %37 to i32
  %39 = icmp eq i32 %38, %1
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i1 [ %39, %36 ], [ true, %34 ]
  br i1 %18, label %42, label %46

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %35, i64 0, i32 2
  %44 = load i16, ptr %43, align 4, !tbaa !64
  %45 = icmp eq i16 %44, %2
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i1 [ %45, %42 ], [ true, %40 ]
  %48 = select i1 %41, i1 %47, i1 false
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %20, align 8, !tbaa !60
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %19, !llvm.loop !65

52:                                               ; preds = %49, %46, %13, %14, %8, %9
  %53 = phi i8 [ 0, %8 ], [ %12, %9 ], [ 0, %14 ], [ 0, %13 ], [ 1, %46 ], [ 0, %49 ]
  ret i8 %53
}

; Function Attrs: nounwind uwtable
define dso_local ptr @evaluate_fmodifiers_storage_new(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %3, %36
  %8 = phi ptr [ %35, %36 ], [ undef, %3 ]
  %9 = phi ptr [ %38, %36 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.FModifier, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !46
  %12 = sext i16 %11 to i32
  %13 = load i1, ptr @FMI_INIT, align 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %15

15:                                               ; preds = %14, %7
  %16 = icmp ult i16 %11, 10
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = zext nneg i32 %12 to i64
  %19 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  br label %23

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %12)
  br label %23

23:                                               ; preds = %17, %21
  %24 = phi ptr [ %20, %17 ], [ null, %21 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %24, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !66
  %29 = and i16 %28, 8
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @BLI_ghashutil_ptrhash, ptr noundef nonnull @BLI_ghashutil_ptrcmp, ptr noundef nonnull @.str.7) #18
  br label %33

33:                                               ; preds = %26, %23, %31
  %34 = phi i32 [ 1, %31 ], [ 4, %23 ], [ 0, %26 ]
  %35 = phi ptr [ %32, %31 ], [ %8, %23 ], [ %8, %26 ]
  switch i32 %34, label %40 [
    i32 0, label %36
    i32 4, label %36
  ]

36:                                               ; preds = %33, %33
  %37 = getelementptr inbounds %struct.FModifier, ptr %9, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !67
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %7, !llvm.loop !68

40:                                               ; preds = %36, %33, %1, %3
  %41 = phi ptr [ null, %3 ], [ null, %1 ], [ %35, %33 ], [ null, %36 ]
  ret ptr %41
}

declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @BLI_ghashutil_ptrhash(ptr noundef) #4

declare zeroext i8 @BLI_ghashutil_ptrcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local void @evaluate_fmodifiers_storage_free(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @BLI_ghash_free(ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #18
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @fmodifiers_storage_put(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @BLI_ghash_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret void
}

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @fmodifiers_storage_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  ret void
}

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @fmodifiers_storage_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef %1) #18
  ret ptr %3
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local float @evaluate_time_fmodifiers(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %119, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %119, label %11

11:                                               ; preds = %7, %114
  %12 = phi float [ %115, %114 ], [ %4, %7 ]
  %13 = phi ptr [ %117, %114 ], [ %9, %7 ]
  %14 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !46
  %16 = sext i16 %15 to i32
  %17 = load i1, ptr @FMI_INIT, align 2
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %19

19:                                               ; preds = %18, %11
  %20 = icmp ult i16 %15, 10
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = zext nneg i32 %16 to i64
  %23 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  br label %27

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %16)
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi ptr [ %24, %21 ], [ null, %25 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %114, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 5
  %32 = load i16, ptr %31, align 2, !tbaa !50
  %33 = and i16 %32, 16
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 7
  %37 = load float, ptr %36, align 8, !tbaa !69
  %38 = fcmp ugt float %37, %12
  br i1 %38, label %114, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 8
  %41 = load float, ptr %40, align 4, !tbaa !70
  %42 = fcmp ult float %41, %12
  br i1 %42, label %114, label %43

43:                                               ; preds = %39, %30
  %44 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %28, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %28, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  %50 = icmp ne ptr %49, null
  %51 = and i16 %32, 9
  %52 = icmp eq i16 %51, 0
  %53 = and i1 %52, %50
  br i1 %53, label %57, label %114

54:                                               ; preds = %43
  %55 = and i16 %32, 9
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %114

57:                                               ; preds = %47, %54
  %58 = and i16 %32, 32
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 6
  %62 = load float, ptr %61, align 4, !tbaa !51
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi float [ %62, %60 ], [ 1.000000e+00, %57 ]
  br i1 %34, label %97, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 7
  %67 = load float, ptr %66, align 8, !tbaa !69
  %68 = fcmp ult float %67, %12
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 8
  %71 = load float, ptr %70, align 4, !tbaa !70
  %72 = fcmp ugt float %71, %12
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = fcmp olt float %67, %12
  br i1 %74, label %75, label %85

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 9
  %77 = load float, ptr %76, align 8, !tbaa !73
  %78 = fadd float %67, %77
  %79 = fcmp ogt float %78, %12
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = fsub float %12, %67
  %82 = fmul float %64, %81
  %83 = fsub float %78, %67
  %84 = fdiv float %82, %83
  br label %97

85:                                               ; preds = %75, %73
  %86 = fcmp ogt float %71, %12
  br i1 %86, label %87, label %97

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 10
  %89 = load float, ptr %88, align 4, !tbaa !74
  %90 = fsub float %71, %89
  %91 = fcmp olt float %90, %12
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = fsub float %12, %71
  %94 = fmul float %64, %93
  %95 = fsub float %90, %71
  %96 = fdiv float %94, %95
  br label %97

97:                                               ; preds = %63, %65, %69, %80, %85, %87, %92
  %98 = phi float [ %84, %80 ], [ %96, %92 ], [ 0.000000e+00, %69 ], [ 0.000000e+00, %65 ], [ %64, %85 ], [ %64, %87 ], [ %64, %63 ]
  %99 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %28, i64 0, i32 3
  %100 = load i16, ptr %99, align 2, !tbaa !66
  %101 = and i16 %100, 8
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = tail call float %45(ptr noundef %2, ptr noundef nonnull %13, float noundef %3, float noundef %12) #18
  br label %109

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %28, i64 0, i32 12
  %107 = load ptr, ptr %106, align 8, !tbaa !72
  %108 = tail call float %107(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %13, float noundef %3, float noundef %12) #18
  br label %109

109:                                              ; preds = %105, %103
  %110 = phi float [ %104, %103 ], [ %108, %105 ]
  %111 = fsub float 1.000000e+00, %98
  %112 = fmul float %12, %111
  %113 = tail call float @llvm.fmuladd.f32(float %98, float %110, float %112)
  br label %114

114:                                              ; preds = %35, %39, %54, %109, %47, %27
  %115 = phi float [ %12, %27 ], [ %113, %109 ], [ %12, %54 ], [ %12, %47 ], [ %12, %39 ], [ %12, %35 ]
  %116 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !67
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %11, !llvm.loop !75

119:                                              ; preds = %114, %5, %7
  %120 = phi float [ %4, %7 ], [ %4, %5 ], [ %115, %114 ]
  ret float %120
}

; Function Attrs: nounwind uwtable
define dso_local void @evaluate_value_fmodifiers(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, float noundef %4) local_unnamed_addr #3 {
  %6 = alloca float, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %116, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %1, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %116, label %11

11:                                               ; preds = %8, %113
  %12 = phi ptr [ %114, %113 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !46
  %15 = sext i16 %14 to i32
  %16 = load i1, ptr @FMI_INIT, align 2
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %18

18:                                               ; preds = %17, %11
  %19 = icmp ult i16 %14, 10
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = zext nneg i32 %15 to i64
  %22 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  br label %26

24:                                               ; preds = %18
  %25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %15)
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi ptr [ %23, %20 ], [ null, %24 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %113, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 5
  %31 = load i16, ptr %30, align 2, !tbaa !50
  %32 = and i16 %31, 16
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 7
  %36 = load float, ptr %35, align 8, !tbaa !69
  %37 = fcmp ugt float %36, %4
  br i1 %37, label %113, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 8
  %40 = load float, ptr %39, align 4, !tbaa !70
  %41 = fcmp ult float %40, %4
  br i1 %41, label %113, label %42

42:                                               ; preds = %38, %29
  %43 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %27, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !76
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %27, i64 0, i32 13
  %48 = load ptr, ptr %47, align 8, !tbaa !77
  %49 = icmp ne ptr %48, null
  %50 = and i16 %31, 9
  %51 = icmp eq i16 %50, 0
  %52 = and i1 %51, %49
  br i1 %52, label %56, label %113

53:                                               ; preds = %42
  %54 = and i16 %31, 9
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %113

56:                                               ; preds = %46, %53
  %57 = and i16 %31, 32
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 6
  %61 = load float, ptr %60, align 4, !tbaa !51
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi float [ %61, %59 ], [ 1.000000e+00, %56 ]
  br i1 %33, label %96, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 7
  %66 = load float, ptr %65, align 8, !tbaa !69
  %67 = fcmp ult float %66, %4
  br i1 %67, label %68, label %96

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 8
  %70 = load float, ptr %69, align 4, !tbaa !70
  %71 = fcmp ugt float %70, %4
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = fcmp olt float %66, %4
  br i1 %73, label %74, label %84

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 9
  %76 = load float, ptr %75, align 8, !tbaa !73
  %77 = fadd float %66, %76
  %78 = fcmp ogt float %77, %4
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = fsub float %4, %66
  %81 = fmul float %63, %80
  %82 = fsub float %77, %66
  %83 = fdiv float %81, %82
  br label %96

84:                                               ; preds = %74, %72
  %85 = fcmp ogt float %70, %4
  br i1 %85, label %86, label %96

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 10
  %88 = load float, ptr %87, align 4, !tbaa !74
  %89 = fsub float %70, %88
  %90 = fcmp olt float %89, %4
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = fsub float %4, %70
  %93 = fmul float %63, %92
  %94 = fsub float %89, %70
  %95 = fdiv float %93, %94
  br label %96

96:                                               ; preds = %62, %64, %68, %79, %84, %86, %91
  %97 = phi float [ %83, %79 ], [ %95, %91 ], [ 0.000000e+00, %68 ], [ 0.000000e+00, %64 ], [ %63, %84 ], [ %63, %86 ], [ %63, %62 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %98 = load float, ptr %3, align 4, !tbaa !78
  store float %98, ptr %6, align 4, !tbaa !78
  %99 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %27, i64 0, i32 3
  %100 = load i16, ptr %99, align 2, !tbaa !66
  %101 = and i16 %100, 8
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  call void %44(ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %6, float noundef %4) #18
  br label %107

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %27, i64 0, i32 13
  %106 = load ptr, ptr %105, align 8, !tbaa !77
  call void %106(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %6, float noundef %4) #18
  br label %107

107:                                              ; preds = %104, %103
  %108 = load float, ptr %6, align 4, !tbaa !78
  %109 = load float, ptr %3, align 4, !tbaa !78
  %110 = fsub float 1.000000e+00, %97
  %111 = fmul float %110, %109
  %112 = call float @llvm.fmuladd.f32(float %97, float %108, float %111)
  store float %112, ptr %3, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %113

113:                                              ; preds = %34, %38, %53, %107, %46, %26
  %114 = load ptr, ptr %12, align 8, !tbaa !60
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %11, !llvm.loop !79

116:                                              ; preds = %113, %5, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fcurve_bake_modifiers(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %3
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  br label %50

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  store ptr null, ptr %12, align 8, !tbaa !83
  tail call void @fcurve_store_samples(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @fcurve_samplingcb_evalcurve) #18
  %14 = load ptr, ptr %6, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %49, label %16

16:                                               ; preds = %11, %47
  %17 = phi ptr [ %18, %47 ], [ %14, %11 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 4
  %20 = load i16, ptr %19, align 8, !tbaa !46
  %21 = sext i16 %20 to i32
  %22 = load i1, ptr @FMI_INIT, align 2
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store ptr null, ptr @fmodifiersTypeInfo, align 16, !tbaa !44
  store ptr @FMI_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 1), align 8, !tbaa !44
  store ptr @FMI_FN_GENERATOR, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 2), align 16, !tbaa !44
  store ptr @FMI_ENVELOPE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 3), align 8, !tbaa !44
  store ptr @FMI_CYCLES, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 4), align 16, !tbaa !44
  store ptr @FMI_NOISE, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 5), align 8, !tbaa !44
  store ptr null, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 6), align 16, !tbaa !44
  store ptr @FMI_PYTHON, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 7), align 8, !tbaa !44
  store ptr @FMI_LIMITS, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 8), align 16, !tbaa !44
  store ptr @FMI_STEPPED, ptr getelementptr inbounds ([10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 9), align 8, !tbaa !44
  store i1 true, ptr @FMI_INIT, align 2
  br label %24

24:                                               ; preds = %23, %16
  %25 = icmp ult i16 %20, 10
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = zext nneg i32 %21 to i64
  %28 = getelementptr inbounds [10 x ptr], ptr @fmodifiersTypeInfo, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  br label %32

30:                                               ; preds = %24
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %21)
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi ptr [ %29, %26 ], [ null, %30 ]
  %34 = getelementptr inbounds %struct.FModifier, ptr %17, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = icmp eq ptr %33, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %33, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void %41(ptr noundef nonnull %17) #18
  br label %44

44:                                               ; preds = %43, %39, %37
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %46 = load ptr, ptr %34, align 8, !tbaa !55
  tail call void %45(ptr noundef %46) #18
  br label %47

47:                                               ; preds = %44, %32
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %17) #18
  %48 = icmp eq ptr %18, null
  br i1 %48, label %49, label %16, !llvm.loop !61

49:                                               ; preds = %47, %11
  store ptr %13, ptr %12, align 8, !tbaa !83
  br label %50

50:                                               ; preds = %49, %9
  ret void
}

declare void @fcurve_store_samples(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare float @fcurve_samplingcb_evalcurve(ptr noundef, ptr noundef, float noundef) #4

; Function Attrs: nounwind uwtable
define internal void @fcm_generator_free(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %7(ptr noundef nonnull %4) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fcm_generator_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %11 = tail call ptr %10(ptr noundef nonnull %5) #18
  store ptr %11, ptr %9, align 8, !tbaa !84
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fcm_generator_new_data(ptr nocapture noundef writeonly %0) #3 {
  %2 = getelementptr inbounds %struct.FMod_Generator, ptr %0, i64 0, i32 2
  store i32 1, ptr %2, align 4, !tbaa !86
  %3 = getelementptr inbounds %struct.FMod_Generator, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 8, !tbaa !87
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %5 = tail call ptr %4(i64 noundef 8, ptr noundef nonnull @.str.9) #18
  store ptr %5, ptr %0, align 8, !tbaa !84
  store float 0.000000e+00, ptr %5, align 4, !tbaa !78
  %6 = getelementptr inbounds float, ptr %5, i64 1
  store float 1.000000e+00, ptr %6, align 4, !tbaa !78
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fcm_generator_verify(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.FMod_Generator, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !88
  switch i32 %5, label %32 [
    i32 0, label %6
    i32 1, label %19
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FMod_Generator, ptr %3, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !86
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.FMod_Generator, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !87
  %12 = icmp eq i32 %11, %9
  br i1 %12, label %32, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !44
  %15 = load ptr, ptr %3, align 8, !tbaa !84
  %16 = sext i32 %9 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call ptr %14(ptr noundef %15, i64 noundef %17, ptr noundef nonnull @__func__.fcm_generator_verify) #18
  store ptr %18, ptr %3, align 8, !tbaa !84
  store i32 %9, ptr %10, align 8, !tbaa !87
  br label %32

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.FMod_Generator, ptr %3, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !86
  %22 = shl nsw i32 %21, 1
  %23 = getelementptr inbounds %struct.FMod_Generator, ptr %3, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !87
  %25 = icmp eq i32 %24, %22
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !44
  %28 = load ptr, ptr %3, align 8, !tbaa !84
  %29 = sext i32 %22 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr %27(ptr noundef %28, i64 noundef %30, ptr noundef nonnull @__func__.fcm_generator_verify) #18
  store ptr %31, ptr %3, align 8, !tbaa !84
  store i32 %22, ptr %23, align 8, !tbaa !87
  br label %32

32:                                               ; preds = %19, %26, %6, %13, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fcm_generator_evaluate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float noundef %3) #3 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !88
  switch i32 %8, label %98 [
    i32 0, label %9
    i32 1, label %65
  ]

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !87
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.10) #18
  %16 = load i32, ptr %11, align 8, !tbaa !87
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %9
  %19 = zext i32 %16 to i64
  %20 = getelementptr float, ptr %15, i64 -1
  br label %24

21:                                               ; preds = %33
  %22 = load ptr, ptr %6, align 8, !tbaa !84
  %23 = zext i32 %16 to i64
  br label %36

24:                                               ; preds = %18, %33
  %25 = phi i64 [ 0, %18 ], [ %34, %33 ]
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = getelementptr float, ptr %20, i64 %25
  %29 = load float, ptr %28, align 4, !tbaa !78
  %30 = fmul float %29, %3
  %31 = getelementptr inbounds float, ptr %15, i64 %25
  store float %30, ptr %31, align 4, !tbaa !78
  br label %33

32:                                               ; preds = %24
  store float 1.000000e+00, ptr %15, align 4, !tbaa !78
  br label %33

33:                                               ; preds = %27, %32
  %34 = add nuw nsw i64 %25, 1
  %35 = icmp eq i64 %34, %19
  br i1 %35, label %21, label %24, !llvm.loop !89

36:                                               ; preds = %21, %36
  %37 = phi i64 [ 0, %21 ], [ %44, %36 ]
  %38 = phi float [ 0.000000e+00, %21 ], [ %43, %36 ]
  %39 = getelementptr inbounds float, ptr %22, i64 %37
  %40 = load float, ptr %39, align 4, !tbaa !78
  %41 = getelementptr inbounds float, ptr %15, i64 %37
  %42 = load float, ptr %41, align 4, !tbaa !78
  %43 = tail call float @llvm.fmuladd.f32(float %40, float %42, float %38)
  %44 = add nuw nsw i64 %37, 1
  %45 = icmp eq i64 %44, %23
  br i1 %45, label %46, label %36, !llvm.loop !90

46:                                               ; preds = %36, %9
  %47 = phi float [ 0.000000e+00, %9 ], [ %43, %36 ]
  %48 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !86
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !91
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load float, ptr %2, align 4, !tbaa !78
  %58 = fadd float %47, %57
  br label %59

59:                                               ; preds = %51, %56
  %60 = phi float [ %58, %56 ], [ %47, %51 ]
  store float %60, ptr %2, align 4, !tbaa !78
  br label %61

61:                                               ; preds = %59, %46
  %62 = icmp eq ptr %15, null
  br i1 %62, label %98, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %64(ptr noundef nonnull %15) #18
  br label %98

65:                                               ; preds = %4
  %66 = load ptr, ptr %6, align 8, !tbaa !84
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !86
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %68, %72
  %73 = phi float [ %80, %72 ], [ 1.000000e+00, %68 ]
  %74 = phi ptr [ %81, %72 ], [ %66, %68 ]
  %75 = phi i32 [ %82, %72 ], [ 0, %68 ]
  %76 = load float, ptr %74, align 4, !tbaa !78
  %77 = getelementptr inbounds float, ptr %74, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !78
  %79 = tail call float @llvm.fmuladd.f32(float %76, float %3, float %78)
  %80 = fmul float %73, %79
  %81 = getelementptr inbounds float, ptr %74, i64 2
  %82 = add i32 %75, 1
  %83 = icmp eq i32 %82, %70
  br i1 %83, label %84, label %72

84:                                               ; preds = %72, %68, %65
  %85 = phi float [ 1.000000e+00, %65 ], [ 1.000000e+00, %68 ], [ %80, %72 ]
  %86 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 4
  %91 = load i32, ptr %90, align 4, !tbaa !91
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load float, ptr %2, align 4, !tbaa !78
  %96 = fadd float %85, %95
  store float %96, ptr %2, align 4, !tbaa !78
  br label %98

97:                                               ; preds = %89
  store float %85, ptr %2, align 4, !tbaa !78
  br label %98

98:                                               ; preds = %84, %97, %94, %61, %63, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @fcm_fn_generator_new_data(ptr nocapture noundef writeonly %0) #8 {
  store float 1.000000e+00, ptr %0, align 4, !tbaa !92
  %2 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %0, i64 0, i32 1
  store float 1.000000e+00, ptr %2, align 4, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fcm_fn_generator_evaluate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float noundef %3) #3 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !95
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %3, float %10)
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !96
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
  %19 = tail call double @fmod(double noundef %18, double noundef 0x400921FB54442D18) #18
  %20 = tail call double @llvm.fabs.f64(double %19)
  %21 = fcmp ult double %20, 0x3E80000000000000
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !97
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  store float 0.000000e+00, ptr %2, align 4, !tbaa !78
  br label %46

28:                                               ; preds = %4
  %29 = fcmp ogt float %11, 1.000000e+00
  br i1 %29, label %46, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !97
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  store float 0.000000e+00, ptr %2, align 4, !tbaa !78
  br label %46

36:                                               ; preds = %4
  %37 = fcmp ogt float %11, 0.000000e+00
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !97
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  store float 0.000000e+00, ptr %2, align 4, !tbaa !78
  br label %46

44:                                               ; preds = %4
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %14)
  br label %46

46:                                               ; preds = %36, %28, %17, %4, %43, %38, %35, %30, %27, %22, %44, %16, %15
  %47 = phi i1 [ true, %44 ], [ true, %43 ], [ true, %38 ], [ true, %35 ], [ true, %30 ], [ true, %27 ], [ true, %22 ], [ false, %16 ], [ false, %15 ], [ false, %4 ], [ false, %17 ], [ false, %28 ], [ false, %36 ]
  %48 = phi ptr [ null, %44 ], [ null, %43 ], [ null, %38 ], [ null, %35 ], [ null, %30 ], [ null, %27 ], [ null, %22 ], [ @sinc, %16 ], [ @cos, %15 ], [ @sin, %4 ], [ @tan, %17 ], [ @log, %28 ], [ @sqrt, %36 ]
  br i1 %47, label %65, label %49

49:                                               ; preds = %46
  %50 = load float, ptr %6, align 4, !tbaa !92
  %51 = tail call double %48(double noundef %12) #18
  %52 = fptrunc double %51 to float
  %53 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 3
  %54 = load float, ptr %53, align 4, !tbaa !98
  %55 = tail call float @llvm.fmuladd.f32(float %50, float %52, float %54)
  %56 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 5
  %57 = load i32, ptr %56, align 4, !tbaa !97
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load float, ptr %2, align 4, !tbaa !78
  %62 = fadd float %55, %61
  br label %63

63:                                               ; preds = %49, %60
  %64 = phi float [ %62, %60 ], [ %55, %49 ]
  store float %64, ptr %2, align 4, !tbaa !78
  br label %65

65:                                               ; preds = %63, %46
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal double @sinc(double noundef %0) unnamed_addr #10 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp olt double %2, 1.000000e-04
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = fmul double %0, 0x400921FB54442D18
  %6 = tail call double @sin(double noundef %5) #18
  %7 = fdiv double %6, %5
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi double [ %7, %4 ], [ 1.000000e+00, %1 ]
  ret double %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @fcm_envelope_free(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %7(ptr noundef nonnull %4) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fcm_envelope_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %11 = tail call ptr %10(ptr noundef nonnull %5) #18
  store ptr %11, ptr %9, align 8, !tbaa !99
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @fcm_envelope_new_data(ptr nocapture noundef writeonly %0) #8 {
  %2 = getelementptr inbounds %struct.FMod_Envelope, ptr %0, i64 0, i32 3
  store float -1.000000e+00, ptr %2, align 8, !tbaa !101
  %3 = getelementptr inbounds %struct.FMod_Envelope, ptr %0, i64 0, i32 4
  store float 1.000000e+00, ptr %3, align 4, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @fcm_envelope_verify(ptr nocapture readnone %0) #11 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @fcm_envelope_evaluate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float noundef %3) #12 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = icmp eq ptr %7, null
  br i1 %8, label %80, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !103
  %12 = sext i32 %11 to i64
  %13 = getelementptr %struct.FCM_EnvelopeData, ptr %7, i64 %12
  %14 = getelementptr %struct.FCM_EnvelopeData, ptr %13, i64 -1
  %15 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %7, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !37
  %17 = fcmp ult float %16, %3
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = load float, ptr %7, align 4, !tbaa !104
  %20 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %7, i64 0, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !105
  br label %64

22:                                               ; preds = %9
  %23 = getelementptr %struct.FCM_EnvelopeData, ptr %13, i64 -1, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !37
  %25 = fcmp ugt float %24, %3
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = icmp sgt i32 %11, 1
  br i1 %27, label %28, label %64

28:                                               ; preds = %26
  %29 = add nsw i32 %11, -2
  br label %34

30:                                               ; preds = %22
  %31 = load float, ptr %14, align 4, !tbaa !104
  %32 = getelementptr %struct.FCM_EnvelopeData, ptr %13, i64 -1, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !105
  br label %64

34:                                               ; preds = %28, %61
  %35 = phi ptr [ %37, %61 ], [ %7, %28 ]
  %36 = phi i32 [ %62, %61 ], [ 0, %28 ]
  %37 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %35, i64 1
  %38 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %35, i64 0, i32 2
  %39 = load float, ptr %38, align 4, !tbaa !37
  %40 = fcmp ugt float %39, %3
  br i1 %40, label %61, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %35, i64 1, i32 2
  %43 = load float, ptr %42, align 4, !tbaa !37
  %44 = fcmp ult float %43, %3
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = fsub float %43, %39
  %47 = fsub float %3, %39
  %48 = fdiv float %47, %46
  %49 = fsub float %43, %3
  %50 = fdiv float %49, %46
  %51 = load float, ptr %35, align 4, !tbaa !104
  %52 = load float, ptr %37, align 4, !tbaa !104
  %53 = fmul float %48, %52
  %54 = tail call float @llvm.fmuladd.f32(float %50, float %51, float %53)
  %55 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %35, i64 0, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !105
  %57 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %35, i64 1, i32 1
  %58 = load float, ptr %57, align 4, !tbaa !105
  %59 = fmul float %48, %58
  %60 = tail call float @llvm.fmuladd.f32(float %50, float %56, float %59)
  br label %64

61:                                               ; preds = %34, %41
  %62 = add nuw nsw i32 %36, 1
  %63 = icmp eq i32 %36, %29
  br i1 %63, label %64, label %34, !llvm.loop !106

64:                                               ; preds = %61, %26, %30, %45, %18
  %65 = phi float [ %21, %18 ], [ %33, %30 ], [ %60, %45 ], [ 0.000000e+00, %26 ], [ 0.000000e+00, %61 ]
  %66 = phi float [ %19, %18 ], [ %31, %30 ], [ %54, %45 ], [ 0.000000e+00, %26 ], [ 0.000000e+00, %61 ]
  %67 = load float, ptr %2, align 4, !tbaa !78
  %68 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 2
  %69 = load float, ptr %68, align 4, !tbaa !107
  %70 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 3
  %71 = load float, ptr %70, align 8, !tbaa !101
  %72 = fadd float %69, %71
  %73 = fsub float %67, %72
  %74 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 4
  %75 = load float, ptr %74, align 4, !tbaa !102
  %76 = fsub float %75, %71
  %77 = fdiv float %73, %76
  %78 = fsub float %65, %66
  %79 = tail call float @llvm.fmuladd.f32(float %77, float %78, float %66)
  store float %79, ptr %2, align 4, !tbaa !78
  br label %80

80:                                               ; preds = %4, %64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @fcm_cycles_new_data(ptr nocapture noundef writeonly %0) #8 {
  %2 = getelementptr inbounds %struct.FMod_Cycles, ptr %0, i64 0, i32 1
  store i16 1, ptr %2, align 2, !tbaa !108
  store i16 1, ptr %0, align 2, !tbaa !110
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @fcm_cycles_time(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, float %3, float noundef %4) #3 {
  %6 = getelementptr inbounds %struct.FModifier, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.FModifier, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.FModifier, ptr %2, i64 0, i32 5
  %13 = load i16, ptr %12, align 2, !tbaa !50
  %14 = or i16 %13, 1
  store i16 %14, ptr %12, align 2, !tbaa !50
  br label %150

15:                                               ; preds = %5
  %16 = icmp eq ptr %1, null
  br i1 %16, label %150, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !112
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 %24
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 1
  %27 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 1, i64 1
  %28 = getelementptr %struct.BezTriple, ptr %25, i64 -1, i32 0, i64 1
  %29 = getelementptr %struct.BezTriple, ptr %25, i64 -1, i32 0, i64 1, i64 1
  br label %42

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !113
  %33 = icmp eq ptr %32, null
  br i1 %33, label %150, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !112
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
  %47 = load float, ptr %46, align 4, !tbaa !78
  %48 = load float, ptr %45, align 4, !tbaa !78
  %49 = load float, ptr %44, align 4, !tbaa !78
  %50 = load float, ptr %43, align 4, !tbaa !78
  %51 = fcmp ogt float %48, %4
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load i16, ptr %7, align 2, !tbaa !110
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.FMod_Cycles, ptr %7, i64 0, i32 2
  br label %65

57:                                               ; preds = %42
  %58 = fcmp olt float %50, %4
  br i1 %58, label %59, label %73

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.FMod_Cycles, ptr %7, i64 0, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !108
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.FMod_Cycles, ptr %7, i64 0, i32 3
  br label %65

65:                                               ; preds = %55, %63
  %66 = phi ptr [ %64, %63 ], [ %56, %55 ]
  %67 = phi float [ 1.000000e+00, %63 ], [ -1.000000e+00, %55 ]
  %68 = phi i16 [ %61, %63 ], [ %53, %55 ]
  %69 = phi float [ %50, %63 ], [ %48, %55 ]
  %70 = xor i1 %51, true
  %71 = load i16, ptr %66, align 2, !tbaa !114
  %72 = sext i16 %71 to i32
  br label %73

73:                                               ; preds = %65, %57, %59, %52
  %74 = phi i1 [ true, %52 ], [ true, %59 ], [ true, %57 ], [ false, %65 ]
  %75 = phi i1 [ false, %52 ], [ false, %59 ], [ false, %57 ], [ %51, %65 ]
  %76 = phi i1 [ false, %52 ], [ false, %59 ], [ false, %57 ], [ %70, %65 ]
  %77 = phi float [ 0.000000e+00, %52 ], [ 0.000000e+00, %59 ], [ 0.000000e+00, %57 ], [ %67, %65 ]
  %78 = phi i16 [ 0, %52 ], [ 0, %59 ], [ 0, %57 ], [ %68, %65 ]
  %79 = phi i32 [ 0, %52 ], [ 0, %59 ], [ 0, %57 ], [ %72, %65 ]
  %80 = phi float [ 0.000000e+00, %52 ], [ 0.000000e+00, %59 ], [ 0.000000e+00, %57 ], [ %69, %65 ]
  %81 = icmp eq i16 %78, 0
  %82 = or i1 %74, %81
  br i1 %82, label %150, label %83

83:                                               ; preds = %73
  %84 = fsub float %50, %48
  %85 = fsub float %49, %47
  %86 = fcmp oeq float %84, 0.000000e+00
  br i1 %86, label %141, label %87

87:                                               ; preds = %83
  %88 = fsub float %4, %80
  %89 = fmul float %77, %88
  %90 = fdiv float %89, %84
  %91 = fpext float %88 to double
  %92 = fpext float %84 to double
  %93 = tail call double @fmod(double noundef %91, double noundef %92) #18
  %94 = fptrunc double %93 to float
  %95 = icmp ne i32 %79, 0
  %96 = sitofp i32 %79 to float
  %97 = fcmp ogt float %90, %96
  %98 = and i1 %95, %97
  br i1 %98, label %141, label %99

99:                                               ; preds = %87
  %100 = icmp eq i16 %78, 2
  br i1 %100, label %101, label %110

101:                                              ; preds = %99
  %102 = fdiv float %88, %84
  br i1 %75, label %103, label %105

103:                                              ; preds = %101
  %104 = tail call float @llvm.floor.f32(float %102)
  br label %107

105:                                              ; preds = %101
  %106 = tail call float @llvm.ceil.f32(float %102)
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi float [ %104, %103 ], [ %106, %105 ]
  %109 = fmul float %85, %108
  br label %110

110:                                              ; preds = %107, %99
  %111 = phi float [ %109, %107 ], [ 0.000000e+00, %99 ]
  %112 = fcmp oeq float %94, 0.000000e+00
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = select i1 %76, float %50, float %48
  %115 = icmp eq i16 %78, 3
  br i1 %115, label %116, label %136

116:                                              ; preds = %113
  %117 = fptosi float %90 to i32
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %116
  %121 = select i1 %76, float %48, float %50
  br label %136

122:                                              ; preds = %110
  %123 = icmp eq i16 %78, 3
  br i1 %123, label %124, label %134

124:                                              ; preds = %122
  %125 = fadd float %90, 1.000000e+00
  %126 = fptosi float %125 to i32
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  br i1 %75, label %130, label %132

130:                                              ; preds = %129
  %131 = fsub float %48, %94
  br label %136

132:                                              ; preds = %129
  %133 = fsub float %50, %94
  br label %136

134:                                              ; preds = %124, %122
  %135 = fadd float %48, %94
  br label %136

136:                                              ; preds = %134, %132, %130, %113, %116, %120
  %137 = phi float [ %121, %120 ], [ %114, %116 ], [ %114, %113 ], [ %131, %130 ], [ %133, %132 ], [ %135, %134 ]
  %138 = fcmp olt float %137, %48
  %139 = select i1 %138, float %84, float -0.000000e+00
  %140 = fadd float %137, %139
  br label %141

141:                                              ; preds = %87, %83, %136
  %142 = phi float [ %111, %136 ], [ 0.000000e+00, %83 ], [ 0.000000e+00, %87 ]
  %143 = phi i1 [ true, %136 ], [ false, %83 ], [ false, %87 ]
  %144 = phi float [ %140, %136 ], [ %4, %83 ], [ %4, %87 ]
  br i1 %143, label %145, label %150

145:                                              ; preds = %141
  %146 = icmp eq i16 %78, 2
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %149 = tail call ptr %148(i64 noundef 4, ptr noundef nonnull @.str.12) #18
  store float %142, ptr %149, align 4, !tbaa !115
  tail call void @BLI_ghash_insert(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %149) #18
  br label %150

150:                                              ; preds = %145, %147, %73, %30, %15, %141, %11
  %151 = phi float [ %4, %11 ], [ %4, %141 ], [ %4, %15 ], [ %4, %30 ], [ %4, %73 ], [ %144, %147 ], [ %144, %145 ]
  ret float %151
}

; Function Attrs: nounwind uwtable
define internal void @fcm_cycles_evaluate(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef %3, float %4) #3 {
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef %2) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = load float, ptr %6, align 4, !tbaa !115
  %10 = load float, ptr %3, align 4, !tbaa !78
  %11 = fadd float %9, %10
  store float %11, ptr %3, align 4, !tbaa !78
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %12(ptr noundef nonnull %6) #18
  %13 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %0, ptr noundef %2, ptr noundef null, ptr noundef null) #18
  br label %14

14:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @fcm_noise_new_data(ptr nocapture noundef writeonly %0) #8 {
  store float 1.000000e+00, ptr %0, align 4, !tbaa !117
  %2 = getelementptr inbounds %struct.FMod_Noise, ptr %0, i64 0, i32 1
  store float 1.000000e+00, ptr %2, align 4, !tbaa !119
  %3 = getelementptr inbounds %struct.FMod_Noise, ptr %0, i64 0, i32 2
  store float 1.000000e+00, ptr %3, align 4, !tbaa !120
  %4 = getelementptr inbounds %struct.FMod_Noise, ptr %0, i64 0, i32 3
  store i64 0, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fcm_noise_evaluate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float noundef %3) #3 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load float, ptr %6, align 4, !tbaa !117
  %8 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !121
  %10 = fsub float %3, %9
  %11 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !120
  %13 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 4
  %14 = load i16, ptr %13, align 4, !tbaa !122
  %15 = sext i16 %14 to i32
  %16 = tail call float @BLI_turbulence(float noundef %7, float noundef %10, float noundef %12, float noundef 0x3FB99999A0000000, i32 noundef %15) #18
  %17 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 5
  %18 = load i16, ptr %17, align 2, !tbaa !123
  %19 = load float, ptr %2, align 4, !tbaa !78
  switch i16 %18, label %34 [
    i16 1, label %20
    i16 2, label %24
    i16 3, label %29
  ]

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !119
  %23 = tail call float @llvm.fmuladd.f32(float %16, float %22, float %19)
  br label %39

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !119
  %27 = fneg float %16
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %26, float %19)
  br label %39

29:                                               ; preds = %4
  %30 = fmul float %16, %19
  %31 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !119
  %33 = fmul float %30, %32
  br label %39

34:                                               ; preds = %4
  %35 = fadd float %16, -5.000000e-01
  %36 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !119
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %37, float %19)
  br label %39

39:                                               ; preds = %34, %29, %24, %20
  %40 = phi float [ %38, %34 ], [ %33, %29 ], [ %28, %24 ], [ %23, %20 ]
  store float %40, ptr %2, align 4, !tbaa !78
  ret void
}

declare float @BLI_turbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @fcm_python_free(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.FMod_Python, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  tail call void @IDP_FreeProperty(ptr noundef %5) #18
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %7 = load ptr, ptr %4, align 8, !tbaa !124
  tail call void %6(ptr noundef %7) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fcm_python_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_Python, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = tail call ptr @IDP_CopyProperty(ptr noundef %8) #18
  %10 = getelementptr inbounds %struct.FMod_Python, ptr %4, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !124
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fcm_python_new_data(ptr nocapture noundef writeonly %0) #3 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @.str.13) #18
  %4 = getelementptr inbounds %struct.FMod_Python, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 2
  store i8 6, ptr %5, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @fcm_python_evaluate(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, float %3) #11 {
  ret void
}

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #4

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal float @fcm_limits_time(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, float %2, float noundef %3) #13 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_Limits, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !129
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load float, ptr %6, align 4, !tbaa !132
  %13 = fcmp ogt float %12, %3
  br i1 %13, label %22, label %14

14:                                               ; preds = %11, %4
  %15 = and i32 %8, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  %19 = load float, ptr %18, align 4, !tbaa !133
  %20 = fcmp olt float %19, %3
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %14
  br label %22

22:                                               ; preds = %17, %11, %21
  %23 = phi float [ %3, %21 ], [ %12, %11 ], [ %19, %17 ]
  ret float %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @fcm_limits_evaluate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float %3) #14 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_Limits, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !129
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = load float, ptr %2, align 4, !tbaa !78
  %13 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !134
  %15 = fcmp olt float %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store float %14, ptr %2, align 4, !tbaa !78
  br label %17

17:                                               ; preds = %16, %11, %4
  %18 = and i32 %8, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load float, ptr %2, align 4, !tbaa !78
  %22 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !135
  %24 = fcmp ogt float %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store float %23, ptr %2, align 4, !tbaa !78
  br label %26

26:                                               ; preds = %25, %20, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @fcm_stepped_new_data(ptr nocapture noundef writeonly %0) #8 {
  store float 2.000000e+00, ptr %0, align 4, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal float @fcm_stepped_time(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, float %2, float noundef %3) #13 {
  %5 = getelementptr inbounds %struct.FModifier, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !138
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !139
  %14 = fcmp ogt float %13, %3
  br i1 %14, label %31, label %15

15:                                               ; preds = %11, %4
  %16 = and i32 %8, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !140
  %21 = fcmp olt float %20, %3
  br i1 %21, label %31, label %22

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !141
  %25 = fsub float %3, %24
  %26 = load float, ptr %6, align 4, !tbaa !136
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
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !39, i64 8}
!38 = !{!"FCM_EnvelopeData", !39, i64 0, !39, i64 4, !39, i64 8, !40, i64 12, !40, i64 14}
!39 = !{!"float", !35, i64 0}
!40 = !{!"short", !35, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !35, i64 0}
!46 = !{!47, !40, i64 88}
!47 = !{!"FModifier", !45, i64 0, !45, i64 8, !45, i64 16, !35, i64 24, !40, i64 88, !40, i64 90, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108}
!48 = !{!49, !45, i64 0}
!49 = !{!"ListBase", !45, i64 0, !45, i64 8}
!50 = !{!47, !40, i64 90}
!51 = !{!47, !39, i64 92}
!52 = !{!49, !45, i64 8}
!53 = !{!54, !40, i64 2}
!54 = !{!"FModifierTypeInfo", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !35, i64 8, !35, i64 72, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192}
!55 = !{!47, !45, i64 16}
!56 = !{!54, !45, i64 152}
!57 = !{!54, !45, i64 144}
!58 = distinct !{!58, !42, !43}
!59 = !{!54, !45, i64 136}
!60 = !{!47, !45, i64 0}
!61 = distinct !{!61, !42, !43}
!62 = distinct !{!62, !42, !43}
!63 = distinct !{!63, !42, !43}
!64 = !{!54, !40, i64 4}
!65 = distinct !{!65, !42, !43}
!66 = !{!54, !40, i64 6}
!67 = !{!47, !45, i64 8}
!68 = distinct !{!68, !42, !43}
!69 = !{!47, !39, i64 96}
!70 = !{!47, !39, i64 100}
!71 = !{!54, !45, i64 168}
!72 = !{!54, !45, i64 184}
!73 = !{!47, !39, i64 104}
!74 = !{!47, !39, i64 108}
!75 = distinct !{!75, !42, !43}
!76 = !{!54, !45, i64 176}
!77 = !{!54, !45, i64 192}
!78 = !{!39, !39, i64 0}
!79 = distinct !{!79, !42, !43}
!80 = !{!81, !45, i64 32}
!81 = !{!"FCurve", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !49, i64 32, !45, i64 48, !45, i64 56, !82, i64 64, !39, i64 68, !40, i64 72, !40, i64 74, !82, i64 76, !45, i64 80, !82, i64 88, !35, i64 92, !39, i64 104, !39, i64 108}
!82 = !{!"int", !35, i64 0}
!83 = !{!81, !45, i64 24}
!84 = !{!85, !45, i64 0}
!85 = !{!"FMod_Generator", !45, i64 0, !82, i64 8, !82, i64 12, !82, i64 16, !82, i64 20}
!86 = !{!85, !82, i64 12}
!87 = !{!85, !82, i64 8}
!88 = !{!85, !82, i64 16}
!89 = distinct !{!89, !42, !43}
!90 = distinct !{!90, !42, !43}
!91 = !{!85, !82, i64 20}
!92 = !{!93, !39, i64 0}
!93 = !{!"FMod_FunctionGenerator", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !82, i64 16, !82, i64 20}
!94 = !{!93, !39, i64 4}
!95 = !{!93, !39, i64 8}
!96 = !{!93, !82, i64 16}
!97 = !{!93, !82, i64 20}
!98 = !{!93, !39, i64 12}
!99 = !{!100, !45, i64 0}
!100 = !{!"FMod_Envelope", !45, i64 0, !82, i64 8, !39, i64 12, !39, i64 16, !39, i64 20}
!101 = !{!100, !39, i64 16}
!102 = !{!100, !39, i64 20}
!103 = !{!100, !82, i64 8}
!104 = !{!38, !39, i64 0}
!105 = !{!38, !39, i64 4}
!106 = distinct !{!106, !42, !43}
!107 = !{!100, !39, i64 12}
!108 = !{!109, !40, i64 2}
!109 = !{!"FMod_Cycles", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6}
!110 = !{!109, !40, i64 0}
!111 = !{!81, !45, i64 48}
!112 = !{!81, !82, i64 64}
!113 = !{!81, !45, i64 56}
!114 = !{!40, !40, i64 0}
!115 = !{!116, !39, i64 0}
!116 = !{!"tFCMED_Cycles", !39, i64 0}
!117 = !{!118, !39, i64 0}
!118 = !{!"FMod_Noise", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !40, i64 18}
!119 = !{!118, !39, i64 4}
!120 = !{!118, !39, i64 8}
!121 = !{!118, !39, i64 12}
!122 = !{!118, !40, i64 16}
!123 = !{!118, !40, i64 18}
!124 = !{!125, !45, i64 8}
!125 = !{!"FMod_Python", !45, i64 0, !45, i64 8}
!126 = !{!127, !35, i64 16}
!127 = !{!"IDProperty", !45, i64 0, !45, i64 8, !35, i64 16, !35, i64 17, !40, i64 18, !35, i64 20, !82, i64 84, !128, i64 88, !82, i64 120, !82, i64 124}
!128 = !{!"IDPropertyData", !45, i64 0, !49, i64 8, !82, i64 24, !82, i64 28}
!129 = !{!130, !82, i64 16}
!130 = !{!"FMod_Limits", !131, i64 0, !82, i64 16, !82, i64 20}
!131 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!132 = !{!130, !39, i64 0}
!133 = !{!130, !39, i64 4}
!134 = !{!130, !39, i64 8}
!135 = !{!130, !39, i64 12}
!136 = !{!137, !39, i64 0}
!137 = !{!"FMod_Stepped", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !82, i64 16}
!138 = !{!137, !82, i64 16}
!139 = !{!137, !39, i64 8}
!140 = !{!137, !39, i64 12}
!141 = !{!137, !39, i64 4}
