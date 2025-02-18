; ModuleID = 'blender/source/blender/imbuf/intern/png.c'
source_filename = "blender/source/blender/imbuf/intern/png.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.png_text_struct = type { i32, ptr, ptr, i64, i64, ptr, ptr }
%struct.ImMetaData = type { ptr, ptr, ptr, ptr, i32 }
%struct.PNGReadStruct = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"<memory>\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"imb_savepng: Unsupported bytes per pixel: %d for file: '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1.5.10\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"imb_savepng: Cannot png_create_write_struct for file: '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"imb_savepng: Cannot png_create_info_struct for file: '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"imb_savepng: Cannot setjmp for file: '%s'\0A\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"png 16bit pixels\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"png 8bit pixels\00", align 1
@.str.8 = private unnamed_addr constant [87 x i8] c"imb_savepng: Cannot allocate pixels array of %dx%d, %d bytes per pixel for file: '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [49 x i8] c"imb_savepng: Cannot open file for writing: '%s'\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"png_metadata\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"row_pointers\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"imb_savepng: Cannot allocate row-pointers array for file '%s'\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"pixels\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [18 x i8] c"libpng error: %s\0A\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"iCCP\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"libpng warning: %s\0A\00", align 1
@str = private unnamed_addr constant [39 x i8] c"Couldn't allocate memory for PNG image\00", align 1
@str.27 = private unnamed_addr constant [35 x i8] c"Cannot allocate row-pointers array\00", align 1
@str.28 = private unnamed_addr constant [29 x i8] c"Cannot allocate pixels array\00", align 1
@str.29 = private unnamed_addr constant [25 x i8] c"PNG format not supported\00", align 1
@str.30 = private unnamed_addr constant [30 x i8] c"Cannot png_create_info_struct\00", align 1
@str.31 = private unnamed_addr constant [30 x i8] c"Cannot png_create_read_struct\00", align 1
@str.32 = private unnamed_addr constant [31 x i8] c"Reached EOF while decoding PNG\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @imb_is_a_png(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @png_sig_cmp(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 8) #13
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ %6, %3 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @png_sig_cmp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @imb_savepng(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 4, i32 %12
  %15 = and i32 %7, 255
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %16, 0x402638E220000000
  %18 = fptosi float %17 to i32
  %19 = call i32 @llvm.smin.i32(i32 %18, i32 9)
  %20 = call i32 @llvm.smax.i32(i32 %19, i32 0)
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @linearrgb_to_srgb, ptr @channel_colormanage_noop
  %25 = and i32 %2, 16
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr %1, ptr @.str
  %28 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %29 = load i8, ptr %28, align 8, !tbaa !46
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %30, 7
  %32 = lshr i32 %31, 3
  %33 = icmp ugt i8 %29, 32
  %34 = icmp eq i32 %32, 2
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %32, ptr noundef %27)
  br label %734

38:                                               ; preds = %3
  %39 = call noalias ptr @png_create_write_struct(ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null) #13
  store ptr %39, ptr %4, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %27)
  br label %734

43:                                               ; preds = %38
  %44 = call noalias ptr @png_create_info_struct(ptr noundef nonnull %39) #13
  store ptr %44, ptr %5, align 8, !tbaa !47
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef null) #13
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %27)
  br label %734

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 8, !tbaa !47
  %50 = call ptr @png_set_longjmp_fn(ptr noundef %49, ptr noundef nonnull @longjmp, i64 noundef 200) #13
  %51 = call i32 @_setjmp(ptr noundef %50) #14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %27)
  br label %734

55:                                               ; preds = %48
  %56 = and i32 %7, 1024
  %57 = icmp eq i32 %56, 0
  %58 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %59 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !49
  %63 = mul i32 %60, %32
  %64 = mul i32 %63, %62
  %65 = sext i32 %64 to i64
  br i1 %57, label %69, label %66

66:                                               ; preds = %55
  %67 = shl nsw i64 %65, 1
  %68 = call ptr %58(i64 noundef %67, ptr noundef nonnull @.str.6) #13
  br label %71

69:                                               ; preds = %55
  %70 = call ptr %58(i64 noundef %65, ptr noundef nonnull @.str.7) #13
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi ptr [ %68, %66 ], [ null, %69 ]
  %73 = phi ptr [ null, %66 ], [ %70, %69 ]
  %74 = icmp eq ptr %73, null
  %75 = icmp eq ptr %72, null
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %78 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !48
  %80 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !49
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %79, i32 noundef %81, i32 noundef %32, ptr noundef %27)
  br label %734

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !50
  %86 = load ptr, ptr %8, align 8, !tbaa !43
  switch i32 %32, label %581 [
    i32 4, label %87
    i32 3, label %281
    i32 1, label %455
  ]

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !48
  %90 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !49
  %92 = mul nsw i32 %91, %89
  %93 = icmp sgt i32 %92, 0
  br i1 %57, label %262, label %94

94:                                               ; preds = %87
  br i1 %10, label %235, label %95

95:                                               ; preds = %94
  switch i32 %14, label %213 [
    i32 4, label %96
    i32 3, label %169
  ]

96:                                               ; preds = %95
  br i1 %93, label %97, label %581

97:                                               ; preds = %96, %162
  %98 = phi i32 [ %167, %162 ], [ %92, %96 ]
  %99 = phi ptr [ %166, %162 ], [ %86, %96 ]
  %100 = phi ptr [ %165, %162 ], [ %72, %96 ]
  %101 = getelementptr inbounds float, ptr %99, i64 3
  %102 = load float, ptr %101, align 4, !tbaa !51
  %103 = fcmp oeq float %102, 0.000000e+00
  %104 = fcmp oeq float %102, 1.000000e+00
  %105 = or i1 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load float, ptr %99, align 4, !tbaa !51
  %108 = getelementptr inbounds float, ptr %99, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !51
  %110 = getelementptr inbounds float, ptr %99, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !51
  br label %122

112:                                              ; preds = %97
  %113 = fdiv float 1.000000e+00, %102
  %114 = load float, ptr %99, align 4, !tbaa !51
  %115 = fmul float %113, %114
  %116 = getelementptr inbounds float, ptr %99, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !51
  %118 = fmul float %113, %117
  %119 = getelementptr inbounds float, ptr %99, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !51
  %121 = fmul float %113, %120
  br label %122

122:                                              ; preds = %106, %112
  %123 = phi float [ %111, %106 ], [ %121, %112 ]
  %124 = phi float [ %109, %106 ], [ %118, %112 ]
  %125 = phi float [ %107, %106 ], [ %115, %112 ]
  %126 = call float %24(float noundef %125) #13, !callees !52
  %127 = fcmp ult float %126, 0x3FEFFFF000000000
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = fcmp ugt float %126, 0.000000e+00
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = call float @llvm.fmuladd.f32(float %126, float 6.553500e+04, float 5.000000e-01)
  %132 = fptoui float %131 to i16
  br label %133

133:                                              ; preds = %122, %128, %130
  %134 = phi i16 [ -1, %122 ], [ %132, %130 ], [ 0, %128 ]
  store i16 %134, ptr %100, align 2, !tbaa !53
  %135 = call float %24(float noundef %124) #13, !callees !52
  %136 = fcmp ult float %135, 0x3FEFFFF000000000
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = fcmp ugt float %135, 0.000000e+00
  br i1 %138, label %139, label %142

139:                                              ; preds = %137
  %140 = call float @llvm.fmuladd.f32(float %135, float 6.553500e+04, float 5.000000e-01)
  %141 = fptoui float %140 to i16
  br label %142

142:                                              ; preds = %133, %137, %139
  %143 = phi i16 [ -1, %133 ], [ %141, %139 ], [ 0, %137 ]
  %144 = getelementptr inbounds i16, ptr %100, i64 1
  store i16 %143, ptr %144, align 2, !tbaa !53
  %145 = call float %24(float noundef %123) #13, !callees !52
  %146 = fcmp ult float %145, 0x3FEFFFF000000000
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = fcmp ugt float %145, 0.000000e+00
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  %150 = call float @llvm.fmuladd.f32(float %145, float 6.553500e+04, float 5.000000e-01)
  %151 = fptoui float %150 to i16
  br label %152

152:                                              ; preds = %142, %147, %149
  %153 = phi i16 [ -1, %142 ], [ %151, %149 ], [ 0, %147 ]
  %154 = getelementptr inbounds i16, ptr %100, i64 2
  store i16 %153, ptr %154, align 2, !tbaa !53
  %155 = call float %24(float noundef %102) #13, !callees !52
  %156 = fcmp ult float %155, 0x3FEFFFF000000000
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = fcmp ugt float %155, 0.000000e+00
  br i1 %158, label %159, label %162

159:                                              ; preds = %157
  %160 = call float @llvm.fmuladd.f32(float %155, float 6.553500e+04, float 5.000000e-01)
  %161 = fptoui float %160 to i16
  br label %162

162:                                              ; preds = %152, %157, %159
  %163 = phi i16 [ -1, %152 ], [ %161, %159 ], [ 0, %157 ]
  %164 = getelementptr inbounds i16, ptr %100, i64 3
  store i16 %163, ptr %164, align 2, !tbaa !53
  %165 = getelementptr inbounds i16, ptr %100, i64 4
  %166 = getelementptr inbounds float, ptr %99, i64 4
  %167 = add nsw i32 %98, -1
  %168 = icmp sgt i32 %98, 1
  br i1 %168, label %97, label %581, !llvm.loop !55

169:                                              ; preds = %95
  br i1 %93, label %170, label %581

170:                                              ; preds = %169, %205
  %171 = phi i32 [ %211, %205 ], [ %92, %169 ]
  %172 = phi ptr [ %210, %205 ], [ %86, %169 ]
  %173 = phi ptr [ %209, %205 ], [ %72, %169 ]
  %174 = load float, ptr %172, align 4, !tbaa !51
  %175 = call float %24(float noundef %174) #13, !callees !52
  %176 = fcmp ult float %175, 0x3FEFFFF000000000
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = fcmp ugt float %175, 0.000000e+00
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %180 = call float @llvm.fmuladd.f32(float %175, float 6.553500e+04, float 5.000000e-01)
  %181 = fptoui float %180 to i16
  br label %182

182:                                              ; preds = %170, %177, %179
  %183 = phi i16 [ -1, %170 ], [ %181, %179 ], [ 0, %177 ]
  store i16 %183, ptr %173, align 2, !tbaa !53
  %184 = getelementptr inbounds float, ptr %172, i64 1
  %185 = load float, ptr %184, align 4, !tbaa !51
  %186 = call float %24(float noundef %185) #13, !callees !52
  %187 = fcmp ult float %186, 0x3FEFFFF000000000
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = fcmp ugt float %186, 0.000000e+00
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = call float @llvm.fmuladd.f32(float %186, float 6.553500e+04, float 5.000000e-01)
  %192 = fptoui float %191 to i16
  br label %193

193:                                              ; preds = %182, %188, %190
  %194 = phi i16 [ -1, %182 ], [ %192, %190 ], [ 0, %188 ]
  %195 = getelementptr inbounds i16, ptr %173, i64 1
  store i16 %194, ptr %195, align 2, !tbaa !53
  %196 = getelementptr inbounds float, ptr %172, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !51
  %198 = call float %24(float noundef %197) #13, !callees !52
  %199 = fcmp ult float %198, 0x3FEFFFF000000000
  br i1 %199, label %200, label %205

200:                                              ; preds = %193
  %201 = fcmp ugt float %198, 0.000000e+00
  br i1 %201, label %202, label %205

202:                                              ; preds = %200
  %203 = call float @llvm.fmuladd.f32(float %198, float 6.553500e+04, float 5.000000e-01)
  %204 = fptoui float %203 to i16
  br label %205

205:                                              ; preds = %193, %200, %202
  %206 = phi i16 [ -1, %193 ], [ %204, %202 ], [ 0, %200 ]
  %207 = getelementptr inbounds i16, ptr %173, i64 2
  store i16 %206, ptr %207, align 2, !tbaa !53
  %208 = getelementptr inbounds i16, ptr %173, i64 3
  store i16 -1, ptr %208, align 2, !tbaa !53
  %209 = getelementptr inbounds i16, ptr %173, i64 4
  %210 = getelementptr inbounds float, ptr %172, i64 3
  %211 = add nsw i32 %171, -1
  %212 = icmp sgt i32 %171, 1
  br i1 %212, label %170, label %581, !llvm.loop !58

213:                                              ; preds = %95
  br i1 %93, label %214, label %581

214:                                              ; preds = %213, %226
  %215 = phi i32 [ %233, %226 ], [ %92, %213 ]
  %216 = phi ptr [ %232, %226 ], [ %86, %213 ]
  %217 = phi ptr [ %231, %226 ], [ %72, %213 ]
  %218 = load float, ptr %216, align 4, !tbaa !51
  %219 = call float %24(float noundef %218) #13, !callees !52
  %220 = fcmp ult float %219, 0x3FEFFFF000000000
  br i1 %220, label %221, label %226

221:                                              ; preds = %214
  %222 = fcmp ugt float %219, 0.000000e+00
  br i1 %222, label %223, label %226

223:                                              ; preds = %221
  %224 = call float @llvm.fmuladd.f32(float %219, float 6.553500e+04, float 5.000000e-01)
  %225 = fptoui float %224 to i16
  br label %226

226:                                              ; preds = %214, %221, %223
  %227 = phi i16 [ -1, %214 ], [ %225, %223 ], [ 0, %221 ]
  store i16 %227, ptr %217, align 2, !tbaa !53
  %228 = getelementptr inbounds i16, ptr %217, i64 1
  store i16 %227, ptr %228, align 2, !tbaa !53
  %229 = getelementptr inbounds i16, ptr %217, i64 2
  store i16 %227, ptr %229, align 2, !tbaa !53
  %230 = getelementptr inbounds i16, ptr %217, i64 3
  store i16 -1, ptr %230, align 2, !tbaa !53
  %231 = getelementptr inbounds i16, ptr %217, i64 4
  %232 = getelementptr inbounds float, ptr %216, i64 1
  %233 = add nsw i32 %215, -1
  %234 = icmp sgt i32 %215, 1
  br i1 %234, label %214, label %581, !llvm.loop !59

235:                                              ; preds = %94
  br i1 %93, label %236, label %581

236:                                              ; preds = %235, %236
  %237 = phi ptr [ %259, %236 ], [ %85, %235 ]
  %238 = phi i32 [ %260, %236 ], [ %92, %235 ]
  %239 = phi ptr [ %258, %236 ], [ %72, %235 ]
  %240 = load i8, ptr %237, align 1, !tbaa !60
  %241 = zext i8 %240 to i16
  %242 = mul nuw i16 %241, 257
  store i16 %242, ptr %239, align 2, !tbaa !53
  %243 = getelementptr inbounds i8, ptr %237, i64 1
  %244 = load i8, ptr %243, align 1, !tbaa !60
  %245 = zext i8 %244 to i16
  %246 = mul nuw i16 %245, 257
  %247 = getelementptr inbounds i16, ptr %239, i64 1
  store i16 %246, ptr %247, align 2, !tbaa !53
  %248 = getelementptr inbounds i8, ptr %237, i64 2
  %249 = load i8, ptr %248, align 1, !tbaa !60
  %250 = zext i8 %249 to i16
  %251 = mul nuw i16 %250, 257
  %252 = getelementptr inbounds i16, ptr %239, i64 2
  store i16 %251, ptr %252, align 2, !tbaa !53
  %253 = getelementptr inbounds i8, ptr %237, i64 3
  %254 = load i8, ptr %253, align 1, !tbaa !60
  %255 = zext i8 %254 to i16
  %256 = mul nuw i16 %255, 257
  %257 = getelementptr inbounds i16, ptr %239, i64 3
  store i16 %256, ptr %257, align 2, !tbaa !53
  %258 = getelementptr inbounds i16, ptr %239, i64 4
  %259 = getelementptr inbounds i8, ptr %237, i64 4
  %260 = add nsw i32 %238, -1
  %261 = icmp sgt i32 %238, 1
  br i1 %261, label %236, label %581, !llvm.loop !61

262:                                              ; preds = %87
  br i1 %93, label %263, label %581

263:                                              ; preds = %262, %263
  %264 = phi ptr [ %278, %263 ], [ %85, %262 ]
  %265 = phi ptr [ %277, %263 ], [ %73, %262 ]
  %266 = phi i32 [ %279, %263 ], [ %92, %262 ]
  %267 = load i8, ptr %264, align 1, !tbaa !60
  store i8 %267, ptr %265, align 1, !tbaa !60
  %268 = getelementptr inbounds i8, ptr %264, i64 1
  %269 = load i8, ptr %268, align 1, !tbaa !60
  %270 = getelementptr inbounds i8, ptr %265, i64 1
  store i8 %269, ptr %270, align 1, !tbaa !60
  %271 = getelementptr inbounds i8, ptr %264, i64 2
  %272 = load i8, ptr %271, align 1, !tbaa !60
  %273 = getelementptr inbounds i8, ptr %265, i64 2
  store i8 %272, ptr %273, align 1, !tbaa !60
  %274 = getelementptr inbounds i8, ptr %264, i64 3
  %275 = load i8, ptr %274, align 1, !tbaa !60
  %276 = getelementptr inbounds i8, ptr %265, i64 3
  store i8 %275, ptr %276, align 1, !tbaa !60
  %277 = getelementptr inbounds i8, ptr %265, i64 4
  %278 = getelementptr inbounds i8, ptr %264, i64 4
  %279 = add nsw i32 %266, -1
  %280 = icmp sgt i32 %266, 1
  br i1 %280, label %263, label %581, !llvm.loop !62

281:                                              ; preds = %83
  %282 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %283 = load i32, ptr %282, align 8, !tbaa !48
  %284 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %285 = load i32, ptr %284, align 4, !tbaa !49
  %286 = mul nsw i32 %285, %283
  %287 = icmp sgt i32 %286, 0
  br i1 %57, label %439, label %288

288:                                              ; preds = %281
  br i1 %10, label %417, label %289

289:                                              ; preds = %288
  switch i32 %14, label %396 [
    i32 4, label %290
    i32 3, label %353
  ]

290:                                              ; preds = %289
  br i1 %287, label %291, label %581

291:                                              ; preds = %290, %346
  %292 = phi i32 [ %351, %346 ], [ %286, %290 ]
  %293 = phi ptr [ %350, %346 ], [ %86, %290 ]
  %294 = phi ptr [ %349, %346 ], [ %72, %290 ]
  %295 = getelementptr inbounds float, ptr %293, i64 3
  %296 = load float, ptr %295, align 4, !tbaa !51
  %297 = fcmp oeq float %296, 0.000000e+00
  %298 = fcmp oeq float %296, 1.000000e+00
  %299 = or i1 %297, %298
  br i1 %299, label %300, label %306

300:                                              ; preds = %291
  %301 = load float, ptr %293, align 4, !tbaa !51
  %302 = getelementptr inbounds float, ptr %293, i64 1
  %303 = load float, ptr %302, align 4, !tbaa !51
  %304 = getelementptr inbounds float, ptr %293, i64 2
  %305 = load float, ptr %304, align 4, !tbaa !51
  br label %316

306:                                              ; preds = %291
  %307 = fdiv float 1.000000e+00, %296
  %308 = load float, ptr %293, align 4, !tbaa !51
  %309 = fmul float %307, %308
  %310 = getelementptr inbounds float, ptr %293, i64 1
  %311 = load float, ptr %310, align 4, !tbaa !51
  %312 = fmul float %307, %311
  %313 = getelementptr inbounds float, ptr %293, i64 2
  %314 = load float, ptr %313, align 4, !tbaa !51
  %315 = fmul float %307, %314
  br label %316

316:                                              ; preds = %300, %306
  %317 = phi float [ %305, %300 ], [ %315, %306 ]
  %318 = phi float [ %303, %300 ], [ %312, %306 ]
  %319 = phi float [ %301, %300 ], [ %309, %306 ]
  %320 = call float %24(float noundef %319) #13, !callees !52
  %321 = fcmp ult float %320, 0x3FEFFFF000000000
  br i1 %321, label %322, label %327

322:                                              ; preds = %316
  %323 = fcmp ugt float %320, 0.000000e+00
  br i1 %323, label %324, label %327

324:                                              ; preds = %322
  %325 = call float @llvm.fmuladd.f32(float %320, float 6.553500e+04, float 5.000000e-01)
  %326 = fptoui float %325 to i16
  br label %327

327:                                              ; preds = %316, %322, %324
  %328 = phi i16 [ -1, %316 ], [ %326, %324 ], [ 0, %322 ]
  store i16 %328, ptr %294, align 2, !tbaa !53
  %329 = call float %24(float noundef %318) #13, !callees !52
  %330 = fcmp ult float %329, 0x3FEFFFF000000000
  br i1 %330, label %331, label %336

331:                                              ; preds = %327
  %332 = fcmp ugt float %329, 0.000000e+00
  br i1 %332, label %333, label %336

333:                                              ; preds = %331
  %334 = call float @llvm.fmuladd.f32(float %329, float 6.553500e+04, float 5.000000e-01)
  %335 = fptoui float %334 to i16
  br label %336

336:                                              ; preds = %327, %331, %333
  %337 = phi i16 [ -1, %327 ], [ %335, %333 ], [ 0, %331 ]
  %338 = getelementptr inbounds i16, ptr %294, i64 1
  store i16 %337, ptr %338, align 2, !tbaa !53
  %339 = call float %24(float noundef %317) #13, !callees !52
  %340 = fcmp ult float %339, 0x3FEFFFF000000000
  br i1 %340, label %341, label %346

341:                                              ; preds = %336
  %342 = fcmp ugt float %339, 0.000000e+00
  br i1 %342, label %343, label %346

343:                                              ; preds = %341
  %344 = call float @llvm.fmuladd.f32(float %339, float 6.553500e+04, float 5.000000e-01)
  %345 = fptoui float %344 to i16
  br label %346

346:                                              ; preds = %336, %341, %343
  %347 = phi i16 [ -1, %336 ], [ %345, %343 ], [ 0, %341 ]
  %348 = getelementptr inbounds i16, ptr %294, i64 2
  store i16 %347, ptr %348, align 2, !tbaa !53
  %349 = getelementptr inbounds i16, ptr %294, i64 3
  %350 = getelementptr inbounds float, ptr %293, i64 4
  %351 = add nsw i32 %292, -1
  %352 = icmp sgt i32 %292, 1
  br i1 %352, label %291, label %581, !llvm.loop !63

353:                                              ; preds = %289
  br i1 %287, label %354, label %581

354:                                              ; preds = %353, %389
  %355 = phi i32 [ %394, %389 ], [ %286, %353 ]
  %356 = phi ptr [ %393, %389 ], [ %86, %353 ]
  %357 = phi ptr [ %392, %389 ], [ %72, %353 ]
  %358 = load float, ptr %356, align 4, !tbaa !51
  %359 = call float %24(float noundef %358) #13, !callees !52
  %360 = fcmp ult float %359, 0x3FEFFFF000000000
  br i1 %360, label %361, label %366

361:                                              ; preds = %354
  %362 = fcmp ugt float %359, 0.000000e+00
  br i1 %362, label %363, label %366

363:                                              ; preds = %361
  %364 = call float @llvm.fmuladd.f32(float %359, float 6.553500e+04, float 5.000000e-01)
  %365 = fptoui float %364 to i16
  br label %366

366:                                              ; preds = %354, %361, %363
  %367 = phi i16 [ -1, %354 ], [ %365, %363 ], [ 0, %361 ]
  store i16 %367, ptr %357, align 2, !tbaa !53
  %368 = getelementptr inbounds float, ptr %356, i64 1
  %369 = load float, ptr %368, align 4, !tbaa !51
  %370 = call float %24(float noundef %369) #13, !callees !52
  %371 = fcmp ult float %370, 0x3FEFFFF000000000
  br i1 %371, label %372, label %377

372:                                              ; preds = %366
  %373 = fcmp ugt float %370, 0.000000e+00
  br i1 %373, label %374, label %377

374:                                              ; preds = %372
  %375 = call float @llvm.fmuladd.f32(float %370, float 6.553500e+04, float 5.000000e-01)
  %376 = fptoui float %375 to i16
  br label %377

377:                                              ; preds = %366, %372, %374
  %378 = phi i16 [ -1, %366 ], [ %376, %374 ], [ 0, %372 ]
  %379 = getelementptr inbounds i16, ptr %357, i64 1
  store i16 %378, ptr %379, align 2, !tbaa !53
  %380 = getelementptr inbounds float, ptr %356, i64 2
  %381 = load float, ptr %380, align 4, !tbaa !51
  %382 = call float %24(float noundef %381) #13, !callees !52
  %383 = fcmp ult float %382, 0x3FEFFFF000000000
  br i1 %383, label %384, label %389

384:                                              ; preds = %377
  %385 = fcmp ugt float %382, 0.000000e+00
  br i1 %385, label %386, label %389

386:                                              ; preds = %384
  %387 = call float @llvm.fmuladd.f32(float %382, float 6.553500e+04, float 5.000000e-01)
  %388 = fptoui float %387 to i16
  br label %389

389:                                              ; preds = %377, %384, %386
  %390 = phi i16 [ -1, %377 ], [ %388, %386 ], [ 0, %384 ]
  %391 = getelementptr inbounds i16, ptr %357, i64 2
  store i16 %390, ptr %391, align 2, !tbaa !53
  %392 = getelementptr inbounds i16, ptr %357, i64 3
  %393 = getelementptr inbounds float, ptr %356, i64 3
  %394 = add nsw i32 %355, -1
  %395 = icmp sgt i32 %355, 1
  br i1 %395, label %354, label %581, !llvm.loop !64

396:                                              ; preds = %289
  br i1 %287, label %397, label %581

397:                                              ; preds = %396, %409
  %398 = phi i32 [ %415, %409 ], [ %286, %396 ]
  %399 = phi ptr [ %414, %409 ], [ %86, %396 ]
  %400 = phi ptr [ %413, %409 ], [ %72, %396 ]
  %401 = load float, ptr %399, align 4, !tbaa !51
  %402 = call float %24(float noundef %401) #13, !callees !52
  %403 = fcmp ult float %402, 0x3FEFFFF000000000
  br i1 %403, label %404, label %409

404:                                              ; preds = %397
  %405 = fcmp ugt float %402, 0.000000e+00
  br i1 %405, label %406, label %409

406:                                              ; preds = %404
  %407 = call float @llvm.fmuladd.f32(float %402, float 6.553500e+04, float 5.000000e-01)
  %408 = fptoui float %407 to i16
  br label %409

409:                                              ; preds = %397, %404, %406
  %410 = phi i16 [ -1, %397 ], [ %408, %406 ], [ 0, %404 ]
  store i16 %410, ptr %400, align 2, !tbaa !53
  %411 = getelementptr inbounds i16, ptr %400, i64 1
  store i16 %410, ptr %411, align 2, !tbaa !53
  %412 = getelementptr inbounds i16, ptr %400, i64 2
  store i16 %410, ptr %412, align 2, !tbaa !53
  %413 = getelementptr inbounds i16, ptr %400, i64 3
  %414 = getelementptr inbounds float, ptr %399, i64 1
  %415 = add nsw i32 %398, -1
  %416 = icmp sgt i32 %398, 1
  br i1 %416, label %397, label %581, !llvm.loop !65

417:                                              ; preds = %288
  br i1 %287, label %418, label %581

418:                                              ; preds = %417, %418
  %419 = phi ptr [ %436, %418 ], [ %85, %417 ]
  %420 = phi i32 [ %437, %418 ], [ %286, %417 ]
  %421 = phi ptr [ %435, %418 ], [ %72, %417 ]
  %422 = load i8, ptr %419, align 1, !tbaa !60
  %423 = zext i8 %422 to i16
  %424 = mul nuw i16 %423, 257
  store i16 %424, ptr %421, align 2, !tbaa !53
  %425 = getelementptr inbounds i8, ptr %419, i64 1
  %426 = load i8, ptr %425, align 1, !tbaa !60
  %427 = zext i8 %426 to i16
  %428 = mul nuw i16 %427, 257
  %429 = getelementptr inbounds i16, ptr %421, i64 1
  store i16 %428, ptr %429, align 2, !tbaa !53
  %430 = getelementptr inbounds i8, ptr %419, i64 2
  %431 = load i8, ptr %430, align 1, !tbaa !60
  %432 = zext i8 %431 to i16
  %433 = mul nuw i16 %432, 257
  %434 = getelementptr inbounds i16, ptr %421, i64 2
  store i16 %433, ptr %434, align 2, !tbaa !53
  %435 = getelementptr inbounds i16, ptr %421, i64 3
  %436 = getelementptr inbounds i8, ptr %419, i64 4
  %437 = add nsw i32 %420, -1
  %438 = icmp sgt i32 %420, 1
  br i1 %438, label %418, label %581, !llvm.loop !66

439:                                              ; preds = %281
  br i1 %287, label %440, label %581

440:                                              ; preds = %439, %440
  %441 = phi ptr [ %452, %440 ], [ %85, %439 ]
  %442 = phi ptr [ %451, %440 ], [ %73, %439 ]
  %443 = phi i32 [ %453, %440 ], [ %286, %439 ]
  %444 = load i8, ptr %441, align 1, !tbaa !60
  store i8 %444, ptr %442, align 1, !tbaa !60
  %445 = getelementptr inbounds i8, ptr %441, i64 1
  %446 = load i8, ptr %445, align 1, !tbaa !60
  %447 = getelementptr inbounds i8, ptr %442, i64 1
  store i8 %446, ptr %447, align 1, !tbaa !60
  %448 = getelementptr inbounds i8, ptr %441, i64 2
  %449 = load i8, ptr %448, align 1, !tbaa !60
  %450 = getelementptr inbounds i8, ptr %442, i64 2
  store i8 %449, ptr %450, align 1, !tbaa !60
  %451 = getelementptr inbounds i8, ptr %442, i64 3
  %452 = getelementptr inbounds i8, ptr %441, i64 4
  %453 = add nsw i32 %443, -1
  %454 = icmp sgt i32 %443, 1
  br i1 %454, label %440, label %581, !llvm.loop !67

455:                                              ; preds = %83
  %456 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %457 = load i32, ptr %456, align 8, !tbaa !48
  %458 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %459 = load i32, ptr %458, align 4, !tbaa !49
  %460 = mul nsw i32 %459, %457
  %461 = icmp sgt i32 %460, 0
  br i1 %57, label %571, label %462

462:                                              ; preds = %455
  br i1 %10, label %559, label %463

463:                                              ; preds = %462
  switch i32 %14, label %540 [
    i32 4, label %464
    i32 3, label %512
  ]

464:                                              ; preds = %463
  br i1 %461, label %465, label %581

465:                                              ; preds = %464, %506
  %466 = phi i32 [ %510, %506 ], [ %460, %464 ]
  %467 = phi ptr [ %509, %506 ], [ %86, %464 ]
  %468 = phi ptr [ %508, %506 ], [ %72, %464 ]
  %469 = getelementptr inbounds float, ptr %467, i64 3
  %470 = load float, ptr %469, align 4, !tbaa !51
  %471 = fcmp oeq float %470, 0.000000e+00
  %472 = fcmp oeq float %470, 1.000000e+00
  %473 = or i1 %471, %472
  br i1 %473, label %474, label %480

474:                                              ; preds = %465
  %475 = load float, ptr %467, align 4, !tbaa !51
  %476 = getelementptr inbounds float, ptr %467, i64 1
  %477 = load float, ptr %476, align 4, !tbaa !51
  %478 = getelementptr inbounds float, ptr %467, i64 2
  %479 = load float, ptr %478, align 4, !tbaa !51
  br label %490

480:                                              ; preds = %465
  %481 = fdiv float 1.000000e+00, %470
  %482 = load float, ptr %467, align 4, !tbaa !51
  %483 = fmul float %481, %482
  %484 = getelementptr inbounds float, ptr %467, i64 1
  %485 = load float, ptr %484, align 4, !tbaa !51
  %486 = fmul float %481, %485
  %487 = getelementptr inbounds float, ptr %467, i64 2
  %488 = load float, ptr %487, align 4, !tbaa !51
  %489 = fmul float %481, %488
  br label %490

490:                                              ; preds = %474, %480
  %491 = phi float [ %479, %474 ], [ %489, %480 ]
  %492 = phi float [ %477, %474 ], [ %486, %480 ]
  %493 = phi float [ %475, %474 ], [ %483, %480 ]
  %494 = call float %24(float noundef %493) #13, !callees !52
  %495 = call float %24(float noundef %492) #13, !callees !52
  %496 = call float %24(float noundef %491) #13, !callees !52
  %497 = fmul float %495, 0x3FDCCCCCC0000000
  %498 = call float @llvm.fmuladd.f32(float %494, float 0x3FD6666660000000, float %497)
  %499 = call float @llvm.fmuladd.f32(float %496, float 0x3FC99999A0000000, float %498)
  %500 = fcmp ult float %499, 0x3FEFFFF000000000
  br i1 %500, label %501, label %506

501:                                              ; preds = %490
  %502 = fcmp ugt float %499, 0.000000e+00
  br i1 %502, label %503, label %506

503:                                              ; preds = %501
  %504 = call float @llvm.fmuladd.f32(float %499, float 6.553500e+04, float 5.000000e-01)
  %505 = fptoui float %504 to i16
  br label %506

506:                                              ; preds = %490, %501, %503
  %507 = phi i16 [ -1, %490 ], [ %505, %503 ], [ 0, %501 ]
  store i16 %507, ptr %468, align 2, !tbaa !53
  %508 = getelementptr inbounds i16, ptr %468, i64 1
  %509 = getelementptr inbounds float, ptr %467, i64 4
  %510 = add nsw i32 %466, -1
  %511 = icmp sgt i32 %466, 1
  br i1 %511, label %465, label %581, !llvm.loop !68

512:                                              ; preds = %463
  br i1 %461, label %513, label %581

513:                                              ; preds = %512, %534
  %514 = phi i32 [ %538, %534 ], [ %460, %512 ]
  %515 = phi ptr [ %537, %534 ], [ %86, %512 ]
  %516 = phi ptr [ %536, %534 ], [ %72, %512 ]
  %517 = load float, ptr %515, align 4, !tbaa !51
  %518 = call float %24(float noundef %517) #13, !callees !52
  %519 = getelementptr inbounds float, ptr %515, i64 1
  %520 = load float, ptr %519, align 4, !tbaa !51
  %521 = call float %24(float noundef %520) #13, !callees !52
  %522 = getelementptr inbounds float, ptr %515, i64 2
  %523 = load float, ptr %522, align 4, !tbaa !51
  %524 = call float %24(float noundef %523) #13, !callees !52
  %525 = fmul float %521, 0x3FDCCCCCC0000000
  %526 = call float @llvm.fmuladd.f32(float %518, float 0x3FD6666660000000, float %525)
  %527 = call float @llvm.fmuladd.f32(float %524, float 0x3FC99999A0000000, float %526)
  %528 = fcmp ult float %527, 0x3FEFFFF000000000
  br i1 %528, label %529, label %534

529:                                              ; preds = %513
  %530 = fcmp ugt float %527, 0.000000e+00
  br i1 %530, label %531, label %534

531:                                              ; preds = %529
  %532 = call float @llvm.fmuladd.f32(float %527, float 6.553500e+04, float 5.000000e-01)
  %533 = fptoui float %532 to i16
  br label %534

534:                                              ; preds = %513, %529, %531
  %535 = phi i16 [ -1, %513 ], [ %533, %531 ], [ 0, %529 ]
  store i16 %535, ptr %516, align 2, !tbaa !53
  %536 = getelementptr inbounds i16, ptr %516, i64 1
  %537 = getelementptr inbounds float, ptr %515, i64 3
  %538 = add nsw i32 %514, -1
  %539 = icmp sgt i32 %514, 1
  br i1 %539, label %513, label %581, !llvm.loop !69

540:                                              ; preds = %463
  br i1 %461, label %541, label %581

541:                                              ; preds = %540, %553
  %542 = phi i32 [ %557, %553 ], [ %460, %540 ]
  %543 = phi ptr [ %556, %553 ], [ %86, %540 ]
  %544 = phi ptr [ %555, %553 ], [ %72, %540 ]
  %545 = load float, ptr %543, align 4, !tbaa !51
  %546 = call float %24(float noundef %545) #13, !callees !52
  %547 = fcmp ult float %546, 0x3FEFFFF000000000
  br i1 %547, label %548, label %553

548:                                              ; preds = %541
  %549 = fcmp ugt float %546, 0.000000e+00
  br i1 %549, label %550, label %553

550:                                              ; preds = %548
  %551 = call float @llvm.fmuladd.f32(float %546, float 6.553500e+04, float 5.000000e-01)
  %552 = fptoui float %551 to i16
  br label %553

553:                                              ; preds = %541, %548, %550
  %554 = phi i16 [ -1, %541 ], [ %552, %550 ], [ 0, %548 ]
  store i16 %554, ptr %544, align 2, !tbaa !53
  %555 = getelementptr inbounds i16, ptr %544, i64 1
  %556 = getelementptr inbounds float, ptr %543, i64 1
  %557 = add nsw i32 %542, -1
  %558 = icmp sgt i32 %542, 1
  br i1 %558, label %541, label %581, !llvm.loop !70

559:                                              ; preds = %462
  br i1 %461, label %560, label %581

560:                                              ; preds = %559, %560
  %561 = phi ptr [ %568, %560 ], [ %85, %559 ]
  %562 = phi i32 [ %569, %560 ], [ %460, %559 ]
  %563 = phi ptr [ %567, %560 ], [ %72, %559 ]
  %564 = load i8, ptr %561, align 1, !tbaa !60
  %565 = zext i8 %564 to i16
  %566 = mul nuw i16 %565, 257
  store i16 %566, ptr %563, align 2, !tbaa !53
  %567 = getelementptr inbounds i16, ptr %563, i64 1
  %568 = getelementptr inbounds i8, ptr %561, i64 4
  %569 = add nsw i32 %562, -1
  %570 = icmp sgt i32 %562, 1
  br i1 %570, label %560, label %581, !llvm.loop !71

571:                                              ; preds = %455
  br i1 %461, label %572, label %581

572:                                              ; preds = %571, %572
  %573 = phi ptr [ %578, %572 ], [ %85, %571 ]
  %574 = phi ptr [ %577, %572 ], [ %73, %571 ]
  %575 = phi i32 [ %579, %572 ], [ %460, %571 ]
  %576 = load i8, ptr %573, align 1, !tbaa !60
  store i8 %576, ptr %574, align 1, !tbaa !60
  %577 = getelementptr inbounds i8, ptr %574, i64 1
  %578 = getelementptr inbounds i8, ptr %573, i64 4
  %579 = add nsw i32 %575, -1
  %580 = icmp sgt i32 %575, 1
  br i1 %580, label %572, label %581, !llvm.loop !72

581:                                              ; preds = %534, %506, %553, %560, %572, %389, %346, %409, %418, %440, %205, %162, %226, %236, %263, %512, %464, %540, %559, %571, %353, %290, %396, %417, %439, %169, %96, %213, %235, %262, %83
  %582 = phi i32 [ 0, %83 ], [ 6, %262 ], [ 6, %235 ], [ 6, %213 ], [ 6, %96 ], [ 6, %169 ], [ 2, %439 ], [ 2, %417 ], [ 2, %396 ], [ 2, %290 ], [ 2, %353 ], [ 0, %571 ], [ 0, %559 ], [ 0, %540 ], [ 0, %464 ], [ 0, %512 ], [ 6, %263 ], [ 6, %236 ], [ 6, %226 ], [ 6, %162 ], [ 6, %205 ], [ 2, %440 ], [ 2, %418 ], [ 2, %409 ], [ 2, %346 ], [ 2, %389 ], [ 0, %572 ], [ 0, %560 ], [ 0, %553 ], [ 0, %506 ], [ 0, %534 ]
  br i1 %26, label %587, label %583

583:                                              ; preds = %581
  %584 = call zeroext i8 @imb_addencodedbufferImBuf(ptr noundef %0) #13
  %585 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 32
  store i32 0, ptr %585, align 8, !tbaa !73
  %586 = load ptr, ptr %4, align 8, !tbaa !47
  call void @png_set_write_fn(ptr noundef %586, ptr noundef %0, ptr noundef nonnull @WriteData, ptr noundef nonnull @Flush) #13
  br label %600

587:                                              ; preds = %581
  %588 = call ptr @BLI_fopen(ptr noundef %27, ptr noundef nonnull @.str.9) #13
  %589 = icmp eq ptr %588, null
  br i1 %589, label %590, label %598

590:                                              ; preds = %587
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  br i1 %74, label %593, label %591

591:                                              ; preds = %590
  %592 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %592(ptr noundef nonnull %73) #13
  br label %593

593:                                              ; preds = %591, %590
  br i1 %75, label %596, label %594

594:                                              ; preds = %593
  %595 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %595(ptr noundef nonnull %72) #13
  br label %596

596:                                              ; preds = %594, %593
  %597 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %27)
  br label %734

598:                                              ; preds = %587
  %599 = load ptr, ptr %4, align 8, !tbaa !47
  call void @png_init_io(ptr noundef %599, ptr noundef nonnull %588) #13
  br label %600

600:                                              ; preds = %598, %583
  %601 = phi ptr [ null, %583 ], [ %588, %598 ]
  %602 = load ptr, ptr %4, align 8, !tbaa !47
  call void @png_set_compression_level(ptr noundef %602, i32 noundef %20) #13
  %603 = load ptr, ptr %4, align 8, !tbaa !47
  %604 = load ptr, ptr %5, align 8, !tbaa !47
  %605 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %606 = load i32, ptr %605, align 8, !tbaa !48
  %607 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %608 = load i32, ptr %607, align 4, !tbaa !49
  %609 = select i1 %57, i32 8, i32 16
  call void @png_set_IHDR(ptr noundef %603, ptr noundef %604, i32 noundef %606, i32 noundef %608, i32 noundef %609, i32 noundef %582, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %610 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 24
  %611 = load ptr, ptr %610, align 8, !tbaa !74
  %612 = icmp eq ptr %611, null
  br i1 %612, label %646, label %613

613:                                              ; preds = %600, %613
  %614 = phi i32 [ %616, %613 ], [ 0, %600 ]
  %615 = phi ptr [ %617, %613 ], [ %611, %600 ]
  %616 = add nuw nsw i32 %614, 1
  %617 = load ptr, ptr %615, align 8, !tbaa !75
  %618 = icmp eq ptr %617, null
  br i1 %618, label %619, label %613, !llvm.loop !77

619:                                              ; preds = %613
  %620 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %621 = zext nneg i32 %616 to i64
  %622 = mul nuw nsw i64 %621, 56
  %623 = call ptr %620(i64 noundef %622, ptr noundef nonnull @.str.11) #13
  %624 = load ptr, ptr %610, align 8, !tbaa !47
  %625 = icmp eq ptr %624, null
  br i1 %625, label %641, label %626

626:                                              ; preds = %619, %626
  %627 = phi i64 [ %636, %626 ], [ 0, %619 ]
  %628 = phi ptr [ %637, %626 ], [ %624, %619 ]
  %629 = getelementptr inbounds %struct.png_text_struct, ptr %623, i64 %627
  store i32 -1, ptr %629, align 8, !tbaa !78
  %630 = getelementptr inbounds %struct.ImMetaData, ptr %628, i64 0, i32 2
  %631 = load ptr, ptr %630, align 8, !tbaa !81
  %632 = getelementptr inbounds %struct.png_text_struct, ptr %623, i64 %627, i32 1
  store ptr %631, ptr %632, align 8, !tbaa !82
  %633 = getelementptr inbounds %struct.ImMetaData, ptr %628, i64 0, i32 3
  %634 = load ptr, ptr %633, align 8, !tbaa !83
  %635 = getelementptr inbounds %struct.png_text_struct, ptr %623, i64 %627, i32 2
  store ptr %634, ptr %635, align 8, !tbaa !84
  %636 = add nuw i64 %627, 1
  %637 = load ptr, ptr %628, align 8, !tbaa !47
  %638 = icmp eq ptr %637, null
  br i1 %638, label %639, label %626, !llvm.loop !85

639:                                              ; preds = %626
  %640 = trunc i64 %636 to i32
  br label %641

641:                                              ; preds = %639, %619
  %642 = phi i32 [ 0, %619 ], [ %640, %639 ]
  %643 = load ptr, ptr %4, align 8, !tbaa !47
  %644 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_set_text(ptr noundef %643, ptr noundef %644, ptr noundef %623, i32 noundef %642) #13
  %645 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %645(ptr noundef %623) #13
  br label %646

646:                                              ; preds = %641, %600
  %647 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 10
  %648 = load double, ptr %647, align 8, !tbaa !86
  %649 = fcmp ogt double %648, 0.000000e+00
  br i1 %649, label %650, label %661

650:                                              ; preds = %646
  %651 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 10, i64 1
  %652 = load double, ptr %651, align 8, !tbaa !86
  %653 = fcmp ogt double %652, 0.000000e+00
  br i1 %653, label %654, label %661

654:                                              ; preds = %650
  %655 = load ptr, ptr %4, align 8, !tbaa !47
  %656 = load ptr, ptr %5, align 8, !tbaa !47
  %657 = fadd double %648, 5.000000e-01
  %658 = fptoui double %657 to i32
  %659 = fadd double %652, 5.000000e-01
  %660 = fptoui double %659 to i32
  call void @png_set_pHYs(ptr noundef %655, ptr noundef %656, i32 noundef %658, i32 noundef %660, i32 noundef 1) #13
  br label %661

661:                                              ; preds = %654, %650, %646
  %662 = load ptr, ptr %4, align 8, !tbaa !47
  %663 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_write_info(ptr noundef %662, ptr noundef %663) #13
  %664 = load ptr, ptr %4, align 8, !tbaa !47
  call void @png_set_swap(ptr noundef %664) #13
  %665 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %666 = load i32, ptr %607, align 4, !tbaa !49
  %667 = sext i32 %666 to i64
  %668 = shl nsw i64 %667, 3
  %669 = call ptr %665(i64 noundef %668, ptr noundef nonnull @.str.12) #13
  %670 = icmp eq ptr %669, null
  br i1 %670, label %671, label %682

671:                                              ; preds = %661
  %672 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %27)
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  br i1 %74, label %675, label %673

673:                                              ; preds = %671
  %674 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %674(ptr noundef nonnull %73) #13
  br label %675

675:                                              ; preds = %673, %671
  br i1 %75, label %678, label %676

676:                                              ; preds = %675
  %677 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %677(ptr noundef nonnull %72) #13
  br label %678

678:                                              ; preds = %676, %675
  %679 = icmp eq ptr %601, null
  br i1 %679, label %734, label %680

680:                                              ; preds = %678
  %681 = call i32 @fclose(ptr noundef nonnull %601)
  br label %734

682:                                              ; preds = %661
  %683 = load i32, ptr %607, align 4, !tbaa !49
  %684 = icmp sgt i32 %683, 0
  br i1 %57, label %691, label %685

685:                                              ; preds = %682
  br i1 %684, label %686, label %719

686:                                              ; preds = %685
  %687 = load i32, ptr %605, align 8, !tbaa !48
  %688 = zext nneg i32 %683 to i64
  %689 = zext nneg i32 %683 to i64
  %690 = getelementptr ptr, ptr %669, i64 %688
  br label %697

691:                                              ; preds = %682
  br i1 %684, label %692, label %719

692:                                              ; preds = %691
  %693 = load i32, ptr %605, align 8, !tbaa !48
  %694 = zext nneg i32 %683 to i64
  %695 = zext nneg i32 %683 to i64
  %696 = getelementptr ptr, ptr %669, i64 %694
  br label %708

697:                                              ; preds = %686, %697
  %698 = phi i64 [ 0, %686 ], [ %706, %697 ]
  %699 = trunc i64 %698 to i32
  %700 = mul i32 %32, %699
  %701 = mul i32 %700, %687
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i16, ptr %72, i64 %702
  %704 = xor i64 %698, -1
  %705 = getelementptr ptr, ptr %690, i64 %704
  store ptr %703, ptr %705, align 8, !tbaa !47
  %706 = add nuw nsw i64 %698, 1
  %707 = icmp eq i64 %706, %689
  br i1 %707, label %719, label %697, !llvm.loop !88

708:                                              ; preds = %692, %708
  %709 = phi i64 [ 0, %692 ], [ %717, %708 ]
  %710 = trunc i64 %709 to i32
  %711 = mul i32 %32, %710
  %712 = mul i32 %711, %693
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i8, ptr %73, i64 %713
  %715 = xor i64 %709, -1
  %716 = getelementptr ptr, ptr %696, i64 %715
  store ptr %714, ptr %716, align 8, !tbaa !47
  %717 = add nuw nsw i64 %709, 1
  %718 = icmp eq i64 %717, %695
  br i1 %718, label %719, label %708, !llvm.loop !89

719:                                              ; preds = %697, %708, %685, %691
  %720 = load ptr, ptr %4, align 8, !tbaa !47
  call void @png_write_image(ptr noundef %720, ptr noundef nonnull %669) #13
  %721 = load ptr, ptr %4, align 8, !tbaa !47
  %722 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_write_end(ptr noundef %721, ptr noundef %722) #13
  br i1 %74, label %725, label %723

723:                                              ; preds = %719
  %724 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %724(ptr noundef nonnull %73) #13
  br label %725

725:                                              ; preds = %723, %719
  br i1 %75, label %728, label %726

726:                                              ; preds = %725
  %727 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %727(ptr noundef nonnull %72) #13
  br label %728

728:                                              ; preds = %726, %725
  %729 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %729(ptr noundef nonnull %669) #13
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %730 = icmp eq ptr %601, null
  br i1 %730, label %734, label %731

731:                                              ; preds = %728
  %732 = call i32 @fflush(ptr noundef nonnull %601)
  %733 = call i32 @fclose(ptr noundef nonnull %601)
  br label %734

734:                                              ; preds = %728, %731, %678, %680, %596, %77, %53, %46, %41, %36
  %735 = phi i32 [ 0, %36 ], [ 0, %41 ], [ 0, %46 ], [ 0, %53 ], [ 0, %77 ], [ 0, %596 ], [ 0, %680 ], [ 0, %678 ], [ 1, %731 ], [ 1, %728 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %735
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @channel_colormanage_noop(float noundef returned %0) unnamed_addr #3 {
  ret float %0
}

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare noalias ptr @png_create_write_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #2

declare void @png_destroy_write_struct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #5

declare ptr @png_set_longjmp_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) #6

declare zeroext i8 @imb_addencodedbufferImBuf(ptr noundef) local_unnamed_addr #2

declare void @png_set_write_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @WriteData(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 {
  %4 = tail call ptr @png_get_io_ptr(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 32
  %6 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 33
  %7 = load i32, ptr %5, align 8, !tbaa !73
  %8 = zext i32 %7 to i64
  %9 = add i64 %8, %2
  %10 = load i32, ptr %6, align 4, !tbaa !90
  %11 = zext i32 %10 to i64
  %12 = icmp ugt i64 %9, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3, %13
  %14 = tail call zeroext i8 @imb_enlargeencodedbufferImBuf(ptr noundef %4) #13
  %15 = load i32, ptr %5, align 8, !tbaa !73
  %16 = zext i32 %15 to i64
  %17 = add i64 %16, %2
  %18 = load i32, ptr %6, align 4, !tbaa !90
  %19 = zext i32 %18 to i64
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %13, label %21, !llvm.loop !91

21:                                               ; preds = %13, %3
  %22 = phi i64 [ %8, %3 ], [ %16, %13 ]
  %23 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 32
  %24 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 31
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = getelementptr inbounds i8, ptr %25, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %1, i64 %2, i1 false)
  %27 = load i32, ptr %23, align 8, !tbaa !73
  %28 = trunc i64 %2 to i32
  %29 = add i32 %27, %28
  store i32 %29, ptr %23, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Flush(ptr nocapture readnone %0) #3 {
  ret void
}

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_init_io(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_set_compression_level(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_set_IHDR(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @png_set_text(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_set_pHYs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @png_write_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_set_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

declare void @png_write_image(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_write_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @imb_loadpng(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.PNGReadStruct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  %16 = icmp eq ptr %0, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = call i32 @png_sig_cmp(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 8) #13
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %4, %17
  %22 = phi i32 [ %20, %17 ], [ 0, %4 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %451, label %24

24:                                               ; preds = %21
  call void @colorspace_set_default_role(ptr noundef %3, i32 noundef 64, i32 noundef 4) #13
  %25 = call noalias ptr @png_create_read_struct(ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null) #13
  store ptr %25, ptr %5, align 8, !tbaa !47
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %451

29:                                               ; preds = %24
  call void @png_set_error_fn(ptr noundef nonnull %25, ptr noundef null, ptr noundef nonnull @imb_png_error, ptr noundef nonnull @imb_png_warning) #13
  %30 = load ptr, ptr %5, align 8, !tbaa !47
  %31 = call noalias ptr @png_create_info_struct(ptr noundef %30) #13
  store ptr %31, ptr %6, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  call void @png_destroy_read_struct(ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #13
  %34 = call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  br label %451

35:                                               ; preds = %29
  %36 = trunc i64 %1 to i32
  %37 = getelementptr inbounds %struct.PNGReadStruct, ptr %11, i64 0, i32 1
  store i32 %36, ptr %37, align 8, !tbaa !93
  store ptr %0, ptr %11, align 8, !tbaa !95
  %38 = getelementptr inbounds %struct.PNGReadStruct, ptr %11, i64 0, i32 2
  store i32 0, ptr %38, align 4, !tbaa !96
  %39 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_set_read_fn(ptr noundef %39, ptr noundef nonnull %11, ptr noundef nonnull @ReadData) #13
  %40 = load ptr, ptr %5, align 8, !tbaa !47
  %41 = call ptr @png_set_longjmp_fn(ptr noundef %40, ptr noundef nonnull @longjmp, i64 noundef 200) #13
  %42 = call i32 @_setjmp(ptr noundef %41) #14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  call void @png_destroy_read_struct(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #13
  br label %451

45:                                               ; preds = %35
  %46 = load ptr, ptr %5, align 8, !tbaa !47
  %47 = load ptr, ptr %6, align 8, !tbaa !47
  call void @png_read_info(ptr noundef %46, ptr noundef %47) #13
  %48 = load ptr, ptr %5, align 8, !tbaa !47
  %49 = load ptr, ptr %6, align 8, !tbaa !47
  %50 = call i32 @png_get_IHDR(ptr noundef %48, ptr noundef %49, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %51 = load ptr, ptr %5, align 8, !tbaa !47
  %52 = load ptr, ptr %6, align 8, !tbaa !47
  %53 = call zeroext i8 @png_get_channels(ptr noundef %51, ptr noundef %52) #13
  %54 = load i32, ptr %10, align 4, !tbaa !97
  switch i32 %54, label %67 [
    i32 2, label %71
    i32 6, label %71
    i32 3, label %55
    i32 0, label %62
    i32 4, label %62
  ]

55:                                               ; preds = %45
  %56 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_set_palette_to_rgb(ptr noundef %56) #13
  %57 = load ptr, ptr %5, align 8, !tbaa !47
  %58 = load ptr, ptr %6, align 8, !tbaa !47
  %59 = call i32 @png_get_valid(ptr noundef %57, ptr noundef %58, i32 noundef 16) #13
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i8 3, i8 4
  br label %71

62:                                               ; preds = %45, %45
  %63 = load i32, ptr %9, align 4, !tbaa !97
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_set_expand(ptr noundef %66) #13
  store i32 8, ptr %9, align 4, !tbaa !97
  br label %71

67:                                               ; preds = %45
  %68 = call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  %69 = load ptr, ptr %5, align 8, !tbaa !47
  %70 = call ptr @png_set_longjmp_fn(ptr noundef %69, ptr noundef nonnull @longjmp, i64 noundef 200) #13
  call void @longjmp(ptr noundef %70, i32 noundef 1) #15
  unreachable

71:                                               ; preds = %55, %62, %65, %45, %45
  %72 = phi i8 [ %53, %65 ], [ %53, %62 ], [ %53, %45 ], [ %53, %45 ], [ %61, %55 ]
  %73 = zext i8 %72 to i32
  %74 = load i32, ptr %7, align 4, !tbaa !97
  %75 = load i32, ptr %8, align 4, !tbaa !97
  %76 = shl i8 %72, 3
  %77 = call ptr @IMB_allocImBuf(i32 noundef %74, i32 noundef %75, i8 noundef zeroext %76, i32 noundef 0) #13
  %78 = icmp ne ptr %77, null
  br i1 %78, label %79, label %104

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 26
  store i32 1073741824, ptr %80, align 8, !tbaa !34
  %81 = load i32, ptr %9, align 4, !tbaa !97
  %82 = icmp eq i32 %81, 16
  %83 = select i1 %82, i32 1073742848, i32 1073741824
  store i32 %83, ptr %80, align 8
  %84 = load ptr, ptr %5, align 8, !tbaa !47
  %85 = load ptr, ptr %6, align 8, !tbaa !47
  %86 = call i32 @png_get_valid(ptr noundef %84, ptr noundef %85, i32 noundef 128) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %106, label %88

88:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #13
  %89 = load ptr, ptr %5, align 8, !tbaa !47
  %90 = load ptr, ptr %6, align 8, !tbaa !47
  %91 = call i32 @png_get_pHYs(ptr noundef %89, ptr noundef %90, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %12) #13
  %92 = icmp ne i32 %91, 0
  %93 = load i32, ptr %12, align 4
  %94 = icmp eq i32 %93, 1
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load i32, ptr %13, align 4, !tbaa !97
  %98 = uitofp i32 %97 to double
  %99 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 10
  store double %98, ptr %99, align 8, !tbaa !86
  %100 = load i32, ptr %14, align 4, !tbaa !97
  %101 = uitofp i32 %100 to double
  %102 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 10, i64 1
  store double %101, ptr %102, align 8, !tbaa !86
  br label %103

103:                                              ; preds = %96, %88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  br label %106

104:                                              ; preds = %71
  %105 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %106

106:                                              ; preds = %79, %103, %104
  %107 = and i32 %2, 2
  %108 = icmp eq i32 %107, 0
  %109 = and i1 %108, %78
  br i1 %109, label %110, label %435

110:                                              ; preds = %106
  %111 = load i32, ptr %9, align 4, !tbaa !97
  %112 = icmp eq i32 %111, 16
  br i1 %112, label %113, label %275

113:                                              ; preds = %110
  %114 = call zeroext i8 @imb_addrectfloatImBuf(ptr noundef nonnull %77) #13
  %115 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_set_swap(ptr noundef %115) #13
  %116 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %117 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !48
  %119 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 3
  %120 = load i32, ptr %119, align 4, !tbaa !49
  %121 = mul i32 %118, %73
  %122 = mul i32 %121, %120
  %123 = sext i32 %122 to i64
  %124 = shl nsw i64 %123, 1
  %125 = call ptr %116(i64 noundef %124, ptr noundef nonnull @.str.18) #13
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %113
  %128 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %129 = load ptr, ptr %5, align 8, !tbaa !47
  %130 = call ptr @png_set_longjmp_fn(ptr noundef %129, ptr noundef nonnull @longjmp, i64 noundef 200) #13
  call void @longjmp(ptr noundef %130, i32 noundef 1) #15
  unreachable

131:                                              ; preds = %113
  %132 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %133 = load i32, ptr %119, align 4, !tbaa !49
  %134 = sext i32 %133 to i64
  %135 = shl nsw i64 %134, 3
  %136 = call ptr %132(i64 noundef %135, ptr noundef nonnull @.str.12) #13
  %137 = icmp eq ptr %136, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %131
  %139 = load i32, ptr %119, align 4, !tbaa !49
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %138
  %142 = load i32, ptr %117, align 8, !tbaa !48
  %143 = zext nneg i32 %139 to i64
  %144 = zext nneg i32 %139 to i64
  %145 = getelementptr ptr, ptr %136, i64 %143
  br label %150

146:                                              ; preds = %131
  %147 = call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %148 = load ptr, ptr %5, align 8, !tbaa !47
  %149 = call ptr @png_set_longjmp_fn(ptr noundef %148, ptr noundef nonnull @longjmp, i64 noundef 200) #13
  call void @longjmp(ptr noundef %149, i32 noundef 1) #15
  unreachable

150:                                              ; preds = %141, %150
  %151 = phi i64 [ 0, %141 ], [ %159, %150 ]
  %152 = trunc i64 %151 to i32
  %153 = mul i32 %152, %73
  %154 = mul i32 %153, %142
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i16, ptr %125, i64 %155
  %157 = xor i64 %151, -1
  %158 = getelementptr ptr, ptr %145, i64 %157
  store ptr %156, ptr %158, align 8, !tbaa !47
  %159 = add nuw nsw i64 %151, 1
  %160 = icmp eq i64 %159, %144
  br i1 %160, label %161, label %150, !llvm.loop !98

161:                                              ; preds = %150, %138
  %162 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_read_image(ptr noundef %162, ptr noundef nonnull %136) #13
  %163 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 9
  %164 = load ptr, ptr %163, align 8, !tbaa !43
  switch i8 %72, label %405 [
    i8 4, label %165
    i8 3, label %200
    i8 2, label %230
    i8 1, label %255
  ]

165:                                              ; preds = %161
  %166 = load i32, ptr %117, align 8, !tbaa !48
  %167 = load i32, ptr %119, align 4, !tbaa !49
  %168 = mul nsw i32 %167, %166
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %405

170:                                              ; preds = %165, %170
  %171 = phi i32 [ %198, %170 ], [ %168, %165 ]
  %172 = phi ptr [ %196, %170 ], [ %164, %165 ]
  %173 = phi ptr [ %197, %170 ], [ %125, %165 ]
  %174 = load i16, ptr %173, align 2, !tbaa !53
  %175 = uitofp i16 %174 to double
  %176 = fdiv double %175, 6.553500e+04
  %177 = fptrunc double %176 to float
  store float %177, ptr %172, align 4, !tbaa !51
  %178 = getelementptr inbounds i16, ptr %173, i64 1
  %179 = load i16, ptr %178, align 2, !tbaa !53
  %180 = uitofp i16 %179 to double
  %181 = fdiv double %180, 6.553500e+04
  %182 = fptrunc double %181 to float
  %183 = getelementptr inbounds float, ptr %172, i64 1
  store float %182, ptr %183, align 4, !tbaa !51
  %184 = getelementptr inbounds i16, ptr %173, i64 2
  %185 = load i16, ptr %184, align 2, !tbaa !53
  %186 = uitofp i16 %185 to double
  %187 = fdiv double %186, 6.553500e+04
  %188 = fptrunc double %187 to float
  %189 = getelementptr inbounds float, ptr %172, i64 2
  store float %188, ptr %189, align 4, !tbaa !51
  %190 = getelementptr inbounds i16, ptr %173, i64 3
  %191 = load i16, ptr %190, align 2, !tbaa !53
  %192 = uitofp i16 %191 to double
  %193 = fdiv double %192, 6.553500e+04
  %194 = fptrunc double %193 to float
  %195 = getelementptr inbounds float, ptr %172, i64 3
  store float %194, ptr %195, align 4, !tbaa !51
  %196 = getelementptr inbounds float, ptr %172, i64 4
  %197 = getelementptr inbounds i16, ptr %173, i64 4
  %198 = add nsw i32 %171, -1
  %199 = icmp sgt i32 %171, 1
  br i1 %199, label %170, label %405, !llvm.loop !99

200:                                              ; preds = %161
  %201 = load i32, ptr %117, align 8, !tbaa !48
  %202 = load i32, ptr %119, align 4, !tbaa !49
  %203 = mul nsw i32 %202, %201
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %405

205:                                              ; preds = %200, %205
  %206 = phi i32 [ %228, %205 ], [ %203, %200 ]
  %207 = phi ptr [ %226, %205 ], [ %164, %200 ]
  %208 = phi ptr [ %227, %205 ], [ %125, %200 ]
  %209 = load i16, ptr %208, align 2, !tbaa !53
  %210 = uitofp i16 %209 to double
  %211 = fdiv double %210, 6.553500e+04
  %212 = fptrunc double %211 to float
  store float %212, ptr %207, align 4, !tbaa !51
  %213 = getelementptr inbounds i16, ptr %208, i64 1
  %214 = load i16, ptr %213, align 2, !tbaa !53
  %215 = uitofp i16 %214 to double
  %216 = fdiv double %215, 6.553500e+04
  %217 = fptrunc double %216 to float
  %218 = getelementptr inbounds float, ptr %207, i64 1
  store float %217, ptr %218, align 4, !tbaa !51
  %219 = getelementptr inbounds i16, ptr %208, i64 2
  %220 = load i16, ptr %219, align 2, !tbaa !53
  %221 = uitofp i16 %220 to double
  %222 = fdiv double %221, 6.553500e+04
  %223 = fptrunc double %222 to float
  %224 = getelementptr inbounds float, ptr %207, i64 2
  store float %223, ptr %224, align 4, !tbaa !51
  %225 = getelementptr inbounds float, ptr %207, i64 3
  store float 1.000000e+00, ptr %225, align 4, !tbaa !51
  %226 = getelementptr inbounds float, ptr %207, i64 4
  %227 = getelementptr inbounds i16, ptr %208, i64 3
  %228 = add nsw i32 %206, -1
  %229 = icmp sgt i32 %206, 1
  br i1 %229, label %205, label %405, !llvm.loop !100

230:                                              ; preds = %161
  %231 = load i32, ptr %117, align 8, !tbaa !48
  %232 = load i32, ptr %119, align 4, !tbaa !49
  %233 = mul nsw i32 %232, %231
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %405

235:                                              ; preds = %230, %235
  %236 = phi i32 [ %253, %235 ], [ %233, %230 ]
  %237 = phi ptr [ %251, %235 ], [ %164, %230 ]
  %238 = phi ptr [ %252, %235 ], [ %125, %230 ]
  %239 = load i16, ptr %238, align 2, !tbaa !53
  %240 = uitofp i16 %239 to double
  %241 = fdiv double %240, 6.553500e+04
  %242 = fptrunc double %241 to float
  %243 = getelementptr inbounds float, ptr %237, i64 2
  store float %242, ptr %243, align 4, !tbaa !51
  %244 = getelementptr inbounds float, ptr %237, i64 1
  store float %242, ptr %244, align 4, !tbaa !51
  store float %242, ptr %237, align 4, !tbaa !51
  %245 = getelementptr inbounds i16, ptr %238, i64 1
  %246 = load i16, ptr %245, align 2, !tbaa !53
  %247 = uitofp i16 %246 to double
  %248 = fdiv double %247, 6.553500e+04
  %249 = fptrunc double %248 to float
  %250 = getelementptr inbounds float, ptr %237, i64 3
  store float %249, ptr %250, align 4, !tbaa !51
  %251 = getelementptr inbounds float, ptr %237, i64 4
  %252 = getelementptr inbounds i16, ptr %238, i64 2
  %253 = add nsw i32 %236, -1
  %254 = icmp sgt i32 %236, 1
  br i1 %254, label %235, label %405, !llvm.loop !101

255:                                              ; preds = %161
  %256 = load i32, ptr %117, align 8, !tbaa !48
  %257 = load i32, ptr %119, align 4, !tbaa !49
  %258 = mul nsw i32 %257, %256
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %405

260:                                              ; preds = %255, %260
  %261 = phi i32 [ %273, %260 ], [ %258, %255 ]
  %262 = phi ptr [ %271, %260 ], [ %164, %255 ]
  %263 = phi ptr [ %272, %260 ], [ %125, %255 ]
  %264 = load i16, ptr %263, align 2, !tbaa !53
  %265 = uitofp i16 %264 to double
  %266 = fdiv double %265, 6.553500e+04
  %267 = fptrunc double %266 to float
  %268 = getelementptr inbounds float, ptr %262, i64 2
  store float %267, ptr %268, align 4, !tbaa !51
  %269 = getelementptr inbounds float, ptr %262, i64 1
  store float %267, ptr %269, align 4, !tbaa !51
  store float %267, ptr %262, align 4, !tbaa !51
  %270 = getelementptr inbounds float, ptr %262, i64 3
  store float 1.000000e+00, ptr %270, align 4, !tbaa !51
  %271 = getelementptr inbounds float, ptr %262, i64 4
  %272 = getelementptr inbounds i16, ptr %263, i64 1
  %273 = add nsw i32 %261, -1
  %274 = icmp sgt i32 %261, 1
  br i1 %274, label %260, label %405, !llvm.loop !102

275:                                              ; preds = %110
  %276 = call zeroext i8 @imb_addrectImBuf(ptr noundef nonnull %77) #13
  %277 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %278 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 2
  %279 = load i32, ptr %278, align 8, !tbaa !48
  %280 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 3
  %281 = load i32, ptr %280, align 4, !tbaa !49
  %282 = mul i32 %279, %73
  %283 = mul i32 %282, %281
  %284 = sext i32 %283 to i64
  %285 = call ptr %277(i64 noundef %284, ptr noundef nonnull @.str.18) #13
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %291

287:                                              ; preds = %275
  %288 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %289 = load ptr, ptr %5, align 8, !tbaa !47
  %290 = call ptr @png_set_longjmp_fn(ptr noundef %289, ptr noundef nonnull @longjmp, i64 noundef 200) #13
  call void @longjmp(ptr noundef %290, i32 noundef 1) #15
  unreachable

291:                                              ; preds = %275
  %292 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %293 = load i32, ptr %280, align 4, !tbaa !49
  %294 = sext i32 %293 to i64
  %295 = shl nsw i64 %294, 3
  %296 = call ptr %292(i64 noundef %295, ptr noundef nonnull @.str.12) #13
  %297 = icmp eq ptr %296, null
  br i1 %297, label %306, label %298

298:                                              ; preds = %291
  %299 = load i32, ptr %280, align 4, !tbaa !49
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %321

301:                                              ; preds = %298
  %302 = load i32, ptr %278, align 8, !tbaa !48
  %303 = zext nneg i32 %299 to i64
  %304 = zext nneg i32 %299 to i64
  %305 = getelementptr ptr, ptr %296, i64 %303
  br label %310

306:                                              ; preds = %291
  %307 = call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %308 = load ptr, ptr %5, align 8, !tbaa !47
  %309 = call ptr @png_set_longjmp_fn(ptr noundef %308, ptr noundef nonnull @longjmp, i64 noundef 200) #13
  call void @longjmp(ptr noundef %309, i32 noundef 1) #15
  unreachable

310:                                              ; preds = %301, %310
  %311 = phi i64 [ 0, %301 ], [ %319, %310 ]
  %312 = trunc i64 %311 to i32
  %313 = mul i32 %312, %73
  %314 = mul i32 %313, %302
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, ptr %285, i64 %315
  %317 = xor i64 %311, -1
  %318 = getelementptr ptr, ptr %305, i64 %317
  store ptr %316, ptr %318, align 8, !tbaa !47
  %319 = add nuw nsw i64 %311, 1
  %320 = icmp eq i64 %319, %304
  br i1 %320, label %321, label %310, !llvm.loop !103

321:                                              ; preds = %310, %298
  %322 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_read_image(ptr noundef %322, ptr noundef nonnull %296) #13
  %323 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 8
  %324 = load ptr, ptr %323, align 8, !tbaa !50
  switch i8 %72, label %405 [
    i8 4, label %325
    i8 3, label %348
    i8 2, label %369
    i8 1, label %388
  ]

325:                                              ; preds = %321
  %326 = load i32, ptr %278, align 8, !tbaa !48
  %327 = load i32, ptr %280, align 4, !tbaa !49
  %328 = mul nsw i32 %327, %326
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %330, label %405

330:                                              ; preds = %325, %330
  %331 = phi i32 [ %346, %330 ], [ %328, %325 ]
  %332 = phi ptr [ %344, %330 ], [ %324, %325 ]
  %333 = phi ptr [ %345, %330 ], [ %285, %325 ]
  %334 = load i8, ptr %333, align 1, !tbaa !60
  store i8 %334, ptr %332, align 1, !tbaa !60
  %335 = getelementptr inbounds i8, ptr %333, i64 1
  %336 = load i8, ptr %335, align 1, !tbaa !60
  %337 = getelementptr inbounds i8, ptr %332, i64 1
  store i8 %336, ptr %337, align 1, !tbaa !60
  %338 = getelementptr inbounds i8, ptr %333, i64 2
  %339 = load i8, ptr %338, align 1, !tbaa !60
  %340 = getelementptr inbounds i8, ptr %332, i64 2
  store i8 %339, ptr %340, align 1, !tbaa !60
  %341 = getelementptr inbounds i8, ptr %333, i64 3
  %342 = load i8, ptr %341, align 1, !tbaa !60
  %343 = getelementptr inbounds i8, ptr %332, i64 3
  store i8 %342, ptr %343, align 1, !tbaa !60
  %344 = getelementptr inbounds i8, ptr %332, i64 4
  %345 = getelementptr inbounds i8, ptr %333, i64 4
  %346 = add nsw i32 %331, -1
  %347 = icmp sgt i32 %331, 1
  br i1 %347, label %330, label %405, !llvm.loop !104

348:                                              ; preds = %321
  %349 = load i32, ptr %278, align 8, !tbaa !48
  %350 = load i32, ptr %280, align 4, !tbaa !49
  %351 = mul nsw i32 %350, %349
  %352 = icmp sgt i32 %351, 0
  br i1 %352, label %353, label %405

353:                                              ; preds = %348, %353
  %354 = phi i32 [ %367, %353 ], [ %351, %348 ]
  %355 = phi ptr [ %365, %353 ], [ %324, %348 ]
  %356 = phi ptr [ %366, %353 ], [ %285, %348 ]
  %357 = load i8, ptr %356, align 1, !tbaa !60
  store i8 %357, ptr %355, align 1, !tbaa !60
  %358 = getelementptr inbounds i8, ptr %356, i64 1
  %359 = load i8, ptr %358, align 1, !tbaa !60
  %360 = getelementptr inbounds i8, ptr %355, i64 1
  store i8 %359, ptr %360, align 1, !tbaa !60
  %361 = getelementptr inbounds i8, ptr %356, i64 2
  %362 = load i8, ptr %361, align 1, !tbaa !60
  %363 = getelementptr inbounds i8, ptr %355, i64 2
  store i8 %362, ptr %363, align 1, !tbaa !60
  %364 = getelementptr inbounds i8, ptr %355, i64 3
  store i8 -1, ptr %364, align 1, !tbaa !60
  %365 = getelementptr inbounds i8, ptr %355, i64 4
  %366 = getelementptr inbounds i8, ptr %356, i64 3
  %367 = add nsw i32 %354, -1
  %368 = icmp sgt i32 %354, 1
  br i1 %368, label %353, label %405, !llvm.loop !105

369:                                              ; preds = %321
  %370 = load i32, ptr %278, align 8, !tbaa !48
  %371 = load i32, ptr %280, align 4, !tbaa !49
  %372 = mul nsw i32 %371, %370
  %373 = icmp sgt i32 %372, 0
  br i1 %373, label %374, label %405

374:                                              ; preds = %369, %374
  %375 = phi i32 [ %386, %374 ], [ %372, %369 ]
  %376 = phi ptr [ %384, %374 ], [ %324, %369 ]
  %377 = phi ptr [ %385, %374 ], [ %285, %369 ]
  %378 = load i8, ptr %377, align 1, !tbaa !60
  %379 = getelementptr inbounds i8, ptr %376, i64 2
  store i8 %378, ptr %379, align 1, !tbaa !60
  %380 = getelementptr inbounds i8, ptr %376, i64 1
  store i8 %378, ptr %380, align 1, !tbaa !60
  store i8 %378, ptr %376, align 1, !tbaa !60
  %381 = getelementptr inbounds i8, ptr %377, i64 1
  %382 = load i8, ptr %381, align 1, !tbaa !60
  %383 = getelementptr inbounds i8, ptr %376, i64 3
  store i8 %382, ptr %383, align 1, !tbaa !60
  %384 = getelementptr inbounds i8, ptr %376, i64 4
  %385 = getelementptr inbounds i8, ptr %377, i64 2
  %386 = add nsw i32 %375, -1
  %387 = icmp sgt i32 %375, 1
  br i1 %387, label %374, label %405, !llvm.loop !106

388:                                              ; preds = %321
  %389 = load i32, ptr %278, align 8, !tbaa !48
  %390 = load i32, ptr %280, align 4, !tbaa !49
  %391 = mul nsw i32 %390, %389
  %392 = icmp sgt i32 %391, 0
  br i1 %392, label %393, label %405

393:                                              ; preds = %388, %393
  %394 = phi i32 [ %403, %393 ], [ %391, %388 ]
  %395 = phi ptr [ %401, %393 ], [ %324, %388 ]
  %396 = phi ptr [ %402, %393 ], [ %285, %388 ]
  %397 = load i8, ptr %396, align 1, !tbaa !60
  %398 = getelementptr inbounds i8, ptr %395, i64 2
  store i8 %397, ptr %398, align 1, !tbaa !60
  %399 = getelementptr inbounds i8, ptr %395, i64 1
  store i8 %397, ptr %399, align 1, !tbaa !60
  store i8 %397, ptr %395, align 1, !tbaa !60
  %400 = getelementptr inbounds i8, ptr %395, i64 3
  store i8 -1, ptr %400, align 1, !tbaa !60
  %401 = getelementptr inbounds i8, ptr %395, i64 4
  %402 = getelementptr inbounds i8, ptr %396, i64 1
  %403 = add nsw i32 %394, -1
  %404 = icmp sgt i32 %394, 1
  br i1 %404, label %393, label %405, !llvm.loop !107

405:                                              ; preds = %393, %374, %353, %330, %260, %235, %205, %170, %388, %369, %348, %325, %255, %230, %200, %165, %321, %161
  %406 = phi ptr [ null, %161 ], [ %285, %321 ], [ null, %165 ], [ null, %200 ], [ null, %230 ], [ null, %255 ], [ %285, %325 ], [ %285, %348 ], [ %285, %369 ], [ %285, %388 ], [ null, %170 ], [ null, %205 ], [ null, %235 ], [ null, %260 ], [ %285, %330 ], [ %285, %353 ], [ %285, %374 ], [ %285, %393 ]
  %407 = phi ptr [ %125, %161 ], [ null, %321 ], [ %125, %165 ], [ %125, %200 ], [ %125, %230 ], [ %125, %255 ], [ null, %325 ], [ null, %348 ], [ null, %369 ], [ null, %388 ], [ %125, %170 ], [ %125, %205 ], [ %125, %235 ], [ %125, %260 ], [ null, %330 ], [ null, %353 ], [ null, %374 ], [ null, %393 ]
  %408 = phi ptr [ %136, %161 ], [ %296, %321 ], [ %136, %165 ], [ %136, %200 ], [ %136, %230 ], [ %136, %255 ], [ %296, %325 ], [ %296, %348 ], [ %296, %369 ], [ %296, %388 ], [ %136, %170 ], [ %136, %205 ], [ %136, %235 ], [ %136, %260 ], [ %296, %330 ], [ %296, %353 ], [ %296, %374 ], [ %296, %393 ]
  %409 = and i32 %2, 256
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %432, label %411

411:                                              ; preds = %405
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  %412 = load ptr, ptr %5, align 8, !tbaa !47
  %413 = load ptr, ptr %6, align 8, !tbaa !47
  %414 = call i32 @png_get_text(ptr noundef %412, ptr noundef %413, ptr noundef nonnull %15, ptr noundef null) #13
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %431

416:                                              ; preds = %411
  %417 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 6
  %418 = zext nneg i32 %414 to i64
  br label %419

419:                                              ; preds = %416, %419
  %420 = phi i64 [ 0, %416 ], [ %429, %419 ]
  %421 = load ptr, ptr %15, align 8, !tbaa !47
  %422 = getelementptr inbounds %struct.png_text_struct, ptr %421, i64 %420, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !82
  %424 = getelementptr inbounds %struct.png_text_struct, ptr %421, i64 %420, i32 2
  %425 = load ptr, ptr %424, align 8, !tbaa !84
  %426 = call zeroext i8 @IMB_metadata_add_field(ptr noundef nonnull %77, ptr noundef %423, ptr noundef %425) #13
  %427 = load i32, ptr %417, align 8, !tbaa !108
  %428 = or i32 %427, 256
  store i32 %428, ptr %417, align 8, !tbaa !108
  %429 = add nuw nsw i64 %420, 1
  %430 = icmp eq i64 %429, %418
  br i1 %430, label %431, label %419, !llvm.loop !109

431:                                              ; preds = %419, %411
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  br label %432

432:                                              ; preds = %431, %405
  %433 = load ptr, ptr %5, align 8, !tbaa !47
  %434 = load ptr, ptr %6, align 8, !tbaa !47
  call void @png_read_end(ptr noundef %433, ptr noundef %434) #13
  br label %435

435:                                              ; preds = %432, %106
  %436 = phi ptr [ %406, %432 ], [ null, %106 ]
  %437 = phi ptr [ %407, %432 ], [ null, %106 ]
  %438 = phi ptr [ %408, %432 ], [ null, %106 ]
  %439 = icmp eq ptr %436, null
  br i1 %439, label %442, label %440

440:                                              ; preds = %435
  %441 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %441(ptr noundef nonnull %436) #13
  br label %442

442:                                              ; preds = %440, %435
  %443 = icmp eq ptr %437, null
  br i1 %443, label %446, label %444

444:                                              ; preds = %442
  %445 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %445(ptr noundef nonnull %437) #13
  br label %446

446:                                              ; preds = %444, %442
  %447 = icmp eq ptr %438, null
  br i1 %447, label %450, label %448

448:                                              ; preds = %446
  %449 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %449(ptr noundef nonnull %438) #13
  br label %450

450:                                              ; preds = %448, %446
  call void @png_destroy_read_struct(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #13
  br label %451

451:                                              ; preds = %21, %450, %44, %33, %27
  %452 = phi ptr [ null, %27 ], [ null, %33 ], [ null, %44 ], [ %77, %450 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %452
}

declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @png_create_read_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_set_error_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal void @imb_png_error(ptr nocapture readnone %0, ptr noundef %1) #7 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !47
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef %1) #16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @imb_png_warning(ptr nocapture readnone %0, ptr noundef %1) #7 {
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !110
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.22, i64 noundef 4) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !47
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.23, ptr noundef %1) #16
  br label %12

12:                                               ; preds = %6, %9
  ret void
}

declare void @png_destroy_read_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_set_read_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ReadData(ptr noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2) #0 {
  %4 = tail call ptr @png_get_io_ptr(ptr noundef %0) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.PNGReadStruct, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.PNGReadStruct, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !96
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, %2
  br i1 %13, label %21, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %4, align 8, !tbaa !95
  %16 = zext i32 %10 to i64
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %17, i64 %2, i1 false)
  %18 = load i32, ptr %9, align 4, !tbaa !96
  %19 = trunc i64 %2 to i32
  %20 = add i32 %18, %19
  store i32 %20, ptr %9, align 4, !tbaa !96
  ret void

21:                                               ; preds = %6, %3
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  %23 = tail call ptr @png_set_longjmp_fn(ptr noundef %0, ptr noundef nonnull @longjmp, i64 noundef 200) #13
  tail call void @longjmp(ptr noundef %23, i32 noundef 1) #15
  unreachable
}

declare void @png_read_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @png_get_IHDR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @png_get_channels(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_set_palette_to_rgb(ptr noundef) local_unnamed_addr #2

declare i32 @png_get_valid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_set_expand(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @png_get_pHYs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @imb_addrectfloatImBuf(ptr noundef) local_unnamed_addr #2

declare void @png_read_image(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @imb_addrectImBuf(ptr noundef) local_unnamed_addr #2

declare i32 @png_get_text(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @IMB_metadata_add_field(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_read_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare ptr @png_get_io_ptr(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @imb_enlargeencodedbufferImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind returns_twice }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !39, i64 312}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!35, !36, i64 48}
!44 = !{!35, !39, i64 28}
!45 = !{!35, !36, i64 2408}
!46 = !{!35, !37, i64 24}
!47 = !{!36, !36, i64 0}
!48 = !{!35, !39, i64 16}
!49 = !{!35, !39, i64 20}
!50 = !{!35, !36, i64 40}
!51 = !{!40, !40, i64 0}
!52 = !{ptr @channel_colormanage_noop, ptr @linearrgb_to_srgb}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !37, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = distinct !{!59, !56, !57}
!60 = !{!37, !37, i64 0}
!61 = distinct !{!61, !56, !57}
!62 = distinct !{!62, !56, !57}
!63 = distinct !{!63, !56, !57}
!64 = distinct !{!64, !56, !57}
!65 = distinct !{!65, !56, !57}
!66 = distinct !{!66, !56, !57}
!67 = distinct !{!67, !56, !57}
!68 = distinct !{!68, !56, !57}
!69 = distinct !{!69, !56, !57}
!70 = distinct !{!70, !56, !57}
!71 = distinct !{!71, !56, !57}
!72 = distinct !{!72, !56, !57}
!73 = !{!35, !39, i64 2392}
!74 = !{!35, !36, i64 296}
!75 = !{!76, !36, i64 0}
!76 = !{!"ImMetaData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32}
!77 = distinct !{!77, !56, !57}
!78 = !{!79, !39, i64 0}
!79 = !{!"png_text_struct", !39, i64 0, !36, i64 8, !36, i64 16, !80, i64 24, !80, i64 32, !36, i64 40, !36, i64 48}
!80 = !{!"long", !37, i64 0}
!81 = !{!76, !36, i64 16}
!82 = !{!79, !36, i64 8}
!83 = !{!76, !36, i64 24}
!84 = !{!79, !36, i64 16}
!85 = distinct !{!85, !56, !57}
!86 = !{!87, !87, i64 0}
!87 = !{!"double", !37, i64 0}
!88 = distinct !{!88, !56, !57}
!89 = distinct !{!89, !56, !57}
!90 = !{!35, !39, i64 2396}
!91 = distinct !{!91, !56, !57}
!92 = !{!35, !36, i64 2384}
!93 = !{!94, !39, i64 8}
!94 = !{!"PNGReadStruct", !36, i64 0, !39, i64 8, !39, i64 12}
!95 = !{!94, !36, i64 0}
!96 = !{!94, !39, i64 12}
!97 = !{!39, !39, i64 0}
!98 = distinct !{!98, !56, !57}
!99 = distinct !{!99, !56, !57}
!100 = distinct !{!100, !56, !57}
!101 = distinct !{!101, !56, !57}
!102 = distinct !{!102, !56, !57}
!103 = distinct !{!103, !56, !57}
!104 = distinct !{!104, !56, !57}
!105 = distinct !{!105, !56, !57}
!106 = distinct !{!106, !56, !57}
!107 = distinct !{!107, !56, !57}
!108 = !{!35, !39, i64 32}
!109 = distinct !{!109, !56, !57}
!110 = !{!111, !39, i64 2100}
!111 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !112, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !54, i64 2084, !54, i64 2086, !54, i64 2088, !37, i64 2090, !54, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!112 = !{!"ListBase", !36, i64 0, !36, i64 8}
