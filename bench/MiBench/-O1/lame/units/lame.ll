; ModuleID = 'lame.c'
source_filename = "lame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bit_stream_struc = type { ptr, i32, ptr, ptr, i32, i64, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@bs = internal global %struct.bit_stream_struc zeroinitializer, align 8
@l3_side = internal global %struct.III_side_info_t zeroinitializer, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [65 x i8] c"Warning: highpass filter disabled.  highpass frequency to small\0A\00", align 1
@id3tag = external global %struct.ID3TAGDATA, align 4
@sfBandIndex = external local_unnamed_addr global [6 x %struct.scalefac_struct], align 16
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4
@lame_print_config.mode_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"j-stereo\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dual-ch\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"single-ch\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Autoconverting from stereo to mono. Setting encoding to mono mode.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Resampling:  input=%ikHz  output=%ikHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"Using polyphase highpass filter, transition band: %.0f Hz -  %.0f Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Using polyphase lowpass filter,  transition band:  %.0f Hz - %.0f Hz\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Analyzing %s \0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Encoding %s to %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"Encoding as %.1fkHz VBR(q=%i) %s MPEG%i LayerIII  qval=%i\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"Encoding as %.1f kHz %d kbps %s MPEG%i LayerIII (%4.1fx)  qval=%i\0A\00", align 1
@lame_encode_frame.frameBits = internal unnamed_addr global i64 0, align 8
@lame_encode_frame.frac_SpF = internal unnamed_addr global double 0.000000e+00, align 8
@lame_encode_frame.slot_lag = internal unnamed_addr global double 0.000000e+00, align 8
@lame_encode_frame.sentBits = internal unnamed_addr global i64 0, align 8
@lame_encode_frame.ms_ratio = internal global [2 x double] zeroinitializer, align 16
@lame_encode_frame.ms_ener_ratio = internal global [2 x double] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [36 x i8] c"Sent %ld bits = %ld slots plus %ld\0A\00", align 1
@fill_buffer_resample.itime = internal unnamed_addr global [2 x double] zeroinitializer, align 16
@fill_buffer_resample.inbuf_old = internal unnamed_addr global [2 x [5 x i16]] zeroinitializer, align 16
@fill_buffer_resample.init = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@lame_encode_buffer.frame_buffered = internal unnamed_addr global i1 false, align 4
@mfbuf = internal global [2 x [3056 x i16]] zeroinitializer, align 16
@mf_samples_to_encode = internal unnamed_addr global i32 0, align 4
@mf_size = internal unnamed_addr global i32 0, align 4
@lame_encode_buffer_interleaved.frame_buffered = internal unnamed_addr global i1 false, align 4

; Function Attrs: nounwind uwtable
define dso_local void @lame_init_params(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @bs, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) @l3_side, i8 0, i64 528, i1 false)
  %2 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  store i64 0, ptr %2, align 8, !tbaa !5
  tail call void @InitFormatBitStream() #18
  %3 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !13
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  store i32 3, ptr %7, align 4, !tbaa !14
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  store i32 2, ptr %9, align 4, !tbaa !15
  %10 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = icmp ne i32 %11, 3
  %13 = select i1 %12, i32 2, i32 1
  store i32 %13, ptr %9, align 4
  %14 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !17
  store i32 %19, ptr %14, align 8, !tbaa !16
  %20 = icmp sgt i32 %19, 47999
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = icmp sgt i32 %19, 44099
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = icmp sgt i32 %19, 31999
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = icmp sgt i32 %19, 23999
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %19, 22050
  %29 = select i1 %28, i32 16000, i32 22050
  br label %30

30:                                               ; preds = %27, %25, %23, %21, %17
  %31 = phi i32 [ 48000, %17 ], [ 44100, %21 ], [ 32000, %23 ], [ 24000, %25 ], [ %29, %27 ]
  store i32 %31, ptr %14, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %33 = load i32, ptr %32, align 8, !tbaa !18
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = load i32, ptr %14, align 8, !tbaa !16
  %37 = shl nsw i32 %36, 4
  %38 = zext i1 %12 to i32
  %39 = shl i32 %37, %38
  %40 = sitofp i32 %39 to double
  %41 = sitofp i32 %33 to double
  %42 = fmul double %41, 1.000000e+03
  %43 = fdiv double %40, %42
  %44 = fptrunc double %43 to float
  %45 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 21
  %46 = load i32, ptr %45, align 8, !tbaa !19
  %47 = icmp eq i32 %46, 0
  %48 = fcmp ogt float %44, 1.300000e+01
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %68

50:                                               ; preds = %35
  %51 = fmul double %41, 1.000000e+04
  %52 = shl nuw nsw i32 %13, 4
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %51, %53
  %55 = fptosi double %54 to i32
  store i32 %55, ptr %14, align 8, !tbaa !16
  %56 = icmp slt i32 %55, 16001
  br i1 %56, label %66, label %57

57:                                               ; preds = %50
  %58 = icmp slt i32 %55, 22051
  br i1 %58, label %66, label %59

59:                                               ; preds = %57
  %60 = icmp slt i32 %55, 24001
  br i1 %60, label %66, label %61

61:                                               ; preds = %59
  %62 = icmp slt i32 %55, 32001
  br i1 %62, label %66, label %63

63:                                               ; preds = %61
  %64 = icmp sgt i32 %55, 44100
  %65 = select i1 %64, i32 48000, i32 44100
  br label %66

66:                                               ; preds = %63, %61, %59, %57, %50
  %67 = phi i32 [ 16000, %50 ], [ 22050, %57 ], [ 24000, %59 ], [ 32000, %61 ], [ %65, %63 ]
  store i32 %67, ptr %14, align 8, !tbaa !16
  br label %68

68:                                               ; preds = %66, %30, %35, %8
  %69 = load i32, ptr %14, align 8, !tbaa !16
  %70 = icmp sgt i32 %69, 24000
  %71 = select i1 %70, i32 2, i32 1
  %72 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  store i32 %71, ptr %72, align 8, !tbaa !20
  %73 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 41
  store i32 800, ptr %73, align 8, !tbaa !21
  %74 = zext i1 %70 to i32
  %75 = shl nuw nsw i32 576, %74
  %76 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 42
  store i32 %75, ptr %76, align 4, !tbaa !22
  %77 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %78 = load i32, ptr %77, align 8, !tbaa !18
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = select i1 %70, i32 128, i32 64
  store i32 %81, ptr %77, align 8
  br label %82

82:                                               ; preds = %80, %68
  %83 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 49
  store float 1.000000e+00, ptr %83, align 8, !tbaa !23
  %84 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !17
  %86 = icmp eq i32 %69, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = sitofp i32 %85 to float
  %89 = sitofp i32 %69 to float
  %90 = fdiv float %88, %89
  store float %90, ptr %83, align 8, !tbaa !23
  br label %91

91:                                               ; preds = %87, %82
  %92 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 40
  store i64 0, ptr %92, align 8, !tbaa !24
  %93 = load i64, ptr %0, align 8, !tbaa !25
  %94 = uitofp i64 %93 to float
  %95 = load float, ptr %83, align 8, !tbaa !23
  %96 = sitofp i32 %75 to float
  %97 = fmul float %95, %96
  %98 = fdiv float %94, %97
  %99 = fadd float %98, 2.000000e+00
  %100 = fptosi float %99 to i64
  store i64 %100, ptr %92, align 8, !tbaa !24
  %101 = load i32, ptr %77, align 8, !tbaa !18
  %102 = icmp sgt i32 %101, 319
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 21
  store i32 0, ptr %104, align 8, !tbaa !19
  br label %105

105:                                              ; preds = %103, %91
  %106 = shl nsw i32 %69, 4
  %107 = zext i1 %12 to i32
  %108 = shl i32 %106, %107
  %109 = sitofp i32 %108 to double
  %110 = sitofp i32 %101 to double
  %111 = fmul double %110, 1.000000e+03
  %112 = fdiv double %109, %111
  %113 = fptrunc double %112 to float
  %114 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 21
  %115 = load i32, ptr %114, align 8, !tbaa !19
  %116 = icmp ne i32 %115, 0
  %117 = fcmp ogt float %113, 1.100000e+01
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %125

119:                                              ; preds = %105
  %120 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %121 = load i32, ptr %120, align 4, !tbaa !26
  %122 = sitofp i32 %121 to double
  %123 = fadd double %122, 4.400000e+00
  %124 = fptrunc double %123 to float
  br label %125

125:                                              ; preds = %119, %105
  %126 = phi float [ %124, %119 ], [ %113, %105 ]
  %127 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 9
  %128 = load i32, ptr %127, align 8, !tbaa !27
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = icmp ne i32 %11, 3
  %132 = fcmp olt float %126, 9.000000e+00
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 0, ptr %10, align 4, !tbaa !14
  br label %135

135:                                              ; preds = %134, %130, %125
  %136 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  %137 = load i32, ptr %136, align 8, !tbaa !28
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = fpext float %126 to double
  %141 = fmul double %140, 6.250000e-02
  %142 = tail call double @log(double noundef %141) #18
  %143 = tail call double @llvm.fmuladd.f64(double %142, double -1.800000e+01, double 1.450000e+01)
  %144 = tail call double @llvm.floor.f64(double %143)
  %145 = fadd double %144, 1.000000e+00
  %146 = fptosi double %145 to i32
  %147 = icmp slt i32 %146, 31
  br i1 %147, label %148, label %154

148:                                              ; preds = %139
  %149 = sitofp i32 %146 to double
  %150 = fdiv double %149, 3.100000e+01
  %151 = fptrunc double %150 to float
  %152 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 53
  store float %151, ptr %152, align 8, !tbaa !29
  %153 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 54
  store float %151, ptr %153, align 4, !tbaa !30
  br label %154

154:                                              ; preds = %139, %148, %135
  %155 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 26
  %156 = load i32, ptr %155, align 4, !tbaa !31
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %183

158:                                              ; preds = %154
  %159 = sitofp i32 %156 to double
  %160 = fmul double %159, 2.000000e+00
  %161 = load i32, ptr %14, align 8, !tbaa !16
  %162 = sitofp i32 %161 to double
  %163 = fdiv double %160, %162
  %164 = fptrunc double %163 to float
  %165 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 55
  store float %164, ptr %165, align 8, !tbaa !32
  %166 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 28
  %167 = load i32, ptr %166, align 4, !tbaa !33
  %168 = icmp sgt i32 %167, -1
  br i1 %168, label %169, label %175

169:                                              ; preds = %158
  %170 = add nuw nsw i32 %167, %156
  %171 = sitofp i32 %170 to double
  %172 = fmul double %171, 2.000000e+00
  %173 = fdiv double %172, %162
  %174 = fptrunc double %173 to float
  br label %175

175:                                              ; preds = %158, %169
  %176 = phi float [ %174, %169 ], [ %164, %158 ]
  %177 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 56
  store float %176, ptr %177, align 4, !tbaa !34
  %178 = fcmp ogt float %164, 1.000000e+00
  %179 = select i1 %178, float 1.000000e+00, float %164
  store float %179, ptr %165, align 8, !tbaa !32
  %180 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 56
  %181 = fcmp ogt float %176, 1.000000e+00
  %182 = select i1 %181, float 1.000000e+00, float %176
  store float %182, ptr %180, align 4, !tbaa !34
  br label %183

183:                                              ; preds = %175, %154
  %184 = load i32, ptr %136, align 8, !tbaa !28
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %215

186:                                              ; preds = %183
  %187 = sitofp i32 %184 to double
  %188 = fmul double %187, 2.000000e+00
  %189 = load i32, ptr %14, align 8, !tbaa !16
  %190 = sitofp i32 %189 to double
  %191 = fdiv double %188, %190
  %192 = fptrunc double %191 to float
  %193 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 54
  store float %192, ptr %193, align 4, !tbaa !30
  %194 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 27
  %195 = load i32, ptr %194, align 8, !tbaa !35
  %196 = icmp sgt i32 %195, -1
  br i1 %196, label %197, label %206

197:                                              ; preds = %186
  %198 = sub nsw i32 %184, %195
  %199 = sitofp i32 %198 to double
  %200 = fmul double %199, 2.000000e+00
  %201 = fdiv double %200, %190
  %202 = fptrunc double %201 to float
  %203 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 53
  store float %202, ptr %203, align 8, !tbaa !29
  %204 = fcmp olt float %202, 0.000000e+00
  br i1 %204, label %205, label %208

205:                                              ; preds = %197
  store float 0.000000e+00, ptr %203, align 8, !tbaa !29
  br label %208

206:                                              ; preds = %186
  %207 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 53
  store float %192, ptr %207, align 8, !tbaa !29
  br label %208

208:                                              ; preds = %197, %205, %206
  %209 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 53
  %210 = load float, ptr %209, align 8, !tbaa !29
  %211 = fcmp ogt float %210, 1.000000e+00
  %212 = select i1 %211, float 1.000000e+00, float %210
  store float %212, ptr %209, align 8, !tbaa !29
  %213 = fcmp ogt float %192, 1.000000e+00
  %214 = select i1 %213, float 1.000000e+00, float %192
  store float %214, ptr %193, align 4, !tbaa !30
  br label %215

215:                                              ; preds = %208, %183
  %216 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 59
  %217 = load i32, ptr %216, align 8, !tbaa !36
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %337

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 53
  %221 = load float, ptr %220, align 8, !tbaa !29
  %222 = fcmp ogt float %221, 0.000000e+00
  br i1 %222, label %223, label %275

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 54
  %225 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 57
  br label %226

226:                                              ; preds = %223, %254
  %227 = phi i32 [ 999, %223 ], [ %255, %254 ]
  %228 = phi i32 [ 0, %223 ], [ %256, %254 ]
  %229 = sitofp i32 %228 to double
  %230 = fdiv double %229, 3.100000e+01
  %231 = load float, ptr %224, align 4, !tbaa !30
  %232 = fpext float %231 to double
  %233 = fcmp ult double %230, %232
  br i1 %233, label %237, label %234

234:                                              ; preds = %226
  %235 = load i32, ptr %225, align 8, !tbaa !37
  %236 = tail call i32 @llvm.smin.i32(i32 %235, i32 %228)
  store i32 %236, ptr %225, align 8, !tbaa !37
  br label %237

237:                                              ; preds = %234, %226
  %238 = load float, ptr %220, align 8, !tbaa !29
  %239 = fpext float %238 to double
  %240 = fcmp ogt double %230, %239
  %241 = fcmp olt double %230, %232
  %242 = and i1 %241, %240
  br i1 %242, label %243, label %254

243:                                              ; preds = %237
  %244 = tail call i32 @llvm.smin.i32(i32 %227, i32 %228)
  %245 = fsub double %239, %230
  %246 = fmul double %245, 0x3FF921FB54442D18
  %247 = fsub float %231, %238
  %248 = fpext float %247 to double
  %249 = fdiv double %246, %248
  %250 = tail call double @llvm.fabs.f64(double %249)
  %251 = fcmp oeq double %250, 0x7FF0000000000000
  br i1 %251, label %252, label %254, !prof !38

252:                                              ; preds = %243
  %253 = tail call double @cos(double noundef %249) #18
  br label %254

254:                                              ; preds = %252, %243, %237
  %255 = phi i32 [ %227, %237 ], [ %244, %243 ], [ %244, %252 ]
  %256 = add nuw nsw i32 %228, 1
  %257 = icmp eq i32 %256, 32
  br i1 %257, label %258, label %226, !llvm.loop !39

258:                                              ; preds = %254
  %259 = icmp eq i32 %255, 999
  br i1 %259, label %260, label %263

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 57
  %262 = load i32, ptr %261, align 8, !tbaa !37
  br label %263

263:                                              ; preds = %258, %260
  %264 = phi i32 [ %262, %260 ], [ %255, %258 ]
  %265 = sitofp i32 %264 to double
  %266 = fadd double %265, -7.500000e-01
  %267 = fdiv double %266, 3.100000e+01
  %268 = fptrunc double %267 to float
  store float %268, ptr %220, align 8, !tbaa !29
  %269 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 57
  %270 = load i32, ptr %269, align 8, !tbaa !37
  %271 = sitofp i32 %270 to double
  %272 = fdiv double %271, 3.100000e+01
  %273 = fptrunc double %272 to float
  %274 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 54
  store float %273, ptr %274, align 4, !tbaa !30
  br label %275

275:                                              ; preds = %263, %219
  %276 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 56
  %277 = load float, ptr %276, align 4, !tbaa !34
  %278 = fcmp ogt float %277, 0.000000e+00
  %279 = fpext float %277 to double
  %280 = fcmp olt double %279, 0x3F964BF964BF964C
  %281 = and i1 %278, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %275
  %283 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 55
  store float 0.000000e+00, ptr %283, align 8, !tbaa !32
  store float 0.000000e+00, ptr %276, align 4, !tbaa !34
  %284 = load ptr, ptr @stderr, align 8, !tbaa !41
  %285 = tail call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %284) #19
  br label %286

286:                                              ; preds = %282, %275
  %287 = load float, ptr %276, align 4, !tbaa !34
  %288 = fcmp ogt float %287, 0.000000e+00
  br i1 %288, label %289, label %337

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 55
  %291 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 58
  br label %292

292:                                              ; preds = %289, %320
  %293 = phi i32 [ -1, %289 ], [ %321, %320 ]
  %294 = phi i32 [ 0, %289 ], [ %322, %320 ]
  %295 = sitofp i32 %294 to double
  %296 = fdiv double %295, 3.100000e+01
  %297 = load float, ptr %290, align 8, !tbaa !32
  %298 = fpext float %297 to double
  %299 = fcmp ugt double %296, %298
  br i1 %299, label %303, label %300

300:                                              ; preds = %292
  %301 = load i32, ptr %291, align 4, !tbaa !42
  %302 = tail call i32 @llvm.smax.i32(i32 %301, i32 %294)
  store i32 %302, ptr %291, align 4, !tbaa !42
  br label %303

303:                                              ; preds = %300, %292
  %304 = fcmp ogt double %296, %298
  br i1 %304, label %305, label %320

305:                                              ; preds = %303
  %306 = load float, ptr %276, align 4, !tbaa !34
  %307 = fpext float %306 to double
  %308 = fcmp olt double %296, %307
  br i1 %308, label %309, label %320

309:                                              ; preds = %305
  %310 = tail call i32 @llvm.smax.i32(i32 %293, i32 %294)
  %311 = fsub double %307, %296
  %312 = fmul double %311, 0x3FF921FB54442D18
  %313 = fsub float %306, %297
  %314 = fpext float %313 to double
  %315 = fdiv double %312, %314
  %316 = tail call double @llvm.fabs.f64(double %315)
  %317 = fcmp oeq double %316, 0x7FF0000000000000
  br i1 %317, label %318, label %320, !prof !38

318:                                              ; preds = %309
  %319 = tail call double @cos(double noundef %315) #18
  br label %320

320:                                              ; preds = %318, %309, %303, %305
  %321 = phi i32 [ %293, %305 ], [ %293, %303 ], [ %310, %309 ], [ %310, %318 ]
  %322 = add nuw nsw i32 %294, 1
  %323 = icmp eq i32 %322, 32
  br i1 %323, label %324, label %292, !llvm.loop !43

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 58
  %326 = load i32, ptr %325, align 4, !tbaa !42
  %327 = sitofp i32 %326 to double
  %328 = fdiv double %327, 3.100000e+01
  %329 = fptrunc double %328 to float
  %330 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 55
  store float %329, ptr %330, align 8, !tbaa !32
  %331 = icmp eq i32 %321, -1
  %332 = sitofp i32 %321 to double
  %333 = select i1 %331, double %327, double %332
  %334 = fadd double %333, 7.500000e-01
  %335 = fdiv double %334, 3.100000e+01
  %336 = fptrunc double %335 to float
  store float %336, ptr %276, align 4, !tbaa !34
  br label %337

337:                                              ; preds = %324, %286, %215
  %338 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 52
  store i32 0, ptr %338, align 4, !tbaa !44
  %339 = load i32, ptr %10, align 4, !tbaa !14
  %340 = icmp eq i32 %339, 3
  %341 = select i1 %340, i32 1, i32 2
  store i32 %341, ptr %9, align 4, !tbaa !15
  %342 = load i32, ptr %14, align 8, !tbaa !16
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  %345 = tail call i32 @SmpFrqIndex(i64 noundef %343, ptr noundef nonnull %344) #18
  %346 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 51
  store i32 %345, ptr %346, align 8, !tbaa !45
  %347 = icmp slt i32 %345, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %337
  %349 = load ptr, ptr @stderr, align 8, !tbaa !41
  tail call void @display_bitrates(ptr noundef %349) #18
  tail call void @exit(i32 noundef 1) #20
  unreachable

350:                                              ; preds = %337
  %351 = load i32, ptr %77, align 8, !tbaa !18
  %352 = load i32, ptr %344, align 8, !tbaa !46
  %353 = load i32, ptr %14, align 8, !tbaa !16
  %354 = tail call i32 @BitrateIndex(i32 noundef %351, i32 noundef %352, i32 noundef %353) #18
  %355 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 50
  store i32 %354, ptr %355, align 4, !tbaa !47
  %356 = icmp slt i32 %354, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %350
  %358 = load ptr, ptr @stderr, align 8, !tbaa !41
  tail call void @display_bitrates(ptr noundef %358) #18
  tail call void @exit(i32 noundef 1) #20
  unreachable

359:                                              ; preds = %350
  %360 = load i32, ptr %114, align 8, !tbaa !19
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %402, label %362

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 24
  %364 = load i32, ptr %363, align 4, !tbaa !48
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %380

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 48
  store i32 13, ptr %367, align 4, !tbaa !49
  %368 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 23
  %369 = load i32, ptr %368, align 8, !tbaa !50
  %370 = icmp sgt i32 %369, 255
  %371 = select i1 %370, i32 14, i32 13
  store i32 %371, ptr %367, align 4
  %372 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %373 = load i32, ptr %372, align 4, !tbaa !26
  %374 = icmp eq i32 %373, 0
  %375 = select i1 %374, i32 14, i32 %371
  %376 = icmp sgt i32 %373, 3
  %377 = select i1 %376, i32 12, i32 %375
  %378 = icmp sgt i32 %373, 7
  %379 = select i1 %378, i32 9, i32 %377
  store i32 %379, ptr %367, align 4
  br label %388

380:                                              ; preds = %362
  %381 = load i32, ptr %344, align 8, !tbaa !46
  %382 = load i32, ptr %14, align 8, !tbaa !16
  %383 = tail call i32 @BitrateIndex(i32 noundef %364, i32 noundef %381, i32 noundef %382) #18
  %384 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 48
  store i32 %383, ptr %384, align 4, !tbaa !49
  %385 = icmp slt i32 %383, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %380
  %387 = load ptr, ptr @stderr, align 8, !tbaa !41
  tail call void @display_bitrates(ptr noundef %387) #18
  tail call void @exit(i32 noundef 1) #20
  unreachable

388:                                              ; preds = %366, %380
  %389 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 23
  %390 = load i32, ptr %389, align 8, !tbaa !50
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 47
  store i32 1, ptr %393, align 8, !tbaa !51
  br label %402

394:                                              ; preds = %388
  %395 = load i32, ptr %344, align 8, !tbaa !46
  %396 = load i32, ptr %14, align 8, !tbaa !16
  %397 = tail call i32 @BitrateIndex(i32 noundef %390, i32 noundef %395, i32 noundef %396) #18
  %398 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 47
  store i32 %397, ptr %398, align 8, !tbaa !51
  %399 = icmp slt i32 %397, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %394
  %401 = load ptr, ptr @stderr, align 8, !tbaa !41
  tail call void @display_bitrates(ptr noundef %401) #18
  tail call void @exit(i32 noundef 1) #20
  unreachable

402:                                              ; preds = %392, %394, %359
  %403 = load i32, ptr %114, align 8, !tbaa !19
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %409, label %405

405:                                              ; preds = %402
  %406 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %407 = load i32, ptr %406, align 4, !tbaa !52
  %408 = tail call i32 @llvm.smin.i32(i32 %407, i32 2)
  store i32 %408, ptr %406, align 4, !tbaa !52
  br label %409

409:                                              ; preds = %405, %402
  %410 = load i32, ptr %10, align 4, !tbaa !14
  %411 = icmp eq i32 %410, 3
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 10
  store i32 0, ptr %413, align 4, !tbaa !53
  br label %414

414:                                              ; preds = %412, %409
  br i1 %404, label %415, label %417

415:                                              ; preds = %414
  %416 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 5
  store i32 0, ptr %416, align 8, !tbaa !54
  br label %417

417:                                              ; preds = %415, %414
  %418 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 32
  %419 = load ptr, ptr %418, align 8, !tbaa !55
  %420 = icmp eq ptr %419, null
  br i1 %420, label %430, label %421

421:                                              ; preds = %417
  %422 = load i8, ptr %419, align 1, !tbaa !56
  %423 = icmp eq i8 %422, 45
  br i1 %423, label %424, label %426

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 5
  store i32 0, ptr %425, align 8, !tbaa !54
  br label %426

426:                                              ; preds = %424, %421
  br i1 %420, label %430, label %427

427:                                              ; preds = %426
  %428 = load i8, ptr %419, align 1, !tbaa !56
  %429 = icmp eq i8 %428, 45
  br i1 %429, label %430, label %431

430:                                              ; preds = %417, %427, %426
  store i32 0, ptr @id3tag, align 4, !tbaa !57
  br label %431

431:                                              ; preds = %430, %427
  %432 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 4
  %433 = load i32, ptr %432, align 4, !tbaa !59
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %437, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 5
  store i32 0, ptr %436, align 8, !tbaa !54
  br label %437

437:                                              ; preds = %435, %431
  tail call void @init_bit_stream_w(ptr noundef nonnull @bs) #18
  %438 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %439 = load i32, ptr %438, align 4, !tbaa !52
  switch i32 %439, label %442 [
    i32 9, label %440
    i32 8, label %441
  ]

440:                                              ; preds = %437
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %216, i8 0, i64 24, i1 false)
  br label %442

441:                                              ; preds = %437
  store i32 7, ptr %438, align 4, !tbaa !52
  br label %442

442:                                              ; preds = %440, %437, %441
  %443 = load i32, ptr %438, align 4, !tbaa !52
  switch i32 %443, label %451 [
    i32 7, label %444
    i32 6, label %450
  ]

444:                                              ; preds = %442
  store i32 0, ptr %216, align 8, !tbaa !36
  %445 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 63
  store i32 1, ptr %445, align 8, !tbaa !60
  %446 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 60
  store i32 0, ptr %446, align 4, !tbaa !61
  %447 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 61
  store i32 0, ptr %447, align 8, !tbaa !62
  %448 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 62
  store i32 0, ptr %448, align 4, !tbaa !63
  %449 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 64
  store i32 0, ptr %449, align 4, !tbaa !64
  br label %451

450:                                              ; preds = %442
  store i32 5, ptr %438, align 4, !tbaa !52
  br label %451

451:                                              ; preds = %444, %442, %450
  %452 = load i32, ptr %438, align 4, !tbaa !52
  switch i32 %452, label %460 [
    i32 5, label %453
    i32 4, label %459
  ]

453:                                              ; preds = %451
  store i32 0, ptr %216, align 8, !tbaa !36
  %454 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 63
  store i32 1, ptr %454, align 8, !tbaa !60
  %455 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 60
  store i32 0, ptr %455, align 4, !tbaa !61
  %456 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 61
  store i32 1, ptr %456, align 8, !tbaa !62
  %457 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 62
  store i32 0, ptr %457, align 4, !tbaa !63
  %458 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 64
  store i32 0, ptr %458, align 4, !tbaa !64
  br label %460

459:                                              ; preds = %451
  store i32 2, ptr %438, align 4, !tbaa !52
  br label %460

460:                                              ; preds = %453, %451, %459
  %461 = load i32, ptr %438, align 4, !tbaa !52
  %462 = icmp eq i32 %461, 3
  br i1 %462, label %463, label %464

463:                                              ; preds = %460
  store i32 2, ptr %438, align 4, !tbaa !52
  br label %464

464:                                              ; preds = %463, %460
  %465 = load i32, ptr %438, align 4, !tbaa !52
  switch i32 %465, label %466 [
    i32 2, label %468
    i32 1, label %467
    i32 0, label %475
  ]

466:                                              ; preds = %468, %464
  br label %481

467:                                              ; preds = %464
  br label %468

468:                                              ; preds = %464, %467
  %469 = phi i32 [ 1, %467 ], [ 0, %464 ]
  store i32 0, ptr %216, align 8, !tbaa !36
  %470 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 63
  store i32 1, ptr %470, align 8, !tbaa !60
  %471 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 60
  store i32 1, ptr %471, align 4, !tbaa !61
  %472 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 61
  store i32 1, ptr %472, align 8, !tbaa !62
  %473 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 62
  store i32 %469, ptr %473, align 4, !tbaa !63
  %474 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 64
  store i32 1, ptr %474, align 4, !tbaa !64
  br label %466

475:                                              ; preds = %464
  store i32 1, ptr %216, align 8, !tbaa !36
  %476 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 63
  store i32 1, ptr %476, align 8, !tbaa !60
  %477 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 60
  store i32 1, ptr %477, align 4, !tbaa !61
  %478 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 61
  store i32 3, ptr %478, align 8, !tbaa !62
  %479 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 62
  store i32 2, ptr %479, align 4, !tbaa !63
  %480 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 64
  store i32 2, ptr %480, align 4, !tbaa !64
  tail call void @exit(i32 noundef -99) #20
  unreachable

481:                                              ; preds = %466, %481
  %482 = phi i64 [ %492, %481 ], [ 0, %466 ]
  %483 = load i32, ptr %346, align 8, !tbaa !45
  %484 = load i32, ptr %344, align 8, !tbaa !46
  %485 = mul nsw i32 %484, 3
  %486 = add nsw i32 %485, %483
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %487
  %489 = getelementptr inbounds [23 x i32], ptr %488, i64 0, i64 %482
  %490 = load i32, ptr %489, align 4, !tbaa !65
  %491 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %482
  store i32 %490, ptr %491, align 4, !tbaa !65
  %492 = add nuw nsw i64 %482, 1
  %493 = icmp eq i64 %492, 23
  br i1 %493, label %494, label %481, !llvm.loop !66

494:                                              ; preds = %481, %494
  %495 = phi i64 [ %504, %494 ], [ 0, %481 ]
  %496 = load i32, ptr %346, align 8, !tbaa !45
  %497 = load i32, ptr %344, align 8, !tbaa !46
  %498 = mul nsw i32 %497, 3
  %499 = add nsw i32 %498, %496
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %500, i32 1, i64 %495
  %502 = load i32, ptr %501, align 4, !tbaa !65
  %503 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %495
  store i32 %502, ptr %503, align 4, !tbaa !65
  %504 = add nuw nsw i64 %495, 1
  %505 = icmp eq i64 %504, 14
  br i1 %505, label %506, label %494, !llvm.loop !67

506:                                              ; preds = %494
  %507 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 5
  %508 = load i32, ptr %507, align 8, !tbaa !54
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %516, label %510

510:                                              ; preds = %506
  %511 = load i32, ptr %344, align 8, !tbaa !46
  %512 = sub nsw i32 1, %511
  %513 = load i32, ptr %10, align 4, !tbaa !14
  %514 = load i32, ptr %346, align 8, !tbaa !45
  %515 = tail call i32 @InitVbrTag(ptr noundef nonnull @bs, i32 noundef %512, i32 noundef %513, i32 noundef %514) #18
  br label %516

516:                                              ; preds = %510, %506
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @InitFormatBitStream() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare i32 @SmpFrqIndex(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @display_bitrates(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare i32 @BitrateIndex(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @init_bit_stream_w(ptr noundef) local_unnamed_addr #3

declare i32 @InitVbrTag(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @lame_print_config(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !16
  %4 = sitofp i32 %3 to double
  %5 = fdiv double %4, 1.000000e+03
  %6 = fptrunc double %5 to float
  %7 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 49
  %8 = load float, ptr %7, align 8, !tbaa !23
  %9 = fmul float %8, %6
  %10 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %11 = load i32, ptr %10, align 4, !tbaa !15
  %12 = shl nsw i32 %11, 4
  %13 = sitofp i32 %12 to float
  %14 = fmul float %6, %13
  %15 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %16 = load i32, ptr %15, align 8, !tbaa !18
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %14, %17
  %19 = load ptr, ptr @stderr, align 8, !tbaa !41
  tail call void @lame_print_version(ptr noundef %19) #18
  %20 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !13
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, ptr %10, align 4, !tbaa !15
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load ptr, ptr @stderr, align 8, !tbaa !41
  %28 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 67, i64 1, ptr %27) #19
  br label %29

29:                                               ; preds = %26, %23, %1
  %30 = load float, ptr %7, align 8, !tbaa !23
  %31 = fcmp une float %30, 1.000000e+00
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load ptr, ptr @stderr, align 8, !tbaa !41
  %34 = fptosi float %9 to i32
  %35 = fptosi float %6 to i32
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.6, i32 noundef %34, i32 noundef %35) #19
  br label %37

37:                                               ; preds = %32, %29
  %38 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 56
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fcmp ogt float %39, 0.000000e+00
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load ptr, ptr @stderr, align 8, !tbaa !41
  %43 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 55
  %44 = load float, ptr %43, align 8, !tbaa !32
  %45 = fmul float %44, %6
  %46 = fmul float %45, 5.000000e+02
  %47 = fpext float %46 to double
  %48 = fmul float %39, %6
  %49 = fmul float %48, 5.000000e+02
  %50 = fpext float %49 to double
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.7, double noundef %47, double noundef %50) #19
  br label %52

52:                                               ; preds = %41, %37
  %53 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 53
  %54 = load float, ptr %53, align 8, !tbaa !29
  %55 = fcmp ogt float %54, 0.000000e+00
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load ptr, ptr @stderr, align 8, !tbaa !41
  %58 = fmul float %54, %6
  %59 = fmul float %58, 5.000000e+02
  %60 = fpext float %59 to double
  %61 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 54
  %62 = load float, ptr %61, align 4, !tbaa !30
  %63 = fmul float %62, %6
  %64 = fmul float %63, 5.000000e+02
  %65 = fpext float %64 to double
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.8, double noundef %60, double noundef %65) #19
  br label %67

67:                                               ; preds = %56, %52
  %68 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !59
  %70 = icmp eq i32 %69, 0
  %71 = load ptr, ptr @stderr, align 8, !tbaa !41
  %72 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 31
  %73 = load ptr, ptr %72, align 8, !tbaa !68
  br i1 %70, label %76, label %74

74:                                               ; preds = %67
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.9, ptr noundef %73) #19
  br label %131

76:                                               ; preds = %67
  %77 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(2) @.str.11) #21
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %73, i32 noundef 47) #21
  %81 = icmp eq ptr %80, null
  %82 = getelementptr inbounds i8, ptr %80, i64 1
  %83 = select i1 %81, ptr %73, ptr %82
  br label %84

84:                                               ; preds = %76, %79
  %85 = phi ptr [ %83, %79 ], [ @.str.12, %76 ]
  %86 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 32
  %87 = load ptr, ptr %86, align 8, !tbaa !55
  %88 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %87, ptr noundef nonnull dereferenceable(2) @.str.11) #21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %84
  %91 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %87, i32 noundef 47) #21
  %92 = icmp eq ptr %91, null
  %93 = getelementptr inbounds i8, ptr %91, i64 1
  %94 = select i1 %92, ptr %87, ptr %93
  br label %95

95:                                               ; preds = %84, %90
  %96 = phi ptr [ %94, %90 ], [ @.str.13, %84 ]
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.10, ptr noundef %85, ptr noundef %96) #19
  %98 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 21
  %99 = load i32, ptr %98, align 8, !tbaa !19
  %100 = icmp eq i32 %99, 0
  %101 = load ptr, ptr @stderr, align 8, !tbaa !41
  %102 = load i32, ptr %2, align 8, !tbaa !16
  %103 = sitofp i32 %102 to double
  %104 = fdiv double %103, 1.000000e+03
  %105 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  %106 = load i32, ptr %105, align 4, !tbaa !52
  br i1 %100, label %119, label %107

107:                                              ; preds = %95
  %108 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %109 = load i32, ptr %108, align 4, !tbaa !26
  %110 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %111 = load i32, ptr %110, align 4, !tbaa !14
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x ptr], ptr @lame_print_config.mode_names, i64 0, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !41
  %115 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  %116 = load i32, ptr %115, align 8, !tbaa !46
  %117 = sub nsw i32 2, %116
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.14, double noundef %104, i32 noundef %109, ptr noundef %114, i32 noundef %117, i32 noundef %106) #19
  br label %131

119:                                              ; preds = %95
  %120 = load i32, ptr %15, align 8, !tbaa !18
  %121 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %122 = load i32, ptr %121, align 4, !tbaa !14
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x ptr], ptr @lame_print_config.mode_names, i64 0, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !41
  %126 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  %127 = load i32, ptr %126, align 8, !tbaa !46
  %128 = sub nsw i32 2, %127
  %129 = fpext float %18 to double
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.15, double noundef %104, i32 noundef %120, ptr noundef %125, i32 noundef %128, double noundef %129, i32 noundef %106) #19
  br label %131

131:                                              ; preds = %107, %119, %74
  %132 = load ptr, ptr @stderr, align 8, !tbaa !41
  %133 = tail call i32 @fflush(ptr noundef %132)
  ret void
}

declare void @lame_print_version(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @lame_encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x [2 x [576 x double]]], align 16
  %8 = alloca [2 x [2 x [576 x i32]]], align 16
  %9 = alloca [2 x [2 x %struct.III_psy_ratio]], align 16
  %10 = alloca [2 x [2 x %struct.III_psy_ratio]], align 16
  %11 = alloca [2 x [2 x %struct.III_scalefac_t]], align 16
  %12 = alloca [2 x ptr], align 16
  %13 = alloca [2 x [2 x double]], align 16
  %14 = alloca [2 x [2 x double]], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca [2 x ptr], align 16
  %19 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 18432, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 9216, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 3904, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 3904, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 976, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #18
  store double 0.000000e+00, ptr %17, align 8, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3904) %9, i8 0, i64 3904, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3904) %10, i8 0, i64 3904, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(976) %11, i8 0, i64 976, i1 false)
  store ptr %1, ptr %12, align 16, !tbaa !41
  %20 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 1
  store ptr %2, ptr %20, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 52
  store i32 0, ptr %21, align 4, !tbaa !44
  %22 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %23 = load i64, ptr %22, align 8, !tbaa !5
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !16
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.000000e+03
  %30 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 11
  %31 = load i32, ptr %30, align 8, !tbaa !18
  store i64 0, ptr @lame_encode_frame.sentBits, align 8, !tbaa !71
  %32 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 42
  %33 = load i32, ptr %32, align 4, !tbaa !22
  %34 = mul nsw i32 %33, %31
  %35 = sitofp i32 %34 to double
  %36 = fmul double %29, 8.000000e+00
  %37 = fdiv double %35, %36
  %38 = fadd double %37, 1.000000e-09
  %39 = tail call double @llvm.floor.f64(double %38)
  %40 = fsub double %37, %39
  %41 = tail call double @llvm.fabs.f64(double %40)
  %42 = fcmp olt double %41, 1.000000e-09
  %43 = select i1 %42, double 0.000000e+00, double %40
  store double %43, ptr @lame_encode_frame.frac_SpF, align 8, !tbaa !69
  %44 = fneg double %43
  store double %44, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !69
  %45 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 44
  %46 = fcmp une double %43, 0.000000e+00
  %47 = zext i1 %46 to i32
  store i32 %47, ptr %45, align 4, !tbaa !72
  br label %48

48:                                               ; preds = %25, %6
  %49 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 15
  %50 = load i32, ptr %49, align 8, !tbaa !73
  switch i32 %50, label %55 [
    i32 0, label %51
    i32 1, label %53
  ]

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 44
  store i32 0, ptr %52, align 4, !tbaa !72
  br label %81

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 44
  store i32 1, ptr %54, align 4, !tbaa !72
  br label %81

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 21
  %57 = load i32, ptr %56, align 8, !tbaa !19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 44
  store i32 0, ptr %60, align 4, !tbaa !72
  br label %81

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 17
  %63 = load i32, ptr %62, align 8, !tbaa !74
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 44
  store i32 0, ptr %66, align 4, !tbaa !72
  br label %81

67:                                               ; preds = %61
  %68 = load double, ptr @lame_encode_frame.frac_SpF, align 8, !tbaa !69
  %69 = fcmp une double %68, 0.000000e+00
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load double, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !69
  %72 = fadd double %68, -1.000000e+00
  %73 = fcmp ogt double %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = fsub double %71, %68
  store double %75, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !69
  %76 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 44
  store i32 0, ptr %76, align 4, !tbaa !72
  br label %81

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 44
  store i32 1, ptr %78, align 4, !tbaa !72
  %79 = fsub double 1.000000e+00, %68
  %80 = fadd double %79, %71
  store double %80, ptr @lame_encode_frame.slot_lag, align 8, !tbaa !69
  br label %81

81:                                               ; preds = %59, %67, %77, %74, %65, %53, %51
  %82 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 4
  %83 = load i32, ptr %82, align 4, !tbaa !59
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !75
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  %91 = load i32, ptr %90, align 8, !tbaa !46
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 200, i64 50
  %94 = srem i64 %23, %93
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !16
  %99 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 40
  %100 = load i64, ptr %99, align 8, !tbaa !24
  %101 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 42
  %102 = load i32, ptr %101, align 4, !tbaa !22
  tail call void @timestatus(i32 noundef %98, i64 noundef %23, i64 noundef %100, i32 noundef %102) #18
  br label %103

103:                                              ; preds = %89, %96, %85, %81
  %104 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 63
  %105 = load i32, ptr %104, align 8, !tbaa !60
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %109 = load i32, ptr %108, align 8, !tbaa !20
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %181

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %113 = load i32, ptr %112, align 4, !tbaa !15
  %114 = icmp sgt i32 %113, 0
  %115 = zext nneg i32 %109 to i64
  %116 = zext nneg i32 %113 to i64
  br label %168

117:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #18
  %118 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %119 = load i32, ptr %118, align 8, !tbaa !20
  %120 = add nsw i32 %119, -1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 %121
  %123 = load double, ptr %122, align 8, !tbaa !69
  %124 = icmp sgt i32 %119, 0
  br i1 %124, label %125, label %167

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %127 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  br label %128

128:                                              ; preds = %125, %162
  %129 = phi i64 [ 0, %125 ], [ %163, %162 ]
  %130 = load i32, ptr %126, align 4, !tbaa !15
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = mul nuw nsw i64 %129, 576
  %134 = zext nneg i32 %130 to i64
  br label %135

135:                                              ; preds = %132, %135
  %136 = phi i64 [ 0, %132 ], [ %142, %135 ]
  %137 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !41
  %139 = getelementptr i16, ptr %138, i64 %133
  %140 = getelementptr i16, ptr %139, i64 304
  %141 = getelementptr inbounds [2 x ptr], ptr %18, i64 0, i64 %136
  store ptr %140, ptr %141, align 8, !tbaa !41
  %142 = add nuw nsw i64 %136, 1
  %143 = icmp eq i64 %142, %134
  br i1 %143, label %144, label %135, !llvm.loop !76

144:                                              ; preds = %135, %128
  %145 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 %129
  %146 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ener_ratio, i64 0, i64 %129
  %147 = getelementptr inbounds [2 x [2 x double]], ptr %13, i64 0, i64 %129
  %148 = getelementptr inbounds [2 x [2 x double]], ptr %14, i64 0, i64 %129
  %149 = trunc i64 %129 to i32
  call void @L3psycho_anal(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %149, ptr noundef nonnull %145, ptr noundef nonnull %17, ptr noundef nonnull %146, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %147, ptr noundef nonnull %148, ptr noundef nonnull %19) #18
  %150 = load i32, ptr %127, align 4, !tbaa !15
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 %129
  %154 = zext nneg i32 %150 to i64
  br label %155

155:                                              ; preds = %152, %155
  %156 = phi i64 [ 0, %152 ], [ %160, %155 ]
  %157 = getelementptr inbounds [2 x i32], ptr %19, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !65
  %159 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %153, i64 0, i64 %156, i32 0, i32 6
  store i32 %158, ptr %159, align 8, !tbaa !77
  %160 = add nuw nsw i64 %156, 1
  %161 = icmp eq i64 %160, %154
  br i1 %161, label %162, label %155, !llvm.loop !80

162:                                              ; preds = %155, %144
  %163 = add nuw nsw i64 %129, 1
  %164 = load i32, ptr %118, align 8, !tbaa !20
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %163, %165
  br i1 %166, label %128, label %167, !llvm.loop !81

167:                                              ; preds = %162, %117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #18
  br label %181

168:                                              ; preds = %111, %178
  %169 = phi i64 [ 0, %111 ], [ %179, %178 ]
  br i1 %114, label %170, label %178

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 %169
  br label %172

172:                                              ; preds = %170, %172
  %173 = phi i64 [ 0, %170 ], [ %176, %172 ]
  %174 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %171, i64 0, i64 %173, i32 0, i32 6
  store i32 0, ptr %174, align 8, !tbaa !77
  %175 = getelementptr inbounds [2 x [2 x double]], ptr %13, i64 0, i64 %169, i64 %173
  store double 7.000000e+02, ptr %175, align 8, !tbaa !69
  %176 = add nuw nsw i64 %173, 1
  %177 = icmp eq i64 %176, %116
  br i1 %177, label %178, label %172, !llvm.loop !82

178:                                              ; preds = %172, %168
  %179 = add nuw nsw i64 %169, 1
  %180 = icmp eq i64 %179, %115
  br i1 %180, label %181, label %168, !llvm.loop !83

181:                                              ; preds = %178, %107, %167
  %182 = phi double [ %123, %167 ], [ 0.000000e+00, %107 ], [ 0.000000e+00, %178 ]
  %183 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %184 = load i32, ptr %183, align 8, !tbaa !20
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %210

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %188 = load i32, ptr %187, align 4, !tbaa !15
  %189 = icmp sgt i32 %188, 0
  %190 = zext nneg i32 %184 to i64
  %191 = zext nneg i32 %188 to i64
  br label %192

192:                                              ; preds = %186, %207
  %193 = phi i64 [ 0, %186 ], [ %208, %207 ]
  br i1 %189, label %194, label %207

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 %193
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi i64 [ 0, %194 ], [ %205, %196 ]
  %198 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %195, i64 0, i64 %197
  %199 = getelementptr inbounds %struct.gr_info, ptr %198, i64 0, i32 7
  store i32 0, ptr %199, align 4, !tbaa !84
  %200 = getelementptr inbounds %struct.gr_info, ptr %198, i64 0, i32 6
  %201 = load i32, ptr %200, align 8, !tbaa !85
  %202 = icmp ne i32 %201, 0
  %203 = getelementptr inbounds %struct.gr_info, ptr %198, i64 0, i32 5
  %204 = zext i1 %202 to i32
  store i32 %204, ptr %203, align 4, !tbaa !86
  %205 = add nuw nsw i64 %197, 1
  %206 = icmp eq i64 %205, %191
  br i1 %206, label %207, label %196, !llvm.loop !87

207:                                              ; preds = %196, %192
  %208 = add nuw nsw i64 %193, 1
  %209 = icmp eq i64 %208, %190
  br i1 %209, label %210, label %192, !llvm.loop !88

210:                                              ; preds = %207, %181
  call void @mdct_sub48(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull @l3_side) #18
  %211 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  %212 = load i32, ptr %211, align 4, !tbaa !14
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %222

214:                                              ; preds = %210
  %215 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 0, i32 0, i64 0, i32 0, i32 6), align 8, !tbaa !77
  %216 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 0, i32 0, i64 1, i32 0, i32 6), align 8, !tbaa !77
  %217 = icmp eq i32 %215, %216
  %218 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 1, i32 0, i64 0, i32 0, i32 6), align 8
  %219 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 1, i32 0, i64 1, i32 0, i32 6), align 8
  %220 = icmp eq i32 %218, %219
  %221 = select i1 %217, i1 %220, i1 false
  br label %222

222:                                              ; preds = %214, %210
  %223 = phi i1 [ %221, %214 ], [ %213, %210 ]
  br i1 %223, label %224, label %234

224:                                              ; preds = %222
  %225 = load double, ptr @lame_encode_frame.ms_ratio, align 16, !tbaa !69
  %226 = load double, ptr getelementptr inbounds ([2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 1), align 8, !tbaa !69
  %227 = fadd double %225, %226
  %228 = fadd double %182, %227
  %229 = load double, ptr %17, align 8, !tbaa !69
  %230 = fadd double %229, %228
  %231 = fmul double %230, 2.500000e-01
  %232 = fcmp olt double %231, 3.500000e-01
  br i1 %232, label %233, label %234

233:                                              ; preds = %224
  store i32 2, ptr %21, align 4, !tbaa !44
  br label %234

234:                                              ; preds = %224, %233, %222
  %235 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 10
  %236 = load i32, ptr %235, align 4, !tbaa !53
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  store i32 2, ptr %21, align 4, !tbaa !44
  br label %239

239:                                              ; preds = %238, %234
  %240 = load i32, ptr %21, align 4, !tbaa !44
  %241 = icmp eq i32 %240, 2
  %242 = select i1 %241, ptr %14, ptr %13
  %243 = select i1 %241, ptr %10, ptr %9
  %244 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 21
  %245 = load i32, ptr %244, align 8, !tbaa !19
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %239
  call void @VBR_iteration_loop(ptr noundef %0, ptr noundef nonnull %242, ptr noundef nonnull @lame_encode_frame.ms_ratio, ptr noundef nonnull %7, ptr noundef nonnull %243, ptr noundef nonnull @l3_side, ptr noundef nonnull %8, ptr noundef nonnull %11) #18
  br label %249

248:                                              ; preds = %239
  call void @iteration_loop(ptr noundef %0, ptr noundef nonnull %242, ptr noundef nonnull @lame_encode_frame.ms_ratio, ptr noundef nonnull %7, ptr noundef nonnull %243, ptr noundef nonnull @l3_side, ptr noundef nonnull %8, ptr noundef nonnull %11) #18
  br label %249

249:                                              ; preds = %248, %247
  call void @getframebits(ptr noundef %0, ptr noundef nonnull %16, ptr noundef nonnull %15) #18
  %250 = load i32, ptr %16, align 4, !tbaa !65
  call void @III_format_bitstream(ptr noundef %0, i32 noundef %250, ptr noundef nonnull %8, ptr noundef nonnull @l3_side, ptr noundef nonnull %11, ptr noundef nonnull @bs) #18
  %251 = load i64, ptr getelementptr inbounds (%struct.bit_stream_struc, ptr @bs, i64 0, i32 5), align 8, !tbaa !89
  %252 = load i64, ptr @lame_encode_frame.sentBits, align 8, !tbaa !71
  %253 = sub i64 %251, %252
  store i64 %253, ptr @lame_encode_frame.frameBits, align 8, !tbaa !71
  %254 = and i64 %253, 7
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %249
  %257 = load ptr, ptr @stderr, align 8, !tbaa !41
  %258 = lshr i64 %253, 3
  %259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %257, ptr noundef nonnull @.str.16, i64 noundef %253, i64 noundef %258, i64 noundef %254) #19
  br label %260

260:                                              ; preds = %256, %249
  %261 = load i64, ptr @lame_encode_frame.frameBits, align 8, !tbaa !71
  %262 = load i64, ptr @lame_encode_frame.sentBits, align 8, !tbaa !71
  %263 = add i64 %262, %261
  store i64 %263, ptr @lame_encode_frame.sentBits, align 8, !tbaa !71
  %264 = call i32 @copy_buffer(ptr noundef %4, i32 noundef %5, ptr noundef nonnull @bs) #18
  %265 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 5
  %266 = load i32, ptr %265, align 8, !tbaa !54
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %260
  %269 = load i64, ptr @lame_encode_frame.sentBits, align 8, !tbaa !71
  %270 = lshr i64 %269, 3
  %271 = trunc i64 %270 to i32
  call void @AddVbrFrame(i32 noundef %271) #18
  br label %272

272:                                              ; preds = %268, %260
  %273 = load i64, ptr %22, align 8, !tbaa !5
  %274 = add nsw i64 %273, 1
  store i64 %274, ptr %22, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 976, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 3904, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 3904, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 9216, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 18432, ptr nonnull %7) #18
  ret i32 %264
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare void @timestatus(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @L3psycho_anal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mdct_sub48(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @VBR_iteration_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @iteration_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @getframebits(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @III_format_bitstream(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @copy_buffer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @AddVbrFrame(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @fill_buffer_resample(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5, i32 noundef %6) local_unnamed_addr #9 {
  %8 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds [2 x i32], ptr @fill_buffer_resample.init, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !65
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  store i32 1, ptr %13, align 4, !tbaa !65
  %17 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %12
  store double 0.000000e+00, ptr %17, align 8, !tbaa !69
  %18 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %18, i8 0, i64 10, i1 false)
  br label %19

19:                                               ; preds = %16, %11, %7
  %20 = load i64, ptr %8, align 8, !tbaa !5
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = sext i32 %6 to i64
  %24 = getelementptr inbounds [2 x i32], ptr @fill_buffer_resample.init, i64 0, i64 %23
  store i32 0, ptr %24, align 4, !tbaa !65
  br label %25

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 49
  %27 = load float, ptr %26, align 8, !tbaa !23
  %28 = fpext float %27 to double
  %29 = fadd double %28, 5.000000e-01
  %30 = tail call double @llvm.floor.f64(double %29)
  %31 = fsub double %28, %30
  %32 = tail call double @llvm.fabs.f64(double %31)
  %33 = fcmp olt double %32, 1.000000e-04
  %34 = getelementptr i16, ptr %3, i64 1
  %35 = icmp sgt i32 %2, 0
  br i1 %35, label %36, label %145

36:                                               ; preds = %25
  %37 = sext i32 %6 to i64
  %38 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %37
  %39 = load double, ptr %38, align 8, !tbaa !69
  %40 = zext nneg i32 %2 to i64
  br label %41

41:                                               ; preds = %36, %135
  %42 = phi i64 [ 0, %36 ], [ %136, %135 ]
  %43 = trunc i64 %42 to i32
  %44 = sitofp i32 %43 to float
  %45 = fmul float %27, %44
  %46 = fpext float %45 to double
  %47 = fsub double %46, %39
  %48 = tail call double @llvm.floor.f64(double %47)
  %49 = fptosi double %48 to i32
  %50 = add nsw i32 %49, 2
  %51 = icmp slt i32 %50, %4
  br i1 %51, label %52, label %138

52:                                               ; preds = %41
  %53 = sitofp i32 %49 to double
  %54 = fadd double %39, %53
  %55 = fsub double %46, %54
  %56 = fadd double %55, -1.000000e+00
  %57 = icmp slt i32 %49, 0
  %58 = add nsw i32 %49, 5
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %37, i64 %59
  %61 = zext nneg i32 %49 to i64
  %62 = getelementptr i16, ptr %3, i64 %61
  %63 = select i1 %57, ptr %60, ptr %62
  %64 = load i16, ptr %63, align 2, !tbaa !91
  %65 = icmp slt i32 %49, -1
  %66 = add nsw i32 %49, 6
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %37, i64 %67
  %69 = sext i32 %49 to i64
  %70 = getelementptr i16, ptr %34, i64 %69
  %71 = select i1 %65, ptr %68, ptr %70
  %72 = load i16, ptr %71, align 2, !tbaa !91
  br i1 %33, label %73, label %82

73:                                               ; preds = %52
  %74 = sitofp i16 %72 to double
  %75 = sitofp i16 %64 to double
  %76 = fneg double %56
  %77 = fmul double %76, %75
  %78 = tail call double @llvm.fmuladd.f64(double %74, double %55, double %77)
  %79 = fadd double %78, 5.000000e-01
  %80 = tail call double @llvm.floor.f64(double %79)
  %81 = fptosi double %80 to i16
  br label %132

82:                                               ; preds = %52
  %83 = fadd double %55, 1.000000e+00
  %84 = fadd double %55, -2.000000e+00
  %85 = icmp slt i32 %49, 1
  %86 = add nsw i32 %49, 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %37, i64 %87
  %89 = getelementptr i16, ptr %62, i64 -1
  %90 = select i1 %85, ptr %88, ptr %89
  %91 = load i16, ptr %90, align 2, !tbaa !91
  %92 = sext i16 %91 to i32
  %93 = icmp slt i32 %49, -2
  %94 = add nsw i32 %49, 7
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %37, i64 %95
  %97 = zext nneg i32 %50 to i64
  %98 = getelementptr inbounds i16, ptr %3, i64 %97
  %99 = select i1 %93, ptr %96, ptr %98
  %100 = load i16, ptr %99, align 2, !tbaa !91
  %101 = sub nsw i32 0, %92
  %102 = sitofp i32 %101 to double
  %103 = fmul double %55, %102
  %104 = fmul double %56, %103
  %105 = fmul double %84, %104
  %106 = fdiv double %105, 6.000000e+00
  %107 = fadd double %106, 5.000000e-01
  %108 = sitofp i16 %64 to double
  %109 = fmul double %83, %108
  %110 = fmul double %56, %109
  %111 = fmul double %84, %110
  %112 = fmul double %111, 5.000000e-01
  %113 = fadd double %112, %107
  %114 = sitofp i16 %72 to double
  %115 = fmul double %83, %114
  %116 = fmul double %55, %115
  %117 = fmul double %84, %116
  %118 = fmul double %117, 5.000000e-01
  %119 = fsub double %113, %118
  %120 = sitofp i16 %100 to double
  %121 = fmul double %83, %120
  %122 = fmul double %55, %121
  %123 = fmul double %56, %122
  %124 = fdiv double %123, 6.000000e+00
  %125 = fadd double %124, %119
  %126 = tail call double @llvm.floor.f64(double %125)
  %127 = fptosi double %126 to i32
  %128 = icmp sgt i32 %127, 32767
  br i1 %128, label %132, label %129

129:                                              ; preds = %82
  %130 = tail call i32 @llvm.smax.i32(i32 %127, i32 -32767)
  %131 = trunc i32 %130 to i16
  br label %132

132:                                              ; preds = %129, %82, %73
  %133 = phi i16 [ %81, %73 ], [ 32767, %82 ], [ %131, %129 ]
  %134 = getelementptr inbounds i16, ptr %1, i64 %42
  store i16 %133, ptr %134, align 2, !tbaa !91
  br i1 %51, label %135, label %140

135:                                              ; preds = %132
  %136 = add nuw nsw i64 %42, 1
  %137 = icmp eq i64 %136, %40
  br i1 %137, label %142, label %41, !llvm.loop !93

138:                                              ; preds = %41
  %139 = trunc i64 %42 to i32
  br label %142

140:                                              ; preds = %132
  %141 = trunc i64 %42 to i32
  br label %142

142:                                              ; preds = %135, %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ], [ %2, %135 ]
  %144 = add i32 %49, 2
  br label %145

145:                                              ; preds = %142, %25
  %146 = phi i32 [ 0, %25 ], [ %143, %142 ]
  %147 = phi i32 [ 2, %25 ], [ %144, %142 ]
  %148 = tail call i32 @llvm.smin.i32(i32 %147, i32 %4)
  store i32 %148, ptr %5, align 4, !tbaa !65
  %149 = sitofp i32 %148 to float
  %150 = sitofp i32 %146 to float
  %151 = fneg float %150
  %152 = tail call float @llvm.fmuladd.f32(float %151, float %27, float %149)
  %153 = fpext float %152 to double
  %154 = sext i32 %6 to i64
  %155 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !69
  %157 = fadd double %156, %153
  store double %157, ptr %155, align 8, !tbaa !69
  %158 = getelementptr i16, ptr %3, i64 -5
  %159 = sext i32 %148 to i64
  %160 = getelementptr i16, ptr %158, i64 %159
  br label %161

161:                                              ; preds = %145, %161
  %162 = phi i64 [ 0, %145 ], [ %166, %161 ]
  %163 = getelementptr i16, ptr %160, i64 %162
  %164 = load i16, ptr %163, align 2, !tbaa !91
  %165 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %154, i64 %162
  store i16 %164, ptr %165, align 2, !tbaa !91
  %166 = add nuw nsw i64 %162, 1
  %167 = icmp eq i64 %166, 5
  br i1 %167, label %168, label %161, !llvm.loop !94

168:                                              ; preds = %161
  ret i32 %146
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @fill_buffer(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #10 {
  %6 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %3, i64 %8, i1 false)
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define dso_local i32 @lame_encode_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x ptr], align 16
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  store ptr %1, ptr %7, align 16, !tbaa !41
  %9 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  store ptr %2, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 42
  %11 = load i32, ptr %10, align 4, !tbaa !22
  %12 = add nsw i32 %11, 752
  %13 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %14 = load i64, ptr %13, align 8, !tbaa !5
  %15 = icmp ne i64 %14, 0
  %16 = load i1, ptr @lame_encode_buffer.frame_buffered, align 4
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12224) @mfbuf, i8 0, i64 12224, i1 false)
  store i1 true, ptr @lame_encode_buffer.frame_buffered, align 4
  store i32 1088, ptr @mf_samples_to_encode, align 4, !tbaa !65
  store i32 752, ptr @mf_size, align 4, !tbaa !65
  br label %19

19:                                               ; preds = %18, %6
  %20 = load i64, ptr %13, align 8, !tbaa !5
  %21 = icmp eq i64 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i1 false, ptr @lame_encode_buffer.frame_buffered, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !13
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %29 = load i32, ptr %28, align 4, !tbaa !15
  %30 = icmp eq i32 %29, 1
  %31 = icmp sgt i32 %3, 0
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = zext i32 %3 to i64
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %46, %35 ]
  %37 = getelementptr inbounds i16, ptr %1, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !91
  %39 = sext i16 %38 to i32
  %40 = getelementptr inbounds i16, ptr %2, i64 %36
  %41 = load i16, ptr %40, align 2, !tbaa !91
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %42, %39
  %44 = sdiv i32 %43, 2
  %45 = trunc i32 %44 to i16
  store i16 %45, ptr %37, align 2, !tbaa !91
  store i16 0, ptr %40, align 2, !tbaa !91
  %46 = add nuw nsw i64 %36, 1
  %47 = icmp eq i64 %46, %34
  br i1 %47, label %48, label %35, !llvm.loop !95

48:                                               ; preds = %35, %27, %23
  %49 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %50 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 49
  %51 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  br label %52

52:                                               ; preds = %129, %48
  %53 = phi ptr [ %4, %48 ], [ %130, %129 ]
  %54 = phi i32 [ 0, %48 ], [ %131, %129 ]
  %55 = phi i32 [ %3, %48 ], [ %91, %129 ]
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %133

57:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store i32 0, ptr %8, align 4, !tbaa !65
  %58 = load i32, ptr %49, align 4, !tbaa !15
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %57, %77
  %61 = phi i64 [ %84, %77 ], [ 0, %57 ]
  %62 = load float, ptr %50, align 8, !tbaa !23
  %63 = fcmp une float %62, 1.000000e+00
  %64 = load i32, ptr @mf_size, align 4, !tbaa !65
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %61, i64 %65
  %67 = load i32, ptr %10, align 4, !tbaa !22
  %68 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %61
  %69 = load ptr, ptr %68, align 8, !tbaa !41
  br i1 %63, label %70, label %73

70:                                               ; preds = %60
  %71 = trunc i64 %61 to i32
  %72 = call i32 @fill_buffer_resample(ptr noundef %0, ptr noundef nonnull %66, i32 noundef %67, ptr noundef %69, i32 noundef %55, ptr noundef nonnull %8, i32 noundef %71)
  br label %77

73:                                               ; preds = %60
  %74 = tail call noundef i32 @llvm.smin.i32(i32 %67, i32 %55)
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %66, ptr align 1 %69, i64 %76, i1 false)
  store i32 %74, ptr %8, align 4, !tbaa !65
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i32 [ %72, %70 ], [ %74, %73 ]
  %79 = load i32, ptr %8, align 4, !tbaa !65
  %80 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %61
  %81 = load ptr, ptr %80, align 8, !tbaa !41
  %82 = sext i32 %79 to i64
  %83 = getelementptr inbounds i16, ptr %81, i64 %82
  store ptr %83, ptr %80, align 8, !tbaa !41
  %84 = add nuw nsw i64 %61, 1
  %85 = load i32, ptr %49, align 4, !tbaa !15
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %84, %86
  br i1 %87, label %60, label %88, !llvm.loop !96

88:                                               ; preds = %77, %57
  %89 = phi i32 [ 0, %57 ], [ %78, %77 ]
  %90 = load i32, ptr %8, align 4, !tbaa !65
  %91 = sub nsw i32 %55, %90
  %92 = load i32, ptr @mf_size, align 4, !tbaa !65
  %93 = add nsw i32 %92, %89
  store i32 %93, ptr @mf_size, align 4, !tbaa !65
  %94 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %95 = add nsw i32 %94, %89
  store i32 %95, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %96 = icmp slt i32 %93, %12
  br i1 %96, label %129, label %97

97:                                               ; preds = %88
  %98 = tail call i32 @lame_encode_frame(ptr noundef %0, ptr noundef nonnull @mfbuf, ptr noundef nonnull getelementptr inbounds ([2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1), i32 poison, ptr noundef %53, i32 noundef %5)
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %129, label %100

100:                                              ; preds = %97
  %101 = sext i32 %98 to i64
  %102 = getelementptr inbounds i8, ptr %53, i64 %101
  %103 = add nsw i32 %98, %54
  %104 = load i32, ptr %10, align 4, !tbaa !22
  %105 = load i32, ptr @mf_size, align 4, !tbaa !65
  %106 = sub i32 %105, %104
  store i32 %106, ptr @mf_size, align 4, !tbaa !65
  %107 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %108 = sub nsw i32 %107, %104
  store i32 %108, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %109 = load i32, ptr %51, align 4, !tbaa !15
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %100
  %112 = icmp sgt i32 %106, 0
  %113 = sext i32 %104 to i64
  %114 = zext nneg i32 %109 to i64
  %115 = zext nneg i32 %106 to i64
  br label %116

116:                                              ; preds = %111, %126
  %117 = phi i64 [ 0, %111 ], [ %127, %126 ]
  br i1 %112, label %118, label %126

118:                                              ; preds = %116, %118
  %119 = phi i64 [ %124, %118 ], [ 0, %116 ]
  %120 = add nsw i64 %119, %113
  %121 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %117, i64 %120
  %122 = load i16, ptr %121, align 2, !tbaa !91
  %123 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %117, i64 %119
  store i16 %122, ptr %123, align 2, !tbaa !91
  %124 = add nuw nsw i64 %119, 1
  %125 = icmp eq i64 %124, %115
  br i1 %125, label %126, label %118, !llvm.loop !97

126:                                              ; preds = %118, %116
  %127 = add nuw nsw i64 %117, 1
  %128 = icmp eq i64 %127, %114
  br i1 %128, label %129, label %116, !llvm.loop !98

129:                                              ; preds = %126, %100, %88, %97
  %130 = phi ptr [ %53, %97 ], [ %53, %88 ], [ %102, %100 ], [ %102, %126 ]
  %131 = phi i32 [ %54, %97 ], [ %54, %88 ], [ %103, %100 ], [ %103, %126 ]
  %132 = phi i1 [ false, %97 ], [ true, %88 ], [ true, %100 ], [ true, %126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  br i1 %132, label %52, label %133, !llvm.loop !99

133:                                              ; preds = %52, %129
  %134 = phi i32 [ -1, %129 ], [ %54, %52 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  ret i32 %134
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lame_encode_buffer_interleaved(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 42
  %7 = load i32, ptr %6, align 4, !tbaa !22
  %8 = add nsw i32 %7, 752
  %9 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !13
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call i32 @lame_encode_buffer(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %156

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 49
  %16 = load float, ptr %15, align 8, !tbaa !23
  %17 = fcmp une float %16, 1.000000e+00
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = sext i32 %2 to i64
  %20 = shl nsw i64 %19, 1
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #22
  %22 = tail call noalias ptr @malloc(i64 noundef %20) #22
  %23 = icmp eq ptr %21, null
  %24 = icmp eq ptr %22, null
  %25 = or i1 %23, %24
  br i1 %25, label %156, label %26

26:                                               ; preds = %18
  %27 = icmp sgt i32 %2, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %26
  %29 = zext nneg i32 %2 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %40, %30 ]
  %32 = shl nuw nsw i64 %31, 1
  %33 = getelementptr inbounds i16, ptr %1, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !91
  %35 = getelementptr inbounds i16, ptr %21, i64 %31
  store i16 %34, ptr %35, align 2, !tbaa !91
  %36 = or disjoint i64 %32, 1
  %37 = getelementptr inbounds i16, ptr %1, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !91
  %39 = getelementptr inbounds i16, ptr %22, i64 %31
  store i16 %38, ptr %39, align 2, !tbaa !91
  %40 = add nuw nsw i64 %31, 1
  %41 = icmp eq i64 %40, %29
  br i1 %41, label %42, label %30, !llvm.loop !100

42:                                               ; preds = %30, %26
  %43 = tail call i32 @lame_encode_buffer(ptr noundef %0, ptr noundef %21, ptr noundef %22, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  tail call void @free(ptr noundef %21) #18
  tail call void @free(ptr noundef %22) #18
  br label %156

44:                                               ; preds = %14
  %45 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %46 = load i64, ptr %45, align 8, !tbaa !5
  %47 = icmp ne i64 %46, 0
  %48 = load i1, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12224) @mfbuf, i8 0, i64 12224, i1 false)
  store i1 true, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  store i32 1088, ptr @mf_samples_to_encode, align 4, !tbaa !65
  store i32 752, ptr @mf_size, align 4, !tbaa !65
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i64, ptr %45, align 8, !tbaa !5
  %53 = icmp eq i64 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i1 false, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, ptr %9, align 8, !tbaa !13
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %60 = load i32, ptr %59, align 4, !tbaa !15
  %61 = icmp eq i32 %60, 1
  %62 = icmp sgt i32 %2, 0
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = zext i32 %2 to i64
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ 0, %64 ], [ %79, %66 ]
  %68 = shl nuw nsw i64 %67, 1
  %69 = getelementptr inbounds i16, ptr %1, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !91
  %71 = sext i16 %70 to i32
  %72 = or disjoint i64 %68, 1
  %73 = getelementptr inbounds i16, ptr %1, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !91
  %75 = sext i16 %74 to i32
  %76 = add nsw i32 %75, %71
  %77 = sdiv i32 %76, 2
  %78 = trunc i32 %77 to i16
  store i16 %78, ptr %69, align 2, !tbaa !91
  store i16 0, ptr %73, align 2, !tbaa !91
  %79 = add nuw nsw i64 %67, 1
  %80 = icmp eq i64 %79, %65
  br i1 %80, label %81, label %66, !llvm.loop !101

81:                                               ; preds = %66, %58, %55
  %82 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  br label %83

83:                                               ; preds = %152, %81
  %84 = phi i32 [ 0, %81 ], [ %153, %152 ]
  %85 = phi ptr [ %3, %81 ], [ %154, %152 ]
  %86 = phi i32 [ %2, %81 ], [ %114, %152 ]
  %87 = phi ptr [ %1, %81 ], [ %113, %152 ]
  %88 = icmp sgt i32 %86, 0
  br i1 %88, label %89, label %156

89:                                               ; preds = %83
  %90 = load i32, ptr %6, align 4, !tbaa !22
  %91 = tail call i32 @llvm.smin.i32(i32 %90, i32 %86)
  %92 = icmp sgt i32 %90, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %89
  %94 = load i32, ptr @mf_size, align 4, !tbaa !65
  %95 = sext i32 %94 to i64
  %96 = zext nneg i32 %91 to i64
  br label %97

97:                                               ; preds = %93, %97
  %98 = phi i64 [ 0, %93 ], [ %108, %97 ]
  %99 = shl nuw nsw i64 %98, 1
  %100 = getelementptr inbounds i16, ptr %87, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !91
  %102 = add nsw i64 %98, %95
  %103 = getelementptr inbounds [3056 x i16], ptr @mfbuf, i64 0, i64 %102
  store i16 %101, ptr %103, align 2, !tbaa !91
  %104 = or disjoint i64 %99, 1
  %105 = getelementptr inbounds i16, ptr %87, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !91
  %107 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1, i64 %102
  store i16 %106, ptr %107, align 2, !tbaa !91
  %108 = add nuw nsw i64 %98, 1
  %109 = icmp eq i64 %108, %96
  br i1 %109, label %110, label %97, !llvm.loop !102

110:                                              ; preds = %97, %89
  %111 = shl nsw i32 %91, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i16, ptr %87, i64 %112
  %114 = sub nsw i32 %86, %91
  %115 = load i32, ptr @mf_size, align 4, !tbaa !65
  %116 = add nsw i32 %115, %91
  store i32 %116, ptr @mf_size, align 4, !tbaa !65
  %117 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %118 = add nsw i32 %117, %91
  store i32 %118, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %119 = icmp slt i32 %116, %8
  br i1 %119, label %152, label %120

120:                                              ; preds = %110
  %121 = tail call i32 @lame_encode_frame(ptr noundef %0, ptr noundef nonnull @mfbuf, ptr noundef nonnull getelementptr inbounds ([2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1), i32 poison, ptr noundef %85, i32 noundef %4)
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %152, label %123

123:                                              ; preds = %120
  %124 = sext i32 %121 to i64
  %125 = getelementptr inbounds i8, ptr %85, i64 %124
  %126 = add nsw i32 %121, %84
  %127 = load i32, ptr %6, align 4, !tbaa !22
  %128 = load i32, ptr @mf_size, align 4, !tbaa !65
  %129 = sub i32 %128, %127
  store i32 %129, ptr @mf_size, align 4, !tbaa !65
  %130 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %131 = sub nsw i32 %130, %127
  store i32 %131, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %132 = load i32, ptr %82, align 4, !tbaa !15
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %123
  %135 = icmp sgt i32 %129, 0
  %136 = sext i32 %127 to i64
  %137 = zext nneg i32 %132 to i64
  %138 = zext nneg i32 %129 to i64
  br label %139

139:                                              ; preds = %134, %149
  %140 = phi i64 [ 0, %134 ], [ %150, %149 ]
  br i1 %135, label %141, label %149

141:                                              ; preds = %139, %141
  %142 = phi i64 [ %147, %141 ], [ 0, %139 ]
  %143 = add nsw i64 %142, %136
  %144 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %140, i64 %143
  %145 = load i16, ptr %144, align 2, !tbaa !91
  %146 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %140, i64 %142
  store i16 %145, ptr %146, align 2, !tbaa !91
  %147 = add nuw nsw i64 %142, 1
  %148 = icmp eq i64 %147, %138
  br i1 %148, label %149, label %141, !llvm.loop !103

149:                                              ; preds = %141, %139
  %150 = add nuw nsw i64 %140, 1
  %151 = icmp eq i64 %150, %137
  br i1 %151, label %152, label %139, !llvm.loop !104

152:                                              ; preds = %149, %123, %110, %120
  %153 = phi i32 [ %84, %120 ], [ %84, %110 ], [ %126, %123 ], [ %126, %149 ]
  %154 = phi ptr [ %85, %120 ], [ %85, %110 ], [ %125, %123 ], [ %125, %149 ]
  %155 = phi i1 [ false, %120 ], [ true, %110 ], [ true, %123 ], [ true, %149 ]
  br i1 %155, label %83, label %156, !llvm.loop !105

156:                                              ; preds = %83, %152, %42, %18, %12
  %157 = phi i32 [ %13, %12 ], [ %43, %42 ], [ -1, %18 ], [ -1, %152 ], [ %84, %83 ]
  ret i32 %157
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @lame_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %6 = getelementptr inbounds [1152 x i16], ptr %1, i64 1
  %7 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = mul nsw i32 %8, 576
  %10 = tail call i32 @lame_encode_buffer(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %9, ptr noundef %2, i32 noundef %3)
  store i32 %5, ptr @mf_samples_to_encode, align 4, !tbaa !65
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @lame_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 36
  store i32 0, ptr %2, align 4, !tbaa !106
  %3 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 33
  store i32 0, ptr %3, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 34
  store i32 0, ptr %4, align 4, !tbaa !108
  %5 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 5
  store i32 1, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 35
  store float 0.000000e+00, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 17
  %8 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  store i64 0, ptr %8, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !59
  %10 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i32 5, ptr %10, align 4, !tbaa !52
  %11 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 29
  store i32 0, ptr %11, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 59
  store i32 0, ptr %12, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 25
  store i32 0, ptr %13, align 8, !tbaa !28
  %14 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 26
  store i32 0, ptr %14, align 4, !tbaa !31
  %15 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 27
  store i32 -1, ptr %15, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 28
  store i32 -1, ptr %16, align 4, !tbaa !33
  %17 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 53
  %18 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store i32 32, ptr %18, align 8, !tbaa !37
  %19 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 58
  store i32 -1, ptr %19, align 4, !tbaa !42
  %20 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 37
  store i32 0, ptr %20, align 8, !tbaa !111
  %21 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 49
  store float 1.000000e+00, ptr %21, align 8, !tbaa !23
  %22 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 15
  store i32 2, ptr %22, align 8, !tbaa !73
  %23 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 44
  store i32 0, ptr %23, align 4, !tbaa !72
  %24 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 30
  store i32 0, ptr %24, align 4, !tbaa !112
  %25 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 7
  store i32 0, ptr %25, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 40
  store i64 0, ptr %26, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 21
  store i32 0, ptr %27, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  store i32 4, ptr %28, align 4, !tbaa !26
  %29 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 23
  store i32 0, ptr %29, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 24
  store i32 0, ptr %30, align 4, !tbaa !48
  %31 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 47
  store i32 1, ptr %31, align 8, !tbaa !51
  %32 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 48
  store i32 13, ptr %32, align 4, !tbaa !49
  %33 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  store i32 1, ptr %33, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 8
  store i32 1, ptr %34, align 4, !tbaa !14
  %35 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 9
  %36 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  store i32 1, ptr %36, align 8, !tbaa !113
  %37 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 16
  store i32 0, ptr %37, align 4, !tbaa !114
  %38 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 14
  store i32 0, ptr %38, align 4, !tbaa !115
  %39 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 38
  store i32 0, ptr %39, align 4, !tbaa !116
  %40 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 2
  store i32 44100, ptr %40, align 4, !tbaa !17
  %41 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  store i32 0, ptr %41, align 8, !tbaa !16
  %42 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 1
  store i32 2, ptr %42, align 8, !tbaa !13
  store i64 4294967295, ptr %0, align 8, !tbaa !25
  %43 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  store i32 0, ptr @id3tag, align 4, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lame_encode_finish(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x [1152 x i16]], align 16
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4608) %4, i8 0, i64 4608, i1 false)
  %5 = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  %9 = getelementptr inbounds [1152 x i16], ptr %4, i64 1
  %10 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %11 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 42
  br label %12

12:                                               ; preds = %7, %22
  %13 = phi i32 [ %5, %7 ], [ %27, %22 ]
  %14 = phi i32 [ 0, %7 ], [ %25, %22 ]
  %15 = phi ptr [ %1, %7 ], [ %24, %22 ]
  %16 = sub nsw i32 %2, %14
  %17 = select i1 %8, i32 0, i32 %16
  %18 = load i32, ptr %10, align 8, !tbaa !20
  %19 = mul nsw i32 %18, 576
  %20 = call i32 @lame_encode_buffer(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %9, i32 noundef %19, ptr noundef %15, i32 noundef %17)
  store i32 %13, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %61, label %22

22:                                               ; preds = %12
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds i8, ptr %15, i64 %23
  %25 = add nsw i32 %20, %14
  %26 = load i32, ptr %11, align 4, !tbaa !22
  %27 = sub nsw i32 %13, %26
  store i32 %27, ptr @mf_samples_to_encode, align 4, !tbaa !65
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %12, label %29, !llvm.loop !117

29:                                               ; preds = %22, %3
  %30 = phi ptr [ %1, %3 ], [ %24, %22 ]
  %31 = phi i32 [ 0, %3 ], [ %25, %22 ]
  %32 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %33 = load i64, ptr %32, align 8, !tbaa !5
  %34 = add nsw i64 %33, -1
  store i64 %34, ptr %32, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !59
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !75
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !16
  %45 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 40
  %46 = load i64, ptr %45, align 8, !tbaa !24
  %47 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 42
  %48 = load i32, ptr %47, align 4, !tbaa !22
  call void @timestatus(i32 noundef %44, i64 noundef %34, i64 noundef %46, i32 noundef %48) #18
  %49 = load ptr, ptr @stderr, align 8, !tbaa !41
  %50 = call i32 @fputc(i32 10, ptr %49)
  %51 = load ptr, ptr @stderr, align 8, !tbaa !41
  %52 = call i32 @fflush(ptr noundef %51)
  br label %53

53:                                               ; preds = %42, %38, %29
  call void @III_FlushBitstream() #18
  %54 = sub nsw i32 %2, %31
  %55 = icmp eq i32 %2, 0
  %56 = select i1 %55, i32 0, i32 %54
  %57 = call i32 @copy_buffer(ptr noundef %30, i32 noundef %56, ptr noundef nonnull @bs) #18
  %58 = icmp eq i32 %57, -1
  %59 = add nsw i32 %57, %31
  %60 = select i1 %58, i32 -1, i32 %59
  br label %61

61:                                               ; preds = %12, %53
  %62 = phi i32 [ %60, %53 ], [ -1, %12 ]
  call void @desalloc_buffer(ptr noundef nonnull @bs) #18
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %4) #18
  ret i32 %62
}

declare void @desalloc_buffer(ptr noundef) local_unnamed_addr #3

declare void @III_FlushBitstream() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @lame_mp3_tags(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %7 = load i32, ptr %6, align 4, !tbaa !26
  %8 = mul nsw i32 %7, 100
  %9 = sdiv i32 %8, 9
  %10 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 32
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = sub nsw i32 1, %13
  %15 = tail call i32 @PutVbrTag(ptr noundef %11, i32 noundef %9, i32 noundef %14) #18
  br label %16

16:                                               ; preds = %5, %1
  %17 = load i32, ptr @id3tag, align 4, !tbaa !57
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  tail call void @id3_buildtag(ptr noundef nonnull @id3tag) #18
  %20 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 32
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = tail call i32 @id3_writetag(ptr noundef %21, ptr noundef nonnull @id3tag) #18
  br label %23

23:                                               ; preds = %19, %16
  ret void
}

declare i32 @PutVbrTag(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @id3_buildtag(ptr noundef) local_unnamed_addr #3

declare i32 @id3_writetag(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @lame_version(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @get_lame_version() #18
  %4 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 20) #18
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #15

declare ptr @get_lame_version() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0) }

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
!13 = !{!6, !10, i64 8}
!14 = !{!6, !10, i64 36}
!15 = !{!6, !10, i64 204}
!16 = !{!6, !10, i64 16}
!17 = !{!6, !10, i64 12}
!18 = !{!6, !10, i64 48}
!19 = !{!6, !10, i64 88}
!20 = !{!6, !10, i64 200}
!21 = !{!6, !10, i64 184}
!22 = !{!6, !10, i64 188}
!23 = !{!6, !12, i64 216}
!24 = !{!6, !7, i64 176}
!25 = !{!6, !7, i64 0}
!26 = !{!6, !10, i64 92}
!27 = !{!6, !10, i64 40}
!28 = !{!6, !10, i64 104}
!29 = !{!6, !12, i64 232}
!30 = !{!6, !12, i64 236}
!31 = !{!6, !10, i64 108}
!32 = !{!6, !12, i64 240}
!33 = !{!6, !10, i64 116}
!34 = !{!6, !12, i64 244}
!35 = !{!6, !10, i64 112}
!36 = !{!6, !10, i64 256}
!37 = !{!6, !10, i64 248}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!11, !11, i64 0}
!42 = !{!6, !10, i64 252}
!43 = distinct !{!43, !40}
!44 = !{!6, !10, i64 228}
!45 = !{!6, !10, i64 224}
!46 = !{!6, !10, i64 192}
!47 = !{!6, !10, i64 220}
!48 = !{!6, !10, i64 100}
!49 = !{!6, !10, i64 212}
!50 = !{!6, !10, i64 96}
!51 = !{!6, !10, i64 208}
!52 = !{!6, !10, i64 28}
!53 = !{!6, !10, i64 44}
!54 = !{!6, !10, i64 24}
!55 = !{!6, !11, i64 136}
!56 = !{!8, !8, i64 0}
!57 = !{!58, !10, i64 0}
!58 = !{!"", !10, i64 0, !10, i64 4, !8, i64 8, !8, i64 39, !8, i64 70, !8, i64 101, !8, i64 106, !8, i64 137, !8, i64 265, !8, i64 266}
!59 = !{!6, !10, i64 20}
!60 = !{!6, !10, i64 272}
!61 = !{!6, !10, i64 260}
!62 = !{!6, !10, i64 264}
!63 = !{!6, !10, i64 268}
!64 = !{!6, !10, i64 276}
!65 = !{!10, !10, i64 0}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40}
!68 = !{!6, !11, i64 128}
!69 = !{!70, !70, i64 0}
!70 = !{!"double", !8, i64 0}
!71 = !{!7, !7, i64 0}
!72 = !{!6, !10, i64 196}
!73 = !{!6, !10, i64 64}
!74 = !{!6, !10, i64 72}
!75 = !{!6, !10, i64 32}
!76 = distinct !{!76, !40}
!77 = !{!78, !10, i64 24}
!78 = !{!"gr_info_ss", !79, i64 0}
!79 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !8, i64 32, !8, i64 44, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !11, i64 96, !8, i64 104}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = distinct !{!82, !40}
!83 = distinct !{!83, !40}
!84 = !{!79, !10, i64 28}
!85 = !{!79, !10, i64 24}
!86 = !{!79, !10, i64 20}
!87 = distinct !{!87, !40}
!88 = distinct !{!88, !40}
!89 = !{!90, !7, i64 40}
!90 = !{!"bit_stream_struc", !11, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !10, i64 32, !7, i64 40, !10, i64 48, !10, i64 52}
!91 = !{!92, !92, i64 0}
!92 = !{!"short", !8, i64 0}
!93 = distinct !{!93, !40}
!94 = distinct !{!94, !40}
!95 = distinct !{!95, !40}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !40}
!98 = distinct !{!98, !40}
!99 = distinct !{!99, !40}
!100 = distinct !{!100, !40}
!101 = distinct !{!101, !40}
!102 = distinct !{!102, !40}
!103 = distinct !{!103, !40}
!104 = distinct !{!104, !40}
!105 = distinct !{!105, !40}
!106 = !{!6, !10, i64 156}
!107 = !{!6, !10, i64 144}
!108 = !{!6, !10, i64 148}
!109 = !{!6, !12, i64 152}
!110 = !{!6, !10, i64 120}
!111 = !{!6, !10, i64 160}
!112 = !{!6, !10, i64 124}
!113 = !{!6, !10, i64 56}
!114 = !{!6, !10, i64 68}
!115 = !{!6, !10, i64 60}
!116 = !{!6, !10, i64 164}
!117 = distinct !{!117, !40}
