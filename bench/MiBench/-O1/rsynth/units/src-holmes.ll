; ModuleID = 'src/holmes.c'
source_filename = "src/holmes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Elm_s = type { ptr, i8, i8, i8, i8, ptr, ptr, i64, [19 x %struct.interp_t] }
%struct.interp_t = type { float, float, i8, i8, i8 }
%struct.klatt_frame_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.klatt_global_t = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.filter_t = type { float, float, float }
%struct.slope_t = type { float, i32 }

@.str = private unnamed_addr constant [63 x i8] c"$Id: holmes.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@holmes_id = dso_local local_unnamed_addr global ptr @.str, align 8
@speed = dso_local global i32 1, align 4
@frac = dso_local global double 1.000000e+00, align 8
@Elements = external local_unnamed_addr global [0 x %struct.Elm_s], align 8
@def_pars = external local_unnamed_addr global %struct.klatt_frame_t, align 8
@klatt_global = external global %struct.klatt_global_t, align 8
@par_file = dso_local local_unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"# %s < %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"# %s >= %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%c%6s\00", align 1
@Ep_name = external local_unnamed_addr global [19 x ptr], align 16
@.str.6 = private unnamed_addr constant [8 x i8] c"%c%6.4g\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%c%6d\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" %6.4g\00", align 1
@jsru_file = dso_local local_unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"Holmes\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Parameter file for plot\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Data for alternate synth (JSRU)\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Speed (1.0 is 'normal')\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Parameter filter 'fraction'\00", align 1
@help_only = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @holmes(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [19 x %struct.filter_t], align 16
  %6 = alloca %struct.klatt_frame_t, align 8
  %7 = alloca [19 x %struct.slope_t], align 16
  %8 = alloca [19 x %struct.slope_t], align 16
  %9 = alloca [19 x float], align 16
  call void @llvm.lifetime.start.p0(i64 228, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %6) #10
  %10 = load i64, ptr @def_pars, align 8, !tbaa !5
  %11 = sitofp i64 %10 to double
  %12 = fmul double %11, 1.100000e+00
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %6, ptr noundef nonnull align 8 dereferenceable(320) @def_pars, i64 320, i1 false), !tbaa.struct !10
  %13 = load float, ptr getelementptr inbounds ([0 x %struct.Elm_s], ptr @Elements, i64 0, i64 0, i32 8), align 8, !tbaa !12
  %14 = fptosi float %13 to i64
  %15 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 16
  store i64 %14, ptr %15, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 3
  store i64 60, ptr %16, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 25
  store i64 60, ptr %17, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 5
  store i64 90, ptr %18, align 8, !tbaa !18
  %19 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 27
  store i64 90, ptr %19, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 7
  store i64 150, ptr %20, align 8, !tbaa !20
  %21 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 29
  store i64 150, ptr %21, align 8, !tbaa !21
  %22 = load i64, ptr getelementptr inbounds (%struct.klatt_frame_t, ptr @def_pars, i64 0, i32 31), align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 31
  store i64 %22, ptr %23, align 8, !tbaa !22
  tail call void @parwave_init(ptr noundef nonnull @klatt_global) #10
  %24 = load double, ptr @frac, align 8, !tbaa !23
  %25 = fptrunc double %24 to float
  %26 = fsub float 1.000000e+00, %25
  br label %65

27:                                               ; preds = %65
  %28 = icmp eq i32 %0, 0
  br i1 %28, label %666, label %29

29:                                               ; preds = %27
  %30 = fptrunc double %12 to float
  %31 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 15
  %32 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 38
  %33 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 1
  %34 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 18
  %35 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 22
  %36 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 14
  %37 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 17
  %38 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 18
  %39 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 16
  %40 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 20
  %41 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 4
  %42 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 5
  %43 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 6
  %44 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 1
  %45 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 2
  %46 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 2
  %47 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 4
  %48 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 3
  %49 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 6
  %50 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 14
  %51 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 37
  %52 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 12
  %53 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 32
  %54 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 13
  %55 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 34
  %56 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 8
  %57 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 24
  %58 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 9
  %59 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 26
  %60 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 10
  %61 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 28
  %62 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 11
  %63 = getelementptr inbounds %struct.klatt_frame_t, ptr %6, i64 0, i32 30
  %64 = getelementptr inbounds float, ptr %9, i64 7
  br label %74

65:                                               ; preds = %4, %65
  %66 = phi i64 [ 0, %4 ], [ %72, %65 ]
  %67 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 0, i32 8, i64 %66
  %68 = load float, ptr %67, align 4, !tbaa !12
  %69 = getelementptr inbounds [19 x %struct.filter_t], ptr %5, i64 0, i64 %66
  %70 = getelementptr inbounds [19 x %struct.filter_t], ptr %5, i64 0, i64 %66, i32 2
  store float %68, ptr %70, align 4, !tbaa !25
  store float %25, ptr %69, align 4, !tbaa !27
  %71 = getelementptr inbounds [19 x %struct.filter_t], ptr %5, i64 0, i64 %66, i32 1
  store float %26, ptr %71, align 4, !tbaa !28
  %72 = add nuw nsw i64 %66, 1
  %73 = icmp eq i64 %72, 19
  br i1 %73, label %27, label %65, !llvm.loop !29

74:                                               ; preds = %29, %658
  %75 = phi ptr [ %3, %29 ], [ %664, %658 ]
  %76 = phi ptr [ @Elements, %29 ], [ %88, %658 ]
  %77 = phi i32 [ 0, %29 ], [ %93, %658 ]
  %78 = phi i32 [ 0, %29 ], [ %663, %658 ]
  %79 = phi i32 [ 0, %29 ], [ %662, %658 ]
  %80 = phi float [ %30, %29 ], [ %661, %658 ]
  %81 = phi float [ 0.000000e+00, %29 ], [ %660, %658 ]
  %82 = phi float [ undef, %29 ], [ %659, %658 ]
  %83 = add nuw i32 %77, 1
  %84 = zext i32 %77 to i64
  %85 = getelementptr inbounds i8, ptr %1, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !31
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87
  %89 = zext i32 %83 to i64
  %90 = getelementptr inbounds i8, ptr %1, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !31
  %92 = zext i8 %91 to i32
  %93 = add i32 %77, 3
  %94 = icmp eq i8 %91, 0
  br i1 %94, label %658, label %95

95:                                               ; preds = %74
  %96 = icmp ult i32 %93, %0
  br i1 %96, label %97, label %103

97:                                               ; preds = %95
  %98 = zext i32 %93 to i64
  %99 = getelementptr inbounds i8, ptr %1, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !31
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %101
  br label %103

103:                                              ; preds = %95, %97
  %104 = phi ptr [ %102, %97 ], [ @Elements, %95 ]
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #10
  %105 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 1
  %106 = load i8, ptr %105, align 8, !tbaa !32
  %107 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 1
  %108 = load i8, ptr %107, align 8, !tbaa !32
  %109 = icmp sgt i8 %106, %108
  %110 = load ptr, ptr @par_file, align 8, !tbaa !35
  %111 = icmp eq ptr %110, null
  br i1 %109, label %112, label %145

112:                                              ; preds = %103
  br i1 %111, label %117, label %113

113:                                              ; preds = %112
  %114 = load ptr, ptr %76, align 8, !tbaa !36
  %115 = load ptr, ptr %88, align 8, !tbaa !36
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %110, ptr noundef nonnull @.str.1, ptr noundef %114, ptr noundef %115)
  br label %117

117:                                              ; preds = %113, %112
  %118 = load i32, ptr @speed, align 4, !tbaa !37
  br label %119

119:                                              ; preds = %141, %117
  %120 = phi i64 [ 0, %117 ], [ %143, %141 ]
  %121 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %120, i32 4
  %122 = load i8, ptr %121, align 2, !tbaa !31
  %123 = sext i8 %122 to i32
  %124 = mul nsw i32 %118, %123
  %125 = getelementptr inbounds %struct.slope_t, ptr %7, i64 %120
  %126 = getelementptr inbounds %struct.slope_t, ptr %7, i64 %120, i32 1
  store i32 %124, ptr %126, align 4, !tbaa !39
  %127 = icmp eq i32 %124, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %119
  %129 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %120, i32 1
  %130 = load float, ptr %129, align 4, !tbaa !41
  %131 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %120, i32 2
  %132 = load i8, ptr %131, align 4, !tbaa !42
  %133 = sitofp i8 %132 to float
  %134 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 8, i64 %120
  %135 = load float, ptr %134, align 4, !tbaa !12
  %136 = fmul float %135, %133
  %137 = call float @llvm.fmuladd.f32(float %136, float 0x3F847AE140000000, float %130)
  br label %141

138:                                              ; preds = %119
  %139 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 8, i64 %120
  %140 = load float, ptr %139, align 4, !tbaa !12
  br label %141

141:                                              ; preds = %138, %128
  %142 = phi float [ %140, %138 ], [ %137, %128 ]
  store float %142, ptr %125, align 8, !tbaa !43
  %143 = add nuw nsw i64 %120, 1
  %144 = icmp eq i64 %143, 19
  br i1 %144, label %178, label %119, !llvm.loop !44

145:                                              ; preds = %103
  br i1 %111, label %150, label %146

146:                                              ; preds = %145
  %147 = load ptr, ptr %76, align 8, !tbaa !36
  %148 = load ptr, ptr %88, align 8, !tbaa !36
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %110, ptr noundef nonnull @.str.2, ptr noundef %147, ptr noundef %148)
  br label %150

150:                                              ; preds = %146, %145
  %151 = load i32, ptr @speed, align 4, !tbaa !37
  br label %152

152:                                              ; preds = %174, %150
  %153 = phi i64 [ 0, %150 ], [ %176, %174 ]
  %154 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 8, i64 %153, i32 3
  %155 = load i8, ptr %154, align 1, !tbaa !31
  %156 = sext i8 %155 to i32
  %157 = mul nsw i32 %151, %156
  %158 = getelementptr inbounds %struct.slope_t, ptr %7, i64 %153
  %159 = getelementptr inbounds %struct.slope_t, ptr %7, i64 %153, i32 1
  store i32 %157, ptr %159, align 4, !tbaa !39
  %160 = icmp eq i32 %157, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 8, i64 %153, i32 1
  %163 = load float, ptr %162, align 4, !tbaa !41
  %164 = getelementptr inbounds %struct.Elm_s, ptr %76, i64 0, i32 8, i64 %153, i32 2
  %165 = load i8, ptr %164, align 4, !tbaa !42
  %166 = sitofp i8 %165 to float
  %167 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %153
  %168 = load float, ptr %167, align 4, !tbaa !12
  %169 = fmul float %168, %166
  %170 = call float @llvm.fmuladd.f32(float %169, float 0x3F847AE140000000, float %163)
  br label %174

171:                                              ; preds = %152
  %172 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %153
  %173 = load float, ptr %172, align 4, !tbaa !12
  br label %174

174:                                              ; preds = %171, %161
  %175 = phi float [ %173, %171 ], [ %170, %161 ]
  store float %175, ptr %158, align 8, !tbaa !43
  %176 = add nuw nsw i64 %153, 1
  %177 = icmp eq i64 %176, 19
  br i1 %177, label %178, label %152, !llvm.loop !44

178:                                              ; preds = %174, %141
  %179 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 1
  %180 = load i8, ptr %179, align 8, !tbaa !32
  %181 = load i8, ptr %105, align 8, !tbaa !32
  %182 = icmp sgt i8 %180, %181
  %183 = load ptr, ptr @par_file, align 8, !tbaa !35
  %184 = icmp eq ptr %183, null
  br i1 %182, label %185, label %218

185:                                              ; preds = %178
  br i1 %184, label %190, label %186

186:                                              ; preds = %185
  %187 = load ptr, ptr %88, align 8, !tbaa !36
  %188 = load ptr, ptr %104, align 8, !tbaa !36
  %189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %183, ptr noundef nonnull @.str.1, ptr noundef %187, ptr noundef %188)
  br label %190

190:                                              ; preds = %186, %185
  %191 = load i32, ptr @speed, align 4, !tbaa !37
  br label %192

192:                                              ; preds = %214, %190
  %193 = phi i64 [ 0, %190 ], [ %216, %214 ]
  %194 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 8, i64 %193, i32 3
  %195 = load i8, ptr %194, align 1, !tbaa !31
  %196 = sext i8 %195 to i32
  %197 = mul nsw i32 %191, %196
  %198 = getelementptr inbounds %struct.slope_t, ptr %8, i64 %193
  %199 = getelementptr inbounds %struct.slope_t, ptr %8, i64 %193, i32 1
  store i32 %197, ptr %199, align 4, !tbaa !39
  %200 = icmp eq i32 %197, 0
  br i1 %200, label %211, label %201

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 8, i64 %193, i32 1
  %203 = load float, ptr %202, align 4, !tbaa !41
  %204 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 8, i64 %193, i32 2
  %205 = load i8, ptr %204, align 4, !tbaa !42
  %206 = sitofp i8 %205 to float
  %207 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %193
  %208 = load float, ptr %207, align 4, !tbaa !12
  %209 = fmul float %208, %206
  %210 = call float @llvm.fmuladd.f32(float %209, float 0x3F847AE140000000, float %203)
  br label %214

211:                                              ; preds = %192
  %212 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %193
  %213 = load float, ptr %212, align 4, !tbaa !12
  br label %214

214:                                              ; preds = %211, %201
  %215 = phi float [ %213, %211 ], [ %210, %201 ]
  store float %215, ptr %198, align 8, !tbaa !43
  %216 = add nuw nsw i64 %193, 1
  %217 = icmp eq i64 %216, 19
  br i1 %217, label %251, label %192, !llvm.loop !44

218:                                              ; preds = %178
  br i1 %184, label %223, label %219

219:                                              ; preds = %218
  %220 = load ptr, ptr %88, align 8, !tbaa !36
  %221 = load ptr, ptr %104, align 8, !tbaa !36
  %222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %183, ptr noundef nonnull @.str.2, ptr noundef %220, ptr noundef %221)
  br label %223

223:                                              ; preds = %219, %218
  %224 = load i32, ptr @speed, align 4, !tbaa !37
  br label %225

225:                                              ; preds = %247, %223
  %226 = phi i64 [ 0, %223 ], [ %249, %247 ]
  %227 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %226, i32 4
  %228 = load i8, ptr %227, align 2, !tbaa !31
  %229 = sext i8 %228 to i32
  %230 = mul nsw i32 %224, %229
  %231 = getelementptr inbounds %struct.slope_t, ptr %8, i64 %226
  %232 = getelementptr inbounds %struct.slope_t, ptr %8, i64 %226, i32 1
  store i32 %230, ptr %232, align 4, !tbaa !39
  %233 = icmp eq i32 %230, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %225
  %235 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %226, i32 1
  %236 = load float, ptr %235, align 4, !tbaa !41
  %237 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %226, i32 2
  %238 = load i8, ptr %237, align 4, !tbaa !42
  %239 = sitofp i8 %238 to float
  %240 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 8, i64 %226
  %241 = load float, ptr %240, align 4, !tbaa !12
  %242 = fmul float %241, %239
  %243 = call float @llvm.fmuladd.f32(float %242, float 0x3F847AE140000000, float %236)
  br label %247

244:                                              ; preds = %225
  %245 = getelementptr inbounds %struct.Elm_s, ptr %104, i64 0, i32 8, i64 %226
  %246 = load float, ptr %245, align 4, !tbaa !12
  br label %247

247:                                              ; preds = %244, %234
  %248 = phi float [ %246, %244 ], [ %243, %234 ]
  store float %248, ptr %231, align 8, !tbaa !43
  %249 = add nuw nsw i64 %226, 1
  %250 = icmp eq i64 %249, 19
  br i1 %250, label %251, label %225, !llvm.loop !44

251:                                              ; preds = %247, %214
  %252 = load ptr, ptr @par_file, align 8, !tbaa !35
  %253 = icmp eq ptr %252, null
  br i1 %253, label %297, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %88, align 8, !tbaa !36
  %256 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %252, ptr noundef nonnull @.str.3, ptr noundef %255)
  br label %257

257:                                              ; preds = %254, %257
  %258 = phi i64 [ 0, %254 ], [ %265, %257 ]
  %259 = load ptr, ptr @par_file, align 8, !tbaa !35
  %260 = icmp eq i64 %258, 0
  %261 = select i1 %260, i32 35, i32 32
  %262 = getelementptr inbounds [19 x ptr], ptr @Ep_name, i64 0, i64 %258
  %263 = load ptr, ptr %262, align 8, !tbaa !35
  %264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef nonnull @.str.4, i32 noundef %261, ptr noundef %263)
  %265 = add nuw nsw i64 %258, 1
  %266 = icmp eq i64 %265, 19
  br i1 %266, label %267, label %257, !llvm.loop !45

267:                                              ; preds = %257
  %268 = load ptr, ptr @par_file, align 8, !tbaa !35
  %269 = call i32 @fputc(i32 10, ptr %268)
  br label %270

270:                                              ; preds = %267, %270
  %271 = phi i64 [ 0, %267 ], [ %279, %270 ]
  %272 = load ptr, ptr @par_file, align 8, !tbaa !35
  %273 = icmp eq i64 %271, 0
  %274 = select i1 %273, i32 35, i32 32
  %275 = getelementptr inbounds [19 x %struct.slope_t], ptr %7, i64 0, i64 %271
  %276 = load float, ptr %275, align 8, !tbaa !43
  %277 = fpext float %276 to double
  %278 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %272, ptr noundef nonnull @.str.6, i32 noundef %274, double noundef %277)
  %279 = add nuw nsw i64 %271, 1
  %280 = icmp eq i64 %279, 19
  br i1 %280, label %281, label %270, !llvm.loop !46

281:                                              ; preds = %270
  %282 = load ptr, ptr @par_file, align 8, !tbaa !35
  %283 = call i32 @fputc(i32 10, ptr %282)
  br label %284

284:                                              ; preds = %281, %284
  %285 = phi i64 [ 0, %281 ], [ %292, %284 ]
  %286 = load ptr, ptr @par_file, align 8, !tbaa !35
  %287 = icmp eq i64 %285, 0
  %288 = select i1 %287, i32 35, i32 32
  %289 = getelementptr inbounds [19 x %struct.slope_t], ptr %7, i64 0, i64 %285, i32 1
  %290 = load i32, ptr %289, align 4, !tbaa !39
  %291 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef nonnull @.str.7, i32 noundef %288, i32 noundef %290)
  %292 = add nuw nsw i64 %285, 1
  %293 = icmp eq i64 %292, 19
  br i1 %293, label %294, label %284, !llvm.loop !47

294:                                              ; preds = %284
  %295 = load ptr, ptr @par_file, align 8, !tbaa !35
  %296 = call i32 @fputc(i32 10, ptr %295)
  br label %297

297:                                              ; preds = %294, %251
  %298 = call i32 @llvm.umax.i32(i32 %92, i32 1)
  br label %299

299:                                              ; preds = %297, %622
  %300 = phi ptr [ %75, %297 ], [ %527, %622 ]
  %301 = phi i32 [ 0, %297 ], [ %624, %622 ]
  %302 = phi i32 [ %78, %297 ], [ %625, %622 ]
  %303 = phi i32 [ %79, %297 ], [ %403, %622 ]
  %304 = phi float [ %80, %297 ], [ %623, %622 ]
  %305 = phi float [ %81, %297 ], [ %402, %622 ]
  %306 = phi float [ %82, %297 ], [ %401, %622 ]
  %307 = fpext float %304 to double
  %308 = fmul double %307, 8.000000e-01
  %309 = fptrunc double %308 to float
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %9) #10
  %310 = icmp eq i32 %302, %303
  br i1 %310, label %311, label %400

311:                                              ; preds = %299, %394
  %312 = phi float [ %395, %394 ], [ %305, %299 ]
  %313 = phi i32 [ %399, %394 ], [ %92, %299 ]
  %314 = phi i32 [ %397, %394 ], [ %93, %299 ]
  %315 = icmp ugt i32 %314, %0
  br i1 %315, label %400, label %316

316:                                              ; preds = %311
  %317 = icmp ult i32 %314, %0
  br i1 %317, label %318, label %325

318:                                              ; preds = %316
  %319 = add nuw i32 %314, 1
  %320 = zext i32 %314 to i64
  %321 = getelementptr inbounds i8, ptr %1, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !31
  %323 = zext i8 %322 to i64
  %324 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %323
  br label %325

325:                                              ; preds = %316, %318
  %326 = phi i32 [ %319, %318 ], [ %314, %316 ]
  %327 = phi ptr [ %324, %318 ], [ @Elements, %316 ]
  %328 = icmp ult i32 %326, %0
  br i1 %328, label %329, label %335

329:                                              ; preds = %325
  %330 = add i32 %326, 1
  %331 = zext i32 %326 to i64
  %332 = getelementptr inbounds i8, ptr %1, i64 %331
  %333 = load i8, ptr %332, align 1, !tbaa !31
  %334 = zext i8 %333 to i32
  br label %335

335:                                              ; preds = %325, %329
  %336 = phi i32 [ %330, %329 ], [ %326, %325 ]
  %337 = phi i32 [ %334, %329 ], [ 0, %325 ]
  %338 = icmp ult i32 %336, %0
  br i1 %338, label %339, label %345

339:                                              ; preds = %335
  %340 = add i32 %336, 1
  %341 = zext i32 %336 to i64
  %342 = getelementptr inbounds i8, ptr %1, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !31
  %344 = zext i8 %343 to i32
  br label %345

345:                                              ; preds = %335, %339
  %346 = phi i32 [ %340, %339 ], [ %336, %335 ]
  %347 = phi i32 [ %344, %339 ], [ 3, %335 ]
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %354

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.Elm_s, ptr %327, i64 0, i32 7
  %351 = load i64, ptr %350, align 8, !tbaa !48
  %352 = and i64 %351, 268435456
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %394, label %357

354:                                              ; preds = %345
  %355 = uitofp i32 %347 to float
  %356 = fdiv float %355, 3.000000e+00
  br label %357

357:                                              ; preds = %349, %354
  %358 = phi float [ %356, %354 ], [ 0x3FB99999A0000000, %349 ]
  br label %359

359:                                              ; preds = %380, %357
  %360 = phi i32 [ %346, %357 ], [ %385, %380 ]
  %361 = phi i32 [ %337, %357 ], [ %384, %380 ]
  %362 = phi i32 [ 0, %357 ], [ %363, %380 ]
  %363 = add i32 %362, %361
  %364 = icmp ult i32 %360, %0
  br i1 %364, label %365, label %372

365:                                              ; preds = %359
  %366 = add nuw i32 %360, 1
  %367 = zext i32 %360 to i64
  %368 = getelementptr inbounds i8, ptr %1, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !31
  %370 = zext i8 %369 to i64
  %371 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %370
  br label %372

372:                                              ; preds = %359, %365
  %373 = phi i32 [ %366, %365 ], [ %360, %359 ]
  %374 = phi ptr [ %371, %365 ], [ @Elements, %359 ]
  %375 = add i32 %373, 1
  %376 = getelementptr inbounds %struct.Elm_s, ptr %374, i64 0, i32 7
  %377 = load i64, ptr %376, align 8, !tbaa !48
  %378 = and i64 %377, 268435456
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %391, label %380

380:                                              ; preds = %372
  %381 = zext i32 %373 to i64
  %382 = getelementptr inbounds i8, ptr %1, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !31
  %384 = zext i8 %383 to i32
  %385 = add i32 %373, 2
  %386 = zext i32 %375 to i64
  %387 = getelementptr inbounds i8, ptr %1, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !31
  %389 = zext i8 %388 to i32
  %390 = icmp eq i32 %347, %389
  br i1 %390, label %359, label %391, !llvm.loop !49

391:                                              ; preds = %372, %380
  %392 = phi i32 [ %385, %380 ], [ %375, %372 ]
  %393 = lshr i32 %363, 1
  br label %394

394:                                              ; preds = %349, %391
  %395 = phi float [ %312, %349 ], [ %358, %391 ]
  %396 = phi i32 [ %337, %349 ], [ %393, %391 ]
  %397 = phi i32 [ %346, %349 ], [ %392, %391 ]
  %398 = phi i1 [ true, %349 ], [ false, %391 ]
  %399 = add i32 %396, %313
  br i1 %398, label %311, label %400

400:                                              ; preds = %311, %394, %299
  %401 = phi float [ %306, %299 ], [ %305, %394 ], [ %305, %311 ]
  %402 = phi float [ %305, %299 ], [ %312, %311 ], [ %395, %394 ]
  %403 = phi i32 [ %303, %299 ], [ %313, %311 ], [ %399, %394 ]
  %404 = phi i32 [ %302, %299 ], [ 0, %394 ], [ 0, %311 ]
  br label %405

405:                                              ; preds = %400, %405
  %406 = phi i64 [ 0, %400 ], [ %421, %405 ]
  %407 = getelementptr inbounds %struct.filter_t, ptr %5, i64 %406
  %408 = getelementptr inbounds [19 x %struct.slope_t], ptr %7, i64 0, i64 %406
  %409 = getelementptr inbounds [19 x %struct.slope_t], ptr %8, i64 0, i64 %406
  %410 = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %87, i32 8, i64 %406
  %411 = load float, ptr %410, align 4, !tbaa !12
  %412 = call fastcc float @interpolate(ptr noundef nonnull %408, ptr noundef nonnull %409, float noundef %411, i32 noundef %301, i32 noundef %92)
  %413 = load float, ptr %407, align 4, !tbaa !27
  %414 = getelementptr inbounds %struct.filter_t, ptr %5, i64 %406, i32 1
  %415 = load float, ptr %414, align 4, !tbaa !28
  %416 = getelementptr inbounds %struct.filter_t, ptr %5, i64 %406, i32 2
  %417 = load float, ptr %416, align 4, !tbaa !25
  %418 = fmul float %415, %417
  %419 = call float @llvm.fmuladd.f32(float %413, float %412, float %418)
  store float %419, ptr %416, align 4, !tbaa !25
  %420 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 %406
  store float %419, ptr %420, align 4, !tbaa !50
  %421 = add nuw nsw i64 %406, 1
  %422 = icmp eq i64 %421, 19
  br i1 %422, label %423, label %405, !llvm.loop !51

423:                                              ; preds = %405
  %424 = fsub float %304, %309
  %425 = add i32 %403, -80
  %426 = sitofp i32 %425 to float
  %427 = icmp sgt i32 %425, -1
  br i1 %427, label %428, label %451

428:                                              ; preds = %423
  %429 = icmp slt i32 %404, 40
  br i1 %429, label %430, label %437

430:                                              ; preds = %428
  %431 = icmp slt i32 %404, 1
  br i1 %431, label %479, label %432

432:                                              ; preds = %430
  %433 = sitofp i32 %404 to float
  %434 = fdiv float %433, 4.000000e+01
  %435 = fsub float 0.000000e+00, %401
  %436 = call float @llvm.fmuladd.f32(float %435, float %434, float %401)
  br label %479

437:                                              ; preds = %428
  %438 = add nsw i32 %404, -40
  %439 = sitofp i32 %438 to float
  %440 = fcmp ugt float %439, %426
  br i1 %440, label %441, label %479

441:                                              ; preds = %437
  %442 = fsub float %439, %426
  %443 = fptosi float %442 to i32
  %444 = icmp slt i32 %443, 1
  br i1 %444, label %479, label %445

445:                                              ; preds = %441
  %446 = icmp slt i32 %443, 40
  br i1 %446, label %447, label %479

447:                                              ; preds = %445
  %448 = sitofp i32 %443 to float
  %449 = fdiv float %448, 4.000000e+01
  %450 = call float @llvm.fmuladd.f32(float %402, float %449, float 0.000000e+00)
  br label %479

451:                                              ; preds = %423
  %452 = sitofp i32 %404 to float
  %453 = sitofp i32 %403 to float
  %454 = fdiv float %452, %453
  %455 = fsub float 1.000000e+00, %454
  %456 = icmp slt i32 %404, 1
  br i1 %456, label %463, label %457

457:                                              ; preds = %451
  %458 = icmp slt i32 %404, 40
  br i1 %458, label %459, label %463

459:                                              ; preds = %457
  %460 = fdiv float %452, 4.000000e+01
  %461 = fsub float 0.000000e+00, %401
  %462 = call float @llvm.fmuladd.f32(float %461, float %460, float %401)
  br label %463

463:                                              ; preds = %459, %457, %451
  %464 = phi float [ %462, %459 ], [ %401, %451 ], [ 0.000000e+00, %457 ]
  %465 = sub nsw i32 %403, %404
  %466 = icmp slt i32 %465, 1
  br i1 %466, label %474, label %467

467:                                              ; preds = %463
  %468 = icmp slt i32 %465, 40
  br i1 %468, label %469, label %474

469:                                              ; preds = %467
  %470 = sitofp i32 %465 to float
  %471 = fdiv float %470, 4.000000e+01
  %472 = fsub float 0.000000e+00, %402
  %473 = call float @llvm.fmuladd.f32(float %472, float %471, float %402)
  br label %474

474:                                              ; preds = %469, %467, %463
  %475 = phi float [ %473, %469 ], [ %402, %463 ], [ 0.000000e+00, %467 ]
  %476 = fsub float 1.000000e+00, %455
  %477 = fmul float %476, %475
  %478 = call float @llvm.fmuladd.f32(float %455, float %464, float %477)
  br label %479

479:                                              ; preds = %430, %432, %437, %441, %445, %447, %474
  %480 = phi float [ %478, %474 ], [ 0.000000e+00, %437 ], [ %436, %432 ], [ %401, %430 ], [ %450, %447 ], [ 0.000000e+00, %441 ], [ %402, %445 ]
  %481 = call float @llvm.fmuladd.f32(float %424, float %480, float %309)
  %482 = fptosi float %481 to i64
  store i64 %482, ptr %6, align 8, !tbaa !5
  %483 = load float, ptr %31, align 4, !tbaa !50
  %484 = fptosi float %483 to i64
  store i64 %484, ptr %32, align 8, !tbaa !52
  store i64 %484, ptr %33, align 8, !tbaa !53
  %485 = load float, ptr %34, align 8, !tbaa !50
  %486 = fptosi float %485 to i64
  store i64 %486, ptr %35, align 8, !tbaa !54
  %487 = load float, ptr %9, align 16, !tbaa !50
  %488 = fptosi float %487 to i64
  store i64 %488, ptr %36, align 8, !tbaa !55
  %489 = load float, ptr %37, align 4, !tbaa !50
  %490 = fptosi float %489 to i64
  store i64 %490, ptr %38, align 8, !tbaa !56
  %491 = load float, ptr %39, align 16, !tbaa !50
  %492 = fptosi float %491 to i64
  store i64 %492, ptr %40, align 8, !tbaa !57
  %493 = load float, ptr %41, align 16, !tbaa !50
  %494 = fptosi float %493 to i64
  store i64 %494, ptr %16, align 8, !tbaa !16
  store i64 %494, ptr %17, align 8, !tbaa !17
  %495 = load float, ptr %42, align 4, !tbaa !50
  %496 = fptosi float %495 to i64
  store i64 %496, ptr %18, align 8, !tbaa !18
  store i64 %496, ptr %19, align 8, !tbaa !19
  %497 = load float, ptr %43, align 8, !tbaa !50
  %498 = fptosi float %497 to i64
  store i64 %498, ptr %20, align 8, !tbaa !20
  store i64 %498, ptr %21, align 8, !tbaa !21
  %499 = load float, ptr %44, align 4, !tbaa !50
  %500 = fptosi float %499 to i64
  store i64 %500, ptr %45, align 8, !tbaa !58
  %501 = load float, ptr %46, align 8, !tbaa !50
  %502 = fptosi float %501 to i64
  store i64 %502, ptr %47, align 8, !tbaa !59
  %503 = load float, ptr %48, align 4, !tbaa !50
  %504 = fptosi float %503 to i64
  store i64 %504, ptr %49, align 8, !tbaa !60
  %505 = load float, ptr %50, align 8, !tbaa !50
  %506 = fadd float %505, 1.400000e+01
  %507 = fptosi float %506 to i64
  store i64 %507, ptr %51, align 8, !tbaa !61
  %508 = load float, ptr %52, align 16, !tbaa !50
  %509 = fadd float %508, 1.400000e+01
  %510 = fptosi float %509 to i64
  store i64 %510, ptr %53, align 8, !tbaa !62
  %511 = load float, ptr %54, align 4, !tbaa !50
  %512 = fadd float %511, 1.400000e+01
  %513 = fptosi float %512 to i64
  store i64 %513, ptr %55, align 8, !tbaa !63
  %514 = load float, ptr %56, align 16, !tbaa !50
  %515 = fadd float %514, 1.400000e+01
  %516 = fptosi float %515 to i64
  store i64 %516, ptr %57, align 8, !tbaa !64
  %517 = load float, ptr %58, align 4, !tbaa !50
  %518 = fadd float %517, 1.400000e+01
  %519 = fptosi float %518 to i64
  store i64 %519, ptr %59, align 8, !tbaa !65
  %520 = load float, ptr %60, align 8, !tbaa !50
  %521 = fadd float %520, 1.400000e+01
  %522 = fptosi float %521 to i64
  store i64 %522, ptr %61, align 8, !tbaa !66
  %523 = load float, ptr %62, align 4, !tbaa !50
  %524 = fadd float %523, 1.400000e+01
  %525 = fptosi float %524 to i64
  store i64 %525, ptr %63, align 8, !tbaa !67
  call void @parwave(ptr noundef nonnull @klatt_global, ptr noundef nonnull %6, ptr noundef %300) #10
  %526 = load i64, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 7), align 8, !tbaa !68
  %527 = getelementptr inbounds i16, ptr %300, i64 %526
  %528 = load ptr, ptr @par_file, align 8, !tbaa !35
  %529 = icmp eq ptr %528, null
  br i1 %529, label %542, label %530

530:                                              ; preds = %479, %530
  %531 = phi i64 [ %537, %530 ], [ 0, %479 ]
  %532 = load ptr, ptr @par_file, align 8, !tbaa !35
  %533 = getelementptr inbounds [19 x float], ptr %9, i64 0, i64 %531
  %534 = load float, ptr %533, align 4, !tbaa !50
  %535 = fpext float %534 to double
  %536 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %532, ptr noundef nonnull @.str.10, double noundef %535)
  %537 = add nuw nsw i64 %531, 1
  %538 = icmp eq i64 %537, 19
  br i1 %538, label %539, label %530, !llvm.loop !70

539:                                              ; preds = %530
  %540 = load ptr, ptr @par_file, align 8, !tbaa !35
  %541 = call i32 @fputc(i32 10, ptr %540)
  br label %542

542:                                              ; preds = %539, %479
  %543 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %544 = icmp eq ptr %543, null
  br i1 %544, label %622, label %545

545:                                              ; preds = %542
  %546 = load i64, ptr %6, align 8, !tbaa !5
  %547 = sitofp i64 %546 to double
  %548 = fmul double %547, 1.000000e-01
  %549 = fdiv double %548, 2.500000e+01
  %550 = call double @log(double noundef %549) #10
  %551 = fdiv double %550, 0x3FE62E42FEFA39EF
  %552 = call double @llvm.fmuladd.f64(double %551, double 1.600000e+01, double -1.000000e+00)
  %553 = load float, ptr %9, align 16, !tbaa !50
  %554 = fadd float %553, -9.500000e+01
  %555 = fdiv float %554, 5.000000e+00
  %556 = fptosi float %555 to i32
  %557 = call i32 @llvm.smin.i32(i32 %556, i32 63)
  %558 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %559 = call i32 @fputc(i32 noundef %557, ptr noundef %558)
  %560 = load float, ptr %64, align 4, !tbaa !50
  %561 = fptosi float %560 to i32
  %562 = call i32 @llvm.smax.i32(i32 %561, i32 1)
  %563 = call i32 @llvm.umin.i32(i32 %562, i32 63)
  %564 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %565 = call i32 @fputc(i32 noundef %563, ptr noundef %564)
  %566 = load float, ptr %44, align 4, !tbaa !50
  %567 = fadd float %566, -1.250000e+02
  %568 = fdiv float %567, 2.500000e+01
  %569 = fptosi float %568 to i32
  %570 = call i32 @llvm.smin.i32(i32 %569, i32 63)
  %571 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %572 = call i32 @fputc(i32 noundef %570, ptr noundef %571)
  %573 = load float, ptr %56, align 16, !tbaa !50
  %574 = fptosi float %573 to i32
  %575 = call i32 @llvm.smax.i32(i32 %574, i32 1)
  %576 = call i32 @llvm.umin.i32(i32 %575, i32 63)
  %577 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %578 = call i32 @fputc(i32 noundef %576, ptr noundef %577)
  %579 = load float, ptr %46, align 8, !tbaa !50
  %580 = fadd float %579, -5.500000e+02
  %581 = fdiv float %580, 5.000000e+01
  %582 = fptosi float %581 to i32
  %583 = call i32 @llvm.smin.i32(i32 %582, i32 63)
  %584 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %585 = call i32 @fputc(i32 noundef %583, ptr noundef %584)
  %586 = load float, ptr %58, align 4, !tbaa !50
  %587 = fptosi float %586 to i32
  %588 = call i32 @llvm.smax.i32(i32 %587, i32 1)
  %589 = call i32 @llvm.umin.i32(i32 %588, i32 63)
  %590 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %591 = call i32 @fputc(i32 noundef %589, ptr noundef %590)
  %592 = load float, ptr %48, align 4, !tbaa !50
  %593 = fadd float %592, -1.350000e+03
  %594 = fdiv float %593, 5.000000e+01
  %595 = fptosi float %594 to i32
  %596 = call i32 @llvm.smin.i32(i32 %595, i32 63)
  %597 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %598 = call i32 @fputc(i32 noundef %596, ptr noundef %597)
  %599 = load float, ptr %60, align 8, !tbaa !50
  %600 = fptosi float %599 to i32
  %601 = call i32 @llvm.smax.i32(i32 %600, i32 1)
  %602 = call i32 @llvm.umin.i32(i32 %601, i32 63)
  %603 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %604 = call i32 @fputc(i32 noundef %602, ptr noundef %603)
  %605 = load float, ptr %62, align 4, !tbaa !50
  %606 = fptosi float %605 to i32
  %607 = call i32 @llvm.smax.i32(i32 %606, i32 1)
  %608 = call i32 @llvm.umin.i32(i32 %607, i32 63)
  %609 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %610 = call i32 @fputc(i32 noundef %608, ptr noundef %609)
  %611 = load float, ptr %31, align 4, !tbaa !50
  %612 = fptosi float %611 to i32
  %613 = call i32 @llvm.smax.i32(i32 %612, i32 1)
  %614 = call i32 @llvm.umin.i32(i32 %613, i32 63)
  %615 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %616 = call i32 @fputc(i32 noundef %614, ptr noundef %615)
  %617 = fptosi double %552 to i32
  %618 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %619 = call i32 @fputc(i32 noundef %617, ptr noundef %618)
  %620 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %621 = call i32 @fputc(i32 noundef 32, ptr noundef %620)
  br label %622

622:                                              ; preds = %545, %542
  %623 = fadd float %304, -5.000000e-01
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %9) #10
  %624 = add nuw nsw i32 %301, 1
  %625 = add i32 %404, 1
  %626 = icmp eq i32 %624, %298
  br i1 %626, label %627, label %299, !llvm.loop !71

627:                                              ; preds = %622
  %628 = load ptr, ptr @par_file, align 8, !tbaa !35
  %629 = icmp eq ptr %628, null
  br i1 %629, label %657, label %630

630:                                              ; preds = %627, %630
  %631 = phi i64 [ %639, %630 ], [ 0, %627 ]
  %632 = load ptr, ptr @par_file, align 8, !tbaa !35
  %633 = icmp eq i64 %631, 0
  %634 = select i1 %633, i32 35, i32 32
  %635 = getelementptr inbounds [19 x %struct.slope_t], ptr %8, i64 0, i64 %631
  %636 = load float, ptr %635, align 8, !tbaa !43
  %637 = fpext float %636 to double
  %638 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %632, ptr noundef nonnull @.str.6, i32 noundef %634, double noundef %637)
  %639 = add nuw nsw i64 %631, 1
  %640 = icmp eq i64 %639, 19
  br i1 %640, label %641, label %630, !llvm.loop !72

641:                                              ; preds = %630
  %642 = load ptr, ptr @par_file, align 8, !tbaa !35
  %643 = call i32 @fputc(i32 10, ptr %642)
  br label %644

644:                                              ; preds = %641, %644
  %645 = phi i64 [ 0, %641 ], [ %652, %644 ]
  %646 = load ptr, ptr @par_file, align 8, !tbaa !35
  %647 = icmp eq i64 %645, 0
  %648 = select i1 %647, i32 35, i32 32
  %649 = getelementptr inbounds [19 x %struct.slope_t], ptr %8, i64 0, i64 %645, i32 1
  %650 = load i32, ptr %649, align 4, !tbaa !39
  %651 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %646, ptr noundef nonnull @.str.7, i32 noundef %648, i32 noundef %650)
  %652 = add nuw nsw i64 %645, 1
  %653 = icmp eq i64 %652, 19
  br i1 %653, label %654, label %644, !llvm.loop !73

654:                                              ; preds = %644
  %655 = load ptr, ptr @par_file, align 8, !tbaa !35
  %656 = call i32 @fputc(i32 10, ptr %655)
  br label %657

657:                                              ; preds = %654, %627
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %7) #10
  br label %658

658:                                              ; preds = %657, %74
  %659 = phi float [ %82, %74 ], [ %401, %657 ]
  %660 = phi float [ %81, %74 ], [ %402, %657 ]
  %661 = phi float [ %80, %74 ], [ %623, %657 ]
  %662 = phi i32 [ %79, %74 ], [ %403, %657 ]
  %663 = phi i32 [ %78, %74 ], [ %625, %657 ]
  %664 = phi ptr [ %75, %74 ], [ %527, %657 ]
  %665 = icmp ult i32 %93, %0
  br i1 %665, label %74, label %666, !llvm.loop !74

666:                                              ; preds = %658, %27
  %667 = phi ptr [ %3, %27 ], [ %664, %658 ]
  %668 = ptrtoint ptr %667 to i64
  %669 = ptrtoint ptr %3 to i64
  %670 = sub i64 %668, %669
  %671 = lshr exact i64 %670, 1
  %672 = trunc i64 %671 to i32
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 228, ptr nonnull %5) #10
  ret i32 %672
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @parwave_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @interpolate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.slope_t, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !39
  %8 = getelementptr inbounds %struct.slope_t, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = add i32 %7, %9
  %11 = sub i32 %4, %10
  %12 = sitofp i32 %11 to float
  %13 = icmp sgt i32 %11, -1
  br i1 %13, label %14, label %42

14:                                               ; preds = %5
  %15 = icmp sgt i32 %7, %3
  br i1 %15, label %16, label %25

16:                                               ; preds = %14
  %17 = load float, ptr %0, align 4, !tbaa !43
  %18 = icmp slt i32 %3, 1
  br i1 %18, label %74, label %19

19:                                               ; preds = %16
  %20 = sitofp i32 %3 to float
  %21 = sitofp i32 %7 to float
  %22 = fdiv float %20, %21
  %23 = fsub float %2, %17
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %22, float %17)
  br label %74

25:                                               ; preds = %14
  %26 = sub nsw i32 %3, %7
  %27 = sitofp i32 %26 to float
  %28 = fcmp ugt float %27, %12
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = load float, ptr %1, align 4, !tbaa !43
  %31 = fsub float %27, %12
  %32 = fptosi float %31 to i32
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %74, label %34

34:                                               ; preds = %29
  %35 = icmp sgt i32 %9, %32
  br i1 %35, label %36, label %74

36:                                               ; preds = %34
  %37 = sitofp i32 %32 to float
  %38 = sitofp i32 %9 to float
  %39 = fdiv float %37, %38
  %40 = fsub float %30, %2
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %39, float %2)
  br label %74

42:                                               ; preds = %5
  %43 = sitofp i32 %3 to float
  %44 = sitofp i32 %4 to float
  %45 = fdiv float %43, %44
  %46 = fsub float 1.000000e+00, %45
  %47 = load float, ptr %0, align 4, !tbaa !43
  %48 = icmp slt i32 %3, 1
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = icmp sgt i32 %7, %3
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = sitofp i32 %7 to float
  %53 = fdiv float %43, %52
  %54 = fsub float %2, %47
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %53, float %47)
  br label %56

56:                                               ; preds = %42, %49, %51
  %57 = phi float [ %55, %51 ], [ %47, %42 ], [ %2, %49 ]
  %58 = load float, ptr %1, align 4, !tbaa !43
  %59 = sub nsw i32 %4, %3
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = icmp slt i32 %59, %9
  br i1 %62, label %63, label %69

63:                                               ; preds = %61
  %64 = sitofp i32 %59 to float
  %65 = sitofp i32 %9 to float
  %66 = fdiv float %64, %65
  %67 = fsub float %2, %58
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %66, float %58)
  br label %69

69:                                               ; preds = %56, %61, %63
  %70 = phi float [ %68, %63 ], [ %58, %56 ], [ %2, %61 ]
  %71 = fsub float 1.000000e+00, %46
  %72 = fmul float %71, %70
  %73 = tail call float @llvm.fmuladd.f32(float %46, float %57, float %72)
  br label %74

74:                                               ; preds = %36, %34, %29, %19, %16, %25, %69
  %75 = phi float [ %73, %69 ], [ %2, %25 ], [ %24, %19 ], [ %17, %16 ], [ %41, %36 ], [ %2, %29 ], [ %30, %34 ]
  ret float %75
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @parwave(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @init_holmes(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr null, ptr %3, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store ptr null, ptr %4, align 8, !tbaa !35
  %5 = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.11, i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @speed, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @frac, ptr noundef nonnull @.str.21, ptr noundef null) #10
  %6 = load i32, ptr @help_only, align 4, !tbaa !37
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = call noalias ptr @fopen(ptr noundef nonnull %9, ptr noundef nonnull @.str.22)
  store ptr %12, ptr @par_file, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8, !tbaa !35
  call void @perror(ptr noundef %15) #11
  br label %16

16:                                               ; preds = %11, %14, %8
  %17 = load ptr, ptr %4, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = call noalias ptr @fopen(ptr noundef nonnull %17, ptr noundef nonnull @.str.22)
  store ptr %20, ptr @jsru_file, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8, !tbaa !35
  call void @perror(ptr noundef %23) #11
  br label %24

24:                                               ; preds = %16, %22, %19, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %5
}

declare i32 @getargs(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @term_holmes() local_unnamed_addr #7 {
  %1 = load ptr, ptr @par_file, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @fclose(ptr noundef nonnull %1)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @jsru_file, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @fclose(ptr noundef nonnull %6)
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11, i64 24, i64 8, !11, i64 32, i64 8, !11, i64 40, i64 8, !11, i64 48, i64 8, !11, i64 56, i64 8, !11, i64 64, i64 8, !11, i64 72, i64 8, !11, i64 80, i64 8, !11, i64 88, i64 8, !11, i64 96, i64 8, !11, i64 104, i64 8, !11, i64 112, i64 8, !11, i64 120, i64 8, !11, i64 128, i64 8, !11, i64 136, i64 8, !11, i64 144, i64 8, !11, i64 152, i64 8, !11, i64 160, i64 8, !11, i64 168, i64 8, !11, i64 176, i64 8, !11, i64 184, i64 8, !11, i64 192, i64 8, !11, i64 200, i64 8, !11, i64 208, i64 8, !11, i64 216, i64 8, !11, i64 224, i64 8, !11, i64 232, i64 8, !11, i64 240, i64 8, !11, i64 248, i64 8, !11, i64 256, i64 8, !11, i64 264, i64 8, !11, i64 272, i64 8, !11, i64 280, i64 8, !11, i64 288, i64 8, !11, i64 296, i64 8, !11, i64 304, i64 8, !11, i64 312, i64 8, !11}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"", !14, i64 0, !14, i64 4, !8, i64 8, !8, i64 9, !8, i64 10}
!14 = !{!"float", !8, i64 0}
!15 = !{!6, !7, i64 128}
!16 = !{!6, !7, i64 24}
!17 = !{!6, !7, i64 200}
!18 = !{!6, !7, i64 40}
!19 = !{!6, !7, i64 216}
!20 = !{!6, !7, i64 56}
!21 = !{!6, !7, i64 232}
!22 = !{!6, !7, i64 248}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !8, i64 0}
!25 = !{!26, !14, i64 8}
!26 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8}
!27 = !{!26, !14, i64 0}
!28 = !{!26, !14, i64 4}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!8, !8, i64 0}
!32 = !{!33, !8, i64 8}
!33 = !{!"Elm_s", !34, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !34, i64 16, !34, i64 24, !7, i64 32, !8, i64 40}
!34 = !{!"any pointer", !8, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!33, !34, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !8, i64 0}
!39 = !{!40, !38, i64 4}
!40 = !{!"", !14, i64 0, !38, i64 4}
!41 = !{!13, !14, i64 4}
!42 = !{!13, !8, i64 8}
!43 = !{!40, !14, i64 0}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !30}
!48 = !{!33, !7, i64 32}
!49 = distinct !{!49, !30}
!50 = !{!14, !14, i64 0}
!51 = distinct !{!51, !30}
!52 = !{!6, !7, i64 304}
!53 = !{!6, !7, i64 8}
!54 = !{!6, !7, i64 176}
!55 = !{!6, !7, i64 112}
!56 = !{!6, !7, i64 144}
!57 = !{!6, !7, i64 160}
!58 = !{!6, !7, i64 16}
!59 = !{!6, !7, i64 32}
!60 = !{!6, !7, i64 48}
!61 = !{!6, !7, i64 296}
!62 = !{!6, !7, i64 256}
!63 = !{!6, !7, i64 272}
!64 = !{!6, !7, i64 192}
!65 = !{!6, !7, i64 208}
!66 = !{!6, !7, i64 224}
!67 = !{!6, !7, i64 240}
!68 = !{!69, !7, i64 40}
!69 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !30}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !30}
