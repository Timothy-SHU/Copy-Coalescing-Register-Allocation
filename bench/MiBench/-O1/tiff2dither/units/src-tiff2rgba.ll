; ModuleID = 'src/tiff2rgba.c'
source_filename = "src/tiff2rgba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@compression = dso_local local_unnamed_addr global i16 -32763, align 2
@rowsperstrip = dso_local global i32 -1, align 4
@process_by_block = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"c:r:t:b\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"packbits\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lzw\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Source image not tiled\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"No space for raster buffer\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"No space for raster scanline buffer\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Source image not in strips\00", align 1
@usageMsg = internal unnamed_addr constant [10 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr null], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [59 x i8] c"usage: tiff2rgba [-c comp] [-r rows] [-b] input... output\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"where comp is one of the following compression algorithms:\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c" jpeg\09\09JPEG encoding\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c" lzw\09\09Lempel-Ziv & Welch encoding\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c" packbits\09PackBits encoding\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c" none\09\09no compression\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"and the other options are:\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c" -r\09rows/strip\0A\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c" -b (progress by block rather than as a whole image)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main1(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca float, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca [1 x i16], align 2
  br label %18

18:                                               ; preds = %20, %2
  %19 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #8
  switch i32 %19, label %20 [
    i32 -1, label %65
    i32 98, label %21
    i32 99, label %22
    i32 114, label %48
    i32 116, label %52
    i32 63, label %56
  ]

20:                                               ; preds = %18, %26, %34, %38, %30, %52, %48, %21
  br label %18, !llvm.loop !5

21:                                               ; preds = %18
  store i32 1, ptr @process_by_block, align 4, !tbaa !7
  br label %20

22:                                               ; preds = %18
  %23 = load ptr, ptr @optarg, align 8, !tbaa !11
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(5) @.str.1) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i16 1, ptr @compression, align 2, !tbaa !13
  br label %20

27:                                               ; preds = %22
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(9) @.str.2) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i16 -32763, ptr @compression, align 2, !tbaa !13
  br label %20

31:                                               ; preds = %27
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(4) @.str.3) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i16 5, ptr @compression, align 2, !tbaa !13
  br label %20

35:                                               ; preds = %31
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(5) @.str.4) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i16 7, ptr @compression, align 2, !tbaa !13
  br label %20

39:                                               ; preds = %35, %39
  %40 = phi i64 [ %45, %39 ], [ 0, %35 ]
  %41 = getelementptr inbounds [10 x ptr], ptr @usageMsg, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = load ptr, ptr @stderr, align 8, !tbaa !11
  %44 = tail call i32 @fputs(ptr %42, ptr %43) #10
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, 9
  br i1 %46, label %47, label %39, !llvm.loop !15

47:                                               ; preds = %39
  tail call void @exit(i32 noundef 1) #11
  unreachable

48:                                               ; preds = %18
  %49 = load ptr, ptr @optarg, align 8, !tbaa !11
  %50 = tail call i64 @strtol(ptr nocapture noundef nonnull %49, ptr noundef null, i32 noundef 10) #8
  %51 = trunc i64 %50 to i32
  store i32 %51, ptr @rowsperstrip, align 4, !tbaa !7
  br label %20

52:                                               ; preds = %18
  %53 = load ptr, ptr @optarg, align 8, !tbaa !11
  %54 = tail call i64 @strtol(ptr nocapture noundef nonnull %53, ptr noundef null, i32 noundef 10) #8
  %55 = trunc i64 %54 to i32
  store i32 %55, ptr @rowsperstrip, align 4, !tbaa !7
  br label %20

56:                                               ; preds = %18, %56
  %57 = phi i64 [ %62, %56 ], [ 0, %18 ]
  %58 = getelementptr inbounds [10 x ptr], ptr @usageMsg, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = load ptr, ptr @stderr, align 8, !tbaa !11
  %61 = tail call i32 @fputs(ptr %59, ptr %60) #10
  %62 = add nuw nsw i64 %57, 1
  %63 = icmp eq i64 %62, 9
  br i1 %63, label %64, label %56, !llvm.loop !15

64:                                               ; preds = %56
  tail call void @exit(i32 noundef 1) #11
  unreachable

65:                                               ; preds = %18
  %66 = load i32, ptr @optind, align 4, !tbaa !7
  %67 = sub nsw i32 %0, %66
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %78

69:                                               ; preds = %65, %69
  %70 = phi i64 [ %75, %69 ], [ 0, %65 ]
  %71 = getelementptr inbounds [10 x ptr], ptr @usageMsg, i64 0, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !11
  %73 = load ptr, ptr @stderr, align 8, !tbaa !11
  %74 = tail call i32 @fputs(ptr %72, ptr %73) #10
  %75 = add nuw nsw i64 %70, 1
  %76 = icmp eq i64 %75, 9
  br i1 %76, label %77, label %69, !llvm.loop !15

77:                                               ; preds = %69
  tail call void @exit(i32 noundef 1) #11
  unreachable

78:                                               ; preds = %65
  %79 = add nsw i32 %0, -1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %1, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !11
  %83 = tail call ptr @TIFFOpen(ptr noundef %82, ptr noundef nonnull @.str.5) #8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %439, label %85

85:                                               ; preds = %78
  %86 = load i32, ptr @optind, align 4, !tbaa !7
  %87 = icmp slt i32 %86, %79
  br i1 %87, label %88, label %437

88:                                               ; preds = %85, %433
  %89 = phi i32 [ %435, %433 ], [ %86, %85 ]
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %1, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !11
  %93 = call ptr @TIFFOpen(ptr noundef %92, ptr noundef nonnull @.str.6) #8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %433, label %95

95:                                               ; preds = %88, %429
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #8
  %96 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 256, ptr noundef nonnull %11) #8
  %97 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 257, ptr noundef nonnull %12) #8
  %98 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 254, ptr noundef nonnull %16) #8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %16, align 4, !tbaa !7
  %102 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 254, i32 noundef %101) #8
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, ptr %11, align 4, !tbaa !7
  %105 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 256, i32 noundef %104) #8
  %106 = load i32, ptr %12, align 4, !tbaa !7
  %107 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 257, i32 noundef %106) #8
  %108 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 258, i32 noundef 8) #8
  %109 = load i16, ptr @compression, align 2, !tbaa !13
  %110 = zext i16 %109 to i32
  %111 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 259, i32 noundef %110) #8
  %112 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 262, i32 noundef 2) #8
  %113 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 266, ptr noundef nonnull %13) #8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %103
  %116 = load i16, ptr %13, align 2, !tbaa !13
  %117 = zext i16 %116 to i32
  %118 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 266, i32 noundef %117) #8
  br label %119

119:                                              ; preds = %115, %103
  %120 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 274, i32 noundef 1) #8
  %121 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 277, i32 noundef 4) #8
  store i16 1, ptr %17, align 2, !tbaa !13
  %122 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 338, i32 noundef 1, ptr noundef nonnull %17) #8
  %123 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 282, ptr noundef nonnull %14) #8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %119
  %126 = load float, ptr %14, align 4, !tbaa !16
  %127 = fpext float %126 to double
  %128 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 282, double noundef %127) #8
  br label %129

129:                                              ; preds = %125, %119
  %130 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 283, ptr noundef nonnull %14) #8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = load float, ptr %14, align 4, !tbaa !16
  %134 = fpext float %133 to double
  %135 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 283, double noundef %134) #8
  br label %136

136:                                              ; preds = %132, %129
  %137 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 296, ptr noundef nonnull %13) #8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = load i16, ptr %13, align 2, !tbaa !13
  %141 = zext i16 %140 to i32
  %142 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 296, i32 noundef %141) #8
  br label %143

143:                                              ; preds = %139, %136
  %144 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 284, i32 noundef 1) #8
  %145 = call ptr @TIFFGetVersion() #8
  %146 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 305, ptr noundef %145) #8
  %147 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 269, ptr noundef nonnull %15) #8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = load ptr, ptr %15, align 8, !tbaa !11
  %151 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 269, ptr noundef %150) #8
  br label %152

152:                                              ; preds = %149, %143
  %153 = load i32, ptr @process_by_block, align 4, !tbaa !7
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %256, label %155

155:                                              ; preds = %152
  %156 = call i32 @TIFFIsTiled(ptr noundef %93) #8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %256, label %158

158:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  %159 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 256, ptr noundef nonnull %7) #8
  %160 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 257, ptr noundef nonnull %8) #8
  %161 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 322, ptr noundef nonnull %9) #8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 323, ptr noundef nonnull %10) #8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %163, %158
  %167 = call ptr @TIFFFileName(ptr noundef %93) #8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %167, ptr noundef nonnull @.str.7) #8
  br label %254

168:                                              ; preds = %163
  %169 = load i32, ptr %9, align 4, !tbaa !7
  %170 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 322, i32 noundef %169) #8
  %171 = load i32, ptr %10, align 4, !tbaa !7
  %172 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 323, i32 noundef %171) #8
  %173 = load i32, ptr %9, align 4, !tbaa !7
  %174 = load i32, ptr %10, align 4, !tbaa !7
  %175 = shl i32 %173, 2
  %176 = mul i32 %175, %174
  %177 = call ptr @_TIFFmalloc(i32 noundef %176) #8
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %168
  %180 = call ptr @TIFFFileName(ptr noundef %93) #8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %180, ptr noundef nonnull @.str.8) #8
  br label %254

181:                                              ; preds = %168
  %182 = load i32, ptr %9, align 4, !tbaa !7
  %183 = shl i32 %182, 2
  %184 = call ptr @_TIFFmalloc(i32 noundef %183) #8
  %185 = icmp ne ptr %184, null
  br i1 %185, label %188, label %186

186:                                              ; preds = %181
  %187 = call ptr @TIFFFileName(ptr noundef %93) #8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %187, ptr noundef nonnull @.str.9) #8
  br label %188

188:                                              ; preds = %186, %181
  %189 = phi i32 [ 0, %186 ], [ 1, %181 ]
  %190 = load i32, ptr %8, align 4
  %191 = icmp ne i32 %190, 0
  %192 = select i1 %185, i1 %191, i1 false
  br i1 %192, label %193, label %252

193:                                              ; preds = %188, %244
  %194 = phi i32 [ %247, %244 ], [ 0, %188 ]
  %195 = load i32, ptr %7, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %244, label %197

197:                                              ; preds = %193, %237
  %198 = phi i32 [ %239, %237 ], [ 0, %193 ]
  %199 = call i32 @TIFFReadRGBATile(ptr noundef %93, i32 noundef %198, i32 noundef %194, ptr noundef nonnull %177) #8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %234, label %201

201:                                              ; preds = %197
  %202 = load i32, ptr %10, align 4, !tbaa !7
  %203 = icmp ult i32 %202, 2
  br i1 %203, label %225, label %204

204:                                              ; preds = %201, %204
  %205 = phi i32 [ %222, %204 ], [ %202, %201 ]
  %206 = phi i32 [ %221, %204 ], [ 0, %201 ]
  %207 = load i32, ptr %9, align 4, !tbaa !7
  %208 = mul i32 %207, %206
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, ptr %177, i64 %209
  %211 = xor i32 %206, -1
  %212 = add i32 %205, %211
  %213 = mul i32 %207, %212
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, ptr %177, i64 %214
  %216 = shl i32 %207, 2
  call void @_TIFFmemcpy(ptr noundef nonnull %184, ptr noundef nonnull %210, i32 noundef %216) #8
  %217 = load i32, ptr %9, align 4, !tbaa !7
  %218 = shl i32 %217, 2
  call void @_TIFFmemcpy(ptr noundef nonnull %210, ptr noundef nonnull %215, i32 noundef %218) #8
  %219 = load i32, ptr %9, align 4, !tbaa !7
  %220 = shl i32 %219, 2
  call void @_TIFFmemcpy(ptr noundef nonnull %215, ptr noundef nonnull %184, i32 noundef %220) #8
  %221 = add nuw nsw i32 %206, 1
  %222 = load i32, ptr %10, align 4, !tbaa !7
  %223 = lshr i32 %222, 1
  %224 = icmp ult i32 %221, %223
  br i1 %224, label %204, label %225, !llvm.loop !18

225:                                              ; preds = %204, %201
  %226 = call i32 @TIFFComputeTile(ptr noundef %83, i32 noundef %198, i32 noundef %194, i32 noundef 0, i16 noundef zeroext 0) #8
  %227 = load i32, ptr %9, align 4, !tbaa !7
  %228 = shl i32 %227, 2
  %229 = load i32, ptr %10, align 4, !tbaa !7
  %230 = mul i32 %228, %229
  %231 = call i32 @TIFFWriteEncodedTile(ptr noundef %83, i32 noundef %226, ptr noundef nonnull %177, i32 noundef %230) #8
  %232 = icmp ne i32 %231, -1
  %233 = zext i1 %232 to i32
  br label %234

234:                                              ; preds = %225, %197
  %235 = phi i32 [ 0, %197 ], [ %233, %225 ]
  %236 = phi i1 [ false, %197 ], [ %232, %225 ]
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %238 = load i32, ptr %9, align 4, !tbaa !7
  %239 = add i32 %238, %198
  %240 = icmp ne i32 %235, 0
  %241 = load i32, ptr %7, align 4
  %242 = icmp ult i32 %239, %241
  %243 = select i1 %240, i1 %242, i1 false
  br i1 %243, label %197, label %244, !llvm.loop !19

244:                                              ; preds = %237, %234, %193
  %245 = phi i32 [ 1, %193 ], [ %235, %234 ], [ %235, %237 ]
  %246 = load i32, ptr %10, align 4, !tbaa !7
  %247 = add i32 %246, %194
  %248 = icmp ne i32 %245, 0
  %249 = load i32, ptr %8, align 4
  %250 = icmp ult i32 %247, %249
  %251 = select i1 %248, i1 %250, i1 false
  br i1 %251, label %193, label %252, !llvm.loop !20

252:                                              ; preds = %244, %188
  %253 = phi i32 [ %189, %188 ], [ %245, %244 ]
  call void @_TIFFfree(ptr noundef nonnull %177) #8
  call void @_TIFFfree(ptr noundef %184) #8
  br label %254

254:                                              ; preds = %252, %179, %166
  %255 = phi i32 [ 0, %179 ], [ %253, %252 ], [ 0, %166 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %423

256:                                              ; preds = %155, %152
  %257 = load i32, ptr @process_by_block, align 4, !tbaa !7
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %343, label %259

259:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %260 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 256, ptr noundef nonnull %5) #8
  %261 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 257, ptr noundef nonnull %6) #8
  %262 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 278, ptr noundef nonnull @rowsperstrip) #8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = call ptr @TIFFFileName(ptr noundef %93) #8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %265, ptr noundef nonnull @.str.10) #8
  br label %341

266:                                              ; preds = %259
  %267 = load i32, ptr @rowsperstrip, align 4, !tbaa !7
  %268 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 278, i32 noundef %267) #8
  %269 = load i32, ptr %5, align 4, !tbaa !7
  %270 = load i32, ptr @rowsperstrip, align 4, !tbaa !7
  %271 = shl i32 %269, 2
  %272 = mul i32 %271, %270
  %273 = call ptr @_TIFFmalloc(i32 noundef %272) #8
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %266
  %276 = call ptr @TIFFFileName(ptr noundef %93) #8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %276, ptr noundef nonnull @.str.8) #8
  br label %341

277:                                              ; preds = %266
  %278 = load i32, ptr %5, align 4, !tbaa !7
  %279 = shl i32 %278, 2
  %280 = call ptr @_TIFFmalloc(i32 noundef %279) #8
  %281 = icmp ne ptr %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %277
  %283 = call ptr @TIFFFileName(ptr noundef %93) #8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %283, ptr noundef nonnull @.str.9) #8
  br label %284

284:                                              ; preds = %282, %277
  %285 = phi i32 [ 0, %282 ], [ 1, %277 ]
  %286 = load i32, ptr %6, align 4
  %287 = icmp ne i32 %286, 0
  %288 = select i1 %281, i1 %287, i1 false
  br i1 %288, label %289, label %339

289:                                              ; preds = %284, %332
  %290 = phi i32 [ %334, %332 ], [ 0, %284 ]
  %291 = call i32 @TIFFReadRGBAStrip(ptr noundef %93, i32 noundef %290, ptr noundef nonnull %273) #8
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %329, label %293

293:                                              ; preds = %289
  %294 = load i32, ptr @rowsperstrip, align 4, !tbaa !7
  %295 = add i32 %294, %290
  %296 = load i32, ptr %6, align 4, !tbaa !7
  %297 = icmp ugt i32 %295, %296
  %298 = sub i32 %296, %290
  %299 = select i1 %297, i32 %298, i32 %294
  %300 = sdiv i32 %299, 2
  %301 = icmp sgt i32 %299, 1
  br i1 %301, label %302, label %320

302:                                              ; preds = %293, %302
  %303 = phi i32 [ %318, %302 ], [ 0, %293 ]
  %304 = load i32, ptr %5, align 4, !tbaa !7
  %305 = mul i32 %304, %303
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i32, ptr %273, i64 %306
  %308 = xor i32 %303, -1
  %309 = add nsw i32 %299, %308
  %310 = mul i32 %304, %309
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i32, ptr %273, i64 %311
  %313 = shl i32 %304, 2
  call void @_TIFFmemcpy(ptr noundef nonnull %280, ptr noundef nonnull %307, i32 noundef %313) #8
  %314 = load i32, ptr %5, align 4, !tbaa !7
  %315 = shl i32 %314, 2
  call void @_TIFFmemcpy(ptr noundef nonnull %307, ptr noundef nonnull %312, i32 noundef %315) #8
  %316 = load i32, ptr %5, align 4, !tbaa !7
  %317 = shl i32 %316, 2
  call void @_TIFFmemcpy(ptr noundef nonnull %312, ptr noundef nonnull %280, i32 noundef %317) #8
  %318 = add nuw nsw i32 %303, 1
  %319 = icmp eq i32 %318, %300
  br i1 %319, label %320, label %302, !llvm.loop !21

320:                                              ; preds = %302, %293
  %321 = load i32, ptr @rowsperstrip, align 4, !tbaa !7
  %322 = udiv i32 %290, %321
  %323 = shl nsw i32 %299, 2
  %324 = load i32, ptr %5, align 4, !tbaa !7
  %325 = mul i32 %323, %324
  %326 = call i32 @TIFFWriteEncodedStrip(ptr noundef %83, i32 noundef %322, ptr noundef nonnull %273, i32 noundef %325) #8
  %327 = icmp ne i32 %326, -1
  %328 = zext i1 %327 to i32
  br label %329

329:                                              ; preds = %320, %289
  %330 = phi i32 [ 0, %289 ], [ %328, %320 ]
  %331 = phi i1 [ false, %289 ], [ %327, %320 ]
  br i1 %331, label %332, label %339

332:                                              ; preds = %329
  %333 = load i32, ptr @rowsperstrip, align 4, !tbaa !7
  %334 = add i32 %333, %290
  %335 = icmp ne i32 %330, 0
  %336 = load i32, ptr %6, align 4
  %337 = icmp ult i32 %334, %336
  %338 = select i1 %335, i1 %337, i1 false
  br i1 %338, label %289, label %339, !llvm.loop !22

339:                                              ; preds = %332, %329, %284
  %340 = phi i32 [ %285, %284 ], [ %330, %329 ], [ %330, %332 ]
  call void @_TIFFfree(ptr noundef nonnull %273) #8
  call void @_TIFFfree(ptr noundef %280) #8
  br label %341

341:                                              ; preds = %339, %275, %264
  %342 = phi i32 [ 0, %275 ], [ %340, %339 ], [ 0, %264 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %423

343:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %344 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 256, ptr noundef nonnull %3) #8
  %345 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %93, i32 noundef 257, ptr noundef nonnull %4) #8
  %346 = load i32, ptr @rowsperstrip, align 4, !tbaa !7
  %347 = call i32 @TIFFDefaultStripSize(ptr noundef %83, i32 noundef %346) #8
  store i32 %347, ptr @rowsperstrip, align 4, !tbaa !7
  %348 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %83, i32 noundef 278, i32 noundef %347) #8
  %349 = load i32, ptr %3, align 4, !tbaa !7
  %350 = load i32, ptr %4, align 4, !tbaa !7
  %351 = shl i32 %349, 2
  %352 = mul i32 %351, %350
  %353 = call ptr @_TIFFmalloc(i32 noundef %352) #8
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %357

355:                                              ; preds = %343
  %356 = call ptr @TIFFFileName(ptr noundef %93) #8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %356, ptr noundef nonnull @.str.8) #8
  br label %421

357:                                              ; preds = %343
  %358 = load i32, ptr %3, align 4, !tbaa !7
  %359 = load i32, ptr %4, align 4, !tbaa !7
  %360 = call i32 @TIFFReadRGBAImage(ptr noundef %93, i32 noundef %358, i32 noundef %359, ptr noundef nonnull %353, i32 noundef 0) #8
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %357
  call void @_TIFFfree(ptr noundef nonnull %353) #8
  br label %421

363:                                              ; preds = %357
  %364 = load i32, ptr %3, align 4, !tbaa !7
  %365 = shl i32 %364, 2
  %366 = call ptr @_TIFFmalloc(i32 noundef %365) #8
  %367 = icmp eq ptr %366, null
  br i1 %367, label %371, label %368

368:                                              ; preds = %363
  %369 = load i32, ptr %4, align 4, !tbaa !7
  %370 = icmp ult i32 %369, 2
  br i1 %370, label %394, label %373

371:                                              ; preds = %363
  %372 = call ptr @TIFFFileName(ptr noundef %93) #8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %372, ptr noundef nonnull @.str.9) #8
  br label %421

373:                                              ; preds = %368, %373
  %374 = phi i32 [ %391, %373 ], [ %369, %368 ]
  %375 = phi i32 [ %390, %373 ], [ 0, %368 ]
  %376 = load i32, ptr %3, align 4, !tbaa !7
  %377 = mul i32 %376, %375
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds i32, ptr %353, i64 %378
  %380 = xor i32 %375, -1
  %381 = add i32 %374, %380
  %382 = mul i32 %376, %381
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds i32, ptr %353, i64 %383
  %385 = shl i32 %376, 2
  call void @_TIFFmemcpy(ptr noundef nonnull %366, ptr noundef nonnull %379, i32 noundef %385) #8
  %386 = load i32, ptr %3, align 4, !tbaa !7
  %387 = shl i32 %386, 2
  call void @_TIFFmemcpy(ptr noundef nonnull %379, ptr noundef nonnull %384, i32 noundef %387) #8
  %388 = load i32, ptr %3, align 4, !tbaa !7
  %389 = shl i32 %388, 2
  call void @_TIFFmemcpy(ptr noundef nonnull %384, ptr noundef nonnull %366, i32 noundef %389) #8
  %390 = add nuw nsw i32 %375, 1
  %391 = load i32, ptr %4, align 4, !tbaa !7
  %392 = lshr i32 %391, 1
  %393 = icmp ult i32 %390, %392
  br i1 %393, label %373, label %394, !llvm.loop !23

394:                                              ; preds = %373, %368
  call void @_TIFFfree(ptr noundef nonnull %366) #8
  %395 = load i32, ptr %4, align 4, !tbaa !7
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %420, label %397

397:                                              ; preds = %394, %415
  %398 = phi i32 [ %418, %415 ], [ %395, %394 ]
  %399 = phi i32 [ %417, %415 ], [ 0, %394 ]
  %400 = load i32, ptr %3, align 4, !tbaa !7
  %401 = mul i32 %400, %399
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds i32, ptr %353, i64 %402
  %404 = load i32, ptr @rowsperstrip, align 4, !tbaa !7
  %405 = add i32 %404, %399
  %406 = icmp ugt i32 %405, %398
  %407 = sub i32 %398, %399
  %408 = select i1 %406, i32 %407, i32 %404
  %409 = udiv i32 %399, %404
  %410 = shl i32 %400, 2
  %411 = mul i32 %410, %408
  %412 = call i32 @TIFFWriteEncodedStrip(ptr noundef %83, i32 noundef %409, ptr noundef nonnull %403, i32 noundef %411) #8
  %413 = icmp eq i32 %412, -1
  br i1 %413, label %414, label %415

414:                                              ; preds = %397
  call void @_TIFFfree(ptr noundef nonnull %353) #8
  br label %421

415:                                              ; preds = %397
  %416 = load i32, ptr @rowsperstrip, align 4, !tbaa !7
  %417 = add i32 %416, %399
  %418 = load i32, ptr %4, align 4, !tbaa !7
  %419 = icmp ult i32 %417, %418
  br i1 %419, label %397, label %420, !llvm.loop !24

420:                                              ; preds = %415, %394
  call void @_TIFFfree(ptr noundef nonnull %353) #8
  br label %421

421:                                              ; preds = %420, %414, %371, %362, %355
  %422 = phi i32 [ 0, %355 ], [ 0, %371 ], [ 0, %414 ], [ 1, %420 ], [ 0, %362 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %423

423:                                              ; preds = %254, %341, %421
  %424 = phi i32 [ %255, %254 ], [ %342, %341 ], [ %422, %421 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %437, label %426

426:                                              ; preds = %423
  %427 = call i32 @TIFFWriteDirectory(ptr noundef nonnull %83) #8
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %437, label %429

429:                                              ; preds = %426
  %430 = call i32 @TIFFReadDirectory(ptr noundef nonnull %93) #8
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %95, !llvm.loop !25

432:                                              ; preds = %429
  call void @TIFFClose(ptr noundef nonnull %93) #8
  br label %433

433:                                              ; preds = %88, %432
  %434 = load i32, ptr @optind, align 4, !tbaa !7
  %435 = add nsw i32 %434, 1
  store i32 %435, ptr @optind, align 4, !tbaa !7
  %436 = icmp slt i32 %435, %79
  br i1 %436, label %88, label %437, !llvm.loop !26

437:                                              ; preds = %433, %423, %426, %85
  %438 = phi i32 [ 0, %85 ], [ 1, %426 ], [ 1, %423 ], [ 0, %433 ]
  call void @TIFFClose(ptr noundef nonnull %83) #8
  br label %439

439:                                              ; preds = %437, %78
  %440 = phi i32 [ -2, %78 ], [ %438, %437 ]
  ret i32 %440
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @TIFFOpen(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @TIFFWriteDirectory(ptr noundef) local_unnamed_addr #4

declare void @TIFFClose(ptr noundef) local_unnamed_addr #4

declare i32 @TIFFReadDirectory(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

declare ptr @TIFFGetVersion() local_unnamed_addr #4

declare i32 @TIFFIsTiled(ptr noundef) local_unnamed_addr #4

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @TIFFFileName(ptr noundef) local_unnamed_addr #4

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #4

declare i32 @TIFFReadRGBATile(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @TIFFWriteEncodedTile(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @TIFFComputeTile(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #4

declare i32 @TIFFReadRGBAStrip(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @TIFFWriteEncodedStrip(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @TIFFDefaultStripSize(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @TIFFReadRGBAImage(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !9, i64 0}
!15 = distinct !{!15, !6}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !9, i64 0}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
