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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_uiTemplate_fmodifier_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @fmodifier_get_typeinfo(ptr noundef %3) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifier, ptr noundef %3, ptr noundef nonnull %5) #5
  %7 = call ptr @uiLayoutBox(ptr noundef %0) #5
  %8 = call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 0) #5
  %9 = call ptr @uiLayoutGetBlock(ptr noundef %8) #5
  %10 = call ptr @uiLayoutRow(ptr noundef %8, i32 noundef 1) #5
  call void @uiLayoutSetAlignment(ptr noundef %10, i8 noundef zeroext 1) #5
  call void @uiBlockSetEmboss(ptr noundef %9, i8 noundef zeroext 1) #5
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull @.str.2, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  %11 = icmp eq ptr %6, null
  %12 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %6, i64 0, i32 4
  %13 = select i1 %11, ptr @.str.3, ptr %12
  call void @uiItemL(ptr noundef %10, ptr noundef nonnull %13, i32 noundef 0) #5
  %14 = call ptr @uiLayoutRow(ptr noundef %8, i32 noundef 1) #5
  call void @uiLayoutSetAlignment(ptr noundef %14, i8 noundef zeroext 3) #5
  call void @uiItemR(ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull @.str.4, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  call void @uiBlockSetEmboss(ptr noundef %9, i8 noundef zeroext 1) #5
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %16 = call ptr @uiDefIconBut(ptr noundef %9, i32 noundef 512, i32 noundef 1, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %15, i16 noundef signext %15, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.5) #5
  call void @uiButSetFunc(ptr noundef %16, ptr noundef nonnull @delete_fmodifier_cb, ptr noundef %2, ptr noundef %3) #5
  call void @uiBlockSetEmboss(ptr noundef %9, i8 noundef zeroext 0) #5
  %17 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 5
  %18 = load i16, ptr %17, align 2, !tbaa !45
  %19 = and i16 %18, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %4
  %22 = call ptr @uiLayoutBox(ptr noundef %0) #5
  %23 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !47
  switch i16 %24, label %32 [
    i16 1, label %25
    i16 2, label %26
    i16 4, label %27
    i16 3, label %28
    i16 8, label %29
    i16 5, label %30
    i16 9, label %31
  ]

25:                                               ; preds = %21
  call fastcc void @draw_modifier__generator(ptr noundef %22, ptr noundef %1, ptr noundef nonnull %3) #7
  br label %32

26:                                               ; preds = %21
  call fastcc void @draw_modifier__fn_generator(ptr noundef %22, ptr noundef %1, ptr noundef nonnull %3) #7
  br label %32

27:                                               ; preds = %21
  call fastcc void @draw_modifier__cycles(ptr noundef %22, ptr noundef %1, ptr noundef nonnull %3) #7
  br label %32

28:                                               ; preds = %21
  call fastcc void @draw_modifier__envelope(ptr noundef %22, ptr noundef %1, ptr noundef nonnull %3) #7
  br label %32

29:                                               ; preds = %21
  call fastcc void @draw_modifier__limits(ptr noundef %22, ptr noundef %1, ptr noundef nonnull %3) #7
  br label %32

30:                                               ; preds = %21
  call fastcc void @draw_modifier__noise(ptr noundef %22, ptr noundef %1, ptr noundef nonnull %3) #7
  br label %32

31:                                               ; preds = %21
  call fastcc void @draw_modifier__stepped(ptr noundef %22, ptr noundef %1, ptr noundef nonnull %3) #7
  br label %32

32:                                               ; preds = %21, %31, %30, %29, %28, %27, %26, %25
  %33 = call ptr @uiLayoutBox(ptr noundef %0) #5
  %34 = call ptr @uiLayoutColumn(ptr noundef %33, i32 noundef 1) #5
  %35 = call ptr @uiLayoutRow(ptr noundef %34, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %35, ptr noundef nonnull %5, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %36 = load i16, ptr %17, align 2, !tbaa !45
  %37 = and i16 %36, 16
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = call ptr @uiLayoutRow(ptr noundef %34, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %40, ptr noundef nonnull %5, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %40, ptr noundef nonnull %5, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef 0) #5
  %41 = call ptr @uiLayoutRow(ptr noundef %34, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %41, ptr noundef nonnull %5, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %41, ptr noundef nonnull %5, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef 0) #5
  br label %42

42:                                               ; preds = %39, %32
  %43 = call ptr @uiLayoutColumn(ptr noundef %33, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %43, ptr noundef nonnull %5, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %44 = load i16, ptr %17, align 2, !tbaa !45
  %45 = and i16 %44, 32
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  call void @uiItemR(ptr noundef %43, ptr noundef nonnull %5, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  br label %48

48:                                               ; preds = %42, %47, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @fmodifier_get_typeinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutBox(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @delete_fmodifier_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !48 {
  %4 = tail call zeroext i8 @remove_fmodifier(ptr noundef %1, ptr noundef %2) #5
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.5) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_modifier__generator(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !49 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [32 x i8], align 16
  %6 = getelementptr inbounds %struct.FModifier, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %9 = sitofp i16 %8 to double
  %10 = tail call double @llvm.fmuladd.f64(double %9, double -1.500000e+00, double 3.140000e+02)
  %11 = fptosi double %10 to i16
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierFunctionGenerator, ptr noundef %2, ptr noundef nonnull %4) #5
  %12 = call ptr @uiLayoutGetBlock(ptr noundef %0) #5
  call void @uiBlockBeginAlign(ptr noundef %12) #5
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %14 = call ptr @uiDefButR(ptr noundef %12, i32 noundef 5632, i32 noundef 20, ptr noundef null, i32 noundef 0, i32 noundef 0, i16 noundef signext %11, i16 noundef signext %13, ptr noundef nonnull %4, ptr noundef nonnull @.str.17, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #5
  call void @uiButSetFunc(ptr noundef %14, ptr noundef nonnull @validate_fmodifier_cb, ptr noundef %2, ptr noundef null) #5
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %16 = call ptr @uiDefButR(ptr noundef %12, i32 noundef 1536, i32 noundef 20, ptr noundef null, i32 noundef 0, i32 noundef 0, i16 noundef signext %11, i16 noundef signext %15, ptr noundef nonnull %4, ptr noundef nonnull @.str.18, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #5
  call void @uiBlockEndAlign(ptr noundef %12) #5
  %17 = getelementptr inbounds %struct.FMod_Generator, ptr %7, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !51
  switch i32 %18, label %154 [
    i32 0, label %19
    i32 1, label %95
  ]

19:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  %20 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #5
  %21 = call ptr @uiLayoutGetBlock(ptr noundef %20) #5
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %23 = sitofp i16 %22 to float
  %24 = fmul float %23, 5.000000e-01
  %25 = fptosi float %24 to i32
  %26 = getelementptr inbounds %struct.FMod_Generator, ptr %7, i64 0, i32 2
  %27 = call ptr @uiDefButI(ptr noundef %21, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.19, i32 noundef %25, i32 noundef 0, i16 noundef signext %11, i16 noundef signext %22, ptr noundef nonnull %26, float noundef 1.000000e+00, float noundef 1.000000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.20) #5
  call void @uiButSetFunc(ptr noundef %27, ptr noundef nonnull @validate_fmodifier_cb, ptr noundef nonnull %2, ptr noundef null) #5
  %28 = getelementptr inbounds %struct.FMod_Generator, ptr %7, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !53
  %30 = icmp ugt i32 %29, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %29) #5
  br label %33

33:                                               ; preds = %19, %31
  %34 = phi ptr [ %5, %31 ], [ @.str.22, %19 ]
  %35 = call i32 @UI_GetStringWidth(ptr noundef nonnull %34) #5
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %37 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #5
  %38 = call ptr @uiLayoutGetBlock(ptr noundef %37) #5
  %39 = load ptr, ptr %7, align 8, !tbaa !54
  %40 = load i32, ptr %28, align 8, !tbaa !53
  %41 = icmp ne i32 %40, 0
  %42 = icmp ne ptr %39, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %94

44:                                               ; preds = %33
  %45 = sitofp i16 %36 to double
  %46 = sitofp i32 %35 to double
  %47 = call double @llvm.fmuladd.f64(double %45, double 5.000000e-01, double %46)
  %48 = fptosi double %47 to i32
  %49 = sdiv i16 %11, 2
  %50 = trunc i32 %48 to i16
  br label %51

51:                                               ; preds = %44, %88
  %52 = phi i32 [ 0, %44 ], [ %90, %88 ]
  %53 = phi ptr [ %39, %44 ], [ %91, %88 ]
  %54 = phi ptr [ %38, %44 ], [ %89, %88 ]
  %55 = icmp eq i32 %52, 0
  %56 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %57 = shl i16 %56, 1
  br i1 %55, label %58, label %63

58:                                               ; preds = %51
  %59 = call ptr @uiDefBut(ptr noundef %54, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0, i16 noundef signext %57, i16 noundef signext %56, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %61 = call ptr @uiDefButF(ptr noundef %54, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0, i16 noundef signext %49, i16 noundef signext %60, ptr noundef nonnull %53, float noundef -1.000000e+04, float noundef 1.000000e+04, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.25) #5
  %62 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, i64 noundef 32) #5
  br label %72

63:                                               ; preds = %51
  %64 = call ptr @uiDefBut(ptr noundef %54, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i16 noundef signext %57, i16 noundef signext %56, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %65 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %66 = call ptr @uiDefButF(ptr noundef %54, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0, i16 noundef signext %49, i16 noundef signext %65, ptr noundef nonnull %53, float noundef -1.000000e+04, float noundef 1.000000e+04, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.25) #5
  %67 = icmp eq i32 %52, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, i64 noundef 32) #5
  br label %72

70:                                               ; preds = %63
  %71 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %52) #5
  br label %72

72:                                               ; preds = %68, %70, %58
  %73 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %74 = call ptr @uiDefBut(ptr noundef %54, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i16 noundef signext %50, i16 noundef signext %73, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.26) #5
  %75 = load i32, ptr %28, align 8, !tbaa !53
  %76 = add i32 %75, -1
  %77 = icmp ne i32 %52, %76
  %78 = icmp eq i32 %75, 2
  %79 = and i1 %55, %78
  %80 = or i1 %77, %79
  %81 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  br i1 %80, label %82, label %86

82:                                               ; preds = %72
  %83 = call ptr @uiDefBut(ptr noundef %54, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef 0, i16 noundef signext %81, i16 noundef signext %81, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %84 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #5
  %85 = call ptr @uiLayoutGetBlock(ptr noundef %84) #5
  br label %88

86:                                               ; preds = %72
  %87 = call ptr @uiDefBut(ptr noundef %54, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef 0, i16 noundef signext %81, i16 noundef signext %81, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  br label %88

88:                                               ; preds = %82, %86
  %89 = phi ptr [ %85, %82 ], [ %54, %86 ]
  %90 = add nuw i32 %52, 1
  %91 = getelementptr inbounds float, ptr %53, i64 1
  %92 = load i32, ptr %28, align 8, !tbaa !53
  %93 = icmp ult i32 %90, %92
  br i1 %93, label %51, label %94, !llvm.loop !55

94:                                               ; preds = %88, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  br label %154

95:                                               ; preds = %3
  %96 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #5
  %97 = call ptr @uiLayoutGetBlock(ptr noundef %96) #5
  %98 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %99 = sitofp i16 %98 to double
  %100 = call double @llvm.fmuladd.f64(double %99, double -1.500000e+00, double 3.140000e+02)
  %101 = fptosi double %100 to i16
  %102 = getelementptr inbounds %struct.FMod_Generator, ptr %7, i64 0, i32 2
  %103 = call ptr @uiDefButI(ptr noundef %97, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0, i16 noundef signext %101, i16 noundef signext %98, ptr noundef nonnull %102, float noundef 1.000000e+00, float noundef 1.000000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.20) #5
  call void @uiButSetFunc(ptr noundef %103, ptr noundef nonnull @validate_fmodifier_cb, ptr noundef nonnull %2, ptr noundef null) #5
  %104 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #5
  %105 = call ptr @uiLayoutGetBlock(ptr noundef %104) #5
  %106 = load ptr, ptr %7, align 8, !tbaa !54
  %107 = load i32, ptr %102, align 4, !tbaa !57
  %108 = icmp ne i32 %107, 0
  %109 = icmp ne ptr %106, null
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %154

111:                                              ; preds = %95, %148
  %112 = phi i32 [ %150, %148 ], [ 0, %95 ]
  %113 = phi ptr [ %151, %148 ], [ %106, %95 ]
  %114 = phi ptr [ %149, %148 ], [ %105, %95 ]
  %115 = icmp eq i32 %112, 0
  %116 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %117 = sitofp i16 %116 to double
  %118 = fmul double %117, 2.500000e+00
  %119 = fptosi double %118 to i16
  %120 = select i1 %115, ptr @.str.24, ptr @.str.23
  %121 = call ptr @uiDefBut(ptr noundef %114, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull %120, i32 noundef 0, i32 noundef 0, i16 noundef signext %119, i16 noundef signext %116, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %122 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %123 = call ptr @uiDefBut(ptr noundef %114, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef 0, i16 noundef signext %122, i16 noundef signext %122, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %124 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %125 = mul i16 %124, 5
  %126 = call ptr @uiDefButF(ptr noundef %114, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0, i16 noundef signext %125, i16 noundef signext %124, ptr noundef nonnull %113, float noundef -1.000000e+04, float noundef 1.000000e+04, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.30) #5
  %127 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %128 = shl i16 %127, 1
  %129 = call ptr @uiDefBut(ptr noundef %114, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 0, i16 noundef signext %128, i16 noundef signext %127, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %130 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %131 = mul i16 %130, 5
  %132 = getelementptr inbounds float, ptr %113, i64 1
  %133 = call ptr @uiDefButF(ptr noundef %114, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0, i16 noundef signext %131, i16 noundef signext %130, ptr noundef nonnull %132, float noundef -1.000000e+04, float noundef 1.000000e+04, float noundef 1.000000e+01, float noundef 3.000000e+00, ptr noundef nonnull @.str.32) #5
  %134 = load i32, ptr %102, align 4, !tbaa !57
  %135 = add nsw i32 %134, -1
  %136 = icmp ne i32 %112, %135
  %137 = icmp eq i32 %134, 2
  %138 = and i1 %115, %137
  %139 = or i1 %136, %138
  %140 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %141 = shl i16 %140, 1
  br i1 %139, label %142, label %146

142:                                              ; preds = %111
  %143 = call ptr @uiDefBut(ptr noundef %114, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, i16 noundef signext %141, i16 noundef signext %140, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %144 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #5
  %145 = call ptr @uiLayoutGetBlock(ptr noundef %144) #5
  br label %148

146:                                              ; preds = %111
  %147 = call ptr @uiDefBut(ptr noundef %114, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 0, i16 noundef signext %141, i16 noundef signext %140, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  br label %148

148:                                              ; preds = %142, %146
  %149 = phi ptr [ %145, %142 ], [ %114, %146 ]
  %150 = add nuw i32 %112, 1
  %151 = getelementptr inbounds float, ptr %113, i64 2
  %152 = load i32, ptr %102, align 4, !tbaa !57
  %153 = icmp ult i32 %150, %152
  br i1 %153, label %111, label %154, !llvm.loop !58

154:                                              ; preds = %148, %95, %3, %94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_modifier__fn_generator(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !59 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierFunctionGenerator, ptr noundef %2, ptr noundef nonnull %4) #5
  %5 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.18, i32 noundef 8, ptr noundef null, i32 noundef 0) #5
  %6 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.39, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_modifier__cycles(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !60 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierCycles, ptr noundef %2, ptr noundef nonnull %4) #5
  %5 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 5.000000e-01, i32 noundef 0) #5
  %6 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #5
  call void @uiItemL(ptr noundef %6, ptr noundef nonnull @.str.40, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %7 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #5
  call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.43, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_modifier__envelope(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !61 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.FModifier, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierEnvelope, ptr noundef %2, ptr noundef nonnull %4) #5
  %7 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #5
  call void @uiItemL(ptr noundef %7, ptr noundef nonnull @.str.46, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %8 = call ptr @uiLayoutRow(ptr noundef %7, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.49, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef nonnull @.str.51, i32 noundef 0) #5
  %9 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #5
  %10 = call ptr @uiLayoutGetBlock(ptr noundef %9) #5
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %12 = sitofp i16 %11 to double
  %13 = fmul double %12, 7.500000e+00
  %14 = fptosi double %13 to i16
  %15 = call ptr @uiDefBut(ptr noundef %10, i32 noundef 5120, i32 noundef 1, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %11, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #5
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %17 = sitofp i16 %16 to double
  %18 = fmul double %17, 7.500000e+00
  %19 = fptosi double %18 to i16
  %20 = call ptr @uiDefBut(ptr noundef %10, i32 noundef 512, i32 noundef 20, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 0, i16 noundef signext %19, i16 noundef signext %16, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.54) #5
  call void @uiButSetFunc(ptr noundef %20, ptr noundef nonnull @fmod_envelope_addpoint_cb, ptr noundef %6, ptr noundef null) #5
  %21 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !62
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %3
  %25 = load ptr, ptr %6, align 8, !tbaa !64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %50, %26 ]
  %28 = phi ptr [ %25, %24 ], [ %51, %26 ]
  %29 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #5
  %30 = call ptr @uiLayoutGetBlock(ptr noundef %29) #5
  call void @uiBlockBeginAlign(ptr noundef %30) #5
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %32 = sitofp i16 %31 to double
  %33 = fmul double %32, 4.500000e+00
  %34 = fptosi double %33 to i16
  %35 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %28, i64 0, i32 2
  %36 = call ptr @uiDefButF(ptr noundef %30, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %31, ptr noundef nonnull %35, float noundef -3.000000e+05, float noundef 3.000000e+05, float noundef 1.000000e+01, float noundef 1.000000e+00, ptr noundef nonnull @.str.56) #5
  call void @uiButSetFunc(ptr noundef %36, ptr noundef nonnull @validate_fmodifier_cb, ptr noundef %2, ptr noundef null) #5
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %38 = mul i16 %37, 5
  %39 = call ptr @uiDefButF(ptr noundef %30, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef 0, i16 noundef signext %38, i16 noundef signext %37, ptr noundef %28, float noundef -1.000000e+04, float noundef 1.000000e+04, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.58) #5
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %41 = mul i16 %40, 5
  %42 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %28, i64 0, i32 1
  %43 = call ptr @uiDefButF(ptr noundef %30, i32 noundef 2560, i32 noundef 20, ptr noundef nonnull @.str.59, i32 noundef 0, i32 noundef 0, i16 noundef signext %41, i16 noundef signext %40, ptr noundef nonnull %42, float noundef -1.000000e+04, float noundef 1.000000e+04, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.60) #5
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %45 = sitofp i16 %44 to double
  %46 = fmul double %45, 9.000000e-01
  %47 = fptosi double %46 to i16
  %48 = call ptr @uiDefIconBut(ptr noundef %30, i32 noundef 512, i32 noundef 20, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %47, i16 noundef signext %44, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.61) #5
  %49 = inttoptr i64 %27 to ptr
  call void @uiButSetFunc(ptr noundef %48, ptr noundef nonnull @fmod_envelope_deletepoint_cb, ptr noundef nonnull %6, ptr noundef %49) #5
  call void @uiBlockBeginAlign(ptr noundef %30) #5
  %50 = add nuw nsw i64 %27, 1
  %51 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %28, i64 1
  %52 = load i32, ptr %21, align 8, !tbaa !62
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %26, label %55, !llvm.loop !65

55:                                               ; preds = %26, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_modifier__limits(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !66 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierLimits, ptr noundef %2, ptr noundef nonnull %4) #5
  %5 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 5.000000e-01, i32 noundef 0) #5
  %6 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %7 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull @.str.65, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull @.str.66, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %8 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 5.000000e-01, i32 noundef 0) #5
  %9 = call ptr @uiLayoutColumn(ptr noundef %8, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %9, ptr noundef nonnull %4, ptr noundef nonnull @.str.67, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %9, ptr noundef nonnull %4, ptr noundef nonnull @.str.68, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %10 = call ptr @uiLayoutColumn(ptr noundef %8, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.69, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_modifier__noise(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !67 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierNoise, ptr noundef %2, ptr noundef nonnull %4) #5
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %5 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 5.000000e-01, i32 noundef 0) #5
  %6 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %7 = call ptr @uiLayoutColumn(ptr noundef %5, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_modifier__stepped(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !68 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_FModifierStepped, ptr noundef %2, ptr noundef nonnull %4) #5
  %5 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.77, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @uiItemR(ptr noundef %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.78, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %6 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.79, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %7 = call ptr @uiLayoutColumn(ptr noundef %6, i32 noundef 1) #5
  %8 = call i32 @RNA_boolean_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.79) #5
  %9 = trunc i32 %8 to i8
  call void @uiLayoutSetActive(ptr noundef %7, i8 noundef zeroext %9) #5
  call void @uiItemR(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %10 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #5
  call void @uiItemR(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @.str.80, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %11 = call ptr @uiLayoutColumn(ptr noundef %10, i32 noundef 1) #5
  %12 = call i32 @RNA_boolean_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.80) #5
  %13 = trunc i32 %12 to i8
  call void @uiLayoutSetActive(ptr noundef %11, i8 noundef zeroext %13) #5
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_fmodifiers_copybuf() local_unnamed_addr #0 {
  tail call void @free_fmodifiers(ptr noundef nonnull @fmodifier_copypaste_buf) #5
  ret void
}

; Function Attrs: optsize
declare void @free_fmodifiers(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ANIM_fmodifiers_copy_to_buf(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !69
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

; Function Attrs: optsize
declare ptr @find_active_fmodifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_fmodifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_fmodifiers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %8 = load ptr, ptr @fmodifier_copypaste_buf, align 8, !tbaa !70
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
  %16 = load ptr, ptr %11, align 8, !tbaa !70
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !71

18:                                               ; preds = %10, %7, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 1, %10 ]
  ret i8 %19
}

; Function Attrs: optsize
declare zeroext i8 @remove_fmodifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: optsize
declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @validate_fmodifier_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !72 {
  %4 = tail call ptr @fmodifier_get_typeinfo(ptr noundef %1) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %4, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %1) #5
  br label %11

11:                                               ; preds = %10, %6, %3
  ret void
}

; Function Attrs: optsize
declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButI(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fmod_envelope_addpoint_cb(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !75 {
  %4 = alloca i8, align 1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !76
  %8 = sitofp i32 %7 to float
  %9 = load ptr, ptr %1, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  %12 = getelementptr inbounds %struct.FMod_Envelope, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !62
  %14 = call i32 @BKE_fcm_envelope_find_index(ptr noundef nonnull %9, float noundef %8, i32 noundef %13, ptr noundef nonnull %4) #5
  %15 = load i8, ptr %4, align 1, !tbaa !97
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %11
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %19 = load i32, ptr %12, align 8, !tbaa !62
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = call ptr %18(i64 noundef %22, ptr noundef nonnull @.str.62) #5
  %24 = icmp sgt i32 %14, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load ptr, ptr %1, align 8, !tbaa !64
  %27 = zext nneg i32 %14 to i64
  %28 = shl nuw nsw i64 %27, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %23, ptr align 4 %26, i64 %28, i1 false)
  br label %29

29:                                               ; preds = %25, %17
  %30 = sext i32 %14 to i64
  %31 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %23, i64 %30
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %31, align 4
  %32 = getelementptr inbounds i8, ptr %31, i64 8
  store float %8, ptr %32, align 4, !tbaa.struct !98
  %33 = getelementptr inbounds i8, ptr %31, i64 12
  store i16 0, ptr %33, align 4, !tbaa.struct !101
  %34 = getelementptr inbounds i8, ptr %31, i64 14
  store i16 0, ptr %34, align 2, !tbaa.struct !102
  %35 = load i32, ptr %12, align 8, !tbaa !62
  %36 = icmp slt i32 %14, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %31, i64 1
  %39 = load ptr, ptr %1, align 8, !tbaa !64
  %40 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %39, i64 %30
  %41 = sub nsw i32 %35, %14
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %38, ptr align 4 %40, i64 %43, i1 false)
  br label %44

44:                                               ; preds = %37, %29
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  %46 = load ptr, ptr %1, align 8, !tbaa !64
  call void %45(ptr noundef %46) #5
  store ptr %23, ptr %1, align 8, !tbaa !64
  %47 = load i32, ptr %12, align 8, !tbaa !62
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %12, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  br label %57

49:                                               ; preds = %3
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %51 = tail call ptr %50(i64 noundef 16, ptr noundef nonnull @.str.62) #5
  store ptr %51, ptr %1, align 8, !tbaa !64
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %51, align 4
  %52 = getelementptr inbounds i8, ptr %51, i64 8
  store float %8, ptr %52, align 4, !tbaa.struct !98
  %53 = getelementptr inbounds i8, ptr %51, i64 12
  store i16 0, ptr %53, align 4, !tbaa.struct !101
  %54 = getelementptr inbounds i8, ptr %51, i64 14
  store i16 0, ptr %54, align 2, !tbaa.struct !102
  %55 = getelementptr inbounds %struct.FMod_Envelope, ptr %1, i64 0, i32 1
  store i32 1, ptr %55, align 8, !tbaa !62
  br label %57

56:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  br label %57

57:                                               ; preds = %44, %49, %56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fmod_envelope_deletepoint_cb(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2) #0 !PGOFuncName !103 {
  %4 = getelementptr inbounds %struct.FMod_Envelope, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !62
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = ptrtoint ptr %2 to i64
  %9 = trunc i64 %8 to i32
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !70
  %11 = add nsw i32 %5, -1
  %12 = zext nneg i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 4
  %14 = tail call ptr %10(i64 noundef %13, ptr noundef nonnull @.str.62) #5
  %15 = load ptr, ptr %1, align 8, !tbaa !64
  %16 = shl i64 %8, 32
  %17 = ashr exact i64 %16, 32
  %18 = ashr exact i64 %16, 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %15, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %14, i64 %17
  %20 = load ptr, ptr %1, align 8, !tbaa !64
  %21 = add i64 %16, 4294967296
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %20, i64 %22
  %24 = load i32, ptr %4, align 8, !tbaa !62
  %25 = xor i32 %9, -1
  %26 = add i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %23, i64 %28, i1 false)
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  %30 = load ptr, ptr %1, align 8, !tbaa !64
  tail call void %29(ptr noundef %30) #5
  store ptr %14, ptr %1, align 8, !tbaa !64
  %31 = load i32, ptr %4, align 8, !tbaa !62
  %32 = add nsw i32 %31, -1
  br label %38

33:                                               ; preds = %3
  %34 = load ptr, ptr %1, align 8, !tbaa !64
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  tail call void %37(ptr noundef nonnull %34) #5
  store ptr null, ptr %1, align 8, !tbaa !64
  br label %38

38:                                               ; preds = %33, %36, %7
  %39 = phi i32 [ %32, %7 ], [ 0, %36 ], [ 0, %33 ]
  store i32 %39, ptr %4, align 8, !tbaa !62
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_fcm_envelope_find_index(ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

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
!48 = !{!"fmodifier_ui.c:delete_fmodifier_cb"}
!49 = !{!"fmodifier_ui.c:draw_modifier__generator"}
!50 = !{!46, !41, i64 16}
!51 = !{!52, !36, i64 16}
!52 = !{!"FMod_Generator", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20}
!53 = !{!52, !36, i64 8}
!54 = !{!52, !41, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!52, !36, i64 12}
!58 = distinct !{!58, !56}
!59 = !{!"fmodifier_ui.c:draw_modifier__fn_generator"}
!60 = !{!"fmodifier_ui.c:draw_modifier__cycles"}
!61 = !{!"fmodifier_ui.c:draw_modifier__envelope"}
!62 = !{!63, !36, i64 8}
!63 = !{!"FMod_Envelope", !41, i64 0, !36, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!64 = !{!63, !41, i64 0}
!65 = distinct !{!65, !56}
!66 = !{!"fmodifier_ui.c:draw_modifier__limits"}
!67 = !{!"fmodifier_ui.c:draw_modifier__noise"}
!68 = !{!"fmodifier_ui.c:draw_modifier__stepped"}
!69 = !{!40, !41, i64 0}
!70 = !{!41, !41, i64 0}
!71 = distinct !{!71, !56}
!72 = !{!"fmodifier_ui.c:validate_fmodifier_cb"}
!73 = !{!74, !41, i64 160}
!74 = !{!"FModifierTypeInfo", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192}
!75 = !{!"fmodifier_ui.c:fmod_envelope_addpoint_cb"}
!76 = !{!77, !36, i64 680}
!77 = !{!"Scene", !78, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !40, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !79, i64 280, !88, i64 4264, !40, i64 4296, !40, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !40, i64 4384, !89, i64 4400, !90, i64 4416, !93, i64 4600, !41, i64 4608, !94, i64 4616, !41, i64 4640, !95, i64 4648, !95, i64 4656, !81, i64 4664, !82, i64 4824, !96, i64 4888, !41, i64 4952}
!78 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!79 = !{!"RenderData", !80, i64 0, !41, i64 248, !41, i64 256, !83, i64 264, !84, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !42, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !85, i64 544, !85, i64 560, !86, i64 576, !40, i64 592, !39, i64 608, !39, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !36, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !42, i64 660, !42, i64 664, !39, i64 668, !39, i64 670, !42, i64 672, !42, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !42, i64 2528, !42, i64 2532, !39, i64 2536, !39, i64 2538, !42, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !42, i64 2560, !42, i64 2564, !41, i64 2568, !36, i64 2576, !42, i64 2580, !37, i64 2584, !87, i64 2616, !36, i64 3976, !36, i64 3980}
!80 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !42, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !81, i64 24, !82, i64 184}
!81 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !42, i64 136, !42, i64 140, !41, i64 144, !41, i64 152}
!82 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!83 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!84 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !42, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!85 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!86 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!87 = !{!"BakeData", !80, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !42, i64 1280, !42, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!88 = !{!"AudioData", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !42, i64 24, !42, i64 28}
!89 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!90 = !{!"GameData", !89, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !91, i64 40, !39, i64 64, !39, i64 66, !42, i64 68, !92, i64 72, !42, i64 128, !42, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!91 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !42, i64 8, !42, i64 12, !41, i64 16}
!92 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !36, i64 40, !42, i64 44, !42, i64 48, !39, i64 52, !39, i64 54}
!93 = !{!"UnitSettings", !42, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!94 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!95 = !{!"long", !37, i64 0}
!96 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!97 = !{!37, !37, i64 0}
!98 = !{i64 0, i64 4, !99, i64 4, i64 2, !100, i64 6, i64 2, !100}
!99 = !{!42, !42, i64 0}
!100 = !{!39, !39, i64 0}
!101 = !{i64 0, i64 2, !100, i64 2, i64 2, !100}
!102 = !{i64 0, i64 2, !100}
!103 = !{!"fmodifier_ui.c:fmod_envelope_deletepoint_cb"}
