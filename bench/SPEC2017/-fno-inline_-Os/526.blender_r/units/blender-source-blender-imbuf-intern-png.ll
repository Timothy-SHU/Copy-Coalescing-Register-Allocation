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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @imb_is_a_png(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @png_sig_cmp(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 8) #15
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ %6, %3 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @png_sig_cmp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @imb_savepng(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !44
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 4, i32 %14
  %17 = and i32 %9, 255
  %18 = sitofp i32 %17 to float
  %19 = fdiv float %18, 0x402638E220000000
  %20 = fptosi float %19 to i32
  %21 = call i32 @llvm.smin.i32(i32 %20, i32 9)
  %22 = call i32 @llvm.smax.i32(i32 %21, i32 0)
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr @linearrgb_to_srgb, ptr @channel_colormanage_noop
  %27 = and i32 %2, 16
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr %1, ptr @.str
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %31 = load i8, ptr %30, align 8, !tbaa !46
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %32, 7
  %34 = lshr i32 %33, 3
  %35 = icmp ugt i8 %31, 32
  %36 = icmp eq i32 %34, 2
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %34, ptr noundef %29) #17
  br label %557

40:                                               ; preds = %3
  %41 = call noalias ptr @png_create_write_struct(ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null) #15
  store ptr %41, ptr %4, align 8, !tbaa !47
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %29) #17
  br label %557

45:                                               ; preds = %40
  %46 = call noalias ptr @png_create_info_struct(ptr noundef nonnull %41) #15
  store ptr %46, ptr %5, align 8, !tbaa !47
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef null) #15
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %29) #17
  br label %557

50:                                               ; preds = %45
  %51 = load ptr, ptr %4, align 8, !tbaa !47
  %52 = call ptr @png_set_longjmp_fn(ptr noundef %51, ptr noundef nonnull @longjmp, i64 noundef 200) #15
  %53 = call i32 @_setjmp(ptr noundef %52) #18
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %29) #17
  br label %557

57:                                               ; preds = %50
  %58 = and i32 %9, 1024
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %61 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !48
  %63 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !49
  %65 = mul i32 %62, %34
  %66 = mul i32 %65, %64
  %67 = sext i32 %66 to i64
  br i1 %59, label %71, label %68

68:                                               ; preds = %57
  %69 = shl nsw i64 %67, 1
  %70 = call ptr %60(i64 noundef %69, ptr noundef nonnull @.str.6) #15
  br label %73

71:                                               ; preds = %57
  %72 = call ptr %60(i64 noundef %67, ptr noundef nonnull @.str.7) #15
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi ptr [ %70, %68 ], [ null, %71 ]
  %75 = phi ptr [ null, %68 ], [ %72, %71 ]
  %76 = icmp eq ptr %75, null
  %77 = icmp eq ptr %74, null
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %80 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !48
  %82 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !49
  %84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %81, i32 noundef %83, i32 noundef %34, ptr noundef %29) #17
  br label %557

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %87 = load ptr, ptr %86, align 8, !tbaa !50
  %88 = load ptr, ptr %10, align 8, !tbaa !43
  switch i32 %34, label %407 [
    i32 4, label %89
    i32 3, label %205
    i32 1, label %308
  ]

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !48
  %92 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !49
  %94 = mul nsw i32 %93, %91
  %95 = icmp sgt i32 %94, 0
  br i1 %59, label %186, label %96

96:                                               ; preds = %89
  br i1 %12, label %163, label %97

97:                                               ; preds = %96
  switch i32 %16, label %149 [
    i32 4, label %98
    i32 3, label %126
  ]

98:                                               ; preds = %97
  br i1 %95, label %99, label %407

99:                                               ; preds = %98
  %100 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %101 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %102 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  br label %103

103:                                              ; preds = %99, %103
  %104 = phi i32 [ %94, %99 ], [ %124, %103 ]
  %105 = phi ptr [ %88, %99 ], [ %123, %103 ]
  %106 = phi ptr [ %74, %99 ], [ %122, %103 ]
  call fastcc void @premul_to_straight_v4_v4(ptr noundef nonnull %6, ptr noundef %105) #17
  %107 = load float, ptr %6, align 16, !tbaa !51
  %108 = call float %26(float noundef %107) #15, !callees !52
  %109 = call fastcc zeroext i16 @ftoshort(float noundef %108) #17
  store i16 %109, ptr %106, align 2, !tbaa !53
  %110 = load float, ptr %100, align 4, !tbaa !51
  %111 = call float %26(float noundef %110) #15, !callees !52
  %112 = call fastcc zeroext i16 @ftoshort(float noundef %111) #17
  %113 = getelementptr inbounds i16, ptr %106, i64 1
  store i16 %112, ptr %113, align 2, !tbaa !53
  %114 = load float, ptr %101, align 8, !tbaa !51
  %115 = call float %26(float noundef %114) #15, !callees !52
  %116 = call fastcc zeroext i16 @ftoshort(float noundef %115) #17
  %117 = getelementptr inbounds i16, ptr %106, i64 2
  store i16 %116, ptr %117, align 2, !tbaa !53
  %118 = load float, ptr %102, align 4, !tbaa !51
  %119 = call float %26(float noundef %118) #15, !callees !52
  %120 = call fastcc zeroext i16 @ftoshort(float noundef %119) #17
  %121 = getelementptr inbounds i16, ptr %106, i64 3
  store i16 %120, ptr %121, align 2, !tbaa !53
  %122 = getelementptr inbounds i16, ptr %106, i64 4
  %123 = getelementptr inbounds float, ptr %105, i64 4
  %124 = add nsw i32 %104, -1
  %125 = icmp ugt i32 %104, 1
  br i1 %125, label %103, label %407, !llvm.loop !55

126:                                              ; preds = %97
  br i1 %95, label %127, label %407

127:                                              ; preds = %126, %127
  %128 = phi i32 [ %147, %127 ], [ %94, %126 ]
  %129 = phi ptr [ %146, %127 ], [ %88, %126 ]
  %130 = phi ptr [ %145, %127 ], [ %74, %126 ]
  %131 = load float, ptr %129, align 4, !tbaa !51
  %132 = call float %26(float noundef %131) #15, !callees !52
  %133 = call fastcc zeroext i16 @ftoshort(float noundef %132) #17
  store i16 %133, ptr %130, align 2, !tbaa !53
  %134 = getelementptr inbounds float, ptr %129, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !51
  %136 = call float %26(float noundef %135) #15, !callees !52
  %137 = call fastcc zeroext i16 @ftoshort(float noundef %136) #17
  %138 = getelementptr inbounds i16, ptr %130, i64 1
  store i16 %137, ptr %138, align 2, !tbaa !53
  %139 = getelementptr inbounds float, ptr %129, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !51
  %141 = call float %26(float noundef %140) #15, !callees !52
  %142 = call fastcc zeroext i16 @ftoshort(float noundef %141) #17
  %143 = getelementptr inbounds i16, ptr %130, i64 2
  store i16 %142, ptr %143, align 2, !tbaa !53
  %144 = getelementptr inbounds i16, ptr %130, i64 3
  store i16 -1, ptr %144, align 2, !tbaa !53
  %145 = getelementptr inbounds i16, ptr %130, i64 4
  %146 = getelementptr inbounds float, ptr %129, i64 3
  %147 = add nsw i32 %128, -1
  %148 = icmp ugt i32 %128, 1
  br i1 %148, label %127, label %407, !llvm.loop !57

149:                                              ; preds = %97
  br i1 %95, label %150, label %407

150:                                              ; preds = %149, %150
  %151 = phi i32 [ %161, %150 ], [ %94, %149 ]
  %152 = phi ptr [ %160, %150 ], [ %88, %149 ]
  %153 = phi ptr [ %159, %150 ], [ %74, %149 ]
  %154 = load float, ptr %152, align 4, !tbaa !51
  %155 = call float %26(float noundef %154) #15, !callees !52
  %156 = call fastcc zeroext i16 @ftoshort(float noundef %155) #17
  %157 = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %156, i64 0
  %158 = shufflevector <4 x i16> %157, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %158, ptr %153, align 2, !tbaa !53
  %159 = getelementptr inbounds i16, ptr %153, i64 4
  %160 = getelementptr inbounds float, ptr %152, i64 1
  %161 = add nsw i32 %151, -1
  %162 = icmp ugt i32 %151, 1
  br i1 %162, label %150, label %407, !llvm.loop !58

163:                                              ; preds = %96
  br i1 %95, label %164, label %407

164:                                              ; preds = %163, %164
  %165 = phi ptr [ %183, %164 ], [ %87, %163 ]
  %166 = phi i32 [ %184, %164 ], [ %94, %163 ]
  %167 = phi ptr [ %182, %164 ], [ %74, %163 ]
  %168 = load i8, ptr %165, align 1, !tbaa !59
  %169 = call fastcc zeroext i16 @UPSAMPLE_8_TO_16(i8 noundef zeroext %168) #17
  store i16 %169, ptr %167, align 2, !tbaa !53
  %170 = getelementptr inbounds i8, ptr %165, i64 1
  %171 = load i8, ptr %170, align 1, !tbaa !59
  %172 = call fastcc zeroext i16 @UPSAMPLE_8_TO_16(i8 noundef zeroext %171) #17
  %173 = getelementptr inbounds i16, ptr %167, i64 1
  store i16 %172, ptr %173, align 2, !tbaa !53
  %174 = getelementptr inbounds i8, ptr %165, i64 2
  %175 = load i8, ptr %174, align 1, !tbaa !59
  %176 = call fastcc zeroext i16 @UPSAMPLE_8_TO_16(i8 noundef zeroext %175) #17
  %177 = getelementptr inbounds i16, ptr %167, i64 2
  store i16 %176, ptr %177, align 2, !tbaa !53
  %178 = getelementptr inbounds i8, ptr %165, i64 3
  %179 = load i8, ptr %178, align 1, !tbaa !59
  %180 = call fastcc zeroext i16 @UPSAMPLE_8_TO_16(i8 noundef zeroext %179) #17
  %181 = getelementptr inbounds i16, ptr %167, i64 3
  store i16 %180, ptr %181, align 2, !tbaa !53
  %182 = getelementptr inbounds i16, ptr %167, i64 4
  %183 = getelementptr inbounds i8, ptr %165, i64 4
  %184 = add nsw i32 %166, -1
  %185 = icmp ugt i32 %166, 1
  br i1 %185, label %164, label %407, !llvm.loop !60

186:                                              ; preds = %89
  br i1 %95, label %187, label %407

187:                                              ; preds = %186, %187
  %188 = phi ptr [ %202, %187 ], [ %87, %186 ]
  %189 = phi ptr [ %201, %187 ], [ %75, %186 ]
  %190 = phi i32 [ %203, %187 ], [ %94, %186 ]
  %191 = load i8, ptr %188, align 1, !tbaa !59
  store i8 %191, ptr %189, align 1, !tbaa !59
  %192 = getelementptr inbounds i8, ptr %188, i64 1
  %193 = load i8, ptr %192, align 1, !tbaa !59
  %194 = getelementptr inbounds i8, ptr %189, i64 1
  store i8 %193, ptr %194, align 1, !tbaa !59
  %195 = getelementptr inbounds i8, ptr %188, i64 2
  %196 = load i8, ptr %195, align 1, !tbaa !59
  %197 = getelementptr inbounds i8, ptr %189, i64 2
  store i8 %196, ptr %197, align 1, !tbaa !59
  %198 = getelementptr inbounds i8, ptr %188, i64 3
  %199 = load i8, ptr %198, align 1, !tbaa !59
  %200 = getelementptr inbounds i8, ptr %189, i64 3
  store i8 %199, ptr %200, align 1, !tbaa !59
  %201 = getelementptr inbounds i8, ptr %189, i64 4
  %202 = getelementptr inbounds i8, ptr %188, i64 4
  %203 = add nsw i32 %190, -1
  %204 = icmp ugt i32 %190, 1
  br i1 %204, label %187, label %407, !llvm.loop !61

205:                                              ; preds = %85
  %206 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %207 = load i32, ptr %206, align 8, !tbaa !48
  %208 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %209 = load i32, ptr %208, align 4, !tbaa !49
  %210 = mul nsw i32 %209, %207
  %211 = icmp sgt i32 %210, 0
  br i1 %59, label %292, label %212

212:                                              ; preds = %205
  br i1 %12, label %273, label %213

213:                                              ; preds = %212
  switch i32 %16, label %259 [
    i32 4, label %214
    i32 3, label %237
  ]

214:                                              ; preds = %213
  br i1 %211, label %215, label %407

215:                                              ; preds = %214
  %216 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %217 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  br label %218

218:                                              ; preds = %215, %218
  %219 = phi i32 [ %210, %215 ], [ %235, %218 ]
  %220 = phi ptr [ %88, %215 ], [ %234, %218 ]
  %221 = phi ptr [ %74, %215 ], [ %233, %218 ]
  call fastcc void @premul_to_straight_v4_v4(ptr noundef nonnull %6, ptr noundef %220) #17
  %222 = load float, ptr %6, align 16, !tbaa !51
  %223 = call float %26(float noundef %222) #15, !callees !52
  %224 = call fastcc zeroext i16 @ftoshort(float noundef %223) #17
  store i16 %224, ptr %221, align 2, !tbaa !53
  %225 = load float, ptr %216, align 4, !tbaa !51
  %226 = call float %26(float noundef %225) #15, !callees !52
  %227 = call fastcc zeroext i16 @ftoshort(float noundef %226) #17
  %228 = getelementptr inbounds i16, ptr %221, i64 1
  store i16 %227, ptr %228, align 2, !tbaa !53
  %229 = load float, ptr %217, align 8, !tbaa !51
  %230 = call float %26(float noundef %229) #15, !callees !52
  %231 = call fastcc zeroext i16 @ftoshort(float noundef %230) #17
  %232 = getelementptr inbounds i16, ptr %221, i64 2
  store i16 %231, ptr %232, align 2, !tbaa !53
  %233 = getelementptr inbounds i16, ptr %221, i64 3
  %234 = getelementptr inbounds float, ptr %220, i64 4
  %235 = add nsw i32 %219, -1
  %236 = icmp ugt i32 %219, 1
  br i1 %236, label %218, label %407, !llvm.loop !62

237:                                              ; preds = %213
  br i1 %211, label %238, label %407

238:                                              ; preds = %237, %238
  %239 = phi i32 [ %257, %238 ], [ %210, %237 ]
  %240 = phi ptr [ %256, %238 ], [ %88, %237 ]
  %241 = phi ptr [ %255, %238 ], [ %74, %237 ]
  %242 = load float, ptr %240, align 4, !tbaa !51
  %243 = call float %26(float noundef %242) #15, !callees !52
  %244 = call fastcc zeroext i16 @ftoshort(float noundef %243) #17
  store i16 %244, ptr %241, align 2, !tbaa !53
  %245 = getelementptr inbounds float, ptr %240, i64 1
  %246 = load float, ptr %245, align 4, !tbaa !51
  %247 = call float %26(float noundef %246) #15, !callees !52
  %248 = call fastcc zeroext i16 @ftoshort(float noundef %247) #17
  %249 = getelementptr inbounds i16, ptr %241, i64 1
  store i16 %248, ptr %249, align 2, !tbaa !53
  %250 = getelementptr inbounds float, ptr %240, i64 2
  %251 = load float, ptr %250, align 4, !tbaa !51
  %252 = call float %26(float noundef %251) #15, !callees !52
  %253 = call fastcc zeroext i16 @ftoshort(float noundef %252) #17
  %254 = getelementptr inbounds i16, ptr %241, i64 2
  store i16 %253, ptr %254, align 2, !tbaa !53
  %255 = getelementptr inbounds i16, ptr %241, i64 3
  %256 = getelementptr inbounds float, ptr %240, i64 3
  %257 = add nsw i32 %239, -1
  %258 = icmp ugt i32 %239, 1
  br i1 %258, label %238, label %407, !llvm.loop !63

259:                                              ; preds = %213
  br i1 %211, label %260, label %407

260:                                              ; preds = %259, %260
  %261 = phi i32 [ %271, %260 ], [ %210, %259 ]
  %262 = phi ptr [ %270, %260 ], [ %88, %259 ]
  %263 = phi ptr [ %269, %260 ], [ %74, %259 ]
  %264 = load float, ptr %262, align 4, !tbaa !51
  %265 = call float %26(float noundef %264) #15, !callees !52
  %266 = call fastcc zeroext i16 @ftoshort(float noundef %265) #17
  store i16 %266, ptr %263, align 2, !tbaa !53
  %267 = getelementptr inbounds i16, ptr %263, i64 1
  store i16 %266, ptr %267, align 2, !tbaa !53
  %268 = getelementptr inbounds i16, ptr %263, i64 2
  store i16 %266, ptr %268, align 2, !tbaa !53
  %269 = getelementptr inbounds i16, ptr %263, i64 3
  %270 = getelementptr inbounds float, ptr %262, i64 1
  %271 = add nsw i32 %261, -1
  %272 = icmp ugt i32 %261, 1
  br i1 %272, label %260, label %407, !llvm.loop !64

273:                                              ; preds = %212
  br i1 %211, label %274, label %407

274:                                              ; preds = %273, %274
  %275 = phi ptr [ %289, %274 ], [ %87, %273 ]
  %276 = phi i32 [ %290, %274 ], [ %210, %273 ]
  %277 = phi ptr [ %288, %274 ], [ %74, %273 ]
  %278 = load i8, ptr %275, align 1, !tbaa !59
  %279 = call fastcc zeroext i16 @UPSAMPLE_8_TO_16(i8 noundef zeroext %278) #17
  store i16 %279, ptr %277, align 2, !tbaa !53
  %280 = getelementptr inbounds i8, ptr %275, i64 1
  %281 = load i8, ptr %280, align 1, !tbaa !59
  %282 = call fastcc zeroext i16 @UPSAMPLE_8_TO_16(i8 noundef zeroext %281) #17
  %283 = getelementptr inbounds i16, ptr %277, i64 1
  store i16 %282, ptr %283, align 2, !tbaa !53
  %284 = getelementptr inbounds i8, ptr %275, i64 2
  %285 = load i8, ptr %284, align 1, !tbaa !59
  %286 = call fastcc zeroext i16 @UPSAMPLE_8_TO_16(i8 noundef zeroext %285) #17
  %287 = getelementptr inbounds i16, ptr %277, i64 2
  store i16 %286, ptr %287, align 2, !tbaa !53
  %288 = getelementptr inbounds i16, ptr %277, i64 3
  %289 = getelementptr inbounds i8, ptr %275, i64 4
  %290 = add nsw i32 %276, -1
  %291 = icmp ugt i32 %276, 1
  br i1 %291, label %274, label %407, !llvm.loop !65

292:                                              ; preds = %205
  br i1 %211, label %293, label %407

293:                                              ; preds = %292, %293
  %294 = phi ptr [ %305, %293 ], [ %87, %292 ]
  %295 = phi ptr [ %304, %293 ], [ %75, %292 ]
  %296 = phi i32 [ %306, %293 ], [ %210, %292 ]
  %297 = load i8, ptr %294, align 1, !tbaa !59
  store i8 %297, ptr %295, align 1, !tbaa !59
  %298 = getelementptr inbounds i8, ptr %294, i64 1
  %299 = load i8, ptr %298, align 1, !tbaa !59
  %300 = getelementptr inbounds i8, ptr %295, i64 1
  store i8 %299, ptr %300, align 1, !tbaa !59
  %301 = getelementptr inbounds i8, ptr %294, i64 2
  %302 = load i8, ptr %301, align 1, !tbaa !59
  %303 = getelementptr inbounds i8, ptr %295, i64 2
  store i8 %302, ptr %303, align 1, !tbaa !59
  %304 = getelementptr inbounds i8, ptr %295, i64 3
  %305 = getelementptr inbounds i8, ptr %294, i64 4
  %306 = add nsw i32 %296, -1
  %307 = icmp ugt i32 %296, 1
  br i1 %307, label %293, label %407, !llvm.loop !66

308:                                              ; preds = %85
  br i1 %59, label %391, label %309

309:                                              ; preds = %308
  br i1 %12, label %374, label %310

310:                                              ; preds = %309
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %311 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %312 = load i32, ptr %311, align 8, !tbaa !48
  %313 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %314 = load i32, ptr %313, align 4, !tbaa !49
  %315 = mul nsw i32 %314, %312
  %316 = icmp sgt i32 %315, 0
  switch i32 %16, label %361 [
    i32 4, label %317
    i32 3, label %339
  ]

317:                                              ; preds = %310
  br i1 %316, label %318, label %373

318:                                              ; preds = %317
  %319 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %320 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %321 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %322 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  br label %323

323:                                              ; preds = %318, %323
  %324 = phi i32 [ %315, %318 ], [ %337, %323 ]
  %325 = phi ptr [ %88, %318 ], [ %336, %323 ]
  %326 = phi ptr [ %74, %318 ], [ %335, %323 ]
  call fastcc void @premul_to_straight_v4_v4(ptr noundef nonnull %6, ptr noundef %325) #17
  %327 = load float, ptr %6, align 16, !tbaa !51
  %328 = call float %26(float noundef %327) #15, !callees !52
  store float %328, ptr %7, align 4, !tbaa !51
  %329 = load float, ptr %319, align 4, !tbaa !51
  %330 = call float %26(float noundef %329) #15, !callees !52
  store float %330, ptr %320, align 4, !tbaa !51
  %331 = load float, ptr %321, align 8, !tbaa !51
  %332 = call float %26(float noundef %331) #15, !callees !52
  store float %332, ptr %322, align 4, !tbaa !51
  %333 = call fastcc float @rgb_to_bw(ptr noundef nonnull %7) #17
  %334 = call fastcc zeroext i16 @ftoshort(float noundef %333) #17
  store i16 %334, ptr %326, align 2, !tbaa !53
  %335 = getelementptr inbounds i16, ptr %326, i64 1
  %336 = getelementptr inbounds float, ptr %325, i64 4
  %337 = add nsw i32 %324, -1
  %338 = icmp ugt i32 %324, 1
  br i1 %338, label %323, label %373, !llvm.loop !67

339:                                              ; preds = %310
  br i1 %316, label %340, label %373

340:                                              ; preds = %339
  %341 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %342 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  br label %343

343:                                              ; preds = %340, %343
  %344 = phi i32 [ %315, %340 ], [ %359, %343 ]
  %345 = phi ptr [ %88, %340 ], [ %358, %343 ]
  %346 = phi ptr [ %74, %340 ], [ %357, %343 ]
  %347 = load float, ptr %345, align 4, !tbaa !51
  %348 = call float %26(float noundef %347) #15, !callees !52
  store float %348, ptr %7, align 4, !tbaa !51
  %349 = getelementptr inbounds float, ptr %345, i64 1
  %350 = load float, ptr %349, align 4, !tbaa !51
  %351 = call float %26(float noundef %350) #15, !callees !52
  store float %351, ptr %341, align 4, !tbaa !51
  %352 = getelementptr inbounds float, ptr %345, i64 2
  %353 = load float, ptr %352, align 4, !tbaa !51
  %354 = call float %26(float noundef %353) #15, !callees !52
  store float %354, ptr %342, align 4, !tbaa !51
  %355 = call fastcc float @rgb_to_bw(ptr noundef nonnull %7) #17
  %356 = call fastcc zeroext i16 @ftoshort(float noundef %355) #17
  store i16 %356, ptr %346, align 2, !tbaa !53
  %357 = getelementptr inbounds i16, ptr %346, i64 1
  %358 = getelementptr inbounds float, ptr %345, i64 3
  %359 = add nsw i32 %344, -1
  %360 = icmp ugt i32 %344, 1
  br i1 %360, label %343, label %373, !llvm.loop !68

361:                                              ; preds = %310
  br i1 %316, label %362, label %373

362:                                              ; preds = %361, %362
  %363 = phi i32 [ %371, %362 ], [ %315, %361 ]
  %364 = phi ptr [ %370, %362 ], [ %88, %361 ]
  %365 = phi ptr [ %369, %362 ], [ %74, %361 ]
  %366 = load float, ptr %364, align 4, !tbaa !51
  %367 = call float %26(float noundef %366) #15, !callees !52
  %368 = call fastcc zeroext i16 @ftoshort(float noundef %367) #17
  store i16 %368, ptr %365, align 2, !tbaa !53
  %369 = getelementptr inbounds i16, ptr %365, i64 1
  %370 = getelementptr inbounds float, ptr %364, i64 1
  %371 = add nsw i32 %363, -1
  %372 = icmp ugt i32 %363, 1
  br i1 %372, label %362, label %373, !llvm.loop !69

373:                                              ; preds = %343, %323, %362, %339, %317, %361
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  br label %407

374:                                              ; preds = %309
  %375 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %376 = load i32, ptr %375, align 8, !tbaa !48
  %377 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %378 = load i32, ptr %377, align 4, !tbaa !49
  %379 = mul nsw i32 %378, %376
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %407

381:                                              ; preds = %374, %381
  %382 = phi ptr [ %388, %381 ], [ %87, %374 ]
  %383 = phi i32 [ %389, %381 ], [ %379, %374 ]
  %384 = phi ptr [ %387, %381 ], [ %74, %374 ]
  %385 = load i8, ptr %382, align 1, !tbaa !59
  %386 = call fastcc zeroext i16 @UPSAMPLE_8_TO_16(i8 noundef zeroext %385) #17
  store i16 %386, ptr %384, align 2, !tbaa !53
  %387 = getelementptr inbounds i16, ptr %384, i64 1
  %388 = getelementptr inbounds i8, ptr %382, i64 4
  %389 = add nsw i32 %383, -1
  %390 = icmp ugt i32 %383, 1
  br i1 %390, label %381, label %407, !llvm.loop !70

391:                                              ; preds = %308
  %392 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %393 = load i32, ptr %392, align 8, !tbaa !48
  %394 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %395 = load i32, ptr %394, align 4, !tbaa !49
  %396 = mul nsw i32 %395, %393
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %407

398:                                              ; preds = %391, %398
  %399 = phi ptr [ %404, %398 ], [ %87, %391 ]
  %400 = phi ptr [ %403, %398 ], [ %75, %391 ]
  %401 = phi i32 [ %405, %398 ], [ %396, %391 ]
  %402 = load i8, ptr %399, align 1, !tbaa !59
  store i8 %402, ptr %400, align 1, !tbaa !59
  %403 = getelementptr inbounds i8, ptr %400, i64 1
  %404 = getelementptr inbounds i8, ptr %399, i64 4
  %405 = add nsw i32 %401, -1
  %406 = icmp ugt i32 %401, 1
  br i1 %406, label %398, label %407, !llvm.loop !71

407:                                              ; preds = %381, %398, %238, %218, %260, %274, %293, %127, %103, %150, %164, %187, %374, %391, %237, %214, %259, %273, %292, %126, %98, %149, %163, %186, %373, %85
  %408 = phi i32 [ 0, %85 ], [ 0, %373 ], [ 6, %186 ], [ 6, %163 ], [ 6, %149 ], [ 6, %98 ], [ 6, %126 ], [ 2, %292 ], [ 2, %273 ], [ 2, %259 ], [ 2, %214 ], [ 2, %237 ], [ 0, %391 ], [ 0, %374 ], [ 6, %187 ], [ 6, %164 ], [ 6, %150 ], [ 6, %103 ], [ 6, %127 ], [ 2, %293 ], [ 2, %274 ], [ 2, %260 ], [ 2, %218 ], [ 2, %238 ], [ 0, %398 ], [ 0, %381 ]
  br i1 %28, label %413, label %409

409:                                              ; preds = %407
  %410 = call zeroext i8 @imb_addencodedbufferImBuf(ptr noundef %0) #15
  %411 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 32
  store i32 0, ptr %411, align 8, !tbaa !72
  %412 = load ptr, ptr %4, align 8, !tbaa !47
  call void @png_set_write_fn(ptr noundef %412, ptr noundef %0, ptr noundef nonnull @WriteData, ptr noundef nonnull @Flush) #15
  br label %426

413:                                              ; preds = %407
  %414 = call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str.9) #15
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %424

416:                                              ; preds = %413
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  br i1 %76, label %419, label %417

417:                                              ; preds = %416
  %418 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %418(ptr noundef nonnull %75) #15
  br label %419

419:                                              ; preds = %417, %416
  br i1 %77, label %422, label %420

420:                                              ; preds = %419
  %421 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %421(ptr noundef nonnull %74) #15
  br label %422

422:                                              ; preds = %420, %419
  %423 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %1) #17
  br label %557

424:                                              ; preds = %413
  %425 = load ptr, ptr %4, align 8, !tbaa !47
  call void @png_init_io(ptr noundef %425, ptr noundef nonnull %414) #15
  br label %426

426:                                              ; preds = %424, %409
  %427 = phi ptr [ null, %409 ], [ %414, %424 ]
  %428 = load ptr, ptr %4, align 8, !tbaa !47
  call void @png_set_compression_level(ptr noundef %428, i32 noundef %22) #15
  %429 = load ptr, ptr %4, align 8, !tbaa !47
  %430 = load ptr, ptr %5, align 8, !tbaa !47
  %431 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %432 = load i32, ptr %431, align 8, !tbaa !48
  %433 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %434 = load i32, ptr %433, align 4, !tbaa !49
  %435 = select i1 %59, i32 8, i32 16
  call void @png_set_IHDR(ptr noundef %429, ptr noundef %430, i32 noundef %432, i32 noundef %434, i32 noundef %435, i32 noundef %408, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %436 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 24
  %437 = load ptr, ptr %436, align 8, !tbaa !73
  %438 = icmp eq ptr %437, null
  br i1 %438, label %469, label %439

439:                                              ; preds = %426, %439
  %440 = phi i32 [ %442, %439 ], [ 0, %426 ]
  %441 = phi ptr [ %443, %439 ], [ %437, %426 ]
  %442 = add nuw nsw i32 %440, 1
  %443 = load ptr, ptr %441, align 8, !tbaa !74
  %444 = icmp eq ptr %443, null
  br i1 %444, label %445, label %439, !llvm.loop !76

445:                                              ; preds = %439
  %446 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %447 = zext nneg i32 %442 to i64
  %448 = mul nuw nsw i64 %447, 56
  %449 = call ptr %446(i64 noundef %448, ptr noundef nonnull @.str.11) #15
  %450 = load ptr, ptr %436, align 8, !tbaa !47
  %451 = icmp eq ptr %450, null
  br i1 %451, label %464, label %452

452:                                              ; preds = %445, %452
  %453 = phi i64 [ %459, %452 ], [ 0, %445 ]
  %454 = phi ptr [ %460, %452 ], [ %450, %445 ]
  %455 = getelementptr inbounds %struct.png_text_struct, ptr %449, i64 %453
  store i32 -1, ptr %455, align 8, !tbaa !77
  %456 = getelementptr inbounds %struct.ImMetaData, ptr %454, i64 0, i32 2
  %457 = getelementptr inbounds %struct.png_text_struct, ptr %449, i64 %453, i32 1
  %458 = load <2 x ptr>, ptr %456, align 8, !tbaa !47
  store <2 x ptr> %458, ptr %457, align 8, !tbaa !47
  %459 = add nuw i64 %453, 1
  %460 = load ptr, ptr %454, align 8, !tbaa !47
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %452, !llvm.loop !80

462:                                              ; preds = %452
  %463 = trunc i64 %459 to i32
  br label %464

464:                                              ; preds = %462, %445
  %465 = phi i32 [ 0, %445 ], [ %463, %462 ]
  %466 = load ptr, ptr %4, align 8, !tbaa !47
  %467 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_set_text(ptr noundef %466, ptr noundef %467, ptr noundef %449, i32 noundef %465) #15
  %468 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %468(ptr noundef %449) #15
  br label %469

469:                                              ; preds = %464, %426
  %470 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 10
  %471 = load double, ptr %470, align 8, !tbaa !81
  %472 = fcmp ogt double %471, 0.000000e+00
  br i1 %472, label %473, label %484

473:                                              ; preds = %469
  %474 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 10, i64 1
  %475 = load double, ptr %474, align 8, !tbaa !81
  %476 = fcmp ogt double %475, 0.000000e+00
  br i1 %476, label %477, label %484

477:                                              ; preds = %473
  %478 = load ptr, ptr %4, align 8, !tbaa !47
  %479 = load ptr, ptr %5, align 8, !tbaa !47
  %480 = fadd double %471, 5.000000e-01
  %481 = fptoui double %480 to i32
  %482 = fadd double %475, 5.000000e-01
  %483 = fptoui double %482 to i32
  call void @png_set_pHYs(ptr noundef %478, ptr noundef %479, i32 noundef %481, i32 noundef %483, i32 noundef 1) #15
  br label %484

484:                                              ; preds = %477, %473, %469
  %485 = load ptr, ptr %4, align 8, !tbaa !47
  %486 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_write_info(ptr noundef %485, ptr noundef %486) #15
  %487 = load ptr, ptr %4, align 8, !tbaa !47
  call void @png_set_swap(ptr noundef %487) #15
  %488 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %489 = load i32, ptr %433, align 4, !tbaa !49
  %490 = sext i32 %489 to i64
  %491 = shl nsw i64 %490, 3
  %492 = call ptr %488(i64 noundef %491, ptr noundef nonnull @.str.12) #15
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %505

494:                                              ; preds = %484
  %495 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %29) #17
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  br i1 %76, label %498, label %496

496:                                              ; preds = %494
  %497 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %497(ptr noundef nonnull %75) #15
  br label %498

498:                                              ; preds = %496, %494
  br i1 %77, label %501, label %499

499:                                              ; preds = %498
  %500 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %500(ptr noundef nonnull %74) #15
  br label %501

501:                                              ; preds = %499, %498
  %502 = icmp eq ptr %427, null
  br i1 %502, label %557, label %503

503:                                              ; preds = %501
  %504 = call i32 @fclose(ptr noundef nonnull %427) #17
  br label %557

505:                                              ; preds = %484
  %506 = load i32, ptr %433, align 4, !tbaa !49
  %507 = icmp sgt i32 %506, 0
  br i1 %59, label %514, label %508

508:                                              ; preds = %505
  br i1 %507, label %509, label %542

509:                                              ; preds = %508
  %510 = load i32, ptr %431, align 8, !tbaa !48
  %511 = zext nneg i32 %506 to i64
  %512 = zext nneg i32 %506 to i64
  %513 = getelementptr ptr, ptr %492, i64 %511
  br label %520

514:                                              ; preds = %505
  br i1 %507, label %515, label %542

515:                                              ; preds = %514
  %516 = load i32, ptr %431, align 8, !tbaa !48
  %517 = zext nneg i32 %506 to i64
  %518 = zext nneg i32 %506 to i64
  %519 = getelementptr ptr, ptr %492, i64 %517
  br label %531

520:                                              ; preds = %509, %520
  %521 = phi i64 [ 0, %509 ], [ %529, %520 ]
  %522 = trunc i64 %521 to i32
  %523 = mul i32 %34, %522
  %524 = mul i32 %523, %510
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i16, ptr %74, i64 %525
  %527 = xor i64 %521, -1
  %528 = getelementptr ptr, ptr %513, i64 %527
  store ptr %526, ptr %528, align 8, !tbaa !47
  %529 = add nuw nsw i64 %521, 1
  %530 = icmp eq i64 %529, %512
  br i1 %530, label %542, label %520, !llvm.loop !83

531:                                              ; preds = %515, %531
  %532 = phi i64 [ 0, %515 ], [ %540, %531 ]
  %533 = trunc i64 %532 to i32
  %534 = mul i32 %34, %533
  %535 = mul i32 %534, %516
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i8, ptr %75, i64 %536
  %538 = xor i64 %532, -1
  %539 = getelementptr ptr, ptr %519, i64 %538
  store ptr %537, ptr %539, align 8, !tbaa !47
  %540 = add nuw nsw i64 %532, 1
  %541 = icmp eq i64 %540, %518
  br i1 %541, label %542, label %531, !llvm.loop !84

542:                                              ; preds = %520, %531, %508, %514
  %543 = load ptr, ptr %4, align 8, !tbaa !47
  call void @png_write_image(ptr noundef %543, ptr noundef nonnull %492) #15
  %544 = load ptr, ptr %4, align 8, !tbaa !47
  %545 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_write_end(ptr noundef %544, ptr noundef %545) #15
  br i1 %76, label %548, label %546

546:                                              ; preds = %542
  %547 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %547(ptr noundef nonnull %75) #15
  br label %548

548:                                              ; preds = %546, %542
  br i1 %77, label %551, label %549

549:                                              ; preds = %548
  %550 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %550(ptr noundef nonnull %74) #15
  br label %551

551:                                              ; preds = %549, %548
  %552 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %552(ptr noundef nonnull %492) #15
  call void @png_destroy_write_struct(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %553 = icmp eq ptr %427, null
  br i1 %553, label %557, label %554

554:                                              ; preds = %551
  %555 = call i32 @fflush(ptr noundef nonnull %427) #17
  %556 = call i32 @fclose(ptr noundef nonnull %427) #17
  br label %557

557:                                              ; preds = %551, %554, %501, %503, %422, %79, %55, %48, %43, %38
  %558 = phi i32 [ 0, %38 ], [ 0, %43 ], [ 0, %48 ], [ 0, %55 ], [ 0, %79 ], [ 0, %422 ], [ 0, %503 ], [ 0, %501 ], [ 1, %554 ], [ 1, %551 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %558
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef float @channel_colormanage_noop(float noundef returned %0) unnamed_addr #3 !PGOFuncName !85 {
  ret float %0
}

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare noalias ptr @png_create_write_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_destroy_write_struct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @png_set_longjmp_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @longjmp(ptr noundef, i32 noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @premul_to_straight_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !86 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !51
  %5 = fcmp oeq float %4, 0.000000e+00
  %6 = fcmp oeq float %4, 1.000000e+00
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load float, ptr %1, align 4, !tbaa !51
  store float %9, ptr %0, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !51
  br label %26

15:                                               ; preds = %2
  %16 = fdiv float 1.000000e+00, %4
  %17 = load float, ptr %1, align 4, !tbaa !51
  %18 = fmul float %16, %17
  store float %18, ptr %0, align 4, !tbaa !51
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !51
  %21 = fmul float %16, %20
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !51
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !51
  %25 = fmul float %16, %24
  br label %26

26:                                               ; preds = %15, %8
  %27 = phi float [ %25, %15 ], [ %14, %8 ]
  %28 = getelementptr inbounds float, ptr %0, i64 2
  store float %27, ptr %28, align 4, !tbaa !51
  %29 = load float, ptr %3, align 4, !tbaa !51
  %30 = getelementptr inbounds float, ptr %0, i64 3
  store float %29, ptr %30, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ftoshort(float noundef %0) unnamed_addr #3 !PGOFuncName !87 {
  %2 = fcmp ult float %0, 0x3FEFFFF000000000
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ugt float %0, 0.000000e+00
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call float @llvm.fmuladd.f32(float %0, float 6.553500e+04, float 5.000000e-01)
  %7 = fptoui float %6 to i16
  br label %8

8:                                                ; preds = %5, %3, %1
  %9 = phi i16 [ -1, %1 ], [ %7, %5 ], [ 0, %3 ]
  ret i16 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @UPSAMPLE_8_TO_16(i8 noundef zeroext %0) unnamed_addr #3 !PGOFuncName !88 {
  %2 = zext i8 %0 to i16
  %3 = mul nuw i16 %2, 257
  ret i16 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_bw(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !89 {
  %2 = load float, ptr %0, align 4, !tbaa !51
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !51
  %5 = fmul float %4, 0x3FDCCCCCC0000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD6666660000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FC99999A0000000, float %6)
  ret float %9
}

; Function Attrs: optsize
declare zeroext i8 @imb_addencodedbufferImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_write_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WriteData(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 !PGOFuncName !90 {
  %4 = tail call ptr @png_get_io_ptr(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 32
  %6 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 33
  %7 = load i32, ptr %5, align 8, !tbaa !72
  %8 = zext i32 %7 to i64
  %9 = add i64 %8, %2
  %10 = load i32, ptr %6, align 4, !tbaa !91
  %11 = zext i32 %10 to i64
  %12 = icmp ugt i64 %9, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3, %13
  %14 = tail call zeroext i8 @imb_enlargeencodedbufferImBuf(ptr noundef nonnull %4) #15
  %15 = load i32, ptr %5, align 8, !tbaa !72
  %16 = zext i32 %15 to i64
  %17 = add i64 %16, %2
  %18 = load i32, ptr %6, align 4, !tbaa !91
  %19 = zext i32 %18 to i64
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %13, label %21, !llvm.loop !92

21:                                               ; preds = %13, %3
  %22 = phi i64 [ %8, %3 ], [ %16, %13 ]
  %23 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 31
  %24 = load ptr, ptr %23, align 8, !tbaa !93
  %25 = getelementptr inbounds i8, ptr %24, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %1, i64 %2, i1 false)
  %26 = load i32, ptr %5, align 8, !tbaa !72
  %27 = trunc i64 %2 to i32
  %28 = add i32 %26, %27
  store i32 %28, ptr %5, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @Flush(ptr nocapture readnone %0) #3 !PGOFuncName !94 {
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_init_io(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_compression_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_IHDR(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_text(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_pHYs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_write_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_write_image(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_write_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #16
  %16 = call i32 @imb_is_a_png(ptr noundef %0) #17, !range !95
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %407, label %18

18:                                               ; preds = %4
  call void @colorspace_set_default_role(ptr noundef %3, i32 noundef 64, i32 noundef 4) #15
  %19 = call noalias ptr @png_create_read_struct(ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null) #15
  store ptr %19, ptr %5, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %407

23:                                               ; preds = %18
  call void @png_set_error_fn(ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull @imb_png_error, ptr noundef nonnull @imb_png_warning) #15
  %24 = load ptr, ptr %5, align 8, !tbaa !47
  %25 = call noalias ptr @png_create_info_struct(ptr noundef %24) #15
  store ptr %25, ptr %6, align 8, !tbaa !47
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  call void @png_destroy_read_struct(ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #15
  %28 = call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  br label %407

29:                                               ; preds = %23
  %30 = trunc i64 %1 to i32
  %31 = getelementptr inbounds %struct.PNGReadStruct, ptr %11, i64 0, i32 1
  store i32 %30, ptr %31, align 8, !tbaa !96
  store ptr %0, ptr %11, align 8, !tbaa !98
  %32 = getelementptr inbounds %struct.PNGReadStruct, ptr %11, i64 0, i32 2
  store i32 0, ptr %32, align 4, !tbaa !99
  %33 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_set_read_fn(ptr noundef %33, ptr noundef nonnull %11, ptr noundef nonnull @ReadData) #15
  %34 = load ptr, ptr %5, align 8, !tbaa !47
  %35 = call ptr @png_set_longjmp_fn(ptr noundef %34, ptr noundef nonnull @longjmp, i64 noundef 200) #15
  %36 = call i32 @_setjmp(ptr noundef %35) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  call void @png_destroy_read_struct(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #15
  br label %407

39:                                               ; preds = %29
  %40 = load ptr, ptr %5, align 8, !tbaa !47
  %41 = load ptr, ptr %6, align 8, !tbaa !47
  call void @png_read_info(ptr noundef %40, ptr noundef %41) #15
  %42 = load ptr, ptr %5, align 8, !tbaa !47
  %43 = load ptr, ptr %6, align 8, !tbaa !47
  %44 = call i32 @png_get_IHDR(ptr noundef %42, ptr noundef %43, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %45 = load ptr, ptr %5, align 8, !tbaa !47
  %46 = load ptr, ptr %6, align 8, !tbaa !47
  %47 = call zeroext i8 @png_get_channels(ptr noundef %45, ptr noundef %46) #15
  %48 = load i32, ptr %10, align 4, !tbaa !100
  switch i32 %48, label %61 [
    i32 2, label %65
    i32 6, label %65
    i32 3, label %49
    i32 0, label %56
    i32 4, label %56
  ]

49:                                               ; preds = %39
  %50 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_set_palette_to_rgb(ptr noundef %50) #15
  %51 = load ptr, ptr %5, align 8, !tbaa !47
  %52 = load ptr, ptr %6, align 8, !tbaa !47
  %53 = call i32 @png_get_valid(ptr noundef %51, ptr noundef %52, i32 noundef 16) #15
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i8 3, i8 4
  br label %65

56:                                               ; preds = %39, %39
  %57 = load i32, ptr %9, align 4, !tbaa !100
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_set_expand(ptr noundef %60) #15
  store i32 8, ptr %9, align 4, !tbaa !100
  br label %65

61:                                               ; preds = %39
  %62 = call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  %63 = load ptr, ptr %5, align 8, !tbaa !47
  %64 = call ptr @png_set_longjmp_fn(ptr noundef %63, ptr noundef nonnull @longjmp, i64 noundef 200) #15
  call void @longjmp(ptr noundef %64, i32 noundef 1) #19
  unreachable

65:                                               ; preds = %49, %56, %59, %39, %39
  %66 = phi i8 [ %47, %59 ], [ %47, %56 ], [ %47, %39 ], [ %47, %39 ], [ %55, %49 ]
  %67 = zext i8 %66 to i32
  %68 = load i32, ptr %7, align 4, !tbaa !100
  %69 = load i32, ptr %8, align 4, !tbaa !100
  %70 = shl i8 %66, 3
  %71 = call ptr @IMB_allocImBuf(i32 noundef %68, i32 noundef %69, i8 noundef zeroext %70, i32 noundef 0) #15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %98, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.ImBuf, ptr %71, i64 0, i32 26
  %75 = load i32, ptr %9, align 4, !tbaa !100
  %76 = icmp eq i32 %75, 16
  %77 = select i1 %76, i32 1073742848, i32 1073741824
  store i32 %77, ptr %74, align 8
  %78 = load ptr, ptr %5, align 8, !tbaa !47
  %79 = load ptr, ptr %6, align 8, !tbaa !47
  %80 = call i32 @png_get_valid(ptr noundef %78, ptr noundef %79, i32 noundef 128) #15
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #16
  %83 = load ptr, ptr %5, align 8, !tbaa !47
  %84 = load ptr, ptr %6, align 8, !tbaa !47
  %85 = call i32 @png_get_pHYs(ptr noundef %83, ptr noundef %84, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %12) #15
  %86 = icmp ne i32 %85, 0
  %87 = load i32, ptr %12, align 4
  %88 = icmp eq i32 %87, 1
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load i32, ptr %13, align 4, !tbaa !100
  %92 = uitofp i32 %91 to double
  %93 = getelementptr inbounds %struct.ImBuf, ptr %71, i64 0, i32 10
  store double %92, ptr %93, align 8, !tbaa !81
  %94 = load i32, ptr %14, align 4, !tbaa !100
  %95 = uitofp i32 %94 to double
  %96 = getelementptr inbounds %struct.ImBuf, ptr %71, i64 0, i32 10, i64 1
  store double %95, ptr %96, align 8, !tbaa !81
  br label %97

97:                                               ; preds = %90, %82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  br label %100

98:                                               ; preds = %65
  %99 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %406

100:                                              ; preds = %73, %97
  %101 = and i32 %2, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %406

103:                                              ; preds = %100
  %104 = load i32, ptr %9, align 4, !tbaa !100
  %105 = icmp eq i32 %104, 16
  br i1 %105, label %106, label %237

106:                                              ; preds = %103
  %107 = call zeroext i8 @imb_addrectfloatImBuf(ptr noundef nonnull %71) #15
  %108 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_set_swap(ptr noundef %108) #15
  %109 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %110 = getelementptr inbounds %struct.ImBuf, ptr %71, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !48
  %112 = getelementptr inbounds %struct.ImBuf, ptr %71, i64 0, i32 3
  %113 = load i32, ptr %112, align 4, !tbaa !49
  %114 = mul i32 %111, %67
  %115 = mul i32 %114, %113
  %116 = sext i32 %115 to i64
  %117 = shl nsw i64 %116, 1
  %118 = call ptr %109(i64 noundef %117, ptr noundef nonnull @.str.18) #15
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %106
  %121 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %122 = load ptr, ptr %5, align 8, !tbaa !47
  %123 = call ptr @png_set_longjmp_fn(ptr noundef %122, ptr noundef nonnull @longjmp, i64 noundef 200) #15
  call void @longjmp(ptr noundef %123, i32 noundef 1) #19
  unreachable

124:                                              ; preds = %106
  %125 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %126 = load i32, ptr %112, align 4, !tbaa !49
  %127 = sext i32 %126 to i64
  %128 = shl nsw i64 %127, 3
  %129 = call ptr %125(i64 noundef %128, ptr noundef nonnull @.str.12) #15
  %130 = icmp eq ptr %129, null
  br i1 %130, label %139, label %131

131:                                              ; preds = %124
  %132 = load i32, ptr %112, align 4, !tbaa !49
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %131
  %135 = load i32, ptr %110, align 8, !tbaa !48
  %136 = zext nneg i32 %132 to i64
  %137 = zext nneg i32 %132 to i64
  %138 = getelementptr ptr, ptr %129, i64 %136
  br label %143

139:                                              ; preds = %124
  %140 = call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %141 = load ptr, ptr %5, align 8, !tbaa !47
  %142 = call ptr @png_set_longjmp_fn(ptr noundef %141, ptr noundef nonnull @longjmp, i64 noundef 200) #15
  call void @longjmp(ptr noundef %142, i32 noundef 1) #19
  unreachable

143:                                              ; preds = %134, %143
  %144 = phi i64 [ 0, %134 ], [ %152, %143 ]
  %145 = trunc i64 %144 to i32
  %146 = mul i32 %145, %67
  %147 = mul i32 %146, %135
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i16, ptr %118, i64 %148
  %150 = xor i64 %144, -1
  %151 = getelementptr ptr, ptr %138, i64 %150
  store ptr %149, ptr %151, align 8, !tbaa !47
  %152 = add nuw nsw i64 %144, 1
  %153 = icmp eq i64 %152, %137
  br i1 %153, label %154, label %143, !llvm.loop !101

154:                                              ; preds = %143, %131
  %155 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_read_image(ptr noundef %155, ptr noundef nonnull %129) #15
  %156 = getelementptr inbounds %struct.ImBuf, ptr %71, i64 0, i32 9
  %157 = load ptr, ptr %156, align 8, !tbaa !43
  switch i8 %66, label %367 [
    i8 4, label %158
    i8 3, label %175
    i8 2, label %199
    i8 1, label %217
  ]

158:                                              ; preds = %154
  %159 = load i32, ptr %110, align 8, !tbaa !48
  %160 = load i32, ptr %112, align 4, !tbaa !49
  %161 = mul nsw i32 %160, %159
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %367

163:                                              ; preds = %158, %163
  %164 = phi i32 [ %173, %163 ], [ %161, %158 ]
  %165 = phi ptr [ %171, %163 ], [ %157, %158 ]
  %166 = phi ptr [ %172, %163 ], [ %118, %158 ]
  %167 = load <4 x i16>, ptr %166, align 2, !tbaa !53
  %168 = uitofp <4 x i16> %167 to <4 x double>
  %169 = fdiv <4 x double> %168, <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>
  %170 = fptrunc <4 x double> %169 to <4 x float>
  store <4 x float> %170, ptr %165, align 4, !tbaa !51
  %171 = getelementptr inbounds float, ptr %165, i64 4
  %172 = getelementptr inbounds i16, ptr %166, i64 4
  %173 = add nsw i32 %164, -1
  %174 = icmp ugt i32 %164, 1
  br i1 %174, label %163, label %367, !llvm.loop !102

175:                                              ; preds = %154
  %176 = load i32, ptr %110, align 8, !tbaa !48
  %177 = load i32, ptr %112, align 4, !tbaa !49
  %178 = mul nsw i32 %177, %176
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %367

180:                                              ; preds = %175, %180
  %181 = phi i32 [ %197, %180 ], [ %178, %175 ]
  %182 = phi ptr [ %195, %180 ], [ %157, %175 ]
  %183 = phi ptr [ %196, %180 ], [ %118, %175 ]
  %184 = load <2 x i16>, ptr %183, align 2, !tbaa !53
  %185 = uitofp <2 x i16> %184 to <2 x double>
  %186 = fdiv <2 x double> %185, <double 6.553500e+04, double 6.553500e+04>
  %187 = fptrunc <2 x double> %186 to <2 x float>
  store <2 x float> %187, ptr %182, align 4, !tbaa !51
  %188 = getelementptr inbounds i16, ptr %183, i64 2
  %189 = load i16, ptr %188, align 2, !tbaa !53
  %190 = uitofp i16 %189 to double
  %191 = fdiv double %190, 6.553500e+04
  %192 = fptrunc double %191 to float
  %193 = getelementptr inbounds float, ptr %182, i64 2
  store float %192, ptr %193, align 4, !tbaa !51
  %194 = getelementptr inbounds float, ptr %182, i64 3
  store float 1.000000e+00, ptr %194, align 4, !tbaa !51
  %195 = getelementptr inbounds float, ptr %182, i64 4
  %196 = getelementptr inbounds i16, ptr %183, i64 3
  %197 = add nsw i32 %181, -1
  %198 = icmp ugt i32 %181, 1
  br i1 %198, label %180, label %367, !llvm.loop !103

199:                                              ; preds = %154
  %200 = load i32, ptr %110, align 8, !tbaa !48
  %201 = load i32, ptr %112, align 4, !tbaa !49
  %202 = mul nsw i32 %201, %200
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %367

204:                                              ; preds = %199, %204
  %205 = phi i32 [ %215, %204 ], [ %202, %199 ]
  %206 = phi ptr [ %213, %204 ], [ %157, %199 ]
  %207 = phi ptr [ %214, %204 ], [ %118, %199 ]
  %208 = load <2 x i16>, ptr %207, align 2, !tbaa !53
  %209 = uitofp <2 x i16> %208 to <2 x double>
  %210 = fdiv <2 x double> %209, <double 6.553500e+04, double 6.553500e+04>
  %211 = fptrunc <2 x double> %210 to <2 x float>
  %212 = shufflevector <2 x float> %211, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %212, ptr %206, align 4, !tbaa !51
  %213 = getelementptr inbounds float, ptr %206, i64 4
  %214 = getelementptr inbounds i16, ptr %207, i64 2
  %215 = add nsw i32 %205, -1
  %216 = icmp ugt i32 %205, 1
  br i1 %216, label %204, label %367, !llvm.loop !104

217:                                              ; preds = %154
  %218 = load i32, ptr %110, align 8, !tbaa !48
  %219 = load i32, ptr %112, align 4, !tbaa !49
  %220 = mul nsw i32 %219, %218
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %367

222:                                              ; preds = %217, %222
  %223 = phi i32 [ %235, %222 ], [ %220, %217 ]
  %224 = phi ptr [ %233, %222 ], [ %157, %217 ]
  %225 = phi ptr [ %234, %222 ], [ %118, %217 ]
  %226 = load i16, ptr %225, align 2, !tbaa !53
  %227 = uitofp i16 %226 to double
  %228 = fdiv double %227, 6.553500e+04
  %229 = fptrunc double %228 to float
  %230 = getelementptr inbounds float, ptr %224, i64 2
  store float %229, ptr %230, align 4, !tbaa !51
  %231 = getelementptr inbounds float, ptr %224, i64 1
  store float %229, ptr %231, align 4, !tbaa !51
  store float %229, ptr %224, align 4, !tbaa !51
  %232 = getelementptr inbounds float, ptr %224, i64 3
  store float 1.000000e+00, ptr %232, align 4, !tbaa !51
  %233 = getelementptr inbounds float, ptr %224, i64 4
  %234 = getelementptr inbounds i16, ptr %225, i64 1
  %235 = add nsw i32 %223, -1
  %236 = icmp ugt i32 %223, 1
  br i1 %236, label %222, label %367, !llvm.loop !105

237:                                              ; preds = %103
  %238 = call zeroext i8 @imb_addrectImBuf(ptr noundef nonnull %71) #15
  %239 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %240 = getelementptr inbounds %struct.ImBuf, ptr %71, i64 0, i32 2
  %241 = load i32, ptr %240, align 8, !tbaa !48
  %242 = getelementptr inbounds %struct.ImBuf, ptr %71, i64 0, i32 3
  %243 = load i32, ptr %242, align 4, !tbaa !49
  %244 = mul i32 %241, %67
  %245 = mul i32 %244, %243
  %246 = sext i32 %245 to i64
  %247 = call ptr %239(i64 noundef %246, ptr noundef nonnull @.str.18) #15
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %253

249:                                              ; preds = %237
  %250 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %251 = load ptr, ptr %5, align 8, !tbaa !47
  %252 = call ptr @png_set_longjmp_fn(ptr noundef %251, ptr noundef nonnull @longjmp, i64 noundef 200) #15
  call void @longjmp(ptr noundef %252, i32 noundef 1) #19
  unreachable

253:                                              ; preds = %237
  %254 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %255 = load i32, ptr %242, align 4, !tbaa !49
  %256 = sext i32 %255 to i64
  %257 = shl nsw i64 %256, 3
  %258 = call ptr %254(i64 noundef %257, ptr noundef nonnull @.str.12) #15
  %259 = icmp eq ptr %258, null
  br i1 %259, label %268, label %260

260:                                              ; preds = %253
  %261 = load i32, ptr %242, align 4, !tbaa !49
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %283

263:                                              ; preds = %260
  %264 = load i32, ptr %240, align 8, !tbaa !48
  %265 = zext nneg i32 %261 to i64
  %266 = zext nneg i32 %261 to i64
  %267 = getelementptr ptr, ptr %258, i64 %265
  br label %272

268:                                              ; preds = %253
  %269 = call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %270 = load ptr, ptr %5, align 8, !tbaa !47
  %271 = call ptr @png_set_longjmp_fn(ptr noundef %270, ptr noundef nonnull @longjmp, i64 noundef 200) #15
  call void @longjmp(ptr noundef %271, i32 noundef 1) #19
  unreachable

272:                                              ; preds = %263, %272
  %273 = phi i64 [ 0, %263 ], [ %281, %272 ]
  %274 = trunc i64 %273 to i32
  %275 = mul i32 %274, %67
  %276 = mul i32 %275, %264
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, ptr %247, i64 %277
  %279 = xor i64 %273, -1
  %280 = getelementptr ptr, ptr %267, i64 %279
  store ptr %278, ptr %280, align 8, !tbaa !47
  %281 = add nuw nsw i64 %273, 1
  %282 = icmp eq i64 %281, %266
  br i1 %282, label %283, label %272, !llvm.loop !106

283:                                              ; preds = %272, %260
  %284 = load ptr, ptr %5, align 8, !tbaa !47
  call void @png_read_image(ptr noundef %284, ptr noundef nonnull %258) #15
  %285 = getelementptr inbounds %struct.ImBuf, ptr %71, i64 0, i32 8
  %286 = load ptr, ptr %285, align 8, !tbaa !50
  switch i8 %66, label %367 [
    i8 4, label %287
    i8 3, label %310
    i8 2, label %331
    i8 1, label %350
  ]

287:                                              ; preds = %283
  %288 = load i32, ptr %240, align 8, !tbaa !48
  %289 = load i32, ptr %242, align 4, !tbaa !49
  %290 = mul nsw i32 %289, %288
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %367

292:                                              ; preds = %287, %292
  %293 = phi i32 [ %308, %292 ], [ %290, %287 ]
  %294 = phi ptr [ %306, %292 ], [ %286, %287 ]
  %295 = phi ptr [ %307, %292 ], [ %247, %287 ]
  %296 = load i8, ptr %295, align 1, !tbaa !59
  store i8 %296, ptr %294, align 1, !tbaa !59
  %297 = getelementptr inbounds i8, ptr %295, i64 1
  %298 = load i8, ptr %297, align 1, !tbaa !59
  %299 = getelementptr inbounds i8, ptr %294, i64 1
  store i8 %298, ptr %299, align 1, !tbaa !59
  %300 = getelementptr inbounds i8, ptr %295, i64 2
  %301 = load i8, ptr %300, align 1, !tbaa !59
  %302 = getelementptr inbounds i8, ptr %294, i64 2
  store i8 %301, ptr %302, align 1, !tbaa !59
  %303 = getelementptr inbounds i8, ptr %295, i64 3
  %304 = load i8, ptr %303, align 1, !tbaa !59
  %305 = getelementptr inbounds i8, ptr %294, i64 3
  store i8 %304, ptr %305, align 1, !tbaa !59
  %306 = getelementptr inbounds i8, ptr %294, i64 4
  %307 = getelementptr inbounds i8, ptr %295, i64 4
  %308 = add nsw i32 %293, -1
  %309 = icmp ugt i32 %293, 1
  br i1 %309, label %292, label %367, !llvm.loop !107

310:                                              ; preds = %283
  %311 = load i32, ptr %240, align 8, !tbaa !48
  %312 = load i32, ptr %242, align 4, !tbaa !49
  %313 = mul nsw i32 %312, %311
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %367

315:                                              ; preds = %310, %315
  %316 = phi i32 [ %329, %315 ], [ %313, %310 ]
  %317 = phi ptr [ %327, %315 ], [ %286, %310 ]
  %318 = phi ptr [ %328, %315 ], [ %247, %310 ]
  %319 = load i8, ptr %318, align 1, !tbaa !59
  store i8 %319, ptr %317, align 1, !tbaa !59
  %320 = getelementptr inbounds i8, ptr %318, i64 1
  %321 = load i8, ptr %320, align 1, !tbaa !59
  %322 = getelementptr inbounds i8, ptr %317, i64 1
  store i8 %321, ptr %322, align 1, !tbaa !59
  %323 = getelementptr inbounds i8, ptr %318, i64 2
  %324 = load i8, ptr %323, align 1, !tbaa !59
  %325 = getelementptr inbounds i8, ptr %317, i64 2
  store i8 %324, ptr %325, align 1, !tbaa !59
  %326 = getelementptr inbounds i8, ptr %317, i64 3
  store i8 -1, ptr %326, align 1, !tbaa !59
  %327 = getelementptr inbounds i8, ptr %317, i64 4
  %328 = getelementptr inbounds i8, ptr %318, i64 3
  %329 = add nsw i32 %316, -1
  %330 = icmp ugt i32 %316, 1
  br i1 %330, label %315, label %367, !llvm.loop !108

331:                                              ; preds = %283
  %332 = load i32, ptr %240, align 8, !tbaa !48
  %333 = load i32, ptr %242, align 4, !tbaa !49
  %334 = mul nsw i32 %333, %332
  %335 = icmp sgt i32 %334, 0
  br i1 %335, label %336, label %367

336:                                              ; preds = %331, %336
  %337 = phi i32 [ %348, %336 ], [ %334, %331 ]
  %338 = phi ptr [ %346, %336 ], [ %286, %331 ]
  %339 = phi ptr [ %347, %336 ], [ %247, %331 ]
  %340 = load i8, ptr %339, align 1, !tbaa !59
  %341 = getelementptr inbounds i8, ptr %338, i64 2
  store i8 %340, ptr %341, align 1, !tbaa !59
  %342 = getelementptr inbounds i8, ptr %338, i64 1
  store i8 %340, ptr %342, align 1, !tbaa !59
  store i8 %340, ptr %338, align 1, !tbaa !59
  %343 = getelementptr inbounds i8, ptr %339, i64 1
  %344 = load i8, ptr %343, align 1, !tbaa !59
  %345 = getelementptr inbounds i8, ptr %338, i64 3
  store i8 %344, ptr %345, align 1, !tbaa !59
  %346 = getelementptr inbounds i8, ptr %338, i64 4
  %347 = getelementptr inbounds i8, ptr %339, i64 2
  %348 = add nsw i32 %337, -1
  %349 = icmp ugt i32 %337, 1
  br i1 %349, label %336, label %367, !llvm.loop !109

350:                                              ; preds = %283
  %351 = load i32, ptr %240, align 8, !tbaa !48
  %352 = load i32, ptr %242, align 4, !tbaa !49
  %353 = mul nsw i32 %352, %351
  %354 = icmp sgt i32 %353, 0
  br i1 %354, label %355, label %367

355:                                              ; preds = %350, %355
  %356 = phi i32 [ %365, %355 ], [ %353, %350 ]
  %357 = phi ptr [ %363, %355 ], [ %286, %350 ]
  %358 = phi ptr [ %364, %355 ], [ %247, %350 ]
  %359 = load i8, ptr %358, align 1, !tbaa !59
  %360 = getelementptr inbounds i8, ptr %357, i64 2
  store i8 %359, ptr %360, align 1, !tbaa !59
  %361 = getelementptr inbounds i8, ptr %357, i64 1
  store i8 %359, ptr %361, align 1, !tbaa !59
  store i8 %359, ptr %357, align 1, !tbaa !59
  %362 = getelementptr inbounds i8, ptr %357, i64 3
  store i8 -1, ptr %362, align 1, !tbaa !59
  %363 = getelementptr inbounds i8, ptr %357, i64 4
  %364 = getelementptr inbounds i8, ptr %358, i64 1
  %365 = add nsw i32 %356, -1
  %366 = icmp ugt i32 %356, 1
  br i1 %366, label %355, label %367, !llvm.loop !110

367:                                              ; preds = %355, %336, %315, %292, %222, %204, %180, %163, %350, %331, %310, %287, %217, %199, %175, %158, %283, %154
  %368 = phi ptr [ null, %154 ], [ %247, %283 ], [ null, %158 ], [ null, %175 ], [ null, %199 ], [ null, %217 ], [ %247, %287 ], [ %247, %310 ], [ %247, %331 ], [ %247, %350 ], [ null, %163 ], [ null, %180 ], [ null, %204 ], [ null, %222 ], [ %247, %292 ], [ %247, %315 ], [ %247, %336 ], [ %247, %355 ]
  %369 = phi ptr [ %118, %154 ], [ null, %283 ], [ %118, %158 ], [ %118, %175 ], [ %118, %199 ], [ %118, %217 ], [ null, %287 ], [ null, %310 ], [ null, %331 ], [ null, %350 ], [ %118, %163 ], [ %118, %180 ], [ %118, %204 ], [ %118, %222 ], [ null, %292 ], [ null, %315 ], [ null, %336 ], [ null, %355 ]
  %370 = phi ptr [ %129, %154 ], [ %258, %283 ], [ %129, %158 ], [ %129, %175 ], [ %129, %199 ], [ %129, %217 ], [ %258, %287 ], [ %258, %310 ], [ %258, %331 ], [ %258, %350 ], [ %129, %163 ], [ %129, %180 ], [ %129, %204 ], [ %129, %222 ], [ %258, %292 ], [ %258, %315 ], [ %258, %336 ], [ %258, %355 ]
  %371 = and i32 %2, 256
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %394, label %373

373:                                              ; preds = %367
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  %374 = load ptr, ptr %5, align 8, !tbaa !47
  %375 = load ptr, ptr %6, align 8, !tbaa !47
  %376 = call i32 @png_get_text(ptr noundef %374, ptr noundef %375, ptr noundef nonnull %15, ptr noundef null) #15
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %378, label %393

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.ImBuf, ptr %71, i64 0, i32 6
  %380 = zext nneg i32 %376 to i64
  br label %381

381:                                              ; preds = %378, %381
  %382 = phi i64 [ 0, %378 ], [ %391, %381 ]
  %383 = load ptr, ptr %15, align 8, !tbaa !47
  %384 = getelementptr inbounds %struct.png_text_struct, ptr %383, i64 %382, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !111
  %386 = getelementptr inbounds %struct.png_text_struct, ptr %383, i64 %382, i32 2
  %387 = load ptr, ptr %386, align 8, !tbaa !112
  %388 = call zeroext i8 @IMB_metadata_add_field(ptr noundef nonnull %71, ptr noundef %385, ptr noundef %387) #15
  %389 = load i32, ptr %379, align 8, !tbaa !113
  %390 = or i32 %389, 256
  store i32 %390, ptr %379, align 8, !tbaa !113
  %391 = add nuw nsw i64 %382, 1
  %392 = icmp eq i64 %391, %380
  br i1 %392, label %393, label %381, !llvm.loop !114

393:                                              ; preds = %381, %373
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  br label %394

394:                                              ; preds = %367, %393
  %395 = load ptr, ptr %5, align 8, !tbaa !47
  %396 = load ptr, ptr %6, align 8, !tbaa !47
  call void @png_read_end(ptr noundef %395, ptr noundef %396) #15
  %397 = icmp eq ptr %368, null
  br i1 %397, label %400, label %398

398:                                              ; preds = %394
  %399 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %399(ptr noundef nonnull %368) #15
  br label %400

400:                                              ; preds = %398, %394
  %401 = icmp eq ptr %369, null
  br i1 %401, label %404, label %402

402:                                              ; preds = %400
  %403 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %403(ptr noundef nonnull %369) #15
  br label %404

404:                                              ; preds = %400, %402
  %405 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %405(ptr noundef nonnull %370) #15
  br label %406

406:                                              ; preds = %98, %100, %404
  call void @png_destroy_read_struct(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #15
  br label %407

407:                                              ; preds = %4, %406, %38, %27, %21
  %408 = phi ptr [ null, %21 ], [ null, %27 ], [ null, %38 ], [ %71, %406 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret ptr %408
}

; Function Attrs: optsize
declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noalias ptr @png_create_read_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_error_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @imb_png_error(ptr nocapture readnone %0, ptr noundef %1) #9 !PGOFuncName !115 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !47
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef %1) #20
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @imb_png_warning(ptr nocapture readnone %0, ptr noundef %1) #9 !PGOFuncName !116 {
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !117
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.22, i64 noundef 4) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !47
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.23, ptr noundef %1) #20
  br label %12

12:                                               ; preds = %6, %9
  ret void
}

; Function Attrs: optsize
declare void @png_destroy_read_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_read_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ReadData(ptr noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2) #0 !PGOFuncName !120 {
  %4 = tail call ptr @png_get_io_ptr(ptr noundef %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.PNGReadStruct, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !96
  %9 = getelementptr inbounds %struct.PNGReadStruct, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !99
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, %2
  br i1 %13, label %21, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %4, align 8, !tbaa !98
  %16 = zext i32 %10 to i64
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %17, i64 %2, i1 false)
  %18 = load i32, ptr %9, align 4, !tbaa !99
  %19 = trunc i64 %2 to i32
  %20 = add i32 %18, %19
  store i32 %20, ptr %9, align 4, !tbaa !99
  ret void

21:                                               ; preds = %6, %3
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  %23 = tail call ptr @png_set_longjmp_fn(ptr noundef %0, ptr noundef nonnull @longjmp, i64 noundef 200) #15
  tail call void @longjmp(ptr noundef %23, i32 noundef 1) #19
  unreachable
}

; Function Attrs: optsize
declare void @png_read_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @png_get_IHDR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @png_get_channels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_palette_to_rgb(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @png_get_valid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_expand(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @png_get_pHYs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @imb_addrectfloatImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_read_image(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @imb_addrectImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @png_get_text(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @IMB_metadata_add_field(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_read_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: optsize
declare ptr @png_get_io_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @imb_enlargeencodedbufferImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize returns_twice }
attributes #19 = { noreturn nounwind optsize }
attributes #20 = { cold optsize }
attributes #21 = { nounwind optsize willreturn memory(read) }

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
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = !{!37, !37, i64 0}
!60 = distinct !{!60, !56}
!61 = distinct !{!61, !56}
!62 = distinct !{!62, !56}
!63 = distinct !{!63, !56}
!64 = distinct !{!64, !56}
!65 = distinct !{!65, !56}
!66 = distinct !{!66, !56}
!67 = distinct !{!67, !56}
!68 = distinct !{!68, !56}
!69 = distinct !{!69, !56}
!70 = distinct !{!70, !56}
!71 = distinct !{!71, !56}
!72 = !{!35, !39, i64 2392}
!73 = !{!35, !36, i64 296}
!74 = !{!75, !36, i64 0}
!75 = !{!"ImMetaData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32}
!76 = distinct !{!76, !56}
!77 = !{!78, !39, i64 0}
!78 = !{!"png_text_struct", !39, i64 0, !36, i64 8, !36, i64 16, !79, i64 24, !79, i64 32, !36, i64 40, !36, i64 48}
!79 = !{!"long", !37, i64 0}
!80 = distinct !{!80, !56}
!81 = !{!82, !82, i64 0}
!82 = !{!"double", !37, i64 0}
!83 = distinct !{!83, !56}
!84 = distinct !{!84, !56}
!85 = !{!"png.c:channel_colormanage_noop"}
!86 = !{!"png.c:premul_to_straight_v4_v4"}
!87 = !{!"png.c:ftoshort"}
!88 = !{!"png.c:UPSAMPLE_8_TO_16"}
!89 = !{!"png.c:rgb_to_bw"}
!90 = !{!"png.c:WriteData"}
!91 = !{!35, !39, i64 2396}
!92 = distinct !{!92, !56}
!93 = !{!35, !36, i64 2384}
!94 = !{!"png.c:Flush"}
!95 = !{i32 0, i32 2}
!96 = !{!97, !39, i64 8}
!97 = !{!"PNGReadStruct", !36, i64 0, !39, i64 8, !39, i64 12}
!98 = !{!97, !36, i64 0}
!99 = !{!97, !39, i64 12}
!100 = !{!39, !39, i64 0}
!101 = distinct !{!101, !56}
!102 = distinct !{!102, !56}
!103 = distinct !{!103, !56}
!104 = distinct !{!104, !56}
!105 = distinct !{!105, !56}
!106 = distinct !{!106, !56}
!107 = distinct !{!107, !56}
!108 = distinct !{!108, !56}
!109 = distinct !{!109, !56}
!110 = distinct !{!110, !56}
!111 = !{!78, !36, i64 8}
!112 = !{!78, !36, i64 16}
!113 = !{!35, !39, i64 32}
!114 = distinct !{!114, !56}
!115 = !{!"png.c:imb_png_error"}
!116 = !{!"png.c:imb_png_warning"}
!117 = !{!118, !39, i64 2100}
!118 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !119, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !54, i64 2084, !54, i64 2086, !54, i64 2088, !37, i64 2090, !54, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!119 = !{!"ListBase", !36, i64 0, !36, i64 8}
!120 = !{!"png.c:ReadData"}
