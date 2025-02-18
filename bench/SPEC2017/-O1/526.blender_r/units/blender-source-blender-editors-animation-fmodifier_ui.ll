; ModuleID = 'blender/source/blender/editors/animation/fmodifier_ui.c'
source_filename = "blender/source/blender/editors/animation/fmodifier_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.FModifierTypeInfo = type { i16, i16, i16, i16, [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.FMod_Generator = type { ptr, i32, i32, i32, i32 }
%struct.FMod_Envelope = type { ptr, i32, float, float, float }
%struct.FCM_EnvelopeData = type { float, float, float, i16, i16 }
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

@RNA_FModifier = external global %struct.StructRNA, align 1
@.str = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"<Unknown Modifier>\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Delete F-Curve Modifier\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"use_restricted_range\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"blend_in\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"blend_out\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"Out\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"use_influence\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@fmodifier_copypaste_buf = internal global %struct.ListBase zeroinitializer, align 8
@RNA_FModifierFunctionGenerator = external global %struct.StructRNA, align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"use_additive\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Poly Order:\00", align 1
@.str.20 = private unnamed_addr constant [74 x i8] c"'Order' of the Polynomial (for a polynomial with n terms, 'order' is n-1)\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"x^%u\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"y =\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Coefficient for polynomial\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Power of x\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Coefficient of x\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"x +\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Second coefficient\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c") \C3\97\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c")  \00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"function_type\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"amplitude\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"phase_multiplier\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"phase_offset\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"value_offset\00", align 1
@RNA_FModifierCycles = external global %struct.StructRNA, align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Before:\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"mode_before\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"cycles_before\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"After:\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"mode_after\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"cycles_after\00", align 1
@RNA_FModifierEnvelope = external global %struct.StructRNA, align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"Envelope:\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"reference_value\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"default_min\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"default_max\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"Control Points:\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"Add Point\00", align 1
@.str.54 = private unnamed_addr constant [61 x i8] c"Add a new control-point to the envelope on the current frame\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"Fra:\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"Frame that envelope point occurs\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"Min:\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"Minimum bound of envelope at this point\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"Max:\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"Maximum bound of envelope at this point\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"Delete envelope control point\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [17 x i8] c"FCM_EnvelopeData\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_FModifierLimits = external global %struct.StructRNA, align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"use_min_x\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"min_x\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"use_min_y\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"min_y\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"use_max_x\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"max_x\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"use_max_y\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"max_y\00", align 1
@RNA_FModifierNoise = external global %struct.StructRNA, align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"blend_type\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"phase\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@RNA_FModifierStepped = external global %struct.StructRNA, align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"frame_step\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"frame_offset\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"use_frame_start\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"use_frame_end\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_uiTemplate_fmodifier_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca %struct.PointerRNA, align 8
  %14 = tail call ptr @fmodifier_get_typeinfo(ptr noundef %3) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #5
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifier, ptr noundef %3, ptr noundef nonnull %13) #5
  %15 = call ptr @uiLayoutBox(ptr noundef %0) #5
  %16 = call ptr @uiLayoutRow(ptr noundef %15, i32 noundef 0) #5
  %17 = call ptr @uiLayoutGetBlock(ptr noundef %16) #5
  %18 = call ptr @uiLayoutRow(ptr noundef %16, i32 noundef 1) #5
  call void @uiLayoutSetAlignment(ptr noundef %18, i8 noundef zeroext 1) #5
  call void @uiBlockSetEmboss(ptr noundef %17, i8 noundef zeroext 1) #5
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %13, ptr noundef nonnull @.str, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %13, ptr noundef nonnull @.str.2, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  %19 = icmp eq ptr %14, null
  %20 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %14, i64 0, i32 4
  %21 = select i1 %19, ptr @.str.3, ptr %20
  call void @uiItemL(ptr noundef %18, ptr noundef nonnull %21, i32 noundef 0) #5
  %22 = call ptr @uiLayoutRow(ptr noundef %16, i32 noundef 1) #5
  call void @uiLayoutSetAlignment(ptr noundef %22, i8 noundef zeroext 3) #5
  call void @uiItemR(ptr noundef %22, ptr noundef nonnull %13, ptr noundef nonnull @.str.4, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  call void @uiBlockSetEmboss(ptr noundef %17, i8 noundef zeroext 1) #5
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %24 = call ptr @uiDefIconBut(ptr noundef %17, i32 noundef 512, i32 noundef 1, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %23, i16 noundef signext %23, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.5) #5
  call void @uiButSetFunc(ptr noundef %24, ptr noundef nonnull @delete_fmodifier_cb, ptr noundef %2, ptr noundef %3) #5
  call void @uiBlockSetEmboss(ptr noundef %17, i8 noundef zeroext 0) #5
  %25 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 5
  %26 = load i16, ptr %25, align 2, !tbaa !45
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %277, label %29

29:                                               ; preds = %4
  %30 = call ptr @uiLayoutBox(ptr noundef %0) #5
  %31 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 4
  %32 = load i16, ptr %31, align 8, !tbaa !47
  switch i16 %32, label %261 [
    i16 1, label %33
    i16 2, label %181
    i16 4, label %184
    i16 3, label %188
    i16 8, label %240
    i16 5, label %247
    i16 9, label %251
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #5
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %37 = sitofp i16 %36 to double
  %38 = call double @llvm.fmuladd.f64(double %37, double -1.500000e+00, double 3.140000e+02)
  %39 = fptosi double %38 to i16
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierFunctionGenerator, ptr noundef %3, ptr noundef nonnull %11) #5
  %40 = call ptr @uiLayoutGetBlock(ptr noundef %30) #5
  call void @uiBlockBeginAlign(ptr noundef %40) #5
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %42 = call ptr @uiDefButR(ptr noundef %40, i32 noundef 5632, i32 noundef 20, ptr noundef null, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %41, ptr noundef nonnull %11, ptr noundef nonnull @.str.17, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #5
  call void @uiButSetFunc(ptr noundef %42, ptr noundef nonnull @validate_fmodifier_cb, ptr noundef %3, ptr noundef null) #5
  %43 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %44 = call ptr @uiDefButR(ptr noundef %40, i32 noundef 1536, i32 noundef 20, ptr noundef null, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %43, ptr noundef nonnull %11, ptr noundef nonnull @.str.18, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #5
  call void @uiBlockEndAlign(ptr noundef %40) #5
  %45 = getelementptr inbounds %struct.FMod_Generator, ptr %35, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !49
  switch i32 %46, label %180 [
    i32 0, label %47
    i32 1, label %121
  ]

47:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #5
  %48 = call ptr @uiLayoutRow(ptr noundef %30, i32 noundef 0) #5
  %49 = call ptr @uiLayoutGetBlock(ptr noundef %48) #5
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %51 = sitofp i16 %50 to float
  %52 = fmul float %51, 5.000000e-01
  %53 = fptosi float %52 to i32
  %54 = getelementptr inbounds %struct.FMod_Generator, ptr %35, i64 0, i32 2
  %55 = call ptr @uiDefButI(ptr noundef %49, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.19, i32 noundef %53, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %50, ptr noundef nonnull %54, float noundef 1.000000e+00, float noundef 1.000000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.20) #5
  call void @uiButSetFunc(ptr noundef %55, ptr noundef nonnull @validate_fmodifier_cb, ptr noundef %3, ptr noundef null) #5
  %56 = getelementptr inbounds %struct.FMod_Generator, ptr %35, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !51
  %58 = icmp ugt i32 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %12, i64 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %57) #5
  br label %61

61:                                               ; preds = %47, %59
  %62 = phi ptr [ %12, %59 ], [ @.str.22, %47 ]
  %63 = call i32 @UI_GetStringWidth(ptr noundef nonnull %62) #5
  %64 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %65 = call ptr @uiLayoutRow(ptr noundef %30, i32 noundef 1) #5
  %66 = call ptr @uiLayoutGetBlock(ptr noundef %65) #5
  %67 = load ptr, ptr %35, align 8, !tbaa !52
  %68 = load i32, ptr %56, align 8, !tbaa !51
  %69 = icmp ne i32 %68, 0
  %70 = icmp ne ptr %67, null
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %120

72:                                               ; preds = %61
  %73 = sitofp i16 %64 to double
  %74 = sitofp i32 %63 to double
  %75 = call double @llvm.fmuladd.f64(double %73, double 5.000000e-01, double %74)
  %76 = fptosi double %75 to i32
  %77 = sdiv i16 %39, 2
  %78 = trunc i32 %76 to i16
  br label %79

79:                                               ; preds = %72, %114
  %80 = phi i32 [ 0, %72 ], [ %116, %114 ]
  %81 = phi ptr [ %67, %72 ], [ %117, %114 ]
  %82 = phi ptr [ %66, %72 ], [ %115, %114 ]
  %83 = icmp eq i32 %80, 0
  %84 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %85 = shl i16 %84, 1
  %86 = select i1 %83, ptr @.str.24, ptr @.str.23
  %87 = call ptr @uiDefBut(ptr noundef %82, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull %86, i32 noundef 0, i32 noundef 0, i16 noundef signext %85, i16 noundef signext %84, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %88 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %89 = call ptr @uiDefButF(ptr noundef %82, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0, i16 noundef signext %77, i16 noundef signext %88, ptr noundef nonnull %81, float noundef -1.000000e+04, float noundef 1.000000e+04, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.25) #5
  br i1 %83, label %90, label %92

90:                                               ; preds = %79
  %91 = call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef nonnull @.str.1, i64 noundef 32) #5
  br label %98

92:                                               ; preds = %79
  %93 = icmp eq i32 %80, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef nonnull @.str.22, i64 noundef 32) #5
  br label %98

96:                                               ; preds = %92
  %97 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %12, i64 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %80) #5
  br label %98

98:                                               ; preds = %96, %94, %90
  %99 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %100 = call ptr @uiDefBut(ptr noundef %82, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull %12, i32 noundef 0, i32 noundef 0, i16 noundef signext %78, i16 noundef signext %99, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.26) #5
  %101 = load i32, ptr %56, align 8, !tbaa !51
  %102 = add i32 %101, -1
  %103 = icmp ne i32 %80, %102
  %104 = icmp eq i32 %101, 2
  %105 = and i1 %83, %104
  %106 = or i1 %103, %105
  %107 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  br i1 %106, label %108, label %112

108:                                              ; preds = %98
  %109 = call ptr @uiDefBut(ptr noundef %82, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef 0, i16 noundef signext %107, i16 noundef signext %107, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %110 = call ptr @uiLayoutRow(ptr noundef %30, i32 noundef 1) #5
  %111 = call ptr @uiLayoutGetBlock(ptr noundef %110) #5
  br label %114

112:                                              ; preds = %98
  %113 = call ptr @uiDefBut(ptr noundef %82, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef 0, i16 noundef signext %107, i16 noundef signext %107, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  br label %114

114:                                              ; preds = %112, %108
  %115 = phi ptr [ %111, %108 ], [ %82, %112 ]
  %116 = add nuw i32 %80, 1
  %117 = getelementptr inbounds float, ptr %81, i64 1
  %118 = load i32, ptr %56, align 8, !tbaa !51
  %119 = icmp ult i32 %116, %118
  br i1 %119, label %79, label %120, !llvm.loop !53

120:                                              ; preds = %114, %61
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #5
  br label %180

121:                                              ; preds = %33
  %122 = call ptr @uiLayoutRow(ptr noundef %30, i32 noundef 0) #5
  %123 = call ptr @uiLayoutGetBlock(ptr noundef %122) #5
  %124 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %125 = sitofp i16 %124 to double
  %126 = call double @llvm.fmuladd.f64(double %125, double -1.500000e+00, double 3.140000e+02)
  %127 = fptosi double %126 to i16
  %128 = getelementptr inbounds %struct.FMod_Generator, ptr %35, i64 0, i32 2
  %129 = call ptr @uiDefButI(ptr noundef %123, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0, i16 noundef signext %127, i16 noundef signext %124, ptr noundef nonnull %128, float noundef 1.000000e+00, float noundef 1.000000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.20) #5
  call void @uiButSetFunc(ptr noundef %129, ptr noundef nonnull @validate_fmodifier_cb, ptr noundef %3, ptr noundef null) #5
  %130 = call ptr @uiLayoutRow(ptr noundef %30, i32 noundef 1) #5
  %131 = call ptr @uiLayoutGetBlock(ptr noundef %130) #5
  %132 = load ptr, ptr %35, align 8, !tbaa !52
  %133 = load i32, ptr %128, align 4, !tbaa !56
  %134 = icmp ne i32 %133, 0
  %135 = icmp ne ptr %132, null
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %180

137:                                              ; preds = %121, %174
  %138 = phi i32 [ %176, %174 ], [ 0, %121 ]
  %139 = phi ptr [ %177, %174 ], [ %132, %121 ]
  %140 = phi ptr [ %175, %174 ], [ %131, %121 ]
  %141 = icmp eq i32 %138, 0
  %142 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %143 = sitofp i16 %142 to double
  %144 = fmul double %143, 2.500000e+00
  %145 = fptosi double %144 to i16
  %146 = select i1 %141, ptr @.str.24, ptr @.str.23
  %147 = call ptr @uiDefBut(ptr noundef %140, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull %146, i32 noundef 0, i32 noundef 0, i16 noundef signext %145, i16 noundef signext %142, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %148 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %149 = call ptr @uiDefBut(ptr noundef %140, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef 0, i16 noundef signext %148, i16 noundef signext %148, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %150 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %151 = mul i16 %150, 5
  %152 = call ptr @uiDefButF(ptr noundef %140, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0, i16 noundef signext %151, i16 noundef signext %150, ptr noundef nonnull %139, float noundef -1.000000e+04, float noundef 1.000000e+04, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.30) #5
  %153 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %154 = shl i16 %153, 1
  %155 = call ptr @uiDefBut(ptr noundef %140, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0, i16 noundef signext %154, i16 noundef signext %153, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %156 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %157 = mul i16 %156, 5
  %158 = getelementptr inbounds float, ptr %139, i64 1
  %159 = call ptr @uiDefButF(ptr noundef %140, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0, i16 noundef signext %157, i16 noundef signext %156, ptr noundef nonnull %158, float noundef -1.000000e+04, float noundef 1.000000e+04, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.32) #5
  %160 = load i32, ptr %128, align 4, !tbaa !56
  %161 = add nsw i32 %160, -1
  %162 = icmp ne i32 %138, %161
  %163 = icmp eq i32 %160, 2
  %164 = and i1 %141, %163
  %165 = or i1 %162, %164
  %166 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %167 = shl i16 %166, 1
  br i1 %165, label %168, label %172

168:                                              ; preds = %137
  %169 = call ptr @uiDefBut(ptr noundef %140, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, i16 noundef signext %167, i16 noundef signext %166, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %170 = call ptr @uiLayoutRow(ptr noundef %30, i32 noundef 1) #5
  %171 = call ptr @uiLayoutGetBlock(ptr noundef %170) #5
  br label %174

172:                                              ; preds = %137
  %173 = call ptr @uiDefBut(ptr noundef %140, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 0, i16 noundef signext %167, i16 noundef signext %166, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  br label %174

174:                                              ; preds = %172, %168
  %175 = phi ptr [ %171, %168 ], [ %140, %172 ]
  %176 = add nuw i32 %138, 1
  %177 = getelementptr inbounds float, ptr %139, i64 2
  %178 = load i32, ptr %128, align 4, !tbaa !56
  %179 = icmp ult i32 %176, %178
  br i1 %179, label %137, label %180, !llvm.loop !57

180:                                              ; preds = %174, %121, %33, %120
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #5
  br label %261

181:                                              ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #5
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierFunctionGenerator, ptr noundef %3, ptr noundef nonnull %10) #5
  %182 = call ptr @uiLayoutColumn(ptr noundef %30, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %182, ptr noundef nonnull %10, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %182, ptr noundef nonnull %10, ptr noundef nonnull @.str.18, i32 noundef 8, ptr noundef null, i32 noundef 0) #5
  %183 = call ptr @uiLayoutColumn(ptr noundef %30, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %183, ptr noundef nonnull %10, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %183, ptr noundef nonnull %10, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %183, ptr noundef nonnull %10, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %183, ptr noundef nonnull %10, ptr noundef nonnull @.str.39, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #5
  br label %261

184:                                              ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #5
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierCycles, ptr noundef %3, ptr noundef nonnull %9) #5
  %185 = call ptr @uiLayoutSplit(ptr noundef %30, float noundef 5.000000e-01, i32 noundef 0) #5
  %186 = call ptr @uiLayoutColumn(ptr noundef %185, i32 noundef 1) #5
  call void @uiItemL(ptr noundef %186, ptr noundef nonnull @.str.40, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %186, ptr noundef nonnull %9, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %186, ptr noundef nonnull %9, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %187 = call ptr @uiLayoutColumn(ptr noundef %185, i32 noundef 1) #5
  call void @uiItemL(ptr noundef %187, ptr noundef nonnull @.str.43, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %187, ptr noundef nonnull %9, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %187, ptr noundef nonnull %9, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #5
  br label %261

188:                                              ; preds = %29
  %189 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #5
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierEnvelope, ptr noundef %3, ptr noundef nonnull %8) #5
  %191 = call ptr @uiLayoutColumn(ptr noundef %30, i32 noundef 1) #5
  call void @uiItemL(ptr noundef %191, ptr noundef nonnull @.str.46, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %191, ptr noundef nonnull %8, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %192 = call ptr @uiLayoutRow(ptr noundef %191, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %192, ptr noundef nonnull %8, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.49, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %192, ptr noundef nonnull %8, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef nonnull @.str.51, i32 noundef 0) #5
  %193 = call ptr @uiLayoutRow(ptr noundef %30, i32 noundef 0) #5
  %194 = call ptr @uiLayoutGetBlock(ptr noundef %193) #5
  %195 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %196 = sitofp i16 %195 to double
  %197 = fmul double %196, 7.500000e+00
  %198 = fptosi double %197 to i16
  %199 = call ptr @uiDefBut(ptr noundef %194, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef 0, i16 noundef signext %198, i16 noundef signext %195, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %200 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %201 = sitofp i16 %200 to double
  %202 = fmul double %201, 7.500000e+00
  %203 = fptosi double %202 to i16
  %204 = call ptr @uiDefBut(ptr noundef %194, i32 noundef 512, i32 noundef 20, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 0, i16 noundef signext %203, i16 noundef signext %200, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.54) #5
  call void @uiButSetFunc(ptr noundef %204, ptr noundef nonnull @fmod_envelope_addpoint_cb, ptr noundef %190, ptr noundef null) #5
  %205 = getelementptr inbounds %struct.FMod_Envelope, ptr %190, i64 0, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !58
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %239

208:                                              ; preds = %188
  %209 = load ptr, ptr %190, align 8, !tbaa !60
  br label %210

210:                                              ; preds = %208, %210
  %211 = phi i64 [ 0, %208 ], [ %234, %210 ]
  %212 = phi ptr [ %209, %208 ], [ %235, %210 ]
  %213 = call ptr @uiLayoutRow(ptr noundef %30, i32 noundef 1) #5
  %214 = call ptr @uiLayoutGetBlock(ptr noundef %213) #5
  call void @uiBlockBeginAlign(ptr noundef %214) #5
  %215 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %216 = sitofp i16 %215 to double
  %217 = fmul double %216, 4.500000e+00
  %218 = fptosi double %217 to i16
  %219 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %212, i64 0, i32 2
  %220 = call ptr @uiDefButF(ptr noundef %214, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef 0, i16 noundef signext %218, i16 noundef signext %215, ptr noundef nonnull %219, float noundef -3.000000e+05, float noundef 3.000000e+05, float noundef 1.000000e+01, float noundef 1.000000e+00, ptr noundef nonnull @.str.56) #5
  call void @uiButSetFunc(ptr noundef %220, ptr noundef nonnull @validate_fmodifier_cb, ptr noundef %3, ptr noundef null) #5
  %221 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %222 = mul i16 %221, 5
  %223 = call ptr @uiDefButF(ptr noundef %214, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef 0, i16 noundef signext %222, i16 noundef signext %221, ptr noundef %212, float noundef -1.000000e+04, float noundef 1.000000e+04, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.58) #5
  %224 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %225 = mul i16 %224, 5
  %226 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %212, i64 0, i32 1
  %227 = call ptr @uiDefButF(ptr noundef %214, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.59, i32 noundef 0, i32 noundef 0, i16 noundef signext %225, i16 noundef signext %224, ptr noundef nonnull %226, float noundef -1.000000e+04, float noundef 1.000000e+04, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.60) #5
  %228 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %229 = sitofp i16 %228 to double
  %230 = fmul double %229, 9.000000e-01
  %231 = fptosi double %230 to i16
  %232 = call ptr @uiDefIconBut(ptr noundef %214, i32 noundef 512, i32 noundef 20, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %231, i16 noundef signext %228, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.61) #5
  %233 = inttoptr i64 %211 to ptr
  call void @uiButSetFunc(ptr noundef %232, ptr noundef nonnull @fmod_envelope_deletepoint_cb, ptr noundef nonnull %190, ptr noundef %233) #5
  call void @uiBlockBeginAlign(ptr noundef %214) #5
  %234 = add nuw nsw i64 %211, 1
  %235 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %212, i64 1
  %236 = load i32, ptr %205, align 8, !tbaa !58
  %237 = sext i32 %236 to i64
  %238 = icmp slt i64 %234, %237
  br i1 %238, label %210, label %239, !llvm.loop !61

239:                                              ; preds = %210, %188
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #5
  br label %261

240:                                              ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #5
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierLimits, ptr noundef %3, ptr noundef nonnull %7) #5
  %241 = call ptr @uiLayoutSplit(ptr noundef %30, float noundef 5.000000e-01, i32 noundef 0) #5
  %242 = call ptr @uiLayoutColumn(ptr noundef %241, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %242, ptr noundef nonnull %7, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %242, ptr noundef nonnull %7, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %243 = call ptr @uiLayoutColumn(ptr noundef %241, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %243, ptr noundef nonnull %7, ptr noundef nonnull @.str.65, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %243, ptr noundef nonnull %7, ptr noundef nonnull @.str.66, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %244 = call ptr @uiLayoutSplit(ptr noundef %30, float noundef 5.000000e-01, i32 noundef 0) #5
  %245 = call ptr @uiLayoutColumn(ptr noundef %244, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %245, ptr noundef nonnull %7, ptr noundef nonnull @.str.67, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %245, ptr noundef nonnull %7, ptr noundef nonnull @.str.68, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %246 = call ptr @uiLayoutColumn(ptr noundef %244, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %246, ptr noundef nonnull %7, ptr noundef nonnull @.str.69, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %246, ptr noundef nonnull %7, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #5
  br label %261

247:                                              ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #5
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierNoise, ptr noundef %3, ptr noundef nonnull %6) #5
  call void @uiItemR(ptr noundef %30, ptr noundef nonnull %6, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %248 = call ptr @uiLayoutSplit(ptr noundef %30, float noundef 5.000000e-01, i32 noundef 0) #5
  %249 = call ptr @uiLayoutColumn(ptr noundef %248, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %249, ptr noundef nonnull %6, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %249, ptr noundef nonnull %6, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %249, ptr noundef nonnull %6, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %250 = call ptr @uiLayoutColumn(ptr noundef %248, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %250, ptr noundef nonnull %6, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %250, ptr noundef nonnull %6, ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #5
  br label %261

251:                                              ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #5
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierStepped, ptr noundef %3, ptr noundef nonnull %5) #5
  %252 = call ptr @uiLayoutColumn(ptr noundef %30, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %252, ptr noundef nonnull %5, ptr noundef nonnull @.str.77, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %252, ptr noundef nonnull %5, ptr noundef nonnull @.str.78, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %253 = call ptr @uiLayoutColumn(ptr noundef %30, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %253, ptr noundef nonnull %5, ptr noundef nonnull @.str.79, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %254 = call ptr @uiLayoutColumn(ptr noundef %253, i32 noundef 1) #5
  %255 = call i32 @RNA_boolean_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.79) #5
  %256 = trunc i32 %255 to i8
  call void @uiLayoutSetActive(ptr noundef %254, i8 noundef zeroext %256) #5
  call void @uiItemR(ptr noundef %254, ptr noundef nonnull %5, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %257 = call ptr @uiLayoutColumn(ptr noundef %30, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %257, ptr noundef nonnull %5, ptr noundef nonnull @.str.80, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %258 = call ptr @uiLayoutColumn(ptr noundef %257, i32 noundef 1) #5
  %259 = call i32 @RNA_boolean_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.80) #5
  %260 = trunc i32 %259 to i8
  call void @uiLayoutSetActive(ptr noundef %258, i8 noundef zeroext %260) #5
  call void @uiItemR(ptr noundef %258, ptr noundef nonnull %5, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #5
  br label %261

261:                                              ; preds = %29, %251, %247, %240, %239, %184, %181, %180
  %262 = call ptr @uiLayoutBox(ptr noundef %0) #5
  %263 = call ptr @uiLayoutColumn(ptr noundef %262, i32 noundef 1) #5
  %264 = call ptr @uiLayoutRow(ptr noundef %263, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %264, ptr noundef nonnull %13, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %265 = load i16, ptr %25, align 2, !tbaa !45
  %266 = and i16 %265, 16
  %267 = icmp eq i16 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %261
  %269 = call ptr @uiLayoutRow(ptr noundef %263, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %269, ptr noundef nonnull %13, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %269, ptr noundef nonnull %13, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef 0) #5
  %270 = call ptr @uiLayoutRow(ptr noundef %263, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %270, ptr noundef nonnull %13, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %270, ptr noundef nonnull %13, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef 0) #5
  br label %271

271:                                              ; preds = %268, %261
  %272 = call ptr @uiLayoutColumn(ptr noundef %262, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %272, ptr noundef nonnull %13, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %273 = load i16, ptr %25, align 2, !tbaa !45
  %274 = and i16 %273, 32
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %271
  call void @uiItemR(ptr noundef %272, ptr noundef nonnull %13, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  br label %277

277:                                              ; preds = %271, %276, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @fmodifier_get_typeinfo(ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutBox(ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @delete_fmodifier_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call zeroext i8 @remove_fmodifier(ptr noundef %1, ptr noundef %2) #5
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.5) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #5
  ret void
}

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @free_fmodifiers_copybuf() local_unnamed_addr #0 {
  tail call void @free_fmodifiers(ptr noundef nonnull @fmodifier_copypaste_buf) #5
  ret void
}

declare void @free_fmodifiers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ANIM_fmodifiers_copy_to_buf(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @find_active_fmodifier(ptr noundef nonnull %0) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @copy_fmodifier(ptr noundef nonnull %10) #5
  tail call void @BLI_addtail(ptr noundef nonnull @fmodifier_copypaste_buf, ptr noundef %13) #5
  br label %15

14:                                               ; preds = %7
  tail call void @copy_fmodifiers(ptr noundef nonnull @fmodifier_copypaste_buf, ptr noundef nonnull %0) #5
  br label %15

15:                                               ; preds = %14, %9, %12, %2, %4
  %16 = phi i8 [ 0, %4 ], [ 0, %2 ], [ 1, %14 ], [ 1, %12 ], [ 0, %9 ]
  ret i8 %16
}

declare ptr @find_active_fmodifier(ptr noundef) local_unnamed_addr #2

declare ptr @copy_fmodifier(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_fmodifiers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ANIM_fmodifiers_paste_from_buf(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @free_fmodifiers(ptr noundef nonnull %0) #5
  br label %7

7:                                                ; preds = %6, %4
  %8 = load ptr, ptr @fmodifier_copypaste_buf, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %16, %10 ], [ %8, %7 ]
  %12 = tail call ptr @copy_fmodifier(ptr noundef nonnull %11) #5
  %13 = getelementptr inbounds %struct.FModifier, ptr %12, i64 0, i32 5
  %14 = load i16, ptr %13, align 2, !tbaa !45
  %15 = and i16 %14, -5
  store i16 %15, ptr %13, align 2, !tbaa !45
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %12) #5
  %16 = load ptr, ptr %11, align 8, !tbaa !63
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !64

18:                                               ; preds = %10, %7, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 1, %10 ]
  ret i8 %19
}

declare zeroext i8 @remove_fmodifier(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @validate_fmodifier_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @fmodifier_get_typeinfo(ptr noundef %1) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %4, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %1) #5
  br label %11

11:                                               ; preds = %10, %6, %3
  ret void
}

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButI(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @fmod_envelope_addpoint_cb(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca i8, align 1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = sitofp i32 %7 to float
  %9 = load ptr, ptr %1, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  %12 = getelementptr inbounds %struct.FMod_Envelope, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !58
  %14 = call i32 @BKE_fcm_envelope_find_index(ptr noundef nonnull %9, float noundef %8, i32 noundef %13, ptr noundef nonnull %4) #5
  %15 = load i8, ptr %4, align 1, !tbaa !88
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %11
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %19 = load i32, ptr %12, align 8, !tbaa !58
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = call ptr %18(i64 noundef %22, ptr noundef nonnull @.str.62) #5
  %24 = icmp sgt i32 %14, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load ptr, ptr %1, align 8, !tbaa !60
  %27 = zext nneg i32 %14 to i64
  %28 = shl nuw nsw i64 %27, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %23, ptr align 4 %26, i64 %28, i1 false)
  br label %29

29:                                               ; preds = %25, %17
  %30 = sext i32 %14 to i64
  %31 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %23, i64 %30
  store float -1.000000e+00, ptr %31, align 4, !tbaa.struct !89
  %32 = getelementptr inbounds i8, ptr %31, i64 4
  store float 1.000000e+00, ptr %32, align 4, !tbaa.struct !92
  %33 = getelementptr inbounds i8, ptr %31, i64 8
  store float %8, ptr %33, align 4, !tbaa.struct !93
  %34 = getelementptr inbounds i8, ptr %31, i64 12
  store i16 0, ptr %34, align 4, !tbaa.struct !94
  %35 = getelementptr inbounds i8, ptr %31, i64 14
  store i16 0, ptr %35, align 2, !tbaa.struct !95
  %36 = load i32, ptr %12, align 8, !tbaa !58
  %37 = icmp slt i32 %14, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %31, i64 1
  %40 = load ptr, ptr %1, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %40, i64 %30
  %42 = sub nsw i32 %36, %14
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %39, ptr align 4 %41, i64 %44, i1 false)
  br label %45

45:                                               ; preds = %38, %29
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  %47 = load ptr, ptr %1, align 8, !tbaa !60
  call void %46(ptr noundef %47) #5
  store ptr %23, ptr %1, align 8, !tbaa !60
  %48 = load i32, ptr %12, align 8, !tbaa !58
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %12, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  br label %59

50:                                               ; preds = %3
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %52 = tail call ptr %51(i64 noundef 16, ptr noundef nonnull @.str.62) #5
  store ptr %52, ptr %1, align 8, !tbaa !60
  store float -1.000000e+00, ptr %52, align 4, !tbaa.struct !89
  %53 = getelementptr inbounds i8, ptr %52, i64 4
  store float 1.000000e+00, ptr %53, align 4, !tbaa.struct !92
  %54 = getelementptr inbounds i8, ptr %52, i64 8
  store float %8, ptr %54, align 4, !tbaa.struct !93
  %55 = getelementptr inbounds i8, ptr %52, i64 12
  store i16 0, ptr %55, align 4, !tbaa.struct !94
  %56 = getelementptr inbounds i8, ptr %52, i64 14
  store i16 0, ptr %56, align 2, !tbaa.struct !95
  %57 = getelementptr inbounds %struct.FMod_Envelope, ptr %1, i64 0, i32 1
  store i32 1, ptr %57, align 8, !tbaa !58
  br label %59

58:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  br label %59

59:                                               ; preds = %45, %50, %58
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fmod_envelope_deletepoint_cb(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.FMod_Envelope, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = ptrtoint ptr %2 to i64
  %9 = trunc i64 %8 to i32
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %11 = add nsw i32 %5, -1
  %12 = zext nneg i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 4
  %14 = tail call ptr %10(i64 noundef %13, ptr noundef nonnull @.str.62) #5
  %15 = load ptr, ptr %1, align 8, !tbaa !60
  %16 = shl i64 %8, 32
  %17 = ashr exact i64 %16, 32
  %18 = ashr exact i64 %16, 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %15, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %14, i64 %17
  %20 = load ptr, ptr %1, align 8, !tbaa !60
  %21 = add i64 %16, 4294967296
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %20, i64 %22
  %24 = load i32, ptr %4, align 8, !tbaa !58
  %25 = xor i32 %9, -1
  %26 = add i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %23, i64 %28, i1 false)
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  %30 = load ptr, ptr %1, align 8, !tbaa !60
  tail call void %29(ptr noundef %30) #5
  store ptr %14, ptr %1, align 8, !tbaa !60
  %31 = load i32, ptr %4, align 8, !tbaa !58
  %32 = add nsw i32 %31, -1
  br label %38

33:                                               ; preds = %3
  %34 = load ptr, ptr %1, align 8, !tbaa !60
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %37(ptr noundef nonnull %34) #5
  store ptr null, ptr %1, align 8, !tbaa !60
  br label %38

38:                                               ; preds = %33, %36, %7
  %39 = phi i32 [ %32, %7 ], [ 0, %36 ], [ 0, %33 ]
  store i32 %39, ptr %4, align 8, !tbaa !58
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_fcm_envelope_find_index(ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !39, i64 8948}
!35 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !42, i64 8956, !42, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !42, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !43, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !42, i64 10904, !42, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !44, i64 10928}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"ListBase", !41, i64 0, !41, i64 8}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"float", !37, i64 0}
!43 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!44 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !39, i64 24, !37, i64 26}
!45 = !{!46, !39, i64 90}
!46 = !{!"FModifier", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !39, i64 88, !39, i64 90, !42, i64 92, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108}
!47 = !{!46, !39, i64 88}
!48 = !{!46, !41, i64 16}
!49 = !{!50, !36, i64 16}
!50 = !{!"FMod_Generator", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20}
!51 = !{!50, !36, i64 8}
!52 = !{!50, !41, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!50, !36, i64 12}
!57 = distinct !{!57, !54, !55}
!58 = !{!59, !36, i64 8}
!59 = !{!"FMod_Envelope", !41, i64 0, !36, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!60 = !{!59, !41, i64 0}
!61 = distinct !{!61, !54, !55}
!62 = !{!40, !41, i64 0}
!63 = !{!41, !41, i64 0}
!64 = distinct !{!64, !54, !55}
!65 = !{!66, !41, i64 160}
!66 = !{!"FModifierTypeInfo", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192}
!67 = !{!68, !36, i64 680}
!68 = !{!"Scene", !69, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !40, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !70, i64 280, !79, i64 4264, !40, i64 4296, !40, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !40, i64 4384, !80, i64 4400, !81, i64 4416, !84, i64 4600, !41, i64 4608, !85, i64 4616, !41, i64 4640, !86, i64 4648, !86, i64 4656, !72, i64 4664, !73, i64 4824, !87, i64 4888, !41, i64 4952}
!69 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!70 = !{!"RenderData", !71, i64 0, !41, i64 248, !41, i64 256, !74, i64 264, !75, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !42, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !76, i64 544, !76, i64 560, !77, i64 576, !40, i64 592, !39, i64 608, !39, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !36, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !42, i64 660, !42, i64 664, !39, i64 668, !39, i64 670, !42, i64 672, !42, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !42, i64 2528, !42, i64 2532, !39, i64 2536, !39, i64 2538, !42, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !42, i64 2560, !42, i64 2564, !41, i64 2568, !36, i64 2576, !42, i64 2580, !37, i64 2584, !78, i64 2616, !36, i64 3976, !36, i64 3980}
!71 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !42, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !72, i64 24, !73, i64 184}
!72 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !42, i64 136, !42, i64 140, !41, i64 144, !41, i64 152}
!73 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!74 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!75 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !42, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!76 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!77 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!78 = !{!"BakeData", !71, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !42, i64 1280, !42, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!79 = !{!"AudioData", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !42, i64 24, !42, i64 28}
!80 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!81 = !{!"GameData", !80, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !82, i64 40, !39, i64 64, !39, i64 66, !42, i64 68, !83, i64 72, !42, i64 128, !42, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!82 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !42, i64 8, !42, i64 12, !41, i64 16}
!83 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !36, i64 40, !42, i64 44, !42, i64 48, !39, i64 52, !39, i64 54}
!84 = !{!"UnitSettings", !42, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!85 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!86 = !{!"long", !37, i64 0}
!87 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!88 = !{!37, !37, i64 0}
!89 = !{i64 0, i64 4, !90, i64 4, i64 4, !90, i64 8, i64 4, !90, i64 12, i64 2, !91, i64 14, i64 2, !91}
!90 = !{!42, !42, i64 0}
!91 = !{!39, !39, i64 0}
!92 = !{i64 0, i64 4, !90, i64 4, i64 4, !90, i64 8, i64 2, !91, i64 10, i64 2, !91}
!93 = !{i64 0, i64 4, !90, i64 4, i64 2, !91, i64 6, i64 2, !91}
!94 = !{i64 0, i64 2, !91, i64 2, i64 2, !91}
!95 = !{i64 0, i64 2, !91}
