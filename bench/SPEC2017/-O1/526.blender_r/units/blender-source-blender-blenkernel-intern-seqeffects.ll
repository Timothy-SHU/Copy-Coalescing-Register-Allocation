; ModuleID = 'blender/source/blender/blenkernel/intern/seqeffects.c'
source_filename = "blender/source/blender/blenkernel/intern/seqeffects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.SpeedControlVars = type { ptr, float, i32, i32, i32 }
%struct.SeqEffectHandle = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.SeqRenderData = type { ptr, ptr, ptr, i32, i32, i32, i32, float, i8, i8 }
%struct.WipeZone = type { float, i32, i32, i32, i32, float }
%struct.WipeVars = type { float, float, i16, i16 }
%struct.GlowVars = type { float, float, float, float, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.TransformVars = type { float, float, float, float, float, i32, i32, i32 }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.GaussianBlurVars = type { float, float }

@RNA_Sequence = external global %struct.StructRNA, align 1
@.str = private unnamed_addr constant [13 x i8] c"speed_factor\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"speedcontrol frameMap\00", align 1
@gamma_tabs_init = internal unnamed_addr global i1 false, align 1
@valid_gamma = internal unnamed_addr global float 0.000000e+00, align 4
@valid_inv_gamma = internal unnamed_addr global float 0.000000e+00, align 4
@inv_color_step = internal unnamed_addr global float 0.000000e+00, align 4
@color_domain_table = internal unnamed_addr global [401 x float] zeroinitializer, align 16
@gamma_range_table = internal unnamed_addr global [401 x float] zeroinitializer, align 16
@inv_gamma_range_table = internal unnamed_addr global [401 x float] zeroinitializer, align 16
@gamfactor_table = internal unnamed_addr global [400 x float] zeroinitializer, align 16
@inv_gamfactor_table = internal unnamed_addr global [400 x float] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"wipevars\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"glowvars\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"blurbitmaptemp\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"blurbitmapfilter\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"glow effect input\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"glow effect output\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"transformvars\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"speedcontrolvars\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"solidcolor\00", align 1
@__func__.make_gaussian_blur_kernel = private unnamed_addr constant [26 x i8] c"make_gaussian_blur_kernel\00", align 1
@switch.table.BKE_sequence_get_effect = private unnamed_addr constant [33 x ptr] [ptr @do_cross_effect, ptr @do_add_effect, ptr @do_sub_effect, ptr @do_alphaover_effect, ptr @do_alphaunder_effect, ptr @do_gammacross_effect, ptr @do_mul_effect, ptr @do_overdrop_effect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_gaussian_blur_effect], align 8
@switch.table.BKE_sequence_get_effect.11 = private unnamed_addr constant [33 x ptr] [ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @gammacross_init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution, ptr @init_execution], align 8
@switch.table.BKE_sequence_get_effect.12 = private unnamed_addr constant [33 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_wipe_effect, ptr @do_glow_effect, ptr @do_transform_effect, ptr @do_solid_color, ptr @do_speed_effect, ptr @do_multicam, ptr @do_adjustment, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], align 8
@switch.table.BKE_sequence_get_effect.13 = private unnamed_addr constant [33 x ptr] [ptr @get_default_fac_fade, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_fade, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_fade, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop, ptr @get_default_fac_noop], align 8
@switch.table.BKE_sequence_get_effect.14 = private unnamed_addr constant [33 x ptr] [ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_speed, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop, ptr @store_icu_yrange_noop], align 8
@switch.table.BKE_sequence_get_effect.15 = private unnamed_addr constant [33 x ptr] [ptr @early_out_fade, ptr @early_out_mul_input2, ptr @early_out_mul_input2, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_fade, ptr @early_out_mul_input2, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_fade, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_color, ptr @early_out_speed, ptr @early_out_multicam, ptr @early_out_adjustment, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_noop, ptr @early_out_gaussian_blur], align 8
@switch.table.BKE_sequence_get_effect.16 = private unnamed_addr constant [33 x ptr] [ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_gammacross, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_wipe_effect, ptr @free_glow_effect, ptr @free_transform_effect, ptr @free_solid_color, ptr @free_speed_effect, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_noop, ptr @free_gaussian_blur_effect], align 8
@switch.table.BKE_sequence_get_effect.17 = private unnamed_addr constant [33 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @copy_wipe_effect, ptr @copy_glow_effect, ptr @copy_transform_effect, ptr @copy_solid_color, ptr @copy_speed_effect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @copy_gaussian_blur_effect], align 8
@switch.table.BKE_sequence_get_effect.18 = private unnamed_addr constant [33 x ptr] [ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_gammacross, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_speed_effect, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop, ptr @load_noop], align 8
@switch.table.BKE_sequence_get_effect.19 = private unnamed_addr constant [33 x ptr] [ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_wipe, ptr @num_inputs_glow, ptr @num_inputs_transform, ptr @num_inputs_color, ptr @num_inputs_speed, ptr @num_inputs_multicam, ptr @num_inputs_adjustment, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_default, ptr @num_inputs_gaussian_blur], align 8
@switch.table.BKE_sequence_get_effect.20 = private unnamed_addr constant [33 x ptr] [ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_alpha_over_or_under, ptr @init_alpha_over_or_under, ptr @init_gammacross, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_wipe_effect, ptr @init_glow_effect, ptr @init_transform_effect, ptr @init_solid_color, ptr @init_speed_effect, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_noop, ptr @init_gaussian_blur_effect], align 8
@switch.table.BKE_sequence_get_effect.21 = private unnamed_addr constant [33 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00", align 1
@switch.table.BKE_sequence_get_effect.22 = private unnamed_addr constant [33 x i8] c"\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_effect_speed_rebuild_map(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !45, !noalias !46
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !49, !noalias !46
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = icmp eq i32 %9, 29
  %19 = icmp eq i32 %9, 13
  %20 = select i1 %19, ptr @load_gammacross, ptr @load_noop
  %21 = select i1 %18, ptr @load_speed_effect, ptr %20
  tail call void %21(ptr noundef %1) #16, !noalias !46
  %22 = load i32, ptr %13, align 8, !tbaa !49, !noalias !46
  %23 = and i32 %22, -513
  store i32 %23, ptr %13, align 8, !tbaa !49, !noalias !46
  br label %24

24:                                               ; preds = %3, %12, %17
  %25 = icmp eq i8 %2, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !50
  %29 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !51
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 8, !tbaa !52
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %186

35:                                               ; preds = %32, %26, %24
  %36 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  %38 = icmp eq ptr %37, null
  br i1 %38, label %186, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !50
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %186, label %43

43:                                               ; preds = %39
  %44 = tail call ptr @id_data_find_fcurve(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef null) #16
  %45 = load ptr, ptr %5, align 8, !tbaa !52
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !51
  %50 = load i32, ptr %40, align 8, !tbaa !50
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  br i1 %46, label %55, label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %54(ptr noundef nonnull %45) #16
  br label %55

55:                                               ; preds = %43, %53, %52
  %56 = load i32, ptr %40, align 8, !tbaa !50
  %57 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 3
  store i32 %56, ptr %57, align 8, !tbaa !51
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %59 = sext i32 %56 to i64
  %60 = shl nsw i64 %59, 2
  %61 = tail call ptr %58(i64 noundef %60, ptr noundef nonnull @.str.1) #16
  store ptr %61, ptr %5, align 8, !tbaa !52
  br label %62

62:                                               ; preds = %55, %47
  %63 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !49
  %65 = and i32 %64, 4194304
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %36, align 8, !tbaa !53
  %69 = getelementptr inbounds %struct.Sequence, ptr %68, i64 0, i32 16
  %70 = load i32, ptr %69, align 4, !tbaa !55
  %71 = getelementptr inbounds %struct.Sequence, ptr %68, i64 0, i32 8
  %72 = load i32, ptr %71, align 4, !tbaa !56
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %88, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.Sequence, ptr %68, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !50
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  %79 = sitofp i32 %76 to float
  %80 = sub nsw i32 %70, %72
  %81 = sitofp i32 %80 to float
  %82 = fdiv float %79, %81
  br label %88

83:                                               ; preds = %62
  %84 = icmp eq ptr %44, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 32
  %87 = load float, ptr %86, align 4, !tbaa !57
  br label %88

88:                                               ; preds = %83, %85, %67, %74, %78
  %89 = phi float [ %82, %78 ], [ 1.000000e+00, %74 ], [ 1.000000e+00, %67 ], [ 1.000000e+00, %83 ], [ %87, %85 ]
  %90 = phi ptr [ null, %78 ], [ %44, %74 ], [ %44, %67 ], [ %44, %83 ], [ null, %85 ]
  %91 = phi i32 [ 1, %78 ], [ %7, %74 ], [ %7, %67 ], [ %7, %83 ], [ %7, %85 ]
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %137, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %5, align 8, !tbaa !52
  store float 0.000000e+00, ptr %95, align 4, !tbaa !58
  %96 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 4
  store i32 0, ptr %96, align 4, !tbaa !59
  %97 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !51
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %186

100:                                              ; preds = %94
  %101 = icmp eq ptr %90, null
  %102 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %103 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 1
  br label %104

104:                                              ; preds = %100, %132
  %105 = phi i64 [ 1, %100 ], [ %133, %132 ]
  %106 = phi float [ 0.000000e+00, %100 ], [ %117, %132 ]
  br i1 %101, label %113, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %102, align 8, !tbaa !60
  %109 = trunc i64 %105 to i32
  %110 = add nsw i32 %108, %109
  %111 = sitofp i32 %110 to float
  %112 = tail call float @evaluate_fcurve(ptr noundef nonnull %90, float noundef %111) #16
  br label %113

113:                                              ; preds = %104, %107
  %114 = phi float [ %112, %107 ], [ %89, %104 ]
  %115 = load float, ptr %103, align 8, !tbaa !61
  %116 = fmul float %114, %115
  %117 = fadd float %106, %116
  %118 = load ptr, ptr %36, align 8, !tbaa !53
  %119 = getelementptr inbounds %struct.Sequence, ptr %118, i64 0, i32 7
  %120 = load i32, ptr %119, align 8, !tbaa !50
  %121 = sitofp i32 %120 to float
  %122 = fcmp ult float %117, %121
  br i1 %122, label %128, label %123

123:                                              ; preds = %113
  %124 = add nsw i32 %120, -1
  %125 = sitofp i32 %124 to float
  %126 = load ptr, ptr %5, align 8, !tbaa !52
  %127 = getelementptr inbounds float, ptr %126, i64 %105
  store float %125, ptr %127, align 4, !tbaa !58
  br label %132

128:                                              ; preds = %113
  %129 = load ptr, ptr %5, align 8, !tbaa !52
  %130 = getelementptr inbounds float, ptr %129, i64 %105
  store float %117, ptr %130, align 4, !tbaa !58
  %131 = trunc i64 %105 to i32
  store i32 %131, ptr %96, align 4, !tbaa !59
  br label %132

132:                                              ; preds = %123, %128
  %133 = add nuw nsw i64 %105, 1
  %134 = load i32, ptr %97, align 8, !tbaa !51
  %135 = sext i32 %134 to i64
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %104, label %186, !llvm.loop !62

137:                                              ; preds = %88
  %138 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 4
  store i32 0, ptr %138, align 4, !tbaa !59
  %139 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 3
  %140 = load i32, ptr %139, align 8, !tbaa !51
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %186

142:                                              ; preds = %137
  %143 = icmp eq ptr %90, null
  %144 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %145 = and i32 %91, 4
  %146 = icmp eq i32 %145, 0
  %147 = getelementptr inbounds %struct.SpeedControlVars, ptr %5, i64 0, i32 1
  br label %148

148:                                              ; preds = %142, %178
  %149 = phi i64 [ 0, %142 ], [ %182, %178 ]
  br i1 %143, label %156, label %150

150:                                              ; preds = %148
  %151 = load i32, ptr %144, align 8, !tbaa !60
  %152 = trunc i64 %149 to i32
  %153 = add nsw i32 %151, %152
  %154 = sitofp i32 %153 to float
  %155 = tail call float @evaluate_fcurve(ptr noundef nonnull %90, float noundef %154) #16
  br label %156

156:                                              ; preds = %148, %150
  %157 = phi float [ %155, %150 ], [ %89, %148 ]
  br i1 %146, label %164, label %158

158:                                              ; preds = %156
  %159 = load ptr, ptr %36, align 8, !tbaa !53
  %160 = getelementptr inbounds %struct.Sequence, ptr %159, i64 0, i32 7
  %161 = load i32, ptr %160, align 8, !tbaa !50
  %162 = sitofp i32 %161 to float
  %163 = fmul float %157, %162
  br label %164

164:                                              ; preds = %158, %156
  %165 = phi float [ %163, %158 ], [ %157, %156 ]
  %166 = load float, ptr %147, align 8, !tbaa !61
  %167 = fmul float %165, %166
  %168 = load ptr, ptr %36, align 8, !tbaa !53
  %169 = getelementptr inbounds %struct.Sequence, ptr %168, i64 0, i32 7
  %170 = load i32, ptr %169, align 8, !tbaa !50
  %171 = sitofp i32 %170 to float
  %172 = fcmp ult float %167, %171
  br i1 %172, label %176, label %173

173:                                              ; preds = %164
  %174 = add nsw i32 %170, -1
  %175 = sitofp i32 %174 to float
  br label %178

176:                                              ; preds = %164
  %177 = trunc i64 %149 to i32
  store i32 %177, ptr %138, align 4, !tbaa !59
  br label %178

178:                                              ; preds = %176, %173
  %179 = phi float [ %175, %173 ], [ %167, %176 ]
  %180 = load ptr, ptr %5, align 8, !tbaa !52
  %181 = getelementptr inbounds float, ptr %180, i64 %149
  store float %179, ptr %181, align 4, !tbaa !58
  %182 = add nuw nsw i64 %149, 1
  %183 = load i32, ptr %139, align 8, !tbaa !51
  %184 = sext i32 %183 to i64
  %185 = icmp slt i64 %182, %184
  br i1 %185, label %148, label %186, !llvm.loop !65

186:                                              ; preds = %132, %178, %94, %137, %35, %39, %32
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_get_effect(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.SeqEffectHandle) align 8 %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !45
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %83, label %7

7:                                                ; preds = %2
  %8 = add nsw i32 %4, -8
  %9 = icmp ult i32 %8, 33
  br i1 %9, label %10, label %50

10:                                               ; preds = %7
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [33 x ptr], ptr @switch.table.BKE_sequence_get_effect, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8
  %14 = zext nneg i32 %8 to i64
  %15 = getelementptr inbounds [33 x ptr], ptr @switch.table.BKE_sequence_get_effect.11, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8
  %17 = zext nneg i32 %8 to i64
  %18 = getelementptr inbounds [33 x ptr], ptr @switch.table.BKE_sequence_get_effect.12, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8
  %20 = zext nneg i32 %8 to i64
  %21 = getelementptr inbounds [33 x ptr], ptr @switch.table.BKE_sequence_get_effect.13, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8
  %23 = zext nneg i32 %8 to i64
  %24 = getelementptr inbounds [33 x ptr], ptr @switch.table.BKE_sequence_get_effect.14, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8
  %26 = zext nneg i32 %8 to i64
  %27 = getelementptr inbounds [33 x ptr], ptr @switch.table.BKE_sequence_get_effect.15, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8
  %29 = zext nneg i32 %8 to i64
  %30 = getelementptr inbounds [33 x ptr], ptr @switch.table.BKE_sequence_get_effect.16, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8
  %32 = zext nneg i32 %8 to i64
  %33 = getelementptr inbounds [33 x ptr], ptr @switch.table.BKE_sequence_get_effect.17, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8
  %35 = zext nneg i32 %8 to i64
  %36 = getelementptr inbounds [33 x ptr], ptr @switch.table.BKE_sequence_get_effect.18, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8
  %38 = zext nneg i32 %8 to i64
  %39 = getelementptr inbounds [33 x ptr], ptr @switch.table.BKE_sequence_get_effect.19, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8
  %41 = zext nneg i32 %8 to i64
  %42 = getelementptr inbounds [33 x ptr], ptr @switch.table.BKE_sequence_get_effect.20, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8
  %44 = zext nneg i32 %8 to i64
  %45 = getelementptr inbounds [33 x i8], ptr @switch.table.BKE_sequence_get_effect.21, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1
  %47 = zext nneg i32 %8 to i64
  %48 = getelementptr inbounds [33 x i8], ptr @switch.table.BKE_sequence_get_effect.22, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1
  br label %50

50:                                               ; preds = %10, %7
  %51 = phi ptr [ null, %7 ], [ %13, %10 ]
  %52 = phi ptr [ @init_execution, %7 ], [ %16, %10 ]
  %53 = phi ptr [ null, %7 ], [ %19, %10 ]
  %54 = phi ptr [ @get_default_fac_noop, %7 ], [ %22, %10 ]
  %55 = phi ptr [ @store_icu_yrange_noop, %7 ], [ %25, %10 ]
  %56 = phi ptr [ @early_out_noop, %7 ], [ %28, %10 ]
  %57 = phi ptr [ @free_noop, %7 ], [ %31, %10 ]
  %58 = phi ptr [ null, %7 ], [ %34, %10 ]
  %59 = phi ptr [ @load_noop, %7 ], [ %37, %10 ]
  %60 = phi ptr [ @num_inputs_default, %7 ], [ %40, %10 ]
  %61 = phi ptr [ @init_noop, %7 ], [ %43, %10 ]
  %62 = phi i8 [ 0, %7 ], [ %46, %10 ]
  %63 = phi i8 [ 0, %7 ], [ %49, %10 ]
  store i8 %63, ptr %0, align 8, !tbaa.struct !66
  %64 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %62, ptr %64, align 1, !tbaa.struct !68
  %65 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %61, ptr %65, align 8, !tbaa.struct !69
  %66 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %60, ptr %66, align 8, !tbaa.struct !70
  %67 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %59, ptr %67, align 8, !tbaa.struct !71
  %68 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr %58, ptr %68, align 8, !tbaa.struct !72
  %69 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr %57, ptr %69, align 8, !tbaa.struct !73
  %70 = getelementptr inbounds i8, ptr %0, i64 48
  store ptr %56, ptr %70, align 8, !tbaa.struct !74
  %71 = getelementptr inbounds i8, ptr %0, i64 56
  store ptr %55, ptr %71, align 8, !tbaa.struct !75
  %72 = getelementptr inbounds i8, ptr %0, i64 64
  store ptr %54, ptr %72, align 8, !tbaa.struct !76
  %73 = getelementptr inbounds i8, ptr %0, i64 72
  store ptr %53, ptr %73, align 8, !tbaa.struct !77
  %74 = getelementptr inbounds i8, ptr %0, i64 80
  store ptr %52, ptr %74, align 8, !tbaa.struct !78
  %75 = getelementptr inbounds i8, ptr %0, i64 88
  store ptr %51, ptr %75, align 8, !tbaa.struct !79
  %76 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %77 = load i32, ptr %76, align 8, !tbaa !49
  %78 = and i32 %77, 512
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %50
  tail call void %59(ptr noundef %1) #16
  %81 = load i32, ptr %76, align 8, !tbaa !49
  %82 = and i32 %81, -513
  store i32 %82, ptr %76, align 8, !tbaa !49
  br label %83

83:                                               ; preds = %50, %80, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @id_data_find_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_sequence_get_blend(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.SeqEffectHandle) align 8 %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %4 = load i32, ptr %3, align 8, !tbaa !80
  switch i32 %4, label %21 [
    i32 0, label %54
    i32 8, label %5
    i32 13, label %6
    i32 9, label %7
    i32 10, label %8
    i32 14, label %9
    i32 11, label %10
    i32 15, label %11
    i32 12, label %12
    i32 25, label %13
    i32 26, label %14
    i32 27, label %15
    i32 29, label %16
    i32 28, label %17
    i32 30, label %18
    i32 31, label %19
    i32 40, label %20
  ]

5:                                                ; preds = %2
  br label %21

6:                                                ; preds = %2
  br label %21

7:                                                ; preds = %2
  br label %21

8:                                                ; preds = %2
  br label %21

9:                                                ; preds = %2
  br label %21

10:                                               ; preds = %2
  br label %21

11:                                               ; preds = %2
  br label %21

12:                                               ; preds = %2
  br label %21

13:                                               ; preds = %2
  br label %21

14:                                               ; preds = %2
  br label %21

15:                                               ; preds = %2
  br label %21

16:                                               ; preds = %2
  br label %21

17:                                               ; preds = %2
  br label %21

18:                                               ; preds = %2
  br label %21

19:                                               ; preds = %2
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %2, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20
  %22 = phi ptr [ @do_gaussian_blur_effect, %20 ], [ null, %19 ], [ null, %18 ], [ null, %17 ], [ null, %16 ], [ null, %15 ], [ null, %14 ], [ null, %13 ], [ @do_alphaunder_effect, %12 ], [ @do_overdrop_effect, %11 ], [ @do_alphaover_effect, %10 ], [ @do_mul_effect, %9 ], [ @do_sub_effect, %8 ], [ @do_add_effect, %7 ], [ @do_gammacross_effect, %6 ], [ @do_cross_effect, %5 ], [ null, %2 ]
  %23 = phi ptr [ @init_execution, %20 ], [ @init_execution, %19 ], [ @init_execution, %18 ], [ @init_execution, %17 ], [ @init_execution, %16 ], [ @init_execution, %15 ], [ @init_execution, %14 ], [ @init_execution, %13 ], [ @init_execution, %12 ], [ @init_execution, %11 ], [ @init_execution, %10 ], [ @init_execution, %9 ], [ @init_execution, %8 ], [ @init_execution, %7 ], [ @gammacross_init_execution, %6 ], [ @init_execution, %5 ], [ @init_execution, %2 ]
  %24 = phi ptr [ null, %20 ], [ @do_adjustment, %19 ], [ @do_multicam, %18 ], [ @do_solid_color, %17 ], [ @do_speed_effect, %16 ], [ @do_transform_effect, %15 ], [ @do_glow_effect, %14 ], [ @do_wipe_effect, %13 ], [ null, %12 ], [ null, %11 ], [ null, %10 ], [ null, %9 ], [ null, %8 ], [ null, %7 ], [ null, %6 ], [ null, %5 ], [ null, %2 ]
  %25 = phi ptr [ @get_default_fac_noop, %20 ], [ @get_default_fac_noop, %19 ], [ @get_default_fac_noop, %18 ], [ @get_default_fac_noop, %17 ], [ @get_default_fac_noop, %16 ], [ @get_default_fac_noop, %15 ], [ @get_default_fac_noop, %14 ], [ @get_default_fac_fade, %13 ], [ @get_default_fac_noop, %12 ], [ @get_default_fac_noop, %11 ], [ @get_default_fac_noop, %10 ], [ @get_default_fac_noop, %9 ], [ @get_default_fac_noop, %8 ], [ @get_default_fac_noop, %7 ], [ @get_default_fac_fade, %6 ], [ @get_default_fac_fade, %5 ], [ @get_default_fac_noop, %2 ]
  %26 = phi ptr [ @store_icu_yrange_noop, %20 ], [ @store_icu_yrange_noop, %19 ], [ @store_icu_yrange_noop, %18 ], [ @store_icu_yrange_noop, %17 ], [ @store_icu_yrange_speed, %16 ], [ @store_icu_yrange_noop, %15 ], [ @store_icu_yrange_noop, %14 ], [ @store_icu_yrange_noop, %13 ], [ @store_icu_yrange_noop, %12 ], [ @store_icu_yrange_noop, %11 ], [ @store_icu_yrange_noop, %10 ], [ @store_icu_yrange_noop, %9 ], [ @store_icu_yrange_noop, %8 ], [ @store_icu_yrange_noop, %7 ], [ @store_icu_yrange_noop, %6 ], [ @store_icu_yrange_noop, %5 ], [ @store_icu_yrange_noop, %2 ]
  %27 = phi ptr [ @early_out_gaussian_blur, %20 ], [ @early_out_adjustment, %19 ], [ @early_out_multicam, %18 ], [ @early_out_color, %17 ], [ @early_out_speed, %16 ], [ @early_out_noop, %15 ], [ @early_out_noop, %14 ], [ @early_out_fade, %13 ], [ @early_out_noop, %12 ], [ @early_out_noop, %11 ], [ @early_out_noop, %10 ], [ @early_out_mul_input2, %9 ], [ @early_out_mul_input2, %8 ], [ @early_out_mul_input2, %7 ], [ @early_out_fade, %6 ], [ @early_out_fade, %5 ], [ @early_out_noop, %2 ]
  %28 = phi ptr [ @free_gaussian_blur_effect, %20 ], [ @free_noop, %19 ], [ @free_noop, %18 ], [ @free_solid_color, %17 ], [ @free_speed_effect, %16 ], [ @free_transform_effect, %15 ], [ @free_glow_effect, %14 ], [ @free_wipe_effect, %13 ], [ @free_noop, %12 ], [ @free_noop, %11 ], [ @free_noop, %10 ], [ @free_noop, %9 ], [ @free_noop, %8 ], [ @free_noop, %7 ], [ @free_gammacross, %6 ], [ @free_noop, %5 ], [ @free_noop, %2 ]
  %29 = phi ptr [ @copy_gaussian_blur_effect, %20 ], [ null, %19 ], [ null, %18 ], [ @copy_solid_color, %17 ], [ @copy_speed_effect, %16 ], [ @copy_transform_effect, %15 ], [ @copy_glow_effect, %14 ], [ @copy_wipe_effect, %13 ], [ null, %12 ], [ null, %11 ], [ null, %10 ], [ null, %9 ], [ null, %8 ], [ null, %7 ], [ null, %6 ], [ null, %5 ], [ null, %2 ]
  %30 = phi ptr [ @load_noop, %20 ], [ @load_noop, %19 ], [ @load_noop, %18 ], [ @load_noop, %17 ], [ @load_speed_effect, %16 ], [ @load_noop, %15 ], [ @load_noop, %14 ], [ @load_noop, %13 ], [ @load_noop, %12 ], [ @load_noop, %11 ], [ @load_noop, %10 ], [ @load_noop, %9 ], [ @load_noop, %8 ], [ @load_noop, %7 ], [ @load_gammacross, %6 ], [ @load_noop, %5 ], [ @load_noop, %2 ]
  %31 = phi ptr [ @num_inputs_gaussian_blur, %20 ], [ @num_inputs_adjustment, %19 ], [ @num_inputs_multicam, %18 ], [ @num_inputs_color, %17 ], [ @num_inputs_speed, %16 ], [ @num_inputs_transform, %15 ], [ @num_inputs_glow, %14 ], [ @num_inputs_wipe, %13 ], [ @num_inputs_default, %12 ], [ @num_inputs_default, %11 ], [ @num_inputs_default, %10 ], [ @num_inputs_default, %9 ], [ @num_inputs_default, %8 ], [ @num_inputs_default, %7 ], [ @num_inputs_default, %6 ], [ @num_inputs_default, %5 ], [ @num_inputs_default, %2 ]
  %32 = phi ptr [ @init_gaussian_blur_effect, %20 ], [ @init_noop, %19 ], [ @init_noop, %18 ], [ @init_solid_color, %17 ], [ @init_speed_effect, %16 ], [ @init_transform_effect, %15 ], [ @init_glow_effect, %14 ], [ @init_wipe_effect, %13 ], [ @init_alpha_over_or_under, %12 ], [ @init_noop, %11 ], [ @init_alpha_over_or_under, %10 ], [ @init_noop, %9 ], [ @init_noop, %8 ], [ @init_noop, %7 ], [ @init_gammacross, %6 ], [ @init_noop, %5 ], [ @init_noop, %2 ]
  %33 = phi i8 [ 0, %20 ], [ 1, %19 ], [ 0, %18 ], [ 0, %17 ], [ 0, %16 ], [ 0, %15 ], [ 0, %14 ], [ 0, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %10 ], [ 0, %9 ], [ 0, %8 ], [ 0, %7 ], [ 0, %6 ], [ 0, %5 ], [ 0, %2 ]
  %34 = phi i8 [ 1, %20 ], [ 0, %19 ], [ 0, %18 ], [ 0, %17 ], [ 0, %16 ], [ 0, %15 ], [ 0, %14 ], [ 0, %13 ], [ 1, %12 ], [ 1, %11 ], [ 1, %10 ], [ 1, %9 ], [ 1, %8 ], [ 1, %7 ], [ 1, %6 ], [ 1, %5 ], [ 0, %2 ]
  store i8 %34, ptr %0, align 8, !tbaa.struct !66
  %35 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %33, ptr %35, align 1, !tbaa.struct !68
  %36 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %32, ptr %36, align 8, !tbaa.struct !69
  %37 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %31, ptr %37, align 8, !tbaa.struct !70
  %38 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %30, ptr %38, align 8, !tbaa.struct !71
  %39 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr %29, ptr %39, align 8, !tbaa.struct !72
  %40 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr %28, ptr %40, align 8, !tbaa.struct !73
  %41 = getelementptr inbounds i8, ptr %0, i64 48
  store ptr %27, ptr %41, align 8, !tbaa.struct !74
  %42 = getelementptr inbounds i8, ptr %0, i64 56
  store ptr %26, ptr %42, align 8, !tbaa.struct !75
  %43 = getelementptr inbounds i8, ptr %0, i64 64
  store ptr %25, ptr %43, align 8, !tbaa.struct !76
  %44 = getelementptr inbounds i8, ptr %0, i64 72
  store ptr %24, ptr %44, align 8, !tbaa.struct !77
  %45 = getelementptr inbounds i8, ptr %0, i64 80
  store ptr %23, ptr %45, align 8, !tbaa.struct !78
  %46 = getelementptr inbounds i8, ptr %0, i64 88
  store ptr %22, ptr %46, align 8, !tbaa.struct !79
  %47 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !49
  %49 = and i32 %48, 512
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %21
  tail call void %30(ptr noundef %1) #16
  %52 = load i32, ptr %47, align 8, !tbaa !49
  %53 = and i32 %52, -513
  store i32 %53, ptr %47, align 8, !tbaa !49
  br label %54

54:                                               ; preds = %2, %21, %51
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %18 [
    i32 8, label %2
    i32 13, label %3
    i32 9, label %4
    i32 10, label %5
    i32 14, label %6
    i32 11, label %7
    i32 15, label %8
    i32 12, label %9
    i32 25, label %10
    i32 26, label %11
    i32 27, label %12
    i32 29, label %13
    i32 28, label %14
    i32 30, label %15
    i32 31, label %16
    i32 40, label %17
  ]

2:                                                ; preds = %1
  br label %18

3:                                                ; preds = %1
  br label %18

4:                                                ; preds = %1
  br label %18

5:                                                ; preds = %1
  br label %18

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  br label %18

11:                                               ; preds = %1
  br label %18

12:                                               ; preds = %1
  br label %18

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17
  %19 = phi ptr [ @num_inputs_default, %1 ], [ @num_inputs_gaussian_blur, %17 ], [ @num_inputs_adjustment, %16 ], [ @num_inputs_multicam, %15 ], [ @num_inputs_color, %14 ], [ @num_inputs_speed, %13 ], [ @num_inputs_transform, %12 ], [ @num_inputs_glow, %11 ], [ @num_inputs_wipe, %10 ], [ @num_inputs_default, %9 ], [ @num_inputs_default, %8 ], [ @num_inputs_default, %7 ], [ @num_inputs_default, %6 ], [ @num_inputs_default, %5 ], [ @num_inputs_default, %4 ], [ @num_inputs_default, %3 ], [ @num_inputs_default, %2 ]
  %20 = phi i1 [ true, %1 ], [ false, %17 ], [ false, %16 ], [ false, %15 ], [ false, %14 ], [ false, %13 ], [ false, %12 ], [ false, %11 ], [ false, %10 ], [ false, %9 ], [ false, %8 ], [ false, %7 ], [ false, %6 ], [ false, %5 ], [ false, %4 ], [ false, %3 ], [ false, %2 ]
  %21 = tail call i32 %19() #16
  %22 = select i1 %20, i32 0, i32 %21
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @BKE_sequence_effect_get_supports_mask(i32 noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq i32 %0, 31
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @init_noop(ptr nocapture readnone %0) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_default() #5 {
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @load_noop(ptr nocapture readnone %0) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @free_noop(ptr nocapture readnone %0) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @early_out_noop(ptr nocapture readnone %0, float %1, float %2) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @get_default_fac_noop(ptr nocapture readnone %0, float %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #6 {
  store float 1.000000e+00, ptr %3, align 4, !tbaa !58
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @store_icu_yrange_noop(ptr nocapture readnone %0, i16 signext %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #5 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @init_execution(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_cross_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 {
  %12 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  %15 = shl nsw i32 %8, 2
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = mul nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  br i1 %14, label %32, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = getelementptr inbounds float, ptr %22, i64 %19
  %24 = getelementptr inbounds float, ptr %13, i64 %19
  %25 = icmp eq ptr %6, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds float, ptr %28, i64 %19
  br label %30

30:                                               ; preds = %20, %26
  %31 = phi ptr [ null, %20 ], [ %29, %26 ]
  tail call fastcc void @do_cross_effect_float(float noundef %3, float noundef %4, i32 noundef %17, i32 noundef %9, ptr noundef %23, ptr noundef %31, ptr noundef nonnull %24)
  br label %46

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !87
  %35 = getelementptr inbounds i8, ptr %34, i64 %19
  %36 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !87
  %38 = getelementptr inbounds i8, ptr %37, i64 %19
  %39 = icmp eq ptr %6, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !87
  %43 = getelementptr inbounds i8, ptr %42, i64 %19
  br label %44

44:                                               ; preds = %32, %40
  %45 = phi ptr [ null, %32 ], [ %43, %40 ]
  tail call fastcc void @do_cross_effect_byte(float noundef %3, float noundef %4, i32 noundef %17, i32 noundef %9, ptr noundef %35, ptr noundef %45, ptr noundef %38)
  br label %46

46:                                               ; preds = %44, %30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @early_out_fade(ptr nocapture readnone %0, float noundef %1, float noundef %2) #5 {
  %4 = fcmp oeq float %1, 0.000000e+00
  %5 = fcmp oeq float %2, 0.000000e+00
  %6 = and i1 %4, %5
  %7 = fcmp oeq float %1, 1.000000e+00
  %8 = fcmp oeq float %2, 1.000000e+00
  %9 = and i1 %7, %8
  %10 = select i1 %9, i32 2, i32 0
  %11 = select i1 %6, i32 1, i32 %10
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @get_default_fac_fade(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #8 {
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = sitofp i32 %6 to float
  %8 = fsub float %1, %7
  store float %8, ptr %2, align 4, !tbaa !58
  %9 = fadd float %8, 5.000000e-01
  store float %9, ptr %3, align 4, !tbaa !58
  %10 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !50
  %12 = sitofp i32 %11 to float
  %13 = load float, ptr %2, align 4, !tbaa !58
  %14 = fdiv float %13, %12
  store float %14, ptr %2, align 4, !tbaa !58
  %15 = load float, ptr %3, align 4, !tbaa !58
  %16 = fdiv float %15, %12
  store float %16, ptr %3, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @init_gammacross(ptr nocapture readnone %0) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @load_gammacross(ptr nocapture readnone %0) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @free_gammacross(ptr nocapture readnone %0) #5 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @gammacross_init_execution(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %6 = load i1, ptr @gamma_tabs_init, align 1
  br i1 %6, label %52, label %7

7:                                                ; preds = %4, %14
  %8 = phi i32 [ %15, %14 ], [ 0, %4 ]
  %9 = sitofp i32 %8 to float
  %10 = fdiv float %9, 6.553500e+04
  %11 = fcmp olt float %10, 0.000000e+00
  br i1 %11, label %12, label %14, !prof !88

12:                                               ; preds = %7
  %13 = tail call float @sqrtf(float noundef %10) #16
  br label %14

14:                                               ; preds = %7, %12
  %15 = add nuw nsw i32 %8, 1
  %16 = icmp eq i32 %15, 65536
  br i1 %16, label %17, label %7, !llvm.loop !89

17:                                               ; preds = %14
  store float 2.000000e+00, ptr @valid_gamma, align 4, !tbaa !58
  store float 5.000000e-01, ptr @valid_inv_gamma, align 4, !tbaa !58
  store float 4.000000e+02, ptr @inv_color_step, align 4, !tbaa !58
  br label %18

18:                                               ; preds = %17, %18
  %19 = phi i64 [ 0, %17 ], [ %30, %18 ]
  %20 = trunc i64 %19 to i32
  %21 = sitofp i32 %20 to float
  %22 = fmul float %21, 0x3F647AE140000000
  %23 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %19
  store float %22, ptr %23, align 4, !tbaa !58
  %24 = fmul float %22, %22
  %25 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %19
  store float %24, ptr %25, align 4, !tbaa !58
  %26 = fpext float %22 to double
  %27 = tail call double @pow(double noundef %26, double noundef 5.000000e-01) #16
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %19
  store float %28, ptr %29, align 4, !tbaa !58
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 400
  br i1 %31, label %32, label %18, !llvm.loop !90

32:                                               ; preds = %18
  store float 1.000000e+00, ptr getelementptr inbounds ([401 x float], ptr @color_domain_table, i64 0, i64 400), align 16, !tbaa !58
  store float 1.000000e+00, ptr getelementptr inbounds ([401 x float], ptr @gamma_range_table, i64 0, i64 400), align 16, !tbaa !58
  store float 1.000000e+00, ptr getelementptr inbounds ([401 x float], ptr @inv_gamma_range_table, i64 0, i64 400), align 16, !tbaa !58
  br label %33

33:                                               ; preds = %32, %33
  %34 = phi i64 [ 0, %32 ], [ %35, %33 ]
  %35 = add nuw nsw i64 %34, 1
  %36 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !58
  %38 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %34
  %39 = load float, ptr %38, align 4, !tbaa !58
  %40 = fsub float %37, %39
  %41 = fmul float %40, 4.000000e+02
  %42 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %34
  store float %41, ptr %42, align 4, !tbaa !58
  %43 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %35
  %44 = load float, ptr %43, align 4, !tbaa !58
  %45 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %34
  %46 = load float, ptr %45, align 4, !tbaa !58
  %47 = fsub float %44, %46
  %48 = fmul float %47, 4.000000e+02
  %49 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %34
  store float %48, ptr %49, align 4, !tbaa !58
  %50 = icmp eq i64 %35, 400
  br i1 %50, label %51, label %33, !llvm.loop !91

51:                                               ; preds = %33
  store i1 true, ptr @gamma_tabs_init, align 1
  br label %52

52:                                               ; preds = %4, %51
  ret ptr %5
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @do_gammacross_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #9 {
  %12 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  %15 = shl nsw i32 %8, 2
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = mul nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  br i1 %14, label %245, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = getelementptr inbounds float, ptr %22, i64 %19
  %24 = getelementptr inbounds float, ptr %13, i64 %19
  %25 = icmp eq ptr %6, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds float, ptr %28, i64 %19
  br label %30

30:                                               ; preds = %20, %26
  %31 = phi ptr [ null, %20 ], [ %29, %26 ]
  %32 = fsub float 1.000000e+00, %3
  %33 = icmp eq i32 %9, 0
  br i1 %33, label %1181, label %34

34:                                               ; preds = %30
  %35 = shl nsw i32 %17, 2
  %36 = icmp eq i32 %17, 0
  %37 = icmp eq i32 %17, 0
  br label %43

38:                                               ; preds = %239, %148
  %39 = phi ptr [ %144, %148 ], [ %241, %239 ]
  %40 = phi ptr [ %145, %148 ], [ %242, %239 ]
  %41 = phi ptr [ %146, %148 ], [ %243, %239 ]
  %42 = icmp eq i32 %149, 0
  br i1 %42, label %1181, label %43, !llvm.loop !92

43:                                               ; preds = %34, %38
  %44 = phi ptr [ %24, %34 ], [ %41, %38 ]
  %45 = phi ptr [ %31, %34 ], [ %40, %38 ]
  %46 = phi ptr [ %23, %34 ], [ %39, %38 ]
  %47 = phi i32 [ %9, %34 ], [ %149, %38 ]
  br i1 %36, label %143, label %48

48:                                               ; preds = %43, %137
  %49 = phi ptr [ %141, %137 ], [ %44, %43 ]
  %50 = phi ptr [ %140, %137 ], [ %45, %43 ]
  %51 = phi ptr [ %139, %137 ], [ %46, %43 ]
  %52 = phi i32 [ %53, %137 ], [ %35, %43 ]
  %53 = add nsw i32 %52, -1
  %54 = load float, ptr %51, align 4, !tbaa !58
  %55 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %56 = fmul float %54, %55
  %57 = tail call float @llvm.floor.f32(float %56)
  %58 = fptosi float %57 to i32
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = fneg float %54
  %62 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %63 = tail call float @powf(float noundef %61, float noundef %62) #16
  %64 = fneg float %63
  br label %80

65:                                               ; preds = %48
  %66 = icmp sgt i32 %58, 399
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %69 = tail call float @powf(float noundef %54, float noundef %68) #16
  br label %80

70:                                               ; preds = %65
  %71 = zext nneg i32 %58 to i64
  %72 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !58
  %74 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %71
  %75 = load float, ptr %74, align 4, !tbaa !58
  %76 = fsub float %54, %75
  %77 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %71
  %78 = load float, ptr %77, align 4, !tbaa !58
  %79 = tail call float @llvm.fmuladd.f32(float %76, float %78, float %73)
  br label %80

80:                                               ; preds = %60, %67, %70
  %81 = phi float [ %64, %60 ], [ %69, %67 ], [ %79, %70 ]
  %82 = load float, ptr %50, align 4, !tbaa !58
  %83 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %84 = fmul float %82, %83
  %85 = tail call float @llvm.floor.f32(float %84)
  %86 = fptosi float %85 to i32
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = fneg float %82
  %90 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %91 = tail call float @powf(float noundef %89, float noundef %90) #16
  %92 = fneg float %91
  br label %108

93:                                               ; preds = %80
  %94 = icmp sgt i32 %86, 399
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %97 = tail call float @powf(float noundef %82, float noundef %96) #16
  br label %108

98:                                               ; preds = %93
  %99 = zext nneg i32 %86 to i64
  %100 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %99
  %101 = load float, ptr %100, align 4, !tbaa !58
  %102 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %99
  %103 = load float, ptr %102, align 4, !tbaa !58
  %104 = fsub float %82, %103
  %105 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %99
  %106 = load float, ptr %105, align 4, !tbaa !58
  %107 = tail call float @llvm.fmuladd.f32(float %104, float %106, float %101)
  br label %108

108:                                              ; preds = %88, %95, %98
  %109 = phi float [ %92, %88 ], [ %97, %95 ], [ %107, %98 ]
  %110 = fmul float %109, %3
  %111 = tail call float @llvm.fmuladd.f32(float %32, float %81, float %110)
  %112 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %113 = fmul float %112, %111
  %114 = tail call float @llvm.floor.f32(float %113)
  %115 = fptosi float %114 to i32
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = fneg float %111
  %119 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %120 = tail call float @powf(float noundef %118, float noundef %119) #16
  %121 = fneg float %120
  br label %137

122:                                              ; preds = %108
  %123 = icmp sgt i32 %115, 399
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %126 = tail call float @powf(float noundef %111, float noundef %125) #16
  br label %137

127:                                              ; preds = %122
  %128 = zext nneg i32 %115 to i64
  %129 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %128
  %130 = load float, ptr %129, align 4, !tbaa !58
  %131 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %128
  %132 = load float, ptr %131, align 4, !tbaa !58
  %133 = fsub float %111, %132
  %134 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %128
  %135 = load float, ptr %134, align 4, !tbaa !58
  %136 = tail call float @llvm.fmuladd.f32(float %133, float %135, float %130)
  br label %137

137:                                              ; preds = %117, %124, %127
  %138 = phi float [ %121, %117 ], [ %126, %124 ], [ %136, %127 ]
  store float %138, ptr %49, align 4, !tbaa !58
  %139 = getelementptr inbounds float, ptr %51, i64 1
  %140 = getelementptr inbounds float, ptr %50, i64 1
  %141 = getelementptr inbounds float, ptr %49, i64 1
  %142 = icmp eq i32 %53, 0
  br i1 %142, label %143, label %48, !llvm.loop !93

143:                                              ; preds = %137, %43
  %144 = phi ptr [ %46, %43 ], [ %139, %137 ]
  %145 = phi ptr [ %45, %43 ], [ %140, %137 ]
  %146 = phi ptr [ %44, %43 ], [ %141, %137 ]
  %147 = icmp eq i32 %47, 1
  br i1 %147, label %1181, label %148

148:                                              ; preds = %143
  %149 = add nsw i32 %47, -2
  br i1 %37, label %38, label %150

150:                                              ; preds = %148, %239
  %151 = phi ptr [ %243, %239 ], [ %146, %148 ]
  %152 = phi ptr [ %242, %239 ], [ %145, %148 ]
  %153 = phi ptr [ %241, %239 ], [ %144, %148 ]
  %154 = phi i32 [ %155, %239 ], [ %35, %148 ]
  %155 = add nsw i32 %154, -1
  %156 = load float, ptr %153, align 4, !tbaa !58
  %157 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %158 = fmul float %156, %157
  %159 = tail call float @llvm.floor.f32(float %158)
  %160 = fptosi float %159 to i32
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %150
  %163 = fneg float %156
  %164 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %165 = tail call float @powf(float noundef %163, float noundef %164) #16
  %166 = fneg float %165
  br label %182

167:                                              ; preds = %150
  %168 = icmp sgt i32 %160, 399
  br i1 %168, label %169, label %172

169:                                              ; preds = %167
  %170 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %171 = tail call float @powf(float noundef %156, float noundef %170) #16
  br label %182

172:                                              ; preds = %167
  %173 = zext nneg i32 %160 to i64
  %174 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %173
  %175 = load float, ptr %174, align 4, !tbaa !58
  %176 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %173
  %177 = load float, ptr %176, align 4, !tbaa !58
  %178 = fsub float %156, %177
  %179 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %173
  %180 = load float, ptr %179, align 4, !tbaa !58
  %181 = tail call float @llvm.fmuladd.f32(float %178, float %180, float %175)
  br label %182

182:                                              ; preds = %162, %169, %172
  %183 = phi float [ %166, %162 ], [ %171, %169 ], [ %181, %172 ]
  %184 = load float, ptr %152, align 4, !tbaa !58
  %185 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %186 = fmul float %184, %185
  %187 = tail call float @llvm.floor.f32(float %186)
  %188 = fptosi float %187 to i32
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %182
  %191 = fneg float %184
  %192 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %193 = tail call float @powf(float noundef %191, float noundef %192) #16
  %194 = fneg float %193
  br label %210

195:                                              ; preds = %182
  %196 = icmp sgt i32 %188, 399
  br i1 %196, label %197, label %200

197:                                              ; preds = %195
  %198 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %199 = tail call float @powf(float noundef %184, float noundef %198) #16
  br label %210

200:                                              ; preds = %195
  %201 = zext nneg i32 %188 to i64
  %202 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %201
  %203 = load float, ptr %202, align 4, !tbaa !58
  %204 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %201
  %205 = load float, ptr %204, align 4, !tbaa !58
  %206 = fsub float %184, %205
  %207 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %201
  %208 = load float, ptr %207, align 4, !tbaa !58
  %209 = tail call float @llvm.fmuladd.f32(float %206, float %208, float %203)
  br label %210

210:                                              ; preds = %190, %197, %200
  %211 = phi float [ %194, %190 ], [ %199, %197 ], [ %209, %200 ]
  %212 = fmul float %211, %3
  %213 = tail call float @llvm.fmuladd.f32(float %32, float %183, float %212)
  %214 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %215 = fmul float %214, %213
  %216 = tail call float @llvm.floor.f32(float %215)
  %217 = fptosi float %216 to i32
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %210
  %220 = fneg float %213
  %221 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %222 = tail call float @powf(float noundef %220, float noundef %221) #16
  %223 = fneg float %222
  br label %239

224:                                              ; preds = %210
  %225 = icmp sgt i32 %217, 399
  br i1 %225, label %226, label %229

226:                                              ; preds = %224
  %227 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %228 = tail call float @powf(float noundef %213, float noundef %227) #16
  br label %239

229:                                              ; preds = %224
  %230 = zext nneg i32 %217 to i64
  %231 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %230
  %232 = load float, ptr %231, align 4, !tbaa !58
  %233 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %230
  %234 = load float, ptr %233, align 4, !tbaa !58
  %235 = fsub float %213, %234
  %236 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %230
  %237 = load float, ptr %236, align 4, !tbaa !58
  %238 = tail call float @llvm.fmuladd.f32(float %235, float %237, float %232)
  br label %239

239:                                              ; preds = %219, %226, %229
  %240 = phi float [ %223, %219 ], [ %228, %226 ], [ %238, %229 ]
  store float %240, ptr %151, align 4, !tbaa !58
  %241 = getelementptr inbounds float, ptr %153, i64 1
  %242 = getelementptr inbounds float, ptr %152, i64 1
  %243 = getelementptr inbounds float, ptr %151, i64 1
  %244 = icmp eq i32 %155, 0
  br i1 %244, label %38, label %150, !llvm.loop !94

245:                                              ; preds = %11
  %246 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %247 = load ptr, ptr %246, align 8, !tbaa !87
  %248 = getelementptr inbounds i8, ptr %247, i64 %19
  %249 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %250 = load ptr, ptr %249, align 8, !tbaa !87
  %251 = getelementptr inbounds i8, ptr %250, i64 %19
  %252 = icmp eq ptr %6, null
  br i1 %252, label %257, label %253

253:                                              ; preds = %245
  %254 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %255 = load ptr, ptr %254, align 8, !tbaa !87
  %256 = getelementptr inbounds i8, ptr %255, i64 %19
  br label %257

257:                                              ; preds = %245, %253
  %258 = phi ptr [ null, %245 ], [ %256, %253 ]
  %259 = fsub float 1.000000e+00, %3
  %260 = icmp eq i32 %9, 0
  br i1 %260, label %1181, label %261

261:                                              ; preds = %257
  %262 = icmp eq i32 %17, 0
  %263 = icmp eq i32 %17, 0
  br label %269

264:                                              ; preds = %1174, %729
  %265 = phi ptr [ %725, %729 ], [ %1177, %1174 ]
  %266 = phi ptr [ %726, %729 ], [ %1178, %1174 ]
  %267 = phi ptr [ %727, %729 ], [ %1179, %1174 ]
  %268 = icmp eq i32 %730, 0
  br i1 %268, label %1181, label %269, !llvm.loop !95

269:                                              ; preds = %261, %264
  %270 = phi ptr [ %251, %261 ], [ %267, %264 ]
  %271 = phi ptr [ %258, %261 ], [ %266, %264 ]
  %272 = phi ptr [ %248, %261 ], [ %265, %264 ]
  %273 = phi i32 [ %9, %261 ], [ %730, %264 ]
  br i1 %262, label %724, label %274

274:                                              ; preds = %269, %717
  %275 = phi ptr [ %722, %717 ], [ %270, %269 ]
  %276 = phi ptr [ %721, %717 ], [ %271, %269 ]
  %277 = phi ptr [ %720, %717 ], [ %272, %269 ]
  %278 = phi i32 [ %279, %717 ], [ %17, %269 ]
  %279 = add nsw i32 %278, -1
  %280 = getelementptr inbounds i8, ptr %277, i64 3
  %281 = load i8, ptr %280, align 1, !tbaa !67
  %282 = uitofp i8 %281 to float
  %283 = fmul float %282, 0x3F70101020000000
  %284 = fmul float %283, 0x3F70101020000000
  %285 = load i8, ptr %277, align 1, !tbaa !67
  %286 = uitofp i8 %285 to float
  %287 = fmul float %284, %286
  %288 = getelementptr inbounds i8, ptr %277, i64 1
  %289 = load i8, ptr %288, align 1, !tbaa !67
  %290 = uitofp i8 %289 to float
  %291 = fmul float %284, %290
  %292 = getelementptr inbounds i8, ptr %277, i64 2
  %293 = load i8, ptr %292, align 1, !tbaa !67
  %294 = uitofp i8 %293 to float
  %295 = fmul float %284, %294
  %296 = getelementptr inbounds i8, ptr %276, i64 3
  %297 = load i8, ptr %296, align 1, !tbaa !67
  %298 = uitofp i8 %297 to float
  %299 = fmul float %298, 0x3F70101020000000
  %300 = fmul float %299, 0x3F70101020000000
  %301 = load i8, ptr %276, align 1, !tbaa !67
  %302 = uitofp i8 %301 to float
  %303 = fmul float %300, %302
  %304 = getelementptr inbounds i8, ptr %276, i64 1
  %305 = load i8, ptr %304, align 1, !tbaa !67
  %306 = uitofp i8 %305 to float
  %307 = fmul float %300, %306
  %308 = getelementptr inbounds i8, ptr %276, i64 2
  %309 = load i8, ptr %308, align 1, !tbaa !67
  %310 = uitofp i8 %309 to float
  %311 = fmul float %300, %310
  %312 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %313 = fmul float %287, %312
  %314 = tail call float @llvm.floor.f32(float %313)
  %315 = fptosi float %314 to i32
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %274
  %318 = fneg float %287
  %319 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %320 = tail call float @powf(float noundef %318, float noundef %319) #16
  %321 = fneg float %320
  br label %337

322:                                              ; preds = %274
  %323 = icmp sgt i32 %315, 399
  br i1 %323, label %324, label %327

324:                                              ; preds = %322
  %325 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %326 = tail call float @powf(float noundef %287, float noundef %325) #16
  br label %337

327:                                              ; preds = %322
  %328 = zext nneg i32 %315 to i64
  %329 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %328
  %330 = load float, ptr %329, align 4, !tbaa !58
  %331 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %328
  %332 = load float, ptr %331, align 4, !tbaa !58
  %333 = fsub float %287, %332
  %334 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %328
  %335 = load float, ptr %334, align 4, !tbaa !58
  %336 = tail call float @llvm.fmuladd.f32(float %333, float %335, float %330)
  br label %337

337:                                              ; preds = %317, %324, %327
  %338 = phi float [ %321, %317 ], [ %326, %324 ], [ %336, %327 ]
  %339 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %340 = fmul float %303, %339
  %341 = tail call float @llvm.floor.f32(float %340)
  %342 = fptosi float %341 to i32
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %337
  %345 = fneg float %303
  %346 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %347 = tail call float @powf(float noundef %345, float noundef %346) #16
  %348 = fneg float %347
  br label %364

349:                                              ; preds = %337
  %350 = icmp sgt i32 %342, 399
  br i1 %350, label %351, label %354

351:                                              ; preds = %349
  %352 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %353 = tail call float @powf(float noundef %303, float noundef %352) #16
  br label %364

354:                                              ; preds = %349
  %355 = zext nneg i32 %342 to i64
  %356 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %355
  %357 = load float, ptr %356, align 4, !tbaa !58
  %358 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %355
  %359 = load float, ptr %358, align 4, !tbaa !58
  %360 = fsub float %303, %359
  %361 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %355
  %362 = load float, ptr %361, align 4, !tbaa !58
  %363 = tail call float @llvm.fmuladd.f32(float %360, float %362, float %357)
  br label %364

364:                                              ; preds = %344, %351, %354
  %365 = phi float [ %348, %344 ], [ %353, %351 ], [ %363, %354 ]
  %366 = fmul float %365, %3
  %367 = tail call float @llvm.fmuladd.f32(float %259, float %338, float %366)
  %368 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %369 = fmul float %368, %367
  %370 = tail call float @llvm.floor.f32(float %369)
  %371 = fptosi float %370 to i32
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %364
  %374 = fneg float %367
  %375 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %376 = tail call float @powf(float noundef %374, float noundef %375) #16
  %377 = fneg float %376
  br label %393

378:                                              ; preds = %364
  %379 = icmp sgt i32 %371, 399
  br i1 %379, label %380, label %383

380:                                              ; preds = %378
  %381 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %382 = tail call float @powf(float noundef %367, float noundef %381) #16
  br label %393

383:                                              ; preds = %378
  %384 = zext nneg i32 %371 to i64
  %385 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %384
  %386 = load float, ptr %385, align 4, !tbaa !58
  %387 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %384
  %388 = load float, ptr %387, align 4, !tbaa !58
  %389 = fsub float %367, %388
  %390 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %384
  %391 = load float, ptr %390, align 4, !tbaa !58
  %392 = tail call float @llvm.fmuladd.f32(float %389, float %391, float %386)
  br label %393

393:                                              ; preds = %373, %380, %383
  %394 = phi float [ %377, %373 ], [ %382, %380 ], [ %392, %383 ]
  %395 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %396 = fmul float %291, %395
  %397 = tail call float @llvm.floor.f32(float %396)
  %398 = fptosi float %397 to i32
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %393
  %401 = fneg float %291
  %402 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %403 = tail call float @powf(float noundef %401, float noundef %402) #16
  %404 = fneg float %403
  br label %420

405:                                              ; preds = %393
  %406 = icmp sgt i32 %398, 399
  br i1 %406, label %407, label %410

407:                                              ; preds = %405
  %408 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %409 = tail call float @powf(float noundef %291, float noundef %408) #16
  br label %420

410:                                              ; preds = %405
  %411 = zext nneg i32 %398 to i64
  %412 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %411
  %413 = load float, ptr %412, align 4, !tbaa !58
  %414 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %411
  %415 = load float, ptr %414, align 4, !tbaa !58
  %416 = fsub float %291, %415
  %417 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %411
  %418 = load float, ptr %417, align 4, !tbaa !58
  %419 = tail call float @llvm.fmuladd.f32(float %416, float %418, float %413)
  br label %420

420:                                              ; preds = %400, %407, %410
  %421 = phi float [ %404, %400 ], [ %409, %407 ], [ %419, %410 ]
  %422 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %423 = fmul float %307, %422
  %424 = tail call float @llvm.floor.f32(float %423)
  %425 = fptosi float %424 to i32
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %420
  %428 = fneg float %307
  %429 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %430 = tail call float @powf(float noundef %428, float noundef %429) #16
  %431 = fneg float %430
  br label %447

432:                                              ; preds = %420
  %433 = icmp sgt i32 %425, 399
  br i1 %433, label %434, label %437

434:                                              ; preds = %432
  %435 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %436 = tail call float @powf(float noundef %307, float noundef %435) #16
  br label %447

437:                                              ; preds = %432
  %438 = zext nneg i32 %425 to i64
  %439 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %438
  %440 = load float, ptr %439, align 4, !tbaa !58
  %441 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %438
  %442 = load float, ptr %441, align 4, !tbaa !58
  %443 = fsub float %307, %442
  %444 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %438
  %445 = load float, ptr %444, align 4, !tbaa !58
  %446 = tail call float @llvm.fmuladd.f32(float %443, float %445, float %440)
  br label %447

447:                                              ; preds = %427, %434, %437
  %448 = phi float [ %431, %427 ], [ %436, %434 ], [ %446, %437 ]
  %449 = fmul float %448, %3
  %450 = tail call float @llvm.fmuladd.f32(float %259, float %421, float %449)
  %451 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %452 = fmul float %451, %450
  %453 = tail call float @llvm.floor.f32(float %452)
  %454 = fptosi float %453 to i32
  %455 = icmp slt i32 %454, 0
  br i1 %455, label %456, label %461

456:                                              ; preds = %447
  %457 = fneg float %450
  %458 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %459 = tail call float @powf(float noundef %457, float noundef %458) #16
  %460 = fneg float %459
  br label %476

461:                                              ; preds = %447
  %462 = icmp sgt i32 %454, 399
  br i1 %462, label %463, label %466

463:                                              ; preds = %461
  %464 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %465 = tail call float @powf(float noundef %450, float noundef %464) #16
  br label %476

466:                                              ; preds = %461
  %467 = zext nneg i32 %454 to i64
  %468 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %467
  %469 = load float, ptr %468, align 4, !tbaa !58
  %470 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %467
  %471 = load float, ptr %470, align 4, !tbaa !58
  %472 = fsub float %450, %471
  %473 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %467
  %474 = load float, ptr %473, align 4, !tbaa !58
  %475 = tail call float @llvm.fmuladd.f32(float %472, float %474, float %469)
  br label %476

476:                                              ; preds = %456, %463, %466
  %477 = phi float [ %460, %456 ], [ %465, %463 ], [ %475, %466 ]
  %478 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %479 = fmul float %295, %478
  %480 = tail call float @llvm.floor.f32(float %479)
  %481 = fptosi float %480 to i32
  %482 = icmp slt i32 %481, 0
  br i1 %482, label %483, label %488

483:                                              ; preds = %476
  %484 = fneg float %295
  %485 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %486 = tail call float @powf(float noundef %484, float noundef %485) #16
  %487 = fneg float %486
  br label %503

488:                                              ; preds = %476
  %489 = icmp sgt i32 %481, 399
  br i1 %489, label %490, label %493

490:                                              ; preds = %488
  %491 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %492 = tail call float @powf(float noundef %295, float noundef %491) #16
  br label %503

493:                                              ; preds = %488
  %494 = zext nneg i32 %481 to i64
  %495 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %494
  %496 = load float, ptr %495, align 4, !tbaa !58
  %497 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %494
  %498 = load float, ptr %497, align 4, !tbaa !58
  %499 = fsub float %295, %498
  %500 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %494
  %501 = load float, ptr %500, align 4, !tbaa !58
  %502 = tail call float @llvm.fmuladd.f32(float %499, float %501, float %496)
  br label %503

503:                                              ; preds = %483, %490, %493
  %504 = phi float [ %487, %483 ], [ %492, %490 ], [ %502, %493 ]
  %505 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %506 = fmul float %311, %505
  %507 = tail call float @llvm.floor.f32(float %506)
  %508 = fptosi float %507 to i32
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %510, label %515

510:                                              ; preds = %503
  %511 = fneg float %311
  %512 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %513 = tail call float @powf(float noundef %511, float noundef %512) #16
  %514 = fneg float %513
  br label %530

515:                                              ; preds = %503
  %516 = icmp sgt i32 %508, 399
  br i1 %516, label %517, label %520

517:                                              ; preds = %515
  %518 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %519 = tail call float @powf(float noundef %311, float noundef %518) #16
  br label %530

520:                                              ; preds = %515
  %521 = zext nneg i32 %508 to i64
  %522 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %521
  %523 = load float, ptr %522, align 4, !tbaa !58
  %524 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %521
  %525 = load float, ptr %524, align 4, !tbaa !58
  %526 = fsub float %311, %525
  %527 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %521
  %528 = load float, ptr %527, align 4, !tbaa !58
  %529 = tail call float @llvm.fmuladd.f32(float %526, float %528, float %523)
  br label %530

530:                                              ; preds = %510, %517, %520
  %531 = phi float [ %514, %510 ], [ %519, %517 ], [ %529, %520 ]
  %532 = fmul float %531, %3
  %533 = tail call float @llvm.fmuladd.f32(float %259, float %504, float %532)
  %534 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %535 = fmul float %534, %533
  %536 = tail call float @llvm.floor.f32(float %535)
  %537 = fptosi float %536 to i32
  %538 = icmp slt i32 %537, 0
  br i1 %538, label %539, label %544

539:                                              ; preds = %530
  %540 = fneg float %533
  %541 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %542 = tail call float @powf(float noundef %540, float noundef %541) #16
  %543 = fneg float %542
  br label %559

544:                                              ; preds = %530
  %545 = icmp sgt i32 %537, 399
  br i1 %545, label %546, label %549

546:                                              ; preds = %544
  %547 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %548 = tail call float @powf(float noundef %533, float noundef %547) #16
  br label %559

549:                                              ; preds = %544
  %550 = zext nneg i32 %537 to i64
  %551 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %550
  %552 = load float, ptr %551, align 4, !tbaa !58
  %553 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %550
  %554 = load float, ptr %553, align 4, !tbaa !58
  %555 = fsub float %533, %554
  %556 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %550
  %557 = load float, ptr %556, align 4, !tbaa !58
  %558 = tail call float @llvm.fmuladd.f32(float %555, float %557, float %552)
  br label %559

559:                                              ; preds = %539, %546, %549
  %560 = phi float [ %543, %539 ], [ %548, %546 ], [ %558, %549 ]
  %561 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %562 = fmul float %283, %561
  %563 = tail call float @llvm.floor.f32(float %562)
  %564 = fptosi float %563 to i32
  %565 = icmp slt i32 %564, 0
  br i1 %565, label %566, label %571

566:                                              ; preds = %559
  %567 = fneg float %283
  %568 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %569 = tail call float @powf(float noundef %567, float noundef %568) #16
  %570 = fneg float %569
  br label %586

571:                                              ; preds = %559
  %572 = icmp sgt i32 %564, 399
  br i1 %572, label %573, label %576

573:                                              ; preds = %571
  %574 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %575 = tail call float @powf(float noundef %283, float noundef %574) #16
  br label %586

576:                                              ; preds = %571
  %577 = zext nneg i32 %564 to i64
  %578 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %577
  %579 = load float, ptr %578, align 4, !tbaa !58
  %580 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %577
  %581 = load float, ptr %580, align 4, !tbaa !58
  %582 = fsub float %283, %581
  %583 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %577
  %584 = load float, ptr %583, align 4, !tbaa !58
  %585 = tail call float @llvm.fmuladd.f32(float %582, float %584, float %579)
  br label %586

586:                                              ; preds = %566, %573, %576
  %587 = phi float [ %570, %566 ], [ %575, %573 ], [ %585, %576 ]
  %588 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %589 = fmul float %299, %588
  %590 = tail call float @llvm.floor.f32(float %589)
  %591 = fptosi float %590 to i32
  %592 = icmp slt i32 %591, 0
  br i1 %592, label %593, label %598

593:                                              ; preds = %586
  %594 = fneg float %299
  %595 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %596 = tail call float @powf(float noundef %594, float noundef %595) #16
  %597 = fneg float %596
  br label %613

598:                                              ; preds = %586
  %599 = icmp sgt i32 %591, 399
  br i1 %599, label %600, label %603

600:                                              ; preds = %598
  %601 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %602 = tail call float @powf(float noundef %299, float noundef %601) #16
  br label %613

603:                                              ; preds = %598
  %604 = zext nneg i32 %591 to i64
  %605 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %604
  %606 = load float, ptr %605, align 4, !tbaa !58
  %607 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %604
  %608 = load float, ptr %607, align 4, !tbaa !58
  %609 = fsub float %299, %608
  %610 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %604
  %611 = load float, ptr %610, align 4, !tbaa !58
  %612 = tail call float @llvm.fmuladd.f32(float %609, float %611, float %606)
  br label %613

613:                                              ; preds = %593, %600, %603
  %614 = phi float [ %597, %593 ], [ %602, %600 ], [ %612, %603 ]
  %615 = fmul float %614, %3
  %616 = tail call float @llvm.fmuladd.f32(float %259, float %587, float %615)
  %617 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %618 = fmul float %617, %616
  %619 = tail call float @llvm.floor.f32(float %618)
  %620 = fptosi float %619 to i32
  %621 = icmp slt i32 %620, 0
  br i1 %621, label %622, label %627

622:                                              ; preds = %613
  %623 = fneg float %616
  %624 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %625 = tail call float @powf(float noundef %623, float noundef %624) #16
  %626 = fneg float %625
  br label %642

627:                                              ; preds = %613
  %628 = icmp sgt i32 %620, 399
  br i1 %628, label %629, label %632

629:                                              ; preds = %627
  %630 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %631 = tail call float @powf(float noundef %616, float noundef %630) #16
  br label %642

632:                                              ; preds = %627
  %633 = zext nneg i32 %620 to i64
  %634 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %633
  %635 = load float, ptr %634, align 4, !tbaa !58
  %636 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %633
  %637 = load float, ptr %636, align 4, !tbaa !58
  %638 = fsub float %616, %637
  %639 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %633
  %640 = load float, ptr %639, align 4, !tbaa !58
  %641 = tail call float @llvm.fmuladd.f32(float %638, float %640, float %635)
  br label %642

642:                                              ; preds = %622, %629, %632
  %643 = phi float [ %626, %622 ], [ %631, %629 ], [ %641, %632 ]
  %644 = fcmp oeq float %643, 0.000000e+00
  %645 = fcmp oeq float %643, 1.000000e+00
  %646 = or i1 %644, %645
  br i1 %646, label %647, label %680

647:                                              ; preds = %642
  %648 = fcmp ugt float %394, 0.000000e+00
  br i1 %648, label %649, label %654

649:                                              ; preds = %647
  %650 = fcmp ogt float %394, 0x3FEFEFEFE0000000
  br i1 %650, label %654, label %651

651:                                              ; preds = %649
  %652 = tail call float @llvm.fmuladd.f32(float %394, float 2.550000e+02, float 5.000000e-01)
  %653 = fptoui float %652 to i8
  br label %654

654:                                              ; preds = %651, %649, %647
  %655 = phi i8 [ 0, %647 ], [ %653, %651 ], [ -1, %649 ]
  store i8 %655, ptr %275, align 1, !tbaa !67
  %656 = fcmp ugt float %477, 0.000000e+00
  br i1 %656, label %657, label %662

657:                                              ; preds = %654
  %658 = fcmp ogt float %477, 0x3FEFEFEFE0000000
  br i1 %658, label %662, label %659

659:                                              ; preds = %657
  %660 = tail call float @llvm.fmuladd.f32(float %477, float 2.550000e+02, float 5.000000e-01)
  %661 = fptoui float %660 to i8
  br label %662

662:                                              ; preds = %659, %657, %654
  %663 = phi i8 [ 0, %654 ], [ %661, %659 ], [ -1, %657 ]
  %664 = getelementptr inbounds i8, ptr %275, i64 1
  store i8 %663, ptr %664, align 1, !tbaa !67
  %665 = fcmp ugt float %560, 0.000000e+00
  br i1 %665, label %666, label %671

666:                                              ; preds = %662
  %667 = fcmp ogt float %560, 0x3FEFEFEFE0000000
  br i1 %667, label %671, label %668

668:                                              ; preds = %666
  %669 = tail call float @llvm.fmuladd.f32(float %560, float 2.550000e+02, float 5.000000e-01)
  %670 = fptoui float %669 to i8
  br label %671

671:                                              ; preds = %668, %666, %662
  %672 = phi i8 [ 0, %662 ], [ %670, %668 ], [ -1, %666 ]
  %673 = getelementptr inbounds i8, ptr %275, i64 2
  store i8 %672, ptr %673, align 1, !tbaa !67
  %674 = fcmp ugt float %643, 0.000000e+00
  br i1 %674, label %675, label %717

675:                                              ; preds = %671
  %676 = fcmp ogt float %643, 0x3FEFEFEFE0000000
  br i1 %676, label %717, label %677

677:                                              ; preds = %675
  %678 = tail call float @llvm.fmuladd.f32(float %643, float 2.550000e+02, float 5.000000e-01)
  %679 = fptoui float %678 to i8
  br label %717

680:                                              ; preds = %642
  %681 = fdiv float 1.000000e+00, %643
  %682 = fmul float %394, %681
  %683 = fcmp ugt float %682, 0.000000e+00
  br i1 %683, label %684, label %689

684:                                              ; preds = %680
  %685 = fcmp ogt float %682, 0x3FEFEFEFE0000000
  br i1 %685, label %689, label %686

686:                                              ; preds = %684
  %687 = tail call float @llvm.fmuladd.f32(float %682, float 2.550000e+02, float 5.000000e-01)
  %688 = fptoui float %687 to i8
  br label %689

689:                                              ; preds = %686, %684, %680
  %690 = phi i8 [ 0, %680 ], [ %688, %686 ], [ -1, %684 ]
  store i8 %690, ptr %275, align 1, !tbaa !67
  %691 = fmul float %477, %681
  %692 = fcmp ugt float %691, 0.000000e+00
  br i1 %692, label %693, label %698

693:                                              ; preds = %689
  %694 = fcmp ogt float %691, 0x3FEFEFEFE0000000
  br i1 %694, label %698, label %695

695:                                              ; preds = %693
  %696 = tail call float @llvm.fmuladd.f32(float %691, float 2.550000e+02, float 5.000000e-01)
  %697 = fptoui float %696 to i8
  br label %698

698:                                              ; preds = %695, %693, %689
  %699 = phi i8 [ 0, %689 ], [ %697, %695 ], [ -1, %693 ]
  %700 = getelementptr inbounds i8, ptr %275, i64 1
  store i8 %699, ptr %700, align 1, !tbaa !67
  %701 = fmul float %560, %681
  %702 = fcmp ugt float %701, 0.000000e+00
  br i1 %702, label %703, label %708

703:                                              ; preds = %698
  %704 = fcmp ogt float %701, 0x3FEFEFEFE0000000
  br i1 %704, label %708, label %705

705:                                              ; preds = %703
  %706 = tail call float @llvm.fmuladd.f32(float %701, float 2.550000e+02, float 5.000000e-01)
  %707 = fptoui float %706 to i8
  br label %708

708:                                              ; preds = %705, %703, %698
  %709 = phi i8 [ 0, %698 ], [ %707, %705 ], [ -1, %703 ]
  %710 = getelementptr inbounds i8, ptr %275, i64 2
  store i8 %709, ptr %710, align 1, !tbaa !67
  %711 = fcmp ugt float %643, 0.000000e+00
  br i1 %711, label %712, label %717

712:                                              ; preds = %708
  %713 = fcmp ogt float %643, 0x3FEFEFEFE0000000
  br i1 %713, label %717, label %714

714:                                              ; preds = %712
  %715 = tail call float @llvm.fmuladd.f32(float %643, float 2.550000e+02, float 5.000000e-01)
  %716 = fptoui float %715 to i8
  br label %717

717:                                              ; preds = %708, %712, %714, %671, %675, %677
  %718 = phi i8 [ 0, %671 ], [ %679, %677 ], [ -1, %675 ], [ 0, %708 ], [ %716, %714 ], [ -1, %712 ]
  %719 = getelementptr inbounds i8, ptr %275, i64 3
  store i8 %718, ptr %719, align 1, !tbaa !67
  %720 = getelementptr inbounds i8, ptr %277, i64 4
  %721 = getelementptr inbounds i8, ptr %276, i64 4
  %722 = getelementptr inbounds i8, ptr %275, i64 4
  %723 = icmp eq i32 %279, 0
  br i1 %723, label %724, label %274, !llvm.loop !96

724:                                              ; preds = %717, %269
  %725 = phi ptr [ %272, %269 ], [ %720, %717 ]
  %726 = phi ptr [ %271, %269 ], [ %721, %717 ]
  %727 = phi ptr [ %270, %269 ], [ %722, %717 ]
  %728 = icmp eq i32 %273, 1
  br i1 %728, label %1181, label %729

729:                                              ; preds = %724
  %730 = add nsw i32 %273, -2
  br i1 %263, label %264, label %731

731:                                              ; preds = %729, %1174
  %732 = phi ptr [ %1179, %1174 ], [ %727, %729 ]
  %733 = phi ptr [ %1178, %1174 ], [ %726, %729 ]
  %734 = phi ptr [ %1177, %1174 ], [ %725, %729 ]
  %735 = phi i32 [ %736, %1174 ], [ %17, %729 ]
  %736 = add nsw i32 %735, -1
  %737 = getelementptr inbounds i8, ptr %734, i64 3
  %738 = load i8, ptr %737, align 1, !tbaa !67
  %739 = uitofp i8 %738 to float
  %740 = fmul float %739, 0x3F70101020000000
  %741 = fmul float %740, 0x3F70101020000000
  %742 = load i8, ptr %734, align 1, !tbaa !67
  %743 = uitofp i8 %742 to float
  %744 = fmul float %741, %743
  %745 = getelementptr inbounds i8, ptr %734, i64 1
  %746 = load i8, ptr %745, align 1, !tbaa !67
  %747 = uitofp i8 %746 to float
  %748 = fmul float %741, %747
  %749 = getelementptr inbounds i8, ptr %734, i64 2
  %750 = load i8, ptr %749, align 1, !tbaa !67
  %751 = uitofp i8 %750 to float
  %752 = fmul float %741, %751
  %753 = getelementptr inbounds i8, ptr %733, i64 3
  %754 = load i8, ptr %753, align 1, !tbaa !67
  %755 = uitofp i8 %754 to float
  %756 = fmul float %755, 0x3F70101020000000
  %757 = fmul float %756, 0x3F70101020000000
  %758 = load i8, ptr %733, align 1, !tbaa !67
  %759 = uitofp i8 %758 to float
  %760 = fmul float %757, %759
  %761 = getelementptr inbounds i8, ptr %733, i64 1
  %762 = load i8, ptr %761, align 1, !tbaa !67
  %763 = uitofp i8 %762 to float
  %764 = fmul float %757, %763
  %765 = getelementptr inbounds i8, ptr %733, i64 2
  %766 = load i8, ptr %765, align 1, !tbaa !67
  %767 = uitofp i8 %766 to float
  %768 = fmul float %757, %767
  %769 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %770 = fmul float %744, %769
  %771 = tail call float @llvm.floor.f32(float %770)
  %772 = fptosi float %771 to i32
  %773 = icmp slt i32 %772, 0
  br i1 %773, label %774, label %779

774:                                              ; preds = %731
  %775 = fneg float %744
  %776 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %777 = tail call float @powf(float noundef %775, float noundef %776) #16
  %778 = fneg float %777
  br label %794

779:                                              ; preds = %731
  %780 = icmp sgt i32 %772, 399
  br i1 %780, label %781, label %784

781:                                              ; preds = %779
  %782 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %783 = tail call float @powf(float noundef %744, float noundef %782) #16
  br label %794

784:                                              ; preds = %779
  %785 = zext nneg i32 %772 to i64
  %786 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %785
  %787 = load float, ptr %786, align 4, !tbaa !58
  %788 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %785
  %789 = load float, ptr %788, align 4, !tbaa !58
  %790 = fsub float %744, %789
  %791 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %785
  %792 = load float, ptr %791, align 4, !tbaa !58
  %793 = tail call float @llvm.fmuladd.f32(float %790, float %792, float %787)
  br label %794

794:                                              ; preds = %774, %781, %784
  %795 = phi float [ %778, %774 ], [ %783, %781 ], [ %793, %784 ]
  %796 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %797 = fmul float %760, %796
  %798 = tail call float @llvm.floor.f32(float %797)
  %799 = fptosi float %798 to i32
  %800 = icmp slt i32 %799, 0
  br i1 %800, label %801, label %806

801:                                              ; preds = %794
  %802 = fneg float %760
  %803 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %804 = tail call float @powf(float noundef %802, float noundef %803) #16
  %805 = fneg float %804
  br label %821

806:                                              ; preds = %794
  %807 = icmp sgt i32 %799, 399
  br i1 %807, label %808, label %811

808:                                              ; preds = %806
  %809 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %810 = tail call float @powf(float noundef %760, float noundef %809) #16
  br label %821

811:                                              ; preds = %806
  %812 = zext nneg i32 %799 to i64
  %813 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %812
  %814 = load float, ptr %813, align 4, !tbaa !58
  %815 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %812
  %816 = load float, ptr %815, align 4, !tbaa !58
  %817 = fsub float %760, %816
  %818 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %812
  %819 = load float, ptr %818, align 4, !tbaa !58
  %820 = tail call float @llvm.fmuladd.f32(float %817, float %819, float %814)
  br label %821

821:                                              ; preds = %801, %808, %811
  %822 = phi float [ %805, %801 ], [ %810, %808 ], [ %820, %811 ]
  %823 = fmul float %822, %3
  %824 = tail call float @llvm.fmuladd.f32(float %259, float %795, float %823)
  %825 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %826 = fmul float %825, %824
  %827 = tail call float @llvm.floor.f32(float %826)
  %828 = fptosi float %827 to i32
  %829 = icmp slt i32 %828, 0
  br i1 %829, label %830, label %835

830:                                              ; preds = %821
  %831 = fneg float %824
  %832 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %833 = tail call float @powf(float noundef %831, float noundef %832) #16
  %834 = fneg float %833
  br label %850

835:                                              ; preds = %821
  %836 = icmp sgt i32 %828, 399
  br i1 %836, label %837, label %840

837:                                              ; preds = %835
  %838 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %839 = tail call float @powf(float noundef %824, float noundef %838) #16
  br label %850

840:                                              ; preds = %835
  %841 = zext nneg i32 %828 to i64
  %842 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %841
  %843 = load float, ptr %842, align 4, !tbaa !58
  %844 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %841
  %845 = load float, ptr %844, align 4, !tbaa !58
  %846 = fsub float %824, %845
  %847 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %841
  %848 = load float, ptr %847, align 4, !tbaa !58
  %849 = tail call float @llvm.fmuladd.f32(float %846, float %848, float %843)
  br label %850

850:                                              ; preds = %830, %837, %840
  %851 = phi float [ %834, %830 ], [ %839, %837 ], [ %849, %840 ]
  %852 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %853 = fmul float %748, %852
  %854 = tail call float @llvm.floor.f32(float %853)
  %855 = fptosi float %854 to i32
  %856 = icmp slt i32 %855, 0
  br i1 %856, label %857, label %862

857:                                              ; preds = %850
  %858 = fneg float %748
  %859 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %860 = tail call float @powf(float noundef %858, float noundef %859) #16
  %861 = fneg float %860
  br label %877

862:                                              ; preds = %850
  %863 = icmp sgt i32 %855, 399
  br i1 %863, label %864, label %867

864:                                              ; preds = %862
  %865 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %866 = tail call float @powf(float noundef %748, float noundef %865) #16
  br label %877

867:                                              ; preds = %862
  %868 = zext nneg i32 %855 to i64
  %869 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %868
  %870 = load float, ptr %869, align 4, !tbaa !58
  %871 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %868
  %872 = load float, ptr %871, align 4, !tbaa !58
  %873 = fsub float %748, %872
  %874 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %868
  %875 = load float, ptr %874, align 4, !tbaa !58
  %876 = tail call float @llvm.fmuladd.f32(float %873, float %875, float %870)
  br label %877

877:                                              ; preds = %857, %864, %867
  %878 = phi float [ %861, %857 ], [ %866, %864 ], [ %876, %867 ]
  %879 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %880 = fmul float %764, %879
  %881 = tail call float @llvm.floor.f32(float %880)
  %882 = fptosi float %881 to i32
  %883 = icmp slt i32 %882, 0
  br i1 %883, label %884, label %889

884:                                              ; preds = %877
  %885 = fneg float %764
  %886 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %887 = tail call float @powf(float noundef %885, float noundef %886) #16
  %888 = fneg float %887
  br label %904

889:                                              ; preds = %877
  %890 = icmp sgt i32 %882, 399
  br i1 %890, label %891, label %894

891:                                              ; preds = %889
  %892 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %893 = tail call float @powf(float noundef %764, float noundef %892) #16
  br label %904

894:                                              ; preds = %889
  %895 = zext nneg i32 %882 to i64
  %896 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %895
  %897 = load float, ptr %896, align 4, !tbaa !58
  %898 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %895
  %899 = load float, ptr %898, align 4, !tbaa !58
  %900 = fsub float %764, %899
  %901 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %895
  %902 = load float, ptr %901, align 4, !tbaa !58
  %903 = tail call float @llvm.fmuladd.f32(float %900, float %902, float %897)
  br label %904

904:                                              ; preds = %884, %891, %894
  %905 = phi float [ %888, %884 ], [ %893, %891 ], [ %903, %894 ]
  %906 = fmul float %905, %3
  %907 = tail call float @llvm.fmuladd.f32(float %259, float %878, float %906)
  %908 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %909 = fmul float %908, %907
  %910 = tail call float @llvm.floor.f32(float %909)
  %911 = fptosi float %910 to i32
  %912 = icmp slt i32 %911, 0
  br i1 %912, label %913, label %918

913:                                              ; preds = %904
  %914 = fneg float %907
  %915 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %916 = tail call float @powf(float noundef %914, float noundef %915) #16
  %917 = fneg float %916
  br label %933

918:                                              ; preds = %904
  %919 = icmp sgt i32 %911, 399
  br i1 %919, label %920, label %923

920:                                              ; preds = %918
  %921 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %922 = tail call float @powf(float noundef %907, float noundef %921) #16
  br label %933

923:                                              ; preds = %918
  %924 = zext nneg i32 %911 to i64
  %925 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %924
  %926 = load float, ptr %925, align 4, !tbaa !58
  %927 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %924
  %928 = load float, ptr %927, align 4, !tbaa !58
  %929 = fsub float %907, %928
  %930 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %924
  %931 = load float, ptr %930, align 4, !tbaa !58
  %932 = tail call float @llvm.fmuladd.f32(float %929, float %931, float %926)
  br label %933

933:                                              ; preds = %913, %920, %923
  %934 = phi float [ %917, %913 ], [ %922, %920 ], [ %932, %923 ]
  %935 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %936 = fmul float %752, %935
  %937 = tail call float @llvm.floor.f32(float %936)
  %938 = fptosi float %937 to i32
  %939 = icmp slt i32 %938, 0
  br i1 %939, label %940, label %945

940:                                              ; preds = %933
  %941 = fneg float %752
  %942 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %943 = tail call float @powf(float noundef %941, float noundef %942) #16
  %944 = fneg float %943
  br label %960

945:                                              ; preds = %933
  %946 = icmp sgt i32 %938, 399
  br i1 %946, label %947, label %950

947:                                              ; preds = %945
  %948 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %949 = tail call float @powf(float noundef %752, float noundef %948) #16
  br label %960

950:                                              ; preds = %945
  %951 = zext nneg i32 %938 to i64
  %952 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %951
  %953 = load float, ptr %952, align 4, !tbaa !58
  %954 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %951
  %955 = load float, ptr %954, align 4, !tbaa !58
  %956 = fsub float %752, %955
  %957 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %951
  %958 = load float, ptr %957, align 4, !tbaa !58
  %959 = tail call float @llvm.fmuladd.f32(float %956, float %958, float %953)
  br label %960

960:                                              ; preds = %940, %947, %950
  %961 = phi float [ %944, %940 ], [ %949, %947 ], [ %959, %950 ]
  %962 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %963 = fmul float %768, %962
  %964 = tail call float @llvm.floor.f32(float %963)
  %965 = fptosi float %964 to i32
  %966 = icmp slt i32 %965, 0
  br i1 %966, label %967, label %972

967:                                              ; preds = %960
  %968 = fneg float %768
  %969 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %970 = tail call float @powf(float noundef %968, float noundef %969) #16
  %971 = fneg float %970
  br label %987

972:                                              ; preds = %960
  %973 = icmp sgt i32 %965, 399
  br i1 %973, label %974, label %977

974:                                              ; preds = %972
  %975 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %976 = tail call float @powf(float noundef %768, float noundef %975) #16
  br label %987

977:                                              ; preds = %972
  %978 = zext nneg i32 %965 to i64
  %979 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %978
  %980 = load float, ptr %979, align 4, !tbaa !58
  %981 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %978
  %982 = load float, ptr %981, align 4, !tbaa !58
  %983 = fsub float %768, %982
  %984 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %978
  %985 = load float, ptr %984, align 4, !tbaa !58
  %986 = tail call float @llvm.fmuladd.f32(float %983, float %985, float %980)
  br label %987

987:                                              ; preds = %967, %974, %977
  %988 = phi float [ %971, %967 ], [ %976, %974 ], [ %986, %977 ]
  %989 = fmul float %988, %3
  %990 = tail call float @llvm.fmuladd.f32(float %259, float %961, float %989)
  %991 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %992 = fmul float %991, %990
  %993 = tail call float @llvm.floor.f32(float %992)
  %994 = fptosi float %993 to i32
  %995 = icmp slt i32 %994, 0
  br i1 %995, label %996, label %1001

996:                                              ; preds = %987
  %997 = fneg float %990
  %998 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %999 = tail call float @powf(float noundef %997, float noundef %998) #16
  %1000 = fneg float %999
  br label %1016

1001:                                             ; preds = %987
  %1002 = icmp sgt i32 %994, 399
  br i1 %1002, label %1003, label %1006

1003:                                             ; preds = %1001
  %1004 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %1005 = tail call float @powf(float noundef %990, float noundef %1004) #16
  br label %1016

1006:                                             ; preds = %1001
  %1007 = zext nneg i32 %994 to i64
  %1008 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %1007
  %1009 = load float, ptr %1008, align 4, !tbaa !58
  %1010 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %1007
  %1011 = load float, ptr %1010, align 4, !tbaa !58
  %1012 = fsub float %990, %1011
  %1013 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %1007
  %1014 = load float, ptr %1013, align 4, !tbaa !58
  %1015 = tail call float @llvm.fmuladd.f32(float %1012, float %1014, float %1009)
  br label %1016

1016:                                             ; preds = %996, %1003, %1006
  %1017 = phi float [ %1000, %996 ], [ %1005, %1003 ], [ %1015, %1006 ]
  %1018 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %1019 = fmul float %740, %1018
  %1020 = tail call float @llvm.floor.f32(float %1019)
  %1021 = fptosi float %1020 to i32
  %1022 = icmp slt i32 %1021, 0
  br i1 %1022, label %1023, label %1028

1023:                                             ; preds = %1016
  %1024 = fneg float %740
  %1025 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %1026 = tail call float @powf(float noundef %1024, float noundef %1025) #16
  %1027 = fneg float %1026
  br label %1043

1028:                                             ; preds = %1016
  %1029 = icmp sgt i32 %1021, 399
  br i1 %1029, label %1030, label %1033

1030:                                             ; preds = %1028
  %1031 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %1032 = tail call float @powf(float noundef %740, float noundef %1031) #16
  br label %1043

1033:                                             ; preds = %1028
  %1034 = zext nneg i32 %1021 to i64
  %1035 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %1034
  %1036 = load float, ptr %1035, align 4, !tbaa !58
  %1037 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %1034
  %1038 = load float, ptr %1037, align 4, !tbaa !58
  %1039 = fsub float %740, %1038
  %1040 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %1034
  %1041 = load float, ptr %1040, align 4, !tbaa !58
  %1042 = tail call float @llvm.fmuladd.f32(float %1039, float %1041, float %1036)
  br label %1043

1043:                                             ; preds = %1023, %1030, %1033
  %1044 = phi float [ %1027, %1023 ], [ %1032, %1030 ], [ %1042, %1033 ]
  %1045 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %1046 = fmul float %756, %1045
  %1047 = tail call float @llvm.floor.f32(float %1046)
  %1048 = fptosi float %1047 to i32
  %1049 = icmp slt i32 %1048, 0
  br i1 %1049, label %1050, label %1055

1050:                                             ; preds = %1043
  %1051 = fneg float %756
  %1052 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %1053 = tail call float @powf(float noundef %1051, float noundef %1052) #16
  %1054 = fneg float %1053
  br label %1070

1055:                                             ; preds = %1043
  %1056 = icmp sgt i32 %1048, 399
  br i1 %1056, label %1057, label %1060

1057:                                             ; preds = %1055
  %1058 = load float, ptr @valid_inv_gamma, align 4, !tbaa !58
  %1059 = tail call float @powf(float noundef %756, float noundef %1058) #16
  br label %1070

1060:                                             ; preds = %1055
  %1061 = zext nneg i32 %1048 to i64
  %1062 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %1061
  %1063 = load float, ptr %1062, align 4, !tbaa !58
  %1064 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %1061
  %1065 = load float, ptr %1064, align 4, !tbaa !58
  %1066 = fsub float %756, %1065
  %1067 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %1061
  %1068 = load float, ptr %1067, align 4, !tbaa !58
  %1069 = tail call float @llvm.fmuladd.f32(float %1066, float %1068, float %1063)
  br label %1070

1070:                                             ; preds = %1050, %1057, %1060
  %1071 = phi float [ %1054, %1050 ], [ %1059, %1057 ], [ %1069, %1060 ]
  %1072 = fmul float %1071, %3
  %1073 = tail call float @llvm.fmuladd.f32(float %259, float %1044, float %1072)
  %1074 = load float, ptr @inv_color_step, align 4, !tbaa !58
  %1075 = fmul float %1074, %1073
  %1076 = tail call float @llvm.floor.f32(float %1075)
  %1077 = fptosi float %1076 to i32
  %1078 = icmp slt i32 %1077, 0
  br i1 %1078, label %1079, label %1084

1079:                                             ; preds = %1070
  %1080 = fneg float %1073
  %1081 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %1082 = tail call float @powf(float noundef %1080, float noundef %1081) #16
  %1083 = fneg float %1082
  br label %1099

1084:                                             ; preds = %1070
  %1085 = icmp sgt i32 %1077, 399
  br i1 %1085, label %1086, label %1089

1086:                                             ; preds = %1084
  %1087 = load float, ptr @valid_gamma, align 4, !tbaa !58
  %1088 = tail call float @powf(float noundef %1073, float noundef %1087) #16
  br label %1099

1089:                                             ; preds = %1084
  %1090 = zext nneg i32 %1077 to i64
  %1091 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %1090
  %1092 = load float, ptr %1091, align 4, !tbaa !58
  %1093 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %1090
  %1094 = load float, ptr %1093, align 4, !tbaa !58
  %1095 = fsub float %1073, %1094
  %1096 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %1090
  %1097 = load float, ptr %1096, align 4, !tbaa !58
  %1098 = tail call float @llvm.fmuladd.f32(float %1095, float %1097, float %1092)
  br label %1099

1099:                                             ; preds = %1079, %1086, %1089
  %1100 = phi float [ %1083, %1079 ], [ %1088, %1086 ], [ %1098, %1089 ]
  %1101 = fcmp oeq float %1100, 0.000000e+00
  %1102 = fcmp oeq float %1100, 1.000000e+00
  %1103 = or i1 %1101, %1102
  br i1 %1103, label %1104, label %1137

1104:                                             ; preds = %1099
  %1105 = fcmp ugt float %851, 0.000000e+00
  br i1 %1105, label %1106, label %1111

1106:                                             ; preds = %1104
  %1107 = fcmp ogt float %851, 0x3FEFEFEFE0000000
  br i1 %1107, label %1111, label %1108

1108:                                             ; preds = %1106
  %1109 = tail call float @llvm.fmuladd.f32(float %851, float 2.550000e+02, float 5.000000e-01)
  %1110 = fptoui float %1109 to i8
  br label %1111

1111:                                             ; preds = %1108, %1106, %1104
  %1112 = phi i8 [ 0, %1104 ], [ %1110, %1108 ], [ -1, %1106 ]
  store i8 %1112, ptr %732, align 1, !tbaa !67
  %1113 = fcmp ugt float %934, 0.000000e+00
  br i1 %1113, label %1114, label %1119

1114:                                             ; preds = %1111
  %1115 = fcmp ogt float %934, 0x3FEFEFEFE0000000
  br i1 %1115, label %1119, label %1116

1116:                                             ; preds = %1114
  %1117 = tail call float @llvm.fmuladd.f32(float %934, float 2.550000e+02, float 5.000000e-01)
  %1118 = fptoui float %1117 to i8
  br label %1119

1119:                                             ; preds = %1116, %1114, %1111
  %1120 = phi i8 [ 0, %1111 ], [ %1118, %1116 ], [ -1, %1114 ]
  %1121 = getelementptr inbounds i8, ptr %732, i64 1
  store i8 %1120, ptr %1121, align 1, !tbaa !67
  %1122 = fcmp ugt float %1017, 0.000000e+00
  br i1 %1122, label %1123, label %1128

1123:                                             ; preds = %1119
  %1124 = fcmp ogt float %1017, 0x3FEFEFEFE0000000
  br i1 %1124, label %1128, label %1125

1125:                                             ; preds = %1123
  %1126 = tail call float @llvm.fmuladd.f32(float %1017, float 2.550000e+02, float 5.000000e-01)
  %1127 = fptoui float %1126 to i8
  br label %1128

1128:                                             ; preds = %1125, %1123, %1119
  %1129 = phi i8 [ 0, %1119 ], [ %1127, %1125 ], [ -1, %1123 ]
  %1130 = getelementptr inbounds i8, ptr %732, i64 2
  store i8 %1129, ptr %1130, align 1, !tbaa !67
  %1131 = fcmp ugt float %1100, 0.000000e+00
  br i1 %1131, label %1132, label %1174

1132:                                             ; preds = %1128
  %1133 = fcmp ogt float %1100, 0x3FEFEFEFE0000000
  br i1 %1133, label %1174, label %1134

1134:                                             ; preds = %1132
  %1135 = tail call float @llvm.fmuladd.f32(float %1100, float 2.550000e+02, float 5.000000e-01)
  %1136 = fptoui float %1135 to i8
  br label %1174

1137:                                             ; preds = %1099
  %1138 = fdiv float 1.000000e+00, %1100
  %1139 = fmul float %851, %1138
  %1140 = fcmp ugt float %1139, 0.000000e+00
  br i1 %1140, label %1141, label %1146

1141:                                             ; preds = %1137
  %1142 = fcmp ogt float %1139, 0x3FEFEFEFE0000000
  br i1 %1142, label %1146, label %1143

1143:                                             ; preds = %1141
  %1144 = tail call float @llvm.fmuladd.f32(float %1139, float 2.550000e+02, float 5.000000e-01)
  %1145 = fptoui float %1144 to i8
  br label %1146

1146:                                             ; preds = %1143, %1141, %1137
  %1147 = phi i8 [ 0, %1137 ], [ %1145, %1143 ], [ -1, %1141 ]
  store i8 %1147, ptr %732, align 1, !tbaa !67
  %1148 = fmul float %934, %1138
  %1149 = fcmp ugt float %1148, 0.000000e+00
  br i1 %1149, label %1150, label %1155

1150:                                             ; preds = %1146
  %1151 = fcmp ogt float %1148, 0x3FEFEFEFE0000000
  br i1 %1151, label %1155, label %1152

1152:                                             ; preds = %1150
  %1153 = tail call float @llvm.fmuladd.f32(float %1148, float 2.550000e+02, float 5.000000e-01)
  %1154 = fptoui float %1153 to i8
  br label %1155

1155:                                             ; preds = %1152, %1150, %1146
  %1156 = phi i8 [ 0, %1146 ], [ %1154, %1152 ], [ -1, %1150 ]
  %1157 = getelementptr inbounds i8, ptr %732, i64 1
  store i8 %1156, ptr %1157, align 1, !tbaa !67
  %1158 = fmul float %1017, %1138
  %1159 = fcmp ugt float %1158, 0.000000e+00
  br i1 %1159, label %1160, label %1165

1160:                                             ; preds = %1155
  %1161 = fcmp ogt float %1158, 0x3FEFEFEFE0000000
  br i1 %1161, label %1165, label %1162

1162:                                             ; preds = %1160
  %1163 = tail call float @llvm.fmuladd.f32(float %1158, float 2.550000e+02, float 5.000000e-01)
  %1164 = fptoui float %1163 to i8
  br label %1165

1165:                                             ; preds = %1162, %1160, %1155
  %1166 = phi i8 [ 0, %1155 ], [ %1164, %1162 ], [ -1, %1160 ]
  %1167 = getelementptr inbounds i8, ptr %732, i64 2
  store i8 %1166, ptr %1167, align 1, !tbaa !67
  %1168 = fcmp ugt float %1100, 0.000000e+00
  br i1 %1168, label %1169, label %1174

1169:                                             ; preds = %1165
  %1170 = fcmp ogt float %1100, 0x3FEFEFEFE0000000
  br i1 %1170, label %1174, label %1171

1171:                                             ; preds = %1169
  %1172 = tail call float @llvm.fmuladd.f32(float %1100, float 2.550000e+02, float 5.000000e-01)
  %1173 = fptoui float %1172 to i8
  br label %1174

1174:                                             ; preds = %1165, %1169, %1171, %1128, %1132, %1134
  %1175 = phi i8 [ 0, %1128 ], [ %1136, %1134 ], [ -1, %1132 ], [ 0, %1165 ], [ %1173, %1171 ], [ -1, %1169 ]
  %1176 = getelementptr inbounds i8, ptr %732, i64 3
  store i8 %1175, ptr %1176, align 1, !tbaa !67
  %1177 = getelementptr inbounds i8, ptr %734, i64 4
  %1178 = getelementptr inbounds i8, ptr %733, i64 4
  %1179 = getelementptr inbounds i8, ptr %732, i64 4
  %1180 = icmp eq i32 %736, 0
  br i1 %1180, label %264, label %731, !llvm.loop !97

1181:                                             ; preds = %38, %143, %264, %724, %30, %257
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_add_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 {
  %12 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  %15 = shl nsw i32 %8, 2
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = mul nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  br i1 %14, label %117, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = getelementptr inbounds float, ptr %22, i64 %19
  %24 = getelementptr inbounds float, ptr %13, i64 %19
  %25 = icmp eq ptr %6, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds float, ptr %28, i64 %19
  br label %30

30:                                               ; preds = %20, %26
  %31 = phi ptr [ null, %20 ], [ %29, %26 ]
  %32 = icmp eq i32 %9, 0
  br i1 %32, label %248, label %33

33:                                               ; preds = %30
  %34 = icmp eq i32 %17, 0
  %35 = fsub float 1.000000e+00, %3
  %36 = icmp eq i32 %17, 0
  %37 = fsub float 1.000000e+00, %4
  br label %43

38:                                               ; preds = %86, %84
  %39 = phi ptr [ %80, %84 ], [ %113, %86 ]
  %40 = phi ptr [ %81, %84 ], [ %114, %86 ]
  %41 = phi ptr [ %82, %84 ], [ %115, %86 ]
  %42 = icmp eq i32 %85, 0
  br i1 %42, label %248, label %43, !llvm.loop !98

43:                                               ; preds = %33, %38
  %44 = phi ptr [ %24, %33 ], [ %41, %38 ]
  %45 = phi ptr [ %31, %33 ], [ %40, %38 ]
  %46 = phi ptr [ %23, %33 ], [ %39, %38 ]
  %47 = phi i32 [ %9, %33 ], [ %85, %38 ]
  br i1 %34, label %79, label %48

48:                                               ; preds = %43, %48
  %49 = phi ptr [ %77, %48 ], [ %44, %43 ]
  %50 = phi ptr [ %76, %48 ], [ %45, %43 ]
  %51 = phi ptr [ %75, %48 ], [ %46, %43 ]
  %52 = phi i32 [ %53, %48 ], [ %17, %43 ]
  %53 = add nsw i32 %52, -1
  %54 = getelementptr inbounds float, ptr %51, i64 3
  %55 = load float, ptr %54, align 4, !tbaa !58
  %56 = fneg float %55
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %35, float 1.000000e+00)
  %58 = load float, ptr %51, align 4, !tbaa !58
  %59 = load float, ptr %50, align 4, !tbaa !58
  %60 = tail call float @llvm.fmuladd.f32(float %57, float %59, float %58)
  store float %60, ptr %49, align 4, !tbaa !58
  %61 = getelementptr inbounds float, ptr %51, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !58
  %63 = getelementptr inbounds float, ptr %50, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !58
  %65 = tail call float @llvm.fmuladd.f32(float %57, float %64, float %62)
  %66 = getelementptr inbounds float, ptr %49, i64 1
  store float %65, ptr %66, align 4, !tbaa !58
  %67 = getelementptr inbounds float, ptr %51, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !58
  %69 = getelementptr inbounds float, ptr %50, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !58
  %71 = tail call float @llvm.fmuladd.f32(float %57, float %70, float %68)
  %72 = getelementptr inbounds float, ptr %49, i64 2
  store float %71, ptr %72, align 4, !tbaa !58
  %73 = load float, ptr %54, align 4, !tbaa !58
  %74 = getelementptr inbounds float, ptr %49, i64 3
  store float %73, ptr %74, align 4, !tbaa !58
  %75 = getelementptr inbounds float, ptr %51, i64 4
  %76 = getelementptr inbounds float, ptr %50, i64 4
  %77 = getelementptr inbounds float, ptr %49, i64 4
  %78 = icmp eq i32 %53, 0
  br i1 %78, label %79, label %48, !llvm.loop !99

79:                                               ; preds = %48, %43
  %80 = phi ptr [ %46, %43 ], [ %75, %48 ]
  %81 = phi ptr [ %45, %43 ], [ %76, %48 ]
  %82 = phi ptr [ %44, %43 ], [ %77, %48 ]
  %83 = icmp eq i32 %47, 1
  br i1 %83, label %248, label %84

84:                                               ; preds = %79
  %85 = add nsw i32 %47, -2
  br i1 %36, label %38, label %86

86:                                               ; preds = %84, %86
  %87 = phi ptr [ %115, %86 ], [ %82, %84 ]
  %88 = phi ptr [ %114, %86 ], [ %81, %84 ]
  %89 = phi ptr [ %113, %86 ], [ %80, %84 ]
  %90 = phi i32 [ %91, %86 ], [ %17, %84 ]
  %91 = add nsw i32 %90, -1
  %92 = getelementptr inbounds float, ptr %89, i64 3
  %93 = load float, ptr %92, align 4, !tbaa !58
  %94 = fneg float %93
  %95 = tail call float @llvm.fmuladd.f32(float %94, float %37, float 1.000000e+00)
  %96 = load float, ptr %89, align 4, !tbaa !58
  %97 = load float, ptr %88, align 4, !tbaa !58
  %98 = tail call float @llvm.fmuladd.f32(float %95, float %97, float %96)
  store float %98, ptr %87, align 4, !tbaa !58
  %99 = getelementptr inbounds float, ptr %89, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !58
  %101 = getelementptr inbounds float, ptr %88, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !58
  %103 = tail call float @llvm.fmuladd.f32(float %95, float %102, float %100)
  %104 = getelementptr inbounds float, ptr %87, i64 1
  store float %103, ptr %104, align 4, !tbaa !58
  %105 = getelementptr inbounds float, ptr %89, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !58
  %107 = getelementptr inbounds float, ptr %88, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !58
  %109 = tail call float @llvm.fmuladd.f32(float %95, float %108, float %106)
  %110 = getelementptr inbounds float, ptr %87, i64 2
  store float %109, ptr %110, align 4, !tbaa !58
  %111 = load float, ptr %92, align 4, !tbaa !58
  %112 = getelementptr inbounds float, ptr %87, i64 3
  store float %111, ptr %112, align 4, !tbaa !58
  %113 = getelementptr inbounds float, ptr %89, i64 4
  %114 = getelementptr inbounds float, ptr %88, i64 4
  %115 = getelementptr inbounds float, ptr %87, i64 4
  %116 = icmp eq i32 %91, 0
  br i1 %116, label %38, label %86, !llvm.loop !100

117:                                              ; preds = %11
  %118 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %119 = load ptr, ptr %118, align 8, !tbaa !87
  %120 = getelementptr inbounds i8, ptr %119, i64 %19
  %121 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %122 = load ptr, ptr %121, align 8, !tbaa !87
  %123 = getelementptr inbounds i8, ptr %122, i64 %19
  %124 = icmp eq ptr %6, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !87
  %128 = getelementptr inbounds i8, ptr %127, i64 %19
  br label %129

129:                                              ; preds = %117, %125
  %130 = phi ptr [ null, %117 ], [ %128, %125 ]
  %131 = fmul float %3, 2.560000e+02
  %132 = fptosi float %131 to i32
  %133 = fmul float %4, 2.560000e+02
  %134 = fptosi float %133 to i32
  %135 = icmp eq i32 %9, 0
  br i1 %135, label %248, label %136

136:                                              ; preds = %129
  %137 = icmp eq i32 %17, 0
  %138 = icmp eq i32 %17, 0
  br label %144

139:                                              ; preds = %202, %200
  %140 = phi ptr [ %196, %200 ], [ %244, %202 ]
  %141 = phi ptr [ %197, %200 ], [ %245, %202 ]
  %142 = phi ptr [ %198, %200 ], [ %246, %202 ]
  %143 = icmp eq i32 %201, 0
  br i1 %143, label %248, label %144, !llvm.loop !101

144:                                              ; preds = %136, %139
  %145 = phi ptr [ %123, %136 ], [ %142, %139 ]
  %146 = phi ptr [ %130, %136 ], [ %141, %139 ]
  %147 = phi ptr [ %120, %136 ], [ %140, %139 ]
  %148 = phi i32 [ %9, %136 ], [ %201, %139 ]
  br i1 %137, label %195, label %149

149:                                              ; preds = %144, %149
  %150 = phi ptr [ %193, %149 ], [ %145, %144 ]
  %151 = phi ptr [ %192, %149 ], [ %146, %144 ]
  %152 = phi ptr [ %191, %149 ], [ %147, %144 ]
  %153 = phi i32 [ %154, %149 ], [ %17, %144 ]
  %154 = add nsw i32 %153, -1
  %155 = load i8, ptr %152, align 1, !tbaa !67
  %156 = zext i8 %155 to i32
  %157 = load i8, ptr %151, align 1, !tbaa !67
  %158 = zext i8 %157 to i32
  %159 = mul nsw i32 %158, %132
  %160 = ashr i32 %159, 8
  %161 = add nsw i32 %160, %156
  %162 = tail call i32 @llvm.smin.i32(i32 %161, i32 255)
  %163 = trunc i32 %162 to i8
  store i8 %163, ptr %150, align 1, !tbaa !67
  %164 = getelementptr inbounds i8, ptr %152, i64 1
  %165 = load i8, ptr %164, align 1, !tbaa !67
  %166 = zext i8 %165 to i32
  %167 = getelementptr inbounds i8, ptr %151, i64 1
  %168 = load i8, ptr %167, align 1, !tbaa !67
  %169 = zext i8 %168 to i32
  %170 = mul nsw i32 %169, %132
  %171 = ashr i32 %170, 8
  %172 = add nsw i32 %171, %166
  %173 = tail call i32 @llvm.smin.i32(i32 %172, i32 255)
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds i8, ptr %150, i64 1
  store i8 %174, ptr %175, align 1, !tbaa !67
  %176 = getelementptr inbounds i8, ptr %152, i64 2
  %177 = load i8, ptr %176, align 1, !tbaa !67
  %178 = zext i8 %177 to i32
  %179 = getelementptr inbounds i8, ptr %151, i64 2
  %180 = load i8, ptr %179, align 1, !tbaa !67
  %181 = zext i8 %180 to i32
  %182 = mul nsw i32 %181, %132
  %183 = ashr i32 %182, 8
  %184 = add nsw i32 %183, %178
  %185 = tail call i32 @llvm.smin.i32(i32 %184, i32 255)
  %186 = trunc i32 %185 to i8
  %187 = getelementptr inbounds i8, ptr %150, i64 2
  store i8 %186, ptr %187, align 1, !tbaa !67
  %188 = getelementptr inbounds i8, ptr %152, i64 3
  %189 = load i8, ptr %188, align 1, !tbaa !67
  %190 = getelementptr inbounds i8, ptr %150, i64 3
  store i8 %189, ptr %190, align 1, !tbaa !67
  %191 = getelementptr inbounds i8, ptr %152, i64 4
  %192 = getelementptr inbounds i8, ptr %151, i64 4
  %193 = getelementptr inbounds i8, ptr %150, i64 4
  %194 = icmp eq i32 %154, 0
  br i1 %194, label %195, label %149, !llvm.loop !102

195:                                              ; preds = %149, %144
  %196 = phi ptr [ %147, %144 ], [ %191, %149 ]
  %197 = phi ptr [ %146, %144 ], [ %192, %149 ]
  %198 = phi ptr [ %145, %144 ], [ %193, %149 ]
  %199 = icmp eq i32 %148, 1
  br i1 %199, label %248, label %200

200:                                              ; preds = %195
  %201 = add nsw i32 %148, -2
  br i1 %138, label %139, label %202

202:                                              ; preds = %200, %202
  %203 = phi ptr [ %246, %202 ], [ %198, %200 ]
  %204 = phi ptr [ %245, %202 ], [ %197, %200 ]
  %205 = phi ptr [ %244, %202 ], [ %196, %200 ]
  %206 = phi i32 [ %207, %202 ], [ %17, %200 ]
  %207 = add nsw i32 %206, -1
  %208 = load i8, ptr %205, align 1, !tbaa !67
  %209 = zext i8 %208 to i32
  %210 = load i8, ptr %204, align 1, !tbaa !67
  %211 = zext i8 %210 to i32
  %212 = mul nsw i32 %211, %134
  %213 = ashr i32 %212, 8
  %214 = add nsw i32 %213, %209
  %215 = tail call i32 @llvm.smin.i32(i32 %214, i32 255)
  %216 = trunc i32 %215 to i8
  store i8 %216, ptr %203, align 1, !tbaa !67
  %217 = getelementptr inbounds i8, ptr %205, i64 1
  %218 = load i8, ptr %217, align 1, !tbaa !67
  %219 = zext i8 %218 to i32
  %220 = getelementptr inbounds i8, ptr %204, i64 1
  %221 = load i8, ptr %220, align 1, !tbaa !67
  %222 = zext i8 %221 to i32
  %223 = mul nsw i32 %222, %134
  %224 = ashr i32 %223, 8
  %225 = add nsw i32 %224, %219
  %226 = tail call i32 @llvm.smin.i32(i32 %225, i32 255)
  %227 = trunc i32 %226 to i8
  %228 = getelementptr inbounds i8, ptr %203, i64 1
  store i8 %227, ptr %228, align 1, !tbaa !67
  %229 = getelementptr inbounds i8, ptr %205, i64 2
  %230 = load i8, ptr %229, align 1, !tbaa !67
  %231 = zext i8 %230 to i32
  %232 = getelementptr inbounds i8, ptr %204, i64 2
  %233 = load i8, ptr %232, align 1, !tbaa !67
  %234 = zext i8 %233 to i32
  %235 = mul nsw i32 %234, %134
  %236 = ashr i32 %235, 8
  %237 = add nsw i32 %236, %231
  %238 = tail call i32 @llvm.smin.i32(i32 %237, i32 255)
  %239 = trunc i32 %238 to i8
  %240 = getelementptr inbounds i8, ptr %203, i64 2
  store i8 %239, ptr %240, align 1, !tbaa !67
  %241 = getelementptr inbounds i8, ptr %205, i64 3
  %242 = load i8, ptr %241, align 1, !tbaa !67
  %243 = getelementptr inbounds i8, ptr %203, i64 3
  store i8 %242, ptr %243, align 1, !tbaa !67
  %244 = getelementptr inbounds i8, ptr %205, i64 4
  %245 = getelementptr inbounds i8, ptr %204, i64 4
  %246 = getelementptr inbounds i8, ptr %203, i64 4
  %247 = icmp eq i32 %207, 0
  br i1 %247, label %139, label %202, !llvm.loop !103

248:                                              ; preds = %38, %79, %139, %195, %30, %129
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @early_out_mul_input2(ptr nocapture readnone %0, float noundef %1, float noundef %2) #5 {
  %4 = fcmp oeq float %1, 0.000000e+00
  %5 = fcmp oeq float %2, 0.000000e+00
  %6 = and i1 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_sub_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 {
  %12 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  %15 = shl nsw i32 %8, 2
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = mul nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  br i1 %14, label %131, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = getelementptr inbounds float, ptr %22, i64 %19
  %24 = getelementptr inbounds float, ptr %13, i64 %19
  %25 = icmp eq ptr %6, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds float, ptr %28, i64 %19
  br label %30

30:                                               ; preds = %20, %26
  %31 = phi ptr [ null, %20 ], [ %29, %26 ]
  %32 = icmp eq i32 %9, 0
  br i1 %32, label %262, label %33

33:                                               ; preds = %30
  %34 = icmp eq i32 %17, 0
  %35 = fsub float 1.000000e+00, %4
  %36 = icmp eq i32 %17, 0
  %37 = fsub float 1.000000e+00, %4
  br label %43

38:                                               ; preds = %93, %91
  %39 = phi ptr [ %87, %91 ], [ %127, %93 ]
  %40 = phi ptr [ %88, %91 ], [ %128, %93 ]
  %41 = phi ptr [ %89, %91 ], [ %129, %93 ]
  %42 = icmp eq i32 %92, 0
  br i1 %42, label %262, label %43, !llvm.loop !104

43:                                               ; preds = %33, %38
  %44 = phi ptr [ %24, %33 ], [ %41, %38 ]
  %45 = phi ptr [ %31, %33 ], [ %40, %38 ]
  %46 = phi ptr [ %23, %33 ], [ %39, %38 ]
  %47 = phi i32 [ %9, %33 ], [ %92, %38 ]
  br i1 %34, label %86, label %48

48:                                               ; preds = %43, %48
  %49 = phi ptr [ %84, %48 ], [ %44, %43 ]
  %50 = phi ptr [ %83, %48 ], [ %45, %43 ]
  %51 = phi ptr [ %82, %48 ], [ %46, %43 ]
  %52 = phi i32 [ %53, %48 ], [ %17, %43 ]
  %53 = add nsw i32 %52, -1
  %54 = getelementptr inbounds float, ptr %51, i64 3
  %55 = load float, ptr %54, align 4, !tbaa !58
  %56 = fneg float %55
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %35, float 1.000000e+00)
  %58 = load float, ptr %51, align 4, !tbaa !58
  %59 = load float, ptr %50, align 4, !tbaa !58
  %60 = fneg float %57
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %59, float %58)
  %62 = fcmp ogt float %61, 0.000000e+00
  %63 = select i1 %62, float %61, float 0.000000e+00
  store float %63, ptr %49, align 4, !tbaa !58
  %64 = getelementptr inbounds float, ptr %51, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !58
  %66 = getelementptr inbounds float, ptr %50, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !58
  %68 = tail call float @llvm.fmuladd.f32(float %60, float %67, float %65)
  %69 = fcmp ogt float %68, 0.000000e+00
  %70 = select i1 %69, float %68, float 0.000000e+00
  %71 = getelementptr inbounds float, ptr %49, i64 1
  store float %70, ptr %71, align 4, !tbaa !58
  %72 = getelementptr inbounds float, ptr %51, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !58
  %74 = getelementptr inbounds float, ptr %50, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !58
  %76 = tail call float @llvm.fmuladd.f32(float %60, float %75, float %73)
  %77 = fcmp ogt float %76, 0.000000e+00
  %78 = select i1 %77, float %76, float 0.000000e+00
  %79 = getelementptr inbounds float, ptr %49, i64 2
  store float %78, ptr %79, align 4, !tbaa !58
  %80 = load float, ptr %54, align 4, !tbaa !58
  %81 = getelementptr inbounds float, ptr %49, i64 3
  store float %80, ptr %81, align 4, !tbaa !58
  %82 = getelementptr inbounds float, ptr %51, i64 4
  %83 = getelementptr inbounds float, ptr %50, i64 4
  %84 = getelementptr inbounds float, ptr %49, i64 4
  %85 = icmp eq i32 %53, 0
  br i1 %85, label %86, label %48, !llvm.loop !105

86:                                               ; preds = %48, %43
  %87 = phi ptr [ %46, %43 ], [ %82, %48 ]
  %88 = phi ptr [ %45, %43 ], [ %83, %48 ]
  %89 = phi ptr [ %44, %43 ], [ %84, %48 ]
  %90 = icmp eq i32 %47, 1
  br i1 %90, label %262, label %91

91:                                               ; preds = %86
  %92 = add nsw i32 %47, -2
  br i1 %36, label %38, label %93

93:                                               ; preds = %91, %93
  %94 = phi ptr [ %129, %93 ], [ %89, %91 ]
  %95 = phi ptr [ %128, %93 ], [ %88, %91 ]
  %96 = phi ptr [ %127, %93 ], [ %87, %91 ]
  %97 = phi i32 [ %98, %93 ], [ %17, %91 ]
  %98 = add nsw i32 %97, -1
  %99 = getelementptr inbounds float, ptr %96, i64 3
  %100 = load float, ptr %99, align 4, !tbaa !58
  %101 = fneg float %100
  %102 = tail call float @llvm.fmuladd.f32(float %101, float %37, float 1.000000e+00)
  %103 = load float, ptr %96, align 4, !tbaa !58
  %104 = load float, ptr %95, align 4, !tbaa !58
  %105 = fneg float %102
  %106 = tail call float @llvm.fmuladd.f32(float %105, float %104, float %103)
  %107 = fcmp ogt float %106, 0.000000e+00
  %108 = select i1 %107, float %106, float 0.000000e+00
  store float %108, ptr %94, align 4, !tbaa !58
  %109 = getelementptr inbounds float, ptr %96, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !58
  %111 = getelementptr inbounds float, ptr %95, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !58
  %113 = tail call float @llvm.fmuladd.f32(float %105, float %112, float %110)
  %114 = fcmp ogt float %113, 0.000000e+00
  %115 = select i1 %114, float %113, float 0.000000e+00
  %116 = getelementptr inbounds float, ptr %94, i64 1
  store float %115, ptr %116, align 4, !tbaa !58
  %117 = getelementptr inbounds float, ptr %96, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !58
  %119 = getelementptr inbounds float, ptr %95, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !58
  %121 = tail call float @llvm.fmuladd.f32(float %105, float %120, float %118)
  %122 = fcmp ogt float %121, 0.000000e+00
  %123 = select i1 %122, float %121, float 0.000000e+00
  %124 = getelementptr inbounds float, ptr %94, i64 2
  store float %123, ptr %124, align 4, !tbaa !58
  %125 = load float, ptr %99, align 4, !tbaa !58
  %126 = getelementptr inbounds float, ptr %94, i64 3
  store float %125, ptr %126, align 4, !tbaa !58
  %127 = getelementptr inbounds float, ptr %96, i64 4
  %128 = getelementptr inbounds float, ptr %95, i64 4
  %129 = getelementptr inbounds float, ptr %94, i64 4
  %130 = icmp eq i32 %98, 0
  br i1 %130, label %38, label %93, !llvm.loop !106

131:                                              ; preds = %11
  %132 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %133 = load ptr, ptr %132, align 8, !tbaa !87
  %134 = getelementptr inbounds i8, ptr %133, i64 %19
  %135 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %136 = load ptr, ptr %135, align 8, !tbaa !87
  %137 = getelementptr inbounds i8, ptr %136, i64 %19
  %138 = icmp eq ptr %6, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %141 = load ptr, ptr %140, align 8, !tbaa !87
  %142 = getelementptr inbounds i8, ptr %141, i64 %19
  br label %143

143:                                              ; preds = %131, %139
  %144 = phi ptr [ null, %131 ], [ %142, %139 ]
  %145 = fmul float %3, 2.560000e+02
  %146 = fptosi float %145 to i32
  %147 = fmul float %4, 2.560000e+02
  %148 = fptosi float %147 to i32
  %149 = icmp eq i32 %9, 0
  br i1 %149, label %262, label %150

150:                                              ; preds = %143
  %151 = icmp eq i32 %17, 0
  %152 = icmp eq i32 %17, 0
  br label %158

153:                                              ; preds = %216, %214
  %154 = phi ptr [ %210, %214 ], [ %258, %216 ]
  %155 = phi ptr [ %211, %214 ], [ %259, %216 ]
  %156 = phi ptr [ %212, %214 ], [ %260, %216 ]
  %157 = icmp eq i32 %215, 0
  br i1 %157, label %262, label %158, !llvm.loop !107

158:                                              ; preds = %150, %153
  %159 = phi ptr [ %137, %150 ], [ %156, %153 ]
  %160 = phi ptr [ %144, %150 ], [ %155, %153 ]
  %161 = phi ptr [ %134, %150 ], [ %154, %153 ]
  %162 = phi i32 [ %9, %150 ], [ %215, %153 ]
  br i1 %151, label %209, label %163

163:                                              ; preds = %158, %163
  %164 = phi ptr [ %207, %163 ], [ %159, %158 ]
  %165 = phi ptr [ %206, %163 ], [ %160, %158 ]
  %166 = phi ptr [ %205, %163 ], [ %161, %158 ]
  %167 = phi i32 [ %168, %163 ], [ %17, %158 ]
  %168 = add nsw i32 %167, -1
  %169 = load i8, ptr %166, align 1, !tbaa !67
  %170 = zext i8 %169 to i32
  %171 = load i8, ptr %165, align 1, !tbaa !67
  %172 = zext i8 %171 to i32
  %173 = mul nsw i32 %172, %146
  %174 = ashr i32 %173, 8
  %175 = sub nsw i32 %170, %174
  %176 = tail call i32 @llvm.smax.i32(i32 %175, i32 0)
  %177 = trunc i32 %176 to i8
  store i8 %177, ptr %164, align 1, !tbaa !67
  %178 = getelementptr inbounds i8, ptr %166, i64 1
  %179 = load i8, ptr %178, align 1, !tbaa !67
  %180 = zext i8 %179 to i32
  %181 = getelementptr inbounds i8, ptr %165, i64 1
  %182 = load i8, ptr %181, align 1, !tbaa !67
  %183 = zext i8 %182 to i32
  %184 = mul nsw i32 %183, %146
  %185 = ashr i32 %184, 8
  %186 = sub nsw i32 %180, %185
  %187 = tail call i32 @llvm.smax.i32(i32 %186, i32 0)
  %188 = trunc i32 %187 to i8
  %189 = getelementptr inbounds i8, ptr %164, i64 1
  store i8 %188, ptr %189, align 1, !tbaa !67
  %190 = getelementptr inbounds i8, ptr %166, i64 2
  %191 = load i8, ptr %190, align 1, !tbaa !67
  %192 = zext i8 %191 to i32
  %193 = getelementptr inbounds i8, ptr %165, i64 2
  %194 = load i8, ptr %193, align 1, !tbaa !67
  %195 = zext i8 %194 to i32
  %196 = mul nsw i32 %195, %146
  %197 = ashr i32 %196, 8
  %198 = sub nsw i32 %192, %197
  %199 = tail call i32 @llvm.smax.i32(i32 %198, i32 0)
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds i8, ptr %164, i64 2
  store i8 %200, ptr %201, align 1, !tbaa !67
  %202 = getelementptr inbounds i8, ptr %166, i64 3
  %203 = load i8, ptr %202, align 1, !tbaa !67
  %204 = getelementptr inbounds i8, ptr %164, i64 3
  store i8 %203, ptr %204, align 1, !tbaa !67
  %205 = getelementptr inbounds i8, ptr %166, i64 4
  %206 = getelementptr inbounds i8, ptr %165, i64 4
  %207 = getelementptr inbounds i8, ptr %164, i64 4
  %208 = icmp eq i32 %168, 0
  br i1 %208, label %209, label %163, !llvm.loop !108

209:                                              ; preds = %163, %158
  %210 = phi ptr [ %161, %158 ], [ %205, %163 ]
  %211 = phi ptr [ %160, %158 ], [ %206, %163 ]
  %212 = phi ptr [ %159, %158 ], [ %207, %163 ]
  %213 = icmp eq i32 %162, 1
  br i1 %213, label %262, label %214

214:                                              ; preds = %209
  %215 = add nsw i32 %162, -2
  br i1 %152, label %153, label %216

216:                                              ; preds = %214, %216
  %217 = phi ptr [ %260, %216 ], [ %212, %214 ]
  %218 = phi ptr [ %259, %216 ], [ %211, %214 ]
  %219 = phi ptr [ %258, %216 ], [ %210, %214 ]
  %220 = phi i32 [ %221, %216 ], [ %17, %214 ]
  %221 = add nsw i32 %220, -1
  %222 = load i8, ptr %219, align 1, !tbaa !67
  %223 = zext i8 %222 to i32
  %224 = load i8, ptr %218, align 1, !tbaa !67
  %225 = zext i8 %224 to i32
  %226 = mul nsw i32 %225, %148
  %227 = ashr i32 %226, 8
  %228 = sub nsw i32 %223, %227
  %229 = tail call i32 @llvm.smax.i32(i32 %228, i32 0)
  %230 = trunc i32 %229 to i8
  store i8 %230, ptr %217, align 1, !tbaa !67
  %231 = getelementptr inbounds i8, ptr %219, i64 1
  %232 = load i8, ptr %231, align 1, !tbaa !67
  %233 = zext i8 %232 to i32
  %234 = getelementptr inbounds i8, ptr %218, i64 1
  %235 = load i8, ptr %234, align 1, !tbaa !67
  %236 = zext i8 %235 to i32
  %237 = mul nsw i32 %236, %148
  %238 = ashr i32 %237, 8
  %239 = sub nsw i32 %233, %238
  %240 = tail call i32 @llvm.smax.i32(i32 %239, i32 0)
  %241 = trunc i32 %240 to i8
  %242 = getelementptr inbounds i8, ptr %217, i64 1
  store i8 %241, ptr %242, align 1, !tbaa !67
  %243 = getelementptr inbounds i8, ptr %219, i64 2
  %244 = load i8, ptr %243, align 1, !tbaa !67
  %245 = zext i8 %244 to i32
  %246 = getelementptr inbounds i8, ptr %218, i64 2
  %247 = load i8, ptr %246, align 1, !tbaa !67
  %248 = zext i8 %247 to i32
  %249 = mul nsw i32 %248, %148
  %250 = ashr i32 %249, 8
  %251 = sub nsw i32 %245, %250
  %252 = tail call i32 @llvm.smax.i32(i32 %251, i32 0)
  %253 = trunc i32 %252 to i8
  %254 = getelementptr inbounds i8, ptr %217, i64 2
  store i8 %253, ptr %254, align 1, !tbaa !67
  %255 = getelementptr inbounds i8, ptr %219, i64 3
  %256 = load i8, ptr %255, align 1, !tbaa !67
  %257 = getelementptr inbounds i8, ptr %217, i64 3
  store i8 %256, ptr %257, align 1, !tbaa !67
  %258 = getelementptr inbounds i8, ptr %219, i64 4
  %259 = getelementptr inbounds i8, ptr %218, i64 4
  %260 = getelementptr inbounds i8, ptr %217, i64 4
  %261 = icmp eq i32 %221, 0
  br i1 %261, label %153, label %216, !llvm.loop !109

262:                                              ; preds = %38, %86, %153, %209, %30, %143
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_mul_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 {
  %12 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  %15 = shl nsw i32 %8, 2
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = mul nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  br i1 %14, label %131, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = getelementptr inbounds float, ptr %22, i64 %19
  %24 = getelementptr inbounds float, ptr %13, i64 %19
  %25 = icmp eq ptr %6, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds float, ptr %28, i64 %19
  br label %30

30:                                               ; preds = %20, %26
  %31 = phi ptr [ null, %20 ], [ %29, %26 ]
  %32 = icmp eq i32 %9, 0
  br i1 %32, label %288, label %33

33:                                               ; preds = %30
  %34 = icmp eq i32 %17, 0
  %35 = icmp eq i32 %17, 0
  br label %41

36:                                               ; preds = %92, %90
  %37 = phi ptr [ %86, %90 ], [ %127, %92 ]
  %38 = phi ptr [ %87, %90 ], [ %128, %92 ]
  %39 = phi ptr [ %88, %90 ], [ %129, %92 ]
  %40 = icmp eq i32 %91, 0
  br i1 %40, label %288, label %41, !llvm.loop !110

41:                                               ; preds = %33, %36
  %42 = phi ptr [ %24, %33 ], [ %39, %36 ]
  %43 = phi ptr [ %31, %33 ], [ %38, %36 ]
  %44 = phi ptr [ %23, %33 ], [ %37, %36 ]
  %45 = phi i32 [ %9, %33 ], [ %91, %36 ]
  br i1 %34, label %85, label %46

46:                                               ; preds = %41, %46
  %47 = phi ptr [ %83, %46 ], [ %42, %41 ]
  %48 = phi ptr [ %82, %46 ], [ %43, %41 ]
  %49 = phi ptr [ %81, %46 ], [ %44, %41 ]
  %50 = phi i32 [ %51, %46 ], [ %17, %41 ]
  %51 = add nsw i32 %50, -1
  %52 = load float, ptr %49, align 4, !tbaa !58
  %53 = fmul float %52, %3
  %54 = load float, ptr %48, align 4, !tbaa !58
  %55 = fadd float %54, -1.000000e+00
  %56 = tail call float @llvm.fmuladd.f32(float %53, float %55, float %52)
  store float %56, ptr %47, align 4, !tbaa !58
  %57 = getelementptr inbounds float, ptr %49, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !58
  %59 = fmul float %58, %3
  %60 = getelementptr inbounds float, ptr %48, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !58
  %62 = fadd float %61, -1.000000e+00
  %63 = tail call float @llvm.fmuladd.f32(float %59, float %62, float %58)
  %64 = getelementptr inbounds float, ptr %47, i64 1
  store float %63, ptr %64, align 4, !tbaa !58
  %65 = getelementptr inbounds float, ptr %49, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !58
  %67 = fmul float %66, %3
  %68 = getelementptr inbounds float, ptr %48, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !58
  %70 = fadd float %69, -1.000000e+00
  %71 = tail call float @llvm.fmuladd.f32(float %67, float %70, float %66)
  %72 = getelementptr inbounds float, ptr %47, i64 2
  store float %71, ptr %72, align 4, !tbaa !58
  %73 = getelementptr inbounds float, ptr %49, i64 3
  %74 = load float, ptr %73, align 4, !tbaa !58
  %75 = fmul float %74, %3
  %76 = getelementptr inbounds float, ptr %48, i64 3
  %77 = load float, ptr %76, align 4, !tbaa !58
  %78 = fadd float %77, -1.000000e+00
  %79 = tail call float @llvm.fmuladd.f32(float %75, float %78, float %74)
  %80 = getelementptr inbounds float, ptr %47, i64 3
  store float %79, ptr %80, align 4, !tbaa !58
  %81 = getelementptr inbounds float, ptr %49, i64 4
  %82 = getelementptr inbounds float, ptr %48, i64 4
  %83 = getelementptr inbounds float, ptr %47, i64 4
  %84 = icmp eq i32 %51, 0
  br i1 %84, label %85, label %46, !llvm.loop !111

85:                                               ; preds = %46, %41
  %86 = phi ptr [ %44, %41 ], [ %81, %46 ]
  %87 = phi ptr [ %43, %41 ], [ %82, %46 ]
  %88 = phi ptr [ %42, %41 ], [ %83, %46 ]
  %89 = icmp eq i32 %45, 1
  br i1 %89, label %288, label %90

90:                                               ; preds = %85
  %91 = add nsw i32 %45, -2
  br i1 %35, label %36, label %92

92:                                               ; preds = %90, %92
  %93 = phi ptr [ %129, %92 ], [ %88, %90 ]
  %94 = phi ptr [ %128, %92 ], [ %87, %90 ]
  %95 = phi ptr [ %127, %92 ], [ %86, %90 ]
  %96 = phi i32 [ %97, %92 ], [ %17, %90 ]
  %97 = add nsw i32 %96, -1
  %98 = load float, ptr %95, align 4, !tbaa !58
  %99 = fmul float %98, %4
  %100 = load float, ptr %94, align 4, !tbaa !58
  %101 = fadd float %100, -1.000000e+00
  %102 = tail call float @llvm.fmuladd.f32(float %99, float %101, float %98)
  store float %102, ptr %93, align 4, !tbaa !58
  %103 = getelementptr inbounds float, ptr %95, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !58
  %105 = fmul float %104, %4
  %106 = getelementptr inbounds float, ptr %94, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !58
  %108 = fadd float %107, -1.000000e+00
  %109 = tail call float @llvm.fmuladd.f32(float %105, float %108, float %104)
  %110 = getelementptr inbounds float, ptr %93, i64 1
  store float %109, ptr %110, align 4, !tbaa !58
  %111 = getelementptr inbounds float, ptr %95, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !58
  %113 = fmul float %112, %4
  %114 = getelementptr inbounds float, ptr %94, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !58
  %116 = fadd float %115, -1.000000e+00
  %117 = tail call float @llvm.fmuladd.f32(float %113, float %116, float %112)
  %118 = getelementptr inbounds float, ptr %93, i64 2
  store float %117, ptr %118, align 4, !tbaa !58
  %119 = getelementptr inbounds float, ptr %95, i64 3
  %120 = load float, ptr %119, align 4, !tbaa !58
  %121 = fmul float %120, %4
  %122 = getelementptr inbounds float, ptr %94, i64 3
  %123 = load float, ptr %122, align 4, !tbaa !58
  %124 = fadd float %123, -1.000000e+00
  %125 = tail call float @llvm.fmuladd.f32(float %121, float %124, float %120)
  %126 = getelementptr inbounds float, ptr %93, i64 3
  store float %125, ptr %126, align 4, !tbaa !58
  %127 = getelementptr inbounds float, ptr %95, i64 4
  %128 = getelementptr inbounds float, ptr %94, i64 4
  %129 = getelementptr inbounds float, ptr %93, i64 4
  %130 = icmp eq i32 %97, 0
  br i1 %130, label %36, label %92, !llvm.loop !112

131:                                              ; preds = %11
  %132 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %133 = load ptr, ptr %132, align 8, !tbaa !87
  %134 = getelementptr inbounds i8, ptr %133, i64 %19
  %135 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %136 = load ptr, ptr %135, align 8, !tbaa !87
  %137 = getelementptr inbounds i8, ptr %136, i64 %19
  %138 = icmp eq ptr %6, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %141 = load ptr, ptr %140, align 8, !tbaa !87
  %142 = getelementptr inbounds i8, ptr %141, i64 %19
  br label %143

143:                                              ; preds = %131, %139
  %144 = phi ptr [ null, %131 ], [ %142, %139 ]
  %145 = fmul float %3, 2.560000e+02
  %146 = fptosi float %145 to i32
  %147 = fmul float %4, 2.560000e+02
  %148 = fptosi float %147 to i32
  %149 = icmp eq i32 %9, 0
  br i1 %149, label %288, label %150

150:                                              ; preds = %143
  %151 = icmp eq i32 %17, 0
  %152 = icmp eq i32 %17, 0
  br label %158

153:                                              ; preds = %229, %227
  %154 = phi ptr [ %223, %227 ], [ %284, %229 ]
  %155 = phi ptr [ %224, %227 ], [ %285, %229 ]
  %156 = phi ptr [ %225, %227 ], [ %286, %229 ]
  %157 = icmp eq i32 %228, 0
  br i1 %157, label %288, label %158, !llvm.loop !113

158:                                              ; preds = %150, %153
  %159 = phi ptr [ %137, %150 ], [ %156, %153 ]
  %160 = phi ptr [ %144, %150 ], [ %155, %153 ]
  %161 = phi ptr [ %134, %150 ], [ %154, %153 ]
  %162 = phi i32 [ %9, %150 ], [ %228, %153 ]
  br i1 %151, label %222, label %163

163:                                              ; preds = %158, %163
  %164 = phi ptr [ %220, %163 ], [ %159, %158 ]
  %165 = phi ptr [ %219, %163 ], [ %160, %158 ]
  %166 = phi ptr [ %218, %163 ], [ %161, %158 ]
  %167 = phi i32 [ %168, %163 ], [ %17, %158 ]
  %168 = add nsw i32 %167, -1
  %169 = load i8, ptr %166, align 1, !tbaa !67
  %170 = zext i8 %169 to i32
  %171 = mul nsw i32 %170, %146
  %172 = load i8, ptr %165, align 1, !tbaa !67
  %173 = zext i8 %172 to i32
  %174 = add nuw nsw i32 %173, 16776961
  %175 = mul i32 %171, %174
  %176 = lshr i32 %175, 16
  %177 = trunc i32 %176 to i8
  %178 = add i8 %169, %177
  store i8 %178, ptr %164, align 1, !tbaa !67
  %179 = getelementptr inbounds i8, ptr %166, i64 1
  %180 = load i8, ptr %179, align 1, !tbaa !67
  %181 = zext i8 %180 to i32
  %182 = mul nsw i32 %181, %146
  %183 = getelementptr inbounds i8, ptr %165, i64 1
  %184 = load i8, ptr %183, align 1, !tbaa !67
  %185 = zext i8 %184 to i32
  %186 = add nuw nsw i32 %185, 16776961
  %187 = mul i32 %182, %186
  %188 = lshr i32 %187, 16
  %189 = trunc i32 %188 to i8
  %190 = add i8 %180, %189
  %191 = getelementptr inbounds i8, ptr %164, i64 1
  store i8 %190, ptr %191, align 1, !tbaa !67
  %192 = getelementptr inbounds i8, ptr %166, i64 2
  %193 = load i8, ptr %192, align 1, !tbaa !67
  %194 = zext i8 %193 to i32
  %195 = mul nsw i32 %194, %146
  %196 = getelementptr inbounds i8, ptr %165, i64 2
  %197 = load i8, ptr %196, align 1, !tbaa !67
  %198 = zext i8 %197 to i32
  %199 = add nuw nsw i32 %198, 16776961
  %200 = mul i32 %195, %199
  %201 = lshr i32 %200, 16
  %202 = trunc i32 %201 to i8
  %203 = add i8 %193, %202
  %204 = getelementptr inbounds i8, ptr %164, i64 2
  store i8 %203, ptr %204, align 1, !tbaa !67
  %205 = getelementptr inbounds i8, ptr %166, i64 3
  %206 = load i8, ptr %205, align 1, !tbaa !67
  %207 = zext i8 %206 to i32
  %208 = mul nsw i32 %207, %146
  %209 = getelementptr inbounds i8, ptr %165, i64 3
  %210 = load i8, ptr %209, align 1, !tbaa !67
  %211 = zext i8 %210 to i32
  %212 = add nuw nsw i32 %211, 16776961
  %213 = mul i32 %208, %212
  %214 = lshr i32 %213, 16
  %215 = trunc i32 %214 to i8
  %216 = add i8 %206, %215
  %217 = getelementptr inbounds i8, ptr %164, i64 3
  store i8 %216, ptr %217, align 1, !tbaa !67
  %218 = getelementptr inbounds i8, ptr %166, i64 4
  %219 = getelementptr inbounds i8, ptr %165, i64 4
  %220 = getelementptr inbounds i8, ptr %164, i64 4
  %221 = icmp eq i32 %168, 0
  br i1 %221, label %222, label %163, !llvm.loop !114

222:                                              ; preds = %163, %158
  %223 = phi ptr [ %161, %158 ], [ %218, %163 ]
  %224 = phi ptr [ %160, %158 ], [ %219, %163 ]
  %225 = phi ptr [ %159, %158 ], [ %220, %163 ]
  %226 = icmp eq i32 %162, 1
  br i1 %226, label %288, label %227

227:                                              ; preds = %222
  %228 = add nsw i32 %162, -2
  br i1 %152, label %153, label %229

229:                                              ; preds = %227, %229
  %230 = phi ptr [ %286, %229 ], [ %225, %227 ]
  %231 = phi ptr [ %285, %229 ], [ %224, %227 ]
  %232 = phi ptr [ %284, %229 ], [ %223, %227 ]
  %233 = phi i32 [ %234, %229 ], [ %17, %227 ]
  %234 = add nsw i32 %233, -1
  %235 = load i8, ptr %232, align 1, !tbaa !67
  %236 = zext i8 %235 to i32
  %237 = mul nsw i32 %236, %148
  %238 = load i8, ptr %231, align 1, !tbaa !67
  %239 = zext i8 %238 to i32
  %240 = add nuw nsw i32 %239, 16776961
  %241 = mul i32 %237, %240
  %242 = lshr i32 %241, 16
  %243 = trunc i32 %242 to i8
  %244 = add i8 %235, %243
  store i8 %244, ptr %230, align 1, !tbaa !67
  %245 = getelementptr inbounds i8, ptr %232, i64 1
  %246 = load i8, ptr %245, align 1, !tbaa !67
  %247 = zext i8 %246 to i32
  %248 = mul nsw i32 %247, %148
  %249 = getelementptr inbounds i8, ptr %231, i64 1
  %250 = load i8, ptr %249, align 1, !tbaa !67
  %251 = zext i8 %250 to i32
  %252 = add nuw nsw i32 %251, 16776961
  %253 = mul i32 %248, %252
  %254 = lshr i32 %253, 16
  %255 = trunc i32 %254 to i8
  %256 = add i8 %246, %255
  %257 = getelementptr inbounds i8, ptr %230, i64 1
  store i8 %256, ptr %257, align 1, !tbaa !67
  %258 = getelementptr inbounds i8, ptr %232, i64 2
  %259 = load i8, ptr %258, align 1, !tbaa !67
  %260 = zext i8 %259 to i32
  %261 = mul nsw i32 %260, %148
  %262 = getelementptr inbounds i8, ptr %231, i64 2
  %263 = load i8, ptr %262, align 1, !tbaa !67
  %264 = zext i8 %263 to i32
  %265 = add nuw nsw i32 %264, 16776961
  %266 = mul i32 %261, %265
  %267 = lshr i32 %266, 16
  %268 = trunc i32 %267 to i8
  %269 = add i8 %259, %268
  %270 = getelementptr inbounds i8, ptr %230, i64 2
  store i8 %269, ptr %270, align 1, !tbaa !67
  %271 = getelementptr inbounds i8, ptr %232, i64 3
  %272 = load i8, ptr %271, align 1, !tbaa !67
  %273 = zext i8 %272 to i32
  %274 = mul nsw i32 %273, %148
  %275 = getelementptr inbounds i8, ptr %231, i64 3
  %276 = load i8, ptr %275, align 1, !tbaa !67
  %277 = zext i8 %276 to i32
  %278 = add nuw nsw i32 %277, 16776961
  %279 = mul i32 %274, %278
  %280 = lshr i32 %279, 16
  %281 = trunc i32 %280 to i8
  %282 = add i8 %272, %281
  %283 = getelementptr inbounds i8, ptr %230, i64 3
  store i8 %282, ptr %283, align 1, !tbaa !67
  %284 = getelementptr inbounds i8, ptr %232, i64 4
  %285 = getelementptr inbounds i8, ptr %231, i64 4
  %286 = getelementptr inbounds i8, ptr %230, i64 4
  %287 = icmp eq i32 %234, 0
  br i1 %287, label %153, label %229, !llvm.loop !115

288:                                              ; preds = %36, %85, %153, %222, %30, %143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @init_alpha_over_or_under(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 33
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 34
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  store ptr %3, ptr %4, align 8, !tbaa !116
  store ptr %5, ptr %2, align 8, !tbaa !53
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_alphaover_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 {
  %12 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  %15 = shl nsw i32 %8, 2
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = mul nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  br i1 %14, label %32, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = getelementptr inbounds float, ptr %22, i64 %19
  %24 = getelementptr inbounds float, ptr %13, i64 %19
  %25 = icmp eq ptr %6, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds float, ptr %28, i64 %19
  br label %30

30:                                               ; preds = %20, %26
  %31 = phi ptr [ null, %20 ], [ %29, %26 ]
  tail call fastcc void @do_alphaover_effect_float(float noundef %3, float noundef %4, i32 noundef %17, i32 noundef %9, ptr noundef %23, ptr noundef %31, ptr noundef nonnull %24)
  br label %46

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !87
  %35 = getelementptr inbounds i8, ptr %34, i64 %19
  %36 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !87
  %38 = getelementptr inbounds i8, ptr %37, i64 %19
  %39 = icmp eq ptr %6, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !87
  %43 = getelementptr inbounds i8, ptr %42, i64 %19
  br label %44

44:                                               ; preds = %32, %40
  %45 = phi ptr [ null, %32 ], [ %43, %40 ]
  tail call fastcc void @do_alphaover_effect_byte(float noundef %3, float noundef %4, i32 noundef %17, i32 noundef %9, ptr noundef %35, ptr noundef %45, ptr noundef %38)
  br label %46

46:                                               ; preds = %44, %30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_overdrop_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 {
  %12 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !85
  %14 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = icmp eq ptr %15, null
  %17 = shl nsw i32 %8, 2
  %18 = mul nsw i32 %17, %13
  %19 = sext i32 %18 to i64
  br i1 %16, label %98, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = getelementptr inbounds float, ptr %22, i64 %19
  %24 = getelementptr inbounds float, ptr %15, i64 %19
  %25 = icmp eq ptr %6, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds float, ptr %28, i64 %19
  br label %30

30:                                               ; preds = %20, %26
  %31 = phi ptr [ null, %20 ], [ %29, %26 ]
  %32 = icmp sgt i32 %9, 8
  br i1 %32, label %33, label %93

33:                                               ; preds = %30
  %34 = shl nsw i32 %13, 3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, ptr %23, i64 %35
  %37 = icmp sgt i32 %13, 8
  %38 = add nsw i32 %9, -9
  br label %39

39:                                               ; preds = %33, %86
  %40 = phi i32 [ 1, %33 ], [ %48, %86 ]
  %41 = phi ptr [ %24, %33 ], [ %89, %86 ]
  %42 = phi ptr [ %36, %33 ], [ %90, %86 ]
  %43 = phi ptr [ %31, %33 ], [ %87, %86 ]
  %44 = phi i32 [ 0, %33 ], [ %91, %86 ]
  %45 = icmp eq i32 %40, 0
  %46 = select i1 %45, float %4, float %3
  %47 = fmul float %46, 7.000000e+01
  %48 = xor i32 %40, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %41, ptr noundef nonnull align 4 dereferenceable(128) %43, i64 128, i1 false)
  %49 = getelementptr inbounds float, ptr %43, i64 32
  %50 = getelementptr inbounds float, ptr %41, i64 32
  br i1 %37, label %51, label %86

51:                                               ; preds = %39, %51
  %52 = phi ptr [ %81, %51 ], [ %50, %39 ]
  %53 = phi ptr [ %83, %51 ], [ %42, %39 ]
  %54 = phi ptr [ %82, %51 ], [ %49, %39 ]
  %55 = phi i32 [ %84, %51 ], [ 8, %39 ]
  %56 = getelementptr inbounds float, ptr %53, i64 3
  %57 = load float, ptr %56, align 4, !tbaa !58
  %58 = fmul float %47, %57
  %59 = load float, ptr %54, align 4, !tbaa !58
  %60 = fsub float %59, %58
  %61 = fcmp olt float %60, 0.000000e+00
  %62 = select i1 %61, float 0.000000e+00, float %60
  %63 = getelementptr inbounds float, ptr %52, i64 1
  store float %62, ptr %52, align 4, !tbaa !58
  %64 = getelementptr inbounds float, ptr %54, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !58
  %66 = fsub float %65, %58
  %67 = fcmp olt float %66, 0.000000e+00
  %68 = select i1 %67, float 0.000000e+00, float %66
  %69 = getelementptr inbounds float, ptr %52, i64 2
  store float %68, ptr %63, align 4, !tbaa !58
  %70 = getelementptr inbounds float, ptr %54, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !58
  %72 = fsub float %71, %58
  %73 = fcmp olt float %72, 0.000000e+00
  %74 = select i1 %73, float 0.000000e+00, float %72
  %75 = getelementptr inbounds float, ptr %52, i64 3
  store float %74, ptr %69, align 4, !tbaa !58
  %76 = getelementptr inbounds float, ptr %54, i64 3
  %77 = load float, ptr %76, align 4, !tbaa !58
  %78 = fsub float %77, %58
  %79 = fcmp olt float %78, 0.000000e+00
  %80 = select i1 %79, float 0.000000e+00, float %78
  %81 = getelementptr inbounds float, ptr %52, i64 4
  store float %80, ptr %75, align 4, !tbaa !58
  %82 = getelementptr inbounds float, ptr %54, i64 4
  %83 = getelementptr inbounds float, ptr %53, i64 4
  %84 = add nuw nsw i32 %55, 1
  %85 = icmp eq i32 %84, %13
  br i1 %85, label %86, label %51, !llvm.loop !117

86:                                               ; preds = %51, %39
  %87 = phi ptr [ %49, %39 ], [ %82, %51 ]
  %88 = phi ptr [ %42, %39 ], [ %83, %51 ]
  %89 = phi ptr [ %50, %39 ], [ %81, %51 ]
  %90 = getelementptr inbounds float, ptr %88, i64 32
  %91 = add nuw nsw i32 %44, 1
  %92 = icmp eq i32 %44, %38
  br i1 %92, label %93, label %39, !llvm.loop !118

93:                                               ; preds = %86, %30
  %94 = phi ptr [ %31, %30 ], [ %87, %86 ]
  %95 = phi ptr [ %24, %30 ], [ %89, %86 ]
  %96 = sext i32 %13 to i64
  %97 = shl nsw i64 %96, 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %95, ptr align 4 %94, i64 %97, i1 false)
  tail call fastcc void @do_alphaover_effect_float(float noundef %3, float noundef %4, i32 noundef %13, i32 noundef %9, ptr noundef %23, ptr noundef %31, ptr noundef nonnull %24)
  br label %185

98:                                               ; preds = %11
  %99 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %100 = load ptr, ptr %99, align 8, !tbaa !87
  %101 = getelementptr inbounds i8, ptr %100, i64 %19
  %102 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %103 = load ptr, ptr %102, align 8, !tbaa !87
  %104 = getelementptr inbounds i8, ptr %103, i64 %19
  %105 = icmp eq ptr %6, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %108 = load ptr, ptr %107, align 8, !tbaa !87
  %109 = getelementptr inbounds i8, ptr %108, i64 %19
  br label %110

110:                                              ; preds = %98, %106
  %111 = phi ptr [ null, %98 ], [ %109, %106 ]
  %112 = icmp sgt i32 %9, 8
  br i1 %112, label %113, label %180

113:                                              ; preds = %110
  %114 = shl nsw i32 %13, 3
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %101, i64 %115
  %117 = icmp sgt i32 %13, 8
  %118 = add nsw i32 %9, -9
  br label %119

119:                                              ; preds = %113, %173
  %120 = phi i32 [ 1, %113 ], [ %129, %173 ]
  %121 = phi ptr [ %104, %113 ], [ %176, %173 ]
  %122 = phi ptr [ %116, %113 ], [ %177, %173 ]
  %123 = phi ptr [ %111, %113 ], [ %174, %173 ]
  %124 = phi i32 [ 0, %113 ], [ %178, %173 ]
  %125 = icmp eq i32 %120, 0
  %126 = select i1 %125, float %4, float %3
  %127 = fmul float %126, 7.000000e+01
  %128 = fptosi float %127 to i32
  %129 = xor i32 %120, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %121, ptr noundef nonnull align 1 dereferenceable(32) %123, i64 32, i1 false)
  %130 = getelementptr inbounds i8, ptr %123, i64 32
  %131 = getelementptr inbounds i8, ptr %121, i64 32
  br i1 %117, label %132, label %173

132:                                              ; preds = %119, %132
  %133 = phi ptr [ %168, %132 ], [ %131, %119 ]
  %134 = phi ptr [ %170, %132 ], [ %122, %119 ]
  %135 = phi ptr [ %169, %132 ], [ %130, %119 ]
  %136 = phi i32 [ %171, %132 ], [ 8, %119 ]
  %137 = getelementptr inbounds i8, ptr %134, i64 3
  %138 = load i8, ptr %137, align 1, !tbaa !67
  %139 = zext i8 %138 to i32
  %140 = mul nsw i32 %139, %128
  %141 = ashr i32 %140, 8
  %142 = load i8, ptr %135, align 1, !tbaa !67
  %143 = zext i8 %142 to i32
  %144 = sub nsw i32 %143, %141
  %145 = tail call i32 @llvm.smax.i32(i32 %144, i32 0)
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds i8, ptr %133, i64 1
  store i8 %146, ptr %133, align 1, !tbaa !67
  %148 = getelementptr inbounds i8, ptr %135, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !67
  %150 = zext i8 %149 to i32
  %151 = sub nsw i32 %150, %141
  %152 = tail call i32 @llvm.smax.i32(i32 %151, i32 0)
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds i8, ptr %133, i64 2
  store i8 %153, ptr %147, align 1, !tbaa !67
  %155 = getelementptr inbounds i8, ptr %135, i64 2
  %156 = load i8, ptr %155, align 1, !tbaa !67
  %157 = zext i8 %156 to i32
  %158 = sub nsw i32 %157, %141
  %159 = tail call i32 @llvm.smax.i32(i32 %158, i32 0)
  %160 = trunc i32 %159 to i8
  %161 = getelementptr inbounds i8, ptr %133, i64 3
  store i8 %160, ptr %154, align 1, !tbaa !67
  %162 = getelementptr inbounds i8, ptr %135, i64 3
  %163 = load i8, ptr %162, align 1, !tbaa !67
  %164 = zext i8 %163 to i32
  %165 = sub nsw i32 %164, %141
  %166 = tail call i32 @llvm.smax.i32(i32 %165, i32 0)
  %167 = trunc i32 %166 to i8
  %168 = getelementptr inbounds i8, ptr %133, i64 4
  store i8 %167, ptr %161, align 1, !tbaa !67
  %169 = getelementptr inbounds i8, ptr %135, i64 4
  %170 = getelementptr inbounds i8, ptr %134, i64 4
  %171 = add nuw nsw i32 %136, 1
  %172 = icmp eq i32 %171, %13
  br i1 %172, label %173, label %132, !llvm.loop !119

173:                                              ; preds = %132, %119
  %174 = phi ptr [ %130, %119 ], [ %169, %132 ]
  %175 = phi ptr [ %122, %119 ], [ %170, %132 ]
  %176 = phi ptr [ %131, %119 ], [ %168, %132 ]
  %177 = getelementptr inbounds i8, ptr %175, i64 32
  %178 = add nuw nsw i32 %124, 1
  %179 = icmp eq i32 %124, %118
  br i1 %179, label %180, label %119, !llvm.loop !120

180:                                              ; preds = %173, %110
  %181 = phi ptr [ %111, %110 ], [ %174, %173 ]
  %182 = phi ptr [ %104, %110 ], [ %176, %173 ]
  %183 = sext i32 %13 to i64
  %184 = shl nsw i64 %183, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %182, ptr align 1 %181, i64 %184, i1 false)
  tail call fastcc void @do_alphaover_effect_byte(float noundef %3, float noundef %4, i32 noundef %13, i32 noundef %9, ptr noundef %101, ptr noundef %111, ptr noundef %104)
  br label %185

185:                                              ; preds = %180, %93
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_alphaunder_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 {
  %12 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  %15 = shl nsw i32 %8, 2
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = mul nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  br i1 %14, label %145, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = getelementptr inbounds float, ptr %22, i64 %19
  %24 = getelementptr inbounds float, ptr %13, i64 %19
  %25 = icmp eq ptr %6, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds float, ptr %28, i64 %19
  br label %30

30:                                               ; preds = %20, %26
  %31 = phi ptr [ null, %20 ], [ %29, %26 ]
  %32 = icmp eq i32 %9, 0
  br i1 %32, label %464, label %33

33:                                               ; preds = %30
  %34 = icmp eq i32 %17, 0
  %35 = fcmp oge float %3, 1.000000e+00
  %36 = icmp eq i32 %17, 0
  %37 = fcmp oge float %4, 1.000000e+00
  br label %43

38:                                               ; preds = %140, %98
  %39 = phi ptr [ %94, %98 ], [ %141, %140 ]
  %40 = phi ptr [ %95, %98 ], [ %142, %140 ]
  %41 = phi ptr [ %96, %98 ], [ %143, %140 ]
  %42 = icmp eq i32 %99, 0
  br i1 %42, label %464, label %43, !llvm.loop !121

43:                                               ; preds = %33, %38
  %44 = phi ptr [ %24, %33 ], [ %41, %38 ]
  %45 = phi ptr [ %31, %33 ], [ %40, %38 ]
  %46 = phi ptr [ %23, %33 ], [ %39, %38 ]
  %47 = phi i32 [ %9, %33 ], [ %99, %38 ]
  br i1 %34, label %93, label %48

48:                                               ; preds = %43, %88
  %49 = phi i32 [ %53, %88 ], [ %17, %43 ]
  %50 = phi ptr [ %91, %88 ], [ %44, %43 ]
  %51 = phi ptr [ %90, %88 ], [ %45, %43 ]
  %52 = phi ptr [ %89, %88 ], [ %46, %43 ]
  %53 = add nsw i32 %49, -1
  %54 = getelementptr inbounds float, ptr %51, i64 3
  %55 = load float, ptr %54, align 4, !tbaa !58
  %56 = fcmp ole float %55, 0.000000e+00
  %57 = and i1 %35, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %50, ptr noundef nonnull align 4 dereferenceable(16) %52, i64 16, i1 false)
  br label %88

59:                                               ; preds = %48
  %60 = fcmp ult float %55, 1.000000e+00
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %50, ptr noundef nonnull align 4 dereferenceable(16) %51, i64 16, i1 false)
  br label %88

62:                                               ; preds = %59
  %63 = fsub float 1.000000e+00, %55
  %64 = fmul float %63, %3
  %65 = fcmp oeq float %64, 0.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %50, ptr noundef nonnull align 4 dereferenceable(16) %51, i64 16, i1 false)
  br label %88

67:                                               ; preds = %62
  %68 = load float, ptr %52, align 4, !tbaa !58
  %69 = load float, ptr %51, align 4, !tbaa !58
  %70 = tail call float @llvm.fmuladd.f32(float %64, float %68, float %69)
  store float %70, ptr %50, align 4, !tbaa !58
  %71 = getelementptr inbounds float, ptr %52, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !58
  %73 = getelementptr inbounds float, ptr %51, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !58
  %75 = tail call float @llvm.fmuladd.f32(float %64, float %72, float %74)
  %76 = getelementptr inbounds float, ptr %50, i64 1
  store float %75, ptr %76, align 4, !tbaa !58
  %77 = getelementptr inbounds float, ptr %52, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !58
  %79 = getelementptr inbounds float, ptr %51, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !58
  %81 = tail call float @llvm.fmuladd.f32(float %64, float %78, float %80)
  %82 = getelementptr inbounds float, ptr %50, i64 2
  store float %81, ptr %82, align 4, !tbaa !58
  %83 = getelementptr inbounds float, ptr %52, i64 3
  %84 = load float, ptr %83, align 4, !tbaa !58
  %85 = load float, ptr %54, align 4, !tbaa !58
  %86 = tail call float @llvm.fmuladd.f32(float %64, float %84, float %85)
  %87 = getelementptr inbounds float, ptr %50, i64 3
  store float %86, ptr %87, align 4, !tbaa !58
  br label %88

88:                                               ; preds = %67, %66, %61, %58
  %89 = getelementptr inbounds float, ptr %52, i64 4
  %90 = getelementptr inbounds float, ptr %51, i64 4
  %91 = getelementptr inbounds float, ptr %50, i64 4
  %92 = icmp eq i32 %53, 0
  br i1 %92, label %93, label %48, !llvm.loop !122

93:                                               ; preds = %88, %43
  %94 = phi ptr [ %46, %43 ], [ %89, %88 ]
  %95 = phi ptr [ %45, %43 ], [ %90, %88 ]
  %96 = phi ptr [ %44, %43 ], [ %91, %88 ]
  %97 = icmp eq i32 %47, 1
  br i1 %97, label %464, label %98

98:                                               ; preds = %93
  %99 = add nsw i32 %47, -2
  br i1 %36, label %38, label %100

100:                                              ; preds = %98, %140
  %101 = phi i32 [ %105, %140 ], [ %17, %98 ]
  %102 = phi ptr [ %143, %140 ], [ %96, %98 ]
  %103 = phi ptr [ %142, %140 ], [ %95, %98 ]
  %104 = phi ptr [ %141, %140 ], [ %94, %98 ]
  %105 = add nsw i32 %101, -1
  %106 = getelementptr inbounds float, ptr %103, i64 3
  %107 = load float, ptr %106, align 4, !tbaa !58
  %108 = fcmp ole float %107, 0.000000e+00
  %109 = and i1 %37, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %102, ptr noundef nonnull align 4 dereferenceable(16) %104, i64 16, i1 false)
  br label %140

111:                                              ; preds = %100
  %112 = fcmp ult float %107, 1.000000e+00
  br i1 %112, label %114, label %113

113:                                              ; preds = %111
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %102, ptr noundef nonnull align 4 dereferenceable(16) %103, i64 16, i1 false)
  br label %140

114:                                              ; preds = %111
  %115 = fsub float 1.000000e+00, %107
  %116 = fmul float %115, %4
  %117 = fcmp oeq float %116, 0.000000e+00
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %102, ptr noundef nonnull align 4 dereferenceable(16) %103, i64 16, i1 false)
  br label %140

119:                                              ; preds = %114
  %120 = load float, ptr %104, align 4, !tbaa !58
  %121 = load float, ptr %103, align 4, !tbaa !58
  %122 = tail call float @llvm.fmuladd.f32(float %116, float %120, float %121)
  store float %122, ptr %102, align 4, !tbaa !58
  %123 = getelementptr inbounds float, ptr %104, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !58
  %125 = getelementptr inbounds float, ptr %103, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !58
  %127 = tail call float @llvm.fmuladd.f32(float %116, float %124, float %126)
  %128 = getelementptr inbounds float, ptr %102, i64 1
  store float %127, ptr %128, align 4, !tbaa !58
  %129 = getelementptr inbounds float, ptr %104, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !58
  %131 = getelementptr inbounds float, ptr %103, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !58
  %133 = tail call float @llvm.fmuladd.f32(float %116, float %130, float %132)
  %134 = getelementptr inbounds float, ptr %102, i64 2
  store float %133, ptr %134, align 4, !tbaa !58
  %135 = getelementptr inbounds float, ptr %104, i64 3
  %136 = load float, ptr %135, align 4, !tbaa !58
  %137 = load float, ptr %106, align 4, !tbaa !58
  %138 = tail call float @llvm.fmuladd.f32(float %116, float %136, float %137)
  %139 = getelementptr inbounds float, ptr %102, i64 3
  store float %138, ptr %139, align 4, !tbaa !58
  br label %140

140:                                              ; preds = %119, %118, %113, %110
  %141 = getelementptr inbounds float, ptr %104, i64 4
  %142 = getelementptr inbounds float, ptr %103, i64 4
  %143 = getelementptr inbounds float, ptr %102, i64 4
  %144 = icmp eq i32 %105, 0
  br i1 %144, label %38, label %100, !llvm.loop !123

145:                                              ; preds = %11
  %146 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %147 = load ptr, ptr %146, align 8, !tbaa !87
  %148 = getelementptr inbounds i8, ptr %147, i64 %19
  %149 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %150 = load ptr, ptr %149, align 8, !tbaa !87
  %151 = getelementptr inbounds i8, ptr %150, i64 %19
  %152 = icmp eq ptr %6, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %155 = load ptr, ptr %154, align 8, !tbaa !87
  %156 = getelementptr inbounds i8, ptr %155, i64 %19
  br label %157

157:                                              ; preds = %145, %153
  %158 = phi ptr [ null, %145 ], [ %156, %153 ]
  %159 = icmp eq i32 %9, 0
  br i1 %159, label %464, label %160

160:                                              ; preds = %157
  %161 = icmp eq i32 %17, 0
  %162 = fcmp oge float %3, 1.000000e+00
  %163 = icmp eq i32 %17, 0
  %164 = fcmp oge float %4, 1.000000e+00
  br label %170

165:                                              ; preds = %459, %321
  %166 = phi ptr [ %317, %321 ], [ %460, %459 ]
  %167 = phi ptr [ %318, %321 ], [ %461, %459 ]
  %168 = phi ptr [ %319, %321 ], [ %462, %459 ]
  %169 = icmp eq i32 %322, 0
  br i1 %169, label %464, label %170, !llvm.loop !124

170:                                              ; preds = %160, %165
  %171 = phi ptr [ %151, %160 ], [ %168, %165 ]
  %172 = phi ptr [ %158, %160 ], [ %167, %165 ]
  %173 = phi ptr [ %148, %160 ], [ %166, %165 ]
  %174 = phi i32 [ %9, %160 ], [ %322, %165 ]
  br i1 %161, label %316, label %175

175:                                              ; preds = %170, %311
  %176 = phi i32 [ %180, %311 ], [ %17, %170 ]
  %177 = phi ptr [ %314, %311 ], [ %171, %170 ]
  %178 = phi ptr [ %313, %311 ], [ %172, %170 ]
  %179 = phi ptr [ %312, %311 ], [ %173, %170 ]
  %180 = add nsw i32 %176, -1
  %181 = getelementptr inbounds i8, ptr %179, i64 3
  %182 = load i8, ptr %181, align 1, !tbaa !67
  %183 = uitofp i8 %182 to float
  %184 = fmul float %183, 0x3F70101020000000
  %185 = fmul float %184, 0x3F70101020000000
  %186 = load i8, ptr %179, align 1, !tbaa !67
  %187 = uitofp i8 %186 to float
  %188 = fmul float %185, %187
  %189 = getelementptr inbounds i8, ptr %179, i64 1
  %190 = load i8, ptr %189, align 1, !tbaa !67
  %191 = uitofp i8 %190 to float
  %192 = fmul float %185, %191
  %193 = getelementptr inbounds i8, ptr %179, i64 2
  %194 = load i8, ptr %193, align 1, !tbaa !67
  %195 = uitofp i8 %194 to float
  %196 = fmul float %185, %195
  %197 = getelementptr inbounds i8, ptr %178, i64 3
  %198 = load i8, ptr %197, align 1, !tbaa !67
  %199 = uitofp i8 %198 to float
  %200 = fmul float %199, 0x3F70101020000000
  %201 = fmul float %200, 0x3F70101020000000
  %202 = load i8, ptr %178, align 1, !tbaa !67
  %203 = uitofp i8 %202 to float
  %204 = fmul float %201, %203
  %205 = getelementptr inbounds i8, ptr %178, i64 1
  %206 = load i8, ptr %205, align 1, !tbaa !67
  %207 = uitofp i8 %206 to float
  %208 = fmul float %201, %207
  %209 = getelementptr inbounds i8, ptr %178, i64 2
  %210 = load i8, ptr %209, align 1, !tbaa !67
  %211 = uitofp i8 %210 to float
  %212 = fmul float %201, %211
  %213 = fcmp ole float %200, 0.000000e+00
  %214 = and i1 %162, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %175
  %216 = load i32, ptr %179, align 4, !tbaa !125
  store i32 %216, ptr %177, align 4, !tbaa !125
  br label %311

217:                                              ; preds = %175
  %218 = fcmp ult float %200, 1.000000e+00
  br i1 %218, label %221, label %219

219:                                              ; preds = %217
  %220 = load i32, ptr %178, align 4, !tbaa !125
  store i32 %220, ptr %177, align 4, !tbaa !125
  br label %311

221:                                              ; preds = %217
  %222 = fsub float 1.000000e+00, %200
  %223 = fmul float %222, %3
  %224 = fcmp ugt float %223, 0.000000e+00
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = load i32, ptr %178, align 4, !tbaa !125
  store i32 %226, ptr %177, align 4, !tbaa !125
  br label %311

227:                                              ; preds = %221
  %228 = tail call float @llvm.fmuladd.f32(float %223, float %188, float %204)
  %229 = tail call float @llvm.fmuladd.f32(float %223, float %192, float %208)
  %230 = tail call float @llvm.fmuladd.f32(float %223, float %196, float %212)
  %231 = tail call float @llvm.fmuladd.f32(float %223, float %184, float %200)
  %232 = fcmp oeq float %231, 0.000000e+00
  %233 = fcmp oeq float %231, 1.000000e+00
  %234 = or i1 %232, %233
  br i1 %234, label %235, label %271

235:                                              ; preds = %227
  %236 = fcmp ugt float %228, 0.000000e+00
  br i1 %236, label %237, label %242

237:                                              ; preds = %235
  %238 = fcmp ogt float %228, 0x3FEFEFEFE0000000
  br i1 %238, label %242, label %239

239:                                              ; preds = %237
  %240 = tail call float @llvm.fmuladd.f32(float %228, float 2.550000e+02, float 5.000000e-01)
  %241 = fptoui float %240 to i8
  br label %242

242:                                              ; preds = %239, %237, %235
  %243 = phi i8 [ 0, %235 ], [ %241, %239 ], [ -1, %237 ]
  store i8 %243, ptr %177, align 1, !tbaa !67
  %244 = fcmp ugt float %229, 0.000000e+00
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = fcmp ogt float %229, 0x3FEFEFEFE0000000
  br i1 %246, label %250, label %247

247:                                              ; preds = %245
  %248 = tail call float @llvm.fmuladd.f32(float %229, float 2.550000e+02, float 5.000000e-01)
  %249 = fptoui float %248 to i8
  br label %250

250:                                              ; preds = %247, %245, %242
  %251 = phi i8 [ 0, %242 ], [ %249, %247 ], [ -1, %245 ]
  %252 = getelementptr inbounds i8, ptr %177, i64 1
  store i8 %251, ptr %252, align 1, !tbaa !67
  %253 = fcmp ugt float %230, 0.000000e+00
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = fcmp ogt float %230, 0x3FEFEFEFE0000000
  br i1 %255, label %259, label %256

256:                                              ; preds = %254
  %257 = tail call float @llvm.fmuladd.f32(float %230, float 2.550000e+02, float 5.000000e-01)
  %258 = fptoui float %257 to i8
  br label %259

259:                                              ; preds = %256, %254, %250
  %260 = phi i8 [ 0, %250 ], [ %258, %256 ], [ -1, %254 ]
  %261 = getelementptr inbounds i8, ptr %177, i64 2
  store i8 %260, ptr %261, align 1, !tbaa !67
  %262 = fcmp ugt float %231, 0.000000e+00
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = fcmp ogt float %231, 0x3FEFEFEFE0000000
  br i1 %264, label %268, label %265

265:                                              ; preds = %263
  %266 = tail call float @llvm.fmuladd.f32(float %231, float 2.550000e+02, float 5.000000e-01)
  %267 = fptoui float %266 to i8
  br label %268

268:                                              ; preds = %265, %263, %259
  %269 = phi i8 [ 0, %259 ], [ %267, %265 ], [ -1, %263 ]
  %270 = getelementptr inbounds i8, ptr %177, i64 3
  store i8 %269, ptr %270, align 1, !tbaa !67
  br label %311

271:                                              ; preds = %227
  %272 = fdiv float 1.000000e+00, %231
  %273 = fmul float %228, %272
  %274 = fcmp ugt float %273, 0.000000e+00
  br i1 %274, label %275, label %280

275:                                              ; preds = %271
  %276 = fcmp ogt float %273, 0x3FEFEFEFE0000000
  br i1 %276, label %280, label %277

277:                                              ; preds = %275
  %278 = tail call float @llvm.fmuladd.f32(float %273, float 2.550000e+02, float 5.000000e-01)
  %279 = fptoui float %278 to i8
  br label %280

280:                                              ; preds = %277, %275, %271
  %281 = phi i8 [ 0, %271 ], [ %279, %277 ], [ -1, %275 ]
  store i8 %281, ptr %177, align 1, !tbaa !67
  %282 = fmul float %229, %272
  %283 = fcmp ugt float %282, 0.000000e+00
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  %285 = fcmp ogt float %282, 0x3FEFEFEFE0000000
  br i1 %285, label %289, label %286

286:                                              ; preds = %284
  %287 = tail call float @llvm.fmuladd.f32(float %282, float 2.550000e+02, float 5.000000e-01)
  %288 = fptoui float %287 to i8
  br label %289

289:                                              ; preds = %286, %284, %280
  %290 = phi i8 [ 0, %280 ], [ %288, %286 ], [ -1, %284 ]
  %291 = getelementptr inbounds i8, ptr %177, i64 1
  store i8 %290, ptr %291, align 1, !tbaa !67
  %292 = fmul float %230, %272
  %293 = fcmp ugt float %292, 0.000000e+00
  br i1 %293, label %294, label %299

294:                                              ; preds = %289
  %295 = fcmp ogt float %292, 0x3FEFEFEFE0000000
  br i1 %295, label %299, label %296

296:                                              ; preds = %294
  %297 = tail call float @llvm.fmuladd.f32(float %292, float 2.550000e+02, float 5.000000e-01)
  %298 = fptoui float %297 to i8
  br label %299

299:                                              ; preds = %296, %294, %289
  %300 = phi i8 [ 0, %289 ], [ %298, %296 ], [ -1, %294 ]
  %301 = getelementptr inbounds i8, ptr %177, i64 2
  store i8 %300, ptr %301, align 1, !tbaa !67
  %302 = fcmp ugt float %231, 0.000000e+00
  br i1 %302, label %303, label %308

303:                                              ; preds = %299
  %304 = fcmp ogt float %231, 0x3FEFEFEFE0000000
  br i1 %304, label %308, label %305

305:                                              ; preds = %303
  %306 = tail call float @llvm.fmuladd.f32(float %231, float 2.550000e+02, float 5.000000e-01)
  %307 = fptoui float %306 to i8
  br label %308

308:                                              ; preds = %305, %303, %299
  %309 = phi i8 [ 0, %299 ], [ %307, %305 ], [ -1, %303 ]
  %310 = getelementptr inbounds i8, ptr %177, i64 3
  store i8 %309, ptr %310, align 1, !tbaa !67
  br label %311

311:                                              ; preds = %308, %268, %225, %219, %215
  %312 = getelementptr inbounds i8, ptr %179, i64 4
  %313 = getelementptr inbounds i8, ptr %178, i64 4
  %314 = getelementptr inbounds i8, ptr %177, i64 4
  %315 = icmp eq i32 %180, 0
  br i1 %315, label %316, label %175, !llvm.loop !126

316:                                              ; preds = %311, %170
  %317 = phi ptr [ %173, %170 ], [ %312, %311 ]
  %318 = phi ptr [ %172, %170 ], [ %313, %311 ]
  %319 = phi ptr [ %171, %170 ], [ %314, %311 ]
  %320 = icmp eq i32 %174, 1
  br i1 %320, label %464, label %321

321:                                              ; preds = %316
  %322 = add nsw i32 %174, -2
  br i1 %163, label %165, label %323

323:                                              ; preds = %321, %459
  %324 = phi i32 [ %328, %459 ], [ %17, %321 ]
  %325 = phi ptr [ %462, %459 ], [ %319, %321 ]
  %326 = phi ptr [ %461, %459 ], [ %318, %321 ]
  %327 = phi ptr [ %460, %459 ], [ %317, %321 ]
  %328 = add nsw i32 %324, -1
  %329 = getelementptr inbounds i8, ptr %327, i64 3
  %330 = load i8, ptr %329, align 1, !tbaa !67
  %331 = uitofp i8 %330 to float
  %332 = fmul float %331, 0x3F70101020000000
  %333 = fmul float %332, 0x3F70101020000000
  %334 = load i8, ptr %327, align 1, !tbaa !67
  %335 = uitofp i8 %334 to float
  %336 = fmul float %333, %335
  %337 = getelementptr inbounds i8, ptr %327, i64 1
  %338 = load i8, ptr %337, align 1, !tbaa !67
  %339 = uitofp i8 %338 to float
  %340 = fmul float %333, %339
  %341 = getelementptr inbounds i8, ptr %327, i64 2
  %342 = load i8, ptr %341, align 1, !tbaa !67
  %343 = uitofp i8 %342 to float
  %344 = fmul float %333, %343
  %345 = getelementptr inbounds i8, ptr %326, i64 3
  %346 = load i8, ptr %345, align 1, !tbaa !67
  %347 = uitofp i8 %346 to float
  %348 = fmul float %347, 0x3F70101020000000
  %349 = fmul float %348, 0x3F70101020000000
  %350 = load i8, ptr %326, align 1, !tbaa !67
  %351 = uitofp i8 %350 to float
  %352 = fmul float %349, %351
  %353 = getelementptr inbounds i8, ptr %326, i64 1
  %354 = load i8, ptr %353, align 1, !tbaa !67
  %355 = uitofp i8 %354 to float
  %356 = fmul float %349, %355
  %357 = getelementptr inbounds i8, ptr %326, i64 2
  %358 = load i8, ptr %357, align 1, !tbaa !67
  %359 = uitofp i8 %358 to float
  %360 = fmul float %349, %359
  %361 = fcmp ole float %348, 0.000000e+00
  %362 = and i1 %164, %361
  br i1 %362, label %363, label %365

363:                                              ; preds = %323
  %364 = load i32, ptr %327, align 4, !tbaa !125
  store i32 %364, ptr %325, align 4, !tbaa !125
  br label %459

365:                                              ; preds = %323
  %366 = fcmp ult float %348, 1.000000e+00
  br i1 %366, label %369, label %367

367:                                              ; preds = %365
  %368 = load i32, ptr %326, align 4, !tbaa !125
  store i32 %368, ptr %325, align 4, !tbaa !125
  br label %459

369:                                              ; preds = %365
  %370 = fsub float 1.000000e+00, %348
  %371 = fmul float %370, %4
  %372 = fcmp ugt float %371, 0.000000e+00
  br i1 %372, label %375, label %373

373:                                              ; preds = %369
  %374 = load i32, ptr %326, align 4, !tbaa !125
  store i32 %374, ptr %325, align 4, !tbaa !125
  br label %459

375:                                              ; preds = %369
  %376 = tail call float @llvm.fmuladd.f32(float %371, float %336, float %352)
  %377 = tail call float @llvm.fmuladd.f32(float %371, float %340, float %356)
  %378 = tail call float @llvm.fmuladd.f32(float %371, float %344, float %360)
  %379 = tail call float @llvm.fmuladd.f32(float %371, float %332, float %348)
  %380 = fcmp oeq float %379, 0.000000e+00
  %381 = fcmp oeq float %379, 1.000000e+00
  %382 = or i1 %380, %381
  br i1 %382, label %383, label %419

383:                                              ; preds = %375
  %384 = fcmp ugt float %376, 0.000000e+00
  br i1 %384, label %385, label %390

385:                                              ; preds = %383
  %386 = fcmp ogt float %376, 0x3FEFEFEFE0000000
  br i1 %386, label %390, label %387

387:                                              ; preds = %385
  %388 = tail call float @llvm.fmuladd.f32(float %376, float 2.550000e+02, float 5.000000e-01)
  %389 = fptoui float %388 to i8
  br label %390

390:                                              ; preds = %387, %385, %383
  %391 = phi i8 [ 0, %383 ], [ %389, %387 ], [ -1, %385 ]
  store i8 %391, ptr %325, align 1, !tbaa !67
  %392 = fcmp ugt float %377, 0.000000e+00
  br i1 %392, label %393, label %398

393:                                              ; preds = %390
  %394 = fcmp ogt float %377, 0x3FEFEFEFE0000000
  br i1 %394, label %398, label %395

395:                                              ; preds = %393
  %396 = tail call float @llvm.fmuladd.f32(float %377, float 2.550000e+02, float 5.000000e-01)
  %397 = fptoui float %396 to i8
  br label %398

398:                                              ; preds = %395, %393, %390
  %399 = phi i8 [ 0, %390 ], [ %397, %395 ], [ -1, %393 ]
  %400 = getelementptr inbounds i8, ptr %325, i64 1
  store i8 %399, ptr %400, align 1, !tbaa !67
  %401 = fcmp ugt float %378, 0.000000e+00
  br i1 %401, label %402, label %407

402:                                              ; preds = %398
  %403 = fcmp ogt float %378, 0x3FEFEFEFE0000000
  br i1 %403, label %407, label %404

404:                                              ; preds = %402
  %405 = tail call float @llvm.fmuladd.f32(float %378, float 2.550000e+02, float 5.000000e-01)
  %406 = fptoui float %405 to i8
  br label %407

407:                                              ; preds = %404, %402, %398
  %408 = phi i8 [ 0, %398 ], [ %406, %404 ], [ -1, %402 ]
  %409 = getelementptr inbounds i8, ptr %325, i64 2
  store i8 %408, ptr %409, align 1, !tbaa !67
  %410 = fcmp ugt float %379, 0.000000e+00
  br i1 %410, label %411, label %416

411:                                              ; preds = %407
  %412 = fcmp ogt float %379, 0x3FEFEFEFE0000000
  br i1 %412, label %416, label %413

413:                                              ; preds = %411
  %414 = tail call float @llvm.fmuladd.f32(float %379, float 2.550000e+02, float 5.000000e-01)
  %415 = fptoui float %414 to i8
  br label %416

416:                                              ; preds = %413, %411, %407
  %417 = phi i8 [ 0, %407 ], [ %415, %413 ], [ -1, %411 ]
  %418 = getelementptr inbounds i8, ptr %325, i64 3
  store i8 %417, ptr %418, align 1, !tbaa !67
  br label %459

419:                                              ; preds = %375
  %420 = fdiv float 1.000000e+00, %379
  %421 = fmul float %376, %420
  %422 = fcmp ugt float %421, 0.000000e+00
  br i1 %422, label %423, label %428

423:                                              ; preds = %419
  %424 = fcmp ogt float %421, 0x3FEFEFEFE0000000
  br i1 %424, label %428, label %425

425:                                              ; preds = %423
  %426 = tail call float @llvm.fmuladd.f32(float %421, float 2.550000e+02, float 5.000000e-01)
  %427 = fptoui float %426 to i8
  br label %428

428:                                              ; preds = %425, %423, %419
  %429 = phi i8 [ 0, %419 ], [ %427, %425 ], [ -1, %423 ]
  store i8 %429, ptr %325, align 1, !tbaa !67
  %430 = fmul float %377, %420
  %431 = fcmp ugt float %430, 0.000000e+00
  br i1 %431, label %432, label %437

432:                                              ; preds = %428
  %433 = fcmp ogt float %430, 0x3FEFEFEFE0000000
  br i1 %433, label %437, label %434

434:                                              ; preds = %432
  %435 = tail call float @llvm.fmuladd.f32(float %430, float 2.550000e+02, float 5.000000e-01)
  %436 = fptoui float %435 to i8
  br label %437

437:                                              ; preds = %434, %432, %428
  %438 = phi i8 [ 0, %428 ], [ %436, %434 ], [ -1, %432 ]
  %439 = getelementptr inbounds i8, ptr %325, i64 1
  store i8 %438, ptr %439, align 1, !tbaa !67
  %440 = fmul float %378, %420
  %441 = fcmp ugt float %440, 0.000000e+00
  br i1 %441, label %442, label %447

442:                                              ; preds = %437
  %443 = fcmp ogt float %440, 0x3FEFEFEFE0000000
  br i1 %443, label %447, label %444

444:                                              ; preds = %442
  %445 = tail call float @llvm.fmuladd.f32(float %440, float 2.550000e+02, float 5.000000e-01)
  %446 = fptoui float %445 to i8
  br label %447

447:                                              ; preds = %444, %442, %437
  %448 = phi i8 [ 0, %437 ], [ %446, %444 ], [ -1, %442 ]
  %449 = getelementptr inbounds i8, ptr %325, i64 2
  store i8 %448, ptr %449, align 1, !tbaa !67
  %450 = fcmp ugt float %379, 0.000000e+00
  br i1 %450, label %451, label %456

451:                                              ; preds = %447
  %452 = fcmp ogt float %379, 0x3FEFEFEFE0000000
  br i1 %452, label %456, label %453

453:                                              ; preds = %451
  %454 = tail call float @llvm.fmuladd.f32(float %379, float 2.550000e+02, float 5.000000e-01)
  %455 = fptoui float %454 to i8
  br label %456

456:                                              ; preds = %453, %451, %447
  %457 = phi i8 [ 0, %447 ], [ %455, %453 ], [ -1, %451 ]
  %458 = getelementptr inbounds i8, ptr %325, i64 3
  store i8 %457, ptr %458, align 1, !tbaa !67
  br label %459

459:                                              ; preds = %456, %416, %373, %367, %363
  %460 = getelementptr inbounds i8, ptr %327, i64 4
  %461 = getelementptr inbounds i8, ptr %326, i64 4
  %462 = getelementptr inbounds i8, ptr %325, i64 4
  %463 = icmp eq i32 %328, 0
  br i1 %463, label %165, label %323, !llvm.loop !127

464:                                              ; preds = %38, %93, %165, %316, %30, %157
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_wipe_effect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %9 = tail call ptr %8(i64 noundef 12, ptr noundef nonnull @.str.2) #16
  store ptr %9, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_wipe() #5 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @free_wipe_effect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_wipe_effect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @do_wipe_effect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float %2, float noundef %3, float %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca %struct.WipeZone, align 4
  %10 = alloca %struct.WipeZone, align 4
  %11 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %12 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !85
  %17 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !128
  br i1 %14, label %126, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  %22 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %24 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.WipeVars, ptr %25, i64 0, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !129
  %28 = fcmp olt float %27, 0.000000e+00
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.WipeZone, ptr %10, i64 0, i32 1
  store i32 %29, ptr %30, align 4, !tbaa !131
  %31 = tail call float @llvm.fabs.f32(float %27)
  %32 = tail call float @tanf(float noundef %31) #16
  store float %32, ptr %10, align 4, !tbaa !133
  %33 = getelementptr inbounds %struct.WipeZone, ptr %10, i64 0, i32 2
  store i32 %16, ptr %33, align 4, !tbaa !134
  %34 = getelementptr inbounds %struct.WipeZone, ptr %10, i64 0, i32 3
  store i32 %18, ptr %34, align 4, !tbaa !135
  %35 = load float, ptr %25, align 4, !tbaa !136
  %36 = add nsw i32 %18, %16
  %37 = sitofp i32 %36 to float
  %38 = fmul float %37, 5.000000e-01
  %39 = fmul float %38, %35
  %40 = fptosi float %39 to i32
  %41 = getelementptr inbounds %struct.WipeZone, ptr %10, i64 0, i32 4
  store i32 %40, ptr %41, align 4, !tbaa !137
  %42 = tail call float @llvm.fmuladd.f32(float %32, float %32, float 1.000000e+00)
  %43 = tail call float @sqrtf(float noundef %42) #16
  %44 = fdiv float 1.000000e+00, %43
  %45 = getelementptr inbounds %struct.WipeZone, ptr %10, i64 0, i32 5
  store float %44, ptr %45, align 4, !tbaa !138
  %46 = icmp sgt i32 %18, 0
  br i1 %46, label %47, label %125

47:                                               ; preds = %19
  %48 = icmp sgt i32 %16, 0
  br label %49

49:                                               ; preds = %47, %119
  %50 = phi ptr [ %13, %47 ], [ %122, %119 ]
  %51 = phi ptr [ %23, %47 ], [ %121, %119 ]
  %52 = phi ptr [ %21, %47 ], [ %120, %119 ]
  %53 = phi i32 [ 0, %47 ], [ %123, %119 ]
  br i1 %48, label %54, label %119

54:                                               ; preds = %49, %107
  %55 = phi i32 [ %117, %107 ], [ 0, %49 ]
  %56 = phi ptr [ %110, %107 ], [ %50, %49 ]
  %57 = phi ptr [ %116, %107 ], [ %51, %49 ]
  %58 = phi ptr [ %113, %107 ], [ %52, %49 ]
  %59 = call fastcc float @check_zone(ptr noundef nonnull %10, i32 noundef %55, i32 noundef %53, ptr noundef %1, float noundef %3)
  %60 = fcmp une float %59, 0.000000e+00
  br i1 %60, label %61, label %92

61:                                               ; preds = %54
  %62 = icmp eq ptr %58, null
  br i1 %62, label %89, label %63

63:                                               ; preds = %61
  %64 = load float, ptr %58, align 4, !tbaa !58
  %65 = load float, ptr %57, align 4, !tbaa !58
  %66 = fsub float 1.000000e+00, %59
  %67 = fmul float %66, %65
  %68 = tail call float @llvm.fmuladd.f32(float %64, float %59, float %67)
  store float %68, ptr %56, align 4, !tbaa !58
  %69 = getelementptr inbounds float, ptr %58, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !58
  %71 = getelementptr inbounds float, ptr %57, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !58
  %73 = fmul float %66, %72
  %74 = tail call float @llvm.fmuladd.f32(float %70, float %59, float %73)
  %75 = getelementptr inbounds float, ptr %56, i64 1
  store float %74, ptr %75, align 4, !tbaa !58
  %76 = getelementptr inbounds float, ptr %58, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !58
  %78 = getelementptr inbounds float, ptr %57, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !58
  %80 = fmul float %66, %79
  %81 = tail call float @llvm.fmuladd.f32(float %77, float %59, float %80)
  %82 = getelementptr inbounds float, ptr %56, i64 2
  store float %81, ptr %82, align 4, !tbaa !58
  %83 = getelementptr inbounds float, ptr %58, i64 3
  %84 = load float, ptr %83, align 4, !tbaa !58
  %85 = getelementptr inbounds float, ptr %57, i64 3
  %86 = load float, ptr %85, align 4, !tbaa !58
  %87 = fmul float %66, %86
  %88 = tail call float @llvm.fmuladd.f32(float %84, float %59, float %87)
  br label %107

89:                                               ; preds = %61
  store float 0.000000e+00, ptr %56, align 4, !tbaa !58
  %90 = getelementptr inbounds float, ptr %56, i64 1
  store float 0.000000e+00, ptr %90, align 4, !tbaa !58
  %91 = getelementptr inbounds float, ptr %56, i64 2
  store float 0.000000e+00, ptr %91, align 4, !tbaa !58
  br label %107

92:                                               ; preds = %54
  %93 = icmp eq ptr %57, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %92
  %95 = load float, ptr %57, align 4, !tbaa !58
  store float %95, ptr %56, align 4, !tbaa !58
  %96 = getelementptr inbounds float, ptr %57, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !58
  %98 = getelementptr inbounds float, ptr %56, i64 1
  store float %97, ptr %98, align 4, !tbaa !58
  %99 = getelementptr inbounds float, ptr %57, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !58
  %101 = getelementptr inbounds float, ptr %56, i64 2
  store float %100, ptr %101, align 4, !tbaa !58
  %102 = getelementptr inbounds float, ptr %57, i64 3
  %103 = load float, ptr %102, align 4, !tbaa !58
  br label %107

104:                                              ; preds = %92
  store float 0.000000e+00, ptr %56, align 4, !tbaa !58
  %105 = getelementptr inbounds float, ptr %56, i64 1
  store float 0.000000e+00, ptr %105, align 4, !tbaa !58
  %106 = getelementptr inbounds float, ptr %56, i64 2
  store float 0.000000e+00, ptr %106, align 4, !tbaa !58
  br label %107

107:                                              ; preds = %104, %94, %89, %63
  %108 = phi float [ 1.000000e+00, %104 ], [ %103, %94 ], [ 1.000000e+00, %89 ], [ %88, %63 ]
  %109 = getelementptr inbounds float, ptr %56, i64 3
  store float %108, ptr %109, align 4, !tbaa !58
  %110 = getelementptr inbounds float, ptr %56, i64 4
  %111 = icmp eq ptr %58, null
  %112 = getelementptr inbounds float, ptr %58, i64 4
  %113 = select i1 %111, ptr null, ptr %112
  %114 = icmp eq ptr %57, null
  %115 = getelementptr inbounds float, ptr %57, i64 4
  %116 = select i1 %114, ptr null, ptr %115
  %117 = add nuw nsw i32 %55, 1
  %118 = icmp eq i32 %117, %16
  br i1 %118, label %119, label %54, !llvm.loop !139

119:                                              ; preds = %107, %49
  %120 = phi ptr [ %52, %49 ], [ %113, %107 ]
  %121 = phi ptr [ %51, %49 ], [ %116, %107 ]
  %122 = phi ptr [ %50, %49 ], [ %110, %107 ]
  %123 = add nuw nsw i32 %53, 1
  %124 = icmp eq i32 %123, %18
  br i1 %124, label %125, label %49, !llvm.loop !140

125:                                              ; preds = %119, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  br label %324

126:                                              ; preds = %8
  %127 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %128 = load ptr, ptr %127, align 8, !tbaa !87
  %129 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %130 = load ptr, ptr %129, align 8, !tbaa !87
  %131 = getelementptr inbounds %struct.ImBuf, ptr %11, i64 0, i32 8
  %132 = load ptr, ptr %131, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  %133 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %134 = load ptr, ptr %133, align 8, !tbaa !34
  %135 = getelementptr inbounds %struct.WipeVars, ptr %134, i64 0, i32 1
  %136 = load float, ptr %135, align 4, !tbaa !129
  %137 = fcmp olt float %136, 0.000000e+00
  %138 = zext i1 %137 to i32
  %139 = getelementptr inbounds %struct.WipeZone, ptr %9, i64 0, i32 1
  store i32 %138, ptr %139, align 4, !tbaa !131
  %140 = tail call float @llvm.fabs.f32(float %136)
  %141 = tail call float @tanf(float noundef %140) #16
  store float %141, ptr %9, align 4, !tbaa !133
  %142 = getelementptr inbounds %struct.WipeZone, ptr %9, i64 0, i32 2
  store i32 %16, ptr %142, align 4, !tbaa !134
  %143 = getelementptr inbounds %struct.WipeZone, ptr %9, i64 0, i32 3
  store i32 %18, ptr %143, align 4, !tbaa !135
  %144 = load float, ptr %134, align 4, !tbaa !136
  %145 = add nsw i32 %18, %16
  %146 = sitofp i32 %145 to float
  %147 = fmul float %146, 5.000000e-01
  %148 = fmul float %147, %144
  %149 = fptosi float %148 to i32
  %150 = getelementptr inbounds %struct.WipeZone, ptr %9, i64 0, i32 4
  store i32 %149, ptr %150, align 4, !tbaa !137
  %151 = tail call float @llvm.fmuladd.f32(float %141, float %141, float 1.000000e+00)
  %152 = tail call float @sqrtf(float noundef %151) #16
  %153 = fdiv float 1.000000e+00, %152
  %154 = getelementptr inbounds %struct.WipeZone, ptr %9, i64 0, i32 5
  store float %153, ptr %154, align 4, !tbaa !138
  %155 = icmp sgt i32 %18, 0
  br i1 %155, label %156, label %323

156:                                              ; preds = %126
  %157 = icmp sgt i32 %16, 0
  br label %158

158:                                              ; preds = %156, %317
  %159 = phi ptr [ %132, %156 ], [ %320, %317 ]
  %160 = phi ptr [ %130, %156 ], [ %319, %317 ]
  %161 = phi ptr [ %128, %156 ], [ %318, %317 ]
  %162 = phi i32 [ 0, %156 ], [ %321, %317 ]
  br i1 %157, label %163, label %317

163:                                              ; preds = %158, %305
  %164 = phi i32 [ %315, %305 ], [ 0, %158 ]
  %165 = phi ptr [ %308, %305 ], [ %159, %158 ]
  %166 = phi ptr [ %314, %305 ], [ %160, %158 ]
  %167 = phi ptr [ %311, %305 ], [ %161, %158 ]
  %168 = call fastcc float @check_zone(ptr noundef nonnull %9, i32 noundef %164, i32 noundef %162, ptr noundef %1, float noundef %3)
  %169 = fcmp une float %168, 0.000000e+00
  br i1 %169, label %170, label %290

170:                                              ; preds = %163
  %171 = icmp eq ptr %167, null
  br i1 %171, label %287, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds i8, ptr %167, i64 3
  %174 = load i8, ptr %173, align 1, !tbaa !67
  %175 = uitofp i8 %174 to float
  %176 = fmul float %175, 0x3F70101020000000
  %177 = fmul float %176, 0x3F70101020000000
  %178 = load i8, ptr %167, align 1, !tbaa !67
  %179 = uitofp i8 %178 to float
  %180 = fmul float %177, %179
  %181 = getelementptr inbounds i8, ptr %167, i64 1
  %182 = load i8, ptr %181, align 1, !tbaa !67
  %183 = uitofp i8 %182 to float
  %184 = fmul float %177, %183
  %185 = getelementptr inbounds i8, ptr %167, i64 2
  %186 = load i8, ptr %185, align 1, !tbaa !67
  %187 = uitofp i8 %186 to float
  %188 = fmul float %177, %187
  %189 = getelementptr inbounds i8, ptr %166, i64 3
  %190 = load i8, ptr %189, align 1, !tbaa !67
  %191 = uitofp i8 %190 to float
  %192 = fmul float %191, 0x3F70101020000000
  %193 = fmul float %192, 0x3F70101020000000
  %194 = load i8, ptr %166, align 1, !tbaa !67
  %195 = uitofp i8 %194 to float
  %196 = fmul float %193, %195
  %197 = getelementptr inbounds i8, ptr %166, i64 1
  %198 = load i8, ptr %197, align 1, !tbaa !67
  %199 = uitofp i8 %198 to float
  %200 = fmul float %193, %199
  %201 = getelementptr inbounds i8, ptr %166, i64 2
  %202 = load i8, ptr %201, align 1, !tbaa !67
  %203 = uitofp i8 %202 to float
  %204 = fmul float %193, %203
  %205 = fsub float 1.000000e+00, %168
  %206 = fmul float %205, %196
  %207 = tail call float @llvm.fmuladd.f32(float %180, float %168, float %206)
  %208 = fmul float %205, %200
  %209 = tail call float @llvm.fmuladd.f32(float %184, float %168, float %208)
  %210 = fmul float %205, %204
  %211 = tail call float @llvm.fmuladd.f32(float %188, float %168, float %210)
  %212 = fmul float %205, %192
  %213 = tail call float @llvm.fmuladd.f32(float %176, float %168, float %212)
  %214 = fcmp oeq float %213, 0.000000e+00
  %215 = fcmp oeq float %213, 1.000000e+00
  %216 = or i1 %214, %215
  br i1 %216, label %217, label %250

217:                                              ; preds = %172
  %218 = fcmp ugt float %207, 0.000000e+00
  br i1 %218, label %219, label %224

219:                                              ; preds = %217
  %220 = fcmp ogt float %207, 0x3FEFEFEFE0000000
  br i1 %220, label %224, label %221

221:                                              ; preds = %219
  %222 = tail call float @llvm.fmuladd.f32(float %207, float 2.550000e+02, float 5.000000e-01)
  %223 = fptoui float %222 to i8
  br label %224

224:                                              ; preds = %221, %219, %217
  %225 = phi i8 [ 0, %217 ], [ %223, %221 ], [ -1, %219 ]
  store i8 %225, ptr %165, align 1, !tbaa !67
  %226 = fcmp ugt float %209, 0.000000e+00
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = fcmp ogt float %209, 0x3FEFEFEFE0000000
  br i1 %228, label %232, label %229

229:                                              ; preds = %227
  %230 = tail call float @llvm.fmuladd.f32(float %209, float 2.550000e+02, float 5.000000e-01)
  %231 = fptoui float %230 to i8
  br label %232

232:                                              ; preds = %229, %227, %224
  %233 = phi i8 [ 0, %224 ], [ %231, %229 ], [ -1, %227 ]
  %234 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 %233, ptr %234, align 1, !tbaa !67
  %235 = fcmp ugt float %211, 0.000000e+00
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = fcmp ogt float %211, 0x3FEFEFEFE0000000
  br i1 %237, label %241, label %238

238:                                              ; preds = %236
  %239 = tail call float @llvm.fmuladd.f32(float %211, float 2.550000e+02, float 5.000000e-01)
  %240 = fptoui float %239 to i8
  br label %241

241:                                              ; preds = %238, %236, %232
  %242 = phi i8 [ 0, %232 ], [ %240, %238 ], [ -1, %236 ]
  %243 = getelementptr inbounds i8, ptr %165, i64 2
  store i8 %242, ptr %243, align 1, !tbaa !67
  %244 = fcmp ugt float %213, 0.000000e+00
  br i1 %244, label %245, label %305

245:                                              ; preds = %241
  %246 = fcmp ogt float %213, 0x3FEFEFEFE0000000
  br i1 %246, label %305, label %247

247:                                              ; preds = %245
  %248 = tail call float @llvm.fmuladd.f32(float %213, float 2.550000e+02, float 5.000000e-01)
  %249 = fptoui float %248 to i8
  br label %305

250:                                              ; preds = %172
  %251 = fdiv float 1.000000e+00, %213
  %252 = fmul float %251, %207
  %253 = fcmp ugt float %252, 0.000000e+00
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = fcmp ogt float %252, 0x3FEFEFEFE0000000
  br i1 %255, label %259, label %256

256:                                              ; preds = %254
  %257 = tail call float @llvm.fmuladd.f32(float %252, float 2.550000e+02, float 5.000000e-01)
  %258 = fptoui float %257 to i8
  br label %259

259:                                              ; preds = %256, %254, %250
  %260 = phi i8 [ 0, %250 ], [ %258, %256 ], [ -1, %254 ]
  store i8 %260, ptr %165, align 1, !tbaa !67
  %261 = fmul float %251, %209
  %262 = fcmp ugt float %261, 0.000000e+00
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = fcmp ogt float %261, 0x3FEFEFEFE0000000
  br i1 %264, label %268, label %265

265:                                              ; preds = %263
  %266 = tail call float @llvm.fmuladd.f32(float %261, float 2.550000e+02, float 5.000000e-01)
  %267 = fptoui float %266 to i8
  br label %268

268:                                              ; preds = %265, %263, %259
  %269 = phi i8 [ 0, %259 ], [ %267, %265 ], [ -1, %263 ]
  %270 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 %269, ptr %270, align 1, !tbaa !67
  %271 = fmul float %251, %211
  %272 = fcmp ugt float %271, 0.000000e+00
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = fcmp ogt float %271, 0x3FEFEFEFE0000000
  br i1 %274, label %278, label %275

275:                                              ; preds = %273
  %276 = tail call float @llvm.fmuladd.f32(float %271, float 2.550000e+02, float 5.000000e-01)
  %277 = fptoui float %276 to i8
  br label %278

278:                                              ; preds = %275, %273, %268
  %279 = phi i8 [ 0, %268 ], [ %277, %275 ], [ -1, %273 ]
  %280 = getelementptr inbounds i8, ptr %165, i64 2
  store i8 %279, ptr %280, align 1, !tbaa !67
  %281 = fcmp ugt float %213, 0.000000e+00
  br i1 %281, label %282, label %305

282:                                              ; preds = %278
  %283 = fcmp ogt float %213, 0x3FEFEFEFE0000000
  br i1 %283, label %305, label %284

284:                                              ; preds = %282
  %285 = tail call float @llvm.fmuladd.f32(float %213, float 2.550000e+02, float 5.000000e-01)
  %286 = fptoui float %285 to i8
  br label %305

287:                                              ; preds = %170
  store i8 0, ptr %165, align 1, !tbaa !67
  %288 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 0, ptr %288, align 1, !tbaa !67
  %289 = getelementptr inbounds i8, ptr %165, i64 2
  store i8 0, ptr %289, align 1, !tbaa !67
  br label %305

290:                                              ; preds = %163
  %291 = icmp eq ptr %166, null
  br i1 %291, label %302, label %292

292:                                              ; preds = %290
  %293 = load i8, ptr %166, align 1, !tbaa !67
  store i8 %293, ptr %165, align 1, !tbaa !67
  %294 = getelementptr inbounds i8, ptr %166, i64 1
  %295 = load i8, ptr %294, align 1, !tbaa !67
  %296 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 %295, ptr %296, align 1, !tbaa !67
  %297 = getelementptr inbounds i8, ptr %166, i64 2
  %298 = load i8, ptr %297, align 1, !tbaa !67
  %299 = getelementptr inbounds i8, ptr %165, i64 2
  store i8 %298, ptr %299, align 1, !tbaa !67
  %300 = getelementptr inbounds i8, ptr %166, i64 3
  %301 = load i8, ptr %300, align 1, !tbaa !67
  br label %305

302:                                              ; preds = %290
  store i8 0, ptr %165, align 1, !tbaa !67
  %303 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 0, ptr %303, align 1, !tbaa !67
  %304 = getelementptr inbounds i8, ptr %165, i64 2
  store i8 0, ptr %304, align 1, !tbaa !67
  br label %305

305:                                              ; preds = %278, %282, %284, %241, %245, %247, %302, %292, %287
  %306 = phi i8 [ -1, %302 ], [ %301, %292 ], [ -1, %287 ], [ 0, %241 ], [ %249, %247 ], [ -1, %245 ], [ 0, %278 ], [ %286, %284 ], [ -1, %282 ]
  %307 = getelementptr inbounds i8, ptr %165, i64 3
  store i8 %306, ptr %307, align 1, !tbaa !67
  %308 = getelementptr inbounds i8, ptr %165, i64 4
  %309 = icmp eq ptr %167, null
  %310 = getelementptr inbounds i8, ptr %167, i64 4
  %311 = select i1 %309, ptr null, ptr %310
  %312 = icmp eq ptr %166, null
  %313 = getelementptr inbounds i8, ptr %166, i64 4
  %314 = select i1 %312, ptr null, ptr %313
  %315 = add nuw nsw i32 %164, 1
  %316 = icmp eq i32 %315, %16
  br i1 %316, label %317, label %163, !llvm.loop !141

317:                                              ; preds = %305, %158
  %318 = phi ptr [ %161, %158 ], [ %311, %305 ]
  %319 = phi ptr [ %160, %158 ], [ %314, %305 ]
  %320 = phi ptr [ %159, %158 ], [ %308, %305 ]
  %321 = add nuw nsw i32 %162, 1
  %322 = icmp eq i32 %321, %18
  br i1 %322, label %323, label %158, !llvm.loop !142

323:                                              ; preds = %317, %126
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  br label %324

324:                                              ; preds = %323, %125
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal void @init_glow_effect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %9 = tail call ptr %8(i64 noundef 24, ptr noundef nonnull @.str.3) #16
  store ptr %9, ptr %2, align 8, !tbaa !34
  store float 2.500000e-01, ptr %9, align 4, !tbaa !143
  %10 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 1
  store float 1.000000e+00, ptr %10, align 4, !tbaa !145
  %11 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 2
  store float 5.000000e-01, ptr %11, align 4, !tbaa !146
  %12 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 3
  store float 3.000000e+00, ptr %12, align 4, !tbaa !147
  %13 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 4
  store i32 3, ptr %13, align 4, !tbaa !148
  %14 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 5
  store i32 0, ptr %14, align 4, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_glow() #5 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @free_glow_effect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_glow_effect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @do_glow_effect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float %2, float noundef %3, float %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %10 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !85
  %12 = mul nsw i32 %11, 100
  %13 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !150
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 33
  %16 = load i32, ptr %15, align 4, !tbaa !151
  %17 = sdiv i32 %12, %16
  %18 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !128
  br i1 %20, label %172, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = load float, ptr %27, align 4, !tbaa !143
  %29 = fmul float %28, 3.000000e+00
  %30 = getelementptr inbounds %struct.GlowVars, ptr %27, i64 0, i32 2
  %31 = load float, ptr %30, align 4, !tbaa !146
  %32 = fmul float %31, %3
  %33 = getelementptr inbounds %struct.GlowVars, ptr %27, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !145
  %35 = icmp slt i32 %22, 1
  br i1 %35, label %106, label %36

36:                                               ; preds = %23
  %37 = icmp sgt i32 %11, 0
  %38 = zext nneg i32 %22 to i64
  %39 = zext nneg i32 %11 to i64
  br label %40

40:                                               ; preds = %103, %36
  %41 = phi i64 [ 0, %36 ], [ %104, %103 ]
  br i1 %37, label %42, label %103

42:                                               ; preds = %40
  %43 = trunc i64 %41 to i32
  %44 = mul i32 %11, %43
  br label %45

45:                                               ; preds = %97, %42
  %46 = phi i64 [ 0, %42 ], [ %101, %97 ]
  %47 = trunc i64 %46 to i32
  %48 = add i32 %44, %47
  %49 = shl nsw i32 %48, 2
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds float, ptr %25, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !58
  %53 = or disjoint i32 %49, 1
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds float, ptr %25, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !58
  %57 = fadd float %52, %56
  %58 = or disjoint i32 %49, 2
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds float, ptr %25, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !58
  %62 = fadd float %57, %61
  %63 = fsub float %62, %29
  %64 = fcmp ogt float %63, 0.000000e+00
  br i1 %64, label %65, label %91

65:                                               ; preds = %45
  %66 = fmul float %32, %52
  %67 = fmul float %66, %63
  %68 = fcmp ogt float %67, %34
  %69 = select i1 %68, float %34, float %67
  %70 = getelementptr inbounds float, ptr %19, i64 %50
  store float %69, ptr %70, align 4, !tbaa !58
  %71 = load float, ptr %55, align 4, !tbaa !58
  %72 = fmul float %32, %71
  %73 = fmul float %63, %72
  %74 = fcmp ogt float %73, %34
  %75 = select i1 %74, float %34, float %73
  %76 = getelementptr inbounds float, ptr %19, i64 %54
  store float %75, ptr %76, align 4, !tbaa !58
  %77 = load float, ptr %60, align 4, !tbaa !58
  %78 = fmul float %32, %77
  %79 = fmul float %63, %78
  %80 = fcmp ogt float %79, %34
  %81 = select i1 %80, float %34, float %79
  %82 = getelementptr inbounds float, ptr %19, i64 %59
  store float %81, ptr %82, align 4, !tbaa !58
  %83 = or disjoint i32 %49, 3
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds float, ptr %25, i64 %84
  %86 = load float, ptr %85, align 4, !tbaa !58
  %87 = fmul float %32, %86
  %88 = fmul float %63, %87
  %89 = fcmp ogt float %88, %34
  %90 = select i1 %89, float %34, float %88
  br label %97

91:                                               ; preds = %45
  %92 = getelementptr inbounds float, ptr %19, i64 %50
  store float 0.000000e+00, ptr %92, align 4, !tbaa !58
  %93 = getelementptr inbounds float, ptr %19, i64 %54
  store float 0.000000e+00, ptr %93, align 4, !tbaa !58
  %94 = getelementptr inbounds float, ptr %19, i64 %59
  store float 0.000000e+00, ptr %94, align 4, !tbaa !58
  %95 = or disjoint i32 %49, 3
  %96 = zext nneg i32 %95 to i64
  br label %97

97:                                               ; preds = %91, %65
  %98 = phi i64 [ %96, %91 ], [ %84, %65 ]
  %99 = phi float [ 0.000000e+00, %91 ], [ %90, %65 ]
  %100 = getelementptr inbounds float, ptr %19, i64 %98
  store float %99, ptr %100, align 4, !tbaa !58
  %101 = add nuw nsw i64 %46, 1
  %102 = icmp eq i64 %101, %39
  br i1 %102, label %103, label %45, !llvm.loop !171

103:                                              ; preds = %97, %40
  %104 = add nuw nsw i64 %41, 1
  %105 = icmp eq i64 %104, %38
  br i1 %105, label %106, label %40, !llvm.loop !172

106:                                              ; preds = %103, %23
  %107 = getelementptr inbounds %struct.GlowVars, ptr %27, i64 0, i32 3
  %108 = load float, ptr %107, align 4, !tbaa !147
  %109 = sitofp i32 %17 to float
  %110 = fdiv float %109, 1.000000e+02
  %111 = fmul float %110, %108
  %112 = getelementptr inbounds %struct.GlowVars, ptr %27, i64 0, i32 4
  %113 = load i32, ptr %112, align 4, !tbaa !148
  tail call fastcc void @RVBlurBitmap2_float(ptr noundef nonnull %19, i32 noundef %11, i32 noundef %22, float noundef %111, i32 noundef %113)
  %114 = getelementptr inbounds %struct.GlowVars, ptr %27, i64 0, i32 5
  %115 = load i32, ptr %114, align 4, !tbaa !149
  %116 = icmp ne i32 %115, 0
  %117 = or i1 %35, %116
  br i1 %117, label %334, label %118

118:                                              ; preds = %106
  %119 = icmp sgt i32 %11, 0
  %120 = zext nneg i32 %22 to i64
  %121 = zext nneg i32 %11 to i64
  br label %122

122:                                              ; preds = %169, %118
  %123 = phi i64 [ 0, %118 ], [ %170, %169 ]
  br i1 %119, label %124, label %169

124:                                              ; preds = %122
  %125 = trunc i64 %123 to i32
  %126 = mul i32 %11, %125
  br label %127

127:                                              ; preds = %127, %124
  %128 = phi i64 [ 0, %124 ], [ %167, %127 ]
  %129 = trunc i64 %128 to i32
  %130 = add i32 %126, %129
  %131 = shl nsw i32 %130, 2
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds float, ptr %25, i64 %132
  %134 = load float, ptr %133, align 4, !tbaa !58
  %135 = getelementptr inbounds float, ptr %19, i64 %132
  %136 = load float, ptr %135, align 4, !tbaa !58
  %137 = fadd float %134, %136
  %138 = fcmp ogt float %137, 1.000000e+00
  %139 = select i1 %138, float 1.000000e+00, float %137
  store float %139, ptr %135, align 4, !tbaa !58
  %140 = or disjoint i32 %131, 1
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds float, ptr %25, i64 %141
  %143 = load float, ptr %142, align 4, !tbaa !58
  %144 = getelementptr inbounds float, ptr %19, i64 %141
  %145 = load float, ptr %144, align 4, !tbaa !58
  %146 = fadd float %143, %145
  %147 = fcmp ogt float %146, 1.000000e+00
  %148 = select i1 %147, float 1.000000e+00, float %146
  store float %148, ptr %144, align 4, !tbaa !58
  %149 = or disjoint i32 %131, 2
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds float, ptr %25, i64 %150
  %152 = load float, ptr %151, align 4, !tbaa !58
  %153 = getelementptr inbounds float, ptr %19, i64 %150
  %154 = load float, ptr %153, align 4, !tbaa !58
  %155 = fadd float %152, %154
  %156 = fcmp ogt float %155, 1.000000e+00
  %157 = select i1 %156, float 1.000000e+00, float %155
  store float %157, ptr %153, align 4, !tbaa !58
  %158 = or disjoint i32 %131, 3
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds float, ptr %25, i64 %159
  %161 = load float, ptr %160, align 4, !tbaa !58
  %162 = getelementptr inbounds float, ptr %19, i64 %159
  %163 = load float, ptr %162, align 4, !tbaa !58
  %164 = fadd float %161, %163
  %165 = fcmp ogt float %164, 1.000000e+00
  %166 = select i1 %165, float 1.000000e+00, float %164
  store float %166, ptr %162, align 4, !tbaa !58
  %167 = add nuw nsw i64 %128, 1
  %168 = icmp eq i64 %167, %121
  br i1 %168, label %169, label %127, !llvm.loop !173

169:                                              ; preds = %127, %122
  %170 = add nuw nsw i64 %123, 1
  %171 = icmp eq i64 %170, %120
  br i1 %171, label %334, label %122, !llvm.loop !174

172:                                              ; preds = %8
  %173 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %174 = load ptr, ptr %173, align 8, !tbaa !87
  %175 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %176 = load ptr, ptr %175, align 8, !tbaa !87
  %177 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %178 = load ptr, ptr %177, align 8, !tbaa !34
  %179 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %180 = sext i32 %11 to i64
  %181 = shl nsw i64 %180, 4
  %182 = sext i32 %22 to i64
  %183 = mul i64 %181, %182
  %184 = tail call ptr %179(i64 noundef %183, ptr noundef nonnull @.str.6) #16
  %185 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %186 = tail call ptr %185(i64 noundef %183, ptr noundef nonnull @.str.7) #16
  tail call void @IMB_buffer_float_from_byte(ptr noundef %184, ptr noundef %174, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %11, i32 noundef %22, i32 noundef %11, i32 noundef %11) #16
  tail call void @IMB_buffer_float_premultiply(ptr noundef %184, i32 noundef %11, i32 noundef %22) #16
  %187 = load float, ptr %178, align 4, !tbaa !143
  %188 = fmul float %187, 3.000000e+00
  %189 = getelementptr inbounds %struct.GlowVars, ptr %178, i64 0, i32 2
  %190 = load float, ptr %189, align 4, !tbaa !146
  %191 = fmul float %190, %3
  %192 = getelementptr inbounds %struct.GlowVars, ptr %178, i64 0, i32 1
  %193 = load float, ptr %192, align 4, !tbaa !145
  %194 = icmp slt i32 %22, 1
  br i1 %194, label %265, label %195

195:                                              ; preds = %172
  %196 = icmp sgt i32 %11, 0
  %197 = zext nneg i32 %22 to i64
  %198 = zext nneg i32 %11 to i64
  br label %199

199:                                              ; preds = %262, %195
  %200 = phi i64 [ 0, %195 ], [ %263, %262 ]
  br i1 %196, label %201, label %262

201:                                              ; preds = %199
  %202 = trunc i64 %200 to i32
  %203 = mul i32 %11, %202
  br label %204

204:                                              ; preds = %256, %201
  %205 = phi i64 [ 0, %201 ], [ %260, %256 ]
  %206 = trunc i64 %205 to i32
  %207 = add i32 %203, %206
  %208 = shl nsw i32 %207, 2
  %209 = zext nneg i32 %208 to i64
  %210 = getelementptr inbounds float, ptr %184, i64 %209
  %211 = load float, ptr %210, align 4, !tbaa !58
  %212 = or disjoint i32 %208, 1
  %213 = zext nneg i32 %212 to i64
  %214 = getelementptr inbounds float, ptr %184, i64 %213
  %215 = load float, ptr %214, align 4, !tbaa !58
  %216 = fadd float %211, %215
  %217 = or disjoint i32 %208, 2
  %218 = zext nneg i32 %217 to i64
  %219 = getelementptr inbounds float, ptr %184, i64 %218
  %220 = load float, ptr %219, align 4, !tbaa !58
  %221 = fadd float %216, %220
  %222 = fsub float %221, %188
  %223 = fcmp ogt float %222, 0.000000e+00
  br i1 %223, label %224, label %250

224:                                              ; preds = %204
  %225 = fmul float %191, %211
  %226 = fmul float %225, %222
  %227 = fcmp ogt float %226, %193
  %228 = select i1 %227, float %193, float %226
  %229 = getelementptr inbounds float, ptr %186, i64 %209
  store float %228, ptr %229, align 4, !tbaa !58
  %230 = load float, ptr %214, align 4, !tbaa !58
  %231 = fmul float %191, %230
  %232 = fmul float %222, %231
  %233 = fcmp ogt float %232, %193
  %234 = select i1 %233, float %193, float %232
  %235 = getelementptr inbounds float, ptr %186, i64 %213
  store float %234, ptr %235, align 4, !tbaa !58
  %236 = load float, ptr %219, align 4, !tbaa !58
  %237 = fmul float %191, %236
  %238 = fmul float %222, %237
  %239 = fcmp ogt float %238, %193
  %240 = select i1 %239, float %193, float %238
  %241 = getelementptr inbounds float, ptr %186, i64 %218
  store float %240, ptr %241, align 4, !tbaa !58
  %242 = or disjoint i32 %208, 3
  %243 = zext nneg i32 %242 to i64
  %244 = getelementptr inbounds float, ptr %184, i64 %243
  %245 = load float, ptr %244, align 4, !tbaa !58
  %246 = fmul float %191, %245
  %247 = fmul float %222, %246
  %248 = fcmp ogt float %247, %193
  %249 = select i1 %248, float %193, float %247
  br label %256

250:                                              ; preds = %204
  %251 = getelementptr inbounds float, ptr %186, i64 %209
  store float 0.000000e+00, ptr %251, align 4, !tbaa !58
  %252 = getelementptr inbounds float, ptr %186, i64 %213
  store float 0.000000e+00, ptr %252, align 4, !tbaa !58
  %253 = getelementptr inbounds float, ptr %186, i64 %218
  store float 0.000000e+00, ptr %253, align 4, !tbaa !58
  %254 = or disjoint i32 %208, 3
  %255 = zext nneg i32 %254 to i64
  br label %256

256:                                              ; preds = %250, %224
  %257 = phi i64 [ %255, %250 ], [ %243, %224 ]
  %258 = phi float [ 0.000000e+00, %250 ], [ %249, %224 ]
  %259 = getelementptr inbounds float, ptr %186, i64 %257
  store float %258, ptr %259, align 4, !tbaa !58
  %260 = add nuw nsw i64 %205, 1
  %261 = icmp eq i64 %260, %198
  br i1 %261, label %262, label %204, !llvm.loop !171

262:                                              ; preds = %256, %199
  %263 = add nuw nsw i64 %200, 1
  %264 = icmp eq i64 %263, %197
  br i1 %264, label %265, label %199, !llvm.loop !172

265:                                              ; preds = %262, %172
  %266 = getelementptr inbounds %struct.GlowVars, ptr %178, i64 0, i32 3
  %267 = load float, ptr %266, align 4, !tbaa !147
  %268 = sitofp i32 %17 to float
  %269 = fdiv float %268, 1.000000e+02
  %270 = fmul float %269, %267
  %271 = getelementptr inbounds %struct.GlowVars, ptr %178, i64 0, i32 4
  %272 = load i32, ptr %271, align 4, !tbaa !148
  tail call fastcc void @RVBlurBitmap2_float(ptr noundef %186, i32 noundef %11, i32 noundef %22, float noundef %270, i32 noundef %272)
  %273 = getelementptr inbounds %struct.GlowVars, ptr %178, i64 0, i32 5
  %274 = load i32, ptr %273, align 4, !tbaa !149
  %275 = icmp ne i32 %274, 0
  %276 = or i1 %194, %275
  br i1 %276, label %331, label %277

277:                                              ; preds = %265
  %278 = icmp sgt i32 %11, 0
  %279 = zext nneg i32 %22 to i64
  %280 = zext nneg i32 %11 to i64
  br label %281

281:                                              ; preds = %328, %277
  %282 = phi i64 [ 0, %277 ], [ %329, %328 ]
  br i1 %278, label %283, label %328

283:                                              ; preds = %281
  %284 = trunc i64 %282 to i32
  %285 = mul i32 %11, %284
  br label %286

286:                                              ; preds = %286, %283
  %287 = phi i64 [ 0, %283 ], [ %326, %286 ]
  %288 = trunc i64 %287 to i32
  %289 = add i32 %285, %288
  %290 = shl nsw i32 %289, 2
  %291 = zext nneg i32 %290 to i64
  %292 = getelementptr inbounds float, ptr %184, i64 %291
  %293 = load float, ptr %292, align 4, !tbaa !58
  %294 = getelementptr inbounds float, ptr %186, i64 %291
  %295 = load float, ptr %294, align 4, !tbaa !58
  %296 = fadd float %293, %295
  %297 = fcmp ogt float %296, 1.000000e+00
  %298 = select i1 %297, float 1.000000e+00, float %296
  store float %298, ptr %294, align 4, !tbaa !58
  %299 = or disjoint i32 %290, 1
  %300 = zext nneg i32 %299 to i64
  %301 = getelementptr inbounds float, ptr %184, i64 %300
  %302 = load float, ptr %301, align 4, !tbaa !58
  %303 = getelementptr inbounds float, ptr %186, i64 %300
  %304 = load float, ptr %303, align 4, !tbaa !58
  %305 = fadd float %302, %304
  %306 = fcmp ogt float %305, 1.000000e+00
  %307 = select i1 %306, float 1.000000e+00, float %305
  store float %307, ptr %303, align 4, !tbaa !58
  %308 = or disjoint i32 %290, 2
  %309 = zext nneg i32 %308 to i64
  %310 = getelementptr inbounds float, ptr %184, i64 %309
  %311 = load float, ptr %310, align 4, !tbaa !58
  %312 = getelementptr inbounds float, ptr %186, i64 %309
  %313 = load float, ptr %312, align 4, !tbaa !58
  %314 = fadd float %311, %313
  %315 = fcmp ogt float %314, 1.000000e+00
  %316 = select i1 %315, float 1.000000e+00, float %314
  store float %316, ptr %312, align 4, !tbaa !58
  %317 = or disjoint i32 %290, 3
  %318 = zext nneg i32 %317 to i64
  %319 = getelementptr inbounds float, ptr %184, i64 %318
  %320 = load float, ptr %319, align 4, !tbaa !58
  %321 = getelementptr inbounds float, ptr %186, i64 %318
  %322 = load float, ptr %321, align 4, !tbaa !58
  %323 = fadd float %320, %322
  %324 = fcmp ogt float %323, 1.000000e+00
  %325 = select i1 %324, float 1.000000e+00, float %323
  store float %325, ptr %321, align 4, !tbaa !58
  %326 = add nuw nsw i64 %287, 1
  %327 = icmp eq i64 %326, %280
  br i1 %327, label %328, label %286, !llvm.loop !173

328:                                              ; preds = %286, %281
  %329 = add nuw nsw i64 %282, 1
  %330 = icmp eq i64 %329, %279
  br i1 %330, label %331, label %281, !llvm.loop !174

331:                                              ; preds = %328, %265
  tail call void @IMB_buffer_float_unpremultiply(ptr noundef %186, i32 noundef %11, i32 noundef %22) #16
  tail call void @IMB_buffer_byte_from_float(ptr noundef %176, ptr noundef %186, i32 noundef 4, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %11, i32 noundef %22, i32 noundef %11, i32 noundef %11) #16
  %332 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %332(ptr noundef %184) #16
  %333 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %333(ptr noundef %186) #16
  br label %334

334:                                              ; preds = %169, %106, %331
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal void @init_transform_effect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %9 = tail call ptr %8(i64 noundef 32, ptr noundef nonnull @.str.8) #16
  store ptr %9, ptr %2, align 8, !tbaa !34
  store float 1.000000e+00, ptr %9, align 4, !tbaa !175
  %10 = getelementptr inbounds %struct.TransformVars, ptr %9, i64 0, i32 1
  store float 1.000000e+00, ptr %10, align 4, !tbaa !177
  %11 = getelementptr inbounds %struct.TransformVars, ptr %9, i64 0, i32 2
  store float 0.000000e+00, ptr %11, align 4, !tbaa !178
  %12 = getelementptr inbounds %struct.TransformVars, ptr %9, i64 0, i32 3
  store float 0.000000e+00, ptr %12, align 4, !tbaa !179
  %13 = getelementptr inbounds %struct.TransformVars, ptr %9, i64 0, i32 4
  store float 0.000000e+00, ptr %13, align 4, !tbaa !180
  %14 = getelementptr inbounds %struct.TransformVars, ptr %9, i64 0, i32 6
  store i32 1, ptr %14, align 4, !tbaa !181
  %15 = getelementptr inbounds %struct.TransformVars, ptr %9, i64 0, i32 5
  store i32 1, ptr %15, align 4, !tbaa !182
  %16 = getelementptr inbounds %struct.TransformVars, ptr %9, i64 0, i32 7
  store i32 0, ptr %16, align 4, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_transform() #5 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @free_transform_effect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_transform_effect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @do_transform_effect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float %2, float %3, float %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %10 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !85
  %14 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !128
  %16 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.TransformVars, ptr %17, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !183
  %20 = icmp eq i32 %19, 0
  %21 = load float, ptr %17, align 4, !tbaa !175
  br i1 %20, label %22, label %25

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.TransformVars, ptr %17, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !177
  br label %25

25:                                               ; preds = %8, %22
  %26 = phi float [ %24, %22 ], [ %21, %8 ]
  %27 = getelementptr inbounds %struct.TransformVars, ptr %17, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !182
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 30
  %32 = load i16, ptr %31, align 2, !tbaa !184
  %33 = sitofp i16 %32 to float
  %34 = fdiv float %33, 1.000000e+02
  %35 = getelementptr inbounds %struct.TransformVars, ptr %17, i64 0, i32 2
  %36 = load float, ptr %35, align 4, !tbaa !178
  %37 = sitofp i32 %13 to float
  %38 = fmul float %37, 5.000000e-01
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %34, float %38)
  %40 = getelementptr inbounds %struct.TransformVars, ptr %17, i64 0, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !179
  %42 = sitofp i32 %15 to float
  %43 = fmul float %42, 5.000000e-01
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %34, float %43)
  br label %58

45:                                               ; preds = %25
  %46 = sitofp i32 %13 to float
  %47 = getelementptr inbounds %struct.TransformVars, ptr %17, i64 0, i32 2
  %48 = load float, ptr %47, align 4, !tbaa !178
  %49 = fdiv float %48, 1.000000e+02
  %50 = fmul float %46, 5.000000e-01
  %51 = tail call float @llvm.fmuladd.f32(float %46, float %49, float %50)
  %52 = sitofp i32 %15 to float
  %53 = getelementptr inbounds %struct.TransformVars, ptr %17, i64 0, i32 3
  %54 = load float, ptr %53, align 4, !tbaa !179
  %55 = fdiv float %54, 1.000000e+02
  %56 = fmul float %52, 5.000000e-01
  %57 = tail call float @llvm.fmuladd.f32(float %52, float %55, float %56)
  br label %58

58:                                               ; preds = %45, %30
  %59 = phi float [ %51, %45 ], [ %39, %30 ]
  %60 = phi float [ %57, %45 ], [ %44, %30 ]
  %61 = getelementptr inbounds %struct.TransformVars, ptr %17, i64 0, i32 4
  %62 = load float, ptr %61, align 4, !tbaa !180
  %63 = fmul float %62, 0x3F91DF46A0000000
  %64 = getelementptr inbounds %struct.TransformVars, ptr %17, i64 0, i32 6
  %65 = load i32, ptr %64, align 4, !tbaa !181
  %66 = tail call float @sinf(float noundef %63) #16
  %67 = tail call float @cosf(float noundef %63) #16
  %68 = icmp sgt i32 %15, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %58
  %70 = icmp sgt i32 %13, 0
  %71 = fneg float %66
  %72 = sitofp i32 %13 to float
  %73 = fmul float %72, 5.000000e-01
  %74 = sitofp i32 %15 to float
  %75 = fmul float %74, 5.000000e-01
  br label %76

76:                                               ; preds = %69, %99
  %77 = phi i32 [ 0, %69 ], [ %100, %99 ]
  br i1 %70, label %78, label %99

78:                                               ; preds = %76
  %79 = sitofp i32 %77 to float
  %80 = fsub float %79, %60
  %81 = fmul float %66, %80
  %82 = fmul float %67, %80
  br label %83

83:                                               ; preds = %78, %96
  %84 = phi i32 [ 0, %78 ], [ %97, %96 ]
  %85 = sitofp i32 %84 to float
  %86 = fsub float %85, %59
  %87 = tail call float @llvm.fmuladd.f32(float %67, float %86, float %81)
  %88 = tail call float @llvm.fmuladd.f32(float %71, float %86, float %82)
  %89 = fdiv float %87, %21
  %90 = fdiv float %88, %26
  %91 = fadd float %73, %89
  %92 = fadd float %75, %90
  switch i32 %65, label %96 [
    i32 0, label %93
    i32 1, label %94
    i32 2, label %95
  ]

93:                                               ; preds = %83
  tail call void @nearest_interpolation(ptr noundef %5, ptr noundef %9, float noundef %91, float noundef %92, i32 noundef %84, i32 noundef %77) #16
  br label %96

94:                                               ; preds = %83
  tail call void @bilinear_interpolation(ptr noundef %5, ptr noundef %9, float noundef %91, float noundef %92, i32 noundef %84, i32 noundef %77) #16
  br label %96

95:                                               ; preds = %83
  tail call void @bicubic_interpolation(ptr noundef %5, ptr noundef %9, float noundef %91, float noundef %92, i32 noundef %84, i32 noundef %77) #16
  br label %96

96:                                               ; preds = %95, %94, %93, %83
  %97 = add nuw nsw i32 %84, 1
  %98 = icmp eq i32 %97, %13
  br i1 %98, label %99, label %83, !llvm.loop !185

99:                                               ; preds = %96, %76
  %100 = add nuw nsw i32 %77, 1
  %101 = icmp eq i32 %100, %15
  br i1 %101, label %102, label %76, !llvm.loop !186

102:                                              ; preds = %99, %58
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal void @init_speed_effect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %9 = tail call ptr %8(i64 noundef 24, ptr noundef nonnull @.str.9) #16
  store ptr %9, ptr %2, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.SpeedControlVars, ptr %9, i64 0, i32 1
  store float 1.000000e+00, ptr %10, align 8, !tbaa !61
  store ptr null, ptr %9, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.SpeedControlVars, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !43
  %14 = getelementptr inbounds %struct.SpeedControlVars, ptr %9, i64 0, i32 3
  store i32 0, ptr %14, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_speed() #5 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @load_speed_effect(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  store ptr null, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.SpeedControlVars, ptr %3, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_speed_effect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %7(ptr noundef nonnull %4) #16
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %12(ptr noundef nonnull %9) #16
  br label %13

13:                                               ; preds = %11, %8
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_speed_effect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  store ptr null, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 3
  store i32 0, ptr %8, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @do_speed_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %10 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !85
  %15 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !128
  br i1 %12, label %22, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  tail call fastcc void @do_cross_effect_float(float noundef %3, float noundef %4, i32 noundef %14, i32 noundef %16, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %11)
  br label %29

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  tail call fastcc void @do_cross_effect_byte(float noundef %3, float noundef %4, i32 noundef %14, i32 noundef %16, ptr noundef %24, ptr noundef %26, ptr noundef %28)
  br label %29

29:                                               ; preds = %22, %17
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @early_out_speed(ptr nocapture readnone %0, float %1, float %2) #5 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @store_icu_yrange_speed(ptr noundef %0, i16 signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !45, !noalias !187
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !49, !noalias !187
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %8, 29
  %18 = icmp eq i32 %8, 13
  %19 = select i1 %18, ptr @load_gammacross, ptr @load_noop
  %20 = select i1 %17, ptr @load_speed_effect, ptr %19
  tail call void %20(ptr noundef %0) #16, !noalias !187
  %21 = load i32, ptr %12, align 8, !tbaa !49, !noalias !187
  %22 = and i32 %21, -513
  store i32 %22, ptr %12, align 8, !tbaa !49, !noalias !187
  br label %23

23:                                               ; preds = %4, %11, %16
  %24 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !43
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store float -1.000000e+02, ptr %2, align 4, !tbaa !58
  br label %36

29:                                               ; preds = %23
  %30 = and i32 %25, 4
  %31 = icmp eq i32 %30, 0
  store float 0.000000e+00, ptr %2, align 4, !tbaa !58
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !50
  %35 = sitofp i32 %34 to float
  br label %36

36:                                               ; preds = %29, %32, %28
  %37 = phi float [ %35, %32 ], [ 1.000000e+02, %28 ], [ 1.000000e+00, %29 ]
  store float %37, ptr %3, align 4, !tbaa !58
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_solid_color(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %9 = tail call ptr %8(i64 noundef 16, ptr noundef nonnull @.str.10) #16
  store ptr %9, ptr %2, align 8, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 5.000000e-01, ptr %10, align 4, !tbaa !58
  %11 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 5.000000e-01, ptr %11, align 4, !tbaa !58
  store float 5.000000e-01, ptr %9, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_color() #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @early_out_color(ptr nocapture readnone %0, float %1, float %2) #5 {
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal void @free_solid_color(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_solid_color(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @do_solid_color(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %83, label %15

15:                                               ; preds = %8
  %16 = load float, ptr %11, align 4, !tbaa !58
  %17 = fmul float %16, %3
  %18 = fmul float %17, 2.550000e+02
  %19 = fptoui float %18 to i8
  %20 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !58
  %22 = fmul float %21, %3
  %23 = fmul float %22, 2.550000e+02
  %24 = fptoui float %23 to i8
  %25 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !58
  %27 = fmul float %26, %3
  %28 = fmul float %27, 2.550000e+02
  %29 = fptoui float %28 to i8
  %30 = fmul float %16, %4
  %31 = fmul float %30, 2.550000e+02
  %32 = fptoui float %31 to i8
  %33 = fmul float %21, %4
  %34 = fmul float %33, 2.550000e+02
  %35 = fptoui float %34 to i8
  %36 = fmul float %26, %4
  %37 = fmul float %36, 2.550000e+02
  %38 = fptoui float %37 to i8
  %39 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !190
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %137

42:                                               ; preds = %15
  %43 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %44 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  br label %45

45:                                               ; preds = %42, %78
  %46 = phi ptr [ %13, %42 ], [ %79, %78 ]
  %47 = phi i32 [ 0, %42 ], [ %80, %78 ]
  %48 = load i32, ptr %43, align 8, !tbaa !191
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45, %50
  %51 = phi ptr [ %57, %50 ], [ %46, %45 ]
  %52 = phi i32 [ %56, %50 ], [ 0, %45 ]
  store i8 %19, ptr %51, align 1, !tbaa !67
  %53 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %24, ptr %53, align 1, !tbaa !67
  %54 = getelementptr inbounds i8, ptr %51, i64 2
  store i8 %29, ptr %54, align 1, !tbaa !67
  %55 = getelementptr inbounds i8, ptr %51, i64 3
  store i8 -1, ptr %55, align 1, !tbaa !67
  %56 = add nuw nsw i32 %52, 1
  %57 = getelementptr inbounds i8, ptr %51, i64 4
  %58 = load i32, ptr %43, align 8, !tbaa !191
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %50, label %60, !llvm.loop !192

60:                                               ; preds = %50, %45
  %61 = phi ptr [ %46, %45 ], [ %57, %50 ]
  %62 = or disjoint i32 %47, 1
  %63 = load i32, ptr %39, align 4, !tbaa !190
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load i32, ptr %44, align 8, !tbaa !191
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65, %68
  %69 = phi ptr [ %75, %68 ], [ %61, %65 ]
  %70 = phi i32 [ %74, %68 ], [ 0, %65 ]
  store i8 %32, ptr %69, align 1, !tbaa !67
  %71 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 %35, ptr %71, align 1, !tbaa !67
  %72 = getelementptr inbounds i8, ptr %69, i64 2
  store i8 %38, ptr %72, align 1, !tbaa !67
  %73 = getelementptr inbounds i8, ptr %69, i64 3
  store i8 -1, ptr %73, align 1, !tbaa !67
  %74 = add nuw nsw i32 %70, 1
  %75 = getelementptr inbounds i8, ptr %69, i64 4
  %76 = load i32, ptr %44, align 8, !tbaa !191
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %68, label %78, !llvm.loop !193

78:                                               ; preds = %68, %65, %60
  %79 = phi ptr [ %61, %60 ], [ %61, %65 ], [ %75, %68 ]
  %80 = add nuw nsw i32 %47, 2
  %81 = load i32, ptr %39, align 4, !tbaa !190
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %45, label %137, !llvm.loop !194

83:                                               ; preds = %8
  %84 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !81
  %86 = icmp eq ptr %85, null
  br i1 %86, label %137, label %87

87:                                               ; preds = %83
  %88 = load float, ptr %11, align 4, !tbaa !58
  %89 = fmul float %88, %3
  %90 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !58
  %92 = fmul float %91, %3
  %93 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !58
  %95 = fmul float %94, %3
  %96 = fmul float %88, %4
  %97 = fmul float %91, %4
  %98 = fmul float %94, %4
  %99 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %100 = load i32, ptr %99, align 4, !tbaa !190
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %137

102:                                              ; preds = %87
  %103 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %104 = load i32, ptr %103, align 8, !tbaa !191
  %105 = icmp sgt i32 %104, 0
  %106 = icmp slt i32 %104, 1
  br label %107

107:                                              ; preds = %102, %133
  %108 = phi ptr [ %85, %102 ], [ %134, %133 ]
  %109 = phi i32 [ 0, %102 ], [ %135, %133 ]
  br i1 %105, label %110, label %119

110:                                              ; preds = %107, %110
  %111 = phi ptr [ %117, %110 ], [ %108, %107 ]
  %112 = phi i32 [ %116, %110 ], [ 0, %107 ]
  store float %89, ptr %111, align 4, !tbaa !58
  %113 = getelementptr inbounds float, ptr %111, i64 1
  store float %92, ptr %113, align 4, !tbaa !58
  %114 = getelementptr inbounds float, ptr %111, i64 2
  store float %95, ptr %114, align 4, !tbaa !58
  %115 = getelementptr inbounds float, ptr %111, i64 3
  store float 1.000000e+00, ptr %115, align 4, !tbaa !58
  %116 = add nuw nsw i32 %112, 1
  %117 = getelementptr inbounds float, ptr %111, i64 4
  %118 = icmp eq i32 %116, %104
  br i1 %118, label %119, label %110, !llvm.loop !195

119:                                              ; preds = %110, %107
  %120 = phi ptr [ %108, %107 ], [ %117, %110 ]
  %121 = or disjoint i32 %109, 1
  %122 = icmp sge i32 %121, %100
  %123 = or i1 %122, %106
  br i1 %123, label %133, label %124

124:                                              ; preds = %119, %124
  %125 = phi ptr [ %131, %124 ], [ %120, %119 ]
  %126 = phi i32 [ %130, %124 ], [ 0, %119 ]
  store float %96, ptr %125, align 4, !tbaa !58
  %127 = getelementptr inbounds float, ptr %125, i64 1
  store float %97, ptr %127, align 4, !tbaa !58
  %128 = getelementptr inbounds float, ptr %125, i64 2
  store float %98, ptr %128, align 4, !tbaa !58
  %129 = getelementptr inbounds float, ptr %125, i64 3
  store float 1.000000e+00, ptr %129, align 4, !tbaa !58
  %130 = add nuw nsw i32 %126, 1
  %131 = getelementptr inbounds float, ptr %125, i64 4
  %132 = icmp eq i32 %130, %104
  br i1 %132, label %133, label %124, !llvm.loop !196

133:                                              ; preds = %124, %119
  %134 = phi ptr [ %120, %119 ], [ %131, %124 ]
  %135 = add nuw nsw i32 %109, 2
  %136 = icmp slt i32 %135, %100
  br i1 %136, label %107, label %137, !llvm.loop !197

137:                                              ; preds = %78, %133, %15, %87, %83
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_multicam() #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @early_out_multicam(ptr nocapture readnone %0, float %1, float %2) #5 {
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal ptr @do_multicam(ptr noundef %0, ptr noundef %1, float noundef %2, float %3, float %4, ptr nocapture readnone %5, ptr nocapture readnone %6, ptr nocapture readnone %7) #0 {
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 22
  %10 = load i32, ptr %9, align 8, !tbaa !198
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !199
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !200
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.Editing, ptr %20, i64 0, i32 1
  %24 = tail call ptr @BKE_sequence_seqbase(ptr noundef nonnull %23, ptr noundef %1) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %9, align 8, !tbaa !198
  %28 = tail call ptr @BKE_sequencer_give_ibuf_seqbase(ptr noundef %0, float noundef %2, i32 noundef %27, ptr noundef nonnull %24) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = tail call zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr noundef %0, ptr noundef %1, float noundef %2) #16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %28) #16
  tail call void @IMB_freeImBuf(ptr noundef nonnull %28) #16
  br label %35

35:                                               ; preds = %33, %30, %26, %22, %16, %8, %12
  %36 = phi ptr [ null, %12 ], [ null, %8 ], [ null, %16 ], [ null, %22 ], [ null, %26 ], [ %34, %33 ], [ %28, %30 ]
  ret ptr %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_adjustment() #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @early_out_adjustment(ptr nocapture readnone %0, float %1, float %2) #5 {
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal ptr @do_adjustment(ptr noundef %0, ptr noundef %1, float noundef %2, float %3, float %4, ptr nocapture readnone %5, ptr nocapture readnone %6, ptr nocapture readnone %7) #0 {
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !200
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @do_adjustment_impl(ptr noundef %0, ptr noundef %1, float noundef %2)
  %16 = tail call zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr noundef %0, ptr noundef %1, float noundef %2) #16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @IMB_dupImBuf(ptr noundef %15) #16
  tail call void @IMB_freeImBuf(ptr noundef %15) #16
  br label %20

20:                                               ; preds = %18, %14, %8
  %21 = phi ptr [ null, %8 ], [ %19, %18 ], [ %15, %14 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal void @init_gaussian_blur_effect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %9 = tail call ptr %8(i64 noundef 12, ptr noundef nonnull @.str.2) #16
  store ptr %9, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_gaussian_blur() #5 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @free_gaussian_blur_effect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %6(ptr noundef nonnull %3) #16
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_gaussian_blur_effect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @early_out_gaussian_blur(ptr nocapture noundef readonly %0, float %1, float %2) #11 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = load float, ptr %5, align 4, !tbaa !201
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.GaussianBlurVars, ptr %5, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !203
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %3
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal void @do_gaussian_blur_effect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float %2, float %3, float %4, ptr nocapture noundef readonly %5, ptr nocapture readnone %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #0 {
  %12 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  %15 = shl nsw i32 %8, 2
  %16 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = mul nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  br i1 %14, label %289, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %22 = getelementptr inbounds float, ptr %13, i64 %19
  %23 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !128
  %25 = load ptr, ptr %21, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = load float, ptr %27, align 4, !tbaa !201
  %29 = fadd float %28, 5.000000e-01
  %30 = fptosi float %29 to i32
  %31 = getelementptr inbounds %struct.GaussianBlurVars, ptr %27, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !203
  %33 = fadd float %32, 5.000000e-01
  %34 = fptosi float %33 to i32
  %35 = shl nsw i32 %30, 1
  %36 = or disjoint i32 %35, 1
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %38 = sext i32 %36 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @__func__.make_gaussian_blur_kernel) #16
  %41 = fcmp ogt float %28, 0.000000e+00
  %42 = fdiv float 1.000000e+00, %28
  %43 = select i1 %41, float %42, float 0.000000e+00
  %44 = icmp slt i32 %30, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %20
  %46 = sub nsw i32 0, %30
  %47 = sext i32 %46 to i64
  %48 = zext nneg i32 %30 to i64
  %49 = add nuw i32 %30, 1
  %50 = getelementptr float, ptr %40, i64 %48
  br label %51

51:                                               ; preds = %51, %45
  %52 = phi i64 [ %47, %45 ], [ %60, %51 ]
  %53 = phi float [ 0.000000e+00, %45 ], [ %58, %51 ]
  %54 = trunc i64 %52 to i32
  %55 = sitofp i32 %54 to float
  %56 = fmul float %43, %55
  %57 = tail call float @RE_filter_value(i32 noundef 5, float noundef %56) #16
  %58 = fadd float %53, %57
  %59 = getelementptr float, ptr %50, i64 %52
  store float %57, ptr %59, align 4, !tbaa !58
  %60 = add nsw i64 %52, 1
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %49, %61
  br i1 %62, label %63, label %51, !llvm.loop !204

63:                                               ; preds = %51, %20
  %64 = phi float [ 0.000000e+00, %20 ], [ %58, %51 ]
  %65 = fdiv float 1.000000e+00, %64
  br i1 %44, label %75, label %66

66:                                               ; preds = %63
  %67 = zext nneg i32 %36 to i64
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i64 [ 0, %66 ], [ %73, %68 ]
  %70 = getelementptr inbounds float, ptr %40, i64 %69
  %71 = load float, ptr %70, align 4, !tbaa !58
  %72 = fmul float %65, %71
  store float %72, ptr %70, align 4, !tbaa !58
  %73 = add nuw nsw i64 %69, 1
  %74 = icmp eq i64 %73, %67
  br i1 %74, label %75, label %68, !llvm.loop !205

75:                                               ; preds = %68, %63
  %76 = load float, ptr %27, align 4, !tbaa !201
  %77 = load float, ptr %31, align 4, !tbaa !203
  %78 = fcmp oeq float %76, %77
  br i1 %78, label %120, label %79

79:                                               ; preds = %75
  %80 = shl nsw i32 %34, 1
  %81 = or disjoint i32 %80, 1
  %82 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %83 = sext i32 %81 to i64
  %84 = shl nsw i64 %83, 2
  %85 = tail call ptr %82(i64 noundef %84, ptr noundef nonnull @__func__.make_gaussian_blur_kernel) #16
  %86 = fcmp ogt float %77, 0.000000e+00
  %87 = fdiv float 1.000000e+00, %77
  %88 = select i1 %86, float %87, float 0.000000e+00
  %89 = icmp slt i32 %34, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %79
  %91 = sub nsw i32 0, %34
  %92 = sext i32 %91 to i64
  %93 = zext nneg i32 %34 to i64
  %94 = add nuw i32 %34, 1
  %95 = getelementptr float, ptr %85, i64 %93
  br label %96

96:                                               ; preds = %96, %90
  %97 = phi i64 [ %92, %90 ], [ %105, %96 ]
  %98 = phi float [ 0.000000e+00, %90 ], [ %103, %96 ]
  %99 = trunc i64 %97 to i32
  %100 = sitofp i32 %99 to float
  %101 = fmul float %88, %100
  %102 = tail call float @RE_filter_value(i32 noundef 5, float noundef %101) #16
  %103 = fadd float %98, %102
  %104 = getelementptr float, ptr %95, i64 %97
  store float %102, ptr %104, align 4, !tbaa !58
  %105 = add nsw i64 %97, 1
  %106 = trunc i64 %105 to i32
  %107 = icmp eq i32 %94, %106
  br i1 %107, label %108, label %96, !llvm.loop !204

108:                                              ; preds = %96, %79
  %109 = phi float [ 0.000000e+00, %79 ], [ %103, %96 ]
  %110 = fdiv float 1.000000e+00, %109
  br i1 %89, label %120, label %111

111:                                              ; preds = %108
  %112 = zext nneg i32 %81 to i64
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i64 [ 0, %111 ], [ %118, %113 ]
  %115 = getelementptr inbounds float, ptr %85, i64 %114
  %116 = load float, ptr %115, align 4, !tbaa !58
  %117 = fmul float %110, %116
  store float %117, ptr %115, align 4, !tbaa !58
  %118 = add nuw nsw i64 %114, 1
  %119 = icmp eq i64 %118, %112
  br i1 %119, label %120, label %113, !llvm.loop !205

120:                                              ; preds = %113, %108, %75
  %121 = phi ptr [ %40, %75 ], [ %85, %108 ], [ %85, %113 ]
  %122 = icmp sgt i32 %9, 0
  br i1 %122, label %123, label %286

123:                                              ; preds = %120
  %124 = icmp sgt i32 %17, 0
  %125 = sub nsw i32 0, %8
  %126 = icmp ne i32 %30, 0
  %127 = icmp ne i32 %34, 0
  %128 = select i1 %126, i1 %127, i1 false
  %129 = icmp eq i32 %30, 0
  %130 = sub i32 0, %30
  %131 = sub i32 0, %34
  %132 = sext i32 %8 to i64
  %133 = sext i32 %24 to i64
  %134 = zext i32 %17 to i64
  %135 = sext i32 %125 to i64
  %136 = sext i32 %30 to i64
  %137 = sext i32 %30 to i64
  %138 = sext i32 %34 to i64
  %139 = sext i32 %34 to i64
  %140 = zext nneg i32 %9 to i64
  %141 = zext nneg i32 %17 to i64
  br label %142

142:                                              ; preds = %123, %280
  %143 = phi i64 [ 0, %123 ], [ %281, %280 ]
  %144 = phi i32 [ %34, %123 ], [ %147, %280 ]
  %145 = phi i32 [ %131, %123 ], [ %284, %280 ]
  %146 = phi i32 [ 0, %123 ], [ %283, %280 ]
  %147 = add i32 %144, 1
  %148 = sext i32 %145 to i64
  br i1 %124, label %149, label %280

149:                                              ; preds = %142
  %150 = sub nsw i64 %143, %139
  %151 = add nsw i64 %143, %138
  %152 = icmp sgt i64 %150, %151
  %153 = add i32 %146, %34
  %154 = add i32 %146, %34
  %155 = trunc i64 %143 to i32
  %156 = mul i32 %17, %155
  br label %157

157:                                              ; preds = %149, %259
  %158 = phi i64 [ 0, %149 ], [ %275, %259 ]
  %159 = phi i32 [ %30, %149 ], [ %162, %259 ]
  %160 = phi i32 [ %130, %149 ], [ %278, %259 ]
  %161 = phi i32 [ 0, %149 ], [ %277, %259 ]
  %162 = add i32 %159, 1
  %163 = zext i32 %160 to i64
  %164 = trunc i64 %158 to i32
  %165 = add i32 %156, %164
  %166 = shl nsw i32 %165, 2
  br i1 %152, label %259, label %167

167:                                              ; preds = %157
  %168 = sub nsw i64 %158, %137
  %169 = add nsw i64 %158, %136
  %170 = icmp sgt i64 %168, %169
  %171 = add i32 %161, %30
  %172 = add i32 %161, %30
  br label %173

173:                                              ; preds = %167, %250
  %174 = phi i64 [ %148, %167 ], [ %256, %250 ]
  %175 = phi float [ 0.000000e+00, %167 ], [ %255, %250 ]
  %176 = phi float [ 0.000000e+00, %167 ], [ %254, %250 ]
  %177 = phi float [ 0.000000e+00, %167 ], [ %253, %250 ]
  %178 = phi float [ 0.000000e+00, %167 ], [ %252, %250 ]
  %179 = phi float [ 0.000000e+00, %167 ], [ %251, %250 ]
  %180 = icmp slt i64 %174, %135
  br i1 %180, label %250, label %181

181:                                              ; preds = %173
  %182 = add nsw i64 %174, %132
  %183 = icmp slt i64 %182, %133
  br i1 %183, label %184, label %250

184:                                              ; preds = %181
  br i1 %170, label %250, label %185

185:                                              ; preds = %184
  %186 = mul i64 %182, %134
  %187 = trunc i64 %174 to i32
  %188 = add i32 %153, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, ptr %121, i64 %189
  %191 = trunc i64 %174 to i32
  %192 = add i32 %154, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, ptr %121, i64 %193
  br label %195

195:                                              ; preds = %185, %241
  %196 = phi i64 [ %163, %185 ], [ %247, %241 ]
  %197 = phi float [ %175, %185 ], [ %246, %241 ]
  %198 = phi float [ %176, %185 ], [ %245, %241 ]
  %199 = phi float [ %177, %185 ], [ %244, %241 ]
  %200 = phi float [ %178, %185 ], [ %243, %241 ]
  %201 = phi float [ %179, %185 ], [ %242, %241 ]
  %202 = add i64 %196, %186
  %203 = trunc i64 %202 to i32
  %204 = shl nsw i32 %203, 2
  %205 = trunc i64 %196 to i32
  %206 = icmp ugt i32 %17, %205
  br i1 %206, label %207, label %241

207:                                              ; preds = %195
  br i1 %128, label %208, label %216

208:                                              ; preds = %207
  %209 = trunc i64 %196 to i32
  %210 = add i32 %172, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, ptr %40, i64 %211
  %213 = load float, ptr %212, align 4, !tbaa !58
  %214 = load float, ptr %194, align 4, !tbaa !58
  %215 = fmul float %213, %214
  br label %225

216:                                              ; preds = %207
  br i1 %129, label %217, label %219

217:                                              ; preds = %216
  %218 = load float, ptr %190, align 4, !tbaa !58
  br label %225

219:                                              ; preds = %216
  %220 = trunc i64 %196 to i32
  %221 = add i32 %171, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, ptr %40, i64 %222
  %224 = load float, ptr %223, align 4, !tbaa !58
  br label %225

225:                                              ; preds = %219, %217, %208
  %226 = phi float [ %215, %208 ], [ %218, %217 ], [ %224, %219 ]
  %227 = sext i32 %204 to i64
  %228 = getelementptr inbounds float, ptr %25, i64 %227
  %229 = load float, ptr %228, align 4, !tbaa !58
  %230 = tail call float @llvm.fmuladd.f32(float %229, float %226, float %201)
  %231 = getelementptr inbounds float, ptr %228, i64 1
  %232 = load float, ptr %231, align 4, !tbaa !58
  %233 = tail call float @llvm.fmuladd.f32(float %232, float %226, float %200)
  %234 = getelementptr inbounds float, ptr %228, i64 2
  %235 = load float, ptr %234, align 4, !tbaa !58
  %236 = tail call float @llvm.fmuladd.f32(float %235, float %226, float %199)
  %237 = getelementptr inbounds float, ptr %228, i64 3
  %238 = load float, ptr %237, align 4, !tbaa !58
  %239 = tail call float @llvm.fmuladd.f32(float %238, float %226, float %198)
  %240 = fadd float %197, %226
  br label %241

241:                                              ; preds = %225, %195
  %242 = phi float [ %230, %225 ], [ %201, %195 ]
  %243 = phi float [ %233, %225 ], [ %200, %195 ]
  %244 = phi float [ %236, %225 ], [ %199, %195 ]
  %245 = phi float [ %239, %225 ], [ %198, %195 ]
  %246 = phi float [ %240, %225 ], [ %197, %195 ]
  %247 = add i64 %196, 1
  %248 = trunc i64 %247 to i32
  %249 = icmp eq i32 %162, %248
  br i1 %249, label %250, label %195, !llvm.loop !206

250:                                              ; preds = %241, %184, %181, %173
  %251 = phi float [ %179, %173 ], [ %179, %181 ], [ %179, %184 ], [ %242, %241 ]
  %252 = phi float [ %178, %173 ], [ %178, %181 ], [ %178, %184 ], [ %243, %241 ]
  %253 = phi float [ %177, %173 ], [ %177, %181 ], [ %177, %184 ], [ %244, %241 ]
  %254 = phi float [ %176, %173 ], [ %176, %181 ], [ %176, %184 ], [ %245, %241 ]
  %255 = phi float [ %175, %173 ], [ %175, %181 ], [ %175, %184 ], [ %246, %241 ]
  %256 = add nsw i64 %174, 1
  %257 = trunc i64 %256 to i32
  %258 = icmp eq i32 %147, %257
  br i1 %258, label %259, label %173, !llvm.loop !207

259:                                              ; preds = %250, %157
  %260 = phi float [ 0.000000e+00, %157 ], [ %251, %250 ]
  %261 = phi float [ 0.000000e+00, %157 ], [ %252, %250 ]
  %262 = phi float [ 0.000000e+00, %157 ], [ %253, %250 ]
  %263 = phi float [ 0.000000e+00, %157 ], [ %254, %250 ]
  %264 = phi float [ 0.000000e+00, %157 ], [ %255, %250 ]
  %265 = zext nneg i32 %166 to i64
  %266 = getelementptr inbounds float, ptr %22, i64 %265
  %267 = fdiv float 1.000000e+00, %264
  %268 = fmul float %260, %267
  store float %268, ptr %266, align 4, !tbaa !58
  %269 = fmul float %261, %267
  %270 = getelementptr inbounds float, ptr %266, i64 1
  store float %269, ptr %270, align 4, !tbaa !58
  %271 = fmul float %262, %267
  %272 = getelementptr inbounds float, ptr %266, i64 2
  store float %271, ptr %272, align 4, !tbaa !58
  %273 = fmul float %263, %267
  %274 = getelementptr inbounds float, ptr %266, i64 3
  store float %273, ptr %274, align 4, !tbaa !58
  %275 = add nuw nsw i64 %158, 1
  %276 = trunc i64 %158 to i32
  %277 = xor i32 %276, -1
  %278 = add i32 %160, 1
  %279 = icmp eq i64 %275, %141
  br i1 %279, label %280, label %157, !llvm.loop !208

280:                                              ; preds = %259, %142
  %281 = add nuw nsw i64 %143, 1
  %282 = trunc i64 %143 to i32
  %283 = xor i32 %282, -1
  %284 = add i32 %145, 1
  %285 = icmp eq i64 %281, %140
  br i1 %285, label %286, label %142, !llvm.loop !209

286:                                              ; preds = %280, %120
  %287 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %287(ptr noundef %40) #16
  %288 = icmp eq ptr %40, %121
  br i1 %288, label %582, label %579

289:                                              ; preds = %11
  %290 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %291 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 8
  %292 = load ptr, ptr %291, align 8, !tbaa !87
  %293 = getelementptr inbounds i8, ptr %292, i64 %19
  %294 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %295 = load i32, ptr %294, align 4, !tbaa !128
  %296 = load ptr, ptr %290, align 8, !tbaa !87
  %297 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %298 = load ptr, ptr %297, align 8, !tbaa !34
  %299 = load float, ptr %298, align 4, !tbaa !201
  %300 = fadd float %299, 5.000000e-01
  %301 = fptosi float %300 to i32
  %302 = getelementptr inbounds %struct.GaussianBlurVars, ptr %298, i64 0, i32 1
  %303 = load float, ptr %302, align 4, !tbaa !203
  %304 = fadd float %303, 5.000000e-01
  %305 = fptosi float %304 to i32
  %306 = shl nsw i32 %301, 1
  %307 = or disjoint i32 %306, 1
  %308 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %309 = sext i32 %307 to i64
  %310 = shl nsw i64 %309, 2
  %311 = tail call ptr %308(i64 noundef %310, ptr noundef nonnull @__func__.make_gaussian_blur_kernel) #16
  %312 = fcmp ogt float %299, 0.000000e+00
  %313 = fdiv float 1.000000e+00, %299
  %314 = select i1 %312, float %313, float 0.000000e+00
  %315 = icmp slt i32 %301, 0
  br i1 %315, label %334, label %316

316:                                              ; preds = %289
  %317 = sub nsw i32 0, %301
  %318 = sext i32 %317 to i64
  %319 = zext nneg i32 %301 to i64
  %320 = add nuw i32 %301, 1
  %321 = getelementptr float, ptr %311, i64 %319
  br label %322

322:                                              ; preds = %322, %316
  %323 = phi i64 [ %318, %316 ], [ %331, %322 ]
  %324 = phi float [ 0.000000e+00, %316 ], [ %329, %322 ]
  %325 = trunc i64 %323 to i32
  %326 = sitofp i32 %325 to float
  %327 = fmul float %314, %326
  %328 = tail call float @RE_filter_value(i32 noundef 5, float noundef %327) #16
  %329 = fadd float %324, %328
  %330 = getelementptr float, ptr %321, i64 %323
  store float %328, ptr %330, align 4, !tbaa !58
  %331 = add nsw i64 %323, 1
  %332 = trunc i64 %331 to i32
  %333 = icmp eq i32 %320, %332
  br i1 %333, label %334, label %322, !llvm.loop !204

334:                                              ; preds = %322, %289
  %335 = phi float [ 0.000000e+00, %289 ], [ %329, %322 ]
  %336 = fdiv float 1.000000e+00, %335
  br i1 %315, label %346, label %337

337:                                              ; preds = %334
  %338 = zext nneg i32 %307 to i64
  br label %339

339:                                              ; preds = %339, %337
  %340 = phi i64 [ 0, %337 ], [ %344, %339 ]
  %341 = getelementptr inbounds float, ptr %311, i64 %340
  %342 = load float, ptr %341, align 4, !tbaa !58
  %343 = fmul float %336, %342
  store float %343, ptr %341, align 4, !tbaa !58
  %344 = add nuw nsw i64 %340, 1
  %345 = icmp eq i64 %344, %338
  br i1 %345, label %346, label %339, !llvm.loop !205

346:                                              ; preds = %339, %334
  %347 = load float, ptr %298, align 4, !tbaa !201
  %348 = load float, ptr %302, align 4, !tbaa !203
  %349 = fcmp oeq float %347, %348
  br i1 %349, label %391, label %350

350:                                              ; preds = %346
  %351 = shl nsw i32 %305, 1
  %352 = or disjoint i32 %351, 1
  %353 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %354 = sext i32 %352 to i64
  %355 = shl nsw i64 %354, 2
  %356 = tail call ptr %353(i64 noundef %355, ptr noundef nonnull @__func__.make_gaussian_blur_kernel) #16
  %357 = fcmp ogt float %348, 0.000000e+00
  %358 = fdiv float 1.000000e+00, %348
  %359 = select i1 %357, float %358, float 0.000000e+00
  %360 = icmp slt i32 %305, 0
  br i1 %360, label %379, label %361

361:                                              ; preds = %350
  %362 = sub nsw i32 0, %305
  %363 = sext i32 %362 to i64
  %364 = zext nneg i32 %305 to i64
  %365 = add nuw i32 %305, 1
  %366 = getelementptr float, ptr %356, i64 %364
  br label %367

367:                                              ; preds = %367, %361
  %368 = phi i64 [ %363, %361 ], [ %376, %367 ]
  %369 = phi float [ 0.000000e+00, %361 ], [ %374, %367 ]
  %370 = trunc i64 %368 to i32
  %371 = sitofp i32 %370 to float
  %372 = fmul float %359, %371
  %373 = tail call float @RE_filter_value(i32 noundef 5, float noundef %372) #16
  %374 = fadd float %369, %373
  %375 = getelementptr float, ptr %366, i64 %368
  store float %373, ptr %375, align 4, !tbaa !58
  %376 = add nsw i64 %368, 1
  %377 = trunc i64 %376 to i32
  %378 = icmp eq i32 %365, %377
  br i1 %378, label %379, label %367, !llvm.loop !204

379:                                              ; preds = %367, %350
  %380 = phi float [ 0.000000e+00, %350 ], [ %374, %367 ]
  %381 = fdiv float 1.000000e+00, %380
  br i1 %360, label %391, label %382

382:                                              ; preds = %379
  %383 = zext nneg i32 %352 to i64
  br label %384

384:                                              ; preds = %384, %382
  %385 = phi i64 [ 0, %382 ], [ %389, %384 ]
  %386 = getelementptr inbounds float, ptr %356, i64 %385
  %387 = load float, ptr %386, align 4, !tbaa !58
  %388 = fmul float %381, %387
  store float %388, ptr %386, align 4, !tbaa !58
  %389 = add nuw nsw i64 %385, 1
  %390 = icmp eq i64 %389, %383
  br i1 %390, label %391, label %384, !llvm.loop !205

391:                                              ; preds = %384, %379, %346
  %392 = phi ptr [ %311, %346 ], [ %356, %379 ], [ %356, %384 ]
  %393 = icmp sgt i32 %9, 0
  br i1 %393, label %394, label %576

394:                                              ; preds = %391
  %395 = icmp sgt i32 %17, 0
  %396 = sub nsw i32 0, %8
  %397 = icmp ne i32 %301, 0
  %398 = icmp ne i32 %305, 0
  %399 = select i1 %397, i1 %398, i1 false
  %400 = icmp eq i32 %301, 0
  %401 = sub i32 0, %301
  %402 = sub i32 0, %305
  %403 = sext i32 %8 to i64
  %404 = sext i32 %295 to i64
  %405 = zext i32 %17 to i64
  %406 = sext i32 %396 to i64
  %407 = sext i32 %301 to i64
  %408 = sext i32 %301 to i64
  %409 = sext i32 %305 to i64
  %410 = sext i32 %305 to i64
  %411 = zext nneg i32 %9 to i64
  %412 = zext nneg i32 %17 to i64
  br label %413

413:                                              ; preds = %394, %570
  %414 = phi i64 [ 0, %394 ], [ %571, %570 ]
  %415 = phi i32 [ %305, %394 ], [ %418, %570 ]
  %416 = phi i32 [ %402, %394 ], [ %574, %570 ]
  %417 = phi i32 [ 0, %394 ], [ %573, %570 ]
  %418 = add i32 %415, 1
  %419 = sext i32 %416 to i64
  br i1 %395, label %420, label %570

420:                                              ; preds = %413
  %421 = sub nsw i64 %414, %410
  %422 = add nsw i64 %414, %409
  %423 = icmp sgt i64 %421, %422
  %424 = add i32 %417, %305
  %425 = add i32 %417, %305
  %426 = trunc i64 %414 to i32
  %427 = mul i32 %17, %426
  br label %428

428:                                              ; preds = %420, %540
  %429 = phi i64 [ 0, %420 ], [ %565, %540 ]
  %430 = phi i32 [ %301, %420 ], [ %433, %540 ]
  %431 = phi i32 [ %401, %420 ], [ %568, %540 ]
  %432 = phi i32 [ 0, %420 ], [ %567, %540 ]
  %433 = add i32 %430, 1
  %434 = zext i32 %431 to i64
  %435 = trunc i64 %429 to i32
  %436 = add i32 %427, %435
  %437 = shl nsw i32 %436, 2
  br i1 %423, label %540, label %438

438:                                              ; preds = %428
  %439 = sub nsw i64 %429, %408
  %440 = add nsw i64 %429, %407
  %441 = icmp sgt i64 %439, %440
  %442 = add i32 %432, %301
  %443 = add i32 %432, %301
  br label %444

444:                                              ; preds = %438, %531
  %445 = phi i64 [ %419, %438 ], [ %537, %531 ]
  %446 = phi float [ 0.000000e+00, %438 ], [ %536, %531 ]
  %447 = phi float [ 0.000000e+00, %438 ], [ %535, %531 ]
  %448 = phi float [ 0.000000e+00, %438 ], [ %534, %531 ]
  %449 = phi float [ 0.000000e+00, %438 ], [ %533, %531 ]
  %450 = phi float [ 0.000000e+00, %438 ], [ %532, %531 ]
  %451 = icmp slt i64 %445, %406
  br i1 %451, label %531, label %452

452:                                              ; preds = %444
  %453 = add nsw i64 %445, %403
  %454 = icmp slt i64 %453, %404
  br i1 %454, label %455, label %531

455:                                              ; preds = %452
  br i1 %441, label %531, label %456

456:                                              ; preds = %455
  %457 = mul i64 %453, %405
  %458 = trunc i64 %445 to i32
  %459 = add i32 %424, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds float, ptr %392, i64 %460
  %462 = trunc i64 %445 to i32
  %463 = add i32 %425, %462
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds float, ptr %392, i64 %464
  br label %466

466:                                              ; preds = %456, %522
  %467 = phi i64 [ %434, %456 ], [ %528, %522 ]
  %468 = phi float [ %446, %456 ], [ %527, %522 ]
  %469 = phi float [ %447, %456 ], [ %526, %522 ]
  %470 = phi float [ %448, %456 ], [ %525, %522 ]
  %471 = phi float [ %449, %456 ], [ %524, %522 ]
  %472 = phi float [ %450, %456 ], [ %523, %522 ]
  %473 = add i64 %467, %457
  %474 = trunc i64 %473 to i32
  %475 = shl nsw i32 %474, 2
  %476 = trunc i64 %467 to i32
  %477 = icmp ugt i32 %17, %476
  br i1 %477, label %478, label %522

478:                                              ; preds = %466
  br i1 %399, label %479, label %487

479:                                              ; preds = %478
  %480 = trunc i64 %467 to i32
  %481 = add i32 %443, %480
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds float, ptr %311, i64 %482
  %484 = load float, ptr %483, align 4, !tbaa !58
  %485 = load float, ptr %465, align 4, !tbaa !58
  %486 = fmul float %484, %485
  br label %496

487:                                              ; preds = %478
  br i1 %400, label %488, label %490

488:                                              ; preds = %487
  %489 = load float, ptr %461, align 4, !tbaa !58
  br label %496

490:                                              ; preds = %487
  %491 = trunc i64 %467 to i32
  %492 = add i32 %442, %491
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds float, ptr %311, i64 %493
  %495 = load float, ptr %494, align 4, !tbaa !58
  br label %496

496:                                              ; preds = %490, %488, %479
  %497 = phi float [ %486, %479 ], [ %489, %488 ], [ %495, %490 ]
  %498 = sext i32 %475 to i64
  %499 = getelementptr inbounds i8, ptr %296, i64 %498
  %500 = load i8, ptr %499, align 1, !tbaa !67
  %501 = uitofp i8 %500 to float
  %502 = tail call float @llvm.fmuladd.f32(float %501, float %497, float %472)
  %503 = or disjoint i32 %475, 1
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i8, ptr %296, i64 %504
  %506 = load i8, ptr %505, align 1, !tbaa !67
  %507 = uitofp i8 %506 to float
  %508 = tail call float @llvm.fmuladd.f32(float %507, float %497, float %471)
  %509 = or disjoint i32 %475, 2
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i8, ptr %296, i64 %510
  %512 = load i8, ptr %511, align 1, !tbaa !67
  %513 = uitofp i8 %512 to float
  %514 = tail call float @llvm.fmuladd.f32(float %513, float %497, float %470)
  %515 = or disjoint i32 %475, 3
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i8, ptr %296, i64 %516
  %518 = load i8, ptr %517, align 1, !tbaa !67
  %519 = uitofp i8 %518 to float
  %520 = tail call float @llvm.fmuladd.f32(float %519, float %497, float %469)
  %521 = fadd float %468, %497
  br label %522

522:                                              ; preds = %496, %466
  %523 = phi float [ %502, %496 ], [ %472, %466 ]
  %524 = phi float [ %508, %496 ], [ %471, %466 ]
  %525 = phi float [ %514, %496 ], [ %470, %466 ]
  %526 = phi float [ %520, %496 ], [ %469, %466 ]
  %527 = phi float [ %521, %496 ], [ %468, %466 ]
  %528 = add i64 %467, 1
  %529 = trunc i64 %528 to i32
  %530 = icmp eq i32 %433, %529
  br i1 %530, label %531, label %466, !llvm.loop !210

531:                                              ; preds = %522, %455, %452, %444
  %532 = phi float [ %450, %444 ], [ %450, %452 ], [ %450, %455 ], [ %523, %522 ]
  %533 = phi float [ %449, %444 ], [ %449, %452 ], [ %449, %455 ], [ %524, %522 ]
  %534 = phi float [ %448, %444 ], [ %448, %452 ], [ %448, %455 ], [ %525, %522 ]
  %535 = phi float [ %447, %444 ], [ %447, %452 ], [ %447, %455 ], [ %526, %522 ]
  %536 = phi float [ %446, %444 ], [ %446, %452 ], [ %446, %455 ], [ %527, %522 ]
  %537 = add nsw i64 %445, 1
  %538 = trunc i64 %537 to i32
  %539 = icmp eq i32 %418, %538
  br i1 %539, label %540, label %444, !llvm.loop !211

540:                                              ; preds = %531, %428
  %541 = phi float [ 0.000000e+00, %428 ], [ %532, %531 ]
  %542 = phi float [ 0.000000e+00, %428 ], [ %533, %531 ]
  %543 = phi float [ 0.000000e+00, %428 ], [ %534, %531 ]
  %544 = phi float [ 0.000000e+00, %428 ], [ %535, %531 ]
  %545 = phi float [ 0.000000e+00, %428 ], [ %536, %531 ]
  %546 = fdiv float %541, %545
  %547 = fptoui float %546 to i8
  %548 = zext nneg i32 %437 to i64
  %549 = getelementptr inbounds i8, ptr %293, i64 %548
  store i8 %547, ptr %549, align 1, !tbaa !67
  %550 = fdiv float %542, %545
  %551 = fptoui float %550 to i8
  %552 = or disjoint i32 %437, 1
  %553 = zext nneg i32 %552 to i64
  %554 = getelementptr inbounds i8, ptr %293, i64 %553
  store i8 %551, ptr %554, align 1, !tbaa !67
  %555 = fdiv float %543, %545
  %556 = fptoui float %555 to i8
  %557 = or disjoint i32 %437, 2
  %558 = zext nneg i32 %557 to i64
  %559 = getelementptr inbounds i8, ptr %293, i64 %558
  store i8 %556, ptr %559, align 1, !tbaa !67
  %560 = fdiv float %544, %545
  %561 = fptoui float %560 to i8
  %562 = or disjoint i32 %437, 3
  %563 = zext nneg i32 %562 to i64
  %564 = getelementptr inbounds i8, ptr %293, i64 %563
  store i8 %561, ptr %564, align 1, !tbaa !67
  %565 = add nuw nsw i64 %429, 1
  %566 = trunc i64 %429 to i32
  %567 = xor i32 %566, -1
  %568 = add i32 %431, 1
  %569 = icmp eq i64 %565, %412
  br i1 %569, label %570, label %428, !llvm.loop !212

570:                                              ; preds = %540, %413
  %571 = add nuw nsw i64 %414, 1
  %572 = trunc i64 %414 to i32
  %573 = xor i32 %572, -1
  %574 = add i32 %416, 1
  %575 = icmp eq i64 %571, %411
  br i1 %575, label %576, label %413, !llvm.loop !213

576:                                              ; preds = %570, %391
  %577 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %577(ptr noundef %311) #16
  %578 = icmp eq ptr %311, %392
  br i1 %578, label %582, label %579

579:                                              ; preds = %576, %286
  %580 = phi ptr [ %121, %286 ], [ %392, %576 ]
  %581 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %581(ptr noundef %580) #16
  br label %582

582:                                              ; preds = %579, %576, %286
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @prepare_effect_imbufs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !128
  %11 = icmp ne ptr %1, null
  %12 = icmp ne ptr %2, null
  %13 = or i1 %11, %12
  %14 = icmp ne ptr %3, null
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  br i1 %11, label %17, label %21

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %17, %16
  br i1 %12, label %22, label %26

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22, %21
  br i1 %14, label %27, label %31

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !81
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %26
  br label %32

32:                                               ; preds = %17, %22, %27, %4, %31
  %33 = phi i32 [ 1, %31 ], [ 1, %4 ], [ 32, %27 ], [ 32, %22 ], [ 32, %17 ]
  %34 = tail call ptr @IMB_allocImBuf(i32 noundef %8, i32 noundef %10, i8 noundef zeroext 32, i32 noundef %33) #16
  br i1 %11, label %35, label %44

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !81
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %6, ptr noundef nonnull %1, i8 noundef zeroext 1) #16
  br label %44

44:                                               ; preds = %43, %39, %35, %32
  br i1 %12, label %45, label %54

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !81
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !81
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %6, ptr noundef nonnull %2, i8 noundef zeroext 1) #16
  br label %54

54:                                               ; preds = %53, %49, %45, %44
  br i1 %14, label %55, label %64

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !81
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !81
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %6, ptr noundef nonnull %3, i8 noundef zeroext 1) #16
  br label %64

64:                                               ; preds = %63, %59, %55, %54
  br i1 %11, label %65, label %74

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !87
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !81
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call void @IMB_rect_from_float(ptr noundef nonnull %1) #16
  br label %74

74:                                               ; preds = %73, %69, %65, %64
  br i1 %12, label %75, label %84

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !87
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !81
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  tail call void @IMB_rect_from_float(ptr noundef nonnull %2) #16
  br label %84

84:                                               ; preds = %83, %79, %75, %74
  br i1 %14, label %85, label %94

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 8
  %87 = load ptr, ptr %86, align 8, !tbaa !87
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !81
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  tail call void @IMB_rect_from_float(ptr noundef nonnull %3) #16
  br label %94

94:                                               ; preds = %93, %89, %85, %84
  %95 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 9
  %96 = load ptr, ptr %95, align 8, !tbaa !81
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 46
  tail call void @IMB_colormanagement_assign_float_colorspace(ptr noundef %34, ptr noundef nonnull %99) #16
  br label %100

100:                                              ; preds = %98, %94
  ret ptr %34
}

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_assign_float_colorspace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_cross_effect_float(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 {
  %8 = fsub float 1.000000e+00, %0
  %9 = fsub float 1.000000e+00, %1
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %101, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %2, 0
  %13 = icmp eq i32 %2, 0
  br label %19

14:                                               ; preds = %66, %64
  %15 = phi ptr [ %60, %64 ], [ %97, %66 ]
  %16 = phi ptr [ %61, %64 ], [ %98, %66 ]
  %17 = phi ptr [ %62, %64 ], [ %99, %66 ]
  %18 = icmp eq i32 %65, 0
  br i1 %18, label %101, label %19, !llvm.loop !214

19:                                               ; preds = %11, %14
  %20 = phi ptr [ %6, %11 ], [ %17, %14 ]
  %21 = phi ptr [ %5, %11 ], [ %16, %14 ]
  %22 = phi ptr [ %4, %11 ], [ %15, %14 ]
  %23 = phi i32 [ %3, %11 ], [ %65, %14 ]
  br i1 %12, label %59, label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %57, %24 ], [ %20, %19 ]
  %26 = phi ptr [ %56, %24 ], [ %21, %19 ]
  %27 = phi ptr [ %55, %24 ], [ %22, %19 ]
  %28 = phi i32 [ %29, %24 ], [ %2, %19 ]
  %29 = add nsw i32 %28, -1
  %30 = load float, ptr %27, align 4, !tbaa !58
  %31 = load float, ptr %26, align 4, !tbaa !58
  %32 = fmul float %31, %0
  %33 = tail call float @llvm.fmuladd.f32(float %8, float %30, float %32)
  store float %33, ptr %25, align 4, !tbaa !58
  %34 = getelementptr inbounds float, ptr %27, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !58
  %36 = getelementptr inbounds float, ptr %26, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !58
  %38 = fmul float %37, %0
  %39 = tail call float @llvm.fmuladd.f32(float %8, float %35, float %38)
  %40 = getelementptr inbounds float, ptr %25, i64 1
  store float %39, ptr %40, align 4, !tbaa !58
  %41 = getelementptr inbounds float, ptr %27, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !58
  %43 = getelementptr inbounds float, ptr %26, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !58
  %45 = fmul float %44, %0
  %46 = tail call float @llvm.fmuladd.f32(float %8, float %42, float %45)
  %47 = getelementptr inbounds float, ptr %25, i64 2
  store float %46, ptr %47, align 4, !tbaa !58
  %48 = getelementptr inbounds float, ptr %27, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !58
  %50 = getelementptr inbounds float, ptr %26, i64 3
  %51 = load float, ptr %50, align 4, !tbaa !58
  %52 = fmul float %51, %0
  %53 = tail call float @llvm.fmuladd.f32(float %8, float %49, float %52)
  %54 = getelementptr inbounds float, ptr %25, i64 3
  store float %53, ptr %54, align 4, !tbaa !58
  %55 = getelementptr inbounds float, ptr %27, i64 4
  %56 = getelementptr inbounds float, ptr %26, i64 4
  %57 = getelementptr inbounds float, ptr %25, i64 4
  %58 = icmp eq i32 %29, 0
  br i1 %58, label %59, label %24, !llvm.loop !215

59:                                               ; preds = %24, %19
  %60 = phi ptr [ %22, %19 ], [ %55, %24 ]
  %61 = phi ptr [ %21, %19 ], [ %56, %24 ]
  %62 = phi ptr [ %20, %19 ], [ %57, %24 ]
  %63 = icmp eq i32 %23, 1
  br i1 %63, label %101, label %64

64:                                               ; preds = %59
  %65 = add nsw i32 %23, -2
  br i1 %13, label %14, label %66

66:                                               ; preds = %64, %66
  %67 = phi ptr [ %99, %66 ], [ %62, %64 ]
  %68 = phi ptr [ %98, %66 ], [ %61, %64 ]
  %69 = phi ptr [ %97, %66 ], [ %60, %64 ]
  %70 = phi i32 [ %71, %66 ], [ %2, %64 ]
  %71 = add nsw i32 %70, -1
  %72 = load float, ptr %69, align 4, !tbaa !58
  %73 = load float, ptr %68, align 4, !tbaa !58
  %74 = fmul float %73, %1
  %75 = tail call float @llvm.fmuladd.f32(float %9, float %72, float %74)
  store float %75, ptr %67, align 4, !tbaa !58
  %76 = getelementptr inbounds float, ptr %69, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !58
  %78 = getelementptr inbounds float, ptr %68, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !58
  %80 = fmul float %79, %1
  %81 = tail call float @llvm.fmuladd.f32(float %9, float %77, float %80)
  %82 = getelementptr inbounds float, ptr %67, i64 1
  store float %81, ptr %82, align 4, !tbaa !58
  %83 = getelementptr inbounds float, ptr %69, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !58
  %85 = getelementptr inbounds float, ptr %68, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !58
  %87 = fmul float %86, %1
  %88 = tail call float @llvm.fmuladd.f32(float %9, float %84, float %87)
  %89 = getelementptr inbounds float, ptr %67, i64 2
  store float %88, ptr %89, align 4, !tbaa !58
  %90 = getelementptr inbounds float, ptr %69, i64 3
  %91 = load float, ptr %90, align 4, !tbaa !58
  %92 = getelementptr inbounds float, ptr %68, i64 3
  %93 = load float, ptr %92, align 4, !tbaa !58
  %94 = fmul float %93, %1
  %95 = tail call float @llvm.fmuladd.f32(float %9, float %91, float %94)
  %96 = getelementptr inbounds float, ptr %67, i64 3
  store float %95, ptr %96, align 4, !tbaa !58
  %97 = getelementptr inbounds float, ptr %69, i64 4
  %98 = getelementptr inbounds float, ptr %68, i64 4
  %99 = getelementptr inbounds float, ptr %67, i64 4
  %100 = icmp eq i32 %71, 0
  br i1 %100, label %14, label %66, !llvm.loop !216

101:                                              ; preds = %14, %59, %7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_cross_effect_byte(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 {
  %8 = fmul float %0, 2.560000e+02
  %9 = fptosi float %8 to i32
  %10 = sub nsw i32 256, %9
  %11 = fmul float %1, 2.560000e+02
  %12 = fptosi float %11 to i32
  %13 = sub nsw i32 256, %12
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %145, label %15

15:                                               ; preds = %7
  %16 = icmp eq i32 %2, 0
  %17 = icmp eq i32 %2, 0
  br label %23

18:                                               ; preds = %90, %88
  %19 = phi ptr [ %84, %88 ], [ %141, %90 ]
  %20 = phi ptr [ %85, %88 ], [ %142, %90 ]
  %21 = phi ptr [ %86, %88 ], [ %143, %90 ]
  %22 = icmp eq i32 %89, 0
  br i1 %22, label %145, label %23, !llvm.loop !217

23:                                               ; preds = %15, %18
  %24 = phi ptr [ %6, %15 ], [ %21, %18 ]
  %25 = phi ptr [ %5, %15 ], [ %20, %18 ]
  %26 = phi ptr [ %4, %15 ], [ %19, %18 ]
  %27 = phi i32 [ %3, %15 ], [ %89, %18 ]
  br i1 %16, label %83, label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %81, %28 ], [ %24, %23 ]
  %30 = phi ptr [ %80, %28 ], [ %25, %23 ]
  %31 = phi ptr [ %79, %28 ], [ %26, %23 ]
  %32 = phi i32 [ %33, %28 ], [ %2, %23 ]
  %33 = add nsw i32 %32, -1
  %34 = load i8, ptr %31, align 1, !tbaa !67
  %35 = zext i8 %34 to i32
  %36 = mul nsw i32 %10, %35
  %37 = load i8, ptr %30, align 1, !tbaa !67
  %38 = zext i8 %37 to i32
  %39 = mul nsw i32 %38, %9
  %40 = add nsw i32 %39, %36
  %41 = lshr i32 %40, 8
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %29, align 1, !tbaa !67
  %43 = getelementptr inbounds i8, ptr %31, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !67
  %45 = zext i8 %44 to i32
  %46 = mul nsw i32 %10, %45
  %47 = getelementptr inbounds i8, ptr %30, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !67
  %49 = zext i8 %48 to i32
  %50 = mul nsw i32 %49, %9
  %51 = add nsw i32 %50, %46
  %52 = lshr i32 %51, 8
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %53, ptr %54, align 1, !tbaa !67
  %55 = getelementptr inbounds i8, ptr %31, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !67
  %57 = zext i8 %56 to i32
  %58 = mul nsw i32 %10, %57
  %59 = getelementptr inbounds i8, ptr %30, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !67
  %61 = zext i8 %60 to i32
  %62 = mul nsw i32 %61, %9
  %63 = add nsw i32 %62, %58
  %64 = lshr i32 %63, 8
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 %65, ptr %66, align 1, !tbaa !67
  %67 = getelementptr inbounds i8, ptr %31, i64 3
  %68 = load i8, ptr %67, align 1, !tbaa !67
  %69 = zext i8 %68 to i32
  %70 = mul nsw i32 %10, %69
  %71 = getelementptr inbounds i8, ptr %30, i64 3
  %72 = load i8, ptr %71, align 1, !tbaa !67
  %73 = zext i8 %72 to i32
  %74 = mul nsw i32 %73, %9
  %75 = add nsw i32 %74, %70
  %76 = lshr i32 %75, 8
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 %77, ptr %78, align 1, !tbaa !67
  %79 = getelementptr inbounds i8, ptr %31, i64 4
  %80 = getelementptr inbounds i8, ptr %30, i64 4
  %81 = getelementptr inbounds i8, ptr %29, i64 4
  %82 = icmp eq i32 %33, 0
  br i1 %82, label %83, label %28, !llvm.loop !218

83:                                               ; preds = %28, %23
  %84 = phi ptr [ %26, %23 ], [ %79, %28 ]
  %85 = phi ptr [ %25, %23 ], [ %80, %28 ]
  %86 = phi ptr [ %24, %23 ], [ %81, %28 ]
  %87 = icmp eq i32 %27, 1
  br i1 %87, label %145, label %88

88:                                               ; preds = %83
  %89 = add nsw i32 %27, -2
  br i1 %17, label %18, label %90

90:                                               ; preds = %88, %90
  %91 = phi ptr [ %143, %90 ], [ %86, %88 ]
  %92 = phi ptr [ %142, %90 ], [ %85, %88 ]
  %93 = phi ptr [ %141, %90 ], [ %84, %88 ]
  %94 = phi i32 [ %95, %90 ], [ %2, %88 ]
  %95 = add nsw i32 %94, -1
  %96 = load i8, ptr %93, align 1, !tbaa !67
  %97 = zext i8 %96 to i32
  %98 = mul nsw i32 %13, %97
  %99 = load i8, ptr %92, align 1, !tbaa !67
  %100 = zext i8 %99 to i32
  %101 = mul nsw i32 %100, %12
  %102 = add nsw i32 %101, %98
  %103 = lshr i32 %102, 8
  %104 = trunc i32 %103 to i8
  store i8 %104, ptr %91, align 1, !tbaa !67
  %105 = getelementptr inbounds i8, ptr %93, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !67
  %107 = zext i8 %106 to i32
  %108 = mul nsw i32 %13, %107
  %109 = getelementptr inbounds i8, ptr %92, i64 1
  %110 = load i8, ptr %109, align 1, !tbaa !67
  %111 = zext i8 %110 to i32
  %112 = mul nsw i32 %111, %12
  %113 = add nsw i32 %112, %108
  %114 = lshr i32 %113, 8
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds i8, ptr %91, i64 1
  store i8 %115, ptr %116, align 1, !tbaa !67
  %117 = getelementptr inbounds i8, ptr %93, i64 2
  %118 = load i8, ptr %117, align 1, !tbaa !67
  %119 = zext i8 %118 to i32
  %120 = mul nsw i32 %13, %119
  %121 = getelementptr inbounds i8, ptr %92, i64 2
  %122 = load i8, ptr %121, align 1, !tbaa !67
  %123 = zext i8 %122 to i32
  %124 = mul nsw i32 %123, %12
  %125 = add nsw i32 %124, %120
  %126 = lshr i32 %125, 8
  %127 = trunc i32 %126 to i8
  %128 = getelementptr inbounds i8, ptr %91, i64 2
  store i8 %127, ptr %128, align 1, !tbaa !67
  %129 = getelementptr inbounds i8, ptr %93, i64 3
  %130 = load i8, ptr %129, align 1, !tbaa !67
  %131 = zext i8 %130 to i32
  %132 = mul nsw i32 %13, %131
  %133 = getelementptr inbounds i8, ptr %92, i64 3
  %134 = load i8, ptr %133, align 1, !tbaa !67
  %135 = zext i8 %134 to i32
  %136 = mul nsw i32 %135, %12
  %137 = add nsw i32 %136, %132
  %138 = lshr i32 %137, 8
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds i8, ptr %91, i64 3
  store i8 %139, ptr %140, align 1, !tbaa !67
  %141 = getelementptr inbounds i8, ptr %93, i64 4
  %142 = getelementptr inbounds i8, ptr %92, i64 4
  %143 = getelementptr inbounds i8, ptr %91, i64 4
  %144 = icmp eq i32 %95, 0
  br i1 %144, label %18, label %90, !llvm.loop !219

145:                                              ; preds = %18, %83, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_alphaover_effect_float(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 {
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %119, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %2, 0
  %11 = fneg float %0
  %12 = fcmp ugt float %0, 0.000000e+00
  %13 = icmp eq i32 %2, 0
  %14 = fneg float %1
  %15 = fcmp ugt float %1, 0.000000e+00
  br label %21

16:                                               ; preds = %114, %74
  %17 = phi ptr [ %70, %74 ], [ %115, %114 ]
  %18 = phi ptr [ %71, %74 ], [ %116, %114 ]
  %19 = phi ptr [ %72, %74 ], [ %117, %114 ]
  %20 = icmp eq i32 %75, 0
  br i1 %20, label %119, label %21, !llvm.loop !220

21:                                               ; preds = %9, %16
  %22 = phi ptr [ %6, %9 ], [ %19, %16 ]
  %23 = phi ptr [ %5, %9 ], [ %18, %16 ]
  %24 = phi ptr [ %4, %9 ], [ %17, %16 ]
  %25 = phi i32 [ %3, %9 ], [ %75, %16 ]
  br i1 %10, label %69, label %26

26:                                               ; preds = %21, %64
  %27 = phi i32 [ %31, %64 ], [ %2, %21 ]
  %28 = phi ptr [ %67, %64 ], [ %22, %21 ]
  %29 = phi ptr [ %66, %64 ], [ %23, %21 ]
  %30 = phi ptr [ %65, %64 ], [ %24, %21 ]
  %31 = add nsw i32 %27, -1
  %32 = getelementptr inbounds float, ptr %30, i64 3
  %33 = load float, ptr %32, align 4, !tbaa !58
  %34 = tail call float @llvm.fmuladd.f32(float %11, float %33, float 1.000000e+00)
  br i1 %12, label %36, label %35

35:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %29, i64 16, i1 false)
  br label %64

36:                                               ; preds = %26
  %37 = fcmp ugt float %34, 0.000000e+00
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %30, i64 16, i1 false)
  br label %64

39:                                               ; preds = %36
  %40 = load float, ptr %30, align 4, !tbaa !58
  %41 = load float, ptr %29, align 4, !tbaa !58
  %42 = fmul float %34, %41
  %43 = tail call float @llvm.fmuladd.f32(float %0, float %40, float %42)
  store float %43, ptr %28, align 4, !tbaa !58
  %44 = getelementptr inbounds float, ptr %30, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !58
  %46 = getelementptr inbounds float, ptr %29, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !58
  %48 = fmul float %34, %47
  %49 = tail call float @llvm.fmuladd.f32(float %0, float %45, float %48)
  %50 = getelementptr inbounds float, ptr %28, i64 1
  store float %49, ptr %50, align 4, !tbaa !58
  %51 = getelementptr inbounds float, ptr %30, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !58
  %53 = getelementptr inbounds float, ptr %29, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !58
  %55 = fmul float %34, %54
  %56 = tail call float @llvm.fmuladd.f32(float %0, float %52, float %55)
  %57 = getelementptr inbounds float, ptr %28, i64 2
  store float %56, ptr %57, align 4, !tbaa !58
  %58 = load float, ptr %32, align 4, !tbaa !58
  %59 = getelementptr inbounds float, ptr %29, i64 3
  %60 = load float, ptr %59, align 4, !tbaa !58
  %61 = fmul float %34, %60
  %62 = tail call float @llvm.fmuladd.f32(float %0, float %58, float %61)
  %63 = getelementptr inbounds float, ptr %28, i64 3
  store float %62, ptr %63, align 4, !tbaa !58
  br label %64

64:                                               ; preds = %38, %39, %35
  %65 = getelementptr inbounds float, ptr %30, i64 4
  %66 = getelementptr inbounds float, ptr %29, i64 4
  %67 = getelementptr inbounds float, ptr %28, i64 4
  %68 = icmp eq i32 %31, 0
  br i1 %68, label %69, label %26, !llvm.loop !221

69:                                               ; preds = %64, %21
  %70 = phi ptr [ %24, %21 ], [ %65, %64 ]
  %71 = phi ptr [ %23, %21 ], [ %66, %64 ]
  %72 = phi ptr [ %22, %21 ], [ %67, %64 ]
  %73 = icmp eq i32 %25, 1
  br i1 %73, label %119, label %74

74:                                               ; preds = %69
  %75 = add nsw i32 %25, -2
  br i1 %13, label %16, label %76

76:                                               ; preds = %74, %114
  %77 = phi i32 [ %81, %114 ], [ %2, %74 ]
  %78 = phi ptr [ %117, %114 ], [ %72, %74 ]
  %79 = phi ptr [ %116, %114 ], [ %71, %74 ]
  %80 = phi ptr [ %115, %114 ], [ %70, %74 ]
  %81 = add nsw i32 %77, -1
  %82 = getelementptr inbounds float, ptr %80, i64 3
  %83 = load float, ptr %82, align 4, !tbaa !58
  %84 = tail call float @llvm.fmuladd.f32(float %14, float %83, float 1.000000e+00)
  br i1 %15, label %86, label %85

85:                                               ; preds = %76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %78, ptr noundef nonnull align 4 dereferenceable(16) %79, i64 16, i1 false)
  br label %114

86:                                               ; preds = %76
  %87 = fcmp ugt float %84, 0.000000e+00
  br i1 %87, label %89, label %88

88:                                               ; preds = %86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %78, ptr noundef nonnull align 4 dereferenceable(16) %80, i64 16, i1 false)
  br label %114

89:                                               ; preds = %86
  %90 = load float, ptr %80, align 4, !tbaa !58
  %91 = load float, ptr %79, align 4, !tbaa !58
  %92 = fmul float %84, %91
  %93 = tail call float @llvm.fmuladd.f32(float %1, float %90, float %92)
  store float %93, ptr %78, align 4, !tbaa !58
  %94 = getelementptr inbounds float, ptr %80, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !58
  %96 = getelementptr inbounds float, ptr %79, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !58
  %98 = fmul float %84, %97
  %99 = tail call float @llvm.fmuladd.f32(float %1, float %95, float %98)
  %100 = getelementptr inbounds float, ptr %78, i64 1
  store float %99, ptr %100, align 4, !tbaa !58
  %101 = getelementptr inbounds float, ptr %80, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !58
  %103 = getelementptr inbounds float, ptr %79, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !58
  %105 = fmul float %84, %104
  %106 = tail call float @llvm.fmuladd.f32(float %1, float %102, float %105)
  %107 = getelementptr inbounds float, ptr %78, i64 2
  store float %106, ptr %107, align 4, !tbaa !58
  %108 = load float, ptr %82, align 4, !tbaa !58
  %109 = getelementptr inbounds float, ptr %79, i64 3
  %110 = load float, ptr %109, align 4, !tbaa !58
  %111 = fmul float %84, %110
  %112 = tail call float @llvm.fmuladd.f32(float %1, float %108, float %111)
  %113 = getelementptr inbounds float, ptr %78, i64 3
  store float %112, ptr %113, align 4, !tbaa !58
  br label %114

114:                                              ; preds = %88, %89, %85
  %115 = getelementptr inbounds float, ptr %80, i64 4
  %116 = getelementptr inbounds float, ptr %79, i64 4
  %117 = getelementptr inbounds float, ptr %78, i64 4
  %118 = icmp eq i32 %81, 0
  br i1 %118, label %16, label %76, !llvm.loop !222

119:                                              ; preds = %16, %69, %7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_alphaover_effect_byte(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 {
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %309, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %2, 0
  %11 = fneg float %0
  %12 = fcmp ugt float %0, 0.000000e+00
  %13 = icmp eq i32 %2, 0
  %14 = fneg float %1
  %15 = fcmp ugt float %1, 0.000000e+00
  br label %21

16:                                               ; preds = %304, %169
  %17 = phi ptr [ %165, %169 ], [ %305, %304 ]
  %18 = phi ptr [ %166, %169 ], [ %306, %304 ]
  %19 = phi ptr [ %167, %169 ], [ %307, %304 ]
  %20 = icmp eq i32 %170, 0
  br i1 %20, label %309, label %21, !llvm.loop !223

21:                                               ; preds = %9, %16
  %22 = phi ptr [ %6, %9 ], [ %19, %16 ]
  %23 = phi ptr [ %5, %9 ], [ %18, %16 ]
  %24 = phi ptr [ %4, %9 ], [ %17, %16 ]
  %25 = phi i32 [ %3, %9 ], [ %170, %16 ]
  br i1 %10, label %164, label %26

26:                                               ; preds = %21, %159
  %27 = phi i32 [ %31, %159 ], [ %2, %21 ]
  %28 = phi ptr [ %162, %159 ], [ %22, %21 ]
  %29 = phi ptr [ %161, %159 ], [ %23, %21 ]
  %30 = phi ptr [ %160, %159 ], [ %24, %21 ]
  %31 = add nsw i32 %27, -1
  %32 = getelementptr inbounds i8, ptr %30, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !67
  %34 = uitofp i8 %33 to float
  %35 = fmul float %34, 0x3F70101020000000
  %36 = fmul float %35, 0x3F70101020000000
  %37 = load i8, ptr %30, align 1, !tbaa !67
  %38 = uitofp i8 %37 to float
  %39 = fmul float %36, %38
  %40 = getelementptr inbounds i8, ptr %30, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !67
  %42 = uitofp i8 %41 to float
  %43 = fmul float %36, %42
  %44 = getelementptr inbounds i8, ptr %30, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !67
  %46 = uitofp i8 %45 to float
  %47 = fmul float %36, %46
  %48 = getelementptr inbounds i8, ptr %29, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !67
  %50 = uitofp i8 %49 to float
  %51 = fmul float %50, 0x3F70101020000000
  %52 = fmul float %51, 0x3F70101020000000
  %53 = load i8, ptr %29, align 1, !tbaa !67
  %54 = uitofp i8 %53 to float
  %55 = fmul float %52, %54
  %56 = getelementptr inbounds i8, ptr %29, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !67
  %58 = uitofp i8 %57 to float
  %59 = fmul float %52, %58
  %60 = getelementptr inbounds i8, ptr %29, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !67
  %62 = uitofp i8 %61 to float
  %63 = fmul float %52, %62
  %64 = tail call float @llvm.fmuladd.f32(float %11, float %35, float 1.000000e+00)
  br i1 %12, label %67, label %65

65:                                               ; preds = %26
  %66 = load i32, ptr %29, align 4, !tbaa !125
  store i32 %66, ptr %28, align 4, !tbaa !125
  br label %159

67:                                               ; preds = %26
  %68 = fcmp ugt float %64, 0.000000e+00
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = load i32, ptr %30, align 4, !tbaa !125
  store i32 %70, ptr %28, align 4, !tbaa !125
  br label %159

71:                                               ; preds = %67
  %72 = fmul float %64, %55
  %73 = tail call float @llvm.fmuladd.f32(float %0, float %39, float %72)
  %74 = fmul float %64, %59
  %75 = tail call float @llvm.fmuladd.f32(float %0, float %43, float %74)
  %76 = fmul float %64, %63
  %77 = tail call float @llvm.fmuladd.f32(float %0, float %47, float %76)
  %78 = fmul float %64, %51
  %79 = tail call float @llvm.fmuladd.f32(float %0, float %35, float %78)
  %80 = fcmp oeq float %79, 0.000000e+00
  %81 = fcmp oeq float %79, 1.000000e+00
  %82 = or i1 %80, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %71
  %84 = fcmp ugt float %73, 0.000000e+00
  br i1 %84, label %85, label %90

85:                                               ; preds = %83
  %86 = fcmp ogt float %73, 0x3FEFEFEFE0000000
  br i1 %86, label %90, label %87

87:                                               ; preds = %85
  %88 = tail call float @llvm.fmuladd.f32(float %73, float 2.550000e+02, float 5.000000e-01)
  %89 = fptoui float %88 to i8
  br label %90

90:                                               ; preds = %87, %85, %83
  %91 = phi i8 [ 0, %83 ], [ %89, %87 ], [ -1, %85 ]
  store i8 %91, ptr %28, align 1, !tbaa !67
  %92 = fcmp ugt float %75, 0.000000e+00
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = fcmp ogt float %75, 0x3FEFEFEFE0000000
  br i1 %94, label %98, label %95

95:                                               ; preds = %93
  %96 = tail call float @llvm.fmuladd.f32(float %75, float 2.550000e+02, float 5.000000e-01)
  %97 = fptoui float %96 to i8
  br label %98

98:                                               ; preds = %95, %93, %90
  %99 = phi i8 [ 0, %90 ], [ %97, %95 ], [ -1, %93 ]
  %100 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %99, ptr %100, align 1, !tbaa !67
  %101 = fcmp ugt float %77, 0.000000e+00
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = fcmp ogt float %77, 0x3FEFEFEFE0000000
  br i1 %103, label %107, label %104

104:                                              ; preds = %102
  %105 = tail call float @llvm.fmuladd.f32(float %77, float 2.550000e+02, float 5.000000e-01)
  %106 = fptoui float %105 to i8
  br label %107

107:                                              ; preds = %104, %102, %98
  %108 = phi i8 [ 0, %98 ], [ %106, %104 ], [ -1, %102 ]
  %109 = getelementptr inbounds i8, ptr %28, i64 2
  store i8 %108, ptr %109, align 1, !tbaa !67
  %110 = fcmp ugt float %79, 0.000000e+00
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = fcmp ogt float %79, 0x3FEFEFEFE0000000
  br i1 %112, label %116, label %113

113:                                              ; preds = %111
  %114 = tail call float @llvm.fmuladd.f32(float %79, float 2.550000e+02, float 5.000000e-01)
  %115 = fptoui float %114 to i8
  br label %116

116:                                              ; preds = %113, %111, %107
  %117 = phi i8 [ 0, %107 ], [ %115, %113 ], [ -1, %111 ]
  %118 = getelementptr inbounds i8, ptr %28, i64 3
  store i8 %117, ptr %118, align 1, !tbaa !67
  br label %159

119:                                              ; preds = %71
  %120 = fdiv float 1.000000e+00, %79
  %121 = fmul float %120, %73
  %122 = fcmp ugt float %121, 0.000000e+00
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = fcmp ogt float %121, 0x3FEFEFEFE0000000
  br i1 %124, label %128, label %125

125:                                              ; preds = %123
  %126 = tail call float @llvm.fmuladd.f32(float %121, float 2.550000e+02, float 5.000000e-01)
  %127 = fptoui float %126 to i8
  br label %128

128:                                              ; preds = %125, %123, %119
  %129 = phi i8 [ 0, %119 ], [ %127, %125 ], [ -1, %123 ]
  store i8 %129, ptr %28, align 1, !tbaa !67
  %130 = fmul float %120, %75
  %131 = fcmp ugt float %130, 0.000000e+00
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = fcmp ogt float %130, 0x3FEFEFEFE0000000
  br i1 %133, label %137, label %134

134:                                              ; preds = %132
  %135 = tail call float @llvm.fmuladd.f32(float %130, float 2.550000e+02, float 5.000000e-01)
  %136 = fptoui float %135 to i8
  br label %137

137:                                              ; preds = %134, %132, %128
  %138 = phi i8 [ 0, %128 ], [ %136, %134 ], [ -1, %132 ]
  %139 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %138, ptr %139, align 1, !tbaa !67
  %140 = fmul float %120, %77
  %141 = fcmp ugt float %140, 0.000000e+00
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = fcmp ogt float %140, 0x3FEFEFEFE0000000
  br i1 %143, label %147, label %144

144:                                              ; preds = %142
  %145 = tail call float @llvm.fmuladd.f32(float %140, float 2.550000e+02, float 5.000000e-01)
  %146 = fptoui float %145 to i8
  br label %147

147:                                              ; preds = %144, %142, %137
  %148 = phi i8 [ 0, %137 ], [ %146, %144 ], [ -1, %142 ]
  %149 = getelementptr inbounds i8, ptr %28, i64 2
  store i8 %148, ptr %149, align 1, !tbaa !67
  %150 = fcmp ugt float %79, 0.000000e+00
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = fcmp ogt float %79, 0x3FEFEFEFE0000000
  br i1 %152, label %156, label %153

153:                                              ; preds = %151
  %154 = tail call float @llvm.fmuladd.f32(float %79, float 2.550000e+02, float 5.000000e-01)
  %155 = fptoui float %154 to i8
  br label %156

156:                                              ; preds = %153, %151, %147
  %157 = phi i8 [ 0, %147 ], [ %155, %153 ], [ -1, %151 ]
  %158 = getelementptr inbounds i8, ptr %28, i64 3
  store i8 %157, ptr %158, align 1, !tbaa !67
  br label %159

159:                                              ; preds = %156, %116, %69, %65
  %160 = getelementptr inbounds i8, ptr %30, i64 4
  %161 = getelementptr inbounds i8, ptr %29, i64 4
  %162 = getelementptr inbounds i8, ptr %28, i64 4
  %163 = icmp eq i32 %31, 0
  br i1 %163, label %164, label %26, !llvm.loop !224

164:                                              ; preds = %159, %21
  %165 = phi ptr [ %24, %21 ], [ %160, %159 ]
  %166 = phi ptr [ %23, %21 ], [ %161, %159 ]
  %167 = phi ptr [ %22, %21 ], [ %162, %159 ]
  %168 = icmp eq i32 %25, 1
  br i1 %168, label %309, label %169

169:                                              ; preds = %164
  %170 = add nsw i32 %25, -2
  br i1 %13, label %16, label %171

171:                                              ; preds = %169, %304
  %172 = phi i32 [ %176, %304 ], [ %2, %169 ]
  %173 = phi ptr [ %307, %304 ], [ %167, %169 ]
  %174 = phi ptr [ %306, %304 ], [ %166, %169 ]
  %175 = phi ptr [ %305, %304 ], [ %165, %169 ]
  %176 = add nsw i32 %172, -1
  %177 = getelementptr inbounds i8, ptr %175, i64 3
  %178 = load i8, ptr %177, align 1, !tbaa !67
  %179 = uitofp i8 %178 to float
  %180 = fmul float %179, 0x3F70101020000000
  %181 = fmul float %180, 0x3F70101020000000
  %182 = load i8, ptr %175, align 1, !tbaa !67
  %183 = uitofp i8 %182 to float
  %184 = fmul float %181, %183
  %185 = getelementptr inbounds i8, ptr %175, i64 1
  %186 = load i8, ptr %185, align 1, !tbaa !67
  %187 = uitofp i8 %186 to float
  %188 = fmul float %181, %187
  %189 = getelementptr inbounds i8, ptr %175, i64 2
  %190 = load i8, ptr %189, align 1, !tbaa !67
  %191 = uitofp i8 %190 to float
  %192 = fmul float %181, %191
  %193 = getelementptr inbounds i8, ptr %174, i64 3
  %194 = load i8, ptr %193, align 1, !tbaa !67
  %195 = uitofp i8 %194 to float
  %196 = fmul float %195, 0x3F70101020000000
  %197 = fmul float %196, 0x3F70101020000000
  %198 = load i8, ptr %174, align 1, !tbaa !67
  %199 = uitofp i8 %198 to float
  %200 = fmul float %197, %199
  %201 = getelementptr inbounds i8, ptr %174, i64 1
  %202 = load i8, ptr %201, align 1, !tbaa !67
  %203 = uitofp i8 %202 to float
  %204 = fmul float %197, %203
  %205 = getelementptr inbounds i8, ptr %174, i64 2
  %206 = load i8, ptr %205, align 1, !tbaa !67
  %207 = uitofp i8 %206 to float
  %208 = fmul float %197, %207
  %209 = tail call float @llvm.fmuladd.f32(float %14, float %180, float 1.000000e+00)
  br i1 %15, label %212, label %210

210:                                              ; preds = %171
  %211 = load i32, ptr %174, align 4, !tbaa !125
  store i32 %211, ptr %173, align 4, !tbaa !125
  br label %304

212:                                              ; preds = %171
  %213 = fcmp ugt float %209, 0.000000e+00
  br i1 %213, label %216, label %214

214:                                              ; preds = %212
  %215 = load i32, ptr %175, align 4, !tbaa !125
  store i32 %215, ptr %173, align 4, !tbaa !125
  br label %304

216:                                              ; preds = %212
  %217 = fmul float %209, %200
  %218 = tail call float @llvm.fmuladd.f32(float %1, float %184, float %217)
  %219 = fmul float %209, %204
  %220 = tail call float @llvm.fmuladd.f32(float %1, float %188, float %219)
  %221 = fmul float %209, %208
  %222 = tail call float @llvm.fmuladd.f32(float %1, float %192, float %221)
  %223 = fmul float %209, %196
  %224 = tail call float @llvm.fmuladd.f32(float %1, float %180, float %223)
  %225 = fcmp oeq float %224, 0.000000e+00
  %226 = fcmp oeq float %224, 1.000000e+00
  %227 = or i1 %225, %226
  br i1 %227, label %228, label %264

228:                                              ; preds = %216
  %229 = fcmp ugt float %218, 0.000000e+00
  br i1 %229, label %230, label %235

230:                                              ; preds = %228
  %231 = fcmp ogt float %218, 0x3FEFEFEFE0000000
  br i1 %231, label %235, label %232

232:                                              ; preds = %230
  %233 = tail call float @llvm.fmuladd.f32(float %218, float 2.550000e+02, float 5.000000e-01)
  %234 = fptoui float %233 to i8
  br label %235

235:                                              ; preds = %232, %230, %228
  %236 = phi i8 [ 0, %228 ], [ %234, %232 ], [ -1, %230 ]
  store i8 %236, ptr %173, align 1, !tbaa !67
  %237 = fcmp ugt float %220, 0.000000e+00
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = fcmp ogt float %220, 0x3FEFEFEFE0000000
  br i1 %239, label %243, label %240

240:                                              ; preds = %238
  %241 = tail call float @llvm.fmuladd.f32(float %220, float 2.550000e+02, float 5.000000e-01)
  %242 = fptoui float %241 to i8
  br label %243

243:                                              ; preds = %240, %238, %235
  %244 = phi i8 [ 0, %235 ], [ %242, %240 ], [ -1, %238 ]
  %245 = getelementptr inbounds i8, ptr %173, i64 1
  store i8 %244, ptr %245, align 1, !tbaa !67
  %246 = fcmp ugt float %222, 0.000000e+00
  br i1 %246, label %247, label %252

247:                                              ; preds = %243
  %248 = fcmp ogt float %222, 0x3FEFEFEFE0000000
  br i1 %248, label %252, label %249

249:                                              ; preds = %247
  %250 = tail call float @llvm.fmuladd.f32(float %222, float 2.550000e+02, float 5.000000e-01)
  %251 = fptoui float %250 to i8
  br label %252

252:                                              ; preds = %249, %247, %243
  %253 = phi i8 [ 0, %243 ], [ %251, %249 ], [ -1, %247 ]
  %254 = getelementptr inbounds i8, ptr %173, i64 2
  store i8 %253, ptr %254, align 1, !tbaa !67
  %255 = fcmp ugt float %224, 0.000000e+00
  br i1 %255, label %256, label %261

256:                                              ; preds = %252
  %257 = fcmp ogt float %224, 0x3FEFEFEFE0000000
  br i1 %257, label %261, label %258

258:                                              ; preds = %256
  %259 = tail call float @llvm.fmuladd.f32(float %224, float 2.550000e+02, float 5.000000e-01)
  %260 = fptoui float %259 to i8
  br label %261

261:                                              ; preds = %258, %256, %252
  %262 = phi i8 [ 0, %252 ], [ %260, %258 ], [ -1, %256 ]
  %263 = getelementptr inbounds i8, ptr %173, i64 3
  store i8 %262, ptr %263, align 1, !tbaa !67
  br label %304

264:                                              ; preds = %216
  %265 = fdiv float 1.000000e+00, %224
  %266 = fmul float %265, %218
  %267 = fcmp ugt float %266, 0.000000e+00
  br i1 %267, label %268, label %273

268:                                              ; preds = %264
  %269 = fcmp ogt float %266, 0x3FEFEFEFE0000000
  br i1 %269, label %273, label %270

270:                                              ; preds = %268
  %271 = tail call float @llvm.fmuladd.f32(float %266, float 2.550000e+02, float 5.000000e-01)
  %272 = fptoui float %271 to i8
  br label %273

273:                                              ; preds = %270, %268, %264
  %274 = phi i8 [ 0, %264 ], [ %272, %270 ], [ -1, %268 ]
  store i8 %274, ptr %173, align 1, !tbaa !67
  %275 = fmul float %265, %220
  %276 = fcmp ugt float %275, 0.000000e+00
  br i1 %276, label %277, label %282

277:                                              ; preds = %273
  %278 = fcmp ogt float %275, 0x3FEFEFEFE0000000
  br i1 %278, label %282, label %279

279:                                              ; preds = %277
  %280 = tail call float @llvm.fmuladd.f32(float %275, float 2.550000e+02, float 5.000000e-01)
  %281 = fptoui float %280 to i8
  br label %282

282:                                              ; preds = %279, %277, %273
  %283 = phi i8 [ 0, %273 ], [ %281, %279 ], [ -1, %277 ]
  %284 = getelementptr inbounds i8, ptr %173, i64 1
  store i8 %283, ptr %284, align 1, !tbaa !67
  %285 = fmul float %265, %222
  %286 = fcmp ugt float %285, 0.000000e+00
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = fcmp ogt float %285, 0x3FEFEFEFE0000000
  br i1 %288, label %292, label %289

289:                                              ; preds = %287
  %290 = tail call float @llvm.fmuladd.f32(float %285, float 2.550000e+02, float 5.000000e-01)
  %291 = fptoui float %290 to i8
  br label %292

292:                                              ; preds = %289, %287, %282
  %293 = phi i8 [ 0, %282 ], [ %291, %289 ], [ -1, %287 ]
  %294 = getelementptr inbounds i8, ptr %173, i64 2
  store i8 %293, ptr %294, align 1, !tbaa !67
  %295 = fcmp ugt float %224, 0.000000e+00
  br i1 %295, label %296, label %301

296:                                              ; preds = %292
  %297 = fcmp ogt float %224, 0x3FEFEFEFE0000000
  br i1 %297, label %301, label %298

298:                                              ; preds = %296
  %299 = tail call float @llvm.fmuladd.f32(float %224, float 2.550000e+02, float 5.000000e-01)
  %300 = fptoui float %299 to i8
  br label %301

301:                                              ; preds = %298, %296, %292
  %302 = phi i8 [ 0, %292 ], [ %300, %298 ], [ -1, %296 ]
  %303 = getelementptr inbounds i8, ptr %173, i64 3
  store i8 %302, ptr %303, align 1, !tbaa !67
  br label %304

304:                                              ; preds = %301, %261, %214, %210
  %305 = getelementptr inbounds i8, ptr %175, i64 4
  %306 = getelementptr inbounds i8, ptr %174, i64 4
  %307 = getelementptr inbounds i8, ptr %173, i64 4
  %308 = icmp eq i32 %176, 0
  br i1 %308, label %16, label %171, !llvm.loop !225

309:                                              ; preds = %16, %164, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc float @check_zone(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, float noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !134
  %8 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !135
  %10 = sitofp i32 %7 to float
  %11 = fmul float %10, 5.000000e-01
  %12 = sitofp i32 %9 to float
  %13 = fmul float %12, 5.000000e-01
  %14 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !131
  %18 = icmp eq i32 %17, 0
  %19 = sub nsw i32 %7, %1
  %20 = select i1 %18, i32 %1, i32 %19
  %21 = load float, ptr %0, align 4, !tbaa !133
  %22 = getelementptr inbounds %struct.WipeVars, ptr %15, i64 0, i32 2
  %23 = load i16, ptr %22, align 4, !tbaa !226
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = fmul float %10, %4
  %27 = fmul float %12, %4
  br label %32

28:                                               ; preds = %5
  %29 = fneg float %4
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %10, float %10)
  %31 = tail call float @llvm.fmuladd.f32(float %29, float %12, float %12)
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi float [ %27, %25 ], [ %31, %28 ]
  %34 = phi float [ %26, %25 ], [ %30, %28 ]
  %35 = getelementptr inbounds %struct.WipeVars, ptr %15, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !227
  switch i16 %36, label %315 [
    i16 0, label %37
    i16 1, label %97
    i16 5, label %206
    i16 4, label %279
  ]

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !137
  %40 = fmul float %12, %4
  %41 = fptosi float %40 to i32
  %42 = tail call i32 @llvm.smin.i32(i32 %39, i32 %41)
  %43 = fneg float %4
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %12, float %12)
  %45 = fptosi float %44 to i32
  %46 = tail call i32 @llvm.smin.i32(i32 %42, i32 %45)
  %47 = fcmp oeq float %21, 0.000000e+00
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = sitofp i32 %2 to float
  %50 = fsub float %49, %33
  %51 = tail call float @llvm.fabs.f32(float %50)
  br label %65

52:                                               ; preds = %37
  %53 = fneg float %21
  %54 = tail call float @llvm.fmuladd.f32(float %21, float %34, float %33)
  %55 = sitofp i32 %2 to float
  %56 = sitofp i32 %20 to float
  %57 = tail call float @llvm.fmuladd.f32(float %21, float %56, float %55)
  %58 = fneg float %33
  %59 = tail call float @llvm.fmuladd.f32(float %53, float %34, float %58)
  %60 = fadd float %57, %59
  %61 = tail call float @llvm.fabs.f32(float %60)
  %62 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 5
  %63 = load float, ptr %62, align 4, !tbaa !138
  %64 = fmul float %61, %63
  br label %65

65:                                               ; preds = %52, %48
  %66 = phi float [ %51, %48 ], [ %64, %52 ]
  %67 = phi float [ %33, %48 ], [ %54, %52 ]
  %68 = phi float [ %49, %48 ], [ %57, %52 ]
  %69 = fcmp olt float %21, 0.000000e+00
  %70 = select i1 %69, float %68, float %67
  %71 = select i1 %69, float %67, float %68
  %72 = fcmp olt float %70, %71
  %73 = sitofp i32 %46 to float
  %74 = icmp eq i32 %46, 0
  %75 = fcmp ogt float %66, %73
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %24, label %87, label %77

77:                                               ; preds = %65
  br i1 %72, label %78, label %82

78:                                               ; preds = %77
  br i1 %76, label %315, label %79

79:                                               ; preds = %78
  %80 = tail call float @llvm.fmuladd.f32(float %73, float 5.000000e-01, float %66)
  %81 = fdiv float %80, %73
  br label %315

82:                                               ; preds = %77
  br i1 %76, label %315, label %83

83:                                               ; preds = %82
  %84 = fneg float %66
  %85 = tail call float @llvm.fmuladd.f32(float %73, float 5.000000e-01, float %84)
  %86 = fdiv float %85, %73
  br label %315

87:                                               ; preds = %65
  br i1 %72, label %88, label %93

88:                                               ; preds = %87
  br i1 %76, label %315, label %89

89:                                               ; preds = %88
  %90 = fneg float %66
  %91 = tail call float @llvm.fmuladd.f32(float %73, float 5.000000e-01, float %90)
  %92 = fdiv float %91, %73
  br label %315

93:                                               ; preds = %87
  br i1 %76, label %315, label %94

94:                                               ; preds = %93
  %95 = tail call float @llvm.fmuladd.f32(float %73, float 5.000000e-01, float %66)
  %96 = fdiv float %95, %73
  br label %315

97:                                               ; preds = %32
  %98 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 4
  %99 = load i32, ptr %98, align 4, !tbaa !137
  %100 = sitofp i32 %99 to float
  %101 = fmul float %100, 5.000000e-01
  %102 = fcmp oeq float %21, 0.000000e+00
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = fmul float %33, 5.000000e-01
  %105 = fneg float %33
  %106 = tail call float @llvm.fmuladd.f32(float %105, float 5.000000e-01, float %12)
  %107 = sitofp i32 %2 to float
  %108 = tail call float @llvm.fmuladd.f32(float %105, float 5.000000e-01, float %107)
  %109 = tail call float @llvm.fabs.f32(float %108)
  %110 = fsub float %107, %106
  %111 = tail call float @llvm.fabs.f32(float %110)
  br label %138

112:                                              ; preds = %97
  %113 = fneg float %21
  %114 = fmul float %34, %113
  %115 = fmul float %114, -5.000000e-01
  %116 = tail call float @llvm.fmuladd.f32(float %33, float 5.000000e-01, float %115)
  %117 = fneg float %33
  %118 = tail call float @llvm.fmuladd.f32(float %117, float 5.000000e-01, float %12)
  %119 = fneg float %34
  %120 = tail call float @llvm.fmuladd.f32(float %119, float 5.000000e-01, float %10)
  %121 = tail call float @llvm.fmuladd.f32(float %21, float %120, float %118)
  %122 = sitofp i32 %2 to float
  %123 = sitofp i32 %20 to float
  %124 = tail call float @llvm.fmuladd.f32(float %21, float %123, float %122)
  %125 = fmul float %21, %34
  %126 = fmul float %125, -5.000000e-01
  %127 = tail call float @llvm.fmuladd.f32(float %117, float 5.000000e-01, float %126)
  %128 = fadd float %124, %127
  %129 = tail call float @llvm.fabs.f32(float %128)
  %130 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 5
  %131 = load float, ptr %130, align 4, !tbaa !138
  %132 = fmul float %129, %131
  %133 = fneg float %118
  %134 = tail call float @llvm.fmuladd.f32(float %113, float %120, float %133)
  %135 = fadd float %124, %134
  %136 = tail call float @llvm.fabs.f32(float %135)
  %137 = fmul float %136, %131
  br label %138

138:                                              ; preds = %112, %103
  %139 = phi float [ %111, %103 ], [ %137, %112 ]
  %140 = phi float [ %109, %103 ], [ %132, %112 ]
  %141 = phi float [ %104, %103 ], [ %116, %112 ]
  %142 = phi float [ %107, %103 ], [ %124, %112 ]
  %143 = phi float [ %106, %103 ], [ %121, %112 ]
  %144 = fsub float %143, %141
  %145 = tail call float @llvm.fabs.f32(float %144)
  %146 = fmul float %145, 5.000000e-01
  %147 = fcmp olt float %101, %146
  %148 = select i1 %147, float %101, float %146
  %149 = fcmp olt float %142, %141
  %150 = fcmp olt float %142, %143
  %151 = select i1 %149, i1 %150, i1 false
  br i1 %151, label %152, label %160

152:                                              ; preds = %138
  %153 = fcmp oeq float %148, 0.000000e+00
  %154 = fcmp olt float %148, %140
  %155 = select i1 %153, i1 true, i1 %154
  br i1 %155, label %202, label %156

156:                                              ; preds = %152
  %157 = fneg float %140
  %158 = tail call float @llvm.fmuladd.f32(float %148, float 5.000000e-01, float %157)
  %159 = fdiv float %158, %148
  br label %202

160:                                              ; preds = %138
  %161 = fcmp ogt float %142, %141
  %162 = fcmp ogt float %142, %143
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = fcmp oeq float %148, 0.000000e+00
  %166 = fcmp olt float %148, %139
  %167 = select i1 %165, i1 true, i1 %166
  br i1 %167, label %202, label %168

168:                                              ; preds = %164
  %169 = fneg float %139
  %170 = tail call float @llvm.fmuladd.f32(float %148, float 5.000000e-01, float %169)
  %171 = fdiv float %170, %148
  br label %202

172:                                              ; preds = %160
  %173 = fcmp olt float %140, %148
  %174 = fcmp ogt float %139, %148
  %175 = select i1 %173, i1 %174, i1 false
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = fcmp oeq float %148, 0.000000e+00
  %178 = fcmp olt float %148, %140
  %179 = select i1 %177, i1 true, i1 %178
  br i1 %179, label %202, label %180

180:                                              ; preds = %176
  %181 = tail call float @llvm.fmuladd.f32(float %148, float 5.000000e-01, float %140)
  %182 = fdiv float %181, %148
  br label %202

183:                                              ; preds = %172
  %184 = fcmp ogt float %140, %148
  %185 = fcmp olt float %139, %148
  %186 = select i1 %184, i1 %185, i1 false
  %187 = fcmp oeq float %148, 0.000000e+00
  %188 = select i1 %187, i1 true, i1 %174
  br i1 %186, label %189, label %193

189:                                              ; preds = %183
  br i1 %188, label %202, label %190

190:                                              ; preds = %189
  %191 = tail call float @llvm.fmuladd.f32(float %148, float 5.000000e-01, float %139)
  %192 = fdiv float %191, %148
  br label %202

193:                                              ; preds = %183
  %194 = tail call float @llvm.fmuladd.f32(float %148, float 5.000000e-01, float %139)
  %195 = fdiv float %194, %148
  %196 = select i1 %188, float 1.000000e+00, float %195
  %197 = or i1 %187, %184
  %198 = tail call float @llvm.fmuladd.f32(float %148, float 5.000000e-01, float %140)
  %199 = fdiv float %198, %148
  %200 = select i1 %197, float 1.000000e+00, float %199
  %201 = fmul float %196, %200
  br label %202

202:                                              ; preds = %189, %190, %180, %176, %168, %164, %156, %152, %193
  %203 = phi float [ %201, %193 ], [ %159, %156 ], [ 0.000000e+00, %152 ], [ %171, %168 ], [ 0.000000e+00, %164 ], [ %182, %180 ], [ 1.000000e+00, %176 ], [ %192, %190 ], [ 1.000000e+00, %189 ]
  br i1 %24, label %204, label %315

204:                                              ; preds = %202
  %205 = fsub float 1.000000e+00, %203
  br label %315

206:                                              ; preds = %32
  %207 = load float, ptr %15, align 4, !tbaa !136
  %208 = fmul float %207, 2.000000e+00
  %209 = fmul float %208, 0x400921FB60000000
  %210 = fmul float %4, 0x401921FB60000000
  %211 = fsub float 0x401921FB60000000, %210
  %212 = select i1 %24, float %210, float %211
  %213 = sitofp i32 %20 to float
  %214 = fsub float %213, %11
  %215 = fptosi float %214 to i32
  %216 = sitofp i32 %2 to float
  %217 = fsub float %216, %13
  %218 = fptosi float %217 to i32
  %219 = tail call i32 @llvm.abs.i32(i32 %218, i1 true)
  %220 = sitofp i32 %219 to double
  %221 = sitofp i32 %215 to double
  %222 = sitofp i32 %218 to double
  %223 = tail call double @hypot(double noundef %221, double noundef %222) #16
  %224 = fdiv double %220, %223
  %225 = tail call double @asin(double noundef %224) #16
  %226 = fptrunc double %225 to float
  %227 = icmp slt i32 %215, 1
  %228 = icmp sgt i32 %218, -1
  %229 = and i1 %228, %227
  br i1 %229, label %230, label %232

230:                                              ; preds = %206
  %231 = fsub float 0x400921FB60000000, %226
  br label %242

232:                                              ; preds = %206
  %233 = icmp slt i32 %218, 1
  %234 = and i1 %233, %227
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = fadd float %226, 0x400921FB60000000
  br label %242

237:                                              ; preds = %232
  %238 = icmp sgt i32 %215, -1
  %239 = and i1 %233, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = fsub float 0x401921FB60000000, %226
  br label %242

242:                                              ; preds = %235, %240, %237, %230
  %243 = phi float [ %231, %230 ], [ %236, %235 ], [ %241, %240 ], [ %226, %237 ]
  %244 = load i16, ptr %22, align 4, !tbaa !226
  %245 = icmp eq i16 %244, 0
  %246 = fmul float %209, 5.000000e-01
  br i1 %245, label %251, label %247

247:                                              ; preds = %242
  %248 = fneg float %246
  %249 = tail call float @llvm.fmuladd.f32(float %248, float %4, float %212)
  %250 = fsub float 1.000000e+00, %4
  br label %255

251:                                              ; preds = %242
  %252 = fsub float 1.000000e+00, %4
  %253 = fneg float %246
  %254 = tail call float @llvm.fmuladd.f32(float %253, float %252, float %212)
  br label %255

255:                                              ; preds = %251, %247
  %256 = phi float [ %4, %251 ], [ %250, %247 ]
  %257 = phi float [ %254, %251 ], [ %249, %247 ]
  %258 = tail call float @llvm.fmuladd.f32(float %246, float %256, float %212)
  %259 = fcmp olt float %257, 0.000000e+00
  %260 = select i1 %259, float 0.000000e+00, float %257
  %261 = fcmp ogt float %258, 0x401921FB60000000
  %262 = select i1 %261, float 0x401921FB60000000, float %258
  %263 = fcmp olt float %243, %260
  br i1 %263, label %270, label %264

264:                                              ; preds = %255
  %265 = fcmp ogt float %243, %262
  br i1 %265, label %270, label %266

266:                                              ; preds = %264
  %267 = fsub float %243, %260
  %268 = fsub float %262, %260
  %269 = fdiv float %267, %268
  br label %270

270:                                              ; preds = %264, %255, %266
  %271 = phi float [ %269, %266 ], [ 0.000000e+00, %255 ], [ 1.000000e+00, %264 ]
  %272 = or i32 %215, %218
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %273, float 1.000000e+00, float %271
  %275 = fcmp uno float %274, 0.000000e+00
  %276 = select i1 %275, float 1.000000e+00, float %274
  br i1 %245, label %315, label %277

277:                                              ; preds = %270
  %278 = fsub float 1.000000e+00, %276
  br label %315

279:                                              ; preds = %32
  %280 = fsub float 1.000000e+00, %4
  %281 = select i1 %24, float %280, float %4
  %282 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 4
  %283 = load i32, ptr %282, align 4, !tbaa !137
  %284 = sitofp i32 %283 to float
  %285 = fmul float %284, 5.000000e-01
  %286 = fneg float %11
  %287 = tail call float @llvm.fmuladd.f32(float %286, float %281, float %11)
  %288 = tail call float @hypotf(float noundef %287, float noundef %287) #16
  %289 = sitofp i32 %20 to float
  %290 = fsub float %11, %289
  %291 = sitofp i32 %2 to float
  %292 = fsub float %13, %291
  %293 = tail call float @hypotf(float noundef %290, float noundef %292) #16
  %294 = fcmp ogt float %293, %288
  %295 = fsub float %293, %288
  %296 = tail call float @llvm.fabs.f32(float %295)
  %297 = fcmp oeq float %285, 0.000000e+00
  %298 = fcmp olt float %285, %296
  %299 = select i1 %297, i1 true, i1 %298
  br i1 %294, label %300, label %305

300:                                              ; preds = %279
  br i1 %299, label %309, label %301

301:                                              ; preds = %300
  %302 = fneg float %296
  %303 = tail call float @llvm.fmuladd.f32(float %285, float 5.000000e-01, float %302)
  %304 = fdiv float %303, %285
  br label %309

305:                                              ; preds = %279
  br i1 %299, label %309, label %306

306:                                              ; preds = %305
  %307 = tail call float @llvm.fmuladd.f32(float %285, float 5.000000e-01, float %296)
  %308 = fdiv float %307, %285
  br label %309

309:                                              ; preds = %306, %305, %301, %300
  %310 = phi float [ %304, %301 ], [ 0.000000e+00, %300 ], [ %308, %306 ], [ 1.000000e+00, %305 ]
  %311 = load i16, ptr %22, align 4, !tbaa !226
  %312 = icmp eq i16 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = fsub float 1.000000e+00, %310
  br label %315

315:                                              ; preds = %94, %93, %89, %88, %83, %82, %79, %78, %309, %313, %270, %277, %202, %204, %32
  %316 = phi float [ 0.000000e+00, %32 ], [ %310, %309 ], [ %314, %313 ], [ %278, %277 ], [ %276, %270 ], [ %203, %202 ], [ %205, %204 ], [ %81, %79 ], [ 1.000000e+00, %78 ], [ %86, %83 ], [ 0.000000e+00, %82 ], [ %92, %89 ], [ 0.000000e+00, %88 ], [ %96, %94 ], [ 1.000000e+00, %93 ]
  %317 = fcmp olt float %316, 0.000000e+00
  br i1 %317, label %321, label %318

318:                                              ; preds = %315
  %319 = fcmp ogt float %316, 1.000000e+00
  br i1 %319, label %320, label %321

320:                                              ; preds = %318
  br label %321

321:                                              ; preds = %315, %318, %320
  %322 = phi float [ 1.000000e+00, %320 ], [ %316, %318 ], [ 0.000000e+00, %315 ]
  ret float %322
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc void @RVBlurBitmap2_float(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = fcmp ugt float %3, 0.000000e+00
  br i1 %6, label %7, label %460

7:                                                ; preds = %5
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %9 = shl i32 %1, 2
  %10 = mul i32 %9, %2
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %8(i64 noundef %12, ptr noundef nonnull @.str.4) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %460, label %15

15:                                               ; preds = %7
  %16 = add nsw i32 %4, 1
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, %3
  %19 = fptosi float %18 to i32
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %21 = sext i32 %19 to i64
  %22 = shl nsw i64 %21, 3
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.5) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %458, label %25

25:                                               ; preds = %15
  %26 = fmul float %3, 0x401921FB60000000
  %27 = fmul float %26, %3
  %28 = fdiv float -1.000000e+00, %27
  %29 = icmp sgt i32 %19, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = zext nneg i32 %19 to i64
  %32 = zext nneg i32 %19 to i64
  %33 = zext nneg i32 %19 to i64
  %34 = getelementptr float, ptr %23, i64 %32
  br label %35

35:                                               ; preds = %30, %35
  %36 = phi i64 [ 0, %30 ], [ %47, %35 ]
  %37 = mul nsw i64 %36, %36
  %38 = trunc i64 %37 to i32
  %39 = sitofp i32 %38 to float
  %40 = fmul float %28, %39
  %41 = fpext float %40 to double
  %42 = tail call double @exp(double noundef %41) #16
  %43 = fptrunc double %42 to float
  %44 = sub nsw i64 %31, %36
  %45 = getelementptr inbounds float, ptr %23, i64 %44
  store float %43, ptr %45, align 4, !tbaa !58
  %46 = getelementptr float, ptr %34, i64 %36
  store float %43, ptr %46, align 4, !tbaa !58
  %47 = add nuw nsw i64 %36, 1
  %48 = icmp eq i64 %47, %33
  br i1 %48, label %49, label %35, !llvm.loop !228

49:                                               ; preds = %35, %25
  %50 = phi float [ 0.000000e+00, %25 ], [ %43, %35 ]
  store float %50, ptr %23, align 4, !tbaa !58
  %51 = shl i32 %19, 1
  %52 = icmp sgt i32 %19, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = tail call i32 @llvm.smax.i32(i32 %51, i32 1)
  %55 = zext nneg i32 %54 to i64
  br label %62

56:                                               ; preds = %62, %49
  %57 = phi float [ 0.000000e+00, %49 ], [ %67, %62 ]
  %58 = icmp sgt i32 %19, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = tail call i32 @llvm.smax.i32(i32 %51, i32 1)
  %61 = zext nneg i32 %60 to i64
  br label %90

62:                                               ; preds = %53, %62
  %63 = phi i64 [ 0, %53 ], [ %68, %62 ]
  %64 = phi float [ 0.000000e+00, %53 ], [ %67, %62 ]
  %65 = getelementptr inbounds float, ptr %23, i64 %63
  %66 = load float, ptr %65, align 4, !tbaa !58
  %67 = fadd float %64, %66
  %68 = add nuw nsw i64 %63, 1
  %69 = icmp eq i64 %68, %55
  br i1 %69, label %56, label %62, !llvm.loop !229

70:                                               ; preds = %90, %56
  %71 = icmp sgt i32 %2, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %70
  %73 = icmp sgt i32 %19, 0
  %74 = sub nsw i32 %1, %19
  %75 = icmp sgt i32 %74, %19
  %76 = sub i32 0, %19
  %77 = sext i32 %76 to i64
  %78 = sext i32 %1 to i64
  %79 = sext i32 %19 to i64
  %80 = sext i32 %19 to i64
  %81 = sext i32 %19 to i64
  %82 = sext i32 %19 to i64
  %83 = sub i32 %1, %51
  %84 = zext i32 %1 to i64
  %85 = zext i32 %1 to i64
  %86 = zext nneg i32 %2 to i64
  %87 = zext nneg i32 %19 to i64
  %88 = zext i32 %51 to i64
  %89 = zext i32 %51 to i64
  br label %97

90:                                               ; preds = %59, %90
  %91 = phi i64 [ 0, %59 ], [ %95, %90 ]
  %92 = getelementptr inbounds float, ptr %23, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !58
  %94 = fdiv float %93, %57
  store float %94, ptr %92, align 4, !tbaa !58
  %95 = add nuw nsw i64 %91, 1
  %96 = icmp eq i64 %95, %61
  br i1 %96, label %70, label %90, !llvm.loop !230

97:                                               ; preds = %72, %283
  %98 = phi i64 [ 0, %72 ], [ %284, %283 ]
  br i1 %73, label %99, label %127

99:                                               ; preds = %97
  %100 = mul i64 %98, %84
  %101 = trunc i64 %100 to i32
  %102 = add i32 %101, %1
  %103 = trunc i64 %100 to i32
  %104 = add i32 %103, %1
  br label %130

105:                                              ; preds = %283, %70
  %106 = icmp sgt i32 %1, 0
  br i1 %106, label %107, label %456

107:                                              ; preds = %105
  %108 = icmp sgt i32 %19, 0
  %109 = sub nsw i32 %2, %19
  %110 = icmp sgt i32 %109, %19
  %111 = sub i32 0, %19
  %112 = sext i32 %111 to i64
  %113 = sext i32 %2 to i64
  %114 = zext nneg i32 %1 to i64
  %115 = zext nneg i32 %1 to i64
  %116 = sext i32 %19 to i64
  %117 = sext i32 %19 to i64
  %118 = zext nneg i32 %1 to i64
  %119 = zext nneg i32 %1 to i64
  %120 = sext i32 %19 to i64
  %121 = sext i32 %19 to i64
  %122 = sub i32 %2, %51
  %123 = zext nneg i32 %1 to i64
  %124 = zext nneg i32 %19 to i64
  %125 = zext i32 %51 to i64
  %126 = zext i32 %51 to i64
  br label %286

127:                                              ; preds = %199, %97
  br i1 %75, label %128, label %283

128:                                              ; preds = %127
  %129 = mul i64 %98, %85
  br label %229

130:                                              ; preds = %99, %199
  %131 = phi i64 [ 0, %99 ], [ %226, %199 ]
  %132 = phi i64 [ %77, %99 ], [ %227, %199 ]
  %133 = add i64 %131, %100
  %134 = trunc i64 %133 to i32
  %135 = shl nsw i32 %134, 2
  %136 = sub nsw i64 %131, %79
  %137 = add nuw nsw i64 %131, %80
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %199

139:                                              ; preds = %130, %189
  %140 = phi i64 [ %197, %189 ], [ %132, %130 ]
  %141 = phi i64 [ %196, %189 ], [ 0, %130 ]
  %142 = phi float [ %195, %189 ], [ 0.000000e+00, %130 ]
  %143 = phi float [ %194, %189 ], [ 0.000000e+00, %130 ]
  %144 = phi float [ %193, %189 ], [ 0.000000e+00, %130 ]
  %145 = phi float [ %192, %189 ], [ 0.000000e+00, %130 ]
  %146 = phi float [ %191, %189 ], [ 0.000000e+00, %130 ]
  %147 = phi float [ %190, %189 ], [ 0.000000e+00, %130 ]
  %148 = icmp sgt i64 %140, -1
  %149 = icmp slt i64 %140, %78
  %150 = and i1 %148, %149
  br i1 %150, label %151, label %189

151:                                              ; preds = %139
  %152 = add i64 %140, %100
  %153 = trunc i64 %152 to i32
  %154 = shl nsw i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, ptr %0, i64 %155
  %157 = load float, ptr %156, align 4, !tbaa !58
  %158 = getelementptr inbounds float, ptr %23, i64 %141
  %159 = load float, ptr %158, align 4, !tbaa !58
  %160 = tail call float @llvm.fmuladd.f32(float %157, float %159, float %145)
  %161 = or disjoint i32 %154, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, ptr %0, i64 %162
  %164 = load float, ptr %163, align 4, !tbaa !58
  %165 = tail call float @llvm.fmuladd.f32(float %164, float %159, float %146)
  %166 = or disjoint i32 %154, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, ptr %0, i64 %167
  %169 = load float, ptr %168, align 4, !tbaa !58
  %170 = tail call float @llvm.fmuladd.f32(float %169, float %159, float %147)
  %171 = trunc i64 %140 to i32
  %172 = xor i32 %171, -1
  %173 = add i32 %102, %172
  %174 = shl nsw i32 %173, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, ptr %0, i64 %175
  %177 = load float, ptr %176, align 4, !tbaa !58
  %178 = tail call float @llvm.fmuladd.f32(float %177, float %159, float %142)
  %179 = or disjoint i32 %174, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, ptr %0, i64 %180
  %182 = load float, ptr %181, align 4, !tbaa !58
  %183 = tail call float @llvm.fmuladd.f32(float %182, float %159, float %143)
  %184 = or disjoint i32 %174, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, ptr %0, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !58
  %188 = tail call float @llvm.fmuladd.f32(float %187, float %159, float %144)
  br label %189

189:                                              ; preds = %151, %139
  %190 = phi float [ %170, %151 ], [ %147, %139 ]
  %191 = phi float [ %165, %151 ], [ %146, %139 ]
  %192 = phi float [ %160, %151 ], [ %145, %139 ]
  %193 = phi float [ %188, %151 ], [ %144, %139 ]
  %194 = phi float [ %183, %151 ], [ %143, %139 ]
  %195 = phi float [ %178, %151 ], [ %142, %139 ]
  %196 = add nuw nsw i64 %141, 1
  %197 = add nsw i64 %140, 1
  %198 = icmp eq i64 %196, %88
  br i1 %198, label %199, label %139, !llvm.loop !231

199:                                              ; preds = %189, %130
  %200 = phi float [ 0.000000e+00, %130 ], [ %190, %189 ]
  %201 = phi float [ 0.000000e+00, %130 ], [ %191, %189 ]
  %202 = phi float [ 0.000000e+00, %130 ], [ %192, %189 ]
  %203 = phi float [ 0.000000e+00, %130 ], [ %193, %189 ]
  %204 = phi float [ 0.000000e+00, %130 ], [ %194, %189 ]
  %205 = phi float [ 0.000000e+00, %130 ], [ %195, %189 ]
  %206 = sext i32 %135 to i64
  %207 = getelementptr inbounds float, ptr %13, i64 %206
  store float %202, ptr %207, align 4, !tbaa !58
  %208 = or disjoint i32 %135, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, ptr %13, i64 %209
  store float %201, ptr %210, align 4, !tbaa !58
  %211 = or disjoint i32 %135, 2
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, ptr %13, i64 %212
  store float %200, ptr %213, align 4, !tbaa !58
  %214 = trunc i64 %131 to i32
  %215 = xor i32 %214, -1
  %216 = add i32 %104, %215
  %217 = shl nsw i32 %216, 2
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, ptr %13, i64 %218
  store float %205, ptr %219, align 4, !tbaa !58
  %220 = or disjoint i32 %217, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, ptr %13, i64 %221
  store float %204, ptr %222, align 4, !tbaa !58
  %223 = or disjoint i32 %217, 2
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, ptr %13, i64 %224
  store float %203, ptr %225, align 4, !tbaa !58
  %226 = add nuw nsw i64 %131, 1
  %227 = add nsw i64 %132, 1
  %228 = icmp eq i64 %226, %87
  br i1 %228, label %127, label %130, !llvm.loop !232

229:                                              ; preds = %128, %268
  %230 = phi i64 [ %79, %128 ], [ %280, %268 ]
  %231 = phi i32 [ 0, %128 ], [ %281, %268 ]
  %232 = add i64 %230, %129
  %233 = trunc i64 %232 to i32
  %234 = shl nsw i32 %233, 2
  %235 = sub nsw i64 %230, %81
  %236 = add nsw i64 %230, %82
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %238, label %268

238:                                              ; preds = %229
  %239 = zext i32 %231 to i64
  br label %240

240:                                              ; preds = %238, %240
  %241 = phi i64 [ %239, %238 ], [ %266, %240 ]
  %242 = phi i64 [ 0, %238 ], [ %265, %240 ]
  %243 = phi float [ 0.000000e+00, %238 ], [ %254, %240 ]
  %244 = phi float [ 0.000000e+00, %238 ], [ %259, %240 ]
  %245 = phi float [ 0.000000e+00, %238 ], [ %264, %240 ]
  %246 = add i64 %241, %129
  %247 = trunc i64 %246 to i32
  %248 = shl nsw i32 %247, 2
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, ptr %0, i64 %249
  %251 = load float, ptr %250, align 4, !tbaa !58
  %252 = getelementptr inbounds float, ptr %23, i64 %242
  %253 = load float, ptr %252, align 4, !tbaa !58
  %254 = tail call float @llvm.fmuladd.f32(float %251, float %253, float %243)
  %255 = or disjoint i32 %248, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, ptr %0, i64 %256
  %258 = load float, ptr %257, align 4, !tbaa !58
  %259 = tail call float @llvm.fmuladd.f32(float %258, float %253, float %244)
  %260 = or disjoint i32 %248, 2
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, ptr %0, i64 %261
  %263 = load float, ptr %262, align 4, !tbaa !58
  %264 = tail call float @llvm.fmuladd.f32(float %263, float %253, float %245)
  %265 = add nuw nsw i64 %242, 1
  %266 = add i64 %241, 1
  %267 = icmp eq i64 %265, %89
  br i1 %267, label %268, label %240, !llvm.loop !233

268:                                              ; preds = %240, %229
  %269 = phi float [ 0.000000e+00, %229 ], [ %264, %240 ]
  %270 = phi float [ 0.000000e+00, %229 ], [ %259, %240 ]
  %271 = phi float [ 0.000000e+00, %229 ], [ %254, %240 ]
  %272 = sext i32 %234 to i64
  %273 = getelementptr inbounds float, ptr %13, i64 %272
  store float %271, ptr %273, align 4, !tbaa !58
  %274 = or disjoint i32 %234, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, ptr %13, i64 %275
  store float %270, ptr %276, align 4, !tbaa !58
  %277 = or disjoint i32 %234, 2
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, ptr %13, i64 %278
  store float %269, ptr %279, align 4, !tbaa !58
  %280 = add nsw i64 %230, 1
  %281 = add i32 %231, 1
  %282 = icmp eq i32 %281, %83
  br i1 %282, label %283, label %229, !llvm.loop !234

283:                                              ; preds = %268, %127
  %284 = add nuw nsw i64 %98, 1
  %285 = icmp eq i64 %284, %86
  br i1 %285, label %105, label %97, !llvm.loop !235

286:                                              ; preds = %107, %453
  %287 = phi i64 [ 0, %107 ], [ %454, %453 ]
  br i1 %108, label %288, label %291

288:                                              ; preds = %286
  %289 = trunc i64 %287 to i32
  %290 = trunc i64 %287 to i32
  br label %292

291:                                              ; preds = %365, %286
  br i1 %110, label %397, label %453

292:                                              ; preds = %288, %365
  %293 = phi i64 [ 0, %288 ], [ %394, %365 ]
  %294 = phi i64 [ %112, %288 ], [ %395, %365 ]
  %295 = mul i64 %293, %115
  %296 = add i64 %295, %287
  %297 = trunc i64 %296 to i32
  %298 = shl nsw i32 %297, 2
  %299 = sub nsw i64 %293, %116
  %300 = add nuw nsw i64 %293, %117
  %301 = icmp slt i64 %299, %300
  br i1 %301, label %302, label %365

302:                                              ; preds = %292, %355
  %303 = phi i64 [ %363, %355 ], [ %294, %292 ]
  %304 = phi i64 [ %362, %355 ], [ 0, %292 ]
  %305 = phi float [ %361, %355 ], [ 0.000000e+00, %292 ]
  %306 = phi float [ %360, %355 ], [ 0.000000e+00, %292 ]
  %307 = phi float [ %359, %355 ], [ 0.000000e+00, %292 ]
  %308 = phi float [ %358, %355 ], [ 0.000000e+00, %292 ]
  %309 = phi float [ %357, %355 ], [ 0.000000e+00, %292 ]
  %310 = phi float [ %356, %355 ], [ 0.000000e+00, %292 ]
  %311 = icmp sgt i64 %303, -1
  %312 = icmp slt i64 %303, %113
  %313 = and i1 %311, %312
  br i1 %313, label %314, label %355

314:                                              ; preds = %302
  %315 = mul i64 %303, %114
  %316 = add i64 %315, %287
  %317 = trunc i64 %316 to i32
  %318 = shl nsw i32 %317, 2
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds float, ptr %13, i64 %319
  %321 = load float, ptr %320, align 4, !tbaa !58
  %322 = getelementptr inbounds float, ptr %23, i64 %304
  %323 = load float, ptr %322, align 4, !tbaa !58
  %324 = tail call float @llvm.fmuladd.f32(float %321, float %323, float %308)
  %325 = or disjoint i32 %318, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds float, ptr %13, i64 %326
  %328 = load float, ptr %327, align 4, !tbaa !58
  %329 = tail call float @llvm.fmuladd.f32(float %328, float %323, float %309)
  %330 = or disjoint i32 %318, 2
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, ptr %13, i64 %331
  %333 = load float, ptr %332, align 4, !tbaa !58
  %334 = tail call float @llvm.fmuladd.f32(float %333, float %323, float %310)
  %335 = trunc i64 %303 to i32
  %336 = xor i32 %335, -1
  %337 = add i32 %336, %2
  %338 = mul nsw i32 %337, %1
  %339 = add nsw i32 %338, %289
  %340 = shl nsw i32 %339, 2
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds float, ptr %13, i64 %341
  %343 = load float, ptr %342, align 4, !tbaa !58
  %344 = tail call float @llvm.fmuladd.f32(float %343, float %323, float %305)
  %345 = or disjoint i32 %340, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds float, ptr %13, i64 %346
  %348 = load float, ptr %347, align 4, !tbaa !58
  %349 = tail call float @llvm.fmuladd.f32(float %348, float %323, float %306)
  %350 = or disjoint i32 %340, 2
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds float, ptr %13, i64 %351
  %353 = load float, ptr %352, align 4, !tbaa !58
  %354 = tail call float @llvm.fmuladd.f32(float %353, float %323, float %307)
  br label %355

355:                                              ; preds = %314, %302
  %356 = phi float [ %334, %314 ], [ %310, %302 ]
  %357 = phi float [ %329, %314 ], [ %309, %302 ]
  %358 = phi float [ %324, %314 ], [ %308, %302 ]
  %359 = phi float [ %354, %314 ], [ %307, %302 ]
  %360 = phi float [ %349, %314 ], [ %306, %302 ]
  %361 = phi float [ %344, %314 ], [ %305, %302 ]
  %362 = add nuw nsw i64 %304, 1
  %363 = add nsw i64 %303, 1
  %364 = icmp eq i64 %362, %125
  br i1 %364, label %365, label %302, !llvm.loop !236

365:                                              ; preds = %355, %292
  %366 = phi float [ 0.000000e+00, %292 ], [ %356, %355 ]
  %367 = phi float [ 0.000000e+00, %292 ], [ %357, %355 ]
  %368 = phi float [ 0.000000e+00, %292 ], [ %358, %355 ]
  %369 = phi float [ 0.000000e+00, %292 ], [ %359, %355 ]
  %370 = phi float [ 0.000000e+00, %292 ], [ %360, %355 ]
  %371 = phi float [ 0.000000e+00, %292 ], [ %361, %355 ]
  %372 = zext nneg i32 %298 to i64
  %373 = getelementptr inbounds float, ptr %0, i64 %372
  store float %368, ptr %373, align 4, !tbaa !58
  %374 = or disjoint i32 %298, 1
  %375 = zext nneg i32 %374 to i64
  %376 = getelementptr inbounds float, ptr %0, i64 %375
  store float %367, ptr %376, align 4, !tbaa !58
  %377 = or disjoint i32 %298, 2
  %378 = zext nneg i32 %377 to i64
  %379 = getelementptr inbounds float, ptr %0, i64 %378
  store float %366, ptr %379, align 4, !tbaa !58
  %380 = trunc i64 %293 to i32
  %381 = xor i32 %380, -1
  %382 = add i32 %381, %2
  %383 = mul nsw i32 %382, %1
  %384 = add nsw i32 %383, %290
  %385 = shl nsw i32 %384, 2
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds float, ptr %0, i64 %386
  store float %371, ptr %387, align 4, !tbaa !58
  %388 = or disjoint i32 %385, 1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float, ptr %0, i64 %389
  store float %370, ptr %390, align 4, !tbaa !58
  %391 = or disjoint i32 %385, 2
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, ptr %0, i64 %392
  store float %369, ptr %393, align 4, !tbaa !58
  %394 = add nuw nsw i64 %293, 1
  %395 = add nsw i64 %294, 1
  %396 = icmp eq i64 %394, %124
  br i1 %396, label %291, label %292, !llvm.loop !237

397:                                              ; preds = %291, %438
  %398 = phi i64 [ %450, %438 ], [ %116, %291 ]
  %399 = phi i32 [ %451, %438 ], [ 0, %291 ]
  %400 = mul i64 %398, %119
  %401 = add i64 %400, %287
  %402 = trunc i64 %401 to i32
  %403 = shl nsw i32 %402, 2
  %404 = sub nsw i64 %398, %120
  %405 = add nsw i64 %398, %121
  %406 = icmp slt i64 %404, %405
  br i1 %406, label %407, label %438

407:                                              ; preds = %397
  %408 = zext i32 %399 to i64
  br label %409

409:                                              ; preds = %407, %409
  %410 = phi i64 [ %408, %407 ], [ %436, %409 ]
  %411 = phi i64 [ 0, %407 ], [ %435, %409 ]
  %412 = phi float [ 0.000000e+00, %407 ], [ %424, %409 ]
  %413 = phi float [ 0.000000e+00, %407 ], [ %429, %409 ]
  %414 = phi float [ 0.000000e+00, %407 ], [ %434, %409 ]
  %415 = mul i64 %410, %118
  %416 = add i64 %415, %287
  %417 = trunc i64 %416 to i32
  %418 = shl nsw i32 %417, 2
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds float, ptr %13, i64 %419
  %421 = load float, ptr %420, align 4, !tbaa !58
  %422 = getelementptr inbounds float, ptr %23, i64 %411
  %423 = load float, ptr %422, align 4, !tbaa !58
  %424 = tail call float @llvm.fmuladd.f32(float %421, float %423, float %412)
  %425 = or disjoint i32 %418, 1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds float, ptr %13, i64 %426
  %428 = load float, ptr %427, align 4, !tbaa !58
  %429 = tail call float @llvm.fmuladd.f32(float %428, float %423, float %413)
  %430 = or disjoint i32 %418, 2
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds float, ptr %13, i64 %431
  %433 = load float, ptr %432, align 4, !tbaa !58
  %434 = tail call float @llvm.fmuladd.f32(float %433, float %423, float %414)
  %435 = add nuw nsw i64 %411, 1
  %436 = add i64 %410, 1
  %437 = icmp eq i64 %435, %126
  br i1 %437, label %438, label %409, !llvm.loop !238

438:                                              ; preds = %409, %397
  %439 = phi float [ 0.000000e+00, %397 ], [ %434, %409 ]
  %440 = phi float [ 0.000000e+00, %397 ], [ %429, %409 ]
  %441 = phi float [ 0.000000e+00, %397 ], [ %424, %409 ]
  %442 = sext i32 %403 to i64
  %443 = getelementptr inbounds float, ptr %0, i64 %442
  store float %441, ptr %443, align 4, !tbaa !58
  %444 = or disjoint i32 %403, 1
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds float, ptr %0, i64 %445
  store float %440, ptr %446, align 4, !tbaa !58
  %447 = or disjoint i32 %403, 2
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds float, ptr %0, i64 %448
  store float %439, ptr %449, align 4, !tbaa !58
  %450 = add nsw i64 %398, 1
  %451 = add i32 %399, 1
  %452 = icmp eq i32 %451, %122
  br i1 %452, label %453, label %397, !llvm.loop !239

453:                                              ; preds = %438, %291
  %454 = add nuw nsw i64 %287, 1
  %455 = icmp eq i64 %454, %123
  br i1 %455, label %456, label %286, !llvm.loop !240

456:                                              ; preds = %453, %105
  %457 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %457(ptr noundef nonnull %23) #16
  br label %458

458:                                              ; preds = %15, %456
  %459 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %459(ptr noundef nonnull %13) #16
  br label %460

460:                                              ; preds = %458, %7, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #13

declare void @IMB_buffer_float_from_byte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_buffer_float_premultiply(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_buffer_float_unpremultiply(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_buffer_byte_from_float(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #13

declare void @nearest_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @bilinear_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @bicubic_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_sequence_seqbase(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_give_ibuf_seqbase(ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @do_adjustment_impl(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %21, %3
  %5 = phi ptr [ %1, %3 ], [ %22, %21 ]
  %6 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  %10 = getelementptr inbounds %struct.Editing, ptr %9, i64 0, i32 1
  %11 = tail call ptr @BKE_sequence_seqbase(ptr noundef nonnull %10, ptr noundef %5) #16
  %12 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !199
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = add nsw i32 %13, -1
  %17 = tail call ptr @BKE_sequencer_give_ibuf_seqbase(ptr noundef %0, float noundef %2, i32 noundef %16, ptr noundef %11) #16
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi ptr [ %17, %15 ], [ null, %4 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = tail call ptr @BKE_sequence_metastrip(ptr noundef nonnull %10, ptr noundef null, ptr noundef %5) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %4

24:                                               ; preds = %21, %18
  %25 = phi ptr [ %19, %18 ], [ null, %21 ]
  ret ptr %25
}

declare ptr @BKE_sequence_metastrip(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RE_filter_value(i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }

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
!34 = !{!35, !36, i64 304}
!35 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !41, i64 156, !41, i64 158, !39, i64 160, !39, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !40, i64 224, !40, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !42, i64 256, !36, i64 272, !36, i64 280, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !36, i64 304, !39, i64 312, !39, i64 316, !39, i64 320, !40, i64 324, !39, i64 328, !37, i64 332, !37, i64 333, !42, i64 336}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!44, !39, i64 12}
!44 = !{!"SpeedControlVars", !36, i64 0, !40, i64 8, !39, i64 12, !39, i64 16, !39, i64 20}
!45 = !{!35, !39, i64 100}
!46 = !{!47}
!47 = distinct !{!47, !48, !"BKE_sequence_get_effect: argument 0"}
!48 = distinct !{!48, !"BKE_sequence_get_effect"}
!49 = !{!35, !39, i64 96}
!50 = !{!35, !39, i64 104}
!51 = !{!44, !39, i64 16}
!52 = !{!44, !36, i64 0}
!53 = !{!35, !36, i64 232}
!54 = !{!36, !36, i64 0}
!55 = !{!35, !39, i64 140}
!56 = !{!35, !39, i64 108}
!57 = !{!35, !40, i64 228}
!58 = !{!40, !40, i64 0}
!59 = !{!44, !39, i64 20}
!60 = !{!35, !39, i64 136}
!61 = !{!44, !40, i64 8}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = distinct !{!65, !63, !64}
!66 = !{i64 0, i64 1, !67, i64 1, i64 1, !67, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54, i64 40, i64 8, !54, i64 48, i64 8, !54, i64 56, i64 8, !54, i64 64, i64 8, !54, i64 72, i64 8, !54, i64 80, i64 8, !54, i64 88, i64 8, !54}
!67 = !{!37, !37, i64 0}
!68 = !{i64 0, i64 1, !67, i64 7, i64 8, !54, i64 15, i64 8, !54, i64 23, i64 8, !54, i64 31, i64 8, !54, i64 39, i64 8, !54, i64 47, i64 8, !54, i64 55, i64 8, !54, i64 63, i64 8, !54, i64 71, i64 8, !54, i64 79, i64 8, !54, i64 87, i64 8, !54}
!69 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54, i64 40, i64 8, !54, i64 48, i64 8, !54, i64 56, i64 8, !54, i64 64, i64 8, !54, i64 72, i64 8, !54, i64 80, i64 8, !54}
!70 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54, i64 40, i64 8, !54, i64 48, i64 8, !54, i64 56, i64 8, !54, i64 64, i64 8, !54, i64 72, i64 8, !54}
!71 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54, i64 40, i64 8, !54, i64 48, i64 8, !54, i64 56, i64 8, !54, i64 64, i64 8, !54}
!72 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54, i64 40, i64 8, !54, i64 48, i64 8, !54, i64 56, i64 8, !54}
!73 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54, i64 40, i64 8, !54, i64 48, i64 8, !54}
!74 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54, i64 40, i64 8, !54}
!75 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54}
!76 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 8, !54}
!77 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54}
!78 = !{i64 0, i64 8, !54, i64 8, i64 8, !54}
!79 = !{i64 0, i64 8, !54}
!80 = !{!35, !39, i64 320}
!81 = !{!82, !36, i64 48}
!82 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !83, i64 2436, !84, i64 2456}
!83 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!84 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!85 = !{!86, !39, i64 24}
!86 = !{!"SeqRenderData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !40, i64 40, !37, i64 44, !37, i64 45}
!87 = !{!82, !36, i64 40}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = distinct !{!89, !63, !64}
!90 = distinct !{!90, !63, !64}
!91 = distinct !{!91, !63, !64}
!92 = distinct !{!92, !63, !64}
!93 = distinct !{!93, !63, !64}
!94 = distinct !{!94, !63, !64}
!95 = distinct !{!95, !63, !64}
!96 = distinct !{!96, !63, !64}
!97 = distinct !{!97, !63, !64}
!98 = distinct !{!98, !63, !64}
!99 = distinct !{!99, !63, !64}
!100 = distinct !{!100, !63, !64}
!101 = distinct !{!101, !63, !64}
!102 = distinct !{!102, !63, !64}
!103 = distinct !{!103, !63, !64}
!104 = distinct !{!104, !63, !64}
!105 = distinct !{!105, !63, !64}
!106 = distinct !{!106, !63, !64}
!107 = distinct !{!107, !63, !64}
!108 = distinct !{!108, !63, !64}
!109 = distinct !{!109, !63, !64}
!110 = distinct !{!110, !63, !64}
!111 = distinct !{!111, !63, !64}
!112 = distinct !{!112, !63, !64}
!113 = distinct !{!113, !63, !64}
!114 = distinct !{!114, !63, !64}
!115 = distinct !{!115, !63, !64}
!116 = !{!35, !36, i64 240}
!117 = distinct !{!117, !63, !64}
!118 = distinct !{!118, !63, !64}
!119 = distinct !{!119, !63, !64}
!120 = distinct !{!120, !63, !64}
!121 = distinct !{!121, !63, !64}
!122 = distinct !{!122, !63, !64}
!123 = distinct !{!123, !63, !64}
!124 = distinct !{!124, !63, !64}
!125 = !{!39, !39, i64 0}
!126 = distinct !{!126, !63, !64}
!127 = distinct !{!127, !63, !64}
!128 = !{!86, !39, i64 28}
!129 = !{!130, !40, i64 4}
!130 = !{!"WipeVars", !40, i64 0, !40, i64 4, !41, i64 8, !41, i64 10}
!131 = !{!132, !39, i64 4}
!132 = !{!"WipeZone", !40, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !40, i64 20}
!133 = !{!132, !40, i64 0}
!134 = !{!132, !39, i64 8}
!135 = !{!132, !39, i64 12}
!136 = !{!130, !40, i64 0}
!137 = !{!132, !39, i64 16}
!138 = !{!132, !40, i64 20}
!139 = distinct !{!139, !63, !64}
!140 = distinct !{!140, !63, !64}
!141 = distinct !{!141, !63, !64}
!142 = distinct !{!142, !63, !64}
!143 = !{!144, !40, i64 0}
!144 = !{!"GlowVars", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !39, i64 20}
!145 = !{!144, !40, i64 4}
!146 = !{!144, !40, i64 8}
!147 = !{!144, !40, i64 12}
!148 = !{!144, !39, i64 16}
!149 = !{!144, !39, i64 20}
!150 = !{!86, !36, i64 16}
!151 = !{!152, !39, i64 764}
!152 = !{!"Scene", !153, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !154, i64 280, !162, i64 4264, !42, i64 4296, !42, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !39, i64 4380, !42, i64 4384, !163, i64 4400, !164, i64 4416, !167, i64 4600, !36, i64 4608, !168, i64 4616, !36, i64 4640, !169, i64 4648, !169, i64 4656, !156, i64 4664, !157, i64 4824, !170, i64 4888, !36, i64 4952}
!153 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!154 = !{!"RenderData", !155, i64 0, !36, i64 248, !36, i64 256, !158, i64 264, !159, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !41, i64 432, !41, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !39, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !39, i64 484, !39, i64 488, !41, i64 492, !41, i64 494, !39, i64 496, !39, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !160, i64 544, !160, i64 560, !83, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !39, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !40, i64 660, !40, i64 664, !41, i64 668, !41, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !39, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !41, i64 2524, !41, i64 2526, !40, i64 2528, !40, i64 2532, !41, i64 2536, !41, i64 2538, !40, i64 2540, !41, i64 2544, !41, i64 2546, !39, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !40, i64 2560, !40, i64 2564, !36, i64 2568, !39, i64 2576, !40, i64 2580, !37, i64 2584, !161, i64 2616, !39, i64 3976, !39, i64 3980}
!155 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !156, i64 24, !157, i64 184}
!156 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!157 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!158 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!159 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!160 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!161 = !{!"BakeData", !155, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!162 = !{!"AudioData", !39, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !41, i64 20, !41, i64 22, !40, i64 24, !40, i64 28}
!163 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!164 = !{!"GameData", !163, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !165, i64 40, !41, i64 64, !41, i64 66, !40, i64 68, !166, i64 72, !40, i64 128, !40, i64 132, !39, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!165 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !40, i64 8, !40, i64 12, !36, i64 16}
!166 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !39, i64 40, !40, i64 44, !40, i64 48, !41, i64 52, !41, i64 54}
!167 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!168 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!169 = !{!"long", !37, i64 0}
!170 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!171 = distinct !{!171, !63, !64}
!172 = distinct !{!172, !63, !64}
!173 = distinct !{!173, !63, !64}
!174 = distinct !{!174, !63, !64}
!175 = !{!176, !40, i64 0}
!176 = !{!"TransformVars", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!177 = !{!176, !40, i64 4}
!178 = !{!176, !40, i64 8}
!179 = !{!176, !40, i64 12}
!180 = !{!176, !40, i64 16}
!181 = !{!176, !39, i64 24}
!182 = !{!176, !39, i64 20}
!183 = !{!176, !39, i64 28}
!184 = !{!152, !41, i64 758}
!185 = distinct !{!185, !63, !64}
!186 = distinct !{!186, !63, !64}
!187 = !{!188}
!188 = distinct !{!188, !189, !"BKE_sequence_get_effect: argument 0"}
!189 = distinct !{!189, !"BKE_sequence_get_effect"}
!190 = !{!82, !39, i64 20}
!191 = !{!82, !39, i64 16}
!192 = distinct !{!192, !63, !64}
!193 = distinct !{!193, !63, !64}
!194 = distinct !{!194, !63, !64}
!195 = distinct !{!195, !63, !64}
!196 = distinct !{!196, !63, !64}
!197 = distinct !{!197, !63, !64}
!198 = !{!35, !39, i64 160}
!199 = !{!35, !39, i64 128}
!200 = !{!152, !36, i64 256}
!201 = !{!202, !40, i64 0}
!202 = !{!"GaussianBlurVars", !40, i64 0, !40, i64 4}
!203 = !{!202, !40, i64 4}
!204 = distinct !{!204, !63, !64}
!205 = distinct !{!205, !63, !64}
!206 = distinct !{!206, !63, !64}
!207 = distinct !{!207, !63, !64}
!208 = distinct !{!208, !63, !64}
!209 = distinct !{!209, !63, !64}
!210 = distinct !{!210, !63, !64}
!211 = distinct !{!211, !63, !64}
!212 = distinct !{!212, !63, !64}
!213 = distinct !{!213, !63, !64}
!214 = distinct !{!214, !63, !64}
!215 = distinct !{!215, !63, !64}
!216 = distinct !{!216, !63, !64}
!217 = distinct !{!217, !63, !64}
!218 = distinct !{!218, !63, !64}
!219 = distinct !{!219, !63, !64}
!220 = distinct !{!220, !63, !64}
!221 = distinct !{!221, !63, !64}
!222 = distinct !{!222, !63, !64}
!223 = distinct !{!223, !63, !64}
!224 = distinct !{!224, !63, !64}
!225 = distinct !{!225, !63, !64}
!226 = !{!130, !41, i64 8}
!227 = !{!130, !41, i64 10}
!228 = distinct !{!228, !63, !64}
!229 = distinct !{!229, !63, !64}
!230 = distinct !{!230, !63, !64}
!231 = distinct !{!231, !63, !64}
!232 = distinct !{!232, !63, !64}
!233 = distinct !{!233, !63, !64}
!234 = distinct !{!234, !63, !64}
!235 = distinct !{!235, !63, !64}
!236 = distinct !{!236, !63, !64}
!237 = distinct !{!237, !63, !64}
!238 = distinct !{!238, !63, !64}
!239 = distinct !{!239, !63, !64}
!240 = distinct !{!240, !63, !64}
