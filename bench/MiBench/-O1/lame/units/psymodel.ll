; ModuleID = 'psymodel.c'
source_filename = "psymodel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }

@L3psycho_anal.minval = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.qthr_l = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.qthr_s = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.nb_1 = internal unnamed_addr global [4 x [63 x double]] zeroinitializer, align 16
@L3psycho_anal.nb_2 = internal unnamed_addr global [4 x [63 x double]] zeroinitializer, align 16
@L3psycho_anal.s3_s = internal global [64 x [64 x double]] zeroinitializer, align 16
@L3psycho_anal.s3_l = internal global [64 x [64 x double]] zeroinitializer, align 16
@L3psycho_anal.thm = internal unnamed_addr global [4 x %struct.III_psy_xmin] zeroinitializer, align 16
@L3psycho_anal.en = internal unnamed_addr global [4 x %struct.III_psy_xmin] zeroinitializer, align 16
@L3psycho_anal.cw_upper_index = internal unnamed_addr global i32 0, align 4
@L3psycho_anal.cw_lower_index = internal unnamed_addr global i1 false, align 4
@L3psycho_anal.ax_sav = internal unnamed_addr global [4 x [2 x [513 x float]]] zeroinitializer, align 16
@L3psycho_anal.bx_sav = internal unnamed_addr global [4 x [2 x [513 x float]]] zeroinitializer, align 16
@L3psycho_anal.rx_sav = internal unnamed_addr global [4 x [2 x [513 x float]]] zeroinitializer, align 16
@L3psycho_anal.cw = internal unnamed_addr global [513 x float] zeroinitializer, align 16
@L3psycho_anal.wsamp_L = internal global [2 x [1024 x float]] zeroinitializer, align 16
@L3psycho_anal.energy = internal unnamed_addr global [513 x float] zeroinitializer, align 16
@L3psycho_anal.wsamp_S = internal global [2 x [3 x [256 x float]]] zeroinitializer, align 16
@L3psycho_anal.energy_s = internal unnamed_addr global [3 x [129 x float]] zeroinitializer, align 16
@L3psycho_anal.eb = internal unnamed_addr global [63 x double] zeroinitializer, align 16
@L3psycho_anal.cb = internal unnamed_addr global [63 x double] zeroinitializer, align 16
@L3psycho_anal.thr = internal unnamed_addr global [63 x double] zeroinitializer, align 16
@L3psycho_anal.w1_l = internal global [21 x double] zeroinitializer, align 16
@L3psycho_anal.w2_l = internal global [21 x double] zeroinitializer, align 16
@L3psycho_anal.w1_s = internal global [12 x double] zeroinitializer, align 16
@L3psycho_anal.w2_s = internal global [12 x double] zeroinitializer, align 16
@L3psycho_anal.mld_l = internal unnamed_addr global [21 x double] zeroinitializer, align 16
@L3psycho_anal.mld_s = internal unnamed_addr global [12 x double] zeroinitializer, align 16
@L3psycho_anal.bu_l = internal global [21 x i32] zeroinitializer, align 16
@L3psycho_anal.bo_l = internal global [21 x i32] zeroinitializer, align 16
@L3psycho_anal.bu_s = internal global [12 x i32] zeroinitializer, align 16
@L3psycho_anal.bo_s = internal global [12 x i32] zeroinitializer, align 16
@L3psycho_anal.npart_l = internal unnamed_addr global i32 0, align 4
@L3psycho_anal.npart_s = internal unnamed_addr global i32 0, align 4
@L3psycho_anal.npart_l_orig = internal unnamed_addr global i32 0, align 4
@L3psycho_anal.npart_s_orig = internal unnamed_addr global i32 0, align 4
@L3psycho_anal.s3ind = internal unnamed_addr global [63 x [2 x i32]] zeroinitializer, align 16
@L3psycho_anal.s3ind_s = internal unnamed_addr global [63 x [2 x i32]] zeroinitializer, align 16
@L3psycho_anal.numlines_s = internal global [63 x i32] zeroinitializer, align 16
@L3psycho_anal.numlines_l = internal global [63 x i32] zeroinitializer, align 16
@L3psycho_anal.partition_l = internal global [513 x i32] zeroinitializer, align 16
@L3psycho_anal.pe = internal unnamed_addr global [4 x double] zeroinitializer, align 16
@L3psycho_anal.ms_ratio_s_old = internal unnamed_addr global double 0.000000e+00, align 8
@L3psycho_anal.ms_ratio_l_old = internal unnamed_addr global double 0.000000e+00, align 8
@L3psycho_anal.ms_ener_ratio_old = internal unnamed_addr global double 2.500000e-01, align 8
@L3psycho_anal.blocktype_old = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [42 x i8] c"error, invalid sampling frequency: %d Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error in block selecting\0A\00", align 1
@psy_data = external local_unnamed_addr global [0 x double], align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"1. please check \22psy_data\22\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"3. please check \22psy_data\22\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"30:please check \22psy_data\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"31l: please check \22psy_data.\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"w1,w2: %f %f \0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"31s: please check \22psy_data.\22\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @L3psycho_anal(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef %10) local_unnamed_addr #0 {
  %12 = alloca [4 x float], align 16
  %13 = alloca [2 x i32], align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca [63 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  %16 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %17 = load i64, ptr %16, align 8, !tbaa !5
  %18 = icmp eq i64 %17, 0
  %19 = icmp eq i32 %2, 0
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %294

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %15) #11
  store i32 3, ptr @L3psycho_anal.blocktype_old, align 4, !tbaa !13
  store i32 3, ptr getelementptr inbounds ([2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 1), align 4, !tbaa !13
  %22 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !14
  switch i32 %23, label %24 [
    i32 32000, label %27
    i32 44100, label %27
    i32 48000, label %27
    i32 16000, label %27
    i32 22050, label %27
    i32 24000, label %27
  ]

24:                                               ; preds = %21
  %25 = load ptr, ptr @stderr, align 8, !tbaa !15
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef %23) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

27:                                               ; preds = %21, %21, %21, %21, %21, %21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16416) @L3psycho_anal.rx_sav, i8 0, i64 16416, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16416) @L3psycho_anal.ax_sav, i8 0, i64 16416, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16416) @L3psycho_anal.bx_sav, i8 0, i64 16416, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1952) @L3psycho_anal.en, i8 0, i64 1952, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1952) @L3psycho_anal.thm, i8 0, i64 1952, i1 false)
  store i1 true, ptr @L3psycho_anal.cw_lower_index, align 4
  %28 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 35
  %29 = load float, ptr %28, align 8, !tbaa !16
  %30 = fcmp ogt float %29, 0.000000e+00
  %31 = select i1 %30, float %29, float 0x4021BE4F80000000
  %32 = fpext float %31 to double
  %33 = fmul double %32, 1.000000e+03
  %34 = fmul double %33, 1.024000e+03
  %35 = sitofp i32 %23 to double
  %36 = fdiv double %34, %35
  %37 = fptosi double %36 to i32
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 509)
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 6)
  store i32 %39, ptr @L3psycho_anal.cw_upper_index, align 4, !tbaa !13
  br label %40

40:                                               ; preds = %27, %40
  %41 = phi i64 [ 0, %27 ], [ %43, %40 ]
  %42 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %41
  store float 0x3FD99999A0000000, ptr %42, align 4, !tbaa !17
  %43 = add nuw nsw i64 %41, 1
  %44 = icmp eq i64 %43, 513
  br i1 %44, label %45, label %40, !llvm.loop !18

45:                                               ; preds = %40, %45
  %46 = phi i64 [ %56, %45 ], [ 0, %40 ]
  %47 = trunc i64 %46 to i32
  %48 = sitofp i32 %47 to double
  %49 = fmul double %48, 0x400921FB54442D18
  %50 = fdiv double %49, 1.200000e+01
  %51 = tail call double @cos(double noundef %50) #11
  %52 = fsub double 1.000000e+00, %51
  %53 = tail call double @llvm.fmuladd.f64(double %52, double 1.250000e+00, double -2.500000e+00)
  %54 = tail call double @pow(double noundef 1.000000e+01, double noundef %53) #11
  %55 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.mld_s, i64 0, i64 %46
  store double %54, ptr %55, align 8, !tbaa !20
  %56 = add nuw nsw i64 %46, 1
  %57 = icmp eq i64 %56, 12
  br i1 %57, label %58, label %45, !llvm.loop !22

58:                                               ; preds = %45, %58
  %59 = phi i64 [ %69, %58 ], [ 0, %45 ]
  %60 = trunc i64 %59 to i32
  %61 = sitofp i32 %60 to double
  %62 = fmul double %61, 0x400921FB54442D18
  %63 = fdiv double %62, 2.100000e+01
  %64 = tail call double @cos(double noundef %63) #11
  %65 = fsub double 1.000000e+00, %64
  %66 = tail call double @llvm.fmuladd.f64(double %65, double 1.250000e+00, double -2.500000e+00)
  %67 = tail call double @pow(double noundef 1.000000e+01, double noundef %66) #11
  %68 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.mld_l, i64 0, i64 %59
  store double %67, ptr %68, align 8, !tbaa !20
  %69 = add nuw nsw i64 %59, 1
  %70 = icmp eq i64 %69, 21
  br i1 %70, label %71, label %58, !llvm.loop !23

71:                                               ; preds = %58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2052) @L3psycho_anal.partition_l, i8 -1, i64 2052, i1 false), !tbaa !13
  %72 = load i32, ptr %22, align 8, !tbaa !14
  %73 = sitofp i32 %72 to double
  call void @L3para_read(double noundef %73, ptr noundef nonnull @L3psycho_anal.numlines_l, ptr noundef nonnull @L3psycho_anal.numlines_s, ptr noundef nonnull @L3psycho_anal.partition_l, ptr noundef nonnull @L3psycho_anal.minval, ptr noundef nonnull @L3psycho_anal.qthr_l, ptr noundef nonnull @L3psycho_anal.s3_l, ptr noundef nonnull @L3psycho_anal.s3_s, ptr noundef nonnull @L3psycho_anal.qthr_s, ptr noundef nonnull %15, ptr noundef nonnull @L3psycho_anal.bu_l, ptr noundef nonnull @L3psycho_anal.bo_l, ptr noundef nonnull @L3psycho_anal.w1_l, ptr noundef nonnull @L3psycho_anal.w2_l, ptr noundef nonnull @L3psycho_anal.bu_s, ptr noundef nonnull @L3psycho_anal.bo_s, ptr noundef nonnull @L3psycho_anal.w1_s, ptr noundef nonnull @L3psycho_anal.w2_s)
  store i32 0, ptr @L3psycho_anal.npart_l_orig, align 4, !tbaa !13
  store i32 0, ptr @L3psycho_anal.npart_s_orig, align 4, !tbaa !13
  br label %74

74:                                               ; preds = %71, %81
  %75 = phi i64 [ 0, %71 ], [ %83, %81 ]
  %76 = phi i32 [ 0, %71 ], [ %82, %81 ]
  %77 = getelementptr inbounds [513 x i32], ptr @L3psycho_anal.partition_l, i64 0, i64 %75
  %78 = load i32, ptr %77, align 4, !tbaa !13
  %79 = icmp sgt i32 %78, %76
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 %78, ptr @L3psycho_anal.npart_l_orig, align 4, !tbaa !13
  br label %81

81:                                               ; preds = %74, %80
  %82 = phi i32 [ %76, %74 ], [ %78, %80 ]
  %83 = add nuw nsw i64 %75, 1
  %84 = icmp eq i64 %83, 513
  br i1 %84, label %85, label %74, !llvm.loop !24

85:                                               ; preds = %81
  %86 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4, !tbaa !13
  %87 = add i32 %86, 1
  store i32 %87, ptr @L3psycho_anal.npart_l_orig, align 4, !tbaa !13
  br label %88

88:                                               ; preds = %88, %85
  %89 = phi i32 [ %95, %88 ], [ 0, %85 ]
  %90 = phi i64 [ %94, %88 ], [ 0, %85 ]
  %91 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_s, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !13
  %93 = icmp sgt i32 %92, -1
  %94 = add nuw i64 %90, 1
  %95 = add nuw i32 %89, 1
  br i1 %93, label %88, label %96, !llvm.loop !25

96:                                               ; preds = %88
  %97 = trunc i64 %90 to i32
  store i32 %97, ptr @L3psycho_anal.npart_s_orig, align 4, !tbaa !13
  %98 = load i32, ptr getelementptr inbounds ([21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 20), align 16, !tbaa !13
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr @L3psycho_anal.npart_l, align 4, !tbaa !13
  %100 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 11), align 4, !tbaa !13
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr @L3psycho_anal.npart_s, align 4, !tbaa !13
  %102 = icmp sgt i32 %98, %86
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 %87, ptr @L3psycho_anal.npart_l, align 4, !tbaa !13
  store i32 %86, ptr getelementptr inbounds ([21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 20), align 16, !tbaa !13
  store double 1.000000e+00, ptr getelementptr inbounds ([21 x double], ptr @L3psycho_anal.w2_l, i64 0, i64 20), align 16, !tbaa !20
  br label %104

104:                                              ; preds = %103, %96
  %105 = icmp slt i32 %100, %97
  br i1 %105, label %108, label %106

106:                                              ; preds = %104
  store i32 %97, ptr @L3psycho_anal.npart_s, align 4, !tbaa !13
  %107 = add nsw i32 %97, -1
  store i32 %107, ptr getelementptr inbounds ([12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 11), align 4, !tbaa !13
  store double 1.000000e+00, ptr getelementptr inbounds ([12 x double], ptr @L3psycho_anal.w2_s, i64 0, i64 11), align 8, !tbaa !20
  br label %108

108:                                              ; preds = %106, %104
  %109 = load i32, ptr @L3psycho_anal.npart_l, align 4, !tbaa !13
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = icmp slt i32 %86, 0
  %113 = add i32 %86, 1
  %114 = zext i32 %87 to i64
  %115 = tail call i32 @llvm.smin.i32(i32 %87, i32 1)
  %116 = add i32 %115, -1
  %117 = zext nneg i32 %109 to i64
  %118 = zext i32 %113 to i64
  br label %119

119:                                              ; preds = %111, %155
  %120 = phi i64 [ 0, %111 ], [ %158, %155 ]
  br i1 %112, label %140, label %130

121:                                              ; preds = %155, %108
  %122 = load i32, ptr @L3psycho_anal.npart_s, align 4, !tbaa !13
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %162

124:                                              ; preds = %121
  %125 = icmp eq i32 %97, 0
  %126 = tail call i32 @llvm.smin.i32(i32 %89, i32 1)
  %127 = add nsw i32 %126, -1
  %128 = zext nneg i32 %122 to i64
  %129 = zext i32 %89 to i64
  br label %160

130:                                              ; preds = %119, %135
  %131 = phi i64 [ %136, %135 ], [ 0, %119 ]
  %132 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %120, i64 %131
  %133 = load double, ptr %132, align 8, !tbaa !20
  %134 = fcmp une double %133, 0.000000e+00
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = add nuw nsw i64 %131, 1
  %137 = icmp eq i64 %136, %118
  br i1 %137, label %140, label %130, !llvm.loop !26

138:                                              ; preds = %130
  %139 = trunc i64 %131 to i32
  br label %140

140:                                              ; preds = %138, %135, %119
  %141 = phi i32 [ 0, %119 ], [ %139, %138 ], [ %113, %135 ]
  %142 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %120
  store i32 %141, ptr %142, align 8, !tbaa !13
  br label %143

143:                                              ; preds = %147, %140
  %144 = phi i64 [ %148, %147 ], [ %114, %140 ]
  %145 = trunc i64 %144 to i32
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = add nsw i64 %144, -1
  %149 = and i64 %148, 4294967295
  %150 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %120, i64 %149
  %151 = load double, ptr %150, align 8, !tbaa !20
  %152 = fcmp une double %151, 0.000000e+00
  br i1 %152, label %153, label %143, !llvm.loop !27

153:                                              ; preds = %147
  %154 = trunc i64 %148 to i32
  br label %155

155:                                              ; preds = %143, %153
  %156 = phi i32 [ %154, %153 ], [ %116, %143 ]
  %157 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %120, i64 1
  store i32 %156, ptr %157, align 4, !tbaa !13
  %158 = add nuw nsw i64 %120, 1
  %159 = icmp eq i64 %158, %117
  br i1 %159, label %121, label %119, !llvm.loop !28

160:                                              ; preds = %124, %190
  %161 = phi i64 [ 0, %124 ], [ %193, %190 ]
  br i1 %125, label %176, label %166

162:                                              ; preds = %190, %121
  %163 = icmp sgt i32 %109, 0
  br i1 %163, label %164, label %232

164:                                              ; preds = %162
  %165 = zext nneg i32 %109 to i64
  br label %195

166:                                              ; preds = %160, %171
  %167 = phi i64 [ %172, %171 ], [ 0, %160 ]
  %168 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %161, i64 %167
  %169 = load double, ptr %168, align 8, !tbaa !20
  %170 = fcmp une double %169, 0.000000e+00
  br i1 %170, label %174, label %171

171:                                              ; preds = %166
  %172 = add nuw nsw i64 %167, 1
  %173 = icmp eq i64 %172, %129
  br i1 %173, label %176, label %166, !llvm.loop !29

174:                                              ; preds = %166
  %175 = trunc i64 %167 to i32
  br label %176

176:                                              ; preds = %174, %171, %160
  %177 = phi i32 [ 0, %160 ], [ %175, %174 ], [ %89, %171 ]
  %178 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %161
  store i32 %177, ptr %178, align 8, !tbaa !13
  br label %179

179:                                              ; preds = %182, %176
  %180 = phi i64 [ %183, %182 ], [ %90, %176 ]
  %181 = icmp sgt i64 %180, 1
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = add nsw i64 %180, -1
  %184 = and i64 %183, 4294967295
  %185 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %161, i64 %184
  %186 = load double, ptr %185, align 8, !tbaa !20
  %187 = fcmp une double %186, 0.000000e+00
  br i1 %187, label %188, label %179, !llvm.loop !30

188:                                              ; preds = %182
  %189 = trunc i64 %183 to i32
  br label %190

190:                                              ; preds = %179, %188
  %191 = phi i32 [ %189, %188 ], [ %127, %179 ]
  %192 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %161, i64 1
  store i32 %191, ptr %192, align 4, !tbaa !13
  %193 = add nuw nsw i64 %161, 1
  %194 = icmp eq i64 %193, %128
  br i1 %194, label %162, label %160, !llvm.loop !31

195:                                              ; preds = %164, %229
  %196 = phi i64 [ 0, %164 ], [ %230, %229 ]
  %197 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %196
  %198 = load i32, ptr %197, align 8, !tbaa !13
  %199 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %196, i64 1
  %200 = load i32, ptr %199, align 4, !tbaa !13
  %201 = icmp sgt i32 %198, %200
  br i1 %201, label %205, label %202

202:                                              ; preds = %195
  %203 = sext i32 %198 to i64
  %204 = add i32 %200, 1
  br label %212

205:                                              ; preds = %212, %195
  %206 = phi double [ 0.000000e+00, %195 ], [ %217, %212 ]
  %207 = icmp sgt i32 %198, %200
  br i1 %207, label %229, label %208

208:                                              ; preds = %205
  %209 = fdiv double 0x3FD0137987DD704C, %206
  %210 = sext i32 %198 to i64
  %211 = add i32 %200, 1
  br label %221

212:                                              ; preds = %202, %212
  %213 = phi i64 [ %203, %202 ], [ %218, %212 ]
  %214 = phi double [ 0.000000e+00, %202 ], [ %217, %212 ]
  %215 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %196, i64 %213
  %216 = load double, ptr %215, align 8, !tbaa !20
  %217 = fadd double %214, %216
  %218 = add nsw i64 %213, 1
  %219 = trunc i64 %218 to i32
  %220 = icmp eq i32 %204, %219
  br i1 %220, label %205, label %212, !llvm.loop !32

221:                                              ; preds = %208, %221
  %222 = phi i64 [ %210, %208 ], [ %226, %221 ]
  %223 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %196, i64 %222
  %224 = load double, ptr %223, align 8, !tbaa !20
  %225 = fmul double %209, %224
  store double %225, ptr %223, align 8, !tbaa !20
  %226 = add nsw i64 %222, 1
  %227 = trunc i64 %226 to i32
  %228 = icmp eq i32 %211, %227
  br i1 %228, label %229, label %221, !llvm.loop !33

229:                                              ; preds = %221, %205
  %230 = add nuw nsw i64 %196, 1
  %231 = icmp eq i64 %230, %165
  br i1 %231, label %232, label %195, !llvm.loop !34

232:                                              ; preds = %229, %162
  %233 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  %234 = load i32, ptr %233, align 8, !tbaa !35
  %235 = icmp eq i32 %234, 1
  %236 = load i32, ptr @L3psycho_anal.npart_s, align 4
  %237 = icmp sgt i32 %236, 0
  %238 = select i1 %235, i1 %237, i1 false
  br i1 %238, label %239, label %249

239:                                              ; preds = %232, %239
  %240 = phi i64 [ %245, %239 ], [ 0, %232 ]
  %241 = getelementptr inbounds [63 x double], ptr %15, i64 0, i64 %240
  %242 = load double, ptr %241, align 8, !tbaa !20
  %243 = fmul double %242, 0x3FCD791C5F888823
  %244 = tail call double @exp(double noundef %243) #11
  store double %244, ptr %241, align 8, !tbaa !20
  %245 = add nuw nsw i64 %240, 1
  %246 = load i32, ptr @L3psycho_anal.npart_s, align 4, !tbaa !13
  %247 = sext i32 %246 to i64
  %248 = icmp slt i64 %245, %247
  br i1 %248, label %239, label %249, !llvm.loop !36

249:                                              ; preds = %239, %232
  %250 = load i32, ptr @L3psycho_anal.npart_s, align 4, !tbaa !13
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %293

252:                                              ; preds = %249
  %253 = zext nneg i32 %250 to i64
  br label %254

254:                                              ; preds = %252, %290
  %255 = phi i64 [ 0, %252 ], [ %291, %290 ]
  %256 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %255
  %257 = load i32, ptr %256, align 8, !tbaa !13
  %258 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %255, i64 1
  %259 = load i32, ptr %258, align 4, !tbaa !13
  %260 = icmp sgt i32 %257, %259
  br i1 %260, label %264, label %261

261:                                              ; preds = %254
  %262 = sext i32 %257 to i64
  %263 = add i32 %259, 1
  br label %273

264:                                              ; preds = %273, %254
  %265 = phi double [ 0.000000e+00, %254 ], [ %278, %273 ]
  %266 = icmp sgt i32 %257, %259
  br i1 %266, label %290, label %267

267:                                              ; preds = %264
  %268 = getelementptr inbounds [63 x double], ptr %15, i64 0, i64 %255
  %269 = load double, ptr %268, align 8, !tbaa !20
  %270 = fdiv double %269, %265
  %271 = sext i32 %257 to i64
  %272 = add i32 %259, 1
  br label %282

273:                                              ; preds = %261, %273
  %274 = phi i64 [ %262, %261 ], [ %279, %273 ]
  %275 = phi double [ 0.000000e+00, %261 ], [ %278, %273 ]
  %276 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %255, i64 %274
  %277 = load double, ptr %276, align 8, !tbaa !20
  %278 = fadd double %275, %277
  %279 = add nsw i64 %274, 1
  %280 = trunc i64 %279 to i32
  %281 = icmp eq i32 %263, %280
  br i1 %281, label %264, label %273, !llvm.loop !37

282:                                              ; preds = %267, %282
  %283 = phi i64 [ %271, %267 ], [ %287, %282 ]
  %284 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %255, i64 %283
  %285 = load double, ptr %284, align 8, !tbaa !20
  %286 = fmul double %285, %270
  store double %286, ptr %284, align 8, !tbaa !20
  %287 = add nsw i64 %283, 1
  %288 = trunc i64 %287 to i32
  %289 = icmp eq i32 %272, %288
  br i1 %289, label %290, label %282, !llvm.loop !38

290:                                              ; preds = %282, %264
  %291 = add nuw nsw i64 %255, 1
  %292 = icmp eq i64 %291, %253
  br i1 %292, label %293, label %254, !llvm.loop !39

293:                                              ; preds = %290, %249
  tail call void @init_fft() #11
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %15) #11
  br label %294

294:                                              ; preds = %293, %11
  %295 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %296 = load i32, ptr %295, align 4, !tbaa !40
  %297 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %298 = load i32, ptr %297, align 4, !tbaa !41
  %299 = icmp eq i32 %298, 1
  %300 = select i1 %299, i32 4, i32 %296
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %987

302:                                              ; preds = %294
  %303 = sext i32 %2 to i64
  %304 = sext i32 %2 to i64
  %305 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 37
  %306 = zext nneg i32 %300 to i64
  br label %307

307:                                              ; preds = %302, %984
  %308 = phi i64 [ 0, %302 ], [ %985, %984 ]
  %309 = and i64 %308, 1
  %310 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %309
  %311 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %309
  %312 = icmp ult i64 %308, 2
  %313 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %308
  br i1 %312, label %314, label %323

314:                                              ; preds = %307
  %315 = trunc i64 %308 to i32
  tail call void @fft_long(ptr noundef nonnull %311, i32 noundef %315, ptr noundef %1) #11
  %316 = trunc i64 %308 to i32
  tail call void @fft_short(ptr noundef nonnull %310, i32 noundef %316, ptr noundef %1) #11
  %317 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %308
  %318 = load double, ptr %317, align 8, !tbaa !20
  %319 = getelementptr inbounds double, ptr %8, i64 %308
  store double %318, ptr %319, align 8, !tbaa !20
  %320 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %6, i64 %304, i64 %308
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %320, ptr noundef nonnull align 8 dereferenceable(488) %313, i64 488, i1 false), !tbaa.struct !42
  %321 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %6, i64 %304, i64 %308, i32 1
  %322 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %308
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %321, ptr noundef nonnull align 8 dereferenceable(488) %322, i64 488, i1 false), !tbaa.struct !42
  br label %361

323:                                              ; preds = %307
  %324 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %308
  %325 = load double, ptr %324, align 8, !tbaa !20
  %326 = add nsw i64 %308, -2
  %327 = getelementptr inbounds double, ptr %9, i64 %326
  store double %325, ptr %327, align 8, !tbaa !20
  %328 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %7, i64 %303, i64 %326
  %329 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %7, i64 %303, i64 %326, i32 1
  %330 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %308
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %329, ptr noundef nonnull align 8 dereferenceable(488) %330, i64 488, i1 false), !tbaa.struct !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %328, ptr noundef nonnull align 8 dereferenceable(488) %313, i64 488, i1 false), !tbaa.struct !42
  %331 = icmp eq i64 %308, 2
  br i1 %331, label %332, label %361

332:                                              ; preds = %323, %332
  %333 = phi i64 [ %342, %332 ], [ 1023, %323 ]
  %334 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 0, i64 %333
  %335 = load float, ptr %334, align 4, !tbaa !17
  %336 = getelementptr inbounds [2 x [1024 x float]], ptr @L3psycho_anal.wsamp_L, i64 0, i64 1, i64 %333
  %337 = load float, ptr %336, align 4, !tbaa !17
  %338 = fadd float %335, %337
  %339 = fmul float %338, 0x3FE6A09E60000000
  store float %339, ptr %334, align 4, !tbaa !17
  %340 = fsub float %335, %337
  %341 = fmul float %340, 0x3FE6A09E60000000
  store float %341, ptr %336, align 4, !tbaa !17
  %342 = add nsw i64 %333, -1
  %343 = icmp eq i64 %333, 0
  br i1 %343, label %344, label %332, !llvm.loop !44

344:                                              ; preds = %332, %358
  %345 = phi i64 [ %359, %358 ], [ 2, %332 ]
  br label %346

346:                                              ; preds = %344, %346
  %347 = phi i64 [ 255, %344 ], [ %356, %346 ]
  %348 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 %345, i64 %347
  %349 = load float, ptr %348, align 4, !tbaa !17
  %350 = getelementptr inbounds [2 x [3 x [256 x float]]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 1, i64 %345, i64 %347
  %351 = load float, ptr %350, align 4, !tbaa !17
  %352 = fadd float %349, %351
  %353 = fmul float %352, 0x3FE6A09E60000000
  store float %353, ptr %348, align 4, !tbaa !17
  %354 = fsub float %349, %351
  %355 = fmul float %354, 0x3FE6A09E60000000
  store float %355, ptr %350, align 4, !tbaa !17
  %356 = add nsw i64 %347, -1
  %357 = icmp eq i64 %347, 0
  br i1 %357, label %358, label %346, !llvm.loop !45

358:                                              ; preds = %346
  %359 = add nsw i64 %345, -1
  %360 = icmp eq i64 %345, 0
  br i1 %360, label %361, label %344, !llvm.loop !46

361:                                              ; preds = %358, %323, %314
  %362 = load float, ptr %311, align 16, !tbaa !17
  %363 = fmul float %362, %362
  store float %363, ptr @L3psycho_anal.energy, align 16, !tbaa !17
  %364 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 %308
  store float %363, ptr %364, align 4, !tbaa !17
  br label %366

365:                                              ; preds = %366
  store float %379, ptr %364, align 4, !tbaa !17
  br label %389

366:                                              ; preds = %361, %366
  %367 = phi i64 [ 511, %361 ], [ %380, %366 ]
  %368 = phi float [ %363, %361 ], [ %379, %366 ]
  %369 = sub nuw nsw i64 512, %367
  %370 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %309, i64 %369
  %371 = load float, ptr %370, align 4, !tbaa !17
  %372 = add nuw nsw i64 %367, 512
  %373 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %309, i64 %372
  %374 = load float, ptr %373, align 4, !tbaa !17
  %375 = fmul float %374, %374
  %376 = tail call float @llvm.fmuladd.f32(float %371, float %371, float %375)
  %377 = fmul float %376, 5.000000e-01
  %378 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %369
  store float %377, ptr %378, align 4, !tbaa !17
  %379 = fadd float %368, %377
  %380 = add nsw i64 %367, -1
  %381 = icmp eq i64 %367, 0
  br i1 %381, label %365, label %366, !llvm.loop !47

382:                                              ; preds = %409
  %383 = load i1, ptr @L3psycho_anal.cw_lower_index, align 4
  %384 = select i1 %383, i32 6, i32 0
  br i1 %383, label %385, label %412

385:                                              ; preds = %382
  %386 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %308
  %387 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %308
  %388 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %308
  br label %418

389:                                              ; preds = %365, %409
  %390 = phi i64 [ 2, %365 ], [ %410, %409 ]
  %391 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %309, i64 %390
  %392 = load float, ptr %391, align 16, !tbaa !17
  %393 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %390
  %394 = fmul float %392, %392
  store float %394, ptr %393, align 4, !tbaa !17
  br label %395

395:                                              ; preds = %389, %395
  %396 = phi i64 [ 127, %389 ], [ %407, %395 ]
  %397 = sub nuw nsw i64 128, %396
  %398 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %309, i64 %390, i64 %397
  %399 = load float, ptr %398, align 4, !tbaa !17
  %400 = add nuw nsw i64 %396, 128
  %401 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %309, i64 %390, i64 %400
  %402 = load float, ptr %401, align 4, !tbaa !17
  %403 = fmul float %402, %402
  %404 = tail call float @llvm.fmuladd.f32(float %399, float %399, float %403)
  %405 = fmul float %404, 5.000000e-01
  %406 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %390, i64 %397
  store float %405, ptr %406, align 4, !tbaa !17
  %407 = add nsw i64 %396, -1
  %408 = icmp eq i64 %396, 0
  br i1 %408, label %409, label %395, !llvm.loop !48

409:                                              ; preds = %395
  %410 = add nsw i64 %390, -1
  %411 = icmp eq i64 %390, 0
  br i1 %411, label %382, label %389, !llvm.loop !49

412:                                              ; preds = %491, %382
  %413 = phi i32 [ %384, %382 ], [ %496, %491 ]
  %414 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4, !tbaa !13
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %499

416:                                              ; preds = %412
  %417 = zext nneg i32 %413 to i64
  br label %502

418:                                              ; preds = %385, %491
  %419 = phi i64 [ 0, %385 ], [ %494, %491 ]
  %420 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %308, i64 1, i64 %419
  %421 = load float, ptr %420, align 4, !tbaa !17
  %422 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %308, i64 1, i64 %419
  %423 = load float, ptr %422, align 4, !tbaa !17
  %424 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %308, i64 1, i64 %419
  %425 = load float, ptr %424, align 4, !tbaa !17
  %426 = getelementptr inbounds [513 x float], ptr %386, i64 0, i64 %419
  %427 = load float, ptr %426, align 4, !tbaa !17
  store float %427, ptr %420, align 4, !tbaa !17
  %428 = getelementptr inbounds [513 x float], ptr %387, i64 0, i64 %419
  %429 = load float, ptr %428, align 4, !tbaa !17
  store float %429, ptr %422, align 4, !tbaa !17
  %430 = getelementptr inbounds [513 x float], ptr %388, i64 0, i64 %419
  %431 = load float, ptr %430, align 4, !tbaa !17
  store float %431, ptr %424, align 4, !tbaa !17
  %432 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %309, i64 %419
  %433 = load float, ptr %432, align 4, !tbaa !17
  store float %433, ptr %426, align 4, !tbaa !17
  %434 = icmp eq i64 %419, 0
  %435 = sub nuw nsw i64 1024, %419
  %436 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %309, i64 %435
  %437 = select i1 %434, ptr %311, ptr %436
  %438 = load float, ptr %437, align 4, !tbaa !17
  store float %438, ptr %428, align 4, !tbaa !17
  %439 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %419
  %440 = load float, ptr %439, align 4, !tbaa !17
  %441 = tail call float @sqrtf(float noundef %440) #5
  store float %441, ptr %430, align 4, !tbaa !17
  %442 = fcmp une float %431, 0.000000e+00
  br i1 %442, label %443, label %450

443:                                              ; preds = %418
  %444 = fmul float %427, %429
  %445 = fneg float %429
  %446 = fmul float %429, %445
  %447 = tail call float @llvm.fmuladd.f32(float %427, float %427, float %446)
  %448 = fmul float %447, 5.000000e-01
  %449 = fmul float %431, %431
  br label %450

450:                                              ; preds = %418, %443
  %451 = phi float [ %449, %443 ], [ 1.000000e+00, %418 ]
  %452 = phi float [ %448, %443 ], [ 0.000000e+00, %418 ]
  %453 = phi float [ %444, %443 ], [ 1.000000e+00, %418 ]
  %454 = fcmp une float %425, 0.000000e+00
  br i1 %454, label %455, label %465

455:                                              ; preds = %450
  %456 = fadd float %452, %453
  %457 = fadd float %421, %423
  %458 = fmul float %457, %456
  %459 = fmul float %458, 5.000000e-01
  %460 = fneg float %421
  %461 = tail call float @llvm.fmuladd.f32(float %460, float %453, float %459)
  %462 = fneg float %423
  %463 = tail call float @llvm.fmuladd.f32(float %462, float %452, float %459)
  %464 = fmul float %425, %451
  br label %465

465:                                              ; preds = %450, %455
  %466 = phi float [ %464, %455 ], [ %451, %450 ]
  %467 = phi float [ %461, %455 ], [ %452, %450 ]
  %468 = phi float [ %463, %455 ], [ %453, %450 ]
  %469 = fneg float %425
  %470 = tail call float @llvm.fmuladd.f32(float %431, float 2.000000e+00, float %469)
  %471 = tail call float @llvm.fabs.f32(float %470)
  %472 = fadd float %471, %441
  %473 = fcmp une float %472, 0.000000e+00
  br i1 %473, label %474, label %491

474:                                              ; preds = %465
  %475 = fdiv float %470, %466
  %476 = fadd float %433, %438
  %477 = fneg float %468
  %478 = fmul float %475, %477
  %479 = tail call float @llvm.fmuladd.f32(float %476, float 5.000000e-01, float %478)
  %480 = fsub float %433, %438
  %481 = fneg float %467
  %482 = fmul float %475, %481
  %483 = tail call float @llvm.fmuladd.f32(float %480, float 5.000000e-01, float %482)
  %484 = fmul float %483, %483
  %485 = tail call float @llvm.fmuladd.f32(float %479, float %479, float %484)
  %486 = fpext float %485 to double
  %487 = tail call double @sqrt(double noundef %486) #11
  %488 = fpext float %472 to double
  %489 = fdiv double %487, %488
  %490 = fptrunc double %489 to float
  br label %491

491:                                              ; preds = %474, %465
  %492 = phi float [ %490, %474 ], [ %472, %465 ]
  %493 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %419
  store float %492, ptr %493, align 4, !tbaa !17
  %494 = add nuw nsw i64 %419, 1
  %495 = load i1, ptr @L3psycho_anal.cw_lower_index, align 4
  %496 = select i1 %495, i32 6, i32 0
  %497 = zext nneg i32 %496 to i64
  %498 = icmp ult i64 %494, %497
  br i1 %498, label %418, label %412, !llvm.loop !50

499:                                              ; preds = %580, %412
  %500 = phi i32 [ %414, %412 ], [ %589, %580 ]
  %501 = icmp sgt i32 %500, 0
  br i1 %501, label %601, label %594

502:                                              ; preds = %416, %580
  %503 = phi i64 [ %417, %416 ], [ %588, %580 ]
  %504 = add nuw nsw i64 %503, 2
  %505 = lshr i64 %504, 2
  %506 = getelementptr inbounds [129 x float], ptr @L3psycho_anal.energy_s, i64 0, i64 %505
  %507 = load float, ptr %506, align 4, !tbaa !17
  %508 = fcmp une float %507, 0.000000e+00
  br i1 %508, label %509, label %521

509:                                              ; preds = %502
  %510 = getelementptr inbounds [256 x float], ptr %310, i64 0, i64 %505
  %511 = load float, ptr %510, align 4, !tbaa !17
  %512 = sub nsw i64 256, %505
  %513 = getelementptr inbounds [256 x float], ptr %310, i64 0, i64 %512
  %514 = load float, ptr %513, align 4, !tbaa !17
  %515 = fmul float %511, %514
  %516 = fneg float %514
  %517 = fmul float %514, %516
  %518 = tail call float @llvm.fmuladd.f32(float %511, float %511, float %517)
  %519 = fmul float %518, 5.000000e-01
  %520 = tail call float @sqrtf(float noundef %507) #5
  br label %521

521:                                              ; preds = %502, %509
  %522 = phi float [ %520, %509 ], [ %507, %502 ]
  %523 = phi float [ %515, %509 ], [ 1.000000e+00, %502 ]
  %524 = phi float [ %519, %509 ], [ 0.000000e+00, %502 ]
  %525 = phi float [ %507, %509 ], [ 1.000000e+00, %502 ]
  %526 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 2, i64 %505
  %527 = load float, ptr %526, align 4, !tbaa !17
  %528 = fcmp une float %527, 0.000000e+00
  br i1 %528, label %529, label %545

529:                                              ; preds = %521
  %530 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %309, i64 2, i64 %505
  %531 = load float, ptr %530, align 4, !tbaa !17
  %532 = sub nsw i64 256, %505
  %533 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %309, i64 2, i64 %532
  %534 = load float, ptr %533, align 4, !tbaa !17
  %535 = fadd float %523, %524
  %536 = fadd float %531, %534
  %537 = fmul float %535, %536
  %538 = fmul float %537, 5.000000e-01
  %539 = fneg float %531
  %540 = tail call float @llvm.fmuladd.f32(float %539, float %523, float %538)
  %541 = fneg float %534
  %542 = tail call float @llvm.fmuladd.f32(float %541, float %524, float %538)
  %543 = tail call float @sqrtf(float noundef %527) #5
  %544 = fmul float %525, %543
  br label %545

545:                                              ; preds = %521, %529
  %546 = phi float [ %543, %529 ], [ %527, %521 ]
  %547 = phi float [ %542, %529 ], [ %523, %521 ]
  %548 = phi float [ %540, %529 ], [ %524, %521 ]
  %549 = phi float [ %544, %529 ], [ %525, %521 ]
  %550 = fneg float %546
  %551 = tail call float @llvm.fmuladd.f32(float %522, float 2.000000e+00, float %550)
  %552 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 1, i64 %505
  %553 = load float, ptr %552, align 4, !tbaa !17
  %554 = tail call float @sqrtf(float noundef %553) #5
  %555 = tail call float @llvm.fabs.f32(float %551)
  %556 = fadd float %555, %554
  %557 = fcmp une float %556, 0.000000e+00
  br i1 %557, label %558, label %580

558:                                              ; preds = %545
  %559 = fdiv float %551, %549
  %560 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %309, i64 1, i64 %505
  %561 = load float, ptr %560, align 4, !tbaa !17
  %562 = sub nsw i64 256, %505
  %563 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %309, i64 1, i64 %562
  %564 = load float, ptr %563, align 4, !tbaa !17
  %565 = fadd float %561, %564
  %566 = fneg float %547
  %567 = fmul float %559, %566
  %568 = tail call float @llvm.fmuladd.f32(float %565, float 5.000000e-01, float %567)
  %569 = fsub float %561, %564
  %570 = fneg float %548
  %571 = fmul float %559, %570
  %572 = tail call float @llvm.fmuladd.f32(float %569, float 5.000000e-01, float %571)
  %573 = fmul float %572, %572
  %574 = tail call float @llvm.fmuladd.f32(float %568, float %568, float %573)
  %575 = fpext float %574 to double
  %576 = tail call double @sqrt(double noundef %575) #11
  %577 = fpext float %556 to double
  %578 = fdiv double %576, %577
  %579 = fptrunc double %578 to float
  br label %580

580:                                              ; preds = %558, %545
  %581 = phi float [ %579, %558 ], [ %556, %545 ]
  %582 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %503
  store float %581, ptr %582, align 4, !tbaa !17
  %583 = add nuw nsw i64 %503, 3
  %584 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %583
  store float %581, ptr %584, align 4, !tbaa !17
  %585 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %504
  store float %581, ptr %585, align 4, !tbaa !17
  %586 = or disjoint i64 %503, 1
  %587 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %586
  store float %581, ptr %587, align 4, !tbaa !17
  %588 = add nuw nsw i64 %503, 4
  %589 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4, !tbaa !13
  %590 = sext i32 %589 to i64
  %591 = icmp slt i64 %588, %590
  br i1 %591, label %502, label %499, !llvm.loop !51

592:                                              ; preds = %637
  %593 = trunc i64 %643 to i32
  br label %594

594:                                              ; preds = %592, %499
  %595 = phi i32 [ 0, %499 ], [ %640, %592 ]
  %596 = phi i32 [ 0, %499 ], [ %593, %592 ]
  %597 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4, !tbaa !13
  %598 = icmp slt i32 %596, %597
  br i1 %598, label %599, label %680

599:                                              ; preds = %594
  %600 = zext i32 %596 to i64
  br label %645

601:                                              ; preds = %499, %637
  %602 = phi i64 [ %643, %637 ], [ 0, %499 ]
  %603 = phi i32 [ %640, %637 ], [ 0, %499 ]
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %604
  %606 = load float, ptr %605, align 4, !tbaa !17
  %607 = fpext float %606 to double
  %608 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %604
  %609 = load float, ptr %608, align 4, !tbaa !17
  %610 = fmul float %606, %609
  %611 = fpext float %610 to double
  %612 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %602
  %613 = load i32, ptr %612, align 4, !tbaa !13
  %614 = add i32 %603, 1
  %615 = icmp sgt i32 %613, 1
  br i1 %615, label %616, label %637

616:                                              ; preds = %601
  %617 = sext i32 %614 to i64
  br label %618

618:                                              ; preds = %616, %618
  %619 = phi i64 [ %617, %616 ], [ %633, %618 ]
  %620 = phi i32 [ %613, %616 ], [ %623, %618 ]
  %621 = phi double [ %611, %616 ], [ %632, %618 ]
  %622 = phi double [ %607, %616 ], [ %627, %618 ]
  %623 = add nsw i32 %620, -1
  %624 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %619
  %625 = load float, ptr %624, align 4, !tbaa !17
  %626 = fpext float %625 to double
  %627 = fadd double %622, %626
  %628 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %619
  %629 = load float, ptr %628, align 4, !tbaa !17
  %630 = fmul float %625, %629
  %631 = fpext float %630 to double
  %632 = fadd double %621, %631
  %633 = add nsw i64 %619, 1
  %634 = icmp sgt i32 %620, 2
  br i1 %634, label %618, label %635, !llvm.loop !52

635:                                              ; preds = %618
  %636 = add i32 %603, %613
  br label %637

637:                                              ; preds = %635, %601
  %638 = phi double [ %607, %601 ], [ %627, %635 ]
  %639 = phi double [ %611, %601 ], [ %632, %635 ]
  %640 = phi i32 [ %614, %601 ], [ %636, %635 ]
  %641 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %602
  store double %638, ptr %641, align 8, !tbaa !20
  %642 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %602
  store double %639, ptr %642, align 8, !tbaa !20
  %643 = add nuw i64 %602, 1
  %644 = icmp slt i32 %640, %500
  br i1 %644, label %601, label %592, !llvm.loop !53

645:                                              ; preds = %599, %671
  %646 = phi i64 [ %600, %599 ], [ %677, %671 ]
  %647 = phi i32 [ %595, %599 ], [ %673, %671 ]
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %648
  %650 = load float, ptr %649, align 4, !tbaa !17
  %651 = fpext float %650 to double
  %652 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %646
  %653 = load i32, ptr %652, align 4, !tbaa !13
  %654 = add i32 %647, 1
  %655 = icmp sgt i32 %653, 1
  br i1 %655, label %656, label %671

656:                                              ; preds = %645
  %657 = sext i32 %654 to i64
  br label %658

658:                                              ; preds = %656, %658
  %659 = phi i64 [ %657, %656 ], [ %667, %658 ]
  %660 = phi double [ %651, %656 ], [ %666, %658 ]
  %661 = phi i32 [ %653, %656 ], [ %662, %658 ]
  %662 = add nsw i32 %661, -1
  %663 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %659
  %664 = load float, ptr %663, align 4, !tbaa !17
  %665 = fpext float %664 to double
  %666 = fadd double %660, %665
  %667 = add nsw i64 %659, 1
  %668 = icmp sgt i32 %661, 2
  br i1 %668, label %658, label %669, !llvm.loop !54

669:                                              ; preds = %658
  %670 = add i32 %647, %653
  br label %671

671:                                              ; preds = %669, %645
  %672 = phi double [ %651, %645 ], [ %666, %669 ]
  %673 = phi i32 [ %654, %645 ], [ %670, %669 ]
  %674 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %646
  store double %672, ptr %674, align 8, !tbaa !20
  %675 = fmul double %672, 4.000000e-01
  %676 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %646
  store double %675, ptr %676, align 8, !tbaa !20
  %677 = add nuw nsw i64 %646, 1
  %678 = trunc i64 %677 to i32
  %679 = icmp sgt i32 %597, %678
  br i1 %679, label %645, label %680, !llvm.loop !55

680:                                              ; preds = %671, %594
  %681 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %308
  store double 0.000000e+00, ptr %681, align 8, !tbaa !20
  %682 = load i32, ptr @L3psycho_anal.npart_l, align 4, !tbaa !13
  %683 = icmp sgt i32 %682, 0
  br i1 %683, label %684, label %761

684:                                              ; preds = %680, %756
  %685 = phi i64 [ %757, %756 ], [ 0, %680 ]
  %686 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %685
  %687 = load i32, ptr %686, align 8, !tbaa !13
  %688 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %685, i64 1
  %689 = load i32, ptr %688, align 4, !tbaa !13
  %690 = icmp sgt i32 %687, %689
  br i1 %690, label %709, label %691

691:                                              ; preds = %684
  %692 = sext i32 %687 to i64
  %693 = add i32 %689, 1
  br label %694

694:                                              ; preds = %691, %694
  %695 = phi i64 [ %692, %691 ], [ %706, %694 ]
  %696 = phi double [ 0.000000e+00, %691 ], [ %705, %694 ]
  %697 = phi double [ 0.000000e+00, %691 ], [ %702, %694 ]
  %698 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %685, i64 %695
  %699 = load double, ptr %698, align 8, !tbaa !20
  %700 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %695
  %701 = load double, ptr %700, align 8, !tbaa !20
  %702 = tail call double @llvm.fmuladd.f64(double %699, double %701, double %697)
  %703 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %695
  %704 = load double, ptr %703, align 8, !tbaa !20
  %705 = tail call double @llvm.fmuladd.f64(double %699, double %704, double %696)
  %706 = add nsw i64 %695, 1
  %707 = trunc i64 %706 to i32
  %708 = icmp eq i32 %693, %707
  br i1 %708, label %709, label %694, !llvm.loop !56

709:                                              ; preds = %694, %684
  %710 = phi double [ 0.000000e+00, %684 ], [ %702, %694 ]
  %711 = phi double [ 0.000000e+00, %684 ], [ %705, %694 ]
  %712 = fcmp une double %710, 0.000000e+00
  br i1 %712, label %713, label %722

713:                                              ; preds = %709
  %714 = fdiv double %711, %710
  %715 = fcmp ugt double %714, 0x3FA8F6869E6F084D
  br i1 %715, label %716, label %722

716:                                              ; preds = %713
  %717 = fcmp ogt double %714, 0x3FDFEDFBDEEA22F7
  br i1 %717, label %722, label %718

718:                                              ; preds = %716
  %719 = tail call double @log(double noundef %714) #11
  %720 = tail call double @llvm.fmuladd.f64(double %719, double 0x3FF30298B36105E3, double 0x3FEA6FF6E4078667)
  %721 = tail call double @exp(double noundef %720) #11
  br label %722

722:                                              ; preds = %716, %713, %718, %709
  %723 = phi double [ %721, %718 ], [ %710, %709 ], [ 0x3FB0270AC3F8A9F9, %713 ], [ 1.000000e+00, %716 ]
  %724 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.minval, i64 0, i64 %685
  %725 = load double, ptr %724, align 8, !tbaa !20
  %726 = fcmp olt double %725, %723
  %727 = select i1 %726, double %725, double %723
  %728 = fmul double %710, %727
  %729 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %308, i64 %685
  %730 = load double, ptr %729, align 8, !tbaa !20
  %731 = fmul double %730, 2.000000e+00
  %732 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %308, i64 %685
  %733 = load double, ptr %732, align 8, !tbaa !20
  %734 = fmul double %733, 1.600000e+01
  %735 = fcmp olt double %731, %734
  %736 = select i1 %735, double %731, double %734
  %737 = fcmp olt double %728, %736
  %738 = select i1 %737, double %728, double %736
  %739 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_l, i64 0, i64 %685
  %740 = load double, ptr %739, align 8, !tbaa !20
  %741 = fcmp ogt double %740, %738
  %742 = select i1 %741, double %740, double %738
  %743 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %685
  store double %742, ptr %743, align 8, !tbaa !20
  store double %730, ptr %732, align 8, !tbaa !20
  store double %728, ptr %729, align 8, !tbaa !20
  %744 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %685
  %745 = load double, ptr %744, align 8, !tbaa !20
  %746 = fcmp olt double %742, %745
  br i1 %746, label %747, label %756

747:                                              ; preds = %722
  %748 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %685
  %749 = load i32, ptr %748, align 4, !tbaa !13
  %750 = sitofp i32 %749 to double
  %751 = fdiv double %742, %745
  %752 = tail call double @log(double noundef %751) #11
  %753 = load double, ptr %681, align 8, !tbaa !20
  %754 = fneg double %750
  %755 = tail call double @llvm.fmuladd.f64(double %754, double %752, double %753)
  store double %755, ptr %681, align 8, !tbaa !20
  br label %756

756:                                              ; preds = %747, %722
  %757 = add nuw nsw i64 %685, 1
  %758 = load i32, ptr @L3psycho_anal.npart_l, align 4, !tbaa !13
  %759 = sext i32 %758 to i64
  %760 = icmp slt i64 %757, %759
  br i1 %760, label %684, label %761, !llvm.loop !57

761:                                              ; preds = %756, %680
  br i1 %312, label %762, label %807

762:                                              ; preds = %761
  %763 = load i32, ptr %305, align 8, !tbaa !58
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %767, label %765

765:                                              ; preds = %762
  %766 = getelementptr inbounds [2 x i32], ptr %14, i64 0, i64 %308
  store i32 1, ptr %766, align 4, !tbaa !13
  br label %807

767:                                              ; preds = %762
  %768 = load double, ptr %681, align 8, !tbaa !20
  %769 = fcmp ogt double %768, 3.000000e+03
  br i1 %769, label %770, label %772

770:                                              ; preds = %767
  %771 = getelementptr inbounds [2 x i32], ptr %14, i64 0, i64 %308
  store i32 0, ptr %771, align 4, !tbaa !13
  br label %807

772:                                              ; preds = %767, %772
  %773 = phi i64 [ %786, %772 ], [ 64, %767 ]
  %774 = phi float [ %785, %772 ], [ 0.000000e+00, %767 ]
  %775 = phi float [ %782, %772 ], [ 0.000000e+00, %767 ]
  %776 = phi float [ %779, %772 ], [ 0.000000e+00, %767 ]
  %777 = getelementptr inbounds [129 x float], ptr @L3psycho_anal.energy_s, i64 0, i64 %773
  %778 = load float, ptr %777, align 4, !tbaa !17
  %779 = fadd float %776, %778
  %780 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 1, i64 %773
  %781 = load float, ptr %780, align 4, !tbaa !17
  %782 = fadd float %775, %781
  %783 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 2, i64 %773
  %784 = load float, ptr %783, align 4, !tbaa !17
  %785 = fadd float %774, %784
  %786 = add nuw nsw i64 %773, 1
  %787 = icmp eq i64 %786, 129
  br i1 %787, label %788, label %772, !llvm.loop !59

788:                                              ; preds = %772
  %789 = fcmp olt float %779, %782
  %790 = select i1 %789, float %779, float %782
  %791 = fcmp olt float %790, %785
  %792 = select i1 %791, float %790, float %785
  %793 = fcmp ogt float %779, %782
  %794 = select i1 %793, float %779, float %782
  %795 = fcmp ogt float %794, %785
  %796 = select i1 %795, float %794, float %785
  %797 = getelementptr inbounds [2 x i32], ptr %14, i64 0, i64 %308
  store i32 1, ptr %797, align 4, !tbaa !13
  %798 = fmul float %792, 3.000000e+01
  %799 = fcmp ogt float %796, %798
  br i1 %799, label %800, label %801

800:                                              ; preds = %788
  store i32 0, ptr %797, align 4, !tbaa !13
  br label %807

801:                                              ; preds = %788
  %802 = fmul float %792, 1.000000e+01
  %803 = fcmp ogt float %796, %802
  %804 = fcmp ogt double %768, 1.000000e+03
  %805 = and i1 %804, %803
  br i1 %805, label %806, label %807

806:                                              ; preds = %801
  store i32 0, ptr %797, align 4, !tbaa !13
  br label %807

807:                                              ; preds = %800, %806, %801, %765, %770, %761
  %808 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %308
  %809 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %308
  br label %817

810:                                              ; preds = %859
  %811 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4, !tbaa !13
  %812 = icmp sgt i32 %811, 0
  %813 = load i32, ptr @L3psycho_anal.npart_s, align 4, !tbaa !13
  %814 = icmp sgt i32 %813, 0
  %815 = zext nneg i32 %811 to i64
  %816 = zext nneg i32 %813 to i64
  br label %866

817:                                              ; preds = %807, %859
  %818 = phi i64 [ 0, %807 ], [ %864, %859 ]
  %819 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w1_l, i64 0, i64 %818
  %820 = load double, ptr %819, align 8, !tbaa !20
  %821 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bu_l, i64 0, i64 %818
  %822 = load i32, ptr %821, align 4, !tbaa !13
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %823
  %825 = load double, ptr %824, align 8, !tbaa !20
  %826 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w2_l, i64 0, i64 %818
  %827 = load double, ptr %826, align 8, !tbaa !20
  %828 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 %818
  %829 = load i32, ptr %828, align 4, !tbaa !13
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %830
  %832 = load double, ptr %831, align 8, !tbaa !20
  %833 = fmul double %827, %832
  %834 = tail call double @llvm.fmuladd.f64(double %820, double %825, double %833)
  %835 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %823
  %836 = load double, ptr %835, align 8, !tbaa !20
  %837 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %830
  %838 = load double, ptr %837, align 8, !tbaa !20
  %839 = fmul double %827, %838
  %840 = tail call double @llvm.fmuladd.f64(double %820, double %836, double %839)
  %841 = add nsw i32 %822, 1
  %842 = icmp slt i32 %841, %829
  br i1 %842, label %843, label %859

843:                                              ; preds = %817
  %844 = sext i32 %822 to i64
  %845 = add nsw i64 %844, 1
  br label %846

846:                                              ; preds = %843, %846
  %847 = phi i64 [ %845, %843 ], [ %856, %846 ]
  %848 = phi double [ %840, %843 ], [ %855, %846 ]
  %849 = phi double [ %834, %843 ], [ %852, %846 ]
  %850 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %847
  %851 = load double, ptr %850, align 8, !tbaa !20
  %852 = fadd double %849, %851
  %853 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %847
  %854 = load double, ptr %853, align 8, !tbaa !20
  %855 = fadd double %848, %854
  %856 = add nsw i64 %847, 1
  %857 = trunc i64 %856 to i32
  %858 = icmp eq i32 %829, %857
  br i1 %858, label %859, label %846, !llvm.loop !60

859:                                              ; preds = %846, %817
  %860 = phi double [ %834, %817 ], [ %852, %846 ]
  %861 = phi double [ %840, %817 ], [ %855, %846 ]
  %862 = getelementptr inbounds [22 x double], ptr %808, i64 0, i64 %818
  store double %860, ptr %862, align 8, !tbaa !20
  %863 = getelementptr inbounds [22 x double], ptr %809, i64 0, i64 %818
  store double %861, ptr %863, align 8, !tbaa !20
  %864 = add nuw nsw i64 %818, 1
  %865 = icmp eq i64 %864, 21
  br i1 %865, label %810, label %817, !llvm.loop !61

866:                                              ; preds = %810, %981
  %867 = phi i64 [ 0, %810 ], [ %982, %981 ]
  br i1 %812, label %869, label %868

868:                                              ; preds = %894, %866
  br i1 %814, label %901, label %931

869:                                              ; preds = %866, %894
  %870 = phi i64 [ %899, %894 ], [ 0, %866 ]
  %871 = phi i32 [ %896, %894 ], [ 0, %866 ]
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %867, i64 %872
  %874 = load float, ptr %873, align 4, !tbaa !17
  %875 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_s, i64 0, i64 %870
  %876 = load i32, ptr %875, align 4, !tbaa !13
  %877 = add i32 %871, 1
  %878 = icmp sgt i32 %876, 0
  br i1 %878, label %879, label %894

879:                                              ; preds = %869
  %880 = sext i32 %877 to i64
  br label %881

881:                                              ; preds = %879, %881
  %882 = phi i64 [ %880, %879 ], [ %889, %881 ]
  %883 = phi float [ %874, %879 ], [ %887, %881 ]
  %884 = phi i32 [ %876, %879 ], [ %888, %881 ]
  %885 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %867, i64 %882
  %886 = load float, ptr %885, align 4, !tbaa !17
  %887 = fadd float %883, %886
  %888 = add nsw i32 %884, -1
  %889 = add nsw i64 %882, 1
  %890 = icmp sgt i32 %884, 1
  br i1 %890, label %881, label %891, !llvm.loop !62

891:                                              ; preds = %881
  %892 = add i32 %871, %876
  %893 = add i32 %892, 1
  br label %894

894:                                              ; preds = %891, %869
  %895 = phi float [ %874, %869 ], [ %887, %891 ]
  %896 = phi i32 [ %877, %869 ], [ %893, %891 ]
  %897 = fpext float %895 to double
  %898 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %870
  store double %897, ptr %898, align 8, !tbaa !20
  %899 = add nuw nsw i64 %870, 1
  %900 = icmp eq i64 %899, %815
  br i1 %900, label %868, label %869, !llvm.loop !63

901:                                              ; preds = %868, %922
  %902 = phi i64 [ %929, %922 ], [ 0, %868 ]
  %903 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %902
  %904 = load i32, ptr %903, align 8, !tbaa !13
  %905 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %902, i64 1
  %906 = load i32, ptr %905, align 4, !tbaa !13
  %907 = icmp sgt i32 %904, %906
  br i1 %907, label %922, label %908

908:                                              ; preds = %901
  %909 = sext i32 %904 to i64
  %910 = add i32 %906, 1
  br label %911

911:                                              ; preds = %908, %911
  %912 = phi i64 [ %909, %908 ], [ %919, %911 ]
  %913 = phi double [ 0.000000e+00, %908 ], [ %918, %911 ]
  %914 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %902, i64 %912
  %915 = load double, ptr %914, align 8, !tbaa !20
  %916 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %912
  %917 = load double, ptr %916, align 8, !tbaa !20
  %918 = tail call double @llvm.fmuladd.f64(double %915, double %917, double %913)
  %919 = add nsw i64 %912, 1
  %920 = trunc i64 %919 to i32
  %921 = icmp eq i32 %910, %920
  br i1 %921, label %922, label %911, !llvm.loop !64

922:                                              ; preds = %911, %901
  %923 = phi double [ 0.000000e+00, %901 ], [ %918, %911 ]
  %924 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_s, i64 0, i64 %902
  %925 = load double, ptr %924, align 8, !tbaa !20
  %926 = fcmp ogt double %925, %923
  %927 = select i1 %926, double %925, double %923
  %928 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %902
  store double %927, ptr %928, align 8, !tbaa !20
  %929 = add nuw nsw i64 %902, 1
  %930 = icmp eq i64 %929, %816
  br i1 %930, label %931, label %901, !llvm.loop !65

931:                                              ; preds = %922, %868
  br label %932

932:                                              ; preds = %931, %974
  %933 = phi i64 [ %979, %974 ], [ 0, %931 ]
  %934 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w1_s, i64 0, i64 %933
  %935 = load double, ptr %934, align 8, !tbaa !20
  %936 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bu_s, i64 0, i64 %933
  %937 = load i32, ptr %936, align 4, !tbaa !13
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %938
  %940 = load double, ptr %939, align 8, !tbaa !20
  %941 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w2_s, i64 0, i64 %933
  %942 = load double, ptr %941, align 8, !tbaa !20
  %943 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 %933
  %944 = load i32, ptr %943, align 4, !tbaa !13
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %945
  %947 = load double, ptr %946, align 8, !tbaa !20
  %948 = fmul double %942, %947
  %949 = tail call double @llvm.fmuladd.f64(double %935, double %940, double %948)
  %950 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %938
  %951 = load double, ptr %950, align 8, !tbaa !20
  %952 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %945
  %953 = load double, ptr %952, align 8, !tbaa !20
  %954 = fmul double %942, %953
  %955 = tail call double @llvm.fmuladd.f64(double %935, double %951, double %954)
  %956 = add nsw i32 %937, 1
  %957 = icmp slt i32 %956, %944
  br i1 %957, label %958, label %974

958:                                              ; preds = %932
  %959 = sext i32 %937 to i64
  %960 = add nsw i64 %959, 1
  br label %961

961:                                              ; preds = %958, %961
  %962 = phi i64 [ %960, %958 ], [ %971, %961 ]
  %963 = phi double [ %955, %958 ], [ %970, %961 ]
  %964 = phi double [ %949, %958 ], [ %967, %961 ]
  %965 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %962
  %966 = load double, ptr %965, align 8, !tbaa !20
  %967 = fadd double %964, %966
  %968 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %962
  %969 = load double, ptr %968, align 8, !tbaa !20
  %970 = fadd double %963, %969
  %971 = add nsw i64 %962, 1
  %972 = trunc i64 %971 to i32
  %973 = icmp eq i32 %944, %972
  br i1 %973, label %974, label %961, !llvm.loop !66

974:                                              ; preds = %961, %932
  %975 = phi double [ %949, %932 ], [ %967, %961 ]
  %976 = phi double [ %955, %932 ], [ %970, %961 ]
  %977 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %308, i32 1, i64 %933, i64 %867
  store double %975, ptr %977, align 8, !tbaa !20
  %978 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %308, i32 1, i64 %933, i64 %867
  store double %976, ptr %978, align 8, !tbaa !20
  %979 = add nuw nsw i64 %933, 1
  %980 = icmp eq i64 %979, 12
  br i1 %980, label %981, label %932, !llvm.loop !67

981:                                              ; preds = %974
  %982 = add nuw nsw i64 %867, 1
  %983 = icmp eq i64 %982, 3
  br i1 %983, label %984, label %866, !llvm.loop !68

984:                                              ; preds = %981
  %985 = add nuw nsw i64 %308, 1
  %986 = icmp eq i64 %985, %306
  br i1 %986, label %987, label %307, !llvm.loop !69

987:                                              ; preds = %984, %294
  %988 = icmp eq i32 %300, 4
  br i1 %988, label %989, label %1064

989:                                              ; preds = %987, %1021
  %990 = phi i64 [ %1022, %1021 ], [ 0, %987 ]
  %991 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %990
  %992 = load double, ptr %991, align 8, !tbaa !20
  %993 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %990
  %994 = load double, ptr %993, align 8, !tbaa !20
  %995 = fmul double %994, 1.580000e+00
  %996 = fcmp ugt double %992, %995
  %997 = fmul double %992, 1.580000e+00
  %998 = fcmp ugt double %994, %997
  %999 = or i1 %998, %996
  br i1 %999, label %1021, label %1000

1000:                                             ; preds = %989
  %1001 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.mld_l, i64 0, i64 %990
  %1002 = load double, ptr %1001, align 8, !tbaa !20
  %1003 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 3), i64 0, i64 %990
  %1004 = load double, ptr %1003, align 8, !tbaa !20
  %1005 = fmul double %1002, %1004
  %1006 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 2), i64 0, i64 %990
  %1007 = load double, ptr %1006, align 8, !tbaa !20
  %1008 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 3), i64 0, i64 %990
  %1009 = load double, ptr %1008, align 8, !tbaa !20
  %1010 = fcmp olt double %1009, %1005
  %1011 = select i1 %1010, double %1009, double %1005
  %1012 = fcmp ogt double %1007, %1011
  %1013 = select i1 %1012, double %1007, double %1011
  %1014 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 2), i64 0, i64 %990
  %1015 = load double, ptr %1014, align 8, !tbaa !20
  %1016 = fmul double %1002, %1015
  %1017 = fcmp olt double %1007, %1016
  %1018 = select i1 %1017, double %1007, double %1016
  %1019 = fcmp ogt double %1009, %1018
  %1020 = select i1 %1019, double %1009, double %1018
  store double %1013, ptr %1006, align 8, !tbaa !20
  store double %1020, ptr %1008, align 8, !tbaa !20
  br label %1021

1021:                                             ; preds = %989, %1000
  %1022 = add nuw nsw i64 %990, 1
  %1023 = icmp eq i64 %1022, 21
  br i1 %1023, label %1024, label %989, !llvm.loop !70

1024:                                             ; preds = %1021, %1061
  %1025 = phi i64 [ %1062, %1061 ], [ 0, %1021 ]
  %1026 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.mld_s, i64 0, i64 %1025
  br label %1027

1027:                                             ; preds = %1024, %1058
  %1028 = phi i64 [ 0, %1024 ], [ %1059, %1058 ]
  %1029 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 0, i32 1, i64 %1025, i64 %1028
  %1030 = load double, ptr %1029, align 8, !tbaa !20
  %1031 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1, i64 %1025, i64 %1028
  %1032 = load double, ptr %1031, align 8, !tbaa !20
  %1033 = fmul double %1032, 1.580000e+00
  %1034 = fcmp ugt double %1030, %1033
  %1035 = fmul double %1030, 1.580000e+00
  %1036 = fcmp ugt double %1032, %1035
  %1037 = or i1 %1036, %1034
  br i1 %1037, label %1058, label %1038

1038:                                             ; preds = %1027
  %1039 = load double, ptr %1026, align 8, !tbaa !20
  %1040 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 3, i32 1, i64 %1025, i64 %1028
  %1041 = load double, ptr %1040, align 8, !tbaa !20
  %1042 = fmul double %1039, %1041
  %1043 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 2, i32 1, i64 %1025, i64 %1028
  %1044 = load double, ptr %1043, align 8, !tbaa !20
  %1045 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 3, i32 1, i64 %1025, i64 %1028
  %1046 = load double, ptr %1045, align 8, !tbaa !20
  %1047 = fcmp olt double %1046, %1042
  %1048 = select i1 %1047, double %1046, double %1042
  %1049 = fcmp ogt double %1044, %1048
  %1050 = select i1 %1049, double %1044, double %1048
  %1051 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 2, i32 1, i64 %1025, i64 %1028
  %1052 = load double, ptr %1051, align 8, !tbaa !20
  %1053 = fmul double %1039, %1052
  %1054 = fcmp olt double %1044, %1053
  %1055 = select i1 %1054, double %1044, double %1053
  %1056 = fcmp ogt double %1046, %1055
  %1057 = select i1 %1056, double %1046, double %1055
  store double %1050, ptr %1043, align 8, !tbaa !20
  store double %1057, ptr %1045, align 8, !tbaa !20
  br label %1058

1058:                                             ; preds = %1027, %1038
  %1059 = add nuw nsw i64 %1028, 1
  %1060 = icmp eq i64 %1059, 3
  br i1 %1060, label %1061, label %1027, !llvm.loop !71

1061:                                             ; preds = %1058
  %1062 = add nuw nsw i64 %1025, 1
  %1063 = icmp eq i64 %1062, 12
  br i1 %1063, label %1064, label %1024, !llvm.loop !72

1064:                                             ; preds = %1061, %987
  %1065 = load i32, ptr %297, align 4, !tbaa !41
  %1066 = icmp eq i32 %1065, 1
  br i1 %1066, label %1067, label %1130

1067:                                             ; preds = %1064, %1084
  %1068 = phi i64 [ %1088, %1084 ], [ 5, %1064 ]
  %1069 = phi double [ %1087, %1084 ], [ 0.000000e+00, %1064 ]
  %1070 = phi double [ %1086, %1084 ], [ 0.000000e+00, %1064 ]
  %1071 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %1068
  %1072 = load double, ptr %1071, align 8, !tbaa !20
  %1073 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %1068
  %1074 = load double, ptr %1073, align 8, !tbaa !20
  %1075 = fcmp olt double %1072, %1074
  %1076 = select i1 %1075, double %1072, double %1074
  %1077 = fcmp ogt double %1072, %1074
  %1078 = select i1 %1077, double %1072, double %1074
  %1079 = fmul double %1076, 1.000000e+03
  %1080 = fcmp ult double %1078, %1079
  br i1 %1080, label %1081, label %1084

1081:                                             ; preds = %1067
  %1082 = fdiv double %1078, %1076
  %1083 = tail call double @log10(double noundef %1082) #11
  br label %1084

1084:                                             ; preds = %1067, %1081
  %1085 = phi double [ %1083, %1081 ], [ 3.000000e+00, %1067 ]
  %1086 = fadd double %1070, %1085
  %1087 = fadd double %1069, 1.000000e+00
  %1088 = add nuw nsw i64 %1068, 1
  %1089 = icmp eq i64 %1088, 21
  br i1 %1089, label %1090, label %1067, !llvm.loop !73

1090:                                             ; preds = %1084
  %1091 = fdiv double %1086, %1087
  %1092 = fmul double %1091, 0x3FE6666666666666
  %1093 = fcmp olt double %1092, 5.000000e-01
  br label %1094

1094:                                             ; preds = %1090, %1121
  %1095 = phi i64 [ 0, %1090 ], [ %1122, %1121 ]
  %1096 = phi double [ 0.000000e+00, %1090 ], [ %1118, %1121 ]
  %1097 = phi double [ 0.000000e+00, %1090 ], [ %1117, %1121 ]
  br label %1098

1098:                                             ; preds = %1094, %1115
  %1099 = phi i64 [ 3, %1094 ], [ %1119, %1115 ]
  %1100 = phi double [ %1096, %1094 ], [ %1118, %1115 ]
  %1101 = phi double [ %1097, %1094 ], [ %1117, %1115 ]
  %1102 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 0, i32 1, i64 %1099, i64 %1095
  %1103 = load double, ptr %1102, align 8, !tbaa !20
  %1104 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1, i64 %1099, i64 %1095
  %1105 = load double, ptr %1104, align 8, !tbaa !20
  %1106 = fcmp olt double %1103, %1105
  %1107 = select i1 %1106, double %1103, double %1105
  %1108 = fcmp ogt double %1103, %1105
  %1109 = select i1 %1108, double %1103, double %1105
  %1110 = fmul double %1107, 1.000000e+03
  %1111 = fcmp ult double %1109, %1110
  br i1 %1111, label %1112, label %1115

1112:                                             ; preds = %1098
  %1113 = fdiv double %1109, %1107
  %1114 = tail call double @log10(double noundef %1113) #11
  br label %1115

1115:                                             ; preds = %1098, %1112
  %1116 = phi double [ %1114, %1112 ], [ 3.000000e+00, %1098 ]
  %1117 = fadd double %1101, %1116
  %1118 = fadd double %1100, 1.000000e+00
  %1119 = add nuw nsw i64 %1099, 1
  %1120 = icmp eq i64 %1119, 12
  br i1 %1120, label %1121, label %1098, !llvm.loop !74

1121:                                             ; preds = %1115
  %1122 = add nuw nsw i64 %1095, 1
  %1123 = icmp eq i64 %1122, 3
  br i1 %1123, label %1124, label %1094, !llvm.loop !75

1124:                                             ; preds = %1121
  %1125 = select i1 %1093, double %1092, double 5.000000e-01
  %1126 = fdiv double %1117, %1118
  %1127 = fmul double %1126, 0x3FE6666666666666
  %1128 = fcmp olt double %1127, 5.000000e-01
  %1129 = select i1 %1128, double %1127, double 5.000000e-01
  br label %1130

1130:                                             ; preds = %1124, %1064
  %1131 = phi double [ %1129, %1124 ], [ 0.000000e+00, %1064 ]
  %1132 = phi double [ %1125, %1124 ], [ 0.000000e+00, %1064 ]
  %1133 = load i32, ptr %295, align 4, !tbaa !40
  %1134 = icmp sgt i32 %1133, 0
  br i1 %1134, label %1135, label %1138

1135:                                             ; preds = %1130
  %1136 = zext nneg i32 %1133 to i64
  %1137 = shl nuw nsw i64 %1136, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %13, i8 0, i64 %1137, i1 false), !tbaa !13
  br label %1138

1138:                                             ; preds = %1135, %1130
  %1139 = icmp eq i32 %1133, 2
  br i1 %1139, label %1140, label %1155

1140:                                             ; preds = %1138
  %1141 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 36
  %1142 = load i32, ptr %1141, align 4, !tbaa !76
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1147, label %1144

1144:                                             ; preds = %1140
  %1145 = load i32, ptr %297, align 4, !tbaa !41
  %1146 = icmp eq i32 %1145, 1
  br i1 %1146, label %1147, label %1155

1147:                                             ; preds = %1144, %1140
  %1148 = load i32, ptr %14, align 4, !tbaa !13
  %1149 = icmp ne i32 %1148, 0
  %1150 = getelementptr inbounds [2 x i32], ptr %14, i64 0, i64 1
  %1151 = load i32, ptr %1150, align 4
  %1152 = icmp ne i32 %1151, 0
  %1153 = select i1 %1149, i1 %1152, i1 false
  br i1 %1153, label %1155, label %1154

1154:                                             ; preds = %1147
  store i32 0, ptr %14, align 4, !tbaa !13
  store i32 0, ptr %1150, align 4, !tbaa !13
  br label %1155

1155:                                             ; preds = %1147, %1154, %1144, %1138
  %1156 = load i32, ptr %295, align 4, !tbaa !40
  %1157 = icmp sgt i32 %1156, 0
  br i1 %1157, label %1158, label %1193

1158:                                             ; preds = %1155, %1183
  %1159 = phi i64 [ %1189, %1183 ], [ 0, %1155 ]
  %1160 = getelementptr inbounds [2 x i32], ptr %14, i64 0, i64 %1159
  %1161 = load i32, ptr %1160, align 4, !tbaa !13
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1173, label %1163

1163:                                             ; preds = %1158
  %1164 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %1159
  %1165 = load i32, ptr %1164, align 4, !tbaa !13
  switch i32 %1165, label %1183 [
    i32 0, label %1166
    i32 3, label %1166
    i32 2, label %1168
    i32 1, label %1170
  ]

1166:                                             ; preds = %1163, %1163
  %1167 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 %1159
  store i32 0, ptr %1167, align 4, !tbaa !13
  br label %1183

1168:                                             ; preds = %1163
  %1169 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 %1159
  store i32 3, ptr %1169, align 4, !tbaa !13
  br label %1183

1170:                                             ; preds = %1163
  %1171 = load ptr, ptr @stderr, align 8, !tbaa !15
  %1172 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %1171) #12
  tail call void @abort() #13
  unreachable

1173:                                             ; preds = %1158
  %1174 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 %1159
  store i32 2, ptr %1174, align 4, !tbaa !13
  %1175 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %1159
  %1176 = load i32, ptr %1175, align 4, !tbaa !13
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1178, label %1179

1178:                                             ; preds = %1173
  store i32 1, ptr %1175, align 4, !tbaa !13
  br label %1179

1179:                                             ; preds = %1178, %1173
  %1180 = load i32, ptr %1175, align 4, !tbaa !13
  %1181 = icmp eq i32 %1180, 3
  br i1 %1181, label %1182, label %1183

1182:                                             ; preds = %1179
  store i32 2, ptr %1175, align 4, !tbaa !13
  br label %1183

1183:                                             ; preds = %1179, %1182, %1166, %1168, %1163
  %1184 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %1159
  %1185 = load i32, ptr %1184, align 4, !tbaa !13
  %1186 = getelementptr inbounds i32, ptr %10, i64 %1159
  store i32 %1185, ptr %1186, align 4, !tbaa !13
  %1187 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 %1159
  %1188 = load i32, ptr %1187, align 4, !tbaa !13
  store i32 %1188, ptr %1184, align 4, !tbaa !13
  %1189 = add nuw nsw i64 %1159, 1
  %1190 = load i32, ptr %295, align 4, !tbaa !40
  %1191 = sext i32 %1190 to i64
  %1192 = icmp slt i64 %1189, %1191
  br i1 %1192, label %1158, label %1193, !llvm.loop !77

1193:                                             ; preds = %1183, %1155
  %1194 = load i32, ptr %10, align 4, !tbaa !13
  %1195 = icmp eq i32 %1194, 2
  %1196 = load double, ptr @L3psycho_anal.ms_ratio_s_old, align 8
  %1197 = load double, ptr @L3psycho_anal.ms_ratio_l_old, align 8
  %1198 = select i1 %1195, double %1196, double %1197
  store double %1198, ptr %3, align 8, !tbaa !20
  store double %1131, ptr @L3psycho_anal.ms_ratio_s_old, align 8, !tbaa !20
  store double %1132, ptr @L3psycho_anal.ms_ratio_l_old, align 8, !tbaa !20
  store double %1132, ptr %4, align 8, !tbaa !20
  br i1 %988, label %1199, label %1210

1199:                                             ; preds = %1193
  %1200 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 3
  %1201 = load float, ptr %1200, align 4, !tbaa !17
  %1202 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 2
  %1203 = load float, ptr %1202, align 8, !tbaa !17
  %1204 = fadd float %1201, %1203
  %1205 = load double, ptr @L3psycho_anal.ms_ener_ratio_old, align 8, !tbaa !20
  store double %1205, ptr %5, align 8, !tbaa !20
  store double 0.000000e+00, ptr @L3psycho_anal.ms_ener_ratio_old, align 8, !tbaa !20
  %1206 = fcmp ogt float %1204, 0.000000e+00
  br i1 %1206, label %1207, label %1211

1207:                                             ; preds = %1199
  %1208 = fdiv float %1201, %1204
  %1209 = fpext float %1208 to double
  store double %1209, ptr @L3psycho_anal.ms_ener_ratio_old, align 8, !tbaa !20
  br label %1211

1210:                                             ; preds = %1193
  store double 0.000000e+00, ptr %5, align 8, !tbaa !20
  br label %1211

1211:                                             ; preds = %1199, %1207, %1210
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @L3para_read(double noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef %12, ptr nocapture noundef %13, ptr nocapture noundef writeonly %14, ptr nocapture noundef writeonly %15, ptr nocapture noundef %16, ptr nocapture noundef %17) local_unnamed_addr #0 {
  %19 = alloca [63 x double], align 16
  %20 = alloca [63 x double], align 16
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %19) #11
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %20) #11
  br label %27

21:                                               ; preds = %94
  %22 = icmp sgt i32 %96, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %138, %21
  br label %146

24:                                               ; preds = %21
  %25 = zext nneg i32 %96 to i64
  %26 = zext nneg i32 %96 to i64
  br label %99

27:                                               ; preds = %18, %94
  %28 = phi i32 [ 0, %18 ], [ %96, %94 ]
  %29 = phi ptr [ @psy_data, %18 ], [ %95, %94 ]
  %30 = phi i32 [ 0, %18 ], [ %97, %94 ]
  %31 = getelementptr inbounds double, ptr %29, i64 1
  %32 = load double, ptr %29, align 8, !tbaa !20
  %33 = getelementptr inbounds double, ptr %29, i64 2
  %34 = load double, ptr %31, align 8, !tbaa !20
  %35 = fptosi double %34 to i32
  %36 = add i32 %35, 1
  %37 = fcmp oeq double %32, %0
  br i1 %37, label %38, label %90

38:                                               ; preds = %27
  %39 = icmp slt i32 %35, 0
  br i1 %39, label %94, label %40

40:                                               ; preds = %38
  %41 = zext i32 %36 to i64
  br label %42

42:                                               ; preds = %40, %86
  %43 = phi i64 [ 0, %40 ], [ %88, %86 ]
  %44 = phi ptr [ %33, %40 ], [ %62, %86 ]
  %45 = phi i32 [ 0, %40 ], [ %87, %86 ]
  %46 = getelementptr inbounds double, ptr %44, i64 1
  %47 = load double, ptr %44, align 8, !tbaa !20
  %48 = fptosi double %47 to i32
  %49 = getelementptr inbounds double, ptr %44, i64 2
  %50 = load double, ptr %46, align 8, !tbaa !20
  %51 = fptosi double %50 to i32
  %52 = getelementptr inbounds i32, ptr %1, i64 %43
  store i32 %51, ptr %52, align 4, !tbaa !13
  %53 = getelementptr inbounds double, ptr %44, i64 3
  %54 = load double, ptr %49, align 8, !tbaa !20
  %55 = fadd double %54, -6.000000e+00
  %56 = fmul double %55, 0xBFCD791C5F888823
  %57 = tail call double @exp(double noundef %56) #11
  %58 = getelementptr inbounds double, ptr %4, i64 %43
  store double %57, ptr %58, align 8, !tbaa !20
  %59 = load double, ptr %53, align 8, !tbaa !20
  %60 = getelementptr inbounds double, ptr %5, i64 %43
  store double %59, ptr %60, align 8, !tbaa !20
  %61 = getelementptr inbounds double, ptr %44, i64 5
  %62 = getelementptr inbounds double, ptr %44, i64 6
  %63 = load double, ptr %61, align 8, !tbaa !20
  %64 = getelementptr inbounds [63 x double], ptr %19, i64 0, i64 %43
  store double %63, ptr %64, align 8, !tbaa !20
  %65 = zext i32 %48 to i64
  %66 = icmp eq i64 %43, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %42
  %68 = load i32, ptr %52, align 4, !tbaa !13
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = sext i32 %45 to i64
  %72 = trunc i64 %43 to i32
  br label %76

73:                                               ; preds = %42
  %74 = load ptr, ptr @stderr, align 8, !tbaa !15
  %75 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 26, i64 1, ptr %74) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

76:                                               ; preds = %70, %76
  %77 = phi i64 [ %71, %70 ], [ %79, %76 ]
  %78 = phi i32 [ 0, %70 ], [ %81, %76 ]
  %79 = add nsw i64 %77, 1
  %80 = getelementptr inbounds i32, ptr %3, i64 %77
  store i32 %72, ptr %80, align 4, !tbaa !13
  %81 = add nuw nsw i32 %78, 1
  %82 = load i32, ptr %52, align 4, !tbaa !13
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %76, label %84, !llvm.loop !78

84:                                               ; preds = %76
  %85 = trunc i64 %79 to i32
  br label %86

86:                                               ; preds = %84, %67
  %87 = phi i32 [ %45, %67 ], [ %85, %84 ]
  %88 = add nuw nsw i64 %43, 1
  %89 = icmp eq i64 %88, %41
  br i1 %89, label %94, label %42, !llvm.loop !79

90:                                               ; preds = %27
  %91 = mul nsw i32 %36, 6
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, ptr %33, i64 %92
  br label %94

94:                                               ; preds = %86, %38, %90
  %95 = phi ptr [ %93, %90 ], [ %33, %38 ], [ %62, %86 ]
  %96 = phi i32 [ %28, %90 ], [ %36, %38 ], [ %36, %86 ]
  %97 = add nuw nsw i32 %30, 1
  %98 = icmp eq i32 %97, 6
  br i1 %98, label %21, label %27, !llvm.loop !80

99:                                               ; preds = %24, %138
  %100 = phi i64 [ 0, %24 ], [ %139, %138 ]
  %101 = getelementptr inbounds [63 x double], ptr %19, i64 0, i64 %100
  %102 = getelementptr inbounds [63 x double], ptr %19, i64 0, i64 %100
  br label %103

103:                                              ; preds = %99, %133
  %104 = phi i64 [ 0, %99 ], [ %136, %133 ]
  %105 = icmp ult i64 %100, %104
  %106 = getelementptr inbounds [63 x double], ptr %19, i64 0, i64 %104
  %107 = load double, ptr %106, align 8, !tbaa !20
  %108 = select i1 %105, ptr %102, ptr %101
  %109 = select i1 %105, double 1.500000e+00, double 3.000000e+00
  %110 = load double, ptr %108, align 8, !tbaa !20
  %111 = fsub double %110, %107
  %112 = fmul double %111, %109
  %113 = fcmp oge double %112, 5.000000e-01
  %114 = fcmp ole double %112, 2.500000e+00
  %115 = and i1 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %103
  %117 = fadd double %112, -5.000000e-01
  %118 = fmul double %117, -2.000000e+00
  %119 = tail call double @llvm.fmuladd.f64(double %117, double %117, double %118)
  %120 = fmul double %119, 8.000000e+00
  br label %121

121:                                              ; preds = %103, %116
  %122 = phi double [ %120, %116 ], [ 0.000000e+00, %103 ]
  %123 = fadd double %112, 4.740000e-01
  %124 = tail call double @llvm.fmuladd.f64(double %123, double 7.500000e+00, double 0x402F9F6E6106AB15)
  %125 = tail call double @llvm.fmuladd.f64(double %123, double %123, double 1.000000e+00)
  %126 = tail call double @sqrt(double noundef %125) #11
  %127 = tail call double @llvm.fmuladd.f64(double %126, double -1.750000e+01, double %124)
  %128 = fcmp ugt double %127, -6.000000e+01
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = fadd double %122, %127
  %131 = fmul double %130, 0x3FCD791C5F888823
  %132 = tail call double @exp(double noundef %131) #11
  br label %133

133:                                              ; preds = %121, %129
  %134 = phi double [ %132, %129 ], [ 0.000000e+00, %121 ]
  %135 = getelementptr inbounds [64 x double], ptr %6, i64 %100, i64 %104
  store double %134, ptr %135, align 8, !tbaa !20
  %136 = add nuw nsw i64 %104, 1
  %137 = icmp eq i64 %136, %26
  br i1 %137, label %138, label %103, !llvm.loop !81

138:                                              ; preds = %133
  %139 = add nuw nsw i64 %100, 1
  %140 = icmp eq i64 %139, %25
  br i1 %140, label %23, label %99, !llvm.loop !82

141:                                              ; preds = %199
  %142 = icmp sgt i32 %201, 0
  br i1 %142, label %143, label %246

143:                                              ; preds = %141
  %144 = zext nneg i32 %201 to i64
  %145 = zext nneg i32 %201 to i64
  br label %204

146:                                              ; preds = %23, %199
  %147 = phi i32 [ %201, %199 ], [ %96, %23 ]
  %148 = phi ptr [ %200, %199 ], [ %95, %23 ]
  %149 = phi i32 [ %202, %199 ], [ 0, %23 ]
  %150 = getelementptr inbounds double, ptr %148, i64 1
  %151 = load double, ptr %148, align 8, !tbaa !20
  %152 = getelementptr inbounds double, ptr %148, i64 2
  %153 = load double, ptr %150, align 8, !tbaa !20
  %154 = fptosi double %153 to i32
  %155 = add nsw i32 %154, 1
  %156 = fcmp oeq double %151, %0
  br i1 %156, label %157, label %195

157:                                              ; preds = %146
  %158 = icmp slt i32 %154, 0
  br i1 %158, label %190, label %159

159:                                              ; preds = %157
  %160 = add nuw i32 %154, 1
  %161 = zext i32 %160 to i64
  br label %162

162:                                              ; preds = %159, %185
  %163 = phi i64 [ 0, %159 ], [ %188, %185 ]
  %164 = phi ptr [ %152, %159 ], [ %186, %185 ]
  %165 = getelementptr inbounds double, ptr %164, i64 1
  %166 = load double, ptr %164, align 8, !tbaa !20
  %167 = fptosi double %166 to i32
  %168 = getelementptr inbounds double, ptr %164, i64 2
  %169 = load double, ptr %165, align 8, !tbaa !20
  %170 = fptosi double %169 to i32
  %171 = getelementptr inbounds i32, ptr %2, i64 %163
  store i32 %170, ptr %171, align 4, !tbaa !13
  %172 = load double, ptr %168, align 8, !tbaa !20
  %173 = getelementptr inbounds double, ptr %8, i64 %163
  store double %172, ptr %173, align 8, !tbaa !20
  %174 = getelementptr inbounds double, ptr %164, i64 4
  %175 = getelementptr inbounds double, ptr %164, i64 5
  %176 = load double, ptr %174, align 8, !tbaa !20
  %177 = getelementptr inbounds double, ptr %9, i64 %163
  store double %176, ptr %177, align 8, !tbaa !20
  %178 = load double, ptr %175, align 8, !tbaa !20
  %179 = getelementptr inbounds [63 x double], ptr %20, i64 0, i64 %163
  store double %178, ptr %179, align 8, !tbaa !20
  %180 = zext i32 %167 to i64
  %181 = icmp eq i64 %163, %180
  br i1 %181, label %185, label %182

182:                                              ; preds = %162
  %183 = load ptr, ptr @stderr, align 8, !tbaa !15
  %184 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 26, i64 1, ptr %183) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

185:                                              ; preds = %162
  %186 = getelementptr inbounds double, ptr %164, i64 6
  %187 = add nsw i32 %170, -1
  store i32 %187, ptr %171, align 4, !tbaa !13
  %188 = add nuw nsw i64 %163, 1
  %189 = icmp eq i64 %188, %161
  br i1 %189, label %190, label %162, !llvm.loop !83

190:                                              ; preds = %185, %157
  %191 = phi i64 [ 0, %157 ], [ %188, %185 ]
  %192 = phi ptr [ %152, %157 ], [ %186, %185 ]
  %193 = and i64 %191, 4294967295
  %194 = getelementptr inbounds i32, ptr %2, i64 %193
  store i32 -1, ptr %194, align 4, !tbaa !13
  br label %199

195:                                              ; preds = %146
  %196 = mul nsw i32 %155, 6
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds double, ptr %152, i64 %197
  br label %199

199:                                              ; preds = %190, %195
  %200 = phi ptr [ %192, %190 ], [ %198, %195 ]
  %201 = phi i32 [ %155, %190 ], [ %147, %195 ]
  %202 = add nuw nsw i32 %149, 1
  %203 = icmp eq i32 %202, 6
  br i1 %203, label %141, label %146, !llvm.loop !84

204:                                              ; preds = %143, %243
  %205 = phi i64 [ 0, %143 ], [ %244, %243 ]
  %206 = getelementptr inbounds [63 x double], ptr %20, i64 0, i64 %205
  %207 = getelementptr inbounds [63 x double], ptr %20, i64 0, i64 %205
  br label %208

208:                                              ; preds = %204, %238
  %209 = phi i64 [ 0, %204 ], [ %241, %238 ]
  %210 = icmp ult i64 %205, %209
  %211 = getelementptr inbounds [63 x double], ptr %20, i64 0, i64 %209
  %212 = load double, ptr %211, align 8, !tbaa !20
  %213 = select i1 %210, ptr %207, ptr %206
  %214 = select i1 %210, double 1.500000e+00, double 3.000000e+00
  %215 = load double, ptr %213, align 8, !tbaa !20
  %216 = fsub double %215, %212
  %217 = fmul double %216, %214
  %218 = fcmp oge double %217, 5.000000e-01
  %219 = fcmp ole double %217, 2.500000e+00
  %220 = and i1 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %208
  %222 = fadd double %217, -5.000000e-01
  %223 = fmul double %222, -2.000000e+00
  %224 = tail call double @llvm.fmuladd.f64(double %222, double %222, double %223)
  %225 = fmul double %224, 8.000000e+00
  br label %226

226:                                              ; preds = %208, %221
  %227 = phi double [ %225, %221 ], [ 0.000000e+00, %208 ]
  %228 = fadd double %217, 4.740000e-01
  %229 = tail call double @llvm.fmuladd.f64(double %228, double 7.500000e+00, double 0x402F9F6E6106AB15)
  %230 = tail call double @llvm.fmuladd.f64(double %228, double %228, double 1.000000e+00)
  %231 = tail call double @sqrt(double noundef %230) #11
  %232 = tail call double @llvm.fmuladd.f64(double %231, double -1.750000e+01, double %229)
  %233 = fcmp ugt double %232, -6.000000e+01
  br i1 %233, label %234, label %238

234:                                              ; preds = %226
  %235 = fadd double %227, %232
  %236 = fmul double %235, 0x3FCD791C5F888823
  %237 = tail call double @exp(double noundef %236) #11
  br label %238

238:                                              ; preds = %226, %234
  %239 = phi double [ %237, %234 ], [ 0.000000e+00, %226 ]
  %240 = getelementptr inbounds [64 x double], ptr %7, i64 %205, i64 %209
  store double %239, ptr %240, align 8, !tbaa !20
  %241 = add nuw nsw i64 %209, 1
  %242 = icmp eq i64 %241, %145
  br i1 %242, label %243, label %208, !llvm.loop !85

243:                                              ; preds = %238
  %244 = add nuw nsw i64 %205, 1
  %245 = icmp eq i64 %244, %144
  br i1 %245, label %246, label %204, !llvm.loop !86

246:                                              ; preds = %243, %141
  br label %247

247:                                              ; preds = %246, %312
  %248 = phi ptr [ %313, %312 ], [ %200, %246 ]
  %249 = phi i32 [ %314, %312 ], [ 0, %246 ]
  %250 = getelementptr inbounds double, ptr %248, i64 1
  %251 = load double, ptr %248, align 8, !tbaa !20
  %252 = getelementptr inbounds double, ptr %248, i64 2
  %253 = load double, ptr %250, align 8, !tbaa !20
  %254 = fptosi double %253 to i32
  %255 = fcmp oeq double %251, %0
  br i1 %255, label %256, label %307

256:                                              ; preds = %247
  %257 = icmp slt i32 %254, 0
  br i1 %257, label %312, label %258

258:                                              ; preds = %256
  %259 = add nuw i32 %254, 1
  %260 = zext i32 %259 to i64
  br label %261

261:                                              ; preds = %258, %304
  %262 = phi i64 [ 0, %258 ], [ %305, %304 ]
  %263 = phi ptr [ %252, %258 ], [ %278, %304 ]
  %264 = load double, ptr %263, align 8, !tbaa !20
  %265 = fptosi double %264 to i32
  %266 = getelementptr inbounds double, ptr %263, i64 2
  %267 = getelementptr inbounds double, ptr %263, i64 3
  %268 = load double, ptr %266, align 8, !tbaa !20
  %269 = fptosi double %268 to i32
  %270 = getelementptr inbounds i32, ptr %10, i64 %262
  store i32 %269, ptr %270, align 4, !tbaa !13
  %271 = getelementptr inbounds double, ptr %263, i64 4
  %272 = load double, ptr %267, align 8, !tbaa !20
  %273 = fptosi double %272 to i32
  %274 = getelementptr inbounds i32, ptr %11, i64 %262
  store i32 %273, ptr %274, align 4, !tbaa !13
  %275 = getelementptr inbounds double, ptr %263, i64 5
  %276 = load double, ptr %271, align 8, !tbaa !20
  %277 = getelementptr inbounds double, ptr %12, i64 %262
  store double %276, ptr %277, align 8, !tbaa !20
  %278 = getelementptr inbounds double, ptr %263, i64 6
  %279 = load double, ptr %275, align 8, !tbaa !20
  %280 = getelementptr inbounds double, ptr %13, i64 %262
  store double %279, ptr %280, align 8, !tbaa !20
  %281 = zext i32 %265 to i64
  %282 = icmp eq i64 %262, %281
  br i1 %282, label %286, label %283

283:                                              ; preds = %261
  %284 = load ptr, ptr @stderr, align 8, !tbaa !15
  %285 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %284) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

286:                                              ; preds = %261
  %287 = icmp eq i64 %262, 0
  br i1 %287, label %304, label %288

288:                                              ; preds = %286
  %289 = load double, ptr %277, align 8, !tbaa !20
  %290 = fsub double 1.000000e+00, %289
  %291 = getelementptr double, ptr %280, i64 -1
  %292 = load double, ptr %291, align 8, !tbaa !20
  %293 = fsub double %290, %292
  %294 = tail call double @llvm.fabs.f64(double %293)
  %295 = fcmp ogt double %294, 1.000000e-02
  br i1 %295, label %296, label %304

296:                                              ; preds = %288
  %297 = getelementptr double, ptr %280, i64 -1
  %298 = load ptr, ptr @stderr, align 8, !tbaa !15
  %299 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 30, i64 1, ptr %298) #12
  %300 = load ptr, ptr @stderr, align 8, !tbaa !15
  %301 = load double, ptr %277, align 8, !tbaa !20
  %302 = load double, ptr %297, align 8, !tbaa !20
  %303 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %300, ptr noundef nonnull @.str.6, double noundef %301, double noundef %302) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

304:                                              ; preds = %286, %288
  %305 = add nuw nsw i64 %262, 1
  %306 = icmp eq i64 %305, %260
  br i1 %306, label %312, label %261, !llvm.loop !87

307:                                              ; preds = %247
  %308 = mul i32 %254, 6
  %309 = add i32 %308, 6
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds double, ptr %252, i64 %310
  br label %312

312:                                              ; preds = %304, %256, %307
  %313 = phi ptr [ %311, %307 ], [ %252, %256 ], [ %278, %304 ]
  %314 = add nuw nsw i32 %249, 1
  %315 = icmp eq i32 %314, 6
  br i1 %315, label %316, label %247, !llvm.loop !88

316:                                              ; preds = %312, %381
  %317 = phi ptr [ %382, %381 ], [ %313, %312 ]
  %318 = phi i32 [ %383, %381 ], [ 0, %312 ]
  %319 = getelementptr inbounds double, ptr %317, i64 1
  %320 = load double, ptr %317, align 8, !tbaa !20
  %321 = getelementptr inbounds double, ptr %317, i64 2
  %322 = load double, ptr %319, align 8, !tbaa !20
  %323 = fptosi double %322 to i32
  %324 = fcmp oeq double %320, %0
  br i1 %324, label %325, label %376

325:                                              ; preds = %316
  %326 = icmp slt i32 %323, 0
  br i1 %326, label %381, label %327

327:                                              ; preds = %325
  %328 = add nuw i32 %323, 1
  %329 = zext i32 %328 to i64
  br label %330

330:                                              ; preds = %327, %373
  %331 = phi i64 [ 0, %327 ], [ %374, %373 ]
  %332 = phi ptr [ %321, %327 ], [ %347, %373 ]
  %333 = load double, ptr %332, align 8, !tbaa !20
  %334 = fptosi double %333 to i32
  %335 = getelementptr inbounds double, ptr %332, i64 2
  %336 = getelementptr inbounds double, ptr %332, i64 3
  %337 = load double, ptr %335, align 8, !tbaa !20
  %338 = fptosi double %337 to i32
  %339 = getelementptr inbounds i32, ptr %14, i64 %331
  store i32 %338, ptr %339, align 4, !tbaa !13
  %340 = getelementptr inbounds double, ptr %332, i64 4
  %341 = load double, ptr %336, align 8, !tbaa !20
  %342 = fptosi double %341 to i32
  %343 = getelementptr inbounds i32, ptr %15, i64 %331
  store i32 %342, ptr %343, align 4, !tbaa !13
  %344 = getelementptr inbounds double, ptr %332, i64 5
  %345 = load double, ptr %340, align 8, !tbaa !20
  %346 = getelementptr inbounds double, ptr %16, i64 %331
  store double %345, ptr %346, align 8, !tbaa !20
  %347 = getelementptr inbounds double, ptr %332, i64 6
  %348 = load double, ptr %344, align 8, !tbaa !20
  %349 = getelementptr inbounds double, ptr %17, i64 %331
  store double %348, ptr %349, align 8, !tbaa !20
  %350 = zext i32 %334 to i64
  %351 = icmp eq i64 %331, %350
  br i1 %351, label %355, label %352

352:                                              ; preds = %330
  %353 = load ptr, ptr @stderr, align 8, !tbaa !15
  %354 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %353) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

355:                                              ; preds = %330
  %356 = icmp eq i64 %331, 0
  br i1 %356, label %373, label %357

357:                                              ; preds = %355
  %358 = load double, ptr %346, align 8, !tbaa !20
  %359 = fsub double 1.000000e+00, %358
  %360 = getelementptr double, ptr %349, i64 -1
  %361 = load double, ptr %360, align 8, !tbaa !20
  %362 = fsub double %359, %361
  %363 = tail call double @llvm.fabs.f64(double %362)
  %364 = fcmp ogt double %363, 1.000000e-02
  br i1 %364, label %365, label %373

365:                                              ; preds = %357
  %366 = getelementptr double, ptr %349, i64 -1
  %367 = load ptr, ptr @stderr, align 8, !tbaa !15
  %368 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 30, i64 1, ptr %367) #12
  %369 = load ptr, ptr @stderr, align 8, !tbaa !15
  %370 = load double, ptr %346, align 8, !tbaa !20
  %371 = load double, ptr %366, align 8, !tbaa !20
  %372 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %369, ptr noundef nonnull @.str.6, double noundef %370, double noundef %371) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

373:                                              ; preds = %355, %357
  %374 = add nuw nsw i64 %331, 1
  %375 = icmp eq i64 %374, %329
  br i1 %375, label %381, label %330, !llvm.loop !89

376:                                              ; preds = %316
  %377 = mul i32 %323, 6
  %378 = add i32 %377, 6
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds double, ptr %321, i64 %379
  br label %381

381:                                              ; preds = %373, %325, %376
  %382 = phi ptr [ %380, %376 ], [ %321, %325 ], [ %347, %373 ]
  %383 = add nuw nsw i32 %318, 1
  %384 = icmp eq i32 %383, 6
  br i1 %384, label %385, label %316, !llvm.loop !90

385:                                              ; preds = %381
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %19) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #5

declare void @init_fft() local_unnamed_addr #7

declare void @fft_long(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare void @fft_short(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 168}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !12, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !12, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!6, !10, i64 16}
!15 = !{!11, !11, i64 0}
!16 = !{!6, !12, i64 152}
!17 = !{!12, !12, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!21, !21, i64 0}
!21 = !{!"double", !8, i64 0}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = !{!6, !10, i64 192}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = !{!6, !10, i64 204}
!41 = !{!6, !10, i64 36}
!42 = !{i64 0, i64 176, !43, i64 176, i64 312, !43}
!43 = !{!8, !8, i64 0}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = !{!6, !10, i64 160}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = !{!6, !10, i64 156}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !19}
