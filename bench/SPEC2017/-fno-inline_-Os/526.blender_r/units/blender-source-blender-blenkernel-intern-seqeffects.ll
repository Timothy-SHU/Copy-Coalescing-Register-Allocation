; ModuleID = 'blender/source/blender/blenkernel/intern/seqeffects.c'
source_filename = "blender/source/blender/blenkernel/intern/seqeffects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.SeqEffectHandle = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.SpeedControlVars = type { ptr, float, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.SeqRenderData = type { ptr, ptr, ptr, i32, i32, i32, i32, float, i8, i8 }
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
%struct.WipeZone = type { float, i32, i32, i32, i32, float }
%struct.WipeVars = type { float, float, i16, i16 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_effect_speed_rebuild_map(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.SeqEffectHandle, align 8
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #21
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %4, ptr noundef %1) #22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #21
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load ptr, ptr %6, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %164

19:                                               ; preds = %16, %10, %3
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 33
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %164, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !45
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %164, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @id_data_find_fcurve(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_Sequence, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef null) #23
  %29 = load ptr, ptr %6, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !46
  %34 = load i32, ptr %24, align 8, !tbaa !45
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %37(ptr noundef nonnull %29) #23
  br label %38

38:                                               ; preds = %27, %36
  %39 = load i32, ptr %24, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 3
  store i32 %39, ptr %40, align 8, !tbaa !46
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %42 = sext i32 %39 to i64
  %43 = shl nsw i64 %42, 2
  %44 = tail call ptr %41(i64 noundef %43, ptr noundef nonnull @.str.1) #23
  store ptr %44, ptr %6, align 8, !tbaa !47
  br label %45

45:                                               ; preds = %38, %31
  %46 = phi ptr [ %44, %38 ], [ %29, %31 ]
  %47 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !50
  %49 = and i32 %48, 4194304
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr %20, align 8, !tbaa !48
  %53 = getelementptr inbounds %struct.Sequence, ptr %52, i64 0, i32 16
  %54 = load i32, ptr %53, align 4, !tbaa !51
  %55 = getelementptr inbounds %struct.Sequence, ptr %52, i64 0, i32 8
  %56 = load i32, ptr %55, align 4, !tbaa !52
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.Sequence, ptr %52, i64 0, i32 7
  %60 = load i32, ptr %59, align 8, !tbaa !45
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = sitofp i32 %60 to float
  %64 = sub nsw i32 %54, %56
  %65 = sitofp i32 %64 to float
  %66 = fdiv float %63, %65
  br label %77

67:                                               ; preds = %45
  %68 = icmp eq ptr %28, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 32
  %71 = load float, ptr %70, align 4, !tbaa !53
  br label %72

72:                                               ; preds = %67, %69, %51, %58
  %73 = phi float [ 1.000000e+00, %58 ], [ 1.000000e+00, %51 ], [ 1.000000e+00, %67 ], [ %71, %69 ]
  %74 = phi ptr [ %28, %58 ], [ %28, %51 ], [ %28, %67 ], [ null, %69 ]
  %75 = and i32 %8, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %121, label %77

77:                                               ; preds = %62, %72
  %78 = phi ptr [ null, %62 ], [ %74, %72 ]
  %79 = phi float [ %66, %62 ], [ %73, %72 ]
  store float 0.000000e+00, ptr %46, align 4, !tbaa !54
  %80 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 4
  store i32 0, ptr %80, align 4, !tbaa !55
  %81 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !46
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %164

84:                                               ; preds = %77
  %85 = icmp eq ptr %78, null
  %86 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %87 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 1
  br label %88

88:                                               ; preds = %84, %116
  %89 = phi i64 [ 1, %84 ], [ %117, %116 ]
  %90 = phi float [ 0.000000e+00, %84 ], [ %101, %116 ]
  br i1 %85, label %97, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %86, align 8, !tbaa !56
  %93 = trunc i64 %89 to i32
  %94 = add nsw i32 %92, %93
  %95 = sitofp i32 %94 to float
  %96 = tail call float @evaluate_fcurve(ptr noundef nonnull %78, float noundef %95) #23
  br label %97

97:                                               ; preds = %88, %91
  %98 = phi float [ %96, %91 ], [ %79, %88 ]
  %99 = load float, ptr %87, align 8, !tbaa !57
  %100 = fmul float %98, %99
  %101 = fadd float %90, %100
  %102 = load ptr, ptr %20, align 8, !tbaa !48
  %103 = getelementptr inbounds %struct.Sequence, ptr %102, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !45
  %105 = sitofp i32 %104 to float
  %106 = fcmp ult float %101, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %97
  %108 = add nsw i32 %104, -1
  %109 = sitofp i32 %108 to float
  %110 = load ptr, ptr %6, align 8, !tbaa !47
  %111 = getelementptr inbounds float, ptr %110, i64 %89
  store float %109, ptr %111, align 4, !tbaa !54
  br label %116

112:                                              ; preds = %97
  %113 = load ptr, ptr %6, align 8, !tbaa !47
  %114 = getelementptr inbounds float, ptr %113, i64 %89
  store float %101, ptr %114, align 4, !tbaa !54
  %115 = trunc i64 %89 to i32
  store i32 %115, ptr %80, align 4, !tbaa !55
  br label %116

116:                                              ; preds = %107, %112
  %117 = add nuw nsw i64 %89, 1
  %118 = load i32, ptr %81, align 8, !tbaa !46
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %117, %119
  br i1 %120, label %88, label %164, !llvm.loop !58

121:                                              ; preds = %72
  %122 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 4
  store i32 0, ptr %122, align 4, !tbaa !55
  %123 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 3
  %124 = load i32, ptr %123, align 8, !tbaa !46
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %164

126:                                              ; preds = %121
  %127 = icmp eq ptr %74, null
  %128 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %129 = and i32 %8, 4
  %130 = icmp eq i32 %129, 0
  %131 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 1
  br label %132

132:                                              ; preds = %126, %156
  %133 = phi i64 [ 0, %126 ], [ %160, %156 ]
  br i1 %127, label %140, label %134

134:                                              ; preds = %132
  %135 = load i32, ptr %128, align 8, !tbaa !56
  %136 = trunc i64 %133 to i32
  %137 = add nsw i32 %135, %136
  %138 = sitofp i32 %137 to float
  %139 = tail call float @evaluate_fcurve(ptr noundef nonnull %74, float noundef %138) #23
  br label %140

140:                                              ; preds = %132, %134
  %141 = phi float [ %139, %134 ], [ %73, %132 ]
  %142 = load ptr, ptr %20, align 8, !tbaa !48
  %143 = getelementptr inbounds %struct.Sequence, ptr %142, i64 0, i32 7
  %144 = load i32, ptr %143, align 8, !tbaa !45
  %145 = sitofp i32 %144 to float
  %146 = select i1 %130, float 1.000000e+00, float %145
  %147 = fmul float %141, %146
  %148 = load float, ptr %131, align 8, !tbaa !57
  %149 = fmul float %147, %148
  %150 = fcmp ult float %149, %145
  br i1 %150, label %154, label %151

151:                                              ; preds = %140
  %152 = add nsw i32 %144, -1
  %153 = sitofp i32 %152 to float
  br label %156

154:                                              ; preds = %140
  %155 = trunc i64 %133 to i32
  store i32 %155, ptr %122, align 4, !tbaa !55
  br label %156

156:                                              ; preds = %154, %151
  %157 = phi float [ %153, %151 ], [ %149, %154 ]
  %158 = load ptr, ptr %6, align 8, !tbaa !47
  %159 = getelementptr inbounds float, ptr %158, i64 %133
  store float %157, ptr %159, align 4, !tbaa !54
  %160 = add nuw nsw i64 %133, 1
  %161 = load i32, ptr %123, align 8, !tbaa !46
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %160, %162
  br i1 %163, label %132, label %164, !llvm.loop !60

164:                                              ; preds = %116, %156, %77, %121, %19, %23, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_get_effect(ptr dead_on_unwind noalias nocapture writable sret(%struct.SeqEffectHandle) align 8 %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  tail call fastcc void @get_sequence_effect_impl(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %0, i32 noundef %4) #22
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  tail call void %14(ptr noundef nonnull %1) #23
  %15 = load i32, ptr %8, align 8, !tbaa !50
  %16 = and i32 %15, -513
  store i32 %16, ptr %8, align 8, !tbaa !50
  br label %17

17:                                               ; preds = %7, %12, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @id_data_find_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @get_sequence_effect_impl(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.SeqEffectHandle) align 8 %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !64 {
  store i8 0, ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 1, !tbaa !66
  %4 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 2
  store ptr @init_noop, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 3
  store ptr @num_inputs_default, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 4
  store ptr @load_noop, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 6
  store ptr @free_noop, ptr %7, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 7
  store ptr @early_out_noop, ptr %8, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 9
  store ptr @get_default_fac_noop, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 8
  store ptr @store_icu_yrange_noop, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 10
  store ptr null, ptr %11, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 11
  store ptr @init_execution, ptr %12, align 8, !tbaa !74
  %13 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 12
  store ptr null, ptr %13, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 5
  store ptr null, ptr %14, align 8, !tbaa !76
  switch i32 %1, label %31 [
    i32 8, label %15
    i32 13, label %16
    i32 9, label %17
    i32 10, label %18
    i32 14, label %19
    i32 11, label %20
    i32 15, label %21
    i32 12, label %22
    i32 25, label %23
    i32 26, label %24
    i32 27, label %25
    i32 29, label %26
    i32 28, label %27
    i32 30, label %28
    i32 31, label %29
    i32 40, label %30
  ]

15:                                               ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !65
  store ptr @do_cross_effect, ptr %13, align 8, !tbaa !75
  store ptr @early_out_fade, ptr %8, align 8, !tbaa !70
  store ptr @get_default_fac_fade, ptr %9, align 8, !tbaa !71
  br label %31

16:                                               ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !65
  store ptr @init_gammacross, ptr %4, align 8, !tbaa !67
  store ptr @load_gammacross, ptr %6, align 8, !tbaa !62
  store ptr @free_gammacross, ptr %7, align 8, !tbaa !69
  store ptr @early_out_fade, ptr %8, align 8, !tbaa !70
  store ptr @get_default_fac_fade, ptr %9, align 8, !tbaa !71
  store ptr @gammacross_init_execution, ptr %12, align 8, !tbaa !74
  store ptr @do_gammacross_effect, ptr %13, align 8, !tbaa !75
  br label %31

17:                                               ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !65
  store ptr @do_add_effect, ptr %13, align 8, !tbaa !75
  store ptr @early_out_mul_input2, ptr %8, align 8, !tbaa !70
  br label %31

18:                                               ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !65
  store ptr @do_sub_effect, ptr %13, align 8, !tbaa !75
  store ptr @early_out_mul_input2, ptr %8, align 8, !tbaa !70
  br label %31

19:                                               ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !65
  store ptr @do_mul_effect, ptr %13, align 8, !tbaa !75
  store ptr @early_out_mul_input2, ptr %8, align 8, !tbaa !70
  br label %31

20:                                               ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !65
  store ptr @init_alpha_over_or_under, ptr %4, align 8, !tbaa !67
  store ptr @do_alphaover_effect, ptr %13, align 8, !tbaa !75
  br label %31

21:                                               ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !65
  store ptr @do_overdrop_effect, ptr %13, align 8, !tbaa !75
  br label %31

22:                                               ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !65
  store ptr @init_alpha_over_or_under, ptr %4, align 8, !tbaa !67
  store ptr @do_alphaunder_effect, ptr %13, align 8, !tbaa !75
  br label %31

23:                                               ; preds = %2
  store ptr @init_wipe_effect, ptr %4, align 8, !tbaa !67
  store ptr @num_inputs_wipe, ptr %5, align 8, !tbaa !68
  store ptr @free_wipe_effect, ptr %7, align 8, !tbaa !69
  store ptr @copy_wipe_effect, ptr %14, align 8, !tbaa !76
  store ptr @early_out_fade, ptr %8, align 8, !tbaa !70
  store ptr @get_default_fac_fade, ptr %9, align 8, !tbaa !71
  store ptr @do_wipe_effect, ptr %11, align 8, !tbaa !73
  br label %31

24:                                               ; preds = %2
  store ptr @init_glow_effect, ptr %4, align 8, !tbaa !67
  store ptr @num_inputs_glow, ptr %5, align 8, !tbaa !68
  store ptr @free_glow_effect, ptr %7, align 8, !tbaa !69
  store ptr @copy_glow_effect, ptr %14, align 8, !tbaa !76
  store ptr @do_glow_effect, ptr %11, align 8, !tbaa !73
  br label %31

25:                                               ; preds = %2
  store ptr @init_transform_effect, ptr %4, align 8, !tbaa !67
  store ptr @num_inputs_transform, ptr %5, align 8, !tbaa !68
  store ptr @free_transform_effect, ptr %7, align 8, !tbaa !69
  store ptr @copy_transform_effect, ptr %14, align 8, !tbaa !76
  store ptr @do_transform_effect, ptr %11, align 8, !tbaa !73
  br label %31

26:                                               ; preds = %2
  store ptr @init_speed_effect, ptr %4, align 8, !tbaa !67
  store ptr @num_inputs_speed, ptr %5, align 8, !tbaa !68
  store ptr @load_speed_effect, ptr %6, align 8, !tbaa !62
  store ptr @free_speed_effect, ptr %7, align 8, !tbaa !69
  store ptr @copy_speed_effect, ptr %14, align 8, !tbaa !76
  store ptr @do_speed_effect, ptr %11, align 8, !tbaa !73
  store ptr @early_out_speed, ptr %8, align 8, !tbaa !70
  store ptr @store_icu_yrange_speed, ptr %10, align 8, !tbaa !72
  br label %31

27:                                               ; preds = %2
  store ptr @init_solid_color, ptr %4, align 8, !tbaa !67
  store ptr @num_inputs_color, ptr %5, align 8, !tbaa !68
  store ptr @early_out_color, ptr %8, align 8, !tbaa !70
  store ptr @free_solid_color, ptr %7, align 8, !tbaa !69
  store ptr @copy_solid_color, ptr %14, align 8, !tbaa !76
  store ptr @do_solid_color, ptr %11, align 8, !tbaa !73
  br label %31

28:                                               ; preds = %2
  store ptr @num_inputs_multicam, ptr %5, align 8, !tbaa !68
  store ptr @early_out_multicam, ptr %8, align 8, !tbaa !70
  store ptr @do_multicam, ptr %11, align 8, !tbaa !73
  br label %31

29:                                               ; preds = %2
  store i8 1, ptr %3, align 1, !tbaa !66
  store ptr @num_inputs_adjustment, ptr %5, align 8, !tbaa !68
  store ptr @early_out_adjustment, ptr %8, align 8, !tbaa !70
  store ptr @do_adjustment, ptr %11, align 8, !tbaa !73
  br label %31

30:                                               ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !65
  store ptr @init_gaussian_blur_effect, ptr %4, align 8, !tbaa !67
  store ptr @num_inputs_gaussian_blur, ptr %5, align 8, !tbaa !68
  store ptr @free_gaussian_blur_effect, ptr %7, align 8, !tbaa !69
  store ptr @copy_gaussian_blur_effect, ptr %14, align 8, !tbaa !76
  store ptr @early_out_gaussian_blur, ptr %8, align 8, !tbaa !70
  store ptr @do_gaussian_blur_effect, ptr %13, align 8, !tbaa !75
  br label %31

31:                                               ; preds = %2, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_sequence_get_blend(ptr dead_on_unwind noalias nocapture writable sret(%struct.SeqEffectHandle) align 8 %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  %3 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 46
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  tail call fastcc void @get_sequence_effect_impl(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %0, i32 noundef %4) #22
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.SeqEffectHandle, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  tail call void %13(ptr noundef nonnull %1) #23
  %14 = load i32, ptr %7, align 8, !tbaa !50
  %15 = and i32 %14, -513
  store i32 %15, ptr %7, align 8, !tbaa !50
  br label %16

16:                                               ; preds = %6, %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_sequence_effect_get_num_inputs(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.SeqEffectHandle, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #21
  call fastcc void @get_sequence_effect_impl(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %2, i32 noundef %0) #22
  %3 = getelementptr inbounds %struct.SeqEffectHandle, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call i32 %4() #23
  %6 = getelementptr inbounds %struct.SeqEffectHandle, ptr %2, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.SeqEffectHandle, ptr %2, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp ne ptr %11, null
  %13 = getelementptr inbounds %struct.SeqEffectHandle, ptr %2, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %12, i1 %15, i1 false
  %17 = select i1 %16, i32 %5, i32 0
  br label %18

18:                                               ; preds = %9, %1
  %19 = phi i32 [ %5, %1 ], [ %17, %9 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #21
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @BKE_sequence_effect_get_supports_mask(i32 noundef %0) local_unnamed_addr #6 {
  %2 = alloca %struct.SeqEffectHandle, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #21
  call fastcc void @get_sequence_effect_impl(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %2, i32 noundef %0) #22
  %3 = getelementptr inbounds %struct.SeqEffectHandle, ptr %2, i64 0, i32 1
  %4 = load i8, ptr %3, align 1, !tbaa !66
  %5 = zext i8 %4 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #21
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @init_noop(ptr nocapture readnone %0) #6 !PGOFuncName !78 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_default() #6 !PGOFuncName !79 {
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @load_noop(ptr nocapture readnone %0) #6 !PGOFuncName !80 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @free_noop(ptr nocapture readnone %0) #6 !PGOFuncName !81 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @early_out_noop(ptr nocapture readnone %0, float %1, float %2) #6 !PGOFuncName !82 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @get_default_fac_noop(ptr nocapture readnone %0, float %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #4 !PGOFuncName !83 {
  store float 1.000000e+00, ptr %3, align 4, !tbaa !54
  store float 1.000000e+00, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @store_icu_yrange_noop(ptr nocapture readnone %0, i16 signext %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #6 !PGOFuncName !84 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @init_execution(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !85 {
  %5 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_cross_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 !PGOFuncName !86 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  br i1 %20, label %27, label %22

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store ptr null, ptr %12, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store ptr null, ptr %13, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !49
  call fastcc void @slice_get_float_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %23 = load i32, ptr %21, align 8, !tbaa !91
  %24 = load ptr, ptr %12, align 8, !tbaa !49
  %25 = load ptr, ptr %13, align 8, !tbaa !49
  %26 = load ptr, ptr %14, align 8, !tbaa !49
  tail call fastcc void @do_cross_effect_float(float noundef %3, float noundef %4, i32 noundef %23, i32 noundef %9, ptr noundef %24, ptr noundef %25, ptr noundef %26) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %32

27:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store ptr null, ptr %15, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  store ptr null, ptr %16, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  store ptr null, ptr %17, align 8, !tbaa !49
  call fastcc void @slice_get_byte_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #22
  %28 = load i32, ptr %21, align 8, !tbaa !91
  %29 = load ptr, ptr %15, align 8, !tbaa !49
  %30 = load ptr, ptr %16, align 8, !tbaa !49
  %31 = load ptr, ptr %17, align 8, !tbaa !49
  tail call fastcc void @do_cross_effect_byte(float noundef %3, float noundef %4, i32 noundef %28, i32 noundef %9, ptr noundef %29, ptr noundef %30, ptr noundef %31) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %32

32:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @early_out_fade(ptr nocapture readnone %0, float noundef %1, float noundef %2) #6 !PGOFuncName !93 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @get_default_fac_fade(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #8 !PGOFuncName !94 {
  %5 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = sitofp i32 %6 to float
  %8 = fsub float %1, %7
  store float %8, ptr %2, align 4, !tbaa !54
  %9 = fadd float %8, 5.000000e-01
  store float %9, ptr %3, align 4, !tbaa !54
  %10 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !45
  %12 = sitofp i32 %11 to float
  %13 = load float, ptr %2, align 4, !tbaa !54
  %14 = fdiv float %13, %12
  store float %14, ptr %2, align 4, !tbaa !54
  %15 = load float, ptr %3, align 4, !tbaa !54
  %16 = fdiv float %15, %12
  store float %16, ptr %3, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @init_gammacross(ptr nocapture readnone %0) #6 !PGOFuncName !95 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @load_gammacross(ptr nocapture readnone %0) #6 !PGOFuncName !96 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @free_gammacross(ptr nocapture readnone %0) #6 !PGOFuncName !97 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @gammacross_init_execution(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !98 {
  %5 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  tail call fastcc void @build_gammatabs() #22
  ret ptr %5
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal void @do_gammacross_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #9 !PGOFuncName !99 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  br i1 %20, label %27, label %22

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store ptr null, ptr %12, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store ptr null, ptr %13, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !49
  call fastcc void @slice_get_float_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %23 = load i32, ptr %21, align 8, !tbaa !91
  %24 = load ptr, ptr %12, align 8, !tbaa !49
  %25 = load ptr, ptr %13, align 8, !tbaa !49
  %26 = load ptr, ptr %14, align 8, !tbaa !49
  tail call fastcc void @do_gammacross_effect_float(float noundef %3, i32 noundef %23, i32 noundef %9, ptr noundef %24, ptr noundef %25, ptr noundef %26) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %32

27:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store ptr null, ptr %15, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  store ptr null, ptr %16, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  store ptr null, ptr %17, align 8, !tbaa !49
  call fastcc void @slice_get_byte_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #22
  %28 = load i32, ptr %21, align 8, !tbaa !91
  %29 = load ptr, ptr %15, align 8, !tbaa !49
  %30 = load ptr, ptr %16, align 8, !tbaa !49
  %31 = load ptr, ptr %17, align 8, !tbaa !49
  tail call fastcc void @do_gammacross_effect_byte(float noundef %3, i32 noundef %28, i32 noundef %9, ptr noundef %29, ptr noundef %30, ptr noundef %31) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %32

32:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_add_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 !PGOFuncName !100 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  br i1 %20, label %27, label %22

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store ptr null, ptr %12, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store ptr null, ptr %13, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !49
  call fastcc void @slice_get_float_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %23 = load i32, ptr %21, align 8, !tbaa !91
  %24 = load ptr, ptr %12, align 8, !tbaa !49
  %25 = load ptr, ptr %13, align 8, !tbaa !49
  %26 = load ptr, ptr %14, align 8, !tbaa !49
  tail call fastcc void @do_add_effect_float(float noundef %3, float noundef %4, i32 noundef %23, i32 noundef %9, ptr noundef %24, ptr noundef %25, ptr noundef %26) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %32

27:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store ptr null, ptr %15, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  store ptr null, ptr %16, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  store ptr null, ptr %17, align 8, !tbaa !49
  call fastcc void @slice_get_byte_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #22
  %28 = load i32, ptr %21, align 8, !tbaa !91
  %29 = load ptr, ptr %15, align 8, !tbaa !49
  %30 = load ptr, ptr %16, align 8, !tbaa !49
  %31 = load ptr, ptr %17, align 8, !tbaa !49
  tail call fastcc void @do_add_effect_byte(float noundef %3, float noundef %4, i32 noundef %28, i32 noundef %9, ptr noundef %29, ptr noundef %30, ptr noundef %31) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %32

32:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @early_out_mul_input2(ptr nocapture readnone %0, float noundef %1, float noundef %2) #6 !PGOFuncName !101 {
  %4 = fcmp oeq float %1, 0.000000e+00
  %5 = fcmp oeq float %2, 0.000000e+00
  %6 = and i1 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_sub_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 !PGOFuncName !102 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  br i1 %20, label %27, label %22

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store ptr null, ptr %12, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store ptr null, ptr %13, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !49
  call fastcc void @slice_get_float_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %23 = load i32, ptr %21, align 8, !tbaa !91
  %24 = load ptr, ptr %12, align 8, !tbaa !49
  %25 = load ptr, ptr %13, align 8, !tbaa !49
  %26 = load ptr, ptr %14, align 8, !tbaa !49
  tail call fastcc void @do_sub_effect_float(float noundef %4, i32 noundef %23, i32 noundef %9, ptr noundef %24, ptr noundef %25, ptr noundef %26) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %32

27:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store ptr null, ptr %15, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  store ptr null, ptr %16, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  store ptr null, ptr %17, align 8, !tbaa !49
  call fastcc void @slice_get_byte_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #22
  %28 = load i32, ptr %21, align 8, !tbaa !91
  %29 = load ptr, ptr %15, align 8, !tbaa !49
  %30 = load ptr, ptr %16, align 8, !tbaa !49
  %31 = load ptr, ptr %17, align 8, !tbaa !49
  tail call fastcc void @do_sub_effect_byte(float noundef %3, float noundef %4, i32 noundef %28, i32 noundef %9, ptr noundef %29, ptr noundef %30, ptr noundef %31) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %32

32:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_mul_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 !PGOFuncName !103 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  br i1 %20, label %27, label %22

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store ptr null, ptr %12, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store ptr null, ptr %13, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !49
  call fastcc void @slice_get_float_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %23 = load i32, ptr %21, align 8, !tbaa !91
  %24 = load ptr, ptr %12, align 8, !tbaa !49
  %25 = load ptr, ptr %13, align 8, !tbaa !49
  %26 = load ptr, ptr %14, align 8, !tbaa !49
  tail call fastcc void @do_mul_effect_float(float noundef %3, float noundef %4, i32 noundef %23, i32 noundef %9, ptr noundef %24, ptr noundef %25, ptr noundef %26) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %32

27:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store ptr null, ptr %15, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  store ptr null, ptr %16, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  store ptr null, ptr %17, align 8, !tbaa !49
  call fastcc void @slice_get_byte_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #22
  %28 = load i32, ptr %21, align 8, !tbaa !91
  %29 = load ptr, ptr %15, align 8, !tbaa !49
  %30 = load ptr, ptr %16, align 8, !tbaa !49
  %31 = load ptr, ptr %17, align 8, !tbaa !49
  tail call fastcc void @do_mul_effect_byte(float noundef %3, float noundef %4, i32 noundef %28, i32 noundef %9, ptr noundef %29, ptr noundef %30, ptr noundef %31) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %32

32:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @init_alpha_over_or_under(ptr nocapture noundef %0) #8 !PGOFuncName !104 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 33
  %3 = load <2 x ptr>, ptr %2, align 8, !tbaa !49
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %4, ptr %2, align 8, !tbaa !49
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_alphaover_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 !PGOFuncName !105 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  br i1 %20, label %27, label %22

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store ptr null, ptr %12, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store ptr null, ptr %13, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !49
  call fastcc void @slice_get_float_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %23 = load i32, ptr %21, align 8, !tbaa !91
  %24 = load ptr, ptr %12, align 8, !tbaa !49
  %25 = load ptr, ptr %13, align 8, !tbaa !49
  %26 = load ptr, ptr %14, align 8, !tbaa !49
  tail call fastcc void @do_alphaover_effect_float(float noundef %3, float noundef %4, i32 noundef %23, i32 noundef %9, ptr noundef %24, ptr noundef %25, ptr noundef %26) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %32

27:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store ptr null, ptr %15, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  store ptr null, ptr %16, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  store ptr null, ptr %17, align 8, !tbaa !49
  call fastcc void @slice_get_byte_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #22
  %28 = load i32, ptr %21, align 8, !tbaa !91
  %29 = load ptr, ptr %15, align 8, !tbaa !49
  %30 = load ptr, ptr %16, align 8, !tbaa !49
  %31 = load ptr, ptr %17, align 8, !tbaa !49
  tail call fastcc void @do_alphaover_effect_byte(float noundef %3, float noundef %4, i32 noundef %28, i32 noundef %9, ptr noundef %29, ptr noundef %30, ptr noundef %31) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %32

32:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_overdrop_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 !PGOFuncName !106 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store ptr null, ptr %12, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store ptr null, ptr %13, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !49
  call fastcc void @slice_get_float_buffers(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %24 = load ptr, ptr %12, align 8, !tbaa !49
  %25 = load ptr, ptr %13, align 8, !tbaa !49
  %26 = load ptr, ptr %14, align 8, !tbaa !49
  tail call fastcc void @do_drop_effect_float(float noundef %3, float noundef %4, i32 noundef %19, i32 noundef %9, ptr noundef %24, ptr noundef %25, ptr noundef %26) #22
  tail call fastcc void @do_alphaover_effect_float(float noundef %3, float noundef %4, i32 noundef %19, i32 noundef %9, ptr noundef %24, ptr noundef %25, ptr noundef %26) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %31

27:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store ptr null, ptr %15, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  store ptr null, ptr %16, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  store ptr null, ptr %17, align 8, !tbaa !49
  call fastcc void @slice_get_byte_buffers(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #22
  %28 = load ptr, ptr %15, align 8, !tbaa !49
  %29 = load ptr, ptr %16, align 8, !tbaa !49
  %30 = load ptr, ptr %17, align 8, !tbaa !49
  tail call fastcc void @do_drop_effect_byte(float noundef %3, float noundef %4, i32 noundef %19, i32 noundef %9, ptr noundef %28, ptr noundef %29, ptr noundef %30) #22
  tail call fastcc void @do_alphaover_effect_byte(float noundef %3, float noundef %4, i32 noundef %19, i32 noundef %9, ptr noundef %28, ptr noundef %29, ptr noundef %30) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %31

31:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @do_alphaunder_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #7 !PGOFuncName !107 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  br i1 %20, label %27, label %22

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store ptr null, ptr %12, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store ptr null, ptr %13, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !49
  call fastcc void @slice_get_float_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %23 = load i32, ptr %21, align 8, !tbaa !91
  %24 = load ptr, ptr %12, align 8, !tbaa !49
  %25 = load ptr, ptr %13, align 8, !tbaa !49
  %26 = load ptr, ptr %14, align 8, !tbaa !49
  tail call fastcc void @do_alphaunder_effect_float(float noundef %3, float noundef %4, i32 noundef %23, i32 noundef %9, ptr noundef %24, ptr noundef %25, ptr noundef %26) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %32

27:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store ptr null, ptr %15, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  store ptr null, ptr %16, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  store ptr null, ptr %17, align 8, !tbaa !49
  call fastcc void @slice_get_byte_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #22
  %28 = load i32, ptr %21, align 8, !tbaa !91
  %29 = load ptr, ptr %15, align 8, !tbaa !49
  %30 = load ptr, ptr %16, align 8, !tbaa !49
  %31 = load ptr, ptr %17, align 8, !tbaa !49
  tail call fastcc void @do_alphaunder_effect_byte(float noundef %3, float noundef %4, i32 noundef %28, i32 noundef %9, ptr noundef %29, ptr noundef %30, ptr noundef %31) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %32

32:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_wipe_effect(ptr nocapture noundef %0) #0 !PGOFuncName !108 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %9 = tail call ptr %8(i64 noundef 12, ptr noundef nonnull @.str.2) #23
  store ptr %9, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_wipe() #6 !PGOFuncName !109 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_wipe_effect(ptr nocapture noundef %0) #0 !PGOFuncName !110 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copy_wipe_effect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !111 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @do_wipe_effect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float %2, float noundef %3, float %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 !PGOFuncName !112 {
  %9 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7) #22
  %10 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !113
  br i1 %12, label %22, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  tail call fastcc void @do_wipe_effect_float(ptr noundef %1, float noundef %3, i32 noundef %14, i32 noundef %16, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %11) #22
  br label %29

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !114
  %25 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !114
  %27 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !114
  tail call fastcc void @do_wipe_effect_byte(ptr noundef %1, float noundef %3, i32 noundef %14, i32 noundef %16, ptr noundef %24, ptr noundef %26, ptr noundef %28) #22
  br label %29

29:                                               ; preds = %22, %17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_glow_effect(ptr nocapture noundef %0) #0 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %9 = tail call ptr %8(i64 noundef 24, ptr noundef nonnull @.str.3) #23
  store ptr %9, ptr %2, align 8, !tbaa !34
  store <4 x float> <float 2.500000e-01, float 1.000000e+00, float 5.000000e-01, float 3.000000e+00>, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 4
  store i32 3, ptr %10, align 4, !tbaa !116
  %11 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 5
  store i32 0, ptr %11, align 4, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_glow() #6 !PGOFuncName !119 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_glow_effect(ptr nocapture noundef %0) #0 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copy_glow_effect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !121 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @do_glow_effect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float %2, float noundef %3, float %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 !PGOFuncName !122 {
  %9 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7) #22
  %10 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !91
  %12 = mul nsw i32 %11, 100
  %13 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !123
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 33
  %16 = load i32, ptr %15, align 4, !tbaa !124
  %17 = sdiv i32 %12, %16
  %18 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !113
  br i1 %20, label %26, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  tail call fastcc void @do_glow_effect_float(ptr noundef %1, i32 noundef %17, float noundef %3, i32 noundef %11, i32 noundef %22, ptr noundef %25, ptr noundef nonnull %19) #22
  br label %31

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !114
  %29 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !114
  tail call fastcc void @do_glow_effect_byte(ptr noundef %1, i32 noundef %17, float noundef %3, i32 noundef %11, i32 noundef %22, ptr noundef %28, ptr noundef %30) #22
  br label %31

31:                                               ; preds = %26, %23
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_transform_effect(ptr nocapture noundef %0) #0 !PGOFuncName !144 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %9 = tail call ptr %8(i64 noundef 32, ptr noundef nonnull @.str.8) #23
  store ptr %9, ptr %2, align 8, !tbaa !34
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds %struct.TransformVars, ptr %9, i64 0, i32 4
  store float 0.000000e+00, ptr %10, align 4, !tbaa !145
  %11 = getelementptr inbounds %struct.TransformVars, ptr %9, i64 0, i32 6
  store i32 1, ptr %11, align 4, !tbaa !147
  %12 = getelementptr inbounds %struct.TransformVars, ptr %9, i64 0, i32 5
  store i32 1, ptr %12, align 4, !tbaa !148
  %13 = getelementptr inbounds %struct.TransformVars, ptr %9, i64 0, i32 7
  store i32 0, ptr %13, align 4, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_transform() #6 !PGOFuncName !150 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_transform_effect(ptr nocapture noundef %0) #0 !PGOFuncName !151 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copy_transform_effect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !152 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @do_transform_effect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float %2, float %3, float %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 !PGOFuncName !153 {
  %9 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7) #22
  %10 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !113
  tail call fastcc void @do_transform(ptr noundef %11, ptr noundef %1, i32 noundef %13, i32 noundef %15, ptr noundef %5, ptr noundef %9) #22
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_speed_effect(ptr nocapture noundef %0) #0 !PGOFuncName !154 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %9 = tail call ptr %8(i64 noundef 24, ptr noundef nonnull @.str.9) #23
  store ptr %9, ptr %2, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.SpeedControlVars, ptr %9, i64 0, i32 1
  store float 1.000000e+00, ptr %10, align 8, !tbaa !57
  store ptr null, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.SpeedControlVars, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !43
  %14 = getelementptr inbounds %struct.SpeedControlVars, ptr %9, i64 0, i32 3
  store i32 0, ptr %14, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_speed() #6 !PGOFuncName !155 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @load_speed_effect(ptr nocapture noundef readonly %0) #10 !PGOFuncName !156 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  store ptr null, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.SpeedControlVars, ptr %3, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_speed_effect(ptr nocapture noundef %0) #0 !PGOFuncName !157 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %7(ptr noundef nonnull %4) #23
  %8 = load ptr, ptr %2, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %8, %6 ], [ %3, %1 ]
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %12(ptr noundef nonnull %11) #23
  br label %13

13:                                               ; preds = %10, %6
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copy_speed_effect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !158 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  store ptr null, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.SpeedControlVars, ptr %6, i64 0, i32 3
  store i32 0, ptr %8, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @do_speed_effect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, float %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 !PGOFuncName !159 {
  %9 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7) #22
  %10 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !113
  br i1 %12, label %22, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  tail call fastcc void @do_cross_effect_float(float noundef %3, float noundef %4, i32 noundef %14, i32 noundef %16, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %11) #22
  br label %29

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !114
  %25 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !114
  %27 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !114
  tail call fastcc void @do_cross_effect_byte(float noundef %3, float noundef %4, i32 noundef %14, i32 noundef %16, ptr noundef %24, ptr noundef %26, ptr noundef %28) #22
  br label %29

29:                                               ; preds = %22, %17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @early_out_speed(ptr nocapture readnone %0, float %1, float %2) #6 !PGOFuncName !160 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @store_icu_yrange_speed(ptr noundef %0, i16 signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !161 {
  %5 = alloca %struct.SeqEffectHandle, align 8
  %6 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #21
  call void @BKE_sequence_get_effect(ptr dead_on_unwind nonnull writable sret(%struct.SeqEffectHandle) align 8 %5, ptr noundef %0) #22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #21
  %8 = getelementptr inbounds %struct.SpeedControlVars, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store float -1.000000e+02, ptr %2, align 4, !tbaa !54
  br label %20

13:                                               ; preds = %4
  %14 = and i32 %9, 4
  %15 = icmp eq i32 %14, 0
  store float 0.000000e+00, ptr %2, align 4, !tbaa !54
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !45
  %19 = sitofp i32 %18 to float
  br label %20

20:                                               ; preds = %13, %16, %12
  %21 = phi float [ %19, %16 ], [ 1.000000e+02, %12 ], [ 1.000000e+00, %13 ]
  store float %21, ptr %3, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_solid_color(ptr nocapture noundef %0) #0 !PGOFuncName !162 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %9 = tail call ptr %8(i64 noundef 16, ptr noundef nonnull @.str.10) #23
  store ptr %9, ptr %2, align 8, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 5.000000e-01, ptr %10, align 4, !tbaa !54
  store <2 x float> <float 5.000000e-01, float 5.000000e-01>, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_color() #6 !PGOFuncName !163 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @early_out_color(ptr nocapture readnone %0, float %1, float %2) #6 !PGOFuncName !164 {
  ret i32 -1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_solid_color(ptr nocapture noundef %0) #0 !PGOFuncName !165 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copy_solid_color(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !166 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @do_solid_color(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 !PGOFuncName !167 {
  %9 = tail call fastcc ptr @prepare_effect_imbufs(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7) #22
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = icmp eq ptr %13, null
  br i1 %14, label %92, label %15

15:                                               ; preds = %8
  %16 = load float, ptr %11, align 4, !tbaa !54
  %17 = fmul float %16, %3
  %18 = fmul float %17, 2.550000e+02
  %19 = fptoui float %18 to i8
  %20 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !54
  %22 = fmul float %21, %3
  %23 = fmul float %22, 2.550000e+02
  %24 = fptoui float %23 to i8
  %25 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !54
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
  %40 = load i32, ptr %39, align 4, !tbaa !168
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %143

42:                                               ; preds = %15
  %43 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !169
  br label %45

45:                                               ; preds = %42, %85
  %46 = phi i32 [ %40, %42 ], [ %86, %85 ]
  %47 = phi i32 [ %44, %42 ], [ %87, %85 ]
  %48 = phi i32 [ %44, %42 ], [ %88, %85 ]
  %49 = phi ptr [ %13, %42 ], [ %89, %85 ]
  %50 = phi i32 [ 0, %42 ], [ %90, %85 ]
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45, %52
  %53 = phi ptr [ %59, %52 ], [ %49, %45 ]
  %54 = phi i32 [ %58, %52 ], [ 0, %45 ]
  store i8 %19, ptr %53, align 1, !tbaa !170
  %55 = getelementptr inbounds i8, ptr %53, i64 1
  store i8 %24, ptr %55, align 1, !tbaa !170
  %56 = getelementptr inbounds i8, ptr %53, i64 2
  store i8 %29, ptr %56, align 1, !tbaa !170
  %57 = getelementptr inbounds i8, ptr %53, i64 3
  store i8 -1, ptr %57, align 1, !tbaa !170
  %58 = add nuw nsw i32 %54, 1
  %59 = getelementptr inbounds i8, ptr %53, i64 4
  %60 = load i32, ptr %43, align 8, !tbaa !169
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %52, label %62, !llvm.loop !171

62:                                               ; preds = %52
  %63 = load i32, ptr %39, align 4, !tbaa !168
  br label %64

64:                                               ; preds = %62, %45
  %65 = phi i32 [ %46, %45 ], [ %63, %62 ]
  %66 = phi i32 [ %47, %45 ], [ %60, %62 ]
  %67 = phi i32 [ %48, %45 ], [ %60, %62 ]
  %68 = phi ptr [ %49, %45 ], [ %59, %62 ]
  %69 = or disjoint i32 %50, 1
  %70 = icmp slt i32 %69, %65
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = icmp sgt i32 %66, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %71, %73
  %74 = phi ptr [ %80, %73 ], [ %68, %71 ]
  %75 = phi i32 [ %79, %73 ], [ 0, %71 ]
  store i8 %32, ptr %74, align 1, !tbaa !170
  %76 = getelementptr inbounds i8, ptr %74, i64 1
  store i8 %35, ptr %76, align 1, !tbaa !170
  %77 = getelementptr inbounds i8, ptr %74, i64 2
  store i8 %38, ptr %77, align 1, !tbaa !170
  %78 = getelementptr inbounds i8, ptr %74, i64 3
  store i8 -1, ptr %78, align 1, !tbaa !170
  %79 = add nuw nsw i32 %75, 1
  %80 = getelementptr inbounds i8, ptr %74, i64 4
  %81 = load i32, ptr %43, align 8, !tbaa !169
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %73, label %83, !llvm.loop !172

83:                                               ; preds = %73
  %84 = load i32, ptr %39, align 4, !tbaa !168
  br label %85

85:                                               ; preds = %83, %71, %64
  %86 = phi i32 [ %65, %64 ], [ %65, %71 ], [ %84, %83 ]
  %87 = phi i32 [ %66, %64 ], [ %66, %71 ], [ %81, %83 ]
  %88 = phi i32 [ %67, %64 ], [ %66, %71 ], [ %81, %83 ]
  %89 = phi ptr [ %68, %64 ], [ %68, %71 ], [ %80, %83 ]
  %90 = add nuw nsw i32 %50, 2
  %91 = icmp slt i32 %90, %86
  br i1 %91, label %45, label %143, !llvm.loop !173

92:                                               ; preds = %8
  %93 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %94 = load ptr, ptr %93, align 8, !tbaa !87
  %95 = icmp eq ptr %94, null
  br i1 %95, label %143, label %96

96:                                               ; preds = %92
  %97 = load <2 x float>, ptr %11, align 4, !tbaa !54
  %98 = insertelement <2 x float> poison, float %3, i64 0
  %99 = shufflevector <2 x float> %98, <2 x float> poison, <2 x i32> zeroinitializer
  %100 = fmul <2 x float> %97, %99
  %101 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !54
  %103 = fmul float %102, %3
  %104 = insertelement <2 x float> poison, float %4, i64 0
  %105 = shufflevector <2 x float> %104, <2 x float> poison, <2 x i32> zeroinitializer
  %106 = fmul <2 x float> %97, %105
  %107 = fmul float %102, %4
  %108 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !168
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %143

111:                                              ; preds = %96
  %112 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !169
  %114 = icmp sgt i32 %113, 0
  %115 = icmp slt i32 %113, 1
  br label %116

116:                                              ; preds = %111, %139
  %117 = phi ptr [ %94, %111 ], [ %140, %139 ]
  %118 = phi i32 [ 0, %111 ], [ %141, %139 ]
  br i1 %114, label %119, label %139

119:                                              ; preds = %116, %119
  %120 = phi ptr [ %125, %119 ], [ %117, %116 ]
  %121 = phi i32 [ %124, %119 ], [ 0, %116 ]
  store <2 x float> %100, ptr %120, align 4, !tbaa !54
  %122 = getelementptr inbounds float, ptr %120, i64 2
  store float %103, ptr %122, align 4, !tbaa !54
  %123 = getelementptr inbounds float, ptr %120, i64 3
  store float 1.000000e+00, ptr %123, align 4, !tbaa !54
  %124 = add nuw nsw i32 %121, 1
  %125 = getelementptr inbounds float, ptr %120, i64 4
  %126 = icmp eq i32 %124, %113
  br i1 %126, label %127, label %119, !llvm.loop !174

127:                                              ; preds = %119
  %128 = or disjoint i32 %118, 1
  %129 = icmp sge i32 %128, %109
  %130 = or i1 %129, %115
  br i1 %130, label %139, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %137, %131 ], [ %125, %127 ]
  %133 = phi i32 [ %136, %131 ], [ 0, %127 ]
  store <2 x float> %106, ptr %132, align 4, !tbaa !54
  %134 = getelementptr inbounds float, ptr %132, i64 2
  store float %107, ptr %134, align 4, !tbaa !54
  %135 = getelementptr inbounds float, ptr %132, i64 3
  store float 1.000000e+00, ptr %135, align 4, !tbaa !54
  %136 = add nuw nsw i32 %133, 1
  %137 = getelementptr inbounds float, ptr %132, i64 4
  %138 = icmp eq i32 %136, %113
  br i1 %138, label %139, label %131, !llvm.loop !175

139:                                              ; preds = %131, %116, %127
  %140 = phi ptr [ %125, %127 ], [ %117, %116 ], [ %137, %131 ]
  %141 = add nuw nsw i32 %118, 2
  %142 = icmp slt i32 %141, %109
  br i1 %142, label %116, label %143, !llvm.loop !176

143:                                              ; preds = %85, %139, %15, %96, %92
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_multicam() #6 !PGOFuncName !177 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @early_out_multicam(ptr nocapture readnone %0, float %1, float %2) #6 !PGOFuncName !178 {
  ret i32 -1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @do_multicam(ptr noundef %0, ptr noundef %1, float noundef %2, float %3, float %4, ptr nocapture readnone %5, ptr nocapture readnone %6, ptr nocapture readnone %7) #0 !PGOFuncName !179 {
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 22
  %10 = load i32, ptr %9, align 8, !tbaa !180
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !181
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !123
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !182
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.Editing, ptr %20, i64 0, i32 1
  %24 = tail call ptr @BKE_sequence_seqbase(ptr noundef nonnull %23, ptr noundef nonnull %1) #23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %9, align 8, !tbaa !180
  %28 = tail call ptr @BKE_sequencer_give_ibuf_seqbase(ptr noundef nonnull %0, float noundef %2, i32 noundef %27, ptr noundef nonnull %24) #23
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = tail call zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %2) #23
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %28) #23
  tail call void @IMB_freeImBuf(ptr noundef nonnull %28) #23
  br label %35

35:                                               ; preds = %33, %30, %26, %22, %16, %8, %12
  %36 = phi ptr [ null, %12 ], [ null, %8 ], [ null, %16 ], [ null, %22 ], [ null, %26 ], [ %34, %33 ], [ %28, %30 ]
  ret ptr %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_adjustment() #6 !PGOFuncName !183 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @early_out_adjustment(ptr nocapture readnone %0, float %1, float %2) #6 !PGOFuncName !184 {
  ret i32 -1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @do_adjustment(ptr noundef %0, ptr noundef %1, float noundef %2, float %3, float %4, ptr nocapture readnone %5, ptr nocapture readnone %6, ptr nocapture readnone %7) #0 !PGOFuncName !185 {
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @do_adjustment_impl(ptr noundef nonnull %0, ptr noundef %1, float noundef %2) #22
  %16 = tail call zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr noundef nonnull %0, ptr noundef %1, float noundef %2) #23
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @IMB_dupImBuf(ptr noundef %15) #23
  tail call void @IMB_freeImBuf(ptr noundef %15) #23
  br label %20

20:                                               ; preds = %18, %14, %8
  %21 = phi ptr [ null, %8 ], [ %19, %18 ], [ %15, %14 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_gaussian_blur_effect(ptr nocapture noundef %0) #0 !PGOFuncName !186 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %9 = tail call ptr %8(i64 noundef 12, ptr noundef nonnull @.str.2) #23
  store ptr %9, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @num_inputs_gaussian_blur() #6 !PGOFuncName !187 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_gaussian_blur_effect(ptr nocapture noundef %0) #0 !PGOFuncName !188 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copy_gaussian_blur_effect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !189 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr %3(ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @early_out_gaussian_blur(ptr nocapture noundef readonly %0, float %1, float %2) #11 !PGOFuncName !190 {
  %4 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = load float, ptr %5, align 4, !tbaa !191
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.GaussianBlurVars, ptr %5, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !193
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %3
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_gaussian_blur_effect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float %2, float %3, float %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture readnone %7, i32 noundef %8, i32 noundef %9, ptr nocapture noundef readonly %10) #0 !PGOFuncName !194 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = getelementptr inbounds %struct.ImBuf, ptr %10, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  br i1 %20, label %29, label %23

23:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !49
  call fastcc void @slice_get_float_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %24 = load i32, ptr %21, align 8, !tbaa !91
  %25 = load i32, ptr %22, align 4, !tbaa !113
  %26 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = load ptr, ptr %14, align 8, !tbaa !49
  tail call fastcc void @do_gaussian_blur_effect_float(ptr noundef %1, i32 noundef %8, i32 noundef %24, i32 noundef %9, i32 noundef %24, i32 noundef %25, ptr noundef %27, ptr noundef %28) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %35

29:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  store ptr null, ptr %17, align 8, !tbaa !49
  call fastcc void @slice_get_byte_buffers(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #22
  %30 = load i32, ptr %21, align 8, !tbaa !91
  %31 = load i32, ptr %22, align 4, !tbaa !113
  %32 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  %34 = load ptr, ptr %17, align 8, !tbaa !49
  tail call fastcc void @do_gaussian_blur_effect_byte(ptr noundef %1, i32 noundef %8, i32 noundef %30, i32 noundef %9, i32 noundef %30, i32 noundef %31, ptr noundef %33, ptr noundef %34) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %35

35:                                               ; preds = %29, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @prepare_effect_imbufs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !195 {
  %5 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  %7 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !113
  %11 = icmp ne ptr %1, null
  %12 = icmp ne ptr %2, null
  %13 = or i1 %11, %12
  %14 = icmp ne ptr %3, null
  %15 = or i1 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = tail call ptr @IMB_allocImBuf(i32 noundef %8, i32 noundef %10, i8 noundef zeroext 32, i32 noundef 1) #23
  br label %96

18:                                               ; preds = %4
  br i1 %11, label %19, label %23

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %19, %18
  br i1 %12, label %24, label %28

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %23
  br i1 %14, label %29, label %33

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %28
  br label %34

34:                                               ; preds = %19, %24, %29, %33
  %35 = phi i32 [ 1, %33 ], [ 32, %29 ], [ 32, %24 ], [ 32, %19 ]
  %36 = tail call ptr @IMB_allocImBuf(i32 noundef %8, i32 noundef %10, i8 noundef zeroext 32, i32 noundef %35) #23
  br i1 %11, label %37, label %46

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !87
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !87
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %6, ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  br label %46

46:                                               ; preds = %45, %41, %37, %34
  br i1 %12, label %47, label %56

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !87
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !87
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %6, ptr noundef nonnull %2, i8 noundef zeroext 1) #23
  br label %56

56:                                               ; preds = %55, %51, %47, %46
  br i1 %14, label %57, label %66

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !87
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !87
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef %6, ptr noundef nonnull %3, i8 noundef zeroext 1) #23
  br label %66

66:                                               ; preds = %65, %61, %57, %56
  br i1 %11, label %67, label %76

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !114
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !87
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  tail call void @IMB_rect_from_float(ptr noundef nonnull %1) #23
  br label %76

76:                                               ; preds = %75, %71, %67, %66
  br i1 %12, label %77, label %86

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !114
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 9
  %83 = load ptr, ptr %82, align 8, !tbaa !87
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  tail call void @IMB_rect_from_float(ptr noundef nonnull %2) #23
  br label %86

86:                                               ; preds = %85, %81, %77, %76
  br i1 %14, label %87, label %96

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 8
  %89 = load ptr, ptr %88, align 8, !tbaa !114
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !87
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  tail call void @IMB_rect_from_float(ptr noundef nonnull %3) #23
  br label %96

96:                                               ; preds = %16, %95, %91, %87, %86
  %97 = phi ptr [ %17, %16 ], [ %36, %95 ], [ %36, %91 ], [ %36, %87 ], [ %36, %86 ]
  %98 = getelementptr inbounds %struct.ImBuf, ptr %97, i64 0, i32 9
  %99 = load ptr, ptr %98, align 8, !tbaa !87
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 46
  tail call void @IMB_colormanagement_assign_float_colorspace(ptr noundef nonnull %97, ptr noundef nonnull %102) #23
  br label %103

103:                                              ; preds = %101, %96
  ret ptr %97
}

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequencer_imbuf_to_sequencer_space(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_assign_float_colorspace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @slice_get_float_buffers(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #8 !PGOFuncName !196 {
  %9 = shl nsw i32 %4, 2
  %10 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !91
  %12 = mul nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds float, ptr %14, i64 %15
  store ptr %16, ptr %5, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !87
  %19 = getelementptr inbounds float, ptr %18, i64 %15
  store ptr %19, ptr %7, align 8, !tbaa !49
  %20 = icmp eq ptr %2, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = getelementptr inbounds float, ptr %23, i64 %15
  store ptr %24, ptr %6, align 8, !tbaa !49
  br label %25

25:                                               ; preds = %8, %21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_cross_effect_float(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !197 {
  %8 = fsub float 1.000000e+00, %0
  %9 = fsub float 1.000000e+00, %1
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %99, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %2, 0
  br label %19

13:                                               ; preds = %64, %61, %63
  %14 = phi ptr [ %55, %63 ], [ %22, %61 ], [ %95, %64 ]
  %15 = phi ptr [ %56, %63 ], [ %21, %61 ], [ %96, %64 ]
  %16 = phi ptr [ %57, %63 ], [ %20, %61 ], [ %97, %64 ]
  %17 = add nsw i32 %23, -2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %99, label %19, !llvm.loop !198

19:                                               ; preds = %11, %13
  %20 = phi ptr [ %6, %11 ], [ %16, %13 ]
  %21 = phi ptr [ %5, %11 ], [ %15, %13 ]
  %22 = phi ptr [ %4, %11 ], [ %14, %13 ]
  %23 = phi i32 [ %3, %11 ], [ %17, %13 ]
  br i1 %12, label %61, label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %57, %24 ], [ %20, %19 ]
  %26 = phi ptr [ %56, %24 ], [ %21, %19 ]
  %27 = phi ptr [ %55, %24 ], [ %22, %19 ]
  %28 = phi i32 [ %29, %24 ], [ %2, %19 ]
  %29 = add nsw i32 %28, -1
  %30 = load float, ptr %27, align 4, !tbaa !54
  %31 = load float, ptr %26, align 4, !tbaa !54
  %32 = fmul float %31, %0
  %33 = tail call float @llvm.fmuladd.f32(float %8, float %30, float %32)
  store float %33, ptr %25, align 4, !tbaa !54
  %34 = getelementptr inbounds float, ptr %27, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !54
  %36 = getelementptr inbounds float, ptr %26, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !54
  %38 = fmul float %37, %0
  %39 = tail call float @llvm.fmuladd.f32(float %8, float %35, float %38)
  %40 = getelementptr inbounds float, ptr %25, i64 1
  store float %39, ptr %40, align 4, !tbaa !54
  %41 = getelementptr inbounds float, ptr %27, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !54
  %43 = getelementptr inbounds float, ptr %26, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !54
  %45 = fmul float %44, %0
  %46 = tail call float @llvm.fmuladd.f32(float %8, float %42, float %45)
  %47 = getelementptr inbounds float, ptr %25, i64 2
  store float %46, ptr %47, align 4, !tbaa !54
  %48 = getelementptr inbounds float, ptr %27, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !54
  %50 = getelementptr inbounds float, ptr %26, i64 3
  %51 = load float, ptr %50, align 4, !tbaa !54
  %52 = fmul float %51, %0
  %53 = tail call float @llvm.fmuladd.f32(float %8, float %49, float %52)
  %54 = getelementptr inbounds float, ptr %25, i64 3
  store float %53, ptr %54, align 4, !tbaa !54
  %55 = getelementptr inbounds float, ptr %27, i64 4
  %56 = getelementptr inbounds float, ptr %26, i64 4
  %57 = getelementptr inbounds float, ptr %25, i64 4
  %58 = icmp eq i32 %29, 0
  br i1 %58, label %59, label %24, !llvm.loop !199

59:                                               ; preds = %24
  %60 = icmp eq i32 %23, 1
  br i1 %60, label %99, label %63

61:                                               ; preds = %19
  %62 = icmp eq i32 %23, 1
  br i1 %62, label %99, label %13

63:                                               ; preds = %59
  br i1 %12, label %13, label %64

64:                                               ; preds = %63, %64
  %65 = phi ptr [ %97, %64 ], [ %57, %63 ]
  %66 = phi ptr [ %96, %64 ], [ %56, %63 ]
  %67 = phi ptr [ %95, %64 ], [ %55, %63 ]
  %68 = phi i32 [ %69, %64 ], [ %2, %63 ]
  %69 = add nsw i32 %68, -1
  %70 = load float, ptr %67, align 4, !tbaa !54
  %71 = load float, ptr %66, align 4, !tbaa !54
  %72 = fmul float %71, %1
  %73 = tail call float @llvm.fmuladd.f32(float %9, float %70, float %72)
  store float %73, ptr %65, align 4, !tbaa !54
  %74 = getelementptr inbounds float, ptr %67, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !54
  %76 = getelementptr inbounds float, ptr %66, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !54
  %78 = fmul float %77, %1
  %79 = tail call float @llvm.fmuladd.f32(float %9, float %75, float %78)
  %80 = getelementptr inbounds float, ptr %65, i64 1
  store float %79, ptr %80, align 4, !tbaa !54
  %81 = getelementptr inbounds float, ptr %67, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !54
  %83 = getelementptr inbounds float, ptr %66, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !54
  %85 = fmul float %84, %1
  %86 = tail call float @llvm.fmuladd.f32(float %9, float %82, float %85)
  %87 = getelementptr inbounds float, ptr %65, i64 2
  store float %86, ptr %87, align 4, !tbaa !54
  %88 = getelementptr inbounds float, ptr %67, i64 3
  %89 = load float, ptr %88, align 4, !tbaa !54
  %90 = getelementptr inbounds float, ptr %66, i64 3
  %91 = load float, ptr %90, align 4, !tbaa !54
  %92 = fmul float %91, %1
  %93 = tail call float @llvm.fmuladd.f32(float %9, float %89, float %92)
  %94 = getelementptr inbounds float, ptr %65, i64 3
  store float %93, ptr %94, align 4, !tbaa !54
  %95 = getelementptr inbounds float, ptr %67, i64 4
  %96 = getelementptr inbounds float, ptr %66, i64 4
  %97 = getelementptr inbounds float, ptr %65, i64 4
  %98 = icmp eq i32 %69, 0
  br i1 %98, label %13, label %64, !llvm.loop !200

99:                                               ; preds = %13, %59, %61, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @slice_get_byte_buffers(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #8 !PGOFuncName !201 {
  %9 = shl nsw i32 %4, 2
  %10 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !91
  %12 = mul nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  store ptr %16, ptr %5, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.ImBuf, ptr %3, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  %19 = getelementptr inbounds i8, ptr %18, i64 %15
  store ptr %19, ptr %7, align 8, !tbaa !49
  %20 = icmp eq ptr %2, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !114
  %24 = getelementptr inbounds i8, ptr %23, i64 %15
  store ptr %24, ptr %6, align 8, !tbaa !49
  br label %25

25:                                               ; preds = %8, %21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_cross_effect_byte(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !202 {
  %8 = fmul float %0, 2.560000e+02
  %9 = fptosi float %8 to i32
  %10 = sub nsw i32 256, %9
  %11 = fmul float %1, 2.560000e+02
  %12 = fptosi float %11 to i32
  %13 = sub nsw i32 256, %12
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %143, label %15

15:                                               ; preds = %7
  %16 = icmp eq i32 %2, 0
  br label %23

17:                                               ; preds = %88, %85, %87
  %18 = phi ptr [ %79, %87 ], [ %26, %85 ], [ %139, %88 ]
  %19 = phi ptr [ %80, %87 ], [ %25, %85 ], [ %140, %88 ]
  %20 = phi ptr [ %81, %87 ], [ %24, %85 ], [ %141, %88 ]
  %21 = add nsw i32 %27, -2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %143, label %23, !llvm.loop !203

23:                                               ; preds = %15, %17
  %24 = phi ptr [ %6, %15 ], [ %20, %17 ]
  %25 = phi ptr [ %5, %15 ], [ %19, %17 ]
  %26 = phi ptr [ %4, %15 ], [ %18, %17 ]
  %27 = phi i32 [ %3, %15 ], [ %21, %17 ]
  br i1 %16, label %85, label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %81, %28 ], [ %24, %23 ]
  %30 = phi ptr [ %80, %28 ], [ %25, %23 ]
  %31 = phi ptr [ %79, %28 ], [ %26, %23 ]
  %32 = phi i32 [ %33, %28 ], [ %2, %23 ]
  %33 = add nsw i32 %32, -1
  %34 = load i8, ptr %31, align 1, !tbaa !170
  %35 = zext i8 %34 to i32
  %36 = mul nsw i32 %10, %35
  %37 = load i8, ptr %30, align 1, !tbaa !170
  %38 = zext i8 %37 to i32
  %39 = mul nsw i32 %38, %9
  %40 = add nsw i32 %39, %36
  %41 = lshr i32 %40, 8
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %29, align 1, !tbaa !170
  %43 = getelementptr inbounds i8, ptr %31, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !170
  %45 = zext i8 %44 to i32
  %46 = mul nsw i32 %10, %45
  %47 = getelementptr inbounds i8, ptr %30, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !170
  %49 = zext i8 %48 to i32
  %50 = mul nsw i32 %49, %9
  %51 = add nsw i32 %50, %46
  %52 = lshr i32 %51, 8
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %53, ptr %54, align 1, !tbaa !170
  %55 = getelementptr inbounds i8, ptr %31, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !170
  %57 = zext i8 %56 to i32
  %58 = mul nsw i32 %10, %57
  %59 = getelementptr inbounds i8, ptr %30, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !170
  %61 = zext i8 %60 to i32
  %62 = mul nsw i32 %61, %9
  %63 = add nsw i32 %62, %58
  %64 = lshr i32 %63, 8
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 %65, ptr %66, align 1, !tbaa !170
  %67 = getelementptr inbounds i8, ptr %31, i64 3
  %68 = load i8, ptr %67, align 1, !tbaa !170
  %69 = zext i8 %68 to i32
  %70 = mul nsw i32 %10, %69
  %71 = getelementptr inbounds i8, ptr %30, i64 3
  %72 = load i8, ptr %71, align 1, !tbaa !170
  %73 = zext i8 %72 to i32
  %74 = mul nsw i32 %73, %9
  %75 = add nsw i32 %74, %70
  %76 = lshr i32 %75, 8
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 %77, ptr %78, align 1, !tbaa !170
  %79 = getelementptr inbounds i8, ptr %31, i64 4
  %80 = getelementptr inbounds i8, ptr %30, i64 4
  %81 = getelementptr inbounds i8, ptr %29, i64 4
  %82 = icmp eq i32 %33, 0
  br i1 %82, label %83, label %28, !llvm.loop !204

83:                                               ; preds = %28
  %84 = icmp eq i32 %27, 1
  br i1 %84, label %143, label %87

85:                                               ; preds = %23
  %86 = icmp eq i32 %27, 1
  br i1 %86, label %143, label %17

87:                                               ; preds = %83
  br i1 %16, label %17, label %88

88:                                               ; preds = %87, %88
  %89 = phi ptr [ %141, %88 ], [ %81, %87 ]
  %90 = phi ptr [ %140, %88 ], [ %80, %87 ]
  %91 = phi ptr [ %139, %88 ], [ %79, %87 ]
  %92 = phi i32 [ %93, %88 ], [ %2, %87 ]
  %93 = add nsw i32 %92, -1
  %94 = load i8, ptr %91, align 1, !tbaa !170
  %95 = zext i8 %94 to i32
  %96 = mul nsw i32 %13, %95
  %97 = load i8, ptr %90, align 1, !tbaa !170
  %98 = zext i8 %97 to i32
  %99 = mul nsw i32 %98, %12
  %100 = add nsw i32 %99, %96
  %101 = lshr i32 %100, 8
  %102 = trunc i32 %101 to i8
  store i8 %102, ptr %89, align 1, !tbaa !170
  %103 = getelementptr inbounds i8, ptr %91, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !170
  %105 = zext i8 %104 to i32
  %106 = mul nsw i32 %13, %105
  %107 = getelementptr inbounds i8, ptr %90, i64 1
  %108 = load i8, ptr %107, align 1, !tbaa !170
  %109 = zext i8 %108 to i32
  %110 = mul nsw i32 %109, %12
  %111 = add nsw i32 %110, %106
  %112 = lshr i32 %111, 8
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds i8, ptr %89, i64 1
  store i8 %113, ptr %114, align 1, !tbaa !170
  %115 = getelementptr inbounds i8, ptr %91, i64 2
  %116 = load i8, ptr %115, align 1, !tbaa !170
  %117 = zext i8 %116 to i32
  %118 = mul nsw i32 %13, %117
  %119 = getelementptr inbounds i8, ptr %90, i64 2
  %120 = load i8, ptr %119, align 1, !tbaa !170
  %121 = zext i8 %120 to i32
  %122 = mul nsw i32 %121, %12
  %123 = add nsw i32 %122, %118
  %124 = lshr i32 %123, 8
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds i8, ptr %89, i64 2
  store i8 %125, ptr %126, align 1, !tbaa !170
  %127 = getelementptr inbounds i8, ptr %91, i64 3
  %128 = load i8, ptr %127, align 1, !tbaa !170
  %129 = zext i8 %128 to i32
  %130 = mul nsw i32 %13, %129
  %131 = getelementptr inbounds i8, ptr %90, i64 3
  %132 = load i8, ptr %131, align 1, !tbaa !170
  %133 = zext i8 %132 to i32
  %134 = mul nsw i32 %133, %12
  %135 = add nsw i32 %134, %130
  %136 = lshr i32 %135, 8
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds i8, ptr %89, i64 3
  store i8 %137, ptr %138, align 1, !tbaa !170
  %139 = getelementptr inbounds i8, ptr %91, i64 4
  %140 = getelementptr inbounds i8, ptr %90, i64 4
  %141 = getelementptr inbounds i8, ptr %89, i64 4
  %142 = icmp eq i32 %93, 0
  br i1 %142, label %17, label %88, !llvm.loop !205

143:                                              ; preds = %17, %83, %85, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @build_gammatabs() unnamed_addr #9 !PGOFuncName !206 {
  %1 = load i1, ptr @gamma_tabs_init, align 1
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  tail call fastcc void @gamtabs() #22
  tail call fastcc void @makeGammaTables() #22
  store i1 true, ptr @gamma_tabs_init, align 1
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(write) uwtable
define internal fastcc void @gamtabs() unnamed_addr #13 !PGOFuncName !207 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %6, %1 ]
  %3 = sitofp i32 %2 to float
  %4 = fdiv float %3, 6.553500e+04
  %5 = tail call float @sqrtf(float noundef %4) #23
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 65536
  br i1 %7, label %8, label %1, !llvm.loop !208

8:                                                ; preds = %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define internal fastcc void @makeGammaTables() unnamed_addr #14 !PGOFuncName !209 {
  store float 2.000000e+00, ptr @valid_gamma, align 4, !tbaa !54
  store float 5.000000e-01, ptr @valid_inv_gamma, align 4, !tbaa !54
  store float 4.000000e+02, ptr @inv_color_step, align 4, !tbaa !54
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %13, %1 ]
  %3 = trunc i64 %2 to i32
  %4 = sitofp i32 %3 to float
  %5 = fmul float %4, 0x3F647AE140000000
  %6 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %2
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = fmul float %5, %5
  %8 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %2
  store float %7, ptr %8, align 4, !tbaa !54
  %9 = fpext float %5 to double
  %10 = tail call double @pow(double noundef %9, double noundef 5.000000e-01) #23
  %11 = fptrunc double %10 to float
  %12 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %2
  store float %11, ptr %12, align 4, !tbaa !54
  %13 = add nuw nsw i64 %2, 1
  %14 = icmp eq i64 %13, 400
  br i1 %14, label %15, label %1, !llvm.loop !210

15:                                               ; preds = %1
  store float 1.000000e+00, ptr getelementptr inbounds ([401 x float], ptr @color_domain_table, i64 0, i64 400), align 16, !tbaa !54
  store float 1.000000e+00, ptr getelementptr inbounds ([401 x float], ptr @gamma_range_table, i64 0, i64 400), align 16, !tbaa !54
  store float 1.000000e+00, ptr getelementptr inbounds ([401 x float], ptr @inv_gamma_range_table, i64 0, i64 400), align 16, !tbaa !54
  %16 = load float, ptr @inv_gamma_range_table, align 16, !tbaa !54
  %17 = load float, ptr @gamma_range_table, align 16, !tbaa !54
  %18 = insertelement <4 x float> poison, float %16, i64 3
  %19 = insertelement <4 x float> poison, float %17, i64 3
  br label %20

20:                                               ; preds = %20, %15
  %21 = phi i64 [ 0, %15 ], [ %37, %20 ]
  %22 = phi <4 x float> [ %18, %15 ], [ %32, %20 ]
  %23 = phi <4 x float> [ %19, %15 ], [ %26, %20 ]
  %24 = or disjoint i64 %21, 1
  %25 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %24
  %26 = load <4 x float>, ptr %25, align 4, !tbaa !54
  %27 = shufflevector <4 x float> %23, <4 x float> %26, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %28 = fsub <4 x float> %26, %27
  %29 = fmul <4 x float> %28, <float 4.000000e+02, float 4.000000e+02, float 4.000000e+02, float 4.000000e+02>
  %30 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %21
  store <4 x float> %29, ptr %30, align 16, !tbaa !54
  %31 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %24
  %32 = load <4 x float>, ptr %31, align 4, !tbaa !54
  %33 = shufflevector <4 x float> %22, <4 x float> %32, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %34 = fsub <4 x float> %32, %33
  %35 = fmul <4 x float> %34, <float 4.000000e+02, float 4.000000e+02, float 4.000000e+02, float 4.000000e+02>
  %36 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %21
  store <4 x float> %35, ptr %36, align 16, !tbaa !54
  %37 = add nuw i64 %21, 4
  %38 = icmp eq i64 %37, 400
  br i1 %38, label %39, label %20, !llvm.loop !211

39:                                               ; preds = %20
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #15

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @do_gammacross_effect_float(float noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #9 !PGOFuncName !214 {
  %7 = fsub float 1.000000e+00, %0
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %6
  %10 = shl nsw i32 %1, 2
  %11 = icmp eq i32 %1, 0
  br label %18

12:                                               ; preds = %45, %42, %44
  %13 = phi ptr [ %36, %44 ], [ %21, %42 ], [ %58, %45 ]
  %14 = phi ptr [ %37, %44 ], [ %20, %42 ], [ %59, %45 ]
  %15 = phi ptr [ %38, %44 ], [ %19, %42 ], [ %60, %45 ]
  %16 = add nsw i32 %22, -2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %62, label %18, !llvm.loop !215

18:                                               ; preds = %9, %12
  %19 = phi ptr [ %5, %9 ], [ %15, %12 ]
  %20 = phi ptr [ %4, %9 ], [ %14, %12 ]
  %21 = phi ptr [ %3, %9 ], [ %13, %12 ]
  %22 = phi i32 [ %2, %9 ], [ %16, %12 ]
  br i1 %11, label %42, label %23

23:                                               ; preds = %18, %23
  %24 = phi ptr [ %38, %23 ], [ %19, %18 ]
  %25 = phi ptr [ %37, %23 ], [ %20, %18 ]
  %26 = phi ptr [ %36, %23 ], [ %21, %18 ]
  %27 = phi i32 [ %28, %23 ], [ %10, %18 ]
  %28 = add nsw i32 %27, -1
  %29 = load float, ptr %26, align 4, !tbaa !54
  %30 = tail call fastcc float @invGammaCorrect(float noundef %29) #22
  %31 = load float, ptr %25, align 4, !tbaa !54
  %32 = tail call fastcc float @invGammaCorrect(float noundef %31) #22
  %33 = fmul float %32, %0
  %34 = tail call float @llvm.fmuladd.f32(float %7, float %30, float %33)
  %35 = tail call fastcc float @gammaCorrect(float noundef %34) #22
  store float %35, ptr %24, align 4, !tbaa !54
  %36 = getelementptr inbounds float, ptr %26, i64 1
  %37 = getelementptr inbounds float, ptr %25, i64 1
  %38 = getelementptr inbounds float, ptr %24, i64 1
  %39 = icmp eq i32 %28, 0
  br i1 %39, label %40, label %23, !llvm.loop !216

40:                                               ; preds = %23
  %41 = icmp eq i32 %22, 1
  br i1 %41, label %62, label %44

42:                                               ; preds = %18
  %43 = icmp eq i32 %22, 1
  br i1 %43, label %62, label %12

44:                                               ; preds = %40
  br i1 %11, label %12, label %45

45:                                               ; preds = %44, %45
  %46 = phi ptr [ %60, %45 ], [ %38, %44 ]
  %47 = phi ptr [ %59, %45 ], [ %37, %44 ]
  %48 = phi ptr [ %58, %45 ], [ %36, %44 ]
  %49 = phi i32 [ %50, %45 ], [ %10, %44 ]
  %50 = add nsw i32 %49, -1
  %51 = load float, ptr %48, align 4, !tbaa !54
  %52 = tail call fastcc float @invGammaCorrect(float noundef %51) #22
  %53 = load float, ptr %47, align 4, !tbaa !54
  %54 = tail call fastcc float @invGammaCorrect(float noundef %53) #22
  %55 = fmul float %54, %0
  %56 = tail call float @llvm.fmuladd.f32(float %7, float %52, float %55)
  %57 = tail call fastcc float @gammaCorrect(float noundef %56) #22
  store float %57, ptr %46, align 4, !tbaa !54
  %58 = getelementptr inbounds float, ptr %48, i64 1
  %59 = getelementptr inbounds float, ptr %47, i64 1
  %60 = getelementptr inbounds float, ptr %46, i64 1
  %61 = icmp eq i32 %50, 0
  br i1 %61, label %12, label %45, !llvm.loop !217

62:                                               ; preds = %12, %40, %42, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @do_gammacross_effect_byte(float noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #9 !PGOFuncName !218 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #21
  %10 = fsub float 1.000000e+00, %0
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %115, label %12

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %15 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %16 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %17 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %18 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %19 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  %20 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %21 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %22 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  br label %29

23:                                               ; preds = %77, %74, %76
  %24 = phi ptr [ %68, %76 ], [ %32, %74 ], [ %111, %77 ]
  %25 = phi ptr [ %69, %76 ], [ %31, %74 ], [ %112, %77 ]
  %26 = phi ptr [ %70, %76 ], [ %30, %74 ], [ %113, %77 ]
  %27 = add nsw i32 %33, -2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %115, label %29, !llvm.loop !219

29:                                               ; preds = %12, %23
  %30 = phi ptr [ %5, %12 ], [ %26, %23 ]
  %31 = phi ptr [ %4, %12 ], [ %25, %23 ]
  %32 = phi ptr [ %3, %12 ], [ %24, %23 ]
  %33 = phi i32 [ %2, %12 ], [ %27, %23 ]
  br i1 %13, label %74, label %34

34:                                               ; preds = %29, %34
  %35 = phi ptr [ %70, %34 ], [ %30, %29 ]
  %36 = phi ptr [ %69, %34 ], [ %31, %29 ]
  %37 = phi ptr [ %68, %34 ], [ %32, %29 ]
  %38 = phi i32 [ %39, %34 ], [ %1, %29 ]
  %39 = add nsw i32 %38, -1
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %7, ptr noundef %37) #22
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %8, ptr noundef %36) #22
  %40 = load float, ptr %7, align 16, !tbaa !54
  %41 = tail call fastcc float @invGammaCorrect(float noundef %40) #22
  %42 = load float, ptr %8, align 16, !tbaa !54
  %43 = tail call fastcc float @invGammaCorrect(float noundef %42) #22
  %44 = fmul float %43, %0
  %45 = tail call float @llvm.fmuladd.f32(float %10, float %41, float %44)
  %46 = tail call fastcc float @gammaCorrect(float noundef %45) #22
  store float %46, ptr %9, align 16, !tbaa !54
  %47 = load float, ptr %14, align 4, !tbaa !54
  %48 = tail call fastcc float @invGammaCorrect(float noundef %47) #22
  %49 = load float, ptr %15, align 4, !tbaa !54
  %50 = tail call fastcc float @invGammaCorrect(float noundef %49) #22
  %51 = fmul float %50, %0
  %52 = tail call float @llvm.fmuladd.f32(float %10, float %48, float %51)
  %53 = tail call fastcc float @gammaCorrect(float noundef %52) #22
  store float %53, ptr %16, align 4, !tbaa !54
  %54 = load float, ptr %17, align 8, !tbaa !54
  %55 = tail call fastcc float @invGammaCorrect(float noundef %54) #22
  %56 = load float, ptr %18, align 8, !tbaa !54
  %57 = tail call fastcc float @invGammaCorrect(float noundef %56) #22
  %58 = fmul float %57, %0
  %59 = tail call float @llvm.fmuladd.f32(float %10, float %55, float %58)
  %60 = tail call fastcc float @gammaCorrect(float noundef %59) #22
  store float %60, ptr %19, align 8, !tbaa !54
  %61 = load float, ptr %20, align 4, !tbaa !54
  %62 = tail call fastcc float @invGammaCorrect(float noundef %61) #22
  %63 = load float, ptr %21, align 4, !tbaa !54
  %64 = tail call fastcc float @invGammaCorrect(float noundef %63) #22
  %65 = fmul float %64, %0
  %66 = tail call float @llvm.fmuladd.f32(float %10, float %62, float %65)
  %67 = tail call fastcc float @gammaCorrect(float noundef %66) #22
  store float %67, ptr %22, align 4, !tbaa !54
  call fastcc void @premul_float_to_straight_uchar(ptr noundef %35, ptr noundef nonnull %9) #22
  %68 = getelementptr inbounds i8, ptr %37, i64 4
  %69 = getelementptr inbounds i8, ptr %36, i64 4
  %70 = getelementptr inbounds i8, ptr %35, i64 4
  %71 = icmp eq i32 %39, 0
  br i1 %71, label %72, label %34, !llvm.loop !220

72:                                               ; preds = %34
  %73 = icmp eq i32 %33, 1
  br i1 %73, label %115, label %76

74:                                               ; preds = %29
  %75 = icmp eq i32 %33, 1
  br i1 %75, label %115, label %23

76:                                               ; preds = %72
  br i1 %13, label %23, label %77

77:                                               ; preds = %76, %77
  %78 = phi ptr [ %113, %77 ], [ %70, %76 ]
  %79 = phi ptr [ %112, %77 ], [ %69, %76 ]
  %80 = phi ptr [ %111, %77 ], [ %68, %76 ]
  %81 = phi i32 [ %82, %77 ], [ %1, %76 ]
  %82 = add nsw i32 %81, -1
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %7, ptr noundef nonnull %80) #22
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %8, ptr noundef nonnull %79) #22
  %83 = load float, ptr %7, align 16, !tbaa !54
  %84 = tail call fastcc float @invGammaCorrect(float noundef %83) #22
  %85 = load float, ptr %8, align 16, !tbaa !54
  %86 = tail call fastcc float @invGammaCorrect(float noundef %85) #22
  %87 = fmul float %86, %0
  %88 = tail call float @llvm.fmuladd.f32(float %10, float %84, float %87)
  %89 = tail call fastcc float @gammaCorrect(float noundef %88) #22
  store float %89, ptr %9, align 16, !tbaa !54
  %90 = load float, ptr %14, align 4, !tbaa !54
  %91 = tail call fastcc float @invGammaCorrect(float noundef %90) #22
  %92 = load float, ptr %15, align 4, !tbaa !54
  %93 = tail call fastcc float @invGammaCorrect(float noundef %92) #22
  %94 = fmul float %93, %0
  %95 = tail call float @llvm.fmuladd.f32(float %10, float %91, float %94)
  %96 = tail call fastcc float @gammaCorrect(float noundef %95) #22
  store float %96, ptr %16, align 4, !tbaa !54
  %97 = load float, ptr %17, align 8, !tbaa !54
  %98 = tail call fastcc float @invGammaCorrect(float noundef %97) #22
  %99 = load float, ptr %18, align 8, !tbaa !54
  %100 = tail call fastcc float @invGammaCorrect(float noundef %99) #22
  %101 = fmul float %100, %0
  %102 = tail call float @llvm.fmuladd.f32(float %10, float %98, float %101)
  %103 = tail call fastcc float @gammaCorrect(float noundef %102) #22
  store float %103, ptr %19, align 8, !tbaa !54
  %104 = load float, ptr %20, align 4, !tbaa !54
  %105 = tail call fastcc float @invGammaCorrect(float noundef %104) #22
  %106 = load float, ptr %21, align 4, !tbaa !54
  %107 = tail call fastcc float @invGammaCorrect(float noundef %106) #22
  %108 = fmul float %107, %0
  %109 = tail call float @llvm.fmuladd.f32(float %10, float %105, float %108)
  %110 = tail call fastcc float @gammaCorrect(float noundef %109) #22
  store float %110, ptr %22, align 4, !tbaa !54
  call fastcc void @premul_float_to_straight_uchar(ptr noundef nonnull %78, ptr noundef nonnull %9) #22
  %111 = getelementptr inbounds i8, ptr %80, i64 4
  %112 = getelementptr inbounds i8, ptr %79, i64 4
  %113 = getelementptr inbounds i8, ptr %78, i64 4
  %114 = icmp eq i32 %82, 0
  br i1 %114, label %23, label %77, !llvm.loop !221

115:                                              ; preds = %23, %72, %74, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define internal fastcc float @gammaCorrect(float noundef %0) unnamed_addr #16 !PGOFuncName !222 {
  %2 = load float, ptr @inv_color_step, align 4, !tbaa !54
  %3 = fmul float %2, %0
  %4 = tail call float @llvm.floor.f32(float %3)
  %5 = fptosi float %4 to i32
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = fneg float %0
  %9 = load float, ptr @valid_gamma, align 4, !tbaa !54
  %10 = tail call float @powf(float noundef %8, float noundef %9) #23
  %11 = fneg float %10
  br label %27

12:                                               ; preds = %1
  %13 = icmp ugt i32 %5, 399
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = load float, ptr @valid_gamma, align 4, !tbaa !54
  %16 = tail call float @powf(float noundef %0, float noundef %15) #23
  br label %27

17:                                               ; preds = %12
  %18 = zext nneg i32 %5 to i64
  %19 = getelementptr inbounds [401 x float], ptr @gamma_range_table, i64 0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !54
  %21 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %18
  %22 = load float, ptr %21, align 4, !tbaa !54
  %23 = fsub float %0, %22
  %24 = getelementptr inbounds [400 x float], ptr @gamfactor_table, i64 0, i64 %18
  %25 = load float, ptr %24, align 4, !tbaa !54
  %26 = tail call float @llvm.fmuladd.f32(float %23, float %25, float %20)
  br label %27

27:                                               ; preds = %14, %17, %7
  %28 = phi float [ %11, %7 ], [ %16, %14 ], [ %26, %17 ]
  ret float %28
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define internal fastcc float @invGammaCorrect(float noundef %0) unnamed_addr #16 !PGOFuncName !223 {
  %2 = load float, ptr @inv_color_step, align 4, !tbaa !54
  %3 = fmul float %2, %0
  %4 = tail call float @llvm.floor.f32(float %3)
  %5 = fptosi float %4 to i32
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = fneg float %0
  %9 = load float, ptr @valid_inv_gamma, align 4, !tbaa !54
  %10 = tail call float @powf(float noundef %8, float noundef %9) #23
  %11 = fneg float %10
  br label %27

12:                                               ; preds = %1
  %13 = icmp ugt i32 %5, 399
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = load float, ptr @valid_inv_gamma, align 4, !tbaa !54
  %16 = tail call float @powf(float noundef %0, float noundef %15) #23
  br label %27

17:                                               ; preds = %12
  %18 = zext nneg i32 %5 to i64
  %19 = getelementptr inbounds [401 x float], ptr @inv_gamma_range_table, i64 0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !54
  %21 = getelementptr inbounds [401 x float], ptr @color_domain_table, i64 0, i64 %18
  %22 = load float, ptr %21, align 4, !tbaa !54
  %23 = fsub float %0, %22
  %24 = getelementptr inbounds [400 x float], ptr @inv_gamfactor_table, i64 0, i64 %18
  %25 = load float, ptr %24, align 4, !tbaa !54
  %26 = tail call float @llvm.fmuladd.f32(float %23, float %25, float %20)
  br label %27

27:                                               ; preds = %14, %17, %7
  %28 = phi float [ %11, %7 ], [ %16, %14 ], [ %26, %17 ]
  ret float %28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_uchar_to_premul_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !224 {
  %3 = getelementptr inbounds i8, ptr %1, i64 3
  %4 = load i8, ptr %3, align 1, !tbaa !170
  %5 = uitofp i8 %4 to float
  %6 = fmul float %5, 0x3F70101020000000
  %7 = fmul float %6, 0x3F70101020000000
  %8 = load i8, ptr %1, align 1, !tbaa !170
  %9 = uitofp i8 %8 to float
  %10 = fmul float %7, %9
  store float %10, ptr %0, align 4, !tbaa !54
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !170
  %13 = uitofp i8 %12 to float
  %14 = fmul float %7, %13
  %15 = getelementptr inbounds float, ptr %0, i64 1
  store float %14, ptr %15, align 4, !tbaa !54
  %16 = getelementptr inbounds i8, ptr %1, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !170
  %18 = uitofp i8 %17 to float
  %19 = fmul float %7, %18
  %20 = getelementptr inbounds float, ptr %0, i64 2
  store float %19, ptr %20, align 4, !tbaa !54
  %21 = getelementptr inbounds float, ptr %0, i64 3
  store float %6, ptr %21, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_float_to_straight_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !225 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !54
  %5 = fcmp oeq float %4, 0.000000e+00
  %6 = fcmp oeq float %4, 1.000000e+00
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %2
  %9 = load float, ptr %1, align 4, !tbaa !54
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
  store i8 %17, ptr %0, align 1, !tbaa !170
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !54
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
  store i8 %27, ptr %28, align 1, !tbaa !170
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !54
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
  store i8 %38, ptr %39, align 1, !tbaa !170
  %40 = load float, ptr %3, align 4, !tbaa !54
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
  %49 = load float, ptr %1, align 4, !tbaa !54
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
  store i8 %58, ptr %0, align 1, !tbaa !170
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !54
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
  store i8 %69, ptr %70, align 1, !tbaa !170
  %71 = getelementptr inbounds float, ptr %1, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !54
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
  store i8 %81, ptr %82, align 1, !tbaa !170
  %83 = load float, ptr %3, align 4, !tbaa !54
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
  store i8 %91, ptr %92, align 1, !tbaa !170
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_add_effect_float(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !226 {
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %91, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %2, 0
  %11 = fsub float 1.000000e+00, %0
  %12 = fsub float 1.000000e+00, %1
  br label %19

13:                                               ; preds = %60, %57, %59
  %14 = phi ptr [ %51, %59 ], [ %22, %57 ], [ %87, %60 ]
  %15 = phi ptr [ %52, %59 ], [ %21, %57 ], [ %88, %60 ]
  %16 = phi ptr [ %53, %59 ], [ %20, %57 ], [ %89, %60 ]
  %17 = add nsw i32 %23, -2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %91, label %19, !llvm.loop !227

19:                                               ; preds = %9, %13
  %20 = phi ptr [ %6, %9 ], [ %16, %13 ]
  %21 = phi ptr [ %5, %9 ], [ %15, %13 ]
  %22 = phi ptr [ %4, %9 ], [ %14, %13 ]
  %23 = phi i32 [ %3, %9 ], [ %17, %13 ]
  br i1 %10, label %57, label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %53, %24 ], [ %20, %19 ]
  %26 = phi ptr [ %52, %24 ], [ %21, %19 ]
  %27 = phi ptr [ %51, %24 ], [ %22, %19 ]
  %28 = phi i32 [ %29, %24 ], [ %2, %19 ]
  %29 = add nsw i32 %28, -1
  %30 = getelementptr inbounds float, ptr %27, i64 3
  %31 = load float, ptr %30, align 4, !tbaa !54
  %32 = fneg float %31
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %11, float 1.000000e+00)
  %34 = load float, ptr %27, align 4, !tbaa !54
  %35 = load float, ptr %26, align 4, !tbaa !54
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %35, float %34)
  store float %36, ptr %25, align 4, !tbaa !54
  %37 = getelementptr inbounds float, ptr %27, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !54
  %39 = getelementptr inbounds float, ptr %26, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !54
  %41 = tail call float @llvm.fmuladd.f32(float %33, float %40, float %38)
  %42 = getelementptr inbounds float, ptr %25, i64 1
  store float %41, ptr %42, align 4, !tbaa !54
  %43 = getelementptr inbounds float, ptr %27, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !54
  %45 = getelementptr inbounds float, ptr %26, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !54
  %47 = tail call float @llvm.fmuladd.f32(float %33, float %46, float %44)
  %48 = getelementptr inbounds float, ptr %25, i64 2
  store float %47, ptr %48, align 4, !tbaa !54
  %49 = load float, ptr %30, align 4, !tbaa !54
  %50 = getelementptr inbounds float, ptr %25, i64 3
  store float %49, ptr %50, align 4, !tbaa !54
  %51 = getelementptr inbounds float, ptr %27, i64 4
  %52 = getelementptr inbounds float, ptr %26, i64 4
  %53 = getelementptr inbounds float, ptr %25, i64 4
  %54 = icmp eq i32 %29, 0
  br i1 %54, label %55, label %24, !llvm.loop !228

55:                                               ; preds = %24
  %56 = icmp eq i32 %23, 1
  br i1 %56, label %91, label %59

57:                                               ; preds = %19
  %58 = icmp eq i32 %23, 1
  br i1 %58, label %91, label %13

59:                                               ; preds = %55
  br i1 %10, label %13, label %60

60:                                               ; preds = %59, %60
  %61 = phi ptr [ %89, %60 ], [ %53, %59 ]
  %62 = phi ptr [ %88, %60 ], [ %52, %59 ]
  %63 = phi ptr [ %87, %60 ], [ %51, %59 ]
  %64 = phi i32 [ %65, %60 ], [ %2, %59 ]
  %65 = add nsw i32 %64, -1
  %66 = getelementptr inbounds float, ptr %63, i64 3
  %67 = load float, ptr %66, align 4, !tbaa !54
  %68 = fneg float %67
  %69 = tail call float @llvm.fmuladd.f32(float %68, float %12, float 1.000000e+00)
  %70 = load float, ptr %63, align 4, !tbaa !54
  %71 = load float, ptr %62, align 4, !tbaa !54
  %72 = tail call float @llvm.fmuladd.f32(float %69, float %71, float %70)
  store float %72, ptr %61, align 4, !tbaa !54
  %73 = getelementptr inbounds float, ptr %63, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !54
  %75 = getelementptr inbounds float, ptr %62, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !54
  %77 = tail call float @llvm.fmuladd.f32(float %69, float %76, float %74)
  %78 = getelementptr inbounds float, ptr %61, i64 1
  store float %77, ptr %78, align 4, !tbaa !54
  %79 = getelementptr inbounds float, ptr %63, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !54
  %81 = getelementptr inbounds float, ptr %62, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !54
  %83 = tail call float @llvm.fmuladd.f32(float %69, float %82, float %80)
  %84 = getelementptr inbounds float, ptr %61, i64 2
  store float %83, ptr %84, align 4, !tbaa !54
  %85 = load float, ptr %66, align 4, !tbaa !54
  %86 = getelementptr inbounds float, ptr %61, i64 3
  store float %85, ptr %86, align 4, !tbaa !54
  %87 = getelementptr inbounds float, ptr %63, i64 4
  %88 = getelementptr inbounds float, ptr %62, i64 4
  %89 = getelementptr inbounds float, ptr %61, i64 4
  %90 = icmp eq i32 %65, 0
  br i1 %90, label %13, label %60, !llvm.loop !229

91:                                               ; preds = %13, %55, %57, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_add_effect_byte(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !230 {
  %8 = fmul float %0, 2.560000e+02
  %9 = fptosi float %8 to i32
  %10 = fmul float %1, 2.560000e+02
  %11 = fptosi float %10 to i32
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %123, label %13

13:                                               ; preds = %7
  %14 = icmp eq i32 %2, 0
  br label %21

15:                                               ; preds = %77, %74, %76
  %16 = phi ptr [ %68, %76 ], [ %24, %74 ], [ %119, %77 ]
  %17 = phi ptr [ %69, %76 ], [ %23, %74 ], [ %120, %77 ]
  %18 = phi ptr [ %70, %76 ], [ %22, %74 ], [ %121, %77 ]
  %19 = add nsw i32 %25, -2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %123, label %21, !llvm.loop !231

21:                                               ; preds = %13, %15
  %22 = phi ptr [ %6, %13 ], [ %18, %15 ]
  %23 = phi ptr [ %5, %13 ], [ %17, %15 ]
  %24 = phi ptr [ %4, %13 ], [ %16, %15 ]
  %25 = phi i32 [ %3, %13 ], [ %19, %15 ]
  br i1 %14, label %74, label %26

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %70, %26 ], [ %22, %21 ]
  %28 = phi ptr [ %69, %26 ], [ %23, %21 ]
  %29 = phi ptr [ %68, %26 ], [ %24, %21 ]
  %30 = phi i32 [ %31, %26 ], [ %2, %21 ]
  %31 = add nsw i32 %30, -1
  %32 = load i8, ptr %29, align 1, !tbaa !170
  %33 = zext i8 %32 to i32
  %34 = load i8, ptr %28, align 1, !tbaa !170
  %35 = zext i8 %34 to i32
  %36 = mul nsw i32 %35, %9
  %37 = ashr i32 %36, 8
  %38 = add nsw i32 %37, %33
  %39 = tail call fastcc i32 @min_ii(i32 noundef %38, i32 noundef 255) #22
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr %27, align 1, !tbaa !170
  %41 = getelementptr inbounds i8, ptr %29, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !170
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds i8, ptr %28, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !170
  %46 = zext i8 %45 to i32
  %47 = mul nsw i32 %46, %9
  %48 = ashr i32 %47, 8
  %49 = add nsw i32 %48, %43
  %50 = tail call fastcc i32 @min_ii(i32 noundef %49, i32 noundef 255) #22
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %51, ptr %52, align 1, !tbaa !170
  %53 = getelementptr inbounds i8, ptr %29, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !170
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds i8, ptr %28, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !170
  %58 = zext i8 %57 to i32
  %59 = mul nsw i32 %58, %9
  %60 = ashr i32 %59, 8
  %61 = add nsw i32 %60, %55
  %62 = tail call fastcc i32 @min_ii(i32 noundef %61, i32 noundef 255) #22
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %63, ptr %64, align 1, !tbaa !170
  %65 = getelementptr inbounds i8, ptr %29, i64 3
  %66 = load i8, ptr %65, align 1, !tbaa !170
  %67 = getelementptr inbounds i8, ptr %27, i64 3
  store i8 %66, ptr %67, align 1, !tbaa !170
  %68 = getelementptr inbounds i8, ptr %29, i64 4
  %69 = getelementptr inbounds i8, ptr %28, i64 4
  %70 = getelementptr inbounds i8, ptr %27, i64 4
  %71 = icmp eq i32 %31, 0
  br i1 %71, label %72, label %26, !llvm.loop !232

72:                                               ; preds = %26
  %73 = icmp eq i32 %25, 1
  br i1 %73, label %123, label %76

74:                                               ; preds = %21
  %75 = icmp eq i32 %25, 1
  br i1 %75, label %123, label %15

76:                                               ; preds = %72
  br i1 %14, label %15, label %77

77:                                               ; preds = %76, %77
  %78 = phi ptr [ %121, %77 ], [ %70, %76 ]
  %79 = phi ptr [ %120, %77 ], [ %69, %76 ]
  %80 = phi ptr [ %119, %77 ], [ %68, %76 ]
  %81 = phi i32 [ %82, %77 ], [ %2, %76 ]
  %82 = add nsw i32 %81, -1
  %83 = load i8, ptr %80, align 1, !tbaa !170
  %84 = zext i8 %83 to i32
  %85 = load i8, ptr %79, align 1, !tbaa !170
  %86 = zext i8 %85 to i32
  %87 = mul nsw i32 %86, %11
  %88 = ashr i32 %87, 8
  %89 = add nsw i32 %88, %84
  %90 = tail call fastcc i32 @min_ii(i32 noundef %89, i32 noundef 255) #22
  %91 = trunc i32 %90 to i8
  store i8 %91, ptr %78, align 1, !tbaa !170
  %92 = getelementptr inbounds i8, ptr %80, i64 1
  %93 = load i8, ptr %92, align 1, !tbaa !170
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds i8, ptr %79, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !170
  %97 = zext i8 %96 to i32
  %98 = mul nsw i32 %97, %11
  %99 = ashr i32 %98, 8
  %100 = add nsw i32 %99, %94
  %101 = tail call fastcc i32 @min_ii(i32 noundef %100, i32 noundef 255) #22
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds i8, ptr %78, i64 1
  store i8 %102, ptr %103, align 1, !tbaa !170
  %104 = getelementptr inbounds i8, ptr %80, i64 2
  %105 = load i8, ptr %104, align 1, !tbaa !170
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds i8, ptr %79, i64 2
  %108 = load i8, ptr %107, align 1, !tbaa !170
  %109 = zext i8 %108 to i32
  %110 = mul nsw i32 %109, %11
  %111 = ashr i32 %110, 8
  %112 = add nsw i32 %111, %106
  %113 = tail call fastcc i32 @min_ii(i32 noundef %112, i32 noundef 255) #22
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds i8, ptr %78, i64 2
  store i8 %114, ptr %115, align 1, !tbaa !170
  %116 = getelementptr inbounds i8, ptr %80, i64 3
  %117 = load i8, ptr %116, align 1, !tbaa !170
  %118 = getelementptr inbounds i8, ptr %78, i64 3
  store i8 %117, ptr %118, align 1, !tbaa !170
  %119 = getelementptr inbounds i8, ptr %80, i64 4
  %120 = getelementptr inbounds i8, ptr %79, i64 4
  %121 = getelementptr inbounds i8, ptr %78, i64 4
  %122 = icmp eq i32 %82, 0
  br i1 %122, label %15, label %77, !llvm.loop !233

123:                                              ; preds = %15, %72, %74, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !234 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_sub_effect_float(float noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #7 !PGOFuncName !235 {
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %97, label %8

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 0
  %10 = fsub float 1.000000e+00, %0
  br label %17

11:                                               ; preds = %62, %59, %61
  %12 = phi ptr [ %53, %61 ], [ %20, %59 ], [ %93, %62 ]
  %13 = phi ptr [ %54, %61 ], [ %19, %59 ], [ %94, %62 ]
  %14 = phi ptr [ %55, %61 ], [ %18, %59 ], [ %95, %62 ]
  %15 = add nsw i32 %21, -2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %97, label %17, !llvm.loop !236

17:                                               ; preds = %8, %11
  %18 = phi ptr [ %5, %8 ], [ %14, %11 ]
  %19 = phi ptr [ %4, %8 ], [ %13, %11 ]
  %20 = phi ptr [ %3, %8 ], [ %12, %11 ]
  %21 = phi i32 [ %2, %8 ], [ %15, %11 ]
  br i1 %9, label %59, label %22

22:                                               ; preds = %17, %22
  %23 = phi ptr [ %55, %22 ], [ %18, %17 ]
  %24 = phi ptr [ %54, %22 ], [ %19, %17 ]
  %25 = phi ptr [ %53, %22 ], [ %20, %17 ]
  %26 = phi i32 [ %27, %22 ], [ %1, %17 ]
  %27 = add nsw i32 %26, -1
  %28 = getelementptr inbounds float, ptr %25, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !54
  %30 = fneg float %29
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %10, float 1.000000e+00)
  %32 = load float, ptr %25, align 4, !tbaa !54
  %33 = load float, ptr %24, align 4, !tbaa !54
  %34 = fneg float %31
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %33, float %32)
  %36 = tail call fastcc float @max_ff(float noundef %35) #22
  store float %36, ptr %23, align 4, !tbaa !54
  %37 = getelementptr inbounds float, ptr %25, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !54
  %39 = getelementptr inbounds float, ptr %24, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !54
  %41 = tail call float @llvm.fmuladd.f32(float %34, float %40, float %38)
  %42 = tail call fastcc float @max_ff(float noundef %41) #22
  %43 = getelementptr inbounds float, ptr %23, i64 1
  store float %42, ptr %43, align 4, !tbaa !54
  %44 = getelementptr inbounds float, ptr %25, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !54
  %46 = getelementptr inbounds float, ptr %24, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !54
  %48 = tail call float @llvm.fmuladd.f32(float %34, float %47, float %45)
  %49 = tail call fastcc float @max_ff(float noundef %48) #22
  %50 = getelementptr inbounds float, ptr %23, i64 2
  store float %49, ptr %50, align 4, !tbaa !54
  %51 = load float, ptr %28, align 4, !tbaa !54
  %52 = getelementptr inbounds float, ptr %23, i64 3
  store float %51, ptr %52, align 4, !tbaa !54
  %53 = getelementptr inbounds float, ptr %25, i64 4
  %54 = getelementptr inbounds float, ptr %24, i64 4
  %55 = getelementptr inbounds float, ptr %23, i64 4
  %56 = icmp eq i32 %27, 0
  br i1 %56, label %57, label %22, !llvm.loop !237

57:                                               ; preds = %22
  %58 = icmp eq i32 %21, 1
  br i1 %58, label %97, label %61

59:                                               ; preds = %17
  %60 = icmp eq i32 %21, 1
  br i1 %60, label %97, label %11

61:                                               ; preds = %57
  br i1 %9, label %11, label %62

62:                                               ; preds = %61, %62
  %63 = phi ptr [ %95, %62 ], [ %55, %61 ]
  %64 = phi ptr [ %94, %62 ], [ %54, %61 ]
  %65 = phi ptr [ %93, %62 ], [ %53, %61 ]
  %66 = phi i32 [ %67, %62 ], [ %1, %61 ]
  %67 = add nsw i32 %66, -1
  %68 = getelementptr inbounds float, ptr %65, i64 3
  %69 = load float, ptr %68, align 4, !tbaa !54
  %70 = fneg float %69
  %71 = tail call float @llvm.fmuladd.f32(float %70, float %10, float 1.000000e+00)
  %72 = load float, ptr %65, align 4, !tbaa !54
  %73 = load float, ptr %64, align 4, !tbaa !54
  %74 = fneg float %71
  %75 = tail call float @llvm.fmuladd.f32(float %74, float %73, float %72)
  %76 = tail call fastcc float @max_ff(float noundef %75) #22
  store float %76, ptr %63, align 4, !tbaa !54
  %77 = getelementptr inbounds float, ptr %65, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !54
  %79 = getelementptr inbounds float, ptr %64, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !54
  %81 = tail call float @llvm.fmuladd.f32(float %74, float %80, float %78)
  %82 = tail call fastcc float @max_ff(float noundef %81) #22
  %83 = getelementptr inbounds float, ptr %63, i64 1
  store float %82, ptr %83, align 4, !tbaa !54
  %84 = getelementptr inbounds float, ptr %65, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !54
  %86 = getelementptr inbounds float, ptr %64, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !54
  %88 = tail call float @llvm.fmuladd.f32(float %74, float %87, float %85)
  %89 = tail call fastcc float @max_ff(float noundef %88) #22
  %90 = getelementptr inbounds float, ptr %63, i64 2
  store float %89, ptr %90, align 4, !tbaa !54
  %91 = load float, ptr %68, align 4, !tbaa !54
  %92 = getelementptr inbounds float, ptr %63, i64 3
  store float %91, ptr %92, align 4, !tbaa !54
  %93 = getelementptr inbounds float, ptr %65, i64 4
  %94 = getelementptr inbounds float, ptr %64, i64 4
  %95 = getelementptr inbounds float, ptr %63, i64 4
  %96 = icmp eq i32 %67, 0
  br i1 %96, label %11, label %62, !llvm.loop !238

97:                                               ; preds = %11, %57, %59, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_sub_effect_byte(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !239 {
  %8 = fmul float %0, 2.560000e+02
  %9 = fptosi float %8 to i32
  %10 = fmul float %1, 2.560000e+02
  %11 = fptosi float %10 to i32
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %123, label %13

13:                                               ; preds = %7
  %14 = icmp eq i32 %2, 0
  br label %21

15:                                               ; preds = %77, %74, %76
  %16 = phi ptr [ %68, %76 ], [ %24, %74 ], [ %119, %77 ]
  %17 = phi ptr [ %69, %76 ], [ %23, %74 ], [ %120, %77 ]
  %18 = phi ptr [ %70, %76 ], [ %22, %74 ], [ %121, %77 ]
  %19 = add nsw i32 %25, -2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %123, label %21, !llvm.loop !240

21:                                               ; preds = %13, %15
  %22 = phi ptr [ %6, %13 ], [ %18, %15 ]
  %23 = phi ptr [ %5, %13 ], [ %17, %15 ]
  %24 = phi ptr [ %4, %13 ], [ %16, %15 ]
  %25 = phi i32 [ %3, %13 ], [ %19, %15 ]
  br i1 %14, label %74, label %26

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %70, %26 ], [ %22, %21 ]
  %28 = phi ptr [ %69, %26 ], [ %23, %21 ]
  %29 = phi ptr [ %68, %26 ], [ %24, %21 ]
  %30 = phi i32 [ %31, %26 ], [ %2, %21 ]
  %31 = add nsw i32 %30, -1
  %32 = load i8, ptr %29, align 1, !tbaa !170
  %33 = zext i8 %32 to i32
  %34 = load i8, ptr %28, align 1, !tbaa !170
  %35 = zext i8 %34 to i32
  %36 = mul nsw i32 %35, %9
  %37 = ashr i32 %36, 8
  %38 = sub nsw i32 %33, %37
  %39 = tail call fastcc i32 @max_ii(i32 noundef %38) #22
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr %27, align 1, !tbaa !170
  %41 = getelementptr inbounds i8, ptr %29, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !170
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds i8, ptr %28, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !170
  %46 = zext i8 %45 to i32
  %47 = mul nsw i32 %46, %9
  %48 = ashr i32 %47, 8
  %49 = sub nsw i32 %43, %48
  %50 = tail call fastcc i32 @max_ii(i32 noundef %49) #22
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %51, ptr %52, align 1, !tbaa !170
  %53 = getelementptr inbounds i8, ptr %29, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !170
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds i8, ptr %28, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !170
  %58 = zext i8 %57 to i32
  %59 = mul nsw i32 %58, %9
  %60 = ashr i32 %59, 8
  %61 = sub nsw i32 %55, %60
  %62 = tail call fastcc i32 @max_ii(i32 noundef %61) #22
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %63, ptr %64, align 1, !tbaa !170
  %65 = getelementptr inbounds i8, ptr %29, i64 3
  %66 = load i8, ptr %65, align 1, !tbaa !170
  %67 = getelementptr inbounds i8, ptr %27, i64 3
  store i8 %66, ptr %67, align 1, !tbaa !170
  %68 = getelementptr inbounds i8, ptr %29, i64 4
  %69 = getelementptr inbounds i8, ptr %28, i64 4
  %70 = getelementptr inbounds i8, ptr %27, i64 4
  %71 = icmp eq i32 %31, 0
  br i1 %71, label %72, label %26, !llvm.loop !241

72:                                               ; preds = %26
  %73 = icmp eq i32 %25, 1
  br i1 %73, label %123, label %76

74:                                               ; preds = %21
  %75 = icmp eq i32 %25, 1
  br i1 %75, label %123, label %15

76:                                               ; preds = %72
  br i1 %14, label %15, label %77

77:                                               ; preds = %76, %77
  %78 = phi ptr [ %121, %77 ], [ %70, %76 ]
  %79 = phi ptr [ %120, %77 ], [ %69, %76 ]
  %80 = phi ptr [ %119, %77 ], [ %68, %76 ]
  %81 = phi i32 [ %82, %77 ], [ %2, %76 ]
  %82 = add nsw i32 %81, -1
  %83 = load i8, ptr %80, align 1, !tbaa !170
  %84 = zext i8 %83 to i32
  %85 = load i8, ptr %79, align 1, !tbaa !170
  %86 = zext i8 %85 to i32
  %87 = mul nsw i32 %86, %11
  %88 = ashr i32 %87, 8
  %89 = sub nsw i32 %84, %88
  %90 = tail call fastcc i32 @max_ii(i32 noundef %89) #22
  %91 = trunc i32 %90 to i8
  store i8 %91, ptr %78, align 1, !tbaa !170
  %92 = getelementptr inbounds i8, ptr %80, i64 1
  %93 = load i8, ptr %92, align 1, !tbaa !170
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds i8, ptr %79, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !170
  %97 = zext i8 %96 to i32
  %98 = mul nsw i32 %97, %11
  %99 = ashr i32 %98, 8
  %100 = sub nsw i32 %94, %99
  %101 = tail call fastcc i32 @max_ii(i32 noundef %100) #22
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds i8, ptr %78, i64 1
  store i8 %102, ptr %103, align 1, !tbaa !170
  %104 = getelementptr inbounds i8, ptr %80, i64 2
  %105 = load i8, ptr %104, align 1, !tbaa !170
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds i8, ptr %79, i64 2
  %108 = load i8, ptr %107, align 1, !tbaa !170
  %109 = zext i8 %108 to i32
  %110 = mul nsw i32 %109, %11
  %111 = ashr i32 %110, 8
  %112 = sub nsw i32 %106, %111
  %113 = tail call fastcc i32 @max_ii(i32 noundef %112) #22
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds i8, ptr %78, i64 2
  store i8 %114, ptr %115, align 1, !tbaa !170
  %116 = getelementptr inbounds i8, ptr %80, i64 3
  %117 = load i8, ptr %116, align 1, !tbaa !170
  %118 = getelementptr inbounds i8, ptr %78, i64 3
  store i8 %117, ptr %118, align 1, !tbaa !170
  %119 = getelementptr inbounds i8, ptr %80, i64 4
  %120 = getelementptr inbounds i8, ptr %79, i64 4
  %121 = getelementptr inbounds i8, ptr %78, i64 4
  %122 = icmp eq i32 %82, 0
  br i1 %122, label %15, label %77, !llvm.loop !242

123:                                              ; preds = %15, %72, %74, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #6 !PGOFuncName !243 {
  %2 = fcmp ogt float %0, 0.000000e+00
  %3 = select i1 %2, float %0, float 0.000000e+00
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #6 !PGOFuncName !244 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_mul_effect_float(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !245 {
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %105, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %2, 0
  br label %17

11:                                               ; preds = %66, %63, %65
  %12 = phi ptr [ %57, %65 ], [ %20, %63 ], [ %101, %66 ]
  %13 = phi ptr [ %58, %65 ], [ %19, %63 ], [ %102, %66 ]
  %14 = phi ptr [ %59, %65 ], [ %18, %63 ], [ %103, %66 ]
  %15 = add nsw i32 %21, -2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %105, label %17, !llvm.loop !246

17:                                               ; preds = %9, %11
  %18 = phi ptr [ %6, %9 ], [ %14, %11 ]
  %19 = phi ptr [ %5, %9 ], [ %13, %11 ]
  %20 = phi ptr [ %4, %9 ], [ %12, %11 ]
  %21 = phi i32 [ %3, %9 ], [ %15, %11 ]
  br i1 %10, label %63, label %22

22:                                               ; preds = %17, %22
  %23 = phi ptr [ %59, %22 ], [ %18, %17 ]
  %24 = phi ptr [ %58, %22 ], [ %19, %17 ]
  %25 = phi ptr [ %57, %22 ], [ %20, %17 ]
  %26 = phi i32 [ %27, %22 ], [ %2, %17 ]
  %27 = add nsw i32 %26, -1
  %28 = load float, ptr %25, align 4, !tbaa !54
  %29 = fmul float %28, %0
  %30 = load float, ptr %24, align 4, !tbaa !54
  %31 = fadd float %30, -1.000000e+00
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %31, float %28)
  store float %32, ptr %23, align 4, !tbaa !54
  %33 = getelementptr inbounds float, ptr %25, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !54
  %35 = fmul float %34, %0
  %36 = getelementptr inbounds float, ptr %24, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !54
  %38 = fadd float %37, -1.000000e+00
  %39 = tail call float @llvm.fmuladd.f32(float %35, float %38, float %34)
  %40 = getelementptr inbounds float, ptr %23, i64 1
  store float %39, ptr %40, align 4, !tbaa !54
  %41 = getelementptr inbounds float, ptr %25, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !54
  %43 = fmul float %42, %0
  %44 = getelementptr inbounds float, ptr %24, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !54
  %46 = fadd float %45, -1.000000e+00
  %47 = tail call float @llvm.fmuladd.f32(float %43, float %46, float %42)
  %48 = getelementptr inbounds float, ptr %23, i64 2
  store float %47, ptr %48, align 4, !tbaa !54
  %49 = getelementptr inbounds float, ptr %25, i64 3
  %50 = load float, ptr %49, align 4, !tbaa !54
  %51 = fmul float %50, %0
  %52 = getelementptr inbounds float, ptr %24, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !54
  %54 = fadd float %53, -1.000000e+00
  %55 = tail call float @llvm.fmuladd.f32(float %51, float %54, float %50)
  %56 = getelementptr inbounds float, ptr %23, i64 3
  store float %55, ptr %56, align 4, !tbaa !54
  %57 = getelementptr inbounds float, ptr %25, i64 4
  %58 = getelementptr inbounds float, ptr %24, i64 4
  %59 = getelementptr inbounds float, ptr %23, i64 4
  %60 = icmp eq i32 %27, 0
  br i1 %60, label %61, label %22, !llvm.loop !247

61:                                               ; preds = %22
  %62 = icmp eq i32 %21, 1
  br i1 %62, label %105, label %65

63:                                               ; preds = %17
  %64 = icmp eq i32 %21, 1
  br i1 %64, label %105, label %11

65:                                               ; preds = %61
  br i1 %10, label %11, label %66

66:                                               ; preds = %65, %66
  %67 = phi ptr [ %103, %66 ], [ %59, %65 ]
  %68 = phi ptr [ %102, %66 ], [ %58, %65 ]
  %69 = phi ptr [ %101, %66 ], [ %57, %65 ]
  %70 = phi i32 [ %71, %66 ], [ %2, %65 ]
  %71 = add nsw i32 %70, -1
  %72 = load float, ptr %69, align 4, !tbaa !54
  %73 = fmul float %72, %1
  %74 = load float, ptr %68, align 4, !tbaa !54
  %75 = fadd float %74, -1.000000e+00
  %76 = tail call float @llvm.fmuladd.f32(float %73, float %75, float %72)
  store float %76, ptr %67, align 4, !tbaa !54
  %77 = getelementptr inbounds float, ptr %69, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !54
  %79 = fmul float %78, %1
  %80 = getelementptr inbounds float, ptr %68, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !54
  %82 = fadd float %81, -1.000000e+00
  %83 = tail call float @llvm.fmuladd.f32(float %79, float %82, float %78)
  %84 = getelementptr inbounds float, ptr %67, i64 1
  store float %83, ptr %84, align 4, !tbaa !54
  %85 = getelementptr inbounds float, ptr %69, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !54
  %87 = fmul float %86, %1
  %88 = getelementptr inbounds float, ptr %68, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !54
  %90 = fadd float %89, -1.000000e+00
  %91 = tail call float @llvm.fmuladd.f32(float %87, float %90, float %86)
  %92 = getelementptr inbounds float, ptr %67, i64 2
  store float %91, ptr %92, align 4, !tbaa !54
  %93 = getelementptr inbounds float, ptr %69, i64 3
  %94 = load float, ptr %93, align 4, !tbaa !54
  %95 = fmul float %94, %1
  %96 = getelementptr inbounds float, ptr %68, i64 3
  %97 = load float, ptr %96, align 4, !tbaa !54
  %98 = fadd float %97, -1.000000e+00
  %99 = tail call float @llvm.fmuladd.f32(float %95, float %98, float %94)
  %100 = getelementptr inbounds float, ptr %67, i64 3
  store float %99, ptr %100, align 4, !tbaa !54
  %101 = getelementptr inbounds float, ptr %69, i64 4
  %102 = getelementptr inbounds float, ptr %68, i64 4
  %103 = getelementptr inbounds float, ptr %67, i64 4
  %104 = icmp eq i32 %71, 0
  br i1 %104, label %11, label %66, !llvm.loop !248

105:                                              ; preds = %11, %61, %63, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_mul_effect_byte(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !249 {
  %8 = fmul float %0, 2.560000e+02
  %9 = fptosi float %8 to i32
  %10 = fmul float %1, 2.560000e+02
  %11 = fptosi float %10 to i32
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %149, label %13

13:                                               ; preds = %7
  %14 = icmp eq i32 %2, 0
  br label %21

15:                                               ; preds = %90, %87, %89
  %16 = phi ptr [ %81, %89 ], [ %24, %87 ], [ %145, %90 ]
  %17 = phi ptr [ %82, %89 ], [ %23, %87 ], [ %146, %90 ]
  %18 = phi ptr [ %83, %89 ], [ %22, %87 ], [ %147, %90 ]
  %19 = add nsw i32 %25, -2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %149, label %21, !llvm.loop !250

21:                                               ; preds = %13, %15
  %22 = phi ptr [ %6, %13 ], [ %18, %15 ]
  %23 = phi ptr [ %5, %13 ], [ %17, %15 ]
  %24 = phi ptr [ %4, %13 ], [ %16, %15 ]
  %25 = phi i32 [ %3, %13 ], [ %19, %15 ]
  br i1 %14, label %87, label %26

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %83, %26 ], [ %22, %21 ]
  %28 = phi ptr [ %82, %26 ], [ %23, %21 ]
  %29 = phi ptr [ %81, %26 ], [ %24, %21 ]
  %30 = phi i32 [ %31, %26 ], [ %2, %21 ]
  %31 = add nsw i32 %30, -1
  %32 = load i8, ptr %29, align 1, !tbaa !170
  %33 = zext i8 %32 to i32
  %34 = mul nsw i32 %33, %9
  %35 = load i8, ptr %28, align 1, !tbaa !170
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, 16776961
  %38 = mul i32 %34, %37
  %39 = lshr i32 %38, 16
  %40 = trunc i32 %39 to i8
  %41 = add i8 %32, %40
  store i8 %41, ptr %27, align 1, !tbaa !170
  %42 = getelementptr inbounds i8, ptr %29, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !170
  %44 = zext i8 %43 to i32
  %45 = mul nsw i32 %44, %9
  %46 = getelementptr inbounds i8, ptr %28, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !170
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %48, 16776961
  %50 = mul i32 %45, %49
  %51 = lshr i32 %50, 16
  %52 = trunc i32 %51 to i8
  %53 = add i8 %43, %52
  %54 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %53, ptr %54, align 1, !tbaa !170
  %55 = getelementptr inbounds i8, ptr %29, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !170
  %57 = zext i8 %56 to i32
  %58 = mul nsw i32 %57, %9
  %59 = getelementptr inbounds i8, ptr %28, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !170
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %61, 16776961
  %63 = mul i32 %58, %62
  %64 = lshr i32 %63, 16
  %65 = trunc i32 %64 to i8
  %66 = add i8 %56, %65
  %67 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %66, ptr %67, align 1, !tbaa !170
  %68 = getelementptr inbounds i8, ptr %29, i64 3
  %69 = load i8, ptr %68, align 1, !tbaa !170
  %70 = zext i8 %69 to i32
  %71 = mul nsw i32 %70, %9
  %72 = getelementptr inbounds i8, ptr %28, i64 3
  %73 = load i8, ptr %72, align 1, !tbaa !170
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %74, 16776961
  %76 = mul i32 %71, %75
  %77 = lshr i32 %76, 16
  %78 = trunc i32 %77 to i8
  %79 = add i8 %69, %78
  %80 = getelementptr inbounds i8, ptr %27, i64 3
  store i8 %79, ptr %80, align 1, !tbaa !170
  %81 = getelementptr inbounds i8, ptr %29, i64 4
  %82 = getelementptr inbounds i8, ptr %28, i64 4
  %83 = getelementptr inbounds i8, ptr %27, i64 4
  %84 = icmp eq i32 %31, 0
  br i1 %84, label %85, label %26, !llvm.loop !251

85:                                               ; preds = %26
  %86 = icmp eq i32 %25, 1
  br i1 %86, label %149, label %89

87:                                               ; preds = %21
  %88 = icmp eq i32 %25, 1
  br i1 %88, label %149, label %15

89:                                               ; preds = %85
  br i1 %14, label %15, label %90

90:                                               ; preds = %89, %90
  %91 = phi ptr [ %147, %90 ], [ %83, %89 ]
  %92 = phi ptr [ %146, %90 ], [ %82, %89 ]
  %93 = phi ptr [ %145, %90 ], [ %81, %89 ]
  %94 = phi i32 [ %95, %90 ], [ %2, %89 ]
  %95 = add nsw i32 %94, -1
  %96 = load i8, ptr %93, align 1, !tbaa !170
  %97 = zext i8 %96 to i32
  %98 = mul nsw i32 %97, %11
  %99 = load i8, ptr %92, align 1, !tbaa !170
  %100 = zext i8 %99 to i32
  %101 = add nuw nsw i32 %100, 16776961
  %102 = mul i32 %98, %101
  %103 = lshr i32 %102, 16
  %104 = trunc i32 %103 to i8
  %105 = add i8 %96, %104
  store i8 %105, ptr %91, align 1, !tbaa !170
  %106 = getelementptr inbounds i8, ptr %93, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !170
  %108 = zext i8 %107 to i32
  %109 = mul nsw i32 %108, %11
  %110 = getelementptr inbounds i8, ptr %92, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !170
  %112 = zext i8 %111 to i32
  %113 = add nuw nsw i32 %112, 16776961
  %114 = mul i32 %109, %113
  %115 = lshr i32 %114, 16
  %116 = trunc i32 %115 to i8
  %117 = add i8 %107, %116
  %118 = getelementptr inbounds i8, ptr %91, i64 1
  store i8 %117, ptr %118, align 1, !tbaa !170
  %119 = getelementptr inbounds i8, ptr %93, i64 2
  %120 = load i8, ptr %119, align 1, !tbaa !170
  %121 = zext i8 %120 to i32
  %122 = mul nsw i32 %121, %11
  %123 = getelementptr inbounds i8, ptr %92, i64 2
  %124 = load i8, ptr %123, align 1, !tbaa !170
  %125 = zext i8 %124 to i32
  %126 = add nuw nsw i32 %125, 16776961
  %127 = mul i32 %122, %126
  %128 = lshr i32 %127, 16
  %129 = trunc i32 %128 to i8
  %130 = add i8 %120, %129
  %131 = getelementptr inbounds i8, ptr %91, i64 2
  store i8 %130, ptr %131, align 1, !tbaa !170
  %132 = getelementptr inbounds i8, ptr %93, i64 3
  %133 = load i8, ptr %132, align 1, !tbaa !170
  %134 = zext i8 %133 to i32
  %135 = mul nsw i32 %134, %11
  %136 = getelementptr inbounds i8, ptr %92, i64 3
  %137 = load i8, ptr %136, align 1, !tbaa !170
  %138 = zext i8 %137 to i32
  %139 = add nuw nsw i32 %138, 16776961
  %140 = mul i32 %135, %139
  %141 = lshr i32 %140, 16
  %142 = trunc i32 %141 to i8
  %143 = add i8 %133, %142
  %144 = getelementptr inbounds i8, ptr %91, i64 3
  store i8 %143, ptr %144, align 1, !tbaa !170
  %145 = getelementptr inbounds i8, ptr %93, i64 4
  %146 = getelementptr inbounds i8, ptr %92, i64 4
  %147 = getelementptr inbounds i8, ptr %91, i64 4
  %148 = icmp eq i32 %95, 0
  br i1 %148, label %15, label %90, !llvm.loop !252

149:                                              ; preds = %15, %85, %87, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_alphaover_effect_float(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !253 {
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %117, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %2, 0
  %11 = fneg float %0
  %12 = fcmp ugt float %0, 0.000000e+00
  %13 = fneg float %1
  %14 = fcmp ugt float %1, 0.000000e+00
  br label %21

15:                                               ; preds = %112, %71, %73
  %16 = phi ptr [ %65, %73 ], [ %24, %71 ], [ %113, %112 ]
  %17 = phi ptr [ %66, %73 ], [ %23, %71 ], [ %114, %112 ]
  %18 = phi ptr [ %67, %73 ], [ %22, %71 ], [ %115, %112 ]
  %19 = add nsw i32 %25, -2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %117, label %21, !llvm.loop !254

21:                                               ; preds = %9, %15
  %22 = phi ptr [ %6, %9 ], [ %18, %15 ]
  %23 = phi ptr [ %5, %9 ], [ %17, %15 ]
  %24 = phi ptr [ %4, %9 ], [ %16, %15 ]
  %25 = phi i32 [ %3, %9 ], [ %19, %15 ]
  br i1 %10, label %71, label %26

26:                                               ; preds = %21, %64
  %27 = phi i32 [ %31, %64 ], [ %2, %21 ]
  %28 = phi ptr [ %67, %64 ], [ %22, %21 ]
  %29 = phi ptr [ %66, %64 ], [ %23, %21 ]
  %30 = phi ptr [ %65, %64 ], [ %24, %21 ]
  %31 = add nsw i32 %27, -1
  %32 = getelementptr inbounds float, ptr %30, i64 3
  %33 = load float, ptr %32, align 4, !tbaa !54
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
  %40 = load float, ptr %30, align 4, !tbaa !54
  %41 = load float, ptr %29, align 4, !tbaa !54
  %42 = fmul float %34, %41
  %43 = tail call float @llvm.fmuladd.f32(float %0, float %40, float %42)
  store float %43, ptr %28, align 4, !tbaa !54
  %44 = getelementptr inbounds float, ptr %30, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !54
  %46 = getelementptr inbounds float, ptr %29, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !54
  %48 = fmul float %34, %47
  %49 = tail call float @llvm.fmuladd.f32(float %0, float %45, float %48)
  %50 = getelementptr inbounds float, ptr %28, i64 1
  store float %49, ptr %50, align 4, !tbaa !54
  %51 = getelementptr inbounds float, ptr %30, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !54
  %53 = getelementptr inbounds float, ptr %29, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !54
  %55 = fmul float %34, %54
  %56 = tail call float @llvm.fmuladd.f32(float %0, float %52, float %55)
  %57 = getelementptr inbounds float, ptr %28, i64 2
  store float %56, ptr %57, align 4, !tbaa !54
  %58 = load float, ptr %32, align 4, !tbaa !54
  %59 = getelementptr inbounds float, ptr %29, i64 3
  %60 = load float, ptr %59, align 4, !tbaa !54
  %61 = fmul float %34, %60
  %62 = tail call float @llvm.fmuladd.f32(float %0, float %58, float %61)
  %63 = getelementptr inbounds float, ptr %28, i64 3
  store float %62, ptr %63, align 4, !tbaa !54
  br label %64

64:                                               ; preds = %38, %39, %35
  %65 = getelementptr inbounds float, ptr %30, i64 4
  %66 = getelementptr inbounds float, ptr %29, i64 4
  %67 = getelementptr inbounds float, ptr %28, i64 4
  %68 = icmp eq i32 %31, 0
  br i1 %68, label %69, label %26, !llvm.loop !255

69:                                               ; preds = %64
  %70 = icmp eq i32 %25, 1
  br i1 %70, label %117, label %73

71:                                               ; preds = %21
  %72 = icmp eq i32 %25, 1
  br i1 %72, label %117, label %15

73:                                               ; preds = %69
  br i1 %10, label %15, label %74

74:                                               ; preds = %73, %112
  %75 = phi i32 [ %79, %112 ], [ %2, %73 ]
  %76 = phi ptr [ %115, %112 ], [ %67, %73 ]
  %77 = phi ptr [ %114, %112 ], [ %66, %73 ]
  %78 = phi ptr [ %113, %112 ], [ %65, %73 ]
  %79 = add nsw i32 %75, -1
  %80 = getelementptr inbounds float, ptr %78, i64 3
  %81 = load float, ptr %80, align 4, !tbaa !54
  %82 = tail call float @llvm.fmuladd.f32(float %13, float %81, float 1.000000e+00)
  br i1 %14, label %84, label %83

83:                                               ; preds = %74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %76, ptr noundef nonnull align 4 dereferenceable(16) %77, i64 16, i1 false)
  br label %112

84:                                               ; preds = %74
  %85 = fcmp ugt float %82, 0.000000e+00
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %76, ptr noundef nonnull align 4 dereferenceable(16) %78, i64 16, i1 false)
  br label %112

87:                                               ; preds = %84
  %88 = load float, ptr %78, align 4, !tbaa !54
  %89 = load float, ptr %77, align 4, !tbaa !54
  %90 = fmul float %82, %89
  %91 = tail call float @llvm.fmuladd.f32(float %1, float %88, float %90)
  store float %91, ptr %76, align 4, !tbaa !54
  %92 = getelementptr inbounds float, ptr %78, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !54
  %94 = getelementptr inbounds float, ptr %77, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !54
  %96 = fmul float %82, %95
  %97 = tail call float @llvm.fmuladd.f32(float %1, float %93, float %96)
  %98 = getelementptr inbounds float, ptr %76, i64 1
  store float %97, ptr %98, align 4, !tbaa !54
  %99 = getelementptr inbounds float, ptr %78, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !54
  %101 = getelementptr inbounds float, ptr %77, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !54
  %103 = fmul float %82, %102
  %104 = tail call float @llvm.fmuladd.f32(float %1, float %100, float %103)
  %105 = getelementptr inbounds float, ptr %76, i64 2
  store float %104, ptr %105, align 4, !tbaa !54
  %106 = load float, ptr %80, align 4, !tbaa !54
  %107 = getelementptr inbounds float, ptr %77, i64 3
  %108 = load float, ptr %107, align 4, !tbaa !54
  %109 = fmul float %82, %108
  %110 = tail call float @llvm.fmuladd.f32(float %1, float %106, float %109)
  %111 = getelementptr inbounds float, ptr %76, i64 3
  store float %110, ptr %111, align 4, !tbaa !54
  br label %112

112:                                              ; preds = %86, %87, %83
  %113 = getelementptr inbounds float, ptr %78, i64 4
  %114 = getelementptr inbounds float, ptr %77, i64 4
  %115 = getelementptr inbounds float, ptr %76, i64 4
  %116 = icmp eq i32 %79, 0
  br i1 %116, label %15, label %74, !llvm.loop !256

117:                                              ; preds = %15, %69, %71, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_alphaover_effect_byte(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !257 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #21
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %100, label %12

12:                                               ; preds = %7
  %13 = icmp eq i32 %2, 0
  %14 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %15 = fneg float %0
  %16 = fcmp ugt float %0, 0.000000e+00
  %17 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %18 = fneg float %1
  %19 = fcmp ugt float %1, 0.000000e+00
  %20 = insertelement <4 x float> poison, float %0, i64 0
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %22 = insertelement <4 x float> poison, float %1, i64 0
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> zeroinitializer
  br label %30

24:                                               ; preds = %95, %67, %69
  %25 = phi ptr [ %61, %69 ], [ %33, %67 ], [ %96, %95 ]
  %26 = phi ptr [ %62, %69 ], [ %32, %67 ], [ %97, %95 ]
  %27 = phi ptr [ %63, %69 ], [ %31, %67 ], [ %98, %95 ]
  %28 = add nsw i32 %34, -2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %100, label %30, !llvm.loop !258

30:                                               ; preds = %12, %24
  %31 = phi ptr [ %6, %12 ], [ %27, %24 ]
  %32 = phi ptr [ %5, %12 ], [ %26, %24 ]
  %33 = phi ptr [ %4, %12 ], [ %25, %24 ]
  %34 = phi i32 [ %3, %12 ], [ %28, %24 ]
  br i1 %13, label %67, label %35

35:                                               ; preds = %30, %60
  %36 = phi i32 [ %40, %60 ], [ %2, %30 ]
  %37 = phi ptr [ %63, %60 ], [ %31, %30 ]
  %38 = phi ptr [ %62, %60 ], [ %32, %30 ]
  %39 = phi ptr [ %61, %60 ], [ %33, %30 ]
  %40 = add nsw i32 %36, -1
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %9, ptr noundef %39) #22
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %10, ptr noundef %38) #22
  %41 = load float, ptr %14, align 4, !tbaa !54
  %42 = tail call float @llvm.fmuladd.f32(float %15, float %41, float 1.000000e+00)
  br i1 %16, label %45, label %43

43:                                               ; preds = %35
  %44 = load i32, ptr %38, align 4, !tbaa !259
  store i32 %44, ptr %37, align 4, !tbaa !259
  br label %60

45:                                               ; preds = %35
  %46 = fcmp ugt float %42, 0.000000e+00
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %39, align 4, !tbaa !259
  store i32 %48, ptr %37, align 4, !tbaa !259
  br label %60

49:                                               ; preds = %45
  %50 = load <4 x float>, ptr %9, align 16
  %51 = load <2 x float>, ptr %17, align 4, !tbaa !54
  %52 = load <4 x float>, ptr %10, align 16, !tbaa !54
  %53 = insertelement <4 x float> poison, float %42, i64 0
  %54 = shufflevector <4 x float> %53, <4 x float> poison, <4 x i32> zeroinitializer
  %55 = fmul <4 x float> %54, %52
  %56 = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %57 = shufflevector <4 x float> %50, <4 x float> %56, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %58 = insertelement <4 x float> %57, float %41, i64 3
  %59 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %58, <4 x float> %55)
  store <4 x float> %59, ptr %8, align 16, !tbaa !54
  call fastcc void @premul_float_to_straight_uchar(ptr noundef %37, ptr noundef nonnull %8) #22
  br label %60

60:                                               ; preds = %47, %49, %43
  %61 = getelementptr inbounds i8, ptr %39, i64 4
  %62 = getelementptr inbounds i8, ptr %38, i64 4
  %63 = getelementptr inbounds i8, ptr %37, i64 4
  %64 = icmp eq i32 %40, 0
  br i1 %64, label %65, label %35, !llvm.loop !260

65:                                               ; preds = %60
  %66 = icmp eq i32 %34, 1
  br i1 %66, label %100, label %69

67:                                               ; preds = %30
  %68 = icmp eq i32 %34, 1
  br i1 %68, label %100, label %24

69:                                               ; preds = %65
  br i1 %13, label %24, label %70

70:                                               ; preds = %69, %95
  %71 = phi i32 [ %75, %95 ], [ %2, %69 ]
  %72 = phi ptr [ %98, %95 ], [ %63, %69 ]
  %73 = phi ptr [ %97, %95 ], [ %62, %69 ]
  %74 = phi ptr [ %96, %95 ], [ %61, %69 ]
  %75 = add nsw i32 %71, -1
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %9, ptr noundef nonnull %74) #22
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %10, ptr noundef nonnull %73) #22
  %76 = load float, ptr %14, align 4, !tbaa !54
  %77 = tail call float @llvm.fmuladd.f32(float %18, float %76, float 1.000000e+00)
  br i1 %19, label %80, label %78

78:                                               ; preds = %70
  %79 = load i32, ptr %73, align 4, !tbaa !259
  store i32 %79, ptr %72, align 4, !tbaa !259
  br label %95

80:                                               ; preds = %70
  %81 = fcmp ugt float %77, 0.000000e+00
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = load i32, ptr %74, align 4, !tbaa !259
  store i32 %83, ptr %72, align 4, !tbaa !259
  br label %95

84:                                               ; preds = %80
  %85 = load <4 x float>, ptr %9, align 16
  %86 = load <2 x float>, ptr %17, align 4, !tbaa !54
  %87 = load <4 x float>, ptr %10, align 16, !tbaa !54
  %88 = insertelement <4 x float> poison, float %77, i64 0
  %89 = shufflevector <4 x float> %88, <4 x float> poison, <4 x i32> zeroinitializer
  %90 = fmul <4 x float> %89, %87
  %91 = shufflevector <2 x float> %86, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %92 = shufflevector <4 x float> %85, <4 x float> %91, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %93 = insertelement <4 x float> %92, float %76, i64 3
  %94 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> %93, <4 x float> %90)
  store <4 x float> %94, ptr %8, align 16, !tbaa !54
  call fastcc void @premul_float_to_straight_uchar(ptr noundef nonnull %72, ptr noundef nonnull %8) #22
  br label %95

95:                                               ; preds = %82, %84, %78
  %96 = getelementptr inbounds i8, ptr %74, i64 4
  %97 = getelementptr inbounds i8, ptr %73, i64 4
  %98 = getelementptr inbounds i8, ptr %72, i64 4
  %99 = icmp eq i32 %75, 0
  br i1 %99, label %24, label %70, !llvm.loop !261

100:                                              ; preds = %24, %65, %67, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_drop_effect_float(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !262 {
  %8 = icmp sgt i32 %3, 8
  br i1 %8, label %9, label %69

9:                                                ; preds = %7
  %10 = shl nsw i32 %2, 3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds float, ptr %4, i64 %11
  %13 = icmp sgt i32 %2, 8
  %14 = add nsw i32 %3, -9
  br label %15

15:                                               ; preds = %9, %62
  %16 = phi i32 [ 1, %9 ], [ %24, %62 ]
  %17 = phi ptr [ %6, %9 ], [ %65, %62 ]
  %18 = phi ptr [ %12, %9 ], [ %66, %62 ]
  %19 = phi ptr [ %5, %9 ], [ %63, %62 ]
  %20 = phi i32 [ 0, %9 ], [ %67, %62 ]
  %21 = icmp eq i32 %16, 0
  %22 = select i1 %21, float %1, float %0
  %23 = fmul float %22, 7.000000e+01
  %24 = xor i32 %16, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %17, ptr noundef nonnull align 4 dereferenceable(128) %19, i64 128, i1 false)
  %25 = getelementptr inbounds float, ptr %19, i64 32
  %26 = getelementptr inbounds float, ptr %17, i64 32
  br i1 %13, label %27, label %62

27:                                               ; preds = %15, %27
  %28 = phi ptr [ %57, %27 ], [ %26, %15 ]
  %29 = phi ptr [ %59, %27 ], [ %18, %15 ]
  %30 = phi ptr [ %58, %27 ], [ %25, %15 ]
  %31 = phi i32 [ %60, %27 ], [ 8, %15 ]
  %32 = getelementptr inbounds float, ptr %29, i64 3
  %33 = load float, ptr %32, align 4, !tbaa !54
  %34 = fmul float %23, %33
  %35 = load float, ptr %30, align 4, !tbaa !54
  %36 = fsub float %35, %34
  %37 = fcmp olt float %36, 0.000000e+00
  %38 = select i1 %37, float 0.000000e+00, float %36
  %39 = getelementptr inbounds float, ptr %28, i64 1
  store float %38, ptr %28, align 4, !tbaa !54
  %40 = getelementptr inbounds float, ptr %30, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !54
  %42 = fsub float %41, %34
  %43 = fcmp olt float %42, 0.000000e+00
  %44 = select i1 %43, float 0.000000e+00, float %42
  %45 = getelementptr inbounds float, ptr %28, i64 2
  store float %44, ptr %39, align 4, !tbaa !54
  %46 = getelementptr inbounds float, ptr %30, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !54
  %48 = fsub float %47, %34
  %49 = fcmp olt float %48, 0.000000e+00
  %50 = select i1 %49, float 0.000000e+00, float %48
  %51 = getelementptr inbounds float, ptr %28, i64 3
  store float %50, ptr %45, align 4, !tbaa !54
  %52 = getelementptr inbounds float, ptr %30, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !54
  %54 = fsub float %53, %34
  %55 = fcmp olt float %54, 0.000000e+00
  %56 = select i1 %55, float 0.000000e+00, float %54
  %57 = getelementptr inbounds float, ptr %28, i64 4
  store float %56, ptr %51, align 4, !tbaa !54
  %58 = getelementptr inbounds float, ptr %30, i64 4
  %59 = getelementptr inbounds float, ptr %29, i64 4
  %60 = add nuw nsw i32 %31, 1
  %61 = icmp eq i32 %60, %2
  br i1 %61, label %62, label %27, !llvm.loop !263

62:                                               ; preds = %27, %15
  %63 = phi ptr [ %25, %15 ], [ %58, %27 ]
  %64 = phi ptr [ %18, %15 ], [ %59, %27 ]
  %65 = phi ptr [ %26, %15 ], [ %57, %27 ]
  %66 = getelementptr inbounds float, ptr %64, i64 32
  %67 = add nuw nsw i32 %20, 1
  %68 = icmp eq i32 %20, %14
  br i1 %68, label %69, label %15, !llvm.loop !264

69:                                               ; preds = %62, %7
  %70 = phi ptr [ %5, %7 ], [ %63, %62 ]
  %71 = phi ptr [ %6, %7 ], [ %65, %62 ]
  %72 = sext i32 %2 to i64
  %73 = shl nsw i64 %72, 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %71, ptr align 4 %70, i64 %73, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_drop_effect_byte(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !265 {
  %8 = icmp sgt i32 %3, 8
  br i1 %8, label %9, label %76

9:                                                ; preds = %7
  %10 = shl nsw i32 %2, 3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %4, i64 %11
  %13 = icmp sgt i32 %2, 8
  %14 = add nsw i32 %3, -9
  br label %15

15:                                               ; preds = %9, %69
  %16 = phi i32 [ 1, %9 ], [ %25, %69 ]
  %17 = phi ptr [ %6, %9 ], [ %72, %69 ]
  %18 = phi ptr [ %12, %9 ], [ %73, %69 ]
  %19 = phi ptr [ %5, %9 ], [ %70, %69 ]
  %20 = phi i32 [ 0, %9 ], [ %74, %69 ]
  %21 = icmp eq i32 %16, 0
  %22 = select i1 %21, float %1, float %0
  %23 = fmul float %22, 7.000000e+01
  %24 = fptosi float %23 to i32
  %25 = xor i32 %16, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %17, ptr noundef nonnull align 1 dereferenceable(32) %19, i64 32, i1 false)
  %26 = getelementptr inbounds i8, ptr %19, i64 32
  %27 = getelementptr inbounds i8, ptr %17, i64 32
  br i1 %13, label %28, label %69

28:                                               ; preds = %15, %28
  %29 = phi ptr [ %64, %28 ], [ %27, %15 ]
  %30 = phi ptr [ %66, %28 ], [ %18, %15 ]
  %31 = phi ptr [ %65, %28 ], [ %26, %15 ]
  %32 = phi i32 [ %67, %28 ], [ 8, %15 ]
  %33 = getelementptr inbounds i8, ptr %30, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !170
  %35 = zext i8 %34 to i32
  %36 = mul nsw i32 %35, %24
  %37 = ashr i32 %36, 8
  %38 = load i8, ptr %31, align 1, !tbaa !170
  %39 = zext i8 %38 to i32
  %40 = sub nsw i32 %39, %37
  %41 = tail call i32 @llvm.smax.i32(i32 %40, i32 0)
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %42, ptr %29, align 1, !tbaa !170
  %44 = getelementptr inbounds i8, ptr %31, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !170
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %46, %37
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 0)
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 %49, ptr %43, align 1, !tbaa !170
  %51 = getelementptr inbounds i8, ptr %31, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !170
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %53, %37
  %55 = tail call i32 @llvm.smax.i32(i32 %54, i32 0)
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 %56, ptr %50, align 1, !tbaa !170
  %58 = getelementptr inbounds i8, ptr %31, i64 3
  %59 = load i8, ptr %58, align 1, !tbaa !170
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %60, %37
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 0)
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %29, i64 4
  store i8 %63, ptr %57, align 1, !tbaa !170
  %65 = getelementptr inbounds i8, ptr %31, i64 4
  %66 = getelementptr inbounds i8, ptr %30, i64 4
  %67 = add nuw nsw i32 %32, 1
  %68 = icmp eq i32 %67, %2
  br i1 %68, label %69, label %28, !llvm.loop !266

69:                                               ; preds = %28, %15
  %70 = phi ptr [ %26, %15 ], [ %65, %28 ]
  %71 = phi ptr [ %18, %15 ], [ %66, %28 ]
  %72 = phi ptr [ %27, %15 ], [ %64, %28 ]
  %73 = getelementptr inbounds i8, ptr %71, i64 32
  %74 = add nuw nsw i32 %20, 1
  %75 = icmp eq i32 %20, %14
  br i1 %75, label %76, label %15, !llvm.loop !267

76:                                               ; preds = %69, %7
  %77 = phi ptr [ %5, %7 ], [ %70, %69 ]
  %78 = phi ptr [ %6, %7 ], [ %72, %69 ]
  %79 = sext i32 %2 to i64
  %80 = shl nsw i64 %79, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %78, ptr align 1 %77, i64 %80, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_alphaunder_effect_float(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !268 {
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %119, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %2, 0
  %11 = fcmp oge float %0, 1.000000e+00
  %12 = fcmp oge float %1, 1.000000e+00
  br label %19

13:                                               ; preds = %114, %71, %73
  %14 = phi ptr [ %65, %73 ], [ %22, %71 ], [ %115, %114 ]
  %15 = phi ptr [ %66, %73 ], [ %21, %71 ], [ %116, %114 ]
  %16 = phi ptr [ %67, %73 ], [ %20, %71 ], [ %117, %114 ]
  %17 = add nsw i32 %23, -2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %119, label %19, !llvm.loop !269

19:                                               ; preds = %9, %13
  %20 = phi ptr [ %6, %9 ], [ %16, %13 ]
  %21 = phi ptr [ %5, %9 ], [ %15, %13 ]
  %22 = phi ptr [ %4, %9 ], [ %14, %13 ]
  %23 = phi i32 [ %3, %9 ], [ %17, %13 ]
  br i1 %10, label %71, label %24

24:                                               ; preds = %19, %64
  %25 = phi i32 [ %29, %64 ], [ %2, %19 ]
  %26 = phi ptr [ %67, %64 ], [ %20, %19 ]
  %27 = phi ptr [ %66, %64 ], [ %21, %19 ]
  %28 = phi ptr [ %65, %64 ], [ %22, %19 ]
  %29 = add nsw i32 %25, -1
  %30 = getelementptr inbounds float, ptr %27, i64 3
  %31 = load float, ptr %30, align 4, !tbaa !54
  %32 = fcmp ole float %31, 0.000000e+00
  %33 = and i1 %11, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %28, i64 16, i1 false)
  br label %64

35:                                               ; preds = %24
  %36 = fcmp ult float %31, 1.000000e+00
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %27, i64 16, i1 false)
  br label %64

38:                                               ; preds = %35
  %39 = fsub float 1.000000e+00, %31
  %40 = fmul float %39, %0
  %41 = fcmp oeq float %40, 0.000000e+00
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %27, i64 16, i1 false)
  br label %64

43:                                               ; preds = %38
  %44 = load float, ptr %28, align 4, !tbaa !54
  %45 = load float, ptr %27, align 4, !tbaa !54
  %46 = tail call float @llvm.fmuladd.f32(float %40, float %44, float %45)
  store float %46, ptr %26, align 4, !tbaa !54
  %47 = getelementptr inbounds float, ptr %28, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !54
  %49 = getelementptr inbounds float, ptr %27, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !54
  %51 = tail call float @llvm.fmuladd.f32(float %40, float %48, float %50)
  %52 = getelementptr inbounds float, ptr %26, i64 1
  store float %51, ptr %52, align 4, !tbaa !54
  %53 = getelementptr inbounds float, ptr %28, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !54
  %55 = getelementptr inbounds float, ptr %27, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !54
  %57 = tail call float @llvm.fmuladd.f32(float %40, float %54, float %56)
  %58 = getelementptr inbounds float, ptr %26, i64 2
  store float %57, ptr %58, align 4, !tbaa !54
  %59 = getelementptr inbounds float, ptr %28, i64 3
  %60 = load float, ptr %59, align 4, !tbaa !54
  %61 = load float, ptr %30, align 4, !tbaa !54
  %62 = tail call float @llvm.fmuladd.f32(float %40, float %60, float %61)
  %63 = getelementptr inbounds float, ptr %26, i64 3
  store float %62, ptr %63, align 4, !tbaa !54
  br label %64

64:                                               ; preds = %37, %43, %42, %34
  %65 = getelementptr inbounds float, ptr %28, i64 4
  %66 = getelementptr inbounds float, ptr %27, i64 4
  %67 = getelementptr inbounds float, ptr %26, i64 4
  %68 = icmp eq i32 %29, 0
  br i1 %68, label %69, label %24, !llvm.loop !270

69:                                               ; preds = %64
  %70 = icmp eq i32 %23, 1
  br i1 %70, label %119, label %73

71:                                               ; preds = %19
  %72 = icmp eq i32 %23, 1
  br i1 %72, label %119, label %13

73:                                               ; preds = %69
  br i1 %10, label %13, label %74

74:                                               ; preds = %73, %114
  %75 = phi i32 [ %79, %114 ], [ %2, %73 ]
  %76 = phi ptr [ %117, %114 ], [ %67, %73 ]
  %77 = phi ptr [ %116, %114 ], [ %66, %73 ]
  %78 = phi ptr [ %115, %114 ], [ %65, %73 ]
  %79 = add nsw i32 %75, -1
  %80 = getelementptr inbounds float, ptr %77, i64 3
  %81 = load float, ptr %80, align 4, !tbaa !54
  %82 = fcmp ole float %81, 0.000000e+00
  %83 = and i1 %12, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %76, ptr noundef nonnull align 4 dereferenceable(16) %78, i64 16, i1 false)
  br label %114

85:                                               ; preds = %74
  %86 = fcmp ult float %81, 1.000000e+00
  br i1 %86, label %88, label %87

87:                                               ; preds = %85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %76, ptr noundef nonnull align 4 dereferenceable(16) %77, i64 16, i1 false)
  br label %114

88:                                               ; preds = %85
  %89 = fsub float 1.000000e+00, %81
  %90 = fmul float %89, %1
  %91 = fcmp oeq float %90, 0.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %76, ptr noundef nonnull align 4 dereferenceable(16) %77, i64 16, i1 false)
  br label %114

93:                                               ; preds = %88
  %94 = load float, ptr %78, align 4, !tbaa !54
  %95 = load float, ptr %77, align 4, !tbaa !54
  %96 = tail call float @llvm.fmuladd.f32(float %90, float %94, float %95)
  store float %96, ptr %76, align 4, !tbaa !54
  %97 = getelementptr inbounds float, ptr %78, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !54
  %99 = getelementptr inbounds float, ptr %77, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !54
  %101 = tail call float @llvm.fmuladd.f32(float %90, float %98, float %100)
  %102 = getelementptr inbounds float, ptr %76, i64 1
  store float %101, ptr %102, align 4, !tbaa !54
  %103 = getelementptr inbounds float, ptr %78, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !54
  %105 = getelementptr inbounds float, ptr %77, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !54
  %107 = tail call float @llvm.fmuladd.f32(float %90, float %104, float %106)
  %108 = getelementptr inbounds float, ptr %76, i64 2
  store float %107, ptr %108, align 4, !tbaa !54
  %109 = getelementptr inbounds float, ptr %78, i64 3
  %110 = load float, ptr %109, align 4, !tbaa !54
  %111 = load float, ptr %80, align 4, !tbaa !54
  %112 = tail call float @llvm.fmuladd.f32(float %90, float %110, float %111)
  %113 = getelementptr inbounds float, ptr %76, i64 3
  store float %112, ptr %113, align 4, !tbaa !54
  br label %114

114:                                              ; preds = %87, %93, %92, %84
  %115 = getelementptr inbounds float, ptr %78, i64 4
  %116 = getelementptr inbounds float, ptr %77, i64 4
  %117 = getelementptr inbounds float, ptr %76, i64 4
  %118 = icmp eq i32 %79, 0
  br i1 %118, label %13, label %74, !llvm.loop !271

119:                                              ; preds = %13, %69, %71, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_alphaunder_effect_byte(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 !PGOFuncName !272 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #21
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %106, label %12

12:                                               ; preds = %7
  %13 = icmp eq i32 %2, 0
  %14 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  %15 = fcmp oge float %0, 1.000000e+00
  %16 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 1
  %17 = fcmp oge float %1, 1.000000e+00
  br label %24

18:                                               ; preds = %101, %67, %69
  %19 = phi ptr [ %61, %69 ], [ %27, %67 ], [ %102, %101 ]
  %20 = phi ptr [ %62, %69 ], [ %26, %67 ], [ %103, %101 ]
  %21 = phi ptr [ %63, %69 ], [ %25, %67 ], [ %104, %101 ]
  %22 = add nsw i32 %28, -2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %106, label %24, !llvm.loop !273

24:                                               ; preds = %12, %18
  %25 = phi ptr [ %6, %12 ], [ %21, %18 ]
  %26 = phi ptr [ %5, %12 ], [ %20, %18 ]
  %27 = phi ptr [ %4, %12 ], [ %19, %18 ]
  %28 = phi i32 [ %3, %12 ], [ %22, %18 ]
  br i1 %13, label %67, label %29

29:                                               ; preds = %24, %60
  %30 = phi i32 [ %34, %60 ], [ %2, %24 ]
  %31 = phi ptr [ %63, %60 ], [ %25, %24 ]
  %32 = phi ptr [ %62, %60 ], [ %26, %24 ]
  %33 = phi ptr [ %61, %60 ], [ %27, %24 ]
  %34 = add nsw i32 %30, -1
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %9, ptr noundef %33) #22
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %10, ptr noundef %32) #22
  %35 = load float, ptr %14, align 4, !tbaa !54
  %36 = fcmp ole float %35, 0.000000e+00
  %37 = and i1 %15, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, ptr %33, align 4, !tbaa !259
  store i32 %39, ptr %31, align 4, !tbaa !259
  br label %60

40:                                               ; preds = %29
  %41 = fcmp ult float %35, 1.000000e+00
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %32, align 4, !tbaa !259
  store i32 %43, ptr %31, align 4, !tbaa !259
  br label %60

44:                                               ; preds = %40
  %45 = fsub float 1.000000e+00, %35
  %46 = fmul float %45, %0
  %47 = fcmp ugt float %46, 0.000000e+00
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %32, align 4, !tbaa !259
  store i32 %49, ptr %31, align 4, !tbaa !259
  br label %60

50:                                               ; preds = %44
  %51 = load <4 x float>, ptr %10, align 16
  %52 = load <2 x float>, ptr %16, align 4, !tbaa !54
  %53 = load <4 x float>, ptr %9, align 16, !tbaa !54
  %54 = insertelement <4 x float> poison, float %46, i64 0
  %55 = shufflevector <4 x float> %54, <4 x float> poison, <4 x i32> zeroinitializer
  %56 = shufflevector <2 x float> %52, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %57 = shufflevector <4 x float> %51, <4 x float> %56, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %58 = insertelement <4 x float> %57, float %35, i64 3
  %59 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %55, <4 x float> %53, <4 x float> %58)
  store <4 x float> %59, ptr %8, align 16, !tbaa !54
  call fastcc void @premul_float_to_straight_uchar(ptr noundef %31, ptr noundef nonnull %8) #22
  br label %60

60:                                               ; preds = %42, %50, %48, %38
  %61 = getelementptr inbounds i8, ptr %33, i64 4
  %62 = getelementptr inbounds i8, ptr %32, i64 4
  %63 = getelementptr inbounds i8, ptr %31, i64 4
  %64 = icmp eq i32 %34, 0
  br i1 %64, label %65, label %29, !llvm.loop !274

65:                                               ; preds = %60
  %66 = icmp eq i32 %28, 1
  br i1 %66, label %106, label %69

67:                                               ; preds = %24
  %68 = icmp eq i32 %28, 1
  br i1 %68, label %106, label %18

69:                                               ; preds = %65
  br i1 %13, label %18, label %70

70:                                               ; preds = %69, %101
  %71 = phi i32 [ %75, %101 ], [ %2, %69 ]
  %72 = phi ptr [ %104, %101 ], [ %63, %69 ]
  %73 = phi ptr [ %103, %101 ], [ %62, %69 ]
  %74 = phi ptr [ %102, %101 ], [ %61, %69 ]
  %75 = add nsw i32 %71, -1
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %9, ptr noundef nonnull %74) #22
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %10, ptr noundef nonnull %73) #22
  %76 = load float, ptr %14, align 4, !tbaa !54
  %77 = fcmp ole float %76, 0.000000e+00
  %78 = and i1 %17, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, ptr %74, align 4, !tbaa !259
  store i32 %80, ptr %72, align 4, !tbaa !259
  br label %101

81:                                               ; preds = %70
  %82 = fcmp ult float %76, 1.000000e+00
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = load i32, ptr %73, align 4, !tbaa !259
  store i32 %84, ptr %72, align 4, !tbaa !259
  br label %101

85:                                               ; preds = %81
  %86 = fsub float 1.000000e+00, %76
  %87 = fmul float %86, %1
  %88 = fcmp ugt float %87, 0.000000e+00
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load i32, ptr %73, align 4, !tbaa !259
  store i32 %90, ptr %72, align 4, !tbaa !259
  br label %101

91:                                               ; preds = %85
  %92 = load <4 x float>, ptr %10, align 16
  %93 = load <2 x float>, ptr %16, align 4, !tbaa !54
  %94 = load <4 x float>, ptr %9, align 16, !tbaa !54
  %95 = insertelement <4 x float> poison, float %87, i64 0
  %96 = shufflevector <4 x float> %95, <4 x float> poison, <4 x i32> zeroinitializer
  %97 = shufflevector <2 x float> %93, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %98 = shufflevector <4 x float> %92, <4 x float> %97, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %99 = insertelement <4 x float> %98, float %76, i64 3
  %100 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %96, <4 x float> %94, <4 x float> %99)
  store <4 x float> %100, ptr %8, align 16, !tbaa !54
  call fastcc void @premul_float_to_straight_uchar(ptr noundef nonnull %72, ptr noundef nonnull %8) #22
  br label %101

101:                                              ; preds = %83, %91, %89, %79
  %102 = getelementptr inbounds i8, ptr %74, i64 4
  %103 = getelementptr inbounds i8, ptr %73, i64 4
  %104 = getelementptr inbounds i8, ptr %72, i64 4
  %105 = icmp eq i32 %75, 0
  br i1 %105, label %18, label %70, !llvm.loop !275

106:                                              ; preds = %18, %65, %67, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_wipe_effect_float(ptr nocapture noundef readonly %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !276 {
  %8 = alloca %struct.WipeZone, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #21
  %9 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  call fastcc void @precalc_wipe_zone(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %2, i32 noundef %3) #22
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %88

12:                                               ; preds = %7
  %13 = icmp sgt i32 %2, 0
  br label %14

14:                                               ; preds = %12, %82
  %15 = phi ptr [ %6, %12 ], [ %85, %82 ]
  %16 = phi ptr [ %5, %12 ], [ %84, %82 ]
  %17 = phi ptr [ %4, %12 ], [ %83, %82 ]
  %18 = phi i32 [ 0, %12 ], [ %86, %82 ]
  br i1 %13, label %19, label %82

19:                                               ; preds = %14, %70
  %20 = phi i32 [ %80, %70 ], [ 0, %14 ]
  %21 = phi ptr [ %73, %70 ], [ %15, %14 ]
  %22 = phi ptr [ %79, %70 ], [ %16, %14 ]
  %23 = phi ptr [ %76, %70 ], [ %17, %14 ]
  %24 = call fastcc float @check_zone(ptr noundef nonnull %8, i32 noundef %20, i32 noundef %18, ptr noundef %0, float noundef %1) #22
  %25 = fcmp une float %24, 0.000000e+00
  br i1 %25, label %26, label %56

26:                                               ; preds = %19
  %27 = icmp eq ptr %23, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %26
  %29 = load float, ptr %23, align 4, !tbaa !54
  %30 = load float, ptr %22, align 4, !tbaa !54
  %31 = fsub float 1.000000e+00, %24
  %32 = fmul float %31, %30
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %24, float %32)
  store float %33, ptr %21, align 4, !tbaa !54
  %34 = getelementptr inbounds float, ptr %23, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !54
  %36 = getelementptr inbounds float, ptr %22, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !54
  %38 = fmul float %31, %37
  %39 = tail call float @llvm.fmuladd.f32(float %35, float %24, float %38)
  %40 = getelementptr inbounds float, ptr %21, i64 1
  store float %39, ptr %40, align 4, !tbaa !54
  %41 = getelementptr inbounds float, ptr %23, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !54
  %43 = getelementptr inbounds float, ptr %22, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !54
  %45 = fmul float %31, %44
  %46 = tail call float @llvm.fmuladd.f32(float %42, float %24, float %45)
  %47 = getelementptr inbounds float, ptr %21, i64 2
  store float %46, ptr %47, align 4, !tbaa !54
  %48 = getelementptr inbounds float, ptr %23, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !54
  %50 = getelementptr inbounds float, ptr %22, i64 3
  %51 = load float, ptr %50, align 4, !tbaa !54
  %52 = fmul float %31, %51
  %53 = tail call float @llvm.fmuladd.f32(float %49, float %24, float %52)
  br label %70

54:                                               ; preds = %26
  store <2 x float> zeroinitializer, ptr %21, align 4, !tbaa !54
  %55 = getelementptr inbounds float, ptr %21, i64 2
  store float 0.000000e+00, ptr %55, align 4, !tbaa !54
  br label %70

56:                                               ; preds = %19
  %57 = icmp eq ptr %22, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %56
  %59 = load float, ptr %22, align 4, !tbaa !54
  store float %59, ptr %21, align 4, !tbaa !54
  %60 = getelementptr inbounds float, ptr %22, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !54
  %62 = getelementptr inbounds float, ptr %21, i64 1
  store float %61, ptr %62, align 4, !tbaa !54
  %63 = getelementptr inbounds float, ptr %22, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !54
  %65 = getelementptr inbounds float, ptr %21, i64 2
  store float %64, ptr %65, align 4, !tbaa !54
  %66 = getelementptr inbounds float, ptr %22, i64 3
  %67 = load float, ptr %66, align 4, !tbaa !54
  br label %70

68:                                               ; preds = %56
  store <2 x float> zeroinitializer, ptr %21, align 4, !tbaa !54
  %69 = getelementptr inbounds float, ptr %21, i64 2
  store float 0.000000e+00, ptr %69, align 4, !tbaa !54
  br label %70

70:                                               ; preds = %58, %68, %28, %54
  %71 = phi float [ %67, %58 ], [ 1.000000e+00, %68 ], [ %53, %28 ], [ 1.000000e+00, %54 ]
  %72 = getelementptr inbounds float, ptr %21, i64 3
  store float %71, ptr %72, align 4, !tbaa !54
  %73 = getelementptr inbounds float, ptr %21, i64 4
  %74 = icmp eq ptr %23, null
  %75 = getelementptr inbounds float, ptr %23, i64 4
  %76 = select i1 %74, ptr null, ptr %75
  %77 = icmp eq ptr %22, null
  %78 = getelementptr inbounds float, ptr %22, i64 4
  %79 = select i1 %77, ptr null, ptr %78
  %80 = add nuw nsw i32 %20, 1
  %81 = icmp eq i32 %80, %2
  br i1 %81, label %82, label %19, !llvm.loop !277

82:                                               ; preds = %70, %14
  %83 = phi ptr [ %17, %14 ], [ %76, %70 ]
  %84 = phi ptr [ %16, %14 ], [ %79, %70 ]
  %85 = phi ptr [ %15, %14 ], [ %73, %70 ]
  %86 = add nuw nsw i32 %18, 1
  %87 = icmp eq i32 %86, %3
  br i1 %87, label %88, label %14, !llvm.loop !278

88:                                               ; preds = %82, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_wipe_effect_byte(ptr nocapture noundef readonly %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !279 {
  %8 = alloca %struct.WipeZone, align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #21
  %12 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  call fastcc void @precalc_wipe_zone(ptr noundef nonnull %8, ptr noundef %13, i32 noundef %2, i32 noundef %3) #22
  %14 = icmp sgt i32 %3, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %7
  %16 = icmp sgt i32 %2, 0
  br label %17

17:                                               ; preds = %15, %66
  %18 = phi ptr [ %6, %15 ], [ %69, %66 ]
  %19 = phi ptr [ %5, %15 ], [ %68, %66 ]
  %20 = phi ptr [ %4, %15 ], [ %67, %66 ]
  %21 = phi i32 [ 0, %15 ], [ %70, %66 ]
  br i1 %16, label %22, label %66

22:                                               ; preds = %17, %56
  %23 = phi i32 [ %64, %56 ], [ 0, %17 ]
  %24 = phi ptr [ %57, %56 ], [ %18, %17 ]
  %25 = phi ptr [ %63, %56 ], [ %19, %17 ]
  %26 = phi ptr [ %60, %56 ], [ %20, %17 ]
  %27 = call fastcc float @check_zone(ptr noundef nonnull %8, i32 noundef %23, i32 noundef %21, ptr noundef %0, float noundef %1) #22
  %28 = fcmp une float %27, 0.000000e+00
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = icmp eq ptr %26, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #21
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %9, ptr noundef nonnull %26) #22
  call fastcc void @straight_uchar_to_premul_float(ptr noundef nonnull %10, ptr noundef %25) #22
  %32 = fsub float 1.000000e+00, %27
  %33 = load <4 x float>, ptr %9, align 16, !tbaa !54
  %34 = load <4 x float>, ptr %10, align 16, !tbaa !54
  %35 = insertelement <4 x float> poison, float %32, i64 0
  %36 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> zeroinitializer
  %37 = fmul <4 x float> %36, %34
  %38 = insertelement <4 x float> poison, float %27, i64 0
  %39 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> zeroinitializer
  %40 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> %39, <4 x float> %37)
  store <4 x float> %40, ptr %11, align 16, !tbaa !54
  call fastcc void @premul_float_to_straight_uchar(ptr noundef %24, ptr noundef nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #21
  br label %56

41:                                               ; preds = %29
  store <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, ptr %24, align 1, !tbaa !170
  br label %56

42:                                               ; preds = %22
  %43 = icmp eq ptr %25, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %42
  %45 = load i8, ptr %25, align 1, !tbaa !170
  store i8 %45, ptr %24, align 1, !tbaa !170
  %46 = getelementptr inbounds i8, ptr %25, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !170
  %48 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %47, ptr %48, align 1, !tbaa !170
  %49 = getelementptr inbounds i8, ptr %25, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !170
  %51 = getelementptr inbounds i8, ptr %24, i64 2
  store i8 %50, ptr %51, align 1, !tbaa !170
  %52 = getelementptr inbounds i8, ptr %25, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !170
  %54 = getelementptr inbounds i8, ptr %24, i64 3
  store i8 %53, ptr %54, align 1, !tbaa !170
  br label %56

55:                                               ; preds = %42
  store <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, ptr %24, align 1, !tbaa !170
  br label %56

56:                                               ; preds = %44, %55, %31, %41
  %57 = getelementptr inbounds i8, ptr %24, i64 4
  %58 = icmp eq ptr %26, null
  %59 = getelementptr inbounds i8, ptr %26, i64 4
  %60 = select i1 %58, ptr null, ptr %59
  %61 = icmp eq ptr %25, null
  %62 = getelementptr inbounds i8, ptr %25, i64 4
  %63 = select i1 %61, ptr null, ptr %62
  %64 = add nuw nsw i32 %23, 1
  %65 = icmp eq i32 %64, %2
  br i1 %65, label %66, label %22, !llvm.loop !280

66:                                               ; preds = %56, %17
  %67 = phi ptr [ %20, %17 ], [ %60, %56 ]
  %68 = phi ptr [ %19, %17 ], [ %63, %56 ]
  %69 = phi ptr [ %18, %17 ], [ %57, %56 ]
  %70 = add nuw nsw i32 %21, 1
  %71 = icmp eq i32 %70, %3
  br i1 %71, label %72, label %17, !llvm.loop !281

72:                                               ; preds = %66, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @precalc_wipe_zone(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #17 !PGOFuncName !282 {
  %5 = getelementptr inbounds %struct.WipeVars, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !283
  %7 = fcmp olt float %6, 0.000000e+00
  %8 = zext i1 %7 to i32
  %9 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !285
  %10 = tail call float @llvm.fabs.f32(float %6)
  %11 = tail call float @tanf(float noundef %10) #23
  store float %11, ptr %0, align 4, !tbaa !287
  %12 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 2
  store i32 %2, ptr %12, align 4, !tbaa !288
  %13 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 3
  store i32 %3, ptr %13, align 4, !tbaa !289
  %14 = load float, ptr %1, align 4, !tbaa !290
  %15 = add nsw i32 %3, %2
  %16 = sitofp i32 %15 to float
  %17 = fmul float %16, 5.000000e-01
  %18 = fmul float %17, %14
  %19 = fptosi float %18 to i32
  %20 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 4
  store i32 %19, ptr %20, align 4, !tbaa !291
  %21 = tail call float @llvm.fmuladd.f32(float %11, float %11, float 1.000000e+00)
  %22 = tail call float @llvm.sqrt.f32(float %21)
  %23 = fdiv float 1.000000e+00, %22
  %24 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 5
  store float %23, ptr %24, align 4, !tbaa !292
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @check_zone(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, float noundef %4) unnamed_addr #0 !PGOFuncName !293 {
  %6 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 2
  %7 = load <2 x i32>, ptr %6, align 4, !tbaa !259
  %8 = sitofp <2 x i32> %7 to <2 x float>
  %9 = extractelement <2 x float> %8, i64 0
  %10 = fmul float %9, 5.000000e-01
  %11 = extractelement <2 x float> %8, i64 1
  %12 = fmul float %11, 5.000000e-01
  %13 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 43
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !285
  %17 = icmp eq i32 %16, 0
  %18 = extractelement <2 x i32> %7, i64 0
  %19 = sub nsw i32 %18, %1
  %20 = select i1 %17, i32 %1, i32 %19
  %21 = load float, ptr %0, align 4, !tbaa !287
  %22 = getelementptr inbounds %struct.WipeVars, ptr %14, i64 0, i32 2
  %23 = load i16, ptr %22, align 4, !tbaa !294
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = insertelement <2 x float> poison, float %4, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = fmul <2 x float> %27, %8
  br label %34

29:                                               ; preds = %5
  %30 = fneg float %4
  %31 = insertelement <2 x float> poison, float %30, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %8, <2 x float> %8)
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi <2 x float> [ %28, %25 ], [ %33, %29 ]
  %36 = getelementptr inbounds %struct.WipeVars, ptr %14, i64 0, i32 3
  %37 = load i16, ptr %36, align 2, !tbaa !295
  switch i16 %37, label %283 [
    i16 0, label %38
    i16 1, label %88
    i16 5, label %180
    i16 4, label %253
  ]

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !291
  %41 = fmul float %11, %4
  %42 = fptosi float %41 to i32
  %43 = tail call fastcc i32 @min_ii(i32 noundef %40, i32 noundef %42) #22
  %44 = fneg float %4
  %45 = tail call float @llvm.fmuladd.f32(float %44, float %11, float %11)
  %46 = fptosi float %45 to i32
  %47 = tail call fastcc i32 @min_ii(i32 noundef %43, i32 noundef %46) #22
  %48 = fcmp oeq float %21, 0.000000e+00
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = sitofp i32 %2 to float
  %51 = extractelement <2 x float> %35, i64 1
  %52 = fsub float %50, %51
  %53 = tail call float @llvm.fabs.f32(float %52)
  br label %69

54:                                               ; preds = %38
  %55 = fneg float %21
  %56 = extractelement <2 x float> %35, i64 0
  %57 = extractelement <2 x float> %35, i64 1
  %58 = tail call float @llvm.fmuladd.f32(float %21, float %56, float %57)
  %59 = sitofp i32 %2 to float
  %60 = sitofp i32 %20 to float
  %61 = tail call float @llvm.fmuladd.f32(float %21, float %60, float %59)
  %62 = fneg float %57
  %63 = tail call float @llvm.fmuladd.f32(float %55, float %56, float %62)
  %64 = fadd float %61, %63
  %65 = tail call float @llvm.fabs.f32(float %64)
  %66 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 5
  %67 = load float, ptr %66, align 4, !tbaa !292
  %68 = fmul float %65, %67
  br label %69

69:                                               ; preds = %54, %49
  %70 = phi float [ %53, %49 ], [ %68, %54 ]
  %71 = phi float [ %51, %49 ], [ %58, %54 ]
  %72 = phi float [ %50, %49 ], [ %61, %54 ]
  %73 = fcmp olt float %21, 0.000000e+00
  %74 = select i1 %73, float %72, float %71
  %75 = select i1 %73, float %71, float %72
  %76 = fcmp olt float %74, %75
  %77 = sitofp i32 %47 to float
  br i1 %24, label %83, label %78

78:                                               ; preds = %69
  br i1 %76, label %79, label %81

79:                                               ; preds = %78
  %80 = tail call fastcc float @in_band(float noundef %77, float noundef %70, i32 noundef 1) #22
  br label %277

81:                                               ; preds = %78
  %82 = tail call fastcc float @in_band(float noundef %77, float noundef %70, i32 noundef 0) #22
  br label %277

83:                                               ; preds = %69
  br i1 %76, label %84, label %86

84:                                               ; preds = %83
  %85 = tail call fastcc float @in_band(float noundef %77, float noundef %70, i32 noundef 0) #22
  br label %277

86:                                               ; preds = %83
  %87 = tail call fastcc float @in_band(float noundef %77, float noundef %70, i32 noundef 1) #22
  br label %277

88:                                               ; preds = %34
  %89 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 4
  %90 = load i32, ptr %89, align 4, !tbaa !291
  %91 = sitofp i32 %90 to float
  %92 = fmul float %91, 5.000000e-01
  %93 = fcmp oeq float %21, 0.000000e+00
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = extractelement <2 x float> %35, i64 1
  %96 = fmul float %95, 5.000000e-01
  %97 = fneg float %95
  %98 = tail call float @llvm.fmuladd.f32(float %97, float 5.000000e-01, float %11)
  %99 = sitofp i32 %2 to float
  %100 = tail call float @llvm.fmuladd.f32(float %97, float 5.000000e-01, float %99)
  %101 = fsub float %99, %98
  %102 = insertelement <2 x float> poison, float %101, i64 0
  %103 = insertelement <2 x float> %102, float %100, i64 1
  %104 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %103)
  br label %138

105:                                              ; preds = %88
  %106 = insertelement <2 x float> %35, float %21, i64 0
  %107 = fneg <2 x float> %106
  %108 = extractelement <2 x float> %35, i64 0
  %109 = fmul <2 x float> %35, %107
  %110 = extractelement <2 x float> %109, i64 0
  %111 = fmul float %110, -5.000000e-01
  %112 = extractelement <2 x float> %35, i64 1
  %113 = tail call float @llvm.fmuladd.f32(float %112, float 5.000000e-01, float %111)
  %114 = extractelement <2 x float> %107, i64 1
  %115 = tail call float @llvm.fmuladd.f32(float %114, float 5.000000e-01, float %11)
  %116 = fneg float %108
  %117 = tail call float @llvm.fmuladd.f32(float %116, float 5.000000e-01, float %9)
  %118 = tail call float @llvm.fmuladd.f32(float %21, float %117, float %115)
  %119 = sitofp i32 %2 to float
  %120 = sitofp i32 %20 to float
  %121 = tail call float @llvm.fmuladd.f32(float %21, float %120, float %119)
  %122 = fmul float %21, %108
  %123 = fmul float %122, -5.000000e-01
  %124 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 5
  %125 = load float, ptr %124, align 4, !tbaa !292
  %126 = fneg float %115
  %127 = insertelement <2 x float> <float poison, float 5.000000e-01>, float %117, i64 0
  %128 = insertelement <2 x float> poison, float %126, i64 0
  %129 = insertelement <2 x float> %128, float %123, i64 1
  %130 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %107, <2 x float> %127, <2 x float> %129)
  %131 = insertelement <2 x float> poison, float %121, i64 0
  %132 = shufflevector <2 x float> %131, <2 x float> poison, <2 x i32> zeroinitializer
  %133 = fadd <2 x float> %132, %130
  %134 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %133)
  %135 = insertelement <2 x float> poison, float %125, i64 0
  %136 = shufflevector <2 x float> %135, <2 x float> poison, <2 x i32> zeroinitializer
  %137 = fmul <2 x float> %134, %136
  br label %138

138:                                              ; preds = %105, %94
  %139 = phi float [ %96, %94 ], [ %113, %105 ]
  %140 = phi float [ %99, %94 ], [ %121, %105 ]
  %141 = phi float [ %98, %94 ], [ %118, %105 ]
  %142 = phi <2 x float> [ %104, %94 ], [ %137, %105 ]
  %143 = fsub float %141, %139
  %144 = tail call float @llvm.fabs.f32(float %143)
  %145 = fmul float %144, 5.000000e-01
  %146 = tail call fastcc float @min_ff(float noundef %92, float noundef %145) #22
  %147 = fcmp olt float %140, %139
  %148 = fcmp olt float %140, %141
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %150, label %153

150:                                              ; preds = %138
  %151 = extractelement <2 x float> %142, i64 1
  %152 = tail call fastcc float @in_band(float noundef %146, float noundef %151, i32 noundef 0) #22
  br label %176

153:                                              ; preds = %138
  %154 = fcmp ogt float %140, %139
  %155 = fcmp ogt float %140, %141
  %156 = select i1 %154, i1 %155, i1 false
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = extractelement <2 x float> %142, i64 0
  %159 = tail call fastcc float @in_band(float noundef %146, float noundef %158, i32 noundef 0) #22
  br label %176

160:                                              ; preds = %153
  %161 = extractelement <2 x float> %142, i64 1
  %162 = fcmp olt float %161, %146
  %163 = extractelement <2 x float> %142, i64 0
  %164 = fcmp ogt float %163, %146
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = tail call fastcc float @in_band(float noundef %146, float noundef %161, i32 noundef 1) #22
  br label %176

168:                                              ; preds = %160
  %169 = fcmp ogt float %161, %146
  %170 = fcmp olt float %163, %146
  %171 = select i1 %169, i1 %170, i1 false
  %172 = tail call fastcc float @in_band(float noundef %146, float noundef %163, i32 noundef 1) #22
  br i1 %171, label %176, label %173

173:                                              ; preds = %168
  %174 = tail call fastcc float @in_band(float noundef %146, float noundef %161, i32 noundef 1) #22
  %175 = fmul float %172, %174
  br label %176

176:                                              ; preds = %168, %157, %173, %166, %150
  %177 = phi float [ %152, %150 ], [ %159, %157 ], [ %167, %166 ], [ %175, %173 ], [ %172, %168 ]
  br i1 %24, label %178, label %277

178:                                              ; preds = %176
  %179 = fsub float 1.000000e+00, %177
  br label %277

180:                                              ; preds = %34
  %181 = load float, ptr %14, align 4, !tbaa !290
  %182 = fmul float %181, 2.000000e+00
  %183 = fmul float %182, 0x400921FB60000000
  %184 = fmul float %4, 0x401921FB60000000
  %185 = fsub float 0x401921FB60000000, %184
  %186 = select i1 %24, float %184, float %185
  %187 = sitofp i32 %20 to float
  %188 = fsub float %187, %10
  %189 = fptosi float %188 to i32
  %190 = sitofp i32 %2 to float
  %191 = fsub float %190, %12
  %192 = fptosi float %191 to i32
  %193 = tail call i32 @llvm.abs.i32(i32 %192, i1 true)
  %194 = sitofp i32 %193 to double
  %195 = sitofp i32 %189 to double
  %196 = sitofp i32 %192 to double
  %197 = tail call double @hypot(double noundef %195, double noundef %196) #23
  %198 = fdiv double %194, %197
  %199 = tail call double @asin(double noundef %198) #23
  %200 = fptrunc double %199 to float
  %201 = icmp slt i32 %189, 1
  %202 = icmp sgt i32 %192, -1
  %203 = and i1 %202, %201
  br i1 %203, label %204, label %206

204:                                              ; preds = %180
  %205 = fsub float 0x400921FB60000000, %200
  br label %216

206:                                              ; preds = %180
  %207 = icmp slt i32 %192, 1
  %208 = and i1 %207, %201
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = fadd float %200, 0x400921FB60000000
  br label %216

211:                                              ; preds = %206
  %212 = icmp sgt i32 %189, -1
  %213 = and i1 %207, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = fsub float 0x401921FB60000000, %200
  br label %216

216:                                              ; preds = %209, %214, %211, %204
  %217 = phi float [ %205, %204 ], [ %210, %209 ], [ %215, %214 ], [ %200, %211 ]
  %218 = load i16, ptr %22, align 4, !tbaa !294
  %219 = icmp eq i16 %218, 0
  %220 = fmul float %183, 5.000000e-01
  br i1 %219, label %225, label %221

221:                                              ; preds = %216
  %222 = fneg float %220
  %223 = tail call float @llvm.fmuladd.f32(float %222, float %4, float %186)
  %224 = fsub float 1.000000e+00, %4
  br label %229

225:                                              ; preds = %216
  %226 = fsub float 1.000000e+00, %4
  %227 = fneg float %220
  %228 = tail call float @llvm.fmuladd.f32(float %227, float %226, float %186)
  br label %229

229:                                              ; preds = %225, %221
  %230 = phi float [ %4, %225 ], [ %224, %221 ]
  %231 = phi float [ %228, %225 ], [ %223, %221 ]
  %232 = tail call float @llvm.fmuladd.f32(float %220, float %230, float %186)
  %233 = fcmp olt float %231, 0.000000e+00
  %234 = select i1 %233, float 0.000000e+00, float %231
  %235 = fcmp ogt float %232, 0x401921FB60000000
  %236 = select i1 %235, float 0x401921FB60000000, float %232
  %237 = fcmp olt float %217, %234
  br i1 %237, label %244, label %238

238:                                              ; preds = %229
  %239 = fcmp ogt float %217, %236
  br i1 %239, label %244, label %240

240:                                              ; preds = %238
  %241 = fsub float %217, %234
  %242 = fsub float %236, %234
  %243 = fdiv float %241, %242
  br label %244

244:                                              ; preds = %238, %229, %240
  %245 = phi float [ %243, %240 ], [ 0.000000e+00, %229 ], [ 1.000000e+00, %238 ]
  %246 = or i32 %189, %192
  %247 = icmp eq i32 %246, 0
  %248 = select i1 %247, float 1.000000e+00, float %245
  %249 = fcmp uno float %248, 0.000000e+00
  %250 = select i1 %249, float 1.000000e+00, float %248
  br i1 %219, label %277, label %251

251:                                              ; preds = %244
  %252 = fsub float 1.000000e+00, %250
  br label %277

253:                                              ; preds = %34
  %254 = fsub float 1.000000e+00, %4
  %255 = select i1 %24, float %254, float %4
  %256 = getelementptr inbounds %struct.WipeZone, ptr %0, i64 0, i32 4
  %257 = load i32, ptr %256, align 4, !tbaa !291
  %258 = sitofp i32 %257 to float
  %259 = fmul float %258, 5.000000e-01
  %260 = fneg float %10
  %261 = tail call float @llvm.fmuladd.f32(float %260, float %255, float %10)
  %262 = tail call float @hypotf(float noundef %261, float noundef %261) #23
  %263 = sitofp i32 %20 to float
  %264 = fsub float %10, %263
  %265 = sitofp i32 %2 to float
  %266 = fsub float %12, %265
  %267 = tail call float @hypotf(float noundef %264, float noundef %266) #23
  %268 = fcmp ule float %267, %262
  %269 = fsub float %267, %262
  %270 = tail call float @llvm.fabs.f32(float %269)
  %271 = zext i1 %268 to i32
  %272 = tail call fastcc float @in_band(float noundef %259, float noundef %270, i32 noundef %271) #22
  %273 = load i16, ptr %22, align 4, !tbaa !294
  %274 = icmp eq i16 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %253
  %276 = fsub float 1.000000e+00, %272
  br label %277

277:                                              ; preds = %253, %275, %244, %251, %176, %178, %81, %79, %86, %84
  %278 = phi float [ %272, %253 ], [ %276, %275 ], [ %252, %251 ], [ %250, %244 ], [ %177, %176 ], [ %179, %178 ], [ %80, %79 ], [ %82, %81 ], [ %85, %84 ], [ %87, %86 ]
  %279 = fcmp olt float %278, 0.000000e+00
  br i1 %279, label %283, label %280

280:                                              ; preds = %277
  %281 = fcmp ogt float %278, 1.000000e+00
  br i1 %281, label %282, label %283

282:                                              ; preds = %280
  br label %283

283:                                              ; preds = %34, %277, %280, %282
  %284 = phi float [ 1.000000e+00, %282 ], [ %278, %280 ], [ 0.000000e+00, %277 ], [ 0.000000e+00, %34 ]
  ret float %284
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @in_band(float noundef %0, float noundef %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !296 {
  %4 = fcmp oeq float %0, 0.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = sitofp i32 %2 to float
  br label %17

7:                                                ; preds = %3
  %8 = fcmp olt float %0, %1
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = sitofp i32 %2 to float
  br label %17

11:                                               ; preds = %7
  %12 = icmp eq i32 %2, 1
  %13 = fneg float %1
  %14 = select i1 %12, float %1, float %13
  %15 = tail call float @llvm.fmuladd.f32(float %0, float 5.000000e-01, float %14)
  %16 = fdiv float %15, %0
  br label %17

17:                                               ; preds = %11, %9, %5
  %18 = phi float [ %6, %5 ], [ %10, %9 ], [ %16, %11 ]
  ret float %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !297 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nounwind optsize
declare double @hypot(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: nounwind optsize
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_glow_effect_float(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6) unnamed_addr #0 !PGOFuncName !298 {
  %8 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load float, ptr %9, align 4, !tbaa !299
  %11 = fmul float %10, 3.000000e+00
  %12 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !300
  %14 = fmul float %13, %2
  %15 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !301
  tail call fastcc void @RVIsolateHighlights_float(ptr noundef %5, ptr noundef %6, i32 noundef %3, i32 noundef %4, float noundef %11, float noundef %14, float noundef %16) #22
  %17 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !302
  %19 = sitofp i32 %1 to float
  %20 = fdiv float %19, 1.000000e+02
  %21 = fmul float %20, %18
  %22 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !116
  tail call fastcc void @RVBlurBitmap2_float(ptr noundef %6, i32 noundef %3, i32 noundef %4, float noundef %21, i32 noundef %23) #22
  %24 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !118
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  tail call fastcc void @RVAddBitmaps_float(ptr noundef %5, ptr noundef %6, ptr noundef %6, i32 noundef %3, i32 noundef %4) #22
  br label %28

28:                                               ; preds = %27, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_glow_effect_byte(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !303 {
  %8 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %11 = sext i32 %3 to i64
  %12 = shl nsw i64 %11, 4
  %13 = sext i32 %4 to i64
  %14 = mul i64 %12, %13
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.6) #23
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %17 = tail call ptr %16(i64 noundef %14, ptr noundef nonnull @.str.7) #23
  tail call void @IMB_buffer_float_from_byte(ptr noundef %15, ptr noundef %5, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %3, i32 noundef %4, i32 noundef %3, i32 noundef %3) #23
  tail call void @IMB_buffer_float_premultiply(ptr noundef %15, i32 noundef %3, i32 noundef %4) #23
  %18 = load float, ptr %9, align 4, !tbaa !299
  %19 = fmul float %18, 3.000000e+00
  %20 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 2
  %21 = load float, ptr %20, align 4, !tbaa !300
  %22 = fmul float %21, %2
  %23 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !301
  tail call fastcc void @RVIsolateHighlights_float(ptr noundef %15, ptr noundef %17, i32 noundef %3, i32 noundef %4, float noundef %19, float noundef %22, float noundef %24) #22
  %25 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 3
  %26 = load float, ptr %25, align 4, !tbaa !302
  %27 = sitofp i32 %1 to float
  %28 = fdiv float %27, 1.000000e+02
  %29 = fmul float %28, %26
  %30 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !116
  tail call fastcc void @RVBlurBitmap2_float(ptr noundef %17, i32 noundef %3, i32 noundef %4, float noundef %29, i32 noundef %31) #22
  %32 = getelementptr inbounds %struct.GlowVars, ptr %9, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !118
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %7
  tail call fastcc void @RVAddBitmaps_float(ptr noundef %15, ptr noundef %17, ptr noundef %17, i32 noundef %3, i32 noundef %4) #22
  br label %36

36:                                               ; preds = %35, %7
  tail call void @IMB_buffer_float_unpremultiply(ptr noundef %17, i32 noundef %3, i32 noundef %4) #23
  tail call void @IMB_buffer_byte_from_float(ptr noundef %6, ptr noundef %17, i32 noundef 4, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 2, i8 noundef zeroext 0, i32 noundef %3, i32 noundef %4, i32 noundef %3, i32 noundef %3) #23
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %37(ptr noundef %15) #23
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %38(ptr noundef %17) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @RVIsolateHighlights_float(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #19 !PGOFuncName !304 {
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %79

9:                                                ; preds = %7
  %10 = icmp sgt i32 %2, 0
  %11 = zext nneg i32 %3 to i64
  %12 = zext nneg i32 %2 to i64
  br label %13

13:                                               ; preds = %9, %76
  %14 = phi i64 [ 0, %9 ], [ %77, %76 ]
  br i1 %10, label %15, label %76

15:                                               ; preds = %13
  %16 = trunc i64 %14 to i32
  %17 = mul i32 %16, %2
  br label %18

18:                                               ; preds = %15, %70
  %19 = phi i64 [ 0, %15 ], [ %74, %70 ]
  %20 = trunc i64 %19 to i32
  %21 = add i32 %17, %20
  %22 = shl nsw i32 %21, 2
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds float, ptr %0, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !54
  %26 = or disjoint i32 %22, 1
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds float, ptr %0, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !54
  %30 = fadd float %25, %29
  %31 = or disjoint i32 %22, 2
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds float, ptr %0, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !54
  %35 = fadd float %30, %34
  %36 = fsub float %35, %4
  %37 = fcmp ogt float %36, 0.000000e+00
  br i1 %37, label %38, label %64

38:                                               ; preds = %18
  %39 = fmul float %25, %5
  %40 = fmul float %39, %36
  %41 = fcmp ogt float %40, %6
  %42 = select i1 %41, float %6, float %40
  %43 = getelementptr inbounds float, ptr %1, i64 %23
  store float %42, ptr %43, align 4, !tbaa !54
  %44 = load float, ptr %28, align 4, !tbaa !54
  %45 = fmul float %44, %5
  %46 = fmul float %36, %45
  %47 = fcmp ogt float %46, %6
  %48 = select i1 %47, float %6, float %46
  %49 = getelementptr inbounds float, ptr %1, i64 %27
  store float %48, ptr %49, align 4, !tbaa !54
  %50 = load float, ptr %33, align 4, !tbaa !54
  %51 = fmul float %50, %5
  %52 = fmul float %36, %51
  %53 = fcmp ogt float %52, %6
  %54 = select i1 %53, float %6, float %52
  %55 = getelementptr inbounds float, ptr %1, i64 %32
  store float %54, ptr %55, align 4, !tbaa !54
  %56 = or disjoint i32 %22, 3
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds float, ptr %0, i64 %57
  %59 = load float, ptr %58, align 4, !tbaa !54
  %60 = fmul float %59, %5
  %61 = fmul float %36, %60
  %62 = fcmp ogt float %61, %6
  %63 = select i1 %62, float %6, float %61
  br label %70

64:                                               ; preds = %18
  %65 = getelementptr inbounds float, ptr %1, i64 %23
  store float 0.000000e+00, ptr %65, align 4, !tbaa !54
  %66 = getelementptr inbounds float, ptr %1, i64 %27
  store float 0.000000e+00, ptr %66, align 4, !tbaa !54
  %67 = getelementptr inbounds float, ptr %1, i64 %32
  store float 0.000000e+00, ptr %67, align 4, !tbaa !54
  %68 = or disjoint i32 %22, 3
  %69 = zext nneg i32 %68 to i64
  br label %70

70:                                               ; preds = %38, %64
  %71 = phi i64 [ %57, %38 ], [ %69, %64 ]
  %72 = phi float [ %63, %38 ], [ 0.000000e+00, %64 ]
  %73 = getelementptr inbounds float, ptr %1, i64 %71
  store float %72, ptr %73, align 4, !tbaa !54
  %74 = add nuw nsw i64 %19, 1
  %75 = icmp eq i64 %74, %12
  br i1 %75, label %76, label %18, !llvm.loop !305

76:                                               ; preds = %70, %13
  %77 = add nuw nsw i64 %14, 1
  %78 = icmp eq i64 %77, %11
  br i1 %78, label %79, label %13, !llvm.loop !306

79:                                               ; preds = %76, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RVBlurBitmap2_float(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !307 {
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %8 = fcmp ugt float %3, 0.000000e+00
  br i1 %8, label %9, label %481

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %11 = shl i32 %1, 2
  %12 = mul i32 %11, %2
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.4) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %481, label %17

17:                                               ; preds = %9
  %18 = add nsw i32 %4, 1
  %19 = sitofp i32 %18 to float
  %20 = fmul float %19, %3
  %21 = fptosi float %20 to i32
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %23 = sext i32 %21 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.5) #23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %28(ptr noundef nonnull %15) #23
  br label %481

29:                                               ; preds = %17
  %30 = fmul float %3, 0x401921FB60000000
  %31 = fmul float %30, %3
  %32 = fdiv float -1.000000e+00, %31
  %33 = icmp sgt i32 %21, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  store float 0.000000e+00, ptr %25, align 4, !tbaa !54
  %35 = shl i32 %21, 1
  br label %70

36:                                               ; preds = %29
  %37 = zext nneg i32 %21 to i64
  %38 = getelementptr float, ptr %25, i64 %23
  br label %39

39:                                               ; preds = %36, %39
  %40 = phi i64 [ 0, %36 ], [ %51, %39 ]
  %41 = mul nsw i64 %40, %40
  %42 = trunc i64 %41 to i32
  %43 = sitofp i32 %42 to float
  %44 = fmul float %32, %43
  %45 = fpext float %44 to double
  %46 = tail call double @exp(double noundef %45) #23
  %47 = fptrunc double %46 to float
  %48 = sub nsw i64 %23, %40
  %49 = getelementptr inbounds float, ptr %25, i64 %48
  store float %47, ptr %49, align 4, !tbaa !54
  %50 = getelementptr float, ptr %38, i64 %40
  store float %47, ptr %50, align 4, !tbaa !54
  %51 = add nuw nsw i64 %40, 1
  %52 = icmp eq i64 %51, %37
  br i1 %52, label %53, label %39, !llvm.loop !308

53:                                               ; preds = %39
  store float %47, ptr %25, align 4, !tbaa !54
  %54 = shl nuw i32 %21, 1
  br i1 %33, label %55, label %70

55:                                               ; preds = %53
  %56 = tail call i32 @llvm.smax.i32(i32 %54, i32 1)
  %57 = zext nneg i32 %56 to i64
  br label %62

58:                                               ; preds = %62
  br i1 %33, label %59, label %70

59:                                               ; preds = %58
  %60 = tail call i32 @llvm.smax.i32(i32 %54, i32 1)
  %61 = zext nneg i32 %60 to i64
  br label %87

62:                                               ; preds = %55, %62
  %63 = phi i64 [ 0, %55 ], [ %68, %62 ]
  %64 = phi float [ 0.000000e+00, %55 ], [ %67, %62 ]
  %65 = getelementptr inbounds float, ptr %25, i64 %63
  %66 = load float, ptr %65, align 4, !tbaa !54
  %67 = fadd float %64, %66
  %68 = add nuw nsw i64 %63, 1
  %69 = icmp eq i64 %68, %57
  br i1 %69, label %58, label %62, !llvm.loop !309

70:                                               ; preds = %87, %53, %34, %58
  %71 = phi i32 [ %54, %58 ], [ %35, %34 ], [ %54, %53 ], [ %54, %87 ]
  %72 = icmp sgt i32 %2, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %70
  %74 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %75 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %76 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %77 = sub nsw i32 %1, %21
  %78 = icmp sgt i32 %77, %21
  %79 = sub i32 0, %21
  %80 = sext i32 %79 to i64
  %81 = sext i32 %1 to i64
  %82 = sub i32 %1, %71
  %83 = zext nneg i32 %2 to i64
  %84 = zext nneg i32 %21 to i64
  %85 = zext i32 %71 to i64
  %86 = zext i32 %71 to i64
  br label %94

87:                                               ; preds = %59, %87
  %88 = phi i64 [ 0, %59 ], [ %92, %87 ]
  %89 = getelementptr inbounds float, ptr %25, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !54
  %91 = fdiv float %90, %67
  store float %91, ptr %89, align 4, !tbaa !54
  %92 = add nuw nsw i64 %88, 1
  %93 = icmp eq i64 %92, %61
  br i1 %93, label %70, label %87, !llvm.loop !310

94:                                               ; preds = %73, %291
  %95 = phi float [ undef, %73 ], [ %292, %291 ]
  %96 = phi i64 [ 0, %73 ], [ %293, %291 ]
  %97 = phi float [ undef, %73 ], [ %124, %291 ]
  %98 = phi <2 x float> [ undef, %73 ], [ %126, %291 ]
  br i1 %33, label %99, label %123

99:                                               ; preds = %94
  %100 = mul nsw i64 %96, %81
  %101 = trunc i64 %100 to i32
  %102 = add i32 %101, %1
  br label %129

103:                                              ; preds = %291
  store <2 x float> %126, ptr %76, align 4, !tbaa !54
  br label %104

104:                                              ; preds = %103, %70
  %105 = phi float [ %124, %103 ], [ undef, %70 ]
  store float %105, ptr %7, align 4, !tbaa !54
  %106 = icmp sgt i32 %1, 0
  br i1 %106, label %107, label %478

107:                                              ; preds = %104
  %108 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %109 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %110 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %111 = sub nsw i32 %2, %21
  %112 = icmp sgt i32 %111, %21
  %113 = sub i32 0, %21
  %114 = sext i32 %113 to i64
  %115 = sext i32 %2 to i64
  %116 = zext nneg i32 %1 to i64
  %117 = sub i32 %2, %71
  %118 = zext nneg i32 %1 to i64
  %119 = zext nneg i32 %21 to i64
  %120 = zext i32 %71 to i64
  %121 = zext i32 %71 to i64
  br label %295

122:                                              ; preds = %197
  store <2 x float> %199, ptr %75, align 4, !tbaa !54
  br label %123

123:                                              ; preds = %122, %94
  %124 = phi float [ %218, %122 ], [ %97, %94 ]
  %125 = phi float [ %203, %122 ], [ %95, %94 ]
  %126 = phi <2 x float> [ %198, %122 ], [ %98, %94 ]
  store float %125, ptr %6, align 8, !tbaa !54
  br i1 %78, label %127, label %291

127:                                              ; preds = %123
  %128 = mul nsw i64 %96, %81
  br label %230

129:                                              ; preds = %99, %197
  %130 = phi i64 [ 0, %99 ], [ %227, %197 ]
  %131 = phi i64 [ %80, %99 ], [ %228, %197 ]
  %132 = add nsw i64 %130, %100
  %133 = trunc i64 %132 to i32
  %134 = shl nsw i32 %133, 2
  %135 = sub nsw i64 %130, %23
  %136 = add nuw nsw i64 %130, %23
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %138, label %197

138:                                              ; preds = %129, %190
  %139 = phi i64 [ %195, %190 ], [ %131, %129 ]
  %140 = phi i64 [ %194, %190 ], [ 0, %129 ]
  %141 = phi <2 x float> [ %191, %190 ], [ zeroinitializer, %129 ]
  %142 = phi <2 x float> [ %192, %190 ], [ zeroinitializer, %129 ]
  %143 = phi <2 x float> [ %193, %190 ], [ zeroinitializer, %129 ]
  %144 = icmp sgt i64 %139, -1
  %145 = icmp slt i64 %139, %81
  %146 = and i1 %144, %145
  br i1 %146, label %147, label %190

147:                                              ; preds = %138
  %148 = add nsw i64 %139, %100
  %149 = trunc i64 %148 to i32
  %150 = shl nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, ptr %0, i64 %151
  %153 = load float, ptr %152, align 4, !tbaa !54
  %154 = getelementptr inbounds float, ptr %25, i64 %140
  %155 = load float, ptr %154, align 4, !tbaa !54
  %156 = or disjoint i32 %150, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, ptr %0, i64 %157
  %159 = load float, ptr %158, align 4, !tbaa !54
  %160 = or disjoint i32 %150, 2
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, ptr %0, i64 %161
  %163 = load float, ptr %162, align 4, !tbaa !54
  %164 = insertelement <2 x float> poison, float %159, i64 0
  %165 = insertelement <2 x float> %164, float %163, i64 1
  %166 = insertelement <2 x float> poison, float %155, i64 0
  %167 = shufflevector <2 x float> %166, <2 x float> poison, <2 x i32> zeroinitializer
  %168 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %165, <2 x float> %167, <2 x float> %142)
  %169 = trunc i64 %139 to i32
  %170 = xor i32 %169, -1
  %171 = add i32 %102, %170
  %172 = shl nsw i32 %171, 2
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, ptr %0, i64 %173
  %175 = load float, ptr %174, align 4, !tbaa !54
  %176 = insertelement <2 x float> poison, float %175, i64 0
  %177 = insertelement <2 x float> %176, float %153, i64 1
  %178 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %177, <2 x float> %167, <2 x float> %143)
  %179 = or disjoint i32 %172, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, ptr %0, i64 %180
  %182 = load float, ptr %181, align 4, !tbaa !54
  %183 = or disjoint i32 %172, 2
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, ptr %0, i64 %184
  %186 = load float, ptr %185, align 4, !tbaa !54
  %187 = insertelement <2 x float> poison, float %182, i64 0
  %188 = insertelement <2 x float> %187, float %186, i64 1
  %189 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %188, <2 x float> %167, <2 x float> %141)
  br label %190

190:                                              ; preds = %147, %138
  %191 = phi <2 x float> [ %189, %147 ], [ %141, %138 ]
  %192 = phi <2 x float> [ %168, %147 ], [ %142, %138 ]
  %193 = phi <2 x float> [ %178, %147 ], [ %143, %138 ]
  %194 = add nuw nsw i64 %140, 1
  %195 = add nsw i64 %139, 1
  %196 = icmp eq i64 %194, %85
  br i1 %196, label %197, label %138, !llvm.loop !311

197:                                              ; preds = %190, %129
  %198 = phi <2 x float> [ zeroinitializer, %129 ], [ %191, %190 ]
  %199 = phi <2 x float> [ zeroinitializer, %129 ], [ %192, %190 ]
  %200 = phi <2 x float> [ zeroinitializer, %129 ], [ %193, %190 ]
  %201 = sext i32 %134 to i64
  %202 = getelementptr inbounds float, ptr %15, i64 %201
  %203 = extractelement <2 x float> %200, i64 1
  store float %203, ptr %202, align 4, !tbaa !54
  %204 = or disjoint i32 %134, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, ptr %15, i64 %205
  %207 = extractelement <2 x float> %199, i64 0
  store float %207, ptr %206, align 4, !tbaa !54
  %208 = or disjoint i32 %134, 2
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, ptr %15, i64 %209
  %211 = extractelement <2 x float> %199, i64 1
  store float %211, ptr %210, align 4, !tbaa !54
  %212 = trunc i64 %130 to i32
  %213 = xor i32 %212, -1
  %214 = add i32 %102, %213
  %215 = shl nsw i32 %214, 2
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, ptr %15, i64 %216
  %218 = extractelement <2 x float> %200, i64 0
  store float %218, ptr %217, align 4, !tbaa !54
  %219 = or disjoint i32 %215, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, ptr %15, i64 %220
  %222 = extractelement <2 x float> %198, i64 0
  store float %222, ptr %221, align 4, !tbaa !54
  %223 = or disjoint i32 %215, 2
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, ptr %15, i64 %224
  %226 = extractelement <2 x float> %198, i64 1
  store float %226, ptr %225, align 4, !tbaa !54
  %227 = add nuw nsw i64 %130, 1
  %228 = add nsw i64 %131, 1
  %229 = icmp eq i64 %227, %84
  br i1 %229, label %122, label %129, !llvm.loop !312

230:                                              ; preds = %127, %275
  %231 = phi i64 [ %23, %127 ], [ %288, %275 ]
  %232 = phi i32 [ 0, %127 ], [ %289, %275 ]
  %233 = add nsw i64 %231, %128
  %234 = trunc i64 %233 to i32
  %235 = shl nsw i32 %234, 2
  call fastcc void @zero_v3(ptr noundef nonnull %6) #22
  %236 = sub nsw i64 %231, %23
  %237 = add nsw i64 %231, %23
  %238 = icmp slt i64 %236, %237
  %239 = load <2 x float>, ptr %6, align 8, !tbaa !54
  %240 = load float, ptr %74, align 8, !tbaa !54
  br i1 %238, label %241, label %275

241:                                              ; preds = %230
  %242 = zext i32 %232 to i64
  br label %243

243:                                              ; preds = %241, %243
  %244 = phi i64 [ %242, %241 ], [ %271, %243 ]
  %245 = phi i64 [ 0, %241 ], [ %270, %243 ]
  %246 = phi float [ %240, %241 ], [ %269, %243 ]
  %247 = phi <2 x float> [ %239, %241 ], [ %264, %243 ]
  %248 = add i64 %244, %128
  %249 = trunc i64 %248 to i32
  %250 = shl nsw i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, ptr %0, i64 %251
  %253 = load float, ptr %252, align 4, !tbaa !54
  %254 = getelementptr inbounds float, ptr %25, i64 %245
  %255 = load float, ptr %254, align 4, !tbaa !54
  %256 = or disjoint i32 %250, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, ptr %0, i64 %257
  %259 = load float, ptr %258, align 4, !tbaa !54
  %260 = insertelement <2 x float> poison, float %253, i64 0
  %261 = insertelement <2 x float> %260, float %259, i64 1
  %262 = insertelement <2 x float> poison, float %255, i64 0
  %263 = shufflevector <2 x float> %262, <2 x float> poison, <2 x i32> zeroinitializer
  %264 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %261, <2 x float> %263, <2 x float> %247)
  %265 = or disjoint i32 %250, 2
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, ptr %0, i64 %266
  %268 = load float, ptr %267, align 4, !tbaa !54
  %269 = tail call float @llvm.fmuladd.f32(float %268, float %255, float %246)
  %270 = add nuw nsw i64 %245, 1
  %271 = add i64 %244, 1
  %272 = icmp eq i64 %270, %86
  br i1 %272, label %273, label %243, !llvm.loop !313

273:                                              ; preds = %243
  %274 = extractelement <2 x float> %264, i64 1
  store float %274, ptr %75, align 4, !tbaa !54
  store float %269, ptr %74, align 8, !tbaa !54
  br label %275

275:                                              ; preds = %273, %230
  %276 = phi float [ %269, %273 ], [ %240, %230 ]
  %277 = phi <2 x float> [ %264, %273 ], [ %239, %230 ]
  %278 = extractelement <2 x float> %277, i64 0
  store float %278, ptr %6, align 8, !tbaa !54
  %279 = sext i32 %235 to i64
  %280 = getelementptr inbounds float, ptr %15, i64 %279
  store float %278, ptr %280, align 4, !tbaa !54
  %281 = or disjoint i32 %235, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, ptr %15, i64 %282
  %284 = extractelement <2 x float> %277, i64 1
  store float %284, ptr %283, align 4, !tbaa !54
  %285 = or disjoint i32 %235, 2
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, ptr %15, i64 %286
  store float %276, ptr %287, align 4, !tbaa !54
  %288 = add nsw i64 %231, 1
  %289 = add i32 %232, 1
  %290 = icmp eq i32 %289, %82
  br i1 %290, label %291, label %230, !llvm.loop !314

291:                                              ; preds = %275, %123
  %292 = phi float [ %125, %123 ], [ %278, %275 ]
  %293 = add nuw nsw i64 %96, 1
  %294 = icmp eq i64 %293, %83
  br i1 %294, label %103, label %94, !llvm.loop !315

295:                                              ; preds = %107, %475
  %296 = phi i64 [ 0, %107 ], [ %476, %475 ]
  br i1 %33, label %297, label %300

297:                                              ; preds = %295
  %298 = trunc i64 %296 to i32
  %299 = trunc i64 %296 to i32
  br label %301

300:                                              ; preds = %379, %295
  br i1 %112, label %412, label %475

301:                                              ; preds = %297, %379
  %302 = phi i64 [ 0, %297 ], [ %409, %379 ]
  %303 = phi i64 [ %114, %297 ], [ %410, %379 ]
  %304 = mul i64 %302, %116
  %305 = add i64 %304, %296
  %306 = trunc i64 %305 to i32
  %307 = shl nsw i32 %306, 2
  call fastcc void @zero_v3(ptr noundef nonnull %6) #22
  call fastcc void @zero_v3(ptr noundef nonnull %7) #22
  %308 = sub nsw i64 %302, %23
  %309 = add nuw nsw i64 %302, %23
  %310 = load float, ptr %6, align 8, !tbaa !54
  %311 = load float, ptr %7, align 4, !tbaa !54
  %312 = icmp slt i64 %308, %309
  %313 = load <2 x float>, ptr %108, align 4, !tbaa !54
  %314 = load <2 x float>, ptr %110, align 4, !tbaa !54
  %315 = shufflevector <2 x float> %314, <2 x float> %313, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br i1 %312, label %316, label %379

316:                                              ; preds = %301, %369
  %317 = phi i64 [ %374, %369 ], [ %303, %301 ]
  %318 = phi i64 [ %373, %369 ], [ 0, %301 ]
  %319 = phi float [ %371, %369 ], [ %310, %301 ]
  %320 = phi float [ %370, %369 ], [ %311, %301 ]
  %321 = phi <4 x float> [ %372, %369 ], [ %315, %301 ]
  %322 = icmp sgt i64 %317, -1
  %323 = icmp slt i64 %317, %115
  %324 = and i1 %322, %323
  br i1 %324, label %325, label %369

325:                                              ; preds = %316
  %326 = mul i64 %317, %116
  %327 = add i64 %326, %296
  %328 = trunc i64 %327 to i32
  %329 = shl nsw i32 %328, 2
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, ptr %15, i64 %330
  %332 = load float, ptr %331, align 4, !tbaa !54
  %333 = getelementptr inbounds float, ptr %25, i64 %318
  %334 = load float, ptr %333, align 4, !tbaa !54
  %335 = tail call float @llvm.fmuladd.f32(float %332, float %334, float %319)
  %336 = or disjoint i32 %329, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds float, ptr %15, i64 %337
  %339 = load float, ptr %338, align 4, !tbaa !54
  %340 = or disjoint i32 %329, 2
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds float, ptr %15, i64 %341
  %343 = load float, ptr %342, align 4, !tbaa !54
  %344 = trunc i64 %317 to i32
  %345 = xor i32 %344, -1
  %346 = add i32 %345, %2
  %347 = mul nsw i32 %346, %1
  %348 = add nsw i32 %347, %298
  %349 = shl nsw i32 %348, 2
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, ptr %15, i64 %350
  %352 = load float, ptr %351, align 4, !tbaa !54
  %353 = tail call float @llvm.fmuladd.f32(float %352, float %334, float %320)
  %354 = or disjoint i32 %349, 1
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float, ptr %15, i64 %355
  %357 = load float, ptr %356, align 4, !tbaa !54
  %358 = or disjoint i32 %349, 2
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds float, ptr %15, i64 %359
  %361 = load float, ptr %360, align 4, !tbaa !54
  %362 = insertelement <4 x float> poison, float %357, i64 0
  %363 = insertelement <4 x float> %362, float %361, i64 1
  %364 = insertelement <4 x float> %363, float %339, i64 2
  %365 = insertelement <4 x float> %364, float %343, i64 3
  %366 = insertelement <4 x float> poison, float %334, i64 0
  %367 = shufflevector <4 x float> %366, <4 x float> poison, <4 x i32> zeroinitializer
  %368 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %365, <4 x float> %367, <4 x float> %321)
  br label %369

369:                                              ; preds = %325, %316
  %370 = phi float [ %353, %325 ], [ %320, %316 ]
  %371 = phi float [ %335, %325 ], [ %319, %316 ]
  %372 = phi <4 x float> [ %368, %325 ], [ %321, %316 ]
  %373 = add nuw nsw i64 %318, 1
  %374 = add nsw i64 %317, 1
  %375 = icmp eq i64 %373, %120
  br i1 %375, label %376, label %316, !llvm.loop !316

376:                                              ; preds = %369
  %377 = shufflevector <4 x float> %372, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %377, ptr %108, align 4, !tbaa !54
  %378 = shufflevector <4 x float> %372, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %378, ptr %110, align 4, !tbaa !54
  br label %379

379:                                              ; preds = %376, %301
  %380 = phi float [ %370, %376 ], [ %311, %301 ]
  %381 = phi float [ %371, %376 ], [ %310, %301 ]
  %382 = phi <4 x float> [ %372, %376 ], [ %315, %301 ]
  store float %381, ptr %6, align 8, !tbaa !54
  store float %380, ptr %7, align 4, !tbaa !54
  %383 = zext nneg i32 %307 to i64
  %384 = getelementptr inbounds float, ptr %0, i64 %383
  store float %381, ptr %384, align 4, !tbaa !54
  %385 = or disjoint i32 %307, 1
  %386 = zext nneg i32 %385 to i64
  %387 = getelementptr inbounds float, ptr %0, i64 %386
  %388 = extractelement <4 x float> %382, i64 2
  store float %388, ptr %387, align 4, !tbaa !54
  %389 = or disjoint i32 %307, 2
  %390 = zext nneg i32 %389 to i64
  %391 = getelementptr inbounds float, ptr %0, i64 %390
  %392 = extractelement <4 x float> %382, i64 3
  store float %392, ptr %391, align 4, !tbaa !54
  %393 = trunc i64 %302 to i32
  %394 = xor i32 %393, -1
  %395 = add i32 %394, %2
  %396 = mul nsw i32 %395, %1
  %397 = add nsw i32 %396, %299
  %398 = shl nsw i32 %397, 2
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, ptr %0, i64 %399
  store float %380, ptr %400, align 4, !tbaa !54
  %401 = or disjoint i32 %398, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds float, ptr %0, i64 %402
  %404 = extractelement <4 x float> %382, i64 0
  store float %404, ptr %403, align 4, !tbaa !54
  %405 = or disjoint i32 %398, 2
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds float, ptr %0, i64 %406
  %408 = extractelement <4 x float> %382, i64 1
  store float %408, ptr %407, align 4, !tbaa !54
  %409 = add nuw nsw i64 %302, 1
  %410 = add nsw i64 %303, 1
  %411 = icmp eq i64 %409, %119
  br i1 %411, label %300, label %301, !llvm.loop !317

412:                                              ; preds = %300, %459
  %413 = phi i64 [ %472, %459 ], [ %23, %300 ]
  %414 = phi i32 [ %473, %459 ], [ 0, %300 ]
  %415 = mul i64 %413, %116
  %416 = add i64 %415, %296
  %417 = trunc i64 %416 to i32
  %418 = shl nsw i32 %417, 2
  call fastcc void @zero_v3(ptr noundef nonnull %6) #22
  %419 = sub nsw i64 %413, %23
  %420 = add nsw i64 %413, %23
  %421 = icmp slt i64 %419, %420
  %422 = load <2 x float>, ptr %6, align 8, !tbaa !54
  %423 = load float, ptr %109, align 8, !tbaa !54
  br i1 %421, label %424, label %459

424:                                              ; preds = %412
  %425 = zext i32 %414 to i64
  br label %426

426:                                              ; preds = %424, %426
  %427 = phi i64 [ %425, %424 ], [ %455, %426 ]
  %428 = phi i64 [ 0, %424 ], [ %454, %426 ]
  %429 = phi float [ %423, %424 ], [ %453, %426 ]
  %430 = phi <2 x float> [ %422, %424 ], [ %448, %426 ]
  %431 = mul i64 %427, %116
  %432 = add i64 %431, %296
  %433 = trunc i64 %432 to i32
  %434 = shl nsw i32 %433, 2
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds float, ptr %15, i64 %435
  %437 = load float, ptr %436, align 4, !tbaa !54
  %438 = getelementptr inbounds float, ptr %25, i64 %428
  %439 = load float, ptr %438, align 4, !tbaa !54
  %440 = or disjoint i32 %434, 1
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds float, ptr %15, i64 %441
  %443 = load float, ptr %442, align 4, !tbaa !54
  %444 = insertelement <2 x float> poison, float %437, i64 0
  %445 = insertelement <2 x float> %444, float %443, i64 1
  %446 = insertelement <2 x float> poison, float %439, i64 0
  %447 = shufflevector <2 x float> %446, <2 x float> poison, <2 x i32> zeroinitializer
  %448 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %445, <2 x float> %447, <2 x float> %430)
  %449 = or disjoint i32 %434, 2
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds float, ptr %15, i64 %450
  %452 = load float, ptr %451, align 4, !tbaa !54
  %453 = tail call float @llvm.fmuladd.f32(float %452, float %439, float %429)
  %454 = add nuw nsw i64 %428, 1
  %455 = add i64 %427, 1
  %456 = icmp eq i64 %454, %121
  br i1 %456, label %457, label %426, !llvm.loop !318

457:                                              ; preds = %426
  %458 = extractelement <2 x float> %448, i64 1
  store float %458, ptr %108, align 4, !tbaa !54
  store float %453, ptr %109, align 8, !tbaa !54
  br label %459

459:                                              ; preds = %457, %412
  %460 = phi float [ %453, %457 ], [ %423, %412 ]
  %461 = phi <2 x float> [ %448, %457 ], [ %422, %412 ]
  %462 = extractelement <2 x float> %461, i64 0
  store float %462, ptr %6, align 8, !tbaa !54
  %463 = sext i32 %418 to i64
  %464 = getelementptr inbounds float, ptr %0, i64 %463
  store float %462, ptr %464, align 4, !tbaa !54
  %465 = or disjoint i32 %418, 1
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds float, ptr %0, i64 %466
  %468 = extractelement <2 x float> %461, i64 1
  store float %468, ptr %467, align 4, !tbaa !54
  %469 = or disjoint i32 %418, 2
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds float, ptr %0, i64 %470
  store float %460, ptr %471, align 4, !tbaa !54
  %472 = add nsw i64 %413, 1
  %473 = add i32 %414, 1
  %474 = icmp eq i32 %473, %117
  br i1 %474, label %475, label %412, !llvm.loop !319

475:                                              ; preds = %459, %300
  %476 = add nuw nsw i64 %296, 1
  %477 = icmp eq i64 %476, %118
  br i1 %477, label %478, label %295, !llvm.loop !320

478:                                              ; preds = %475, %104
  %479 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %479(ptr noundef nonnull %25) #23
  %480 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %480(ptr noundef %15) #23
  br label %481

481:                                              ; preds = %9, %5, %478, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @RVAddBitmaps_float(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #19 !PGOFuncName !321 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %65

7:                                                ; preds = %5
  %8 = icmp sgt i32 %3, 0
  %9 = zext nneg i32 %4 to i64
  %10 = zext nneg i32 %3 to i64
  br label %11

11:                                               ; preds = %7, %62
  %12 = phi i64 [ 0, %7 ], [ %63, %62 ]
  br i1 %8, label %13, label %62

13:                                               ; preds = %11
  %14 = trunc i64 %12 to i32
  %15 = mul i32 %14, %3
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %60, %16 ]
  %18 = trunc i64 %17 to i32
  %19 = add i32 %15, %18
  %20 = shl nsw i32 %19, 2
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds float, ptr %0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !54
  %24 = getelementptr inbounds float, ptr %1, i64 %21
  %25 = load float, ptr %24, align 4, !tbaa !54
  %26 = fadd float %23, %25
  %27 = fcmp ogt float %26, 1.000000e+00
  %28 = select i1 %27, float 1.000000e+00, float %26
  %29 = getelementptr inbounds float, ptr %2, i64 %21
  store float %28, ptr %29, align 4, !tbaa !54
  %30 = or disjoint i32 %20, 1
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds float, ptr %0, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !54
  %34 = getelementptr inbounds float, ptr %1, i64 %31
  %35 = load float, ptr %34, align 4, !tbaa !54
  %36 = fadd float %33, %35
  %37 = fcmp ogt float %36, 1.000000e+00
  %38 = select i1 %37, float 1.000000e+00, float %36
  %39 = getelementptr inbounds float, ptr %2, i64 %31
  store float %38, ptr %39, align 4, !tbaa !54
  %40 = or disjoint i32 %20, 2
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds float, ptr %0, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !54
  %44 = getelementptr inbounds float, ptr %1, i64 %41
  %45 = load float, ptr %44, align 4, !tbaa !54
  %46 = fadd float %43, %45
  %47 = fcmp ogt float %46, 1.000000e+00
  %48 = select i1 %47, float 1.000000e+00, float %46
  %49 = getelementptr inbounds float, ptr %2, i64 %41
  store float %48, ptr %49, align 4, !tbaa !54
  %50 = or disjoint i32 %20, 3
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds float, ptr %0, i64 %51
  %53 = load float, ptr %52, align 4, !tbaa !54
  %54 = getelementptr inbounds float, ptr %1, i64 %51
  %55 = load float, ptr %54, align 4, !tbaa !54
  %56 = fadd float %53, %55
  %57 = fcmp ogt float %56, 1.000000e+00
  %58 = select i1 %57, float 1.000000e+00, float %56
  %59 = getelementptr inbounds float, ptr %2, i64 %51
  store float %58, ptr %59, align 4, !tbaa !54
  %60 = add nuw nsw i64 %17, 1
  %61 = icmp eq i64 %60, %10
  br i1 %61, label %62, label %16, !llvm.loop !322

62:                                               ; preds = %16, %11
  %63 = add nuw nsw i64 %12, 1
  %64 = icmp eq i64 %63, %9
  br i1 %64, label %65, label %11, !llvm.loop !323

65:                                               ; preds = %62, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !324 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !54
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @IMB_buffer_float_from_byte(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_buffer_float_premultiply(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_buffer_float_unpremultiply(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_buffer_byte_from_float(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_transform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !325 {
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 43
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.TransformVars, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !149
  %11 = icmp eq i32 %10, 0
  %12 = load float, ptr %8, align 4, !tbaa !326
  br i1 %11, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.TransformVars, ptr %8, i64 0, i32 1
  %15 = load float, ptr %14, align 4, !tbaa !327
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi float [ %15, %13 ], [ %12, %6 ]
  %18 = getelementptr inbounds %struct.TransformVars, ptr %8, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !148
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 30
  %23 = load i16, ptr %22, align 2, !tbaa !328
  %24 = sitofp i16 %23 to float
  %25 = fdiv float %24, 1.000000e+02
  %26 = getelementptr inbounds %struct.TransformVars, ptr %8, i64 0, i32 2
  %27 = insertelement <2 x i32> poison, i32 %2, i64 0
  %28 = insertelement <2 x i32> %27, i32 %3, i64 1
  %29 = sitofp <2 x i32> %28 to <2 x float>
  %30 = load <2 x float>, ptr %26, align 4, !tbaa !54
  %31 = fmul <2 x float> %29, <float 5.000000e-01, float 5.000000e-01>
  %32 = insertelement <2 x float> poison, float %25, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %33, <2 x float> %31)
  br label %44

35:                                               ; preds = %16
  %36 = insertelement <2 x i32> poison, i32 %2, i64 0
  %37 = insertelement <2 x i32> %36, i32 %3, i64 1
  %38 = sitofp <2 x i32> %37 to <2 x float>
  %39 = getelementptr inbounds %struct.TransformVars, ptr %8, i64 0, i32 2
  %40 = load <2 x float>, ptr %39, align 4, !tbaa !54
  %41 = fdiv <2 x float> %40, <float 1.000000e+02, float 1.000000e+02>
  %42 = fmul <2 x float> %38, <float 5.000000e-01, float 5.000000e-01>
  %43 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %41, <2 x float> %42)
  br label %44

44:                                               ; preds = %35, %21
  %45 = phi <2 x float> [ %43, %35 ], [ %34, %21 ]
  %46 = getelementptr inbounds %struct.TransformVars, ptr %8, i64 0, i32 4
  %47 = load float, ptr %46, align 4, !tbaa !145
  %48 = fmul float %47, 0x3F91DF46A0000000
  %49 = getelementptr inbounds %struct.TransformVars, ptr %8, i64 0, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !147
  %51 = extractelement <2 x float> %45, i64 0
  %52 = extractelement <2 x float> %45, i64 1
  tail call fastcc void @transform_image(i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, float noundef %12, float noundef %17, float noundef %51, float noundef %52, float noundef %48, i32 noundef %50) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @transform_image(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) unnamed_addr #0 !PGOFuncName !329 {
  %11 = tail call float @sinf(float noundef %8) #23
  %12 = tail call float @cosf(float noundef %8) #23
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = icmp sgt i32 %0, 0
  %16 = fneg float %11
  %17 = sitofp i32 %0 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = sitofp i32 %1 to float
  %20 = fmul float %19, 5.000000e-01
  br label %21

21:                                               ; preds = %14, %44
  %22 = phi i32 [ 0, %14 ], [ %45, %44 ]
  br i1 %15, label %23, label %44

23:                                               ; preds = %21
  %24 = sitofp i32 %22 to float
  %25 = fsub float %24, %7
  %26 = fmul float %11, %25
  %27 = fmul float %12, %25
  br label %28

28:                                               ; preds = %23, %41
  %29 = phi i32 [ 0, %23 ], [ %42, %41 ]
  %30 = sitofp i32 %29 to float
  %31 = fsub float %30, %6
  %32 = tail call float @llvm.fmuladd.f32(float %12, float %31, float %26)
  %33 = tail call float @llvm.fmuladd.f32(float %16, float %31, float %27)
  %34 = fdiv float %32, %4
  %35 = fdiv float %33, %5
  %36 = fadd float %18, %34
  %37 = fadd float %20, %35
  switch i32 %9, label %41 [
    i32 0, label %38
    i32 1, label %39
    i32 2, label %40
  ]

38:                                               ; preds = %28
  tail call void @nearest_interpolation(ptr noundef %2, ptr noundef %3, float noundef %36, float noundef %37, i32 noundef %29, i32 noundef %22) #23
  br label %41

39:                                               ; preds = %28
  tail call void @bilinear_interpolation(ptr noundef %2, ptr noundef %3, float noundef %36, float noundef %37, i32 noundef %29, i32 noundef %22) #23
  br label %41

40:                                               ; preds = %28
  tail call void @bicubic_interpolation(ptr noundef %2, ptr noundef %3, float noundef %36, float noundef %37, i32 noundef %29, i32 noundef %22) #23
  br label %41

41:                                               ; preds = %38, %39, %40, %28
  %42 = add nuw nsw i32 %29, 1
  %43 = icmp eq i32 %42, %0
  br i1 %43, label %44, label %28, !llvm.loop !330

44:                                               ; preds = %41, %21
  %45 = add nuw nsw i32 %22, 1
  %46 = icmp eq i32 %45, %1
  br i1 %46, label %47, label %21, !llvm.loop !331

47:                                               ; preds = %44, %10
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare void @nearest_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bilinear_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bicubic_interpolation(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequence_seqbase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequencer_give_ibuf_seqbase(ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_sequencer_input_have_to_preprocess(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @do_adjustment_impl(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !332 {
  %4 = getelementptr inbounds %struct.SeqRenderData, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %19, %3
  %6 = phi ptr [ %1, %3 ], [ %20, %19 ]
  %7 = load ptr, ptr %4, align 8, !tbaa !123
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.Editing, ptr %9, i64 0, i32 1
  %11 = tail call ptr @BKE_sequence_seqbase(ptr noundef nonnull %10, ptr noundef %6) #23
  %12 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !181
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = add nsw i32 %13, -1
  %17 = tail call ptr @BKE_sequencer_give_ibuf_seqbase(ptr noundef nonnull %0, float noundef %2, i32 noundef %16, ptr noundef %11) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5, %15
  %20 = tail call ptr @BKE_sequence_metastrip(ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %6) #23
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %5

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %17, %15 ], [ null, %19 ]
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @BKE_sequence_metastrip(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_gaussian_blur_effect_float(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 !PGOFuncName !333 {
  %9 = alloca [4 x float], align 16
  %10 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.GaussianBlurVars, ptr %11, i64 0, i32 1
  %13 = load <2 x float>, ptr %11, align 4, !tbaa !54
  %14 = fadd <2 x float> %13, <float 5.000000e-01, float 5.000000e-01>
  %15 = fptosi <2 x float> %14 to <2 x i32>
  %16 = extractelement <2 x i32> %15, i64 0
  %17 = extractelement <2 x float> %13, i64 0
  %18 = tail call fastcc ptr @make_gaussian_blur_kernel(float noundef %17, i32 noundef %16) #22
  %19 = load float, ptr %11, align 4, !tbaa !191
  %20 = load float, ptr %12, align 4, !tbaa !193
  %21 = fcmp oeq float %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %8
  %23 = extractelement <2 x i32> %15, i64 1
  %24 = tail call fastcc ptr @make_gaussian_blur_kernel(float noundef %20, i32 noundef %23) #22
  br label %25

25:                                               ; preds = %8, %22
  %26 = phi ptr [ %24, %22 ], [ %18, %8 ]
  %27 = icmp sgt i32 %3, 0
  br i1 %27, label %28, label %149

28:                                               ; preds = %25
  %29 = icmp sgt i32 %2, 0
  %30 = sub nsw i32 0, %1
  %31 = icmp ne <2 x i32> %15, zeroinitializer
  %32 = extractelement <2 x i1> %31, i64 0
  %33 = extractelement <2 x i1> %31, i64 1
  %34 = select i1 %32, i1 %33, i1 false
  %35 = icmp eq i32 %16, 0
  %36 = sub i32 0, %16
  %37 = sext i32 %4 to i64
  %38 = extractelement <2 x i32> %15, i64 1
  %39 = sub i32 0, %38
  %40 = sext i32 %1 to i64
  %41 = sext i32 %5 to i64
  %42 = zext i32 %2 to i64
  %43 = sext i32 %30 to i64
  %44 = sext i32 %16 to i64
  %45 = sext i32 %38 to i64
  %46 = zext nneg i32 %3 to i64
  %47 = zext nneg i32 %2 to i64
  br label %48

48:                                               ; preds = %28, %143
  %49 = phi i64 [ 0, %28 ], [ %144, %143 ]
  %50 = phi i32 [ %38, %28 ], [ %53, %143 ]
  %51 = phi i32 [ %39, %28 ], [ %147, %143 ]
  %52 = phi i32 [ 0, %28 ], [ %146, %143 ]
  %53 = add i32 %50, 1
  %54 = sext i32 %51 to i64
  br i1 %29, label %55, label %143

55:                                               ; preds = %48
  %56 = sub nsw i64 %49, %45
  %57 = add nsw i64 %49, %45
  %58 = icmp sgt i64 %56, %57
  %59 = add i32 %52, %38
  %60 = trunc i64 %49 to i32
  %61 = mul i32 %60, %2
  br label %62

62:                                               ; preds = %55, %133
  %63 = phi i64 [ 0, %55 ], [ %138, %133 ]
  %64 = phi i32 [ %16, %55 ], [ %67, %133 ]
  %65 = phi i32 [ %36, %55 ], [ %141, %133 ]
  %66 = phi i32 [ 0, %55 ], [ %140, %133 ]
  %67 = add i32 %64, 1
  %68 = sext i32 %65 to i64
  %69 = trunc i64 %63 to i32
  %70 = add i32 %61, %69
  %71 = shl nsw i32 %70, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br i1 %58, label %133, label %72

72:                                               ; preds = %62
  %73 = sub nsw i64 %63, %44
  %74 = add nsw i64 %63, %44
  %75 = icmp sgt i64 %73, %74
  %76 = add i32 %66, %16
  br label %77

77:                                               ; preds = %72, %128
  %78 = phi i64 [ %54, %72 ], [ %130, %128 ]
  %79 = phi float [ 0.000000e+00, %72 ], [ %129, %128 ]
  %80 = icmp slt i64 %78, %43
  br i1 %80, label %128, label %81

81:                                               ; preds = %77
  %82 = add nsw i64 %78, %40
  %83 = icmp sge i64 %82, %41
  %84 = select i1 %83, i1 true, i1 %75
  br i1 %84, label %128, label %85

85:                                               ; preds = %81
  %86 = mul i64 %82, %42
  %87 = trunc i64 %78 to i32
  %88 = add i32 %59, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, ptr %26, i64 %89
  br label %91

91:                                               ; preds = %85, %123
  %92 = phi i64 [ %68, %85 ], [ %125, %123 ]
  %93 = phi float [ %79, %85 ], [ %124, %123 ]
  %94 = add i64 %92, %86
  %95 = trunc i64 %94 to i32
  %96 = shl nsw i32 %95, 2
  %97 = icmp sgt i64 %92, -1
  %98 = icmp slt i64 %92, %37
  %99 = and i1 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %91
  br i1 %34, label %101, label %109

101:                                              ; preds = %100
  %102 = trunc i64 %92 to i32
  %103 = add i32 %76, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, ptr %18, i64 %104
  %106 = load float, ptr %105, align 4, !tbaa !54
  %107 = load float, ptr %90, align 4, !tbaa !54
  %108 = fmul float %106, %107
  br label %118

109:                                              ; preds = %100
  br i1 %35, label %110, label %112

110:                                              ; preds = %109
  %111 = load float, ptr %90, align 4, !tbaa !54
  br label %118

112:                                              ; preds = %109
  %113 = trunc i64 %92 to i32
  %114 = add i32 %76, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, ptr %18, i64 %115
  %117 = load float, ptr %116, align 4, !tbaa !54
  br label %118

118:                                              ; preds = %110, %112, %101
  %119 = phi float [ %108, %101 ], [ %111, %110 ], [ %117, %112 ]
  %120 = sext i32 %96 to i64
  %121 = getelementptr inbounds float, ptr %6, i64 %120
  call fastcc void @madd_v4_v4fl(ptr noundef nonnull %9, ptr noundef %121, float noundef %119) #22
  %122 = fadd float %93, %119
  br label %123

123:                                              ; preds = %91, %118
  %124 = phi float [ %122, %118 ], [ %93, %91 ]
  %125 = add nsw i64 %92, 1
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %67, %126
  br i1 %127, label %128, label %91, !llvm.loop !334

128:                                              ; preds = %123, %81, %77
  %129 = phi float [ %79, %81 ], [ %79, %77 ], [ %124, %123 ]
  %130 = add nsw i64 %78, 1
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %53, %131
  br i1 %132, label %133, label %77, !llvm.loop !335

133:                                              ; preds = %128, %62
  %134 = phi float [ 0.000000e+00, %62 ], [ %129, %128 ]
  %135 = zext nneg i32 %71 to i64
  %136 = getelementptr inbounds float, ptr %7, i64 %135
  %137 = fdiv float 1.000000e+00, %134
  call fastcc void @mul_v4_v4fl(ptr noundef %136, ptr noundef nonnull %9, float noundef %137) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #21
  %138 = add nuw nsw i64 %63, 1
  %139 = trunc i64 %63 to i32
  %140 = xor i32 %139, -1
  %141 = add i32 %65, 1
  %142 = icmp eq i64 %138, %47
  br i1 %142, label %143, label %62, !llvm.loop !336

143:                                              ; preds = %133, %48
  %144 = add nuw nsw i64 %49, 1
  %145 = trunc i64 %49 to i32
  %146 = xor i32 %145, -1
  %147 = add i32 %51, 1
  %148 = icmp eq i64 %144, %46
  br i1 %148, label %149, label %48, !llvm.loop !337

149:                                              ; preds = %143, %25
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %150(ptr noundef %18) #23
  %151 = icmp eq ptr %18, %26
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %153(ptr noundef %26) #23
  br label %154

154:                                              ; preds = %152, %149
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_gaussian_blur_effect_byte(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 !PGOFuncName !338 {
  %9 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 43
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.GaussianBlurVars, ptr %10, i64 0, i32 1
  %12 = load <2 x float>, ptr %10, align 4, !tbaa !54
  %13 = fadd <2 x float> %12, <float 5.000000e-01, float 5.000000e-01>
  %14 = fptosi <2 x float> %13 to <2 x i32>
  %15 = extractelement <2 x i32> %14, i64 0
  %16 = extractelement <2 x float> %12, i64 0
  %17 = tail call fastcc ptr @make_gaussian_blur_kernel(float noundef %16, i32 noundef %15) #22
  %18 = load float, ptr %10, align 4, !tbaa !191
  %19 = load float, ptr %11, align 4, !tbaa !193
  %20 = fcmp oeq float %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %8
  %22 = extractelement <2 x i32> %14, i64 1
  %23 = tail call fastcc ptr @make_gaussian_blur_kernel(float noundef %19, i32 noundef %22) #22
  br label %24

24:                                               ; preds = %8, %21
  %25 = phi ptr [ %23, %21 ], [ %17, %8 ]
  %26 = icmp sgt i32 %3, 0
  br i1 %26, label %27, label %195

27:                                               ; preds = %24
  %28 = icmp sgt i32 %2, 0
  %29 = sub nsw i32 0, %1
  %30 = icmp ne <2 x i32> %14, zeroinitializer
  %31 = extractelement <2 x i1> %30, i64 0
  %32 = extractelement <2 x i1> %30, i64 1
  %33 = select i1 %31, i1 %32, i1 false
  %34 = icmp eq i32 %15, 0
  %35 = sub i32 0, %15
  %36 = sext i32 %4 to i64
  %37 = extractelement <2 x i32> %14, i64 1
  %38 = sub i32 0, %37
  %39 = sext i32 %1 to i64
  %40 = sext i32 %5 to i64
  %41 = zext i32 %2 to i64
  %42 = sext i32 %29 to i64
  %43 = sext i32 %15 to i64
  %44 = sext i32 %37 to i64
  %45 = zext nneg i32 %3 to i64
  %46 = zext nneg i32 %2 to i64
  br label %47

47:                                               ; preds = %27, %189
  %48 = phi i64 [ 0, %27 ], [ %190, %189 ]
  %49 = phi i32 [ %37, %27 ], [ %52, %189 ]
  %50 = phi i32 [ %38, %27 ], [ %193, %189 ]
  %51 = phi i32 [ 0, %27 ], [ %192, %189 ]
  %52 = add i32 %49, 1
  %53 = sext i32 %50 to i64
  br i1 %28, label %54, label %189

54:                                               ; preds = %47
  %55 = sub nsw i64 %48, %44
  %56 = add nsw i64 %48, %44
  %57 = icmp sgt i64 %55, %56
  %58 = add i32 %51, %37
  %59 = trunc i64 %48 to i32
  %60 = mul i32 %59, %2
  br label %61

61:                                               ; preds = %54, %158
  %62 = phi i64 [ 0, %54 ], [ %184, %158 ]
  %63 = phi i32 [ %15, %54 ], [ %66, %158 ]
  %64 = phi i32 [ %35, %54 ], [ %187, %158 ]
  %65 = phi i32 [ 0, %54 ], [ %186, %158 ]
  %66 = add i32 %63, 1
  %67 = sext i32 %64 to i64
  %68 = trunc i64 %62 to i32
  %69 = add i32 %60, %68
  %70 = shl nsw i32 %69, 2
  br i1 %57, label %158, label %71

71:                                               ; preds = %61
  %72 = sub nsw i64 %62, %43
  %73 = add nsw i64 %62, %43
  %74 = icmp sgt i64 %72, %73
  %75 = add i32 %65, %15
  br label %76

76:                                               ; preds = %71, %152
  %77 = phi i64 [ %53, %71 ], [ %155, %152 ]
  %78 = phi float [ 0.000000e+00, %71 ], [ %153, %152 ]
  %79 = phi <4 x float> [ zeroinitializer, %71 ], [ %154, %152 ]
  %80 = icmp slt i64 %77, %42
  br i1 %80, label %152, label %81

81:                                               ; preds = %76
  %82 = add nsw i64 %77, %39
  %83 = icmp slt i64 %82, %40
  %84 = xor i1 %83, true
  %85 = select i1 %84, i1 true, i1 %74
  br i1 %85, label %152, label %86

86:                                               ; preds = %81
  %87 = mul i64 %82, %41
  %88 = trunc i64 %77 to i32
  %89 = add i32 %58, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, ptr %25, i64 %90
  br label %92

92:                                               ; preds = %86, %146
  %93 = phi i64 [ %67, %86 ], [ %149, %146 ]
  %94 = phi float [ %78, %86 ], [ %147, %146 ]
  %95 = phi <4 x float> [ %79, %86 ], [ %148, %146 ]
  %96 = add i64 %93, %87
  %97 = trunc i64 %96 to i32
  %98 = shl nsw i32 %97, 2
  %99 = icmp sgt i64 %93, -1
  %100 = icmp slt i64 %93, %36
  %101 = and i1 %99, %100
  br i1 %101, label %102, label %146

102:                                              ; preds = %92
  br i1 %33, label %103, label %111

103:                                              ; preds = %102
  %104 = trunc i64 %93 to i32
  %105 = add i32 %75, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, ptr %17, i64 %106
  %108 = load float, ptr %107, align 4, !tbaa !54
  %109 = load float, ptr %91, align 4, !tbaa !54
  %110 = fmul float %108, %109
  br label %120

111:                                              ; preds = %102
  br i1 %34, label %112, label %114

112:                                              ; preds = %111
  %113 = load float, ptr %91, align 4, !tbaa !54
  br label %120

114:                                              ; preds = %111
  %115 = trunc i64 %93 to i32
  %116 = add i32 %75, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, ptr %17, i64 %117
  %119 = load float, ptr %118, align 4, !tbaa !54
  br label %120

120:                                              ; preds = %112, %114, %103
  %121 = phi float [ %110, %103 ], [ %113, %112 ], [ %119, %114 ]
  %122 = sext i32 %98 to i64
  %123 = getelementptr inbounds i8, ptr %6, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !170
  %125 = or disjoint i32 %98, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %6, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !170
  %129 = or disjoint i32 %98, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %6, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !170
  %133 = or disjoint i32 %98, 3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %6, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !170
  %137 = insertelement <4 x i8> poison, i8 %124, i64 0
  %138 = insertelement <4 x i8> %137, i8 %128, i64 1
  %139 = insertelement <4 x i8> %138, i8 %132, i64 2
  %140 = insertelement <4 x i8> %139, i8 %136, i64 3
  %141 = uitofp <4 x i8> %140 to <4 x float>
  %142 = insertelement <4 x float> poison, float %121, i64 0
  %143 = shufflevector <4 x float> %142, <4 x float> poison, <4 x i32> zeroinitializer
  %144 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %141, <4 x float> %143, <4 x float> %95)
  %145 = fadd float %94, %121
  br label %146

146:                                              ; preds = %92, %120
  %147 = phi float [ %145, %120 ], [ %94, %92 ]
  %148 = phi <4 x float> [ %144, %120 ], [ %95, %92 ]
  %149 = add nsw i64 %93, 1
  %150 = trunc i64 %149 to i32
  %151 = icmp eq i32 %66, %150
  br i1 %151, label %152, label %92, !llvm.loop !339

152:                                              ; preds = %146, %81, %76
  %153 = phi float [ %78, %76 ], [ %78, %81 ], [ %147, %146 ]
  %154 = phi <4 x float> [ %79, %76 ], [ %79, %81 ], [ %148, %146 ]
  %155 = add nsw i64 %77, 1
  %156 = trunc i64 %155 to i32
  %157 = icmp eq i32 %52, %156
  br i1 %157, label %158, label %76, !llvm.loop !340

158:                                              ; preds = %152, %61
  %159 = phi float [ 0.000000e+00, %61 ], [ %153, %152 ]
  %160 = phi <4 x float> [ zeroinitializer, %61 ], [ %154, %152 ]
  %161 = extractelement <4 x float> %160, i64 0
  %162 = fdiv float %161, %159
  %163 = fptoui float %162 to i8
  %164 = zext nneg i32 %70 to i64
  %165 = getelementptr inbounds i8, ptr %7, i64 %164
  store i8 %163, ptr %165, align 1, !tbaa !170
  %166 = extractelement <4 x float> %160, i64 1
  %167 = fdiv float %166, %159
  %168 = fptoui float %167 to i8
  %169 = or disjoint i32 %70, 1
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %7, i64 %170
  store i8 %168, ptr %171, align 1, !tbaa !170
  %172 = extractelement <4 x float> %160, i64 2
  %173 = fdiv float %172, %159
  %174 = fptoui float %173 to i8
  %175 = or disjoint i32 %70, 2
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %7, i64 %176
  store i8 %174, ptr %177, align 1, !tbaa !170
  %178 = extractelement <4 x float> %160, i64 3
  %179 = fdiv float %178, %159
  %180 = fptoui float %179 to i8
  %181 = or disjoint i32 %70, 3
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds i8, ptr %7, i64 %182
  store i8 %180, ptr %183, align 1, !tbaa !170
  %184 = add nuw nsw i64 %62, 1
  %185 = trunc i64 %62 to i32
  %186 = xor i32 %185, -1
  %187 = add i32 %64, 1
  %188 = icmp eq i64 %184, %46
  br i1 %188, label %189, label %61, !llvm.loop !341

189:                                              ; preds = %158, %47
  %190 = add nuw nsw i64 %48, 1
  %191 = trunc i64 %48 to i32
  %192 = xor i32 %191, -1
  %193 = add i32 %50, 1
  %194 = icmp eq i64 %190, %45
  br i1 %194, label %195, label %47, !llvm.loop !342

195:                                              ; preds = %189, %24
  %196 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %196(ptr noundef %17) #23
  %197 = icmp eq ptr %17, %25
  br i1 %197, label %200, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %199(ptr noundef %25) #23
  br label %200

200:                                              ; preds = %198, %195
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_gaussian_blur_kernel(float noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !343 {
  %3 = shl nsw i32 %1, 1
  %4 = or disjoint i32 %3, 1
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %6 = sext i32 %4 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @__func__.make_gaussian_blur_kernel) #23
  %9 = fcmp ogt float %0, 0.000000e+00
  %10 = fdiv float 1.000000e+00, %0
  %11 = select i1 %9, float %10, float 0.000000e+00
  %12 = icmp slt i32 %1, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %2
  %14 = sub nsw i32 0, %1
  %15 = sext i32 %14 to i64
  %16 = zext nneg i32 %1 to i64
  %17 = add nuw i32 %1, 1
  %18 = getelementptr float, ptr %8, i64 %16
  br label %19

19:                                               ; preds = %13, %19
  %20 = phi i64 [ %15, %13 ], [ %28, %19 ]
  %21 = phi float [ 0.000000e+00, %13 ], [ %26, %19 ]
  %22 = trunc i64 %20 to i32
  %23 = sitofp i32 %22 to float
  %24 = fmul float %11, %23
  %25 = tail call float @RE_filter_value(i32 noundef 5, float noundef %24) #23
  %26 = fadd float %21, %25
  %27 = getelementptr float, ptr %18, i64 %20
  store float %25, ptr %27, align 4, !tbaa !54
  %28 = add nsw i64 %20, 1
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %17, %29
  br i1 %30, label %31, label %19, !llvm.loop !344

31:                                               ; preds = %19
  %32 = fdiv float 1.000000e+00, %26
  br i1 %12, label %43, label %33

33:                                               ; preds = %31
  %34 = or disjoint i32 %3, 1
  %35 = zext nneg i32 %34 to i64
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %41, %36 ]
  %38 = getelementptr inbounds float, ptr %8, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !54
  %40 = fmul float %32, %39
  store float %40, ptr %38, align 4, !tbaa !54
  %41 = add nuw nsw i64 %37, 1
  %42 = icmp eq i64 %41, %35
  br i1 %42, label %43, label %36, !llvm.loop !345

43:                                               ; preds = %36, %2, %31
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v4_v4fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !346 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = load float, ptr %0, align 4, !tbaa !54
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !54
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !54
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !54
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !54
  %17 = getelementptr inbounds float, ptr %1, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !54
  %19 = getelementptr inbounds float, ptr %0, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !54
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %2, float %20)
  store float %21, ptr %19, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v4_v4fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !347 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !54
  %14 = getelementptr inbounds float, ptr %1, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !54
  %16 = fmul float %15, %2
  %17 = getelementptr inbounds float, ptr %0, i64 3
  store float %16, ptr %17, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare float @RE_filter_value(i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree noinline nounwind optsize memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize }

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
!45 = !{!35, !39, i64 104}
!46 = !{!44, !39, i64 16}
!47 = !{!44, !36, i64 0}
!48 = !{!35, !36, i64 232}
!49 = !{!36, !36, i64 0}
!50 = !{!35, !39, i64 96}
!51 = !{!35, !39, i64 140}
!52 = !{!35, !39, i64 108}
!53 = !{!35, !40, i64 228}
!54 = !{!40, !40, i64 0}
!55 = !{!44, !39, i64 20}
!56 = !{!35, !39, i64 136}
!57 = !{!44, !40, i64 8}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = distinct !{!60, !59}
!61 = !{!35, !39, i64 100}
!62 = !{!63, !36, i64 24}
!63 = !{!"SeqEffectHandle", !37, i64 0, !37, i64 1, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88}
!64 = !{!"seqeffects.c:get_sequence_effect_impl"}
!65 = !{!63, !37, i64 0}
!66 = !{!63, !37, i64 1}
!67 = !{!63, !36, i64 8}
!68 = !{!63, !36, i64 16}
!69 = !{!63, !36, i64 40}
!70 = !{!63, !36, i64 48}
!71 = !{!63, !36, i64 64}
!72 = !{!63, !36, i64 56}
!73 = !{!63, !36, i64 72}
!74 = !{!63, !36, i64 80}
!75 = !{!63, !36, i64 88}
!76 = !{!63, !36, i64 32}
!77 = !{!35, !39, i64 320}
!78 = !{!"seqeffects.c:init_noop"}
!79 = !{!"seqeffects.c:num_inputs_default"}
!80 = !{!"seqeffects.c:load_noop"}
!81 = !{!"seqeffects.c:free_noop"}
!82 = !{!"seqeffects.c:early_out_noop"}
!83 = !{!"seqeffects.c:get_default_fac_noop"}
!84 = !{!"seqeffects.c:store_icu_yrange_noop"}
!85 = !{!"seqeffects.c:init_execution"}
!86 = !{!"seqeffects.c:do_cross_effect"}
!87 = !{!88, !36, i64 48}
!88 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !89, i64 2436, !90, i64 2456}
!89 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!90 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!91 = !{!92, !39, i64 24}
!92 = !{!"SeqRenderData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !40, i64 40, !37, i64 44, !37, i64 45}
!93 = !{!"seqeffects.c:early_out_fade"}
!94 = !{!"seqeffects.c:get_default_fac_fade"}
!95 = !{!"seqeffects.c:init_gammacross"}
!96 = !{!"seqeffects.c:load_gammacross"}
!97 = !{!"seqeffects.c:free_gammacross"}
!98 = !{!"seqeffects.c:gammacross_init_execution"}
!99 = !{!"seqeffects.c:do_gammacross_effect"}
!100 = !{!"seqeffects.c:do_add_effect"}
!101 = !{!"seqeffects.c:early_out_mul_input2"}
!102 = !{!"seqeffects.c:do_sub_effect"}
!103 = !{!"seqeffects.c:do_mul_effect"}
!104 = !{!"seqeffects.c:init_alpha_over_or_under"}
!105 = !{!"seqeffects.c:do_alphaover_effect"}
!106 = !{!"seqeffects.c:do_overdrop_effect"}
!107 = !{!"seqeffects.c:do_alphaunder_effect"}
!108 = !{!"seqeffects.c:init_wipe_effect"}
!109 = !{!"seqeffects.c:num_inputs_wipe"}
!110 = !{!"seqeffects.c:free_wipe_effect"}
!111 = !{!"seqeffects.c:copy_wipe_effect"}
!112 = !{!"seqeffects.c:do_wipe_effect"}
!113 = !{!92, !39, i64 28}
!114 = !{!88, !36, i64 40}
!115 = !{!"seqeffects.c:init_glow_effect"}
!116 = !{!117, !39, i64 16}
!117 = !{!"GlowVars", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !39, i64 20}
!118 = !{!117, !39, i64 20}
!119 = !{!"seqeffects.c:num_inputs_glow"}
!120 = !{!"seqeffects.c:free_glow_effect"}
!121 = !{!"seqeffects.c:copy_glow_effect"}
!122 = !{!"seqeffects.c:do_glow_effect"}
!123 = !{!92, !36, i64 16}
!124 = !{!125, !39, i64 764}
!125 = !{!"Scene", !126, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !127, i64 280, !135, i64 4264, !42, i64 4296, !42, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !39, i64 4380, !42, i64 4384, !136, i64 4400, !137, i64 4416, !140, i64 4600, !36, i64 4608, !141, i64 4616, !36, i64 4640, !142, i64 4648, !142, i64 4656, !129, i64 4664, !130, i64 4824, !143, i64 4888, !36, i64 4952}
!126 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!127 = !{!"RenderData", !128, i64 0, !36, i64 248, !36, i64 256, !131, i64 264, !132, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !41, i64 432, !41, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !39, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !39, i64 484, !39, i64 488, !41, i64 492, !41, i64 494, !39, i64 496, !39, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !133, i64 544, !133, i64 560, !89, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !39, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !40, i64 660, !40, i64 664, !41, i64 668, !41, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !39, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !41, i64 2524, !41, i64 2526, !40, i64 2528, !40, i64 2532, !41, i64 2536, !41, i64 2538, !40, i64 2540, !41, i64 2544, !41, i64 2546, !39, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !40, i64 2560, !40, i64 2564, !36, i64 2568, !39, i64 2576, !40, i64 2580, !37, i64 2584, !134, i64 2616, !39, i64 3976, !39, i64 3980}
!128 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !129, i64 24, !130, i64 184}
!129 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!130 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!131 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!132 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!133 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!134 = !{!"BakeData", !128, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!135 = !{!"AudioData", !39, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !41, i64 20, !41, i64 22, !40, i64 24, !40, i64 28}
!136 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!137 = !{!"GameData", !136, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !138, i64 40, !41, i64 64, !41, i64 66, !40, i64 68, !139, i64 72, !40, i64 128, !40, i64 132, !39, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!138 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !40, i64 8, !40, i64 12, !36, i64 16}
!139 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !39, i64 40, !40, i64 44, !40, i64 48, !41, i64 52, !41, i64 54}
!140 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!141 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!142 = !{!"long", !37, i64 0}
!143 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!144 = !{!"seqeffects.c:init_transform_effect"}
!145 = !{!146, !40, i64 16}
!146 = !{!"TransformVars", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!147 = !{!146, !39, i64 24}
!148 = !{!146, !39, i64 20}
!149 = !{!146, !39, i64 28}
!150 = !{!"seqeffects.c:num_inputs_transform"}
!151 = !{!"seqeffects.c:free_transform_effect"}
!152 = !{!"seqeffects.c:copy_transform_effect"}
!153 = !{!"seqeffects.c:do_transform_effect"}
!154 = !{!"seqeffects.c:init_speed_effect"}
!155 = !{!"seqeffects.c:num_inputs_speed"}
!156 = !{!"seqeffects.c:load_speed_effect"}
!157 = !{!"seqeffects.c:free_speed_effect"}
!158 = !{!"seqeffects.c:copy_speed_effect"}
!159 = !{!"seqeffects.c:do_speed_effect"}
!160 = !{!"seqeffects.c:early_out_speed"}
!161 = !{!"seqeffects.c:store_icu_yrange_speed"}
!162 = !{!"seqeffects.c:init_solid_color"}
!163 = !{!"seqeffects.c:num_inputs_color"}
!164 = !{!"seqeffects.c:early_out_color"}
!165 = !{!"seqeffects.c:free_solid_color"}
!166 = !{!"seqeffects.c:copy_solid_color"}
!167 = !{!"seqeffects.c:do_solid_color"}
!168 = !{!88, !39, i64 20}
!169 = !{!88, !39, i64 16}
!170 = !{!37, !37, i64 0}
!171 = distinct !{!171, !59}
!172 = distinct !{!172, !59}
!173 = distinct !{!173, !59}
!174 = distinct !{!174, !59}
!175 = distinct !{!175, !59}
!176 = distinct !{!176, !59}
!177 = !{!"seqeffects.c:num_inputs_multicam"}
!178 = !{!"seqeffects.c:early_out_multicam"}
!179 = !{!"seqeffects.c:do_multicam"}
!180 = !{!35, !39, i64 160}
!181 = !{!35, !39, i64 128}
!182 = !{!125, !36, i64 256}
!183 = !{!"seqeffects.c:num_inputs_adjustment"}
!184 = !{!"seqeffects.c:early_out_adjustment"}
!185 = !{!"seqeffects.c:do_adjustment"}
!186 = !{!"seqeffects.c:init_gaussian_blur_effect"}
!187 = !{!"seqeffects.c:num_inputs_gaussian_blur"}
!188 = !{!"seqeffects.c:free_gaussian_blur_effect"}
!189 = !{!"seqeffects.c:copy_gaussian_blur_effect"}
!190 = !{!"seqeffects.c:early_out_gaussian_blur"}
!191 = !{!192, !40, i64 0}
!192 = !{!"GaussianBlurVars", !40, i64 0, !40, i64 4}
!193 = !{!192, !40, i64 4}
!194 = !{!"seqeffects.c:do_gaussian_blur_effect"}
!195 = !{!"seqeffects.c:prepare_effect_imbufs"}
!196 = !{!"seqeffects.c:slice_get_float_buffers"}
!197 = !{!"seqeffects.c:do_cross_effect_float"}
!198 = distinct !{!198, !59}
!199 = distinct !{!199, !59}
!200 = distinct !{!200, !59}
!201 = !{!"seqeffects.c:slice_get_byte_buffers"}
!202 = !{!"seqeffects.c:do_cross_effect_byte"}
!203 = distinct !{!203, !59}
!204 = distinct !{!204, !59}
!205 = distinct !{!205, !59}
!206 = !{!"seqeffects.c:build_gammatabs"}
!207 = !{!"seqeffects.c:gamtabs"}
!208 = distinct !{!208, !59}
!209 = !{!"seqeffects.c:makeGammaTables"}
!210 = distinct !{!210, !59}
!211 = distinct !{!211, !59, !212, !213}
!212 = !{!"llvm.loop.isvectorized", i32 1}
!213 = !{!"llvm.loop.unroll.runtime.disable"}
!214 = !{!"seqeffects.c:do_gammacross_effect_float"}
!215 = distinct !{!215, !59}
!216 = distinct !{!216, !59}
!217 = distinct !{!217, !59}
!218 = !{!"seqeffects.c:do_gammacross_effect_byte"}
!219 = distinct !{!219, !59}
!220 = distinct !{!220, !59}
!221 = distinct !{!221, !59}
!222 = !{!"seqeffects.c:gammaCorrect"}
!223 = !{!"seqeffects.c:invGammaCorrect"}
!224 = !{!"seqeffects.c:straight_uchar_to_premul_float"}
!225 = !{!"seqeffects.c:premul_float_to_straight_uchar"}
!226 = !{!"seqeffects.c:do_add_effect_float"}
!227 = distinct !{!227, !59}
!228 = distinct !{!228, !59}
!229 = distinct !{!229, !59}
!230 = !{!"seqeffects.c:do_add_effect_byte"}
!231 = distinct !{!231, !59}
!232 = distinct !{!232, !59}
!233 = distinct !{!233, !59}
!234 = !{!"seqeffects.c:min_ii"}
!235 = !{!"seqeffects.c:do_sub_effect_float"}
!236 = distinct !{!236, !59}
!237 = distinct !{!237, !59}
!238 = distinct !{!238, !59}
!239 = !{!"seqeffects.c:do_sub_effect_byte"}
!240 = distinct !{!240, !59}
!241 = distinct !{!241, !59}
!242 = distinct !{!242, !59}
!243 = !{!"seqeffects.c:max_ff"}
!244 = !{!"seqeffects.c:max_ii"}
!245 = !{!"seqeffects.c:do_mul_effect_float"}
!246 = distinct !{!246, !59}
!247 = distinct !{!247, !59}
!248 = distinct !{!248, !59}
!249 = !{!"seqeffects.c:do_mul_effect_byte"}
!250 = distinct !{!250, !59}
!251 = distinct !{!251, !59}
!252 = distinct !{!252, !59}
!253 = !{!"seqeffects.c:do_alphaover_effect_float"}
!254 = distinct !{!254, !59}
!255 = distinct !{!255, !59}
!256 = distinct !{!256, !59}
!257 = !{!"seqeffects.c:do_alphaover_effect_byte"}
!258 = distinct !{!258, !59}
!259 = !{!39, !39, i64 0}
!260 = distinct !{!260, !59}
!261 = distinct !{!261, !59}
!262 = !{!"seqeffects.c:do_drop_effect_float"}
!263 = distinct !{!263, !59}
!264 = distinct !{!264, !59}
!265 = !{!"seqeffects.c:do_drop_effect_byte"}
!266 = distinct !{!266, !59}
!267 = distinct !{!267, !59}
!268 = !{!"seqeffects.c:do_alphaunder_effect_float"}
!269 = distinct !{!269, !59}
!270 = distinct !{!270, !59}
!271 = distinct !{!271, !59}
!272 = !{!"seqeffects.c:do_alphaunder_effect_byte"}
!273 = distinct !{!273, !59}
!274 = distinct !{!274, !59}
!275 = distinct !{!275, !59}
!276 = !{!"seqeffects.c:do_wipe_effect_float"}
!277 = distinct !{!277, !59}
!278 = distinct !{!278, !59}
!279 = !{!"seqeffects.c:do_wipe_effect_byte"}
!280 = distinct !{!280, !59}
!281 = distinct !{!281, !59}
!282 = !{!"seqeffects.c:precalc_wipe_zone"}
!283 = !{!284, !40, i64 4}
!284 = !{!"WipeVars", !40, i64 0, !40, i64 4, !41, i64 8, !41, i64 10}
!285 = !{!286, !39, i64 4}
!286 = !{!"WipeZone", !40, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !40, i64 20}
!287 = !{!286, !40, i64 0}
!288 = !{!286, !39, i64 8}
!289 = !{!286, !39, i64 12}
!290 = !{!284, !40, i64 0}
!291 = !{!286, !39, i64 16}
!292 = !{!286, !40, i64 20}
!293 = !{!"seqeffects.c:check_zone"}
!294 = !{!284, !41, i64 8}
!295 = !{!284, !41, i64 10}
!296 = !{!"seqeffects.c:in_band"}
!297 = !{!"seqeffects.c:min_ff"}
!298 = !{!"seqeffects.c:do_glow_effect_float"}
!299 = !{!117, !40, i64 0}
!300 = !{!117, !40, i64 8}
!301 = !{!117, !40, i64 4}
!302 = !{!117, !40, i64 12}
!303 = !{!"seqeffects.c:do_glow_effect_byte"}
!304 = !{!"seqeffects.c:RVIsolateHighlights_float"}
!305 = distinct !{!305, !59}
!306 = distinct !{!306, !59}
!307 = !{!"seqeffects.c:RVBlurBitmap2_float"}
!308 = distinct !{!308, !59}
!309 = distinct !{!309, !59}
!310 = distinct !{!310, !59}
!311 = distinct !{!311, !59}
!312 = distinct !{!312, !59}
!313 = distinct !{!313, !59}
!314 = distinct !{!314, !59}
!315 = distinct !{!315, !59}
!316 = distinct !{!316, !59}
!317 = distinct !{!317, !59}
!318 = distinct !{!318, !59}
!319 = distinct !{!319, !59}
!320 = distinct !{!320, !59}
!321 = !{!"seqeffects.c:RVAddBitmaps_float"}
!322 = distinct !{!322, !59}
!323 = distinct !{!323, !59}
!324 = !{!"seqeffects.c:zero_v3"}
!325 = !{!"seqeffects.c:do_transform"}
!326 = !{!146, !40, i64 0}
!327 = !{!146, !40, i64 4}
!328 = !{!125, !41, i64 758}
!329 = !{!"seqeffects.c:transform_image"}
!330 = distinct !{!330, !59}
!331 = distinct !{!331, !59}
!332 = !{!"seqeffects.c:do_adjustment_impl"}
!333 = !{!"seqeffects.c:do_gaussian_blur_effect_float"}
!334 = distinct !{!334, !59}
!335 = distinct !{!335, !59}
!336 = distinct !{!336, !59}
!337 = distinct !{!337, !59}
!338 = !{!"seqeffects.c:do_gaussian_blur_effect_byte"}
!339 = distinct !{!339, !59}
!340 = distinct !{!340, !59}
!341 = distinct !{!341, !59}
!342 = distinct !{!342, !59}
!343 = !{!"seqeffects.c:make_gaussian_blur_kernel"}
!344 = distinct !{!344, !59}
!345 = distinct !{!345, !59}
!346 = !{!"seqeffects.c:madd_v4_v4fl"}
!347 = !{!"seqeffects.c:mul_v4_v4fl"}
