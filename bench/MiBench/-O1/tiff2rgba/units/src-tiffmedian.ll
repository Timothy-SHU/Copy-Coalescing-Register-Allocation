; ModuleID = 'src/tiffmedian.c'
source_filename = "src/tiffmedian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.colorbox = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.C_cell = type { i32, [256 x [2 x i32]] }

@rowsperstrip = dso_local local_unnamed_addr global i32 -1, align 4
@compression = dso_local global i16 -1, align 2
@bitspersample = dso_local global i16 1, align 2
@predictor = dso_local local_unnamed_addr global i16 0, align 2
@num_colors = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"c:C:r:f\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"-c: colormap too big, max %d\0A\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@in = dso_local local_unnamed_addr global ptr null, align 8
@imagewidth = dso_local global i32 0, align 4
@imagelength = dso_local global i32 0, align 4
@samplesperpixel = dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: Image must have at least 8-bits/sample\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: Image must have RGB data\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"%s: Can only handle contiguous data packing\0A\00", align 1
@usedboxes = dso_local local_unnamed_addr global ptr null, align 8
@freeboxes = dso_local local_unnamed_addr global ptr null, align 8
@rm = dso_local global [256 x i16] zeroinitializer, align 16
@gm = dso_local global [256 x i16] zeroinitializer, align 16
@bm = dso_local global [256 x i16] zeroinitializer, align 16
@ColorCells = dso_local local_unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@out = dso_local local_unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"usage: tiffmedian [options] input.tif output.tif\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"where options are:\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c" -r #\09\09make each strip have no more than # rows\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c" -C #\09\09create a colormap with # entries\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c" -f\09\09use Floyd-Steinberg dithering\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c" -c lzw[:opts]\09compress output with Lempel-Ziv & Welch encoding\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"               (no longer supported due to Unisys patent enforcement)\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c" -c zip[:opts]\09compress output with deflate encoding\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c" -c packbits\09compress output with packbits encoding\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c" -c none\09use no compression algorithm on output\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"LZW and deflate options:\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c" #\09\09set predictor value\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"For example, -c lzw:2 to get LZW-encoded data with horizontal differencing\00", align 1
@stuff = dso_local local_unnamed_addr global [15 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr null], align 16
@bytes_per_pixel = dso_local local_unnamed_addr global i32 0, align 4
@histogram = dso_local local_unnamed_addr global [32 x [32 x [32 x i32]]] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"packbits\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"lzw\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"No space for scanline buffer\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main1(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i32], align 16
  %4 = alloca [8192 x i8], align 16
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [8192 x i8], align 16
  %7 = alloca [8192 x i8], align 16
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  store i32 256, ptr @num_colors, align 4, !tbaa !5
  br label %13

13:                                               ; preds = %47, %2
  %14 = phi i32 [ 0, %2 ], [ %48, %47 ]
  %15 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #12
  switch i32 %15, label %47 [
    i32 -1, label %103
    i32 99, label %16
    i32 67, label %63
    i32 102, label %84
    i32 114, label %85
    i32 63, label %89
  ]

16:                                               ; preds = %13
  %17 = load ptr, ptr @optarg, align 8, !tbaa !9
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(5) @.str.21) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i16 1, ptr @compression, align 2, !tbaa !11
  br label %47

21:                                               ; preds = %16
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(9) @.str.22) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i16 -32763, ptr @compression, align 2, !tbaa !11
  br label %47

25:                                               ; preds = %21
  %26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.23, i64 noundef 3) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %17, i32 noundef 58) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = tail call i64 @strtol(ptr nocapture noundef nonnull %32, ptr noundef null, i32 noundef 10) #12
  %34 = trunc i64 %33 to i16
  store i16 %34, ptr @predictor, align 2, !tbaa !11
  br label %35

35:                                               ; preds = %31, %28
  store i16 5, ptr @compression, align 2, !tbaa !11
  br label %47

36:                                               ; preds = %25
  %37 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.24, i64 noundef 3) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %17, i32 noundef 58) #13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, ptr %40, i64 1
  %44 = tail call i64 @strtol(ptr nocapture noundef nonnull %43, ptr noundef null, i32 noundef 10) #12
  %45 = trunc i64 %44 to i16
  store i16 %45, ptr @predictor, align 2, !tbaa !11
  br label %46

46:                                               ; preds = %42, %39
  store i16 -32590, ptr @compression, align 2, !tbaa !11
  br label %47

47:                                               ; preds = %46, %35, %24, %20, %13, %63, %85, %84
  %48 = phi i32 [ %14, %85 ], [ 1, %84 ], [ %14, %63 ], [ %14, %13 ], [ %14, %20 ], [ %14, %24 ], [ %14, %35 ], [ %14, %46 ]
  br label %13, !llvm.loop !13

49:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %7) #12
  %50 = load ptr, ptr @stderr, align 8, !tbaa !9
  call void @setbuf(ptr noundef %50, ptr noundef nonnull %7) #12
  %51 = load ptr, ptr @stuff, align 16, !tbaa !9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %49, %53
  %54 = phi i64 [ %58, %53 ], [ 0, %49 ]
  %55 = phi ptr [ %60, %53 ], [ %51, %49 ]
  %56 = load ptr, ptr @stderr, align 8, !tbaa !9
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.25, ptr noundef nonnull %55) #14
  %58 = add nuw i64 %54, 1
  %59 = getelementptr inbounds [15 x ptr], ptr @stuff, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %53, !llvm.loop !15

62:                                               ; preds = %53, %49
  call void @exit(i32 noundef 1) #15
  unreachable

63:                                               ; preds = %13
  %64 = load ptr, ptr @optarg, align 8, !tbaa !9
  %65 = tail call i64 @strtol(ptr nocapture noundef nonnull %64, ptr noundef null, i32 noundef 10) #12
  %66 = trunc i64 %65 to i32
  store i32 %66, ptr @num_colors, align 4, !tbaa !5
  %67 = icmp sgt i32 %66, 256
  br i1 %67, label %68, label %47

68:                                               ; preds = %63
  %69 = load ptr, ptr @stderr, align 8, !tbaa !9
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.1, i32 noundef 256) #14
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %6) #12
  %71 = load ptr, ptr @stderr, align 8, !tbaa !9
  call void @setbuf(ptr noundef %71, ptr noundef nonnull %6) #12
  %72 = load ptr, ptr @stuff, align 16, !tbaa !9
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %68, %74
  %75 = phi i64 [ %79, %74 ], [ 0, %68 ]
  %76 = phi ptr [ %81, %74 ], [ %72, %68 ]
  %77 = load ptr, ptr @stderr, align 8, !tbaa !9
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.25, ptr noundef nonnull %76) #14
  %79 = add nuw i64 %75, 1
  %80 = getelementptr inbounds [15 x ptr], ptr @stuff, i64 0, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !9
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %74, !llvm.loop !15

83:                                               ; preds = %74, %68
  call void @exit(i32 noundef 1) #15
  unreachable

84:                                               ; preds = %13
  br label %47

85:                                               ; preds = %13
  %86 = load ptr, ptr @optarg, align 8, !tbaa !9
  %87 = tail call i64 @strtol(ptr nocapture noundef nonnull %86, ptr noundef null, i32 noundef 10) #12
  %88 = trunc i64 %87 to i32
  store i32 %88, ptr @rowsperstrip, align 4, !tbaa !5
  br label %47

89:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #12
  %90 = load ptr, ptr @stderr, align 8, !tbaa !9
  call void @setbuf(ptr noundef %90, ptr noundef nonnull %5) #12
  %91 = load ptr, ptr @stuff, align 16, !tbaa !9
  %92 = icmp eq ptr %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %89, %93
  %94 = phi i64 [ %98, %93 ], [ 0, %89 ]
  %95 = phi ptr [ %100, %93 ], [ %91, %89 ]
  %96 = load ptr, ptr @stderr, align 8, !tbaa !9
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.25, ptr noundef nonnull %95) #14
  %98 = add nuw i64 %94, 1
  %99 = getelementptr inbounds [15 x ptr], ptr @stuff, i64 0, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !9
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %93, !llvm.loop !15

102:                                              ; preds = %93, %89
  call void @exit(i32 noundef 1) #15
  unreachable

103:                                              ; preds = %13
  %104 = load i32, ptr @optind, align 4, !tbaa !5
  %105 = sub nsw i32 %0, %104
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %121, label %107

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #12
  %108 = load ptr, ptr @stderr, align 8, !tbaa !9
  call void @setbuf(ptr noundef %108, ptr noundef nonnull %4) #12
  %109 = load ptr, ptr @stuff, align 16, !tbaa !9
  %110 = icmp eq ptr %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %107, %111
  %112 = phi i64 [ %116, %111 ], [ 0, %107 ]
  %113 = phi ptr [ %118, %111 ], [ %109, %107 ]
  %114 = load ptr, ptr @stderr, align 8, !tbaa !9
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.25, ptr noundef nonnull %113) #14
  %116 = add nuw i64 %112, 1
  %117 = getelementptr inbounds [15 x ptr], ptr @stuff, i64 0, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !9
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %111, !llvm.loop !15

120:                                              ; preds = %111, %107
  call void @exit(i32 noundef 1) #15
  unreachable

121:                                              ; preds = %103
  %122 = sext i32 %104 to i64
  %123 = getelementptr inbounds ptr, ptr %1, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !9
  %125 = tail call ptr @TIFFOpen(ptr noundef %124, ptr noundef nonnull @.str.2) #12
  store ptr %125, ptr @in, align 8, !tbaa !9
  %126 = icmp eq ptr %125, null
  br i1 %126, label %1178, label %127

127:                                              ; preds = %121
  %128 = tail call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %125, i32 noundef 256, ptr noundef nonnull @imagewidth) #12
  %129 = load ptr, ptr @in, align 8, !tbaa !9
  %130 = tail call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %129, i32 noundef 257, ptr noundef nonnull @imagelength) #12
  %131 = load ptr, ptr @in, align 8, !tbaa !9
  %132 = tail call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %131, i32 noundef 258, ptr noundef nonnull @bitspersample) #12
  %133 = load ptr, ptr @in, align 8, !tbaa !9
  %134 = tail call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %133, i32 noundef 277, ptr noundef nonnull @samplesperpixel) #12
  %135 = load i16, ptr @bitspersample, align 2
  switch i16 %135, label %136 [
    i16 16, label %143
    i16 8, label %143
  ]

136:                                              ; preds = %127
  %137 = load ptr, ptr @stderr, align 8, !tbaa !9
  %138 = load i32, ptr @optind, align 4, !tbaa !5
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %1, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !9
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef nonnull @.str.3, ptr noundef %141) #14
  br label %1178

143:                                              ; preds = %127, %127
  %144 = load ptr, ptr @in, align 8, !tbaa !9
  %145 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %144, i32 noundef 262, ptr noundef nonnull %10) #12
  %146 = icmp eq i32 %145, 0
  %147 = load i16, ptr %10, align 2
  %148 = icmp ne i16 %147, 2
  %149 = select i1 %146, i1 true, i1 %148
  %150 = load i16, ptr @samplesperpixel, align 2
  %151 = icmp ult i16 %150, 3
  %152 = select i1 %149, i1 true, i1 %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %143
  %154 = load ptr, ptr @stderr, align 8, !tbaa !9
  %155 = load i32, ptr @optind, align 4, !tbaa !5
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %1, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !9
  %159 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.4, ptr noundef %158) #14
  br label %1178

160:                                              ; preds = %143
  %161 = load ptr, ptr @in, align 8, !tbaa !9
  %162 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %161, i32 noundef 284, ptr noundef nonnull %9) #12
  %163 = load i16, ptr %9, align 2, !tbaa !11
  %164 = icmp eq i16 %163, 1
  br i1 %164, label %172, label %165

165:                                              ; preds = %160
  %166 = load ptr, ptr @stderr, align 8, !tbaa !9
  %167 = load i32, ptr @optind, align 4, !tbaa !5
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %1, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !9
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef nonnull @.str.5, ptr noundef %170) #14
  br label %1178

172:                                              ; preds = %160
  store ptr null, ptr @usedboxes, align 8, !tbaa !9
  %173 = load i32, ptr @num_colors, align 4, !tbaa !5
  %174 = mul i32 %173, 48
  %175 = call ptr @_TIFFmalloc(i32 noundef %174) #12
  store ptr %175, ptr @freeboxes, align 8, !tbaa !9
  %176 = getelementptr inbounds %struct.colorbox, ptr %175, i64 1
  store ptr %176, ptr %175, align 8, !tbaa !16
  %177 = load ptr, ptr @freeboxes, align 8, !tbaa !9
  %178 = getelementptr inbounds %struct.colorbox, ptr %177, i64 0, i32 1
  store ptr null, ptr %178, align 8, !tbaa !18
  %179 = load i32, ptr @num_colors, align 4, !tbaa !5
  %180 = add i32 %179, -1
  %181 = icmp sgt i32 %179, 2
  br i1 %181, label %182, label %195

182:                                              ; preds = %172
  %183 = zext i32 %180 to i64
  br label %184

184:                                              ; preds = %182, %184
  %185 = phi i64 [ 1, %182 ], [ %187, %184 ]
  %186 = load ptr, ptr @freeboxes, align 8, !tbaa !9
  %187 = add nuw nsw i64 %185, 1
  %188 = getelementptr inbounds %struct.colorbox, ptr %186, i64 %187
  %189 = getelementptr inbounds %struct.colorbox, ptr %186, i64 %185
  store ptr %188, ptr %189, align 8, !tbaa !16
  %190 = load ptr, ptr @freeboxes, align 8, !tbaa !9
  %191 = getelementptr %struct.colorbox, ptr %190, i64 %185
  %192 = getelementptr %struct.colorbox, ptr %191, i64 -1
  %193 = getelementptr inbounds %struct.colorbox, ptr %190, i64 %185, i32 1
  store ptr %192, ptr %193, align 8, !tbaa !18
  %194 = icmp eq i64 %187, %183
  br i1 %194, label %195, label %184, !llvm.loop !19

195:                                              ; preds = %184, %172
  %196 = load ptr, ptr @freeboxes, align 8, !tbaa !9
  %197 = sext i32 %180 to i64
  %198 = getelementptr inbounds %struct.colorbox, ptr %196, i64 %197
  store ptr null, ptr %198, align 8, !tbaa !16
  %199 = load ptr, ptr @freeboxes, align 8, !tbaa !9
  %200 = sext i32 %179 to i64
  %201 = getelementptr %struct.colorbox, ptr %199, i64 %200
  %202 = getelementptr %struct.colorbox, ptr %201, i64 -2
  %203 = getelementptr %struct.colorbox, ptr %201, i64 -1, i32 1
  store ptr %202, ptr %203, align 8, !tbaa !18
  %204 = load ptr, ptr @freeboxes, align 8, !tbaa !9
  %205 = load ptr, ptr %204, align 8, !tbaa !16
  store ptr %205, ptr @freeboxes, align 8, !tbaa !9
  %206 = icmp eq ptr %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %195
  %208 = getelementptr inbounds %struct.colorbox, ptr %205, i64 0, i32 1
  store ptr null, ptr %208, align 8, !tbaa !18
  br label %209

209:                                              ; preds = %207, %195
  %210 = load ptr, ptr @usedboxes, align 8, !tbaa !9
  store ptr %210, ptr %204, align 8, !tbaa !16
  store ptr %204, ptr @usedboxes, align 8, !tbaa !9
  %211 = load ptr, ptr %204, align 8, !tbaa !16
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.colorbox, ptr %211, i64 0, i32 1
  store ptr %204, ptr %214, align 8, !tbaa !18
  br label %215

215:                                              ; preds = %213, %209
  %216 = load ptr, ptr @in, align 8, !tbaa !9
  %217 = call i32 @TIFFScanlineSize(ptr noundef %216) #12
  %218 = call ptr @_TIFFmalloc(i32 noundef %217) #12
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load ptr, ptr @stderr, align 8, !tbaa !9
  %222 = call i64 @fwrite(ptr nonnull @.str.26, i64 29, i64 1, ptr %221) #14
  call void @exit(i32 noundef 1) #15
  unreachable

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.colorbox, ptr %204, i64 0, i32 6
  store i32 999, ptr %224, align 8, !tbaa !20
  %225 = getelementptr inbounds %struct.colorbox, ptr %204, i64 0, i32 4
  store i32 999, ptr %225, align 8, !tbaa !21
  %226 = getelementptr inbounds %struct.colorbox, ptr %204, i64 0, i32 2
  store i32 999, ptr %226, align 8, !tbaa !22
  %227 = getelementptr inbounds %struct.colorbox, ptr %204, i64 0, i32 7
  store i32 -1, ptr %227, align 4, !tbaa !23
  %228 = getelementptr inbounds %struct.colorbox, ptr %204, i64 0, i32 5
  store i32 -1, ptr %228, align 4, !tbaa !24
  %229 = getelementptr inbounds %struct.colorbox, ptr %204, i64 0, i32 3
  store i32 -1, ptr %229, align 4, !tbaa !25
  %230 = load i32, ptr @imagewidth, align 4, !tbaa !5
  %231 = load i32, ptr @imagelength, align 4, !tbaa !5
  %232 = mul i32 %231, %230
  %233 = getelementptr inbounds %struct.colorbox, ptr %204, i64 0, i32 8
  store i32 %232, ptr %233, align 8, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(131072) @histogram, i8 0, i64 131072, i1 false), !tbaa !5
  %234 = icmp eq i32 %231, 0
  br i1 %234, label %293, label %235

235:                                              ; preds = %223, %289
  %236 = phi i32 [ %290, %289 ], [ 0, %223 ]
  %237 = call i32 @TIFFReadScanline(ptr noundef %216, ptr noundef nonnull %218, i32 noundef %236, i16 noundef zeroext 0) #12
  %238 = icmp slt i32 %237, 1
  br i1 %238, label %293, label %239

239:                                              ; preds = %235
  %240 = load i32, ptr @imagewidth, align 4, !tbaa !5
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %289, label %242

242:                                              ; preds = %239, %281
  %243 = phi i32 [ %245, %281 ], [ %240, %239 ]
  %244 = phi ptr [ %254, %281 ], [ %218, %239 ]
  %245 = add i32 %243, -1
  %246 = getelementptr inbounds i8, ptr %244, i64 1
  %247 = load i8, ptr %244, align 1, !tbaa !27
  %248 = lshr i8 %247, 3
  %249 = zext nneg i8 %248 to i32
  %250 = getelementptr inbounds i8, ptr %244, i64 2
  %251 = load i8, ptr %246, align 1, !tbaa !27
  %252 = lshr i8 %251, 3
  %253 = zext nneg i8 %252 to i32
  %254 = getelementptr inbounds i8, ptr %244, i64 3
  %255 = load i8, ptr %250, align 1, !tbaa !27
  %256 = lshr i8 %255, 3
  %257 = zext nneg i8 %256 to i32
  %258 = load i32, ptr %226, align 8, !tbaa !22
  %259 = icmp sgt i32 %258, %249
  br i1 %259, label %260, label %261

260:                                              ; preds = %242
  store i32 %249, ptr %226, align 8, !tbaa !22
  br label %261

261:                                              ; preds = %260, %242
  %262 = load i32, ptr %229, align 4, !tbaa !25
  %263 = icmp slt i32 %262, %249
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store i32 %249, ptr %229, align 4, !tbaa !25
  br label %265

265:                                              ; preds = %264, %261
  %266 = load i32, ptr %225, align 8, !tbaa !21
  %267 = icmp sgt i32 %266, %253
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  store i32 %253, ptr %225, align 8, !tbaa !21
  br label %269

269:                                              ; preds = %268, %265
  %270 = load i32, ptr %228, align 4, !tbaa !24
  %271 = icmp slt i32 %270, %253
  br i1 %271, label %272, label %273

272:                                              ; preds = %269
  store i32 %253, ptr %228, align 4, !tbaa !24
  br label %273

273:                                              ; preds = %272, %269
  %274 = load i32, ptr %224, align 8, !tbaa !20
  %275 = icmp sgt i32 %274, %257
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  store i32 %257, ptr %224, align 8, !tbaa !20
  br label %277

277:                                              ; preds = %276, %273
  %278 = load i32, ptr %227, align 4, !tbaa !23
  %279 = icmp slt i32 %278, %257
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  store i32 %257, ptr %227, align 4, !tbaa !23
  br label %281

281:                                              ; preds = %280, %277
  %282 = zext nneg i8 %248 to i64
  %283 = zext nneg i8 %252 to i64
  %284 = zext nneg i8 %256 to i64
  %285 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %282, i64 %283, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !5
  %287 = add nsw i32 %286, 1
  store i32 %287, ptr %285, align 4, !tbaa !5
  %288 = icmp eq i32 %245, 0
  br i1 %288, label %289, label %242, !llvm.loop !28

289:                                              ; preds = %281, %239
  %290 = add nuw i32 %236, 1
  %291 = load i32, ptr @imagelength, align 4, !tbaa !5
  %292 = icmp ult i32 %290, %291
  br i1 %292, label %235, label %293, !llvm.loop !29

293:                                              ; preds = %235, %289, %223
  call void @_TIFFfree(ptr noundef nonnull %218) #12
  %294 = load ptr, ptr @freeboxes, align 8, !tbaa !9
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %575, %293
  %297 = load ptr, ptr @usedboxes, align 8, !tbaa !9
  %298 = icmp eq ptr %297, null
  br i1 %298, label %608, label %578

299:                                              ; preds = %293, %575
  %300 = phi ptr [ %576, %575 ], [ %294, %293 ]
  %301 = load ptr, ptr @usedboxes, align 8, !tbaa !9
  %302 = icmp eq ptr %301, null
  br i1 %302, label %335, label %303

303:                                              ; preds = %299, %330
  %304 = phi ptr [ %333, %330 ], [ %301, %299 ]
  %305 = phi i32 [ %332, %330 ], [ -1, %299 ]
  %306 = phi ptr [ %331, %330 ], [ null, %299 ]
  %307 = getelementptr inbounds %struct.colorbox, ptr %304, i64 0, i32 3
  %308 = load i32, ptr %307, align 4, !tbaa !25
  %309 = getelementptr inbounds %struct.colorbox, ptr %304, i64 0, i32 2
  %310 = load i32, ptr %309, align 8, !tbaa !22
  %311 = icmp sgt i32 %308, %310
  br i1 %311, label %324, label %312

312:                                              ; preds = %303
  %313 = getelementptr inbounds %struct.colorbox, ptr %304, i64 0, i32 5
  %314 = load i32, ptr %313, align 4, !tbaa !24
  %315 = getelementptr inbounds %struct.colorbox, ptr %304, i64 0, i32 4
  %316 = load i32, ptr %315, align 8, !tbaa !21
  %317 = icmp sgt i32 %314, %316
  br i1 %317, label %324, label %318

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.colorbox, ptr %304, i64 0, i32 7
  %320 = load i32, ptr %319, align 4, !tbaa !23
  %321 = getelementptr inbounds %struct.colorbox, ptr %304, i64 0, i32 6
  %322 = load i32, ptr %321, align 8, !tbaa !20
  %323 = icmp sgt i32 %320, %322
  br i1 %323, label %324, label %330

324:                                              ; preds = %318, %312, %303
  %325 = getelementptr inbounds %struct.colorbox, ptr %304, i64 0, i32 8
  %326 = load i32, ptr %325, align 8, !tbaa !26
  %327 = icmp sgt i32 %326, %305
  %328 = select i1 %327, ptr %304, ptr %306
  %329 = call i32 @llvm.smax.i32(i32 %326, i32 %305)
  br label %330

330:                                              ; preds = %324, %318
  %331 = phi ptr [ %306, %318 ], [ %328, %324 ]
  %332 = phi i32 [ %305, %318 ], [ %329, %324 ]
  %333 = load ptr, ptr %304, align 8, !tbaa !9
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %303, !llvm.loop !30

335:                                              ; preds = %330, %299
  %336 = phi ptr [ null, %299 ], [ %331, %330 ]
  %337 = icmp eq ptr %336, null
  br i1 %337, label %574, label %338

338:                                              ; preds = %335
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  %339 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 3
  %340 = load i32, ptr %339, align 4, !tbaa !25
  %341 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 2
  %342 = load i32, ptr %341, align 8, !tbaa !22
  %343 = sub nsw i32 %340, %342
  %344 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 5
  %345 = load i32, ptr %344, align 4, !tbaa !24
  %346 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 4
  %347 = load i32, ptr %346, align 8, !tbaa !21
  %348 = sub nsw i32 %345, %347
  %349 = icmp slt i32 %343, %348
  br i1 %349, label %357, label %350

350:                                              ; preds = %338
  %351 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 7
  %352 = load i32, ptr %351, align 4, !tbaa !23
  %353 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 6
  %354 = load i32, ptr %353, align 8, !tbaa !20
  %355 = sub nsw i32 %352, %354
  %356 = icmp slt i32 %343, %355
  br i1 %356, label %357, label %365

357:                                              ; preds = %350, %338
  %358 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 7
  %359 = load i32, ptr %358, align 4, !tbaa !23
  %360 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 6
  %361 = load i32, ptr %360, align 8, !tbaa !20
  %362 = sub nsw i32 %359, %361
  %363 = icmp slt i32 %348, %362
  %364 = select i1 %363, i32 2, i32 1
  br label %365

365:                                              ; preds = %357, %350
  %366 = phi i32 [ 0, %350 ], [ %364, %357 ]
  switch i32 %366, label %495 [
    i32 0, label %367
    i32 1, label %410
    i32 2, label %453
  ]

367:                                              ; preds = %365
  %368 = icmp sgt i32 %342, %340
  br i1 %368, label %496, label %369

369:                                              ; preds = %367
  %370 = sext i32 %342 to i64
  %371 = getelementptr [32 x i32], ptr %3, i64 0, i64 %370
  %372 = icmp sgt i32 %347, %345
  %373 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 6
  %374 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 7
  %375 = sext i32 %347 to i64
  %376 = add i32 %345, 1
  %377 = add i32 %340, 1
  br label %378

378:                                              ; preds = %405, %369
  %379 = phi i64 [ %370, %369 ], [ %407, %405 ]
  %380 = phi ptr [ %371, %369 ], [ %406, %405 ]
  store i32 0, ptr %380, align 4, !tbaa !5
  br i1 %372, label %405, label %381

381:                                              ; preds = %378
  %382 = load i32, ptr %373, align 8, !tbaa !20
  %383 = sext i32 %382 to i64
  %384 = load i32, ptr %374, align 4, !tbaa !23
  %385 = icmp sgt i32 %382, %384
  br label %386

386:                                              ; preds = %401, %381
  %387 = phi i64 [ %375, %381 ], [ %402, %401 ]
  br i1 %385, label %401, label %388

388:                                              ; preds = %386
  %389 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %379, i64 %387, i64 %383
  %390 = load i32, ptr %380, align 4, !tbaa !5
  br label %391

391:                                              ; preds = %391, %388
  %392 = phi i32 [ %390, %388 ], [ %397, %391 ]
  %393 = phi i32 [ %382, %388 ], [ %398, %391 ]
  %394 = phi ptr [ %389, %388 ], [ %395, %391 ]
  %395 = getelementptr inbounds i32, ptr %394, i64 1
  %396 = load i32, ptr %394, align 4, !tbaa !5
  %397 = add nsw i32 %396, %392
  %398 = add i32 %393, 1
  %399 = icmp eq i32 %393, %384
  br i1 %399, label %400, label %391, !llvm.loop !31

400:                                              ; preds = %391
  store i32 %397, ptr %380, align 4, !tbaa !5
  br label %401

401:                                              ; preds = %400, %386
  %402 = add nsw i64 %387, 1
  %403 = trunc i64 %402 to i32
  %404 = icmp eq i32 %376, %403
  br i1 %404, label %405, label %386, !llvm.loop !32

405:                                              ; preds = %401, %378
  %406 = getelementptr inbounds i32, ptr %380, i64 1
  %407 = add nsw i64 %379, 1
  %408 = trunc i64 %407 to i32
  %409 = icmp eq i32 %377, %408
  br i1 %409, label %496, label %378, !llvm.loop !33

410:                                              ; preds = %365
  %411 = icmp sgt i32 %347, %345
  br i1 %411, label %496, label %412

412:                                              ; preds = %410
  %413 = sext i32 %347 to i64
  %414 = getelementptr [32 x i32], ptr %3, i64 0, i64 %413
  %415 = icmp sgt i32 %342, %340
  %416 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 6
  %417 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 7
  %418 = sext i32 %342 to i64
  %419 = add i32 %340, 1
  %420 = add i32 %345, 1
  br label %421

421:                                              ; preds = %448, %412
  %422 = phi i64 [ %413, %412 ], [ %450, %448 ]
  %423 = phi ptr [ %414, %412 ], [ %449, %448 ]
  store i32 0, ptr %423, align 4, !tbaa !5
  br i1 %415, label %448, label %424

424:                                              ; preds = %421
  %425 = load i32, ptr %416, align 8, !tbaa !20
  %426 = sext i32 %425 to i64
  %427 = load i32, ptr %417, align 4, !tbaa !23
  %428 = icmp sgt i32 %425, %427
  br label %429

429:                                              ; preds = %444, %424
  %430 = phi i64 [ %418, %424 ], [ %445, %444 ]
  br i1 %428, label %444, label %431

431:                                              ; preds = %429
  %432 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %430, i64 %422, i64 %426
  %433 = load i32, ptr %423, align 4, !tbaa !5
  br label %434

434:                                              ; preds = %434, %431
  %435 = phi i32 [ %433, %431 ], [ %440, %434 ]
  %436 = phi i32 [ %425, %431 ], [ %441, %434 ]
  %437 = phi ptr [ %432, %431 ], [ %438, %434 ]
  %438 = getelementptr inbounds i32, ptr %437, i64 1
  %439 = load i32, ptr %437, align 4, !tbaa !5
  %440 = add nsw i32 %439, %435
  %441 = add i32 %436, 1
  %442 = icmp eq i32 %436, %427
  br i1 %442, label %443, label %434, !llvm.loop !34

443:                                              ; preds = %434
  store i32 %440, ptr %423, align 4, !tbaa !5
  br label %444

444:                                              ; preds = %443, %429
  %445 = add nsw i64 %430, 1
  %446 = trunc i64 %445 to i32
  %447 = icmp eq i32 %419, %446
  br i1 %447, label %448, label %429, !llvm.loop !35

448:                                              ; preds = %444, %421
  %449 = getelementptr inbounds i32, ptr %423, i64 1
  %450 = add nsw i64 %422, 1
  %451 = trunc i64 %450 to i32
  %452 = icmp eq i32 %420, %451
  br i1 %452, label %496, label %421, !llvm.loop !36

453:                                              ; preds = %365
  %454 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 6
  %455 = load i32, ptr %454, align 8, !tbaa !20
  %456 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 7
  %457 = load i32, ptr %456, align 4, !tbaa !23
  %458 = icmp sgt i32 %455, %457
  br i1 %458, label %496, label %459

459:                                              ; preds = %453
  %460 = sext i32 %455 to i64
  %461 = getelementptr [32 x i32], ptr %3, i64 0, i64 %460
  %462 = icmp sgt i32 %342, %340
  %463 = sext i32 %347 to i64
  %464 = icmp sgt i32 %347, %345
  %465 = sext i32 %342 to i64
  %466 = add i32 %340, 1
  %467 = add i32 %457, 1
  br label %468

468:                                              ; preds = %490, %459
  %469 = phi i64 [ %460, %459 ], [ %492, %490 ]
  %470 = phi ptr [ %461, %459 ], [ %491, %490 ]
  store i32 0, ptr %470, align 4, !tbaa !5
  br i1 %462, label %490, label %471

471:                                              ; preds = %468, %486
  %472 = phi i64 [ %487, %486 ], [ %465, %468 ]
  br i1 %464, label %486, label %473

473:                                              ; preds = %471
  %474 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %472, i64 %463, i64 %469
  %475 = load i32, ptr %470, align 4, !tbaa !5
  br label %476

476:                                              ; preds = %476, %473
  %477 = phi i32 [ %475, %473 ], [ %481, %476 ]
  %478 = phi i32 [ %347, %473 ], [ %483, %476 ]
  %479 = phi ptr [ %474, %473 ], [ %482, %476 ]
  %480 = load i32, ptr %479, align 4, !tbaa !5
  %481 = add nsw i32 %480, %477
  %482 = getelementptr inbounds i32, ptr %479, i64 32
  %483 = add i32 %478, 1
  %484 = icmp eq i32 %478, %345
  br i1 %484, label %485, label %476, !llvm.loop !37

485:                                              ; preds = %476
  store i32 %481, ptr %470, align 4, !tbaa !5
  br label %486

486:                                              ; preds = %485, %471
  %487 = add nsw i64 %472, 1
  %488 = trunc i64 %487 to i32
  %489 = icmp eq i32 %466, %488
  br i1 %489, label %490, label %471, !llvm.loop !38

490:                                              ; preds = %486, %468
  %491 = getelementptr inbounds i32, ptr %470, i64 1
  %492 = add nsw i64 %469, 1
  %493 = trunc i64 %492 to i32
  %494 = icmp eq i32 %467, %493
  br i1 %494, label %496, label %468, !llvm.loop !39

495:                                              ; preds = %555, %365
  unreachable

496:                                              ; preds = %490, %448, %405, %453, %410, %367
  %497 = phi i32 [ %340, %367 ], [ %345, %410 ], [ %457, %453 ], [ %340, %405 ], [ %345, %448 ], [ %457, %490 ]
  %498 = phi ptr [ %341, %367 ], [ %346, %410 ], [ %454, %453 ], [ %341, %405 ], [ %346, %448 ], [ %454, %490 ]
  %499 = load i32, ptr %498, align 8, !tbaa !5
  %500 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 8
  %501 = load i32, ptr %500, align 8, !tbaa !26
  %502 = sdiv i32 %501, 2
  %503 = sext i32 %499 to i64
  %504 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 %503
  %505 = icmp sgt i32 %499, %497
  br i1 %505, label %519, label %506

506:                                              ; preds = %496
  %507 = add i32 %497, 1
  br label %508

508:                                              ; preds = %515, %506
  %509 = phi i32 [ %513, %515 ], [ 0, %506 ]
  %510 = phi i32 [ %517, %515 ], [ %499, %506 ]
  %511 = phi ptr [ %516, %515 ], [ %504, %506 ]
  %512 = load i32, ptr %511, align 4, !tbaa !5
  %513 = add nsw i32 %512, %509
  %514 = icmp slt i32 %513, %502
  br i1 %514, label %515, label %519

515:                                              ; preds = %508
  %516 = getelementptr inbounds i32, ptr %511, i64 1
  %517 = add i32 %510, 1
  %518 = icmp eq i32 %510, %497
  br i1 %518, label %519, label %508, !llvm.loop !40

519:                                              ; preds = %515, %508, %496
  %520 = phi i32 [ %499, %496 ], [ %510, %508 ], [ %507, %515 ]
  %521 = icmp eq i32 %520, %499
  %522 = zext i1 %521 to i32
  %523 = add i32 %520, %522
  %524 = load ptr, ptr %300, align 8, !tbaa !16
  store ptr %524, ptr @freeboxes, align 8, !tbaa !9
  %525 = icmp eq ptr %524, null
  br i1 %525, label %528, label %526

526:                                              ; preds = %519
  %527 = getelementptr inbounds %struct.colorbox, ptr %524, i64 0, i32 1
  store ptr null, ptr %527, align 8, !tbaa !18
  br label %528

528:                                              ; preds = %526, %519
  br i1 %302, label %531, label %529

529:                                              ; preds = %528
  %530 = getelementptr inbounds %struct.colorbox, ptr %301, i64 0, i32 1
  store ptr %300, ptr %530, align 8, !tbaa !18
  br label %531

531:                                              ; preds = %529, %528
  store ptr %301, ptr %300, align 8, !tbaa !16
  store ptr %300, ptr @usedboxes, align 8, !tbaa !9
  %532 = icmp slt i32 %499, %523
  br i1 %532, label %537, label %533

533:                                              ; preds = %537, %531
  %534 = phi ptr [ %504, %531 ], [ %541, %537 ]
  %535 = phi i32 [ 0, %531 ], [ %543, %537 ]
  %536 = icmp sgt i32 %523, %497
  br i1 %536, label %555, label %546

537:                                              ; preds = %531, %537
  %538 = phi i32 [ %543, %537 ], [ 0, %531 ]
  %539 = phi i32 [ %544, %537 ], [ %499, %531 ]
  %540 = phi ptr [ %541, %537 ], [ %504, %531 ]
  %541 = getelementptr inbounds i32, ptr %540, i64 1
  %542 = load i32, ptr %540, align 4, !tbaa !5
  %543 = add nsw i32 %542, %538
  %544 = add nsw i32 %539, 1
  %545 = icmp eq i32 %544, %523
  br i1 %545, label %533, label %537, !llvm.loop !41

546:                                              ; preds = %533, %546
  %547 = phi i32 [ %552, %546 ], [ 0, %533 ]
  %548 = phi i32 [ %553, %546 ], [ %523, %533 ]
  %549 = phi ptr [ %550, %546 ], [ %534, %533 ]
  %550 = getelementptr inbounds i32, ptr %549, i64 1
  %551 = load i32, ptr %549, align 4, !tbaa !5
  %552 = add nsw i32 %551, %547
  %553 = add i32 %548, 1
  %554 = icmp eq i32 %548, %497
  br i1 %554, label %555, label %546, !llvm.loop !42

555:                                              ; preds = %546, %533
  %556 = phi i32 [ 0, %533 ], [ %552, %546 ]
  %557 = getelementptr inbounds %struct.colorbox, ptr %300, i64 0, i32 8
  store i32 %535, ptr %557, align 8, !tbaa !26
  store i32 %556, ptr %500, align 8, !tbaa !26
  %558 = getelementptr inbounds %struct.colorbox, ptr %300, i64 0, i32 2
  store i32 %342, ptr %558, align 8, !tbaa !22
  %559 = getelementptr inbounds %struct.colorbox, ptr %300, i64 0, i32 3
  store i32 %340, ptr %559, align 4, !tbaa !25
  %560 = getelementptr inbounds %struct.colorbox, ptr %300, i64 0, i32 4
  store i32 %347, ptr %560, align 8, !tbaa !21
  %561 = getelementptr inbounds %struct.colorbox, ptr %300, i64 0, i32 5
  store i32 %345, ptr %561, align 4, !tbaa !24
  %562 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 6
  %563 = load i32, ptr %562, align 8, !tbaa !20
  %564 = getelementptr inbounds %struct.colorbox, ptr %300, i64 0, i32 6
  store i32 %563, ptr %564, align 8, !tbaa !20
  %565 = getelementptr inbounds %struct.colorbox, ptr %336, i64 0, i32 7
  %566 = load i32, ptr %565, align 4, !tbaa !23
  %567 = getelementptr inbounds %struct.colorbox, ptr %300, i64 0, i32 7
  store i32 %566, ptr %567, align 4, !tbaa !23
  switch i32 %366, label %495 [
    i32 0, label %570
    i32 1, label %568
    i32 2, label %569
  ]

568:                                              ; preds = %555
  br label %570

569:                                              ; preds = %555
  br label %570

570:                                              ; preds = %555, %568, %569
  %571 = phi ptr [ %561, %568 ], [ %567, %569 ], [ %559, %555 ]
  %572 = phi ptr [ %346, %568 ], [ %562, %569 ], [ %341, %555 ]
  %573 = add nsw i32 %523, -1
  store i32 %573, ptr %571, align 4, !tbaa !5
  store i32 %523, ptr %572, align 8, !tbaa !5
  call fastcc void @shrinkbox(ptr noundef nonnull %300)
  call fastcc void @shrinkbox(ptr noundef nonnull %336)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  br label %575

574:                                              ; preds = %335
  store ptr null, ptr @freeboxes, align 8, !tbaa !9
  br label %575

575:                                              ; preds = %574, %570
  %576 = load ptr, ptr @freeboxes, align 8, !tbaa !9
  %577 = icmp eq ptr %576, null
  br i1 %577, label %296, label %299, !llvm.loop !43

578:                                              ; preds = %296, %578
  %579 = phi i64 [ %605, %578 ], [ 0, %296 ]
  %580 = phi ptr [ %606, %578 ], [ %297, %296 ]
  %581 = getelementptr inbounds %struct.colorbox, ptr %580, i64 0, i32 2
  %582 = load i32, ptr %581, align 8, !tbaa !22
  %583 = getelementptr inbounds %struct.colorbox, ptr %580, i64 0, i32 3
  %584 = load i32, ptr %583, align 4, !tbaa !25
  %585 = add nsw i32 %584, %582
  %586 = trunc i32 %585 to i16
  %587 = shl i16 %586, 2
  %588 = getelementptr inbounds [256 x i16], ptr @rm, i64 0, i64 %579
  store i16 %587, ptr %588, align 2, !tbaa !11
  %589 = getelementptr inbounds %struct.colorbox, ptr %580, i64 0, i32 4
  %590 = load i32, ptr %589, align 8, !tbaa !21
  %591 = getelementptr inbounds %struct.colorbox, ptr %580, i64 0, i32 5
  %592 = load i32, ptr %591, align 4, !tbaa !24
  %593 = add nsw i32 %592, %590
  %594 = trunc i32 %593 to i16
  %595 = shl i16 %594, 2
  %596 = getelementptr inbounds [256 x i16], ptr @gm, i64 0, i64 %579
  store i16 %595, ptr %596, align 2, !tbaa !11
  %597 = getelementptr inbounds %struct.colorbox, ptr %580, i64 0, i32 6
  %598 = load i32, ptr %597, align 8, !tbaa !20
  %599 = getelementptr inbounds %struct.colorbox, ptr %580, i64 0, i32 7
  %600 = load i32, ptr %599, align 4, !tbaa !23
  %601 = add nsw i32 %600, %598
  %602 = trunc i32 %601 to i16
  %603 = shl i16 %602, 2
  %604 = getelementptr inbounds [256 x i16], ptr @bm, i64 0, i64 %579
  store i16 %603, ptr %604, align 2, !tbaa !11
  %605 = add nuw i64 %579, 1
  %606 = load ptr, ptr %580, align 8, !tbaa !9
  %607 = icmp eq ptr %606, null
  br i1 %607, label %608, label %578, !llvm.loop !44

608:                                              ; preds = %578, %296
  call void @_TIFFfree(ptr noundef nonnull %175) #12
  store ptr null, ptr @usedboxes, align 8, !tbaa !9
  store ptr null, ptr @freeboxes, align 8, !tbaa !9
  %609 = call ptr @_TIFFmalloc(i32 noundef 512) #12
  store ptr %609, ptr @ColorCells, align 8, !tbaa !9
  call void @_TIFFmemset(ptr noundef %609, i32 noundef 0, i32 noundef 512) #12
  br label %610

610:                                              ; preds = %688, %608
  %611 = phi i32 [ 0, %608 ], [ %689, %688 ]
  %612 = phi ptr [ @histogram, %608 ], [ %683, %688 ]
  %613 = shl nuw nsw i32 %611, 1
  %614 = and i32 %613, 48
  %615 = shl nuw nsw i32 %611, 3
  br label %616

616:                                              ; preds = %685, %610
  %617 = phi i32 [ 0, %610 ], [ %686, %685 ]
  %618 = phi ptr [ %612, %610 ], [ %683, %685 ]
  %619 = lshr i32 %617, 1
  %620 = and i32 %619, 12
  %621 = or disjoint i32 %620, %614
  %622 = shl nuw nsw i32 %617, 3
  br label %623

623:                                              ; preds = %681, %616
  %624 = phi i32 [ 0, %616 ], [ %682, %681 ]
  %625 = phi ptr [ %618, %616 ], [ %683, %681 ]
  %626 = load i32, ptr %625, align 4, !tbaa !5
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %623
  store i32 -1, ptr %625, align 4, !tbaa !5
  br label %681

629:                                              ; preds = %623
  %630 = load ptr, ptr @ColorCells, align 8, !tbaa !9
  %631 = lshr i32 %624, 3
  %632 = or disjoint i32 %621, %631
  %633 = zext nneg i32 %632 to i64
  %634 = getelementptr inbounds ptr, ptr %630, i64 %633
  %635 = load ptr, ptr %634, align 8, !tbaa !9
  %636 = icmp eq ptr %635, null
  br i1 %636, label %637, label %640

637:                                              ; preds = %629
  %638 = shl nuw nsw i32 %624, 3
  %639 = call fastcc ptr @create_colorcell(i32 noundef %615, i32 noundef %622, i32 noundef %638)
  br label %640

640:                                              ; preds = %637, %629
  %641 = phi ptr [ %639, %637 ], [ %635, %629 ]
  %642 = load i32, ptr %641, align 4, !tbaa !45
  %643 = icmp sgt i32 %642, 0
  br i1 %643, label %644, label %681

644:                                              ; preds = %640
  %645 = shl nuw nsw i32 %624, 3
  br label %646

646:                                              ; preds = %675, %644
  %647 = phi i64 [ 0, %644 ], [ %677, %675 ]
  %648 = phi i32 [ 9999999, %644 ], [ %676, %675 ]
  %649 = getelementptr inbounds %struct.C_cell, ptr %641, i64 0, i32 1, i64 %647, i64 1
  %650 = load i32, ptr %649, align 4, !tbaa !5
  %651 = icmp sgt i32 %648, %650
  br i1 %651, label %652, label %681

652:                                              ; preds = %646
  %653 = getelementptr inbounds %struct.C_cell, ptr %641, i64 0, i32 1, i64 %647
  %654 = load i32, ptr %653, align 4, !tbaa !5
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [256 x i16], ptr @rm, i64 0, i64 %655
  %657 = load i16, ptr %656, align 2, !tbaa !11
  %658 = zext i16 %657 to i32
  %659 = sub nsw i32 %658, %615
  %660 = mul nsw i32 %659, %659
  %661 = getelementptr inbounds [256 x i16], ptr @gm, i64 0, i64 %655
  %662 = load i16, ptr %661, align 2, !tbaa !11
  %663 = zext i16 %662 to i32
  %664 = sub nsw i32 %663, %622
  %665 = mul nsw i32 %664, %664
  %666 = add nuw nsw i32 %665, %660
  %667 = getelementptr inbounds [256 x i16], ptr @bm, i64 0, i64 %655
  %668 = load i16, ptr %667, align 2, !tbaa !11
  %669 = zext i16 %668 to i32
  %670 = sub nsw i32 %669, %645
  %671 = mul nsw i32 %670, %670
  %672 = add nuw nsw i32 %666, %671
  %673 = icmp slt i32 %672, %648
  br i1 %673, label %674, label %675

674:                                              ; preds = %652
  store i32 %654, ptr %625, align 4, !tbaa !5
  br label %675

675:                                              ; preds = %674, %652
  %676 = phi i32 [ %672, %674 ], [ %648, %652 ]
  %677 = add nuw nsw i64 %647, 1
  %678 = load i32, ptr %641, align 4, !tbaa !45
  %679 = sext i32 %678 to i64
  %680 = icmp slt i64 %677, %679
  br i1 %680, label %646, label %681, !llvm.loop !47

681:                                              ; preds = %675, %646, %640, %628
  %682 = add nuw nsw i32 %624, 1
  %683 = getelementptr inbounds i32, ptr %625, i64 1
  %684 = icmp eq i32 %682, 32
  br i1 %684, label %685, label %623, !llvm.loop !48

685:                                              ; preds = %681
  %686 = add nuw nsw i32 %617, 1
  %687 = icmp eq i32 %686, 32
  br i1 %687, label %688, label %616, !llvm.loop !49

688:                                              ; preds = %685
  %689 = add nuw nsw i32 %611, 1
  %690 = icmp eq i32 %689, 32
  br i1 %690, label %691, label %610, !llvm.loop !50

691:                                              ; preds = %688
  %692 = load i32, ptr @optind, align 4, !tbaa !5
  %693 = sext i32 %692 to i64
  %694 = getelementptr ptr, ptr %1, i64 %693
  %695 = getelementptr ptr, ptr %694, i64 1
  %696 = load ptr, ptr %695, align 8, !tbaa !9
  %697 = call ptr @TIFFOpen(ptr noundef %696, ptr noundef nonnull @.str.6) #12
  store ptr %697, ptr @out, align 8, !tbaa !9
  %698 = icmp eq ptr %697, null
  br i1 %698, label %1178, label %699

699:                                              ; preds = %691
  %700 = load ptr, ptr @in, align 8, !tbaa !9
  %701 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %700, i32 noundef 254, ptr noundef nonnull %12) #12
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %707, label %703

703:                                              ; preds = %699
  %704 = load ptr, ptr @out, align 8, !tbaa !9
  %705 = load i32, ptr %12, align 4, !tbaa !5
  %706 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %704, i32 noundef 254, i32 noundef %705) #12
  br label %707

707:                                              ; preds = %703, %699
  %708 = load ptr, ptr @in, align 8, !tbaa !9
  %709 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %708, i32 noundef 256, ptr noundef nonnull %12) #12
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %715, label %711

711:                                              ; preds = %707
  %712 = load ptr, ptr @out, align 8, !tbaa !9
  %713 = load i32, ptr %12, align 4, !tbaa !5
  %714 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %712, i32 noundef 256, i32 noundef %713) #12
  br label %715

715:                                              ; preds = %711, %707
  %716 = load ptr, ptr @out, align 8, !tbaa !9
  %717 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %716, i32 noundef 258, i32 noundef 8) #12
  %718 = load i16, ptr @compression, align 2, !tbaa !11
  %719 = icmp eq i16 %718, -1
  br i1 %719, label %732, label %720

720:                                              ; preds = %715
  %721 = zext i16 %718 to i32
  %722 = load ptr, ptr @out, align 8, !tbaa !9
  %723 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %722, i32 noundef 259, i32 noundef %721) #12
  %724 = load i16, ptr @compression, align 2, !tbaa !11
  switch i16 %724, label %741 [
    i16 5, label %725
    i16 -32590, label %725
  ]

725:                                              ; preds = %720, %720
  %726 = load i16, ptr @predictor, align 2, !tbaa !11
  %727 = icmp eq i16 %726, 0
  br i1 %727, label %741, label %728

728:                                              ; preds = %725
  %729 = zext i16 %726 to i32
  %730 = load ptr, ptr @out, align 8, !tbaa !9
  %731 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %730, i32 noundef 317, i32 noundef %729) #12
  br label %741

732:                                              ; preds = %715
  %733 = load ptr, ptr @in, align 8, !tbaa !9
  %734 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %733, i32 noundef 259, ptr noundef nonnull @compression) #12
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %741, label %736

736:                                              ; preds = %732
  %737 = load ptr, ptr @out, align 8, !tbaa !9
  %738 = load i16, ptr @compression, align 2, !tbaa !11
  %739 = zext i16 %738 to i32
  %740 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %737, i32 noundef 259, i32 noundef %739) #12
  br label %741

741:                                              ; preds = %732, %736, %720, %728, %725
  %742 = load ptr, ptr @out, align 8, !tbaa !9
  %743 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %742, i32 noundef 262, i32 noundef 3) #12
  %744 = load ptr, ptr @in, align 8, !tbaa !9
  %745 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %744, i32 noundef 274, ptr noundef nonnull %8) #12
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %752, label %747

747:                                              ; preds = %741
  %748 = load ptr, ptr @out, align 8, !tbaa !9
  %749 = load i16, ptr %8, align 2, !tbaa !11
  %750 = zext i16 %749 to i32
  %751 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %748, i32 noundef 274, i32 noundef %750) #12
  br label %752

752:                                              ; preds = %747, %741
  %753 = load ptr, ptr @out, align 8, !tbaa !9
  %754 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %753, i32 noundef 277, i32 noundef 1) #12
  %755 = load ptr, ptr @in, align 8, !tbaa !9
  %756 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %755, i32 noundef 284, ptr noundef nonnull %8) #12
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %763, label %758

758:                                              ; preds = %752
  %759 = load ptr, ptr @out, align 8, !tbaa !9
  %760 = load i16, ptr %8, align 2, !tbaa !11
  %761 = zext i16 %760 to i32
  %762 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %759, i32 noundef 284, i32 noundef %761) #12
  br label %763

763:                                              ; preds = %758, %752
  %764 = load ptr, ptr @out, align 8, !tbaa !9
  %765 = load i32, ptr @rowsperstrip, align 4, !tbaa !5
  %766 = call i32 @TIFFDefaultStripSize(ptr noundef %764, i32 noundef %765) #12
  %767 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %764, i32 noundef 278, i32 noundef %766) #12
  %768 = load ptr, ptr @in, align 8, !tbaa !9
  %769 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %768, i32 noundef 280, ptr noundef nonnull %8) #12
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %776, label %771

771:                                              ; preds = %763
  %772 = load ptr, ptr @out, align 8, !tbaa !9
  %773 = load i16, ptr %8, align 2, !tbaa !11
  %774 = zext i16 %773 to i32
  %775 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %772, i32 noundef 280, i32 noundef %774) #12
  br label %776

776:                                              ; preds = %771, %763
  %777 = load ptr, ptr @in, align 8, !tbaa !9
  %778 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %777, i32 noundef 281, ptr noundef nonnull %8) #12
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %785, label %780

780:                                              ; preds = %776
  %781 = load ptr, ptr @out, align 8, !tbaa !9
  %782 = load i16, ptr %8, align 2, !tbaa !11
  %783 = zext i16 %782 to i32
  %784 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %781, i32 noundef 281, i32 noundef %783) #12
  br label %785

785:                                              ; preds = %780, %776
  %786 = load ptr, ptr @in, align 8, !tbaa !9
  %787 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %786, i32 noundef 296, ptr noundef nonnull %8) #12
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %794, label %789

789:                                              ; preds = %785
  %790 = load ptr, ptr @out, align 8, !tbaa !9
  %791 = load i16, ptr %8, align 2, !tbaa !11
  %792 = zext i16 %791 to i32
  %793 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %790, i32 noundef 296, i32 noundef %792) #12
  br label %794

794:                                              ; preds = %789, %785
  %795 = load ptr, ptr @in, align 8, !tbaa !9
  %796 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %795, i32 noundef 282, ptr noundef nonnull %11) #12
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %803, label %798

798:                                              ; preds = %794
  %799 = load ptr, ptr @out, align 8, !tbaa !9
  %800 = load float, ptr %11, align 4, !tbaa !51
  %801 = fpext float %800 to double
  %802 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %799, i32 noundef 282, double noundef %801) #12
  br label %803

803:                                              ; preds = %798, %794
  %804 = load ptr, ptr @in, align 8, !tbaa !9
  %805 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %804, i32 noundef 283, ptr noundef nonnull %11) #12
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %812, label %807

807:                                              ; preds = %803
  %808 = load ptr, ptr @out, align 8, !tbaa !9
  %809 = load float, ptr %11, align 4, !tbaa !51
  %810 = fpext float %809 to double
  %811 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %808, i32 noundef 283, double noundef %810) #12
  br label %812

812:                                              ; preds = %807, %803
  %813 = load ptr, ptr @in, align 8, !tbaa !9
  %814 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %813, i32 noundef 286, ptr noundef nonnull %11) #12
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %821, label %816

816:                                              ; preds = %812
  %817 = load ptr, ptr @out, align 8, !tbaa !9
  %818 = load float, ptr %11, align 4, !tbaa !51
  %819 = fpext float %818 to double
  %820 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %817, i32 noundef 286, double noundef %819) #12
  br label %821

821:                                              ; preds = %816, %812
  %822 = load ptr, ptr @in, align 8, !tbaa !9
  %823 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %822, i32 noundef 287, ptr noundef nonnull %11) #12
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %830, label %825

825:                                              ; preds = %821
  %826 = load ptr, ptr @out, align 8, !tbaa !9
  %827 = load float, ptr %11, align 4, !tbaa !51
  %828 = fpext float %827 to double
  %829 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %826, i32 noundef 287, double noundef %828) #12
  br label %830

830:                                              ; preds = %825, %821
  %831 = icmp eq i32 %14, 0
  %832 = load ptr, ptr @in, align 8, !tbaa !9
  %833 = load ptr, ptr @out, align 8, !tbaa !9
  br i1 %831, label %1113, label %834

834:                                              ; preds = %830
  %835 = load i32, ptr @imagelength, align 4, !tbaa !5
  %836 = add i32 %835, -1
  %837 = load i32, ptr @imagewidth, align 4, !tbaa !5
  %838 = add i32 %837, -1
  %839 = call i32 @TIFFScanlineSize(ptr noundef %832) #12
  %840 = call ptr @_TIFFmalloc(i32 noundef %839) #12
  %841 = load i32, ptr @imagewidth, align 4, !tbaa !5
  %842 = mul i32 %841, 6
  %843 = call ptr @_TIFFmalloc(i32 noundef %842) #12
  %844 = load i32, ptr @imagewidth, align 4, !tbaa !5
  %845 = mul i32 %844, 6
  %846 = call ptr @_TIFFmalloc(i32 noundef %845) #12
  %847 = call i32 @TIFFScanlineSize(ptr noundef %833) #12
  %848 = call ptr @_TIFFmalloc(i32 noundef %847) #12
  %849 = call i32 @TIFFReadScanline(ptr noundef %832, ptr noundef %840, i32 noundef 0, i16 noundef zeroext 0) #12
  %850 = icmp slt i32 %849, 1
  br i1 %850, label %1110, label %851

851:                                              ; preds = %834
  %852 = load i32, ptr @imagewidth, align 4, !tbaa !5
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %854, label %857

854:                                              ; preds = %857, %851
  %855 = load i32, ptr @imagelength, align 4, !tbaa !5
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %1110, label %879

857:                                              ; preds = %851, %857
  %858 = phi ptr [ %869, %857 ], [ %840, %851 ]
  %859 = phi ptr [ %872, %857 ], [ %846, %851 ]
  %860 = phi i32 [ %873, %857 ], [ 0, %851 ]
  %861 = getelementptr inbounds i8, ptr %858, i64 1
  %862 = load i8, ptr %858, align 1, !tbaa !27
  %863 = zext i8 %862 to i16
  %864 = getelementptr inbounds i16, ptr %859, i64 1
  store i16 %863, ptr %859, align 2, !tbaa !11
  %865 = getelementptr inbounds i8, ptr %858, i64 2
  %866 = load i8, ptr %861, align 1, !tbaa !27
  %867 = zext i8 %866 to i16
  %868 = getelementptr inbounds i16, ptr %859, i64 2
  store i16 %867, ptr %864, align 2, !tbaa !11
  %869 = getelementptr inbounds i8, ptr %858, i64 3
  %870 = load i8, ptr %865, align 1, !tbaa !27
  %871 = zext i8 %870 to i16
  %872 = getelementptr inbounds i16, ptr %859, i64 3
  store i16 %871, ptr %868, align 2, !tbaa !11
  %873 = add nuw i32 %860, 1
  %874 = icmp eq i32 %873, %852
  br i1 %874, label %854, label %857, !llvm.loop !53

875:                                              ; preds = %1106
  %876 = add i32 %882, 1
  %877 = load i32, ptr @imagelength, align 4, !tbaa !5
  %878 = icmp ugt i32 %876, %877
  br i1 %878, label %1110, label %879, !llvm.loop !54

879:                                              ; preds = %854, %875
  %880 = phi ptr [ %881, %875 ], [ %843, %854 ]
  %881 = phi ptr [ %880, %875 ], [ %846, %854 ]
  %882 = phi i32 [ %876, %875 ], [ 1, %854 ]
  %883 = icmp ult i32 %882, %836
  %884 = icmp ugt i32 %882, %836
  br i1 %884, label %888, label %885

885:                                              ; preds = %879
  %886 = call i32 @TIFFReadScanline(ptr noundef %832, ptr noundef %840, i32 noundef %882, i16 noundef zeroext 0) #12
  %887 = icmp slt i32 %886, 1
  br i1 %887, label %1110, label %888

888:                                              ; preds = %885, %879
  %889 = load i32, ptr @imagewidth, align 4, !tbaa !5
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %1106, label %892

891:                                              ; preds = %892
  br i1 %890, label %1106, label %910

892:                                              ; preds = %888, %892
  %893 = phi ptr [ %904, %892 ], [ %840, %888 ]
  %894 = phi ptr [ %907, %892 ], [ %880, %888 ]
  %895 = phi i32 [ %908, %892 ], [ 0, %888 ]
  %896 = getelementptr inbounds i8, ptr %893, i64 1
  %897 = load i8, ptr %893, align 1, !tbaa !27
  %898 = zext i8 %897 to i16
  %899 = getelementptr inbounds i16, ptr %894, i64 1
  store i16 %898, ptr %894, align 2, !tbaa !11
  %900 = getelementptr inbounds i8, ptr %893, i64 2
  %901 = load i8, ptr %896, align 1, !tbaa !27
  %902 = zext i8 %901 to i16
  %903 = getelementptr inbounds i16, ptr %894, i64 2
  store i16 %902, ptr %899, align 2, !tbaa !11
  %904 = getelementptr inbounds i8, ptr %893, i64 3
  %905 = load i8, ptr %900, align 1, !tbaa !27
  %906 = zext i8 %905 to i16
  %907 = getelementptr inbounds i16, ptr %894, i64 3
  store i16 %906, ptr %903, align 2, !tbaa !11
  %908 = add nuw i32 %895, 1
  %909 = icmp eq i32 %908, %889
  br i1 %909, label %891, label %892, !llvm.loop !55

910:                                              ; preds = %891, %1101
  %911 = phi ptr [ %1011, %1101 ], [ %848, %891 ]
  %912 = phi ptr [ %934, %1101 ], [ %881, %891 ]
  %913 = phi ptr [ %1102, %1101 ], [ %880, %891 ]
  %914 = phi i32 [ %1103, %1101 ], [ 0, %891 ]
  %915 = icmp eq i32 %914, %838
  %916 = getelementptr inbounds i16, ptr %912, i64 1
  %917 = load i16, ptr %912, align 2, !tbaa !11
  %918 = icmp slt i16 %917, 0
  br i1 %918, label %922, label %919

919:                                              ; preds = %910
  %920 = call i16 @llvm.umin.i16(i16 %917, i16 255)
  %921 = zext nneg i16 %920 to i32
  br label %922

922:                                              ; preds = %919, %910
  %923 = phi i32 [ %921, %919 ], [ 0, %910 ]
  %924 = lshr i32 %923, 3
  %925 = getelementptr inbounds i16, ptr %912, i64 2
  %926 = load i16, ptr %916, align 2, !tbaa !11
  %927 = icmp slt i16 %926, 0
  br i1 %927, label %931, label %928

928:                                              ; preds = %922
  %929 = call i16 @llvm.umin.i16(i16 %926, i16 255)
  %930 = zext nneg i16 %929 to i32
  br label %931

931:                                              ; preds = %928, %922
  %932 = phi i32 [ %930, %928 ], [ 0, %922 ]
  %933 = lshr i32 %932, 3
  %934 = getelementptr inbounds i16, ptr %912, i64 3
  %935 = load i16, ptr %925, align 2, !tbaa !11
  %936 = icmp slt i16 %935, 0
  br i1 %936, label %940, label %937

937:                                              ; preds = %931
  %938 = call i16 @llvm.umin.i16(i16 %935, i16 255)
  %939 = zext nneg i16 %938 to i32
  br label %940

940:                                              ; preds = %937, %931
  %941 = phi i32 [ %939, %937 ], [ 0, %931 ]
  %942 = lshr i32 %941, 3
  %943 = zext nneg i32 %924 to i64
  %944 = zext nneg i32 %933 to i64
  %945 = zext nneg i32 %942 to i64
  %946 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %943, i64 %944, i64 %945
  %947 = load i32, ptr %946, align 4, !tbaa !5
  %948 = icmp eq i32 %947, -1
  br i1 %948, label %949, label %1008

949:                                              ; preds = %940
  %950 = load ptr, ptr @ColorCells, align 8, !tbaa !9
  %951 = lshr i32 %923, 2
  %952 = and i32 %951, 8176
  %953 = lshr i32 %932, 4
  %954 = and i32 %953, 2044
  %955 = add nuw nsw i32 %954, %952
  %956 = lshr i32 %941, 6
  %957 = add nuw nsw i32 %955, %956
  %958 = zext nneg i32 %957 to i64
  %959 = getelementptr inbounds ptr, ptr %950, i64 %958
  %960 = load ptr, ptr %959, align 8, !tbaa !9
  %961 = icmp eq ptr %960, null
  br i1 %961, label %962, label %964

962:                                              ; preds = %949
  %963 = call fastcc ptr @create_colorcell(i32 noundef %923, i32 noundef %932, i32 noundef %941)
  br label %964

964:                                              ; preds = %962, %949
  %965 = phi ptr [ %963, %962 ], [ %960, %949 ]
  %966 = load i32, ptr %965, align 4, !tbaa !45
  %967 = icmp sgt i32 %966, 0
  br i1 %967, label %968, label %1006

968:                                              ; preds = %964
  %969 = zext nneg i32 %966 to i64
  br label %970

970:                                              ; preds = %977, %968
  %971 = phi i64 [ 0, %968 ], [ %1004, %977 ]
  %972 = phi i32 [ 9999999, %968 ], [ %1003, %977 ]
  %973 = phi i32 [ -1, %968 ], [ %1002, %977 ]
  %974 = getelementptr inbounds %struct.C_cell, ptr %965, i64 0, i32 1, i64 %971, i64 1
  %975 = load i32, ptr %974, align 4, !tbaa !5
  %976 = icmp sgt i32 %972, %975
  br i1 %976, label %977, label %1006

977:                                              ; preds = %970
  %978 = getelementptr inbounds %struct.C_cell, ptr %965, i64 0, i32 1, i64 %971
  %979 = load i32, ptr %978, align 4, !tbaa !5
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds [256 x i16], ptr @rm, i64 0, i64 %980
  %982 = load i16, ptr %981, align 2, !tbaa !11
  %983 = lshr i16 %982, 3
  %984 = zext nneg i16 %983 to i32
  %985 = sub nsw i32 %984, %924
  %986 = mul nsw i32 %985, %985
  %987 = getelementptr inbounds [256 x i16], ptr @gm, i64 0, i64 %980
  %988 = load i16, ptr %987, align 2, !tbaa !11
  %989 = lshr i16 %988, 3
  %990 = zext nneg i16 %989 to i32
  %991 = sub nsw i32 %990, %933
  %992 = mul nsw i32 %991, %991
  %993 = add nuw nsw i32 %992, %986
  %994 = getelementptr inbounds [256 x i16], ptr @bm, i64 0, i64 %980
  %995 = load i16, ptr %994, align 2, !tbaa !11
  %996 = lshr i16 %995, 3
  %997 = zext nneg i16 %996 to i32
  %998 = sub nsw i32 %997, %942
  %999 = mul nsw i32 %998, %998
  %1000 = add nuw nsw i32 %993, %999
  %1001 = icmp slt i32 %1000, %972
  %1002 = select i1 %1001, i32 %979, i32 %973
  %1003 = call i32 @llvm.smin.i32(i32 %1000, i32 %972)
  %1004 = add nuw nsw i64 %971, 1
  %1005 = icmp eq i64 %1004, %969
  br i1 %1005, label %1006, label %970, !llvm.loop !56

1006:                                             ; preds = %977, %970, %964
  %1007 = phi i32 [ -1, %964 ], [ %973, %970 ], [ %1002, %977 ]
  store i32 %1007, ptr %946, align 4, !tbaa !5
  br label %1008

1008:                                             ; preds = %1006, %940
  %1009 = phi i32 [ %1007, %1006 ], [ %947, %940 ]
  %1010 = trunc i32 %1009 to i8
  %1011 = getelementptr inbounds i8, ptr %911, i64 1
  store i8 %1010, ptr %911, align 1, !tbaa !27
  %1012 = sext i32 %1009 to i64
  %1013 = getelementptr inbounds [256 x i16], ptr @rm, i64 0, i64 %1012
  %1014 = load i16, ptr %1013, align 2, !tbaa !11
  %1015 = zext i16 %1014 to i32
  %1016 = sub nsw i32 %923, %1015
  %1017 = getelementptr inbounds [256 x i16], ptr @gm, i64 0, i64 %1012
  %1018 = load i16, ptr %1017, align 2, !tbaa !11
  %1019 = zext i16 %1018 to i32
  %1020 = sub nsw i32 %932, %1019
  %1021 = getelementptr inbounds [256 x i16], ptr @bm, i64 0, i64 %1012
  %1022 = load i16, ptr %1021, align 2, !tbaa !11
  %1023 = zext i16 %1022 to i32
  %1024 = sub nsw i32 %941, %1023
  br i1 %915, label %1043, label %1025

1025:                                             ; preds = %1008
  %1026 = mul nsw i32 %1024, 7
  %1027 = sdiv i32 %1026, 16
  %1028 = load i16, ptr %934, align 2, !tbaa !11
  %1029 = trunc i32 %1027 to i16
  %1030 = add i16 %1028, %1029
  store i16 %1030, ptr %934, align 2, !tbaa !11
  %1031 = mul nsw i32 %1020, 7
  %1032 = sdiv i32 %1031, 16
  %1033 = getelementptr inbounds i16, ptr %912, i64 4
  %1034 = load i16, ptr %1033, align 2, !tbaa !11
  %1035 = trunc i32 %1032 to i16
  %1036 = add i16 %1034, %1035
  store i16 %1036, ptr %1033, align 2, !tbaa !11
  %1037 = mul nsw i32 %1016, 7
  %1038 = sdiv i32 %1037, 16
  %1039 = getelementptr inbounds i16, ptr %912, i64 5
  %1040 = load i16, ptr %1039, align 2, !tbaa !11
  %1041 = trunc i32 %1038 to i16
  %1042 = add i16 %1040, %1041
  store i16 %1042, ptr %1039, align 2, !tbaa !11
  br label %1043

1043:                                             ; preds = %1025, %1008
  br i1 %883, label %1044, label %1101

1044:                                             ; preds = %1043
  %1045 = icmp eq i32 %914, 0
  br i1 %1045, label %1065, label %1046

1046:                                             ; preds = %1044
  %1047 = mul nsw i32 %1024, 3
  %1048 = sdiv i32 %1047, 16
  %1049 = getelementptr inbounds i16, ptr %913, i64 -3
  %1050 = load i16, ptr %1049, align 2, !tbaa !11
  %1051 = trunc i32 %1048 to i16
  %1052 = add i16 %1050, %1051
  store i16 %1052, ptr %1049, align 2, !tbaa !11
  %1053 = mul nsw i32 %1020, 3
  %1054 = sdiv i32 %1053, 16
  %1055 = getelementptr inbounds i16, ptr %913, i64 -2
  %1056 = load i16, ptr %1055, align 2, !tbaa !11
  %1057 = trunc i32 %1054 to i16
  %1058 = add i16 %1056, %1057
  store i16 %1058, ptr %1055, align 2, !tbaa !11
  %1059 = mul nsw i32 %1016, 3
  %1060 = sdiv i32 %1059, 16
  %1061 = getelementptr inbounds i16, ptr %913, i64 -1
  %1062 = load i16, ptr %1061, align 2, !tbaa !11
  %1063 = trunc i32 %1060 to i16
  %1064 = add i16 %1062, %1063
  store i16 %1064, ptr %1061, align 2, !tbaa !11
  br label %1065

1065:                                             ; preds = %1046, %1044
  %1066 = mul nsw i32 %1024, 5
  %1067 = sdiv i32 %1066, 16
  %1068 = load i16, ptr %913, align 2, !tbaa !11
  %1069 = trunc i32 %1067 to i16
  %1070 = add i16 %1068, %1069
  store i16 %1070, ptr %913, align 2, !tbaa !11
  %1071 = mul nsw i32 %1020, 5
  %1072 = sdiv i32 %1071, 16
  %1073 = getelementptr inbounds i16, ptr %913, i64 1
  %1074 = load i16, ptr %1073, align 2, !tbaa !11
  %1075 = trunc i32 %1072 to i16
  %1076 = add i16 %1074, %1075
  store i16 %1076, ptr %1073, align 2, !tbaa !11
  %1077 = mul nsw i32 %1016, 5
  %1078 = sdiv i32 %1077, 16
  %1079 = getelementptr inbounds i16, ptr %913, i64 2
  %1080 = load i16, ptr %1079, align 2, !tbaa !11
  %1081 = trunc i32 %1078 to i16
  %1082 = add i16 %1080, %1081
  store i16 %1082, ptr %1079, align 2, !tbaa !11
  br i1 %915, label %1099, label %1083

1083:                                             ; preds = %1065
  %1084 = sdiv i32 %1024, 16
  %1085 = getelementptr inbounds i16, ptr %913, i64 3
  %1086 = load i16, ptr %1085, align 2, !tbaa !11
  %1087 = trunc i32 %1084 to i16
  %1088 = add i16 %1086, %1087
  store i16 %1088, ptr %1085, align 2, !tbaa !11
  %1089 = sdiv i32 %1020, 16
  %1090 = getelementptr inbounds i16, ptr %913, i64 4
  %1091 = load i16, ptr %1090, align 2, !tbaa !11
  %1092 = trunc i32 %1089 to i16
  %1093 = add i16 %1091, %1092
  store i16 %1093, ptr %1090, align 2, !tbaa !11
  %1094 = sdiv i32 %1016, 16
  %1095 = getelementptr inbounds i16, ptr %913, i64 5
  %1096 = load i16, ptr %1095, align 2, !tbaa !11
  %1097 = trunc i32 %1094 to i16
  %1098 = add i16 %1096, %1097
  store i16 %1098, ptr %1095, align 2, !tbaa !11
  br label %1099

1099:                                             ; preds = %1083, %1065
  %1100 = getelementptr inbounds i16, ptr %913, i64 3
  br label %1101

1101:                                             ; preds = %1099, %1043
  %1102 = phi ptr [ %913, %1043 ], [ %1100, %1099 ]
  %1103 = add nuw i32 %914, 1
  %1104 = load i32, ptr @imagewidth, align 4, !tbaa !5
  %1105 = icmp ult i32 %1103, %1104
  br i1 %1105, label %910, label %1106, !llvm.loop !57

1106:                                             ; preds = %1101, %888, %891
  %1107 = add i32 %882, -1
  %1108 = call i32 @TIFFWriteScanline(ptr noundef %833, ptr noundef %848, i32 noundef %1107, i16 noundef zeroext 0) #12
  %1109 = icmp slt i32 %1108, 0
  br i1 %1109, label %1110, label %875

1110:                                             ; preds = %875, %885, %1106, %834, %854
  %1111 = phi ptr [ %846, %834 ], [ %846, %854 ], [ %880, %1106 ], [ %880, %885 ], [ %880, %875 ]
  %1112 = phi ptr [ %843, %834 ], [ %843, %854 ], [ %881, %1106 ], [ %881, %885 ], [ %881, %875 ]
  call void @_TIFFfree(ptr noundef %840) #12
  call void @_TIFFfree(ptr noundef %1112) #12
  br label %1157

1113:                                             ; preds = %830
  %1114 = call i32 @TIFFScanlineSize(ptr noundef %832) #12
  %1115 = call ptr @_TIFFmalloc(i32 noundef %1114) #12
  %1116 = load i32, ptr @imagewidth, align 4, !tbaa !5
  %1117 = call ptr @_TIFFmalloc(i32 noundef %1116) #12
  %1118 = load i32, ptr @imagelength, align 4, !tbaa !5
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1157, label %1124

1120:                                             ; preds = %1154
  %1121 = add nuw i32 %1125, 1
  %1122 = load i32, ptr @imagelength, align 4, !tbaa !5
  %1123 = icmp ult i32 %1121, %1122
  br i1 %1123, label %1124, label %1157, !llvm.loop !58

1124:                                             ; preds = %1113, %1120
  %1125 = phi i32 [ %1121, %1120 ], [ 0, %1113 ]
  %1126 = call i32 @TIFFReadScanline(ptr noundef %832, ptr noundef %1115, i32 noundef %1125, i16 noundef zeroext 0) #12
  %1127 = icmp slt i32 %1126, 1
  br i1 %1127, label %1157, label %1128

1128:                                             ; preds = %1124
  %1129 = load i32, ptr @imagewidth, align 4, !tbaa !5
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1154, label %1131

1131:                                             ; preds = %1128, %1131
  %1132 = phi ptr [ %1150, %1131 ], [ %1117, %1128 ]
  %1133 = phi ptr [ %1141, %1131 ], [ %1115, %1128 ]
  %1134 = phi i32 [ %1151, %1131 ], [ 0, %1128 ]
  %1135 = getelementptr inbounds i8, ptr %1133, i64 1
  %1136 = load i8, ptr %1133, align 1, !tbaa !27
  %1137 = lshr i8 %1136, 3
  %1138 = getelementptr inbounds i8, ptr %1133, i64 2
  %1139 = load i8, ptr %1135, align 1, !tbaa !27
  %1140 = lshr i8 %1139, 3
  %1141 = getelementptr inbounds i8, ptr %1133, i64 3
  %1142 = load i8, ptr %1138, align 1, !tbaa !27
  %1143 = lshr i8 %1142, 3
  %1144 = zext nneg i8 %1137 to i64
  %1145 = zext nneg i8 %1140 to i64
  %1146 = zext nneg i8 %1143 to i64
  %1147 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %1144, i64 %1145, i64 %1146
  %1148 = load i32, ptr %1147, align 4, !tbaa !5
  %1149 = trunc i32 %1148 to i8
  %1150 = getelementptr inbounds i8, ptr %1132, i64 1
  store i8 %1149, ptr %1132, align 1, !tbaa !27
  %1151 = add nuw i32 %1134, 1
  %1152 = load i32, ptr @imagewidth, align 4, !tbaa !5
  %1153 = icmp ult i32 %1151, %1152
  br i1 %1153, label %1131, label %1154, !llvm.loop !59

1154:                                             ; preds = %1131, %1128
  %1155 = call i32 @TIFFWriteScanline(ptr noundef %833, ptr noundef %1117, i32 noundef %1125, i16 noundef zeroext 0) #12
  %1156 = icmp slt i32 %1155, 0
  br i1 %1156, label %1157, label %1120

1157:                                             ; preds = %1154, %1124, %1120, %1113, %1110
  %1158 = phi ptr [ %1111, %1110 ], [ %1115, %1113 ], [ %1115, %1120 ], [ %1115, %1124 ], [ %1115, %1154 ]
  %1159 = phi ptr [ %848, %1110 ], [ %1117, %1113 ], [ %1117, %1120 ], [ %1117, %1124 ], [ %1117, %1154 ]
  call void @_TIFFfree(ptr noundef %1158) #12
  call void @_TIFFfree(ptr noundef %1159) #12
  br label %1160

1160:                                             ; preds = %1157, %1160
  %1161 = phi i64 [ 0, %1157 ], [ %1171, %1160 ]
  %1162 = getelementptr inbounds [256 x i16], ptr @rm, i64 0, i64 %1161
  %1163 = load i16, ptr %1162, align 2, !tbaa !11
  %1164 = mul i16 %1163, 257
  store i16 %1164, ptr %1162, align 2, !tbaa !11
  %1165 = getelementptr inbounds [256 x i16], ptr @gm, i64 0, i64 %1161
  %1166 = load i16, ptr %1165, align 2, !tbaa !11
  %1167 = mul i16 %1166, 257
  store i16 %1167, ptr %1165, align 2, !tbaa !11
  %1168 = getelementptr inbounds [256 x i16], ptr @bm, i64 0, i64 %1161
  %1169 = load i16, ptr %1168, align 2, !tbaa !11
  %1170 = mul i16 %1169, 257
  store i16 %1170, ptr %1168, align 2, !tbaa !11
  %1171 = add nuw nsw i64 %1161, 1
  %1172 = icmp eq i64 %1171, 256
  br i1 %1172, label %1173, label %1160, !llvm.loop !60

1173:                                             ; preds = %1160
  %1174 = load ptr, ptr @out, align 8, !tbaa !9
  %1175 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %1174, i32 noundef 320, ptr noundef nonnull @rm, ptr noundef nonnull @gm, ptr noundef nonnull @bm) #12
  %1176 = load ptr, ptr @in, align 8, !tbaa !9
  call void @TIFFClose(ptr noundef %1176) #12
  %1177 = load ptr, ptr @out, align 8, !tbaa !9
  call void @TIFFClose(ptr noundef %1177) #12
  br label %1178

1178:                                             ; preds = %691, %121, %1173, %165, %153, %136
  %1179 = phi i32 [ -3, %136 ], [ -4, %153 ], [ -5, %165 ], [ 0, %1173 ], [ -1, %121 ], [ -2, %691 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  ret i32 %1179
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @TIFFOpen(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #4

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #4

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

declare i32 @TIFFDefaultStripSize(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @TIFFClose(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare i32 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #4

declare i32 @TIFFReadScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @shrinkbox(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !25
  %4 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp sgt i32 %3, %5
  br i1 %6, label %7, label %93

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !24
  %12 = icmp sgt i32 %9, %11
  %13 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 6
  %14 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 7
  %15 = sext i32 %9 to i64
  %16 = add i32 %11, 1
  %17 = sext i32 %5 to i64
  %18 = add i32 %3, 1
  br label %19

19:                                               ; preds = %7, %45
  %20 = phi i64 [ %17, %7 ], [ %46, %45 ]
  br i1 %12, label %45, label %21

21:                                               ; preds = %19
  %22 = load i32, ptr %13, align 8, !tbaa !20
  %23 = sext i32 %22 to i64
  %24 = load i32, ptr %14, align 4, !tbaa !23
  %25 = icmp sgt i32 %22, %24
  br label %26

26:                                               ; preds = %21, %41
  %27 = phi i64 [ %15, %21 ], [ %42, %41 ]
  br i1 %25, label %41, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %20, i64 %27, i64 %23
  br label %30

30:                                               ; preds = %28, %37
  %31 = phi i32 [ %39, %37 ], [ %22, %28 ]
  %32 = phi ptr [ %38, %37 ], [ %29, %28 ]
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = trunc i64 %20 to i32
  store i32 %36, ptr %4, align 8, !tbaa !22
  br label %49

37:                                               ; preds = %30
  %38 = getelementptr inbounds i32, ptr %32, i64 1
  %39 = add i32 %31, 1
  %40 = icmp eq i32 %31, %24
  br i1 %40, label %41, label %30, !llvm.loop !61

41:                                               ; preds = %37, %26
  %42 = add nsw i64 %27, 1
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %16, %43
  br i1 %44, label %45, label %26, !llvm.loop !62

45:                                               ; preds = %41, %19
  %46 = add nsw i64 %20, 1
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %18, %47
  br i1 %48, label %49, label %19, !llvm.loop !63

49:                                               ; preds = %45, %35
  %50 = load i32, ptr %4, align 8, !tbaa !22
  %51 = icmp sgt i32 %3, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !21
  %55 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !24
  %57 = icmp sgt i32 %54, %56
  %58 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 6
  %59 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 7
  %60 = sext i32 %54 to i64
  %61 = add i32 %56, 1
  %62 = sext i32 %3 to i64
  %63 = sext i32 %50 to i64
  br label %64

64:                                               ; preds = %52, %90
  %65 = phi i64 [ %62, %52 ], [ %91, %90 ]
  br i1 %57, label %90, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %58, align 8, !tbaa !20
  %68 = sext i32 %67 to i64
  %69 = load i32, ptr %59, align 4, !tbaa !23
  %70 = icmp sgt i32 %67, %69
  br label %71

71:                                               ; preds = %66, %86
  %72 = phi i64 [ %60, %66 ], [ %87, %86 ]
  br i1 %70, label %86, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %65, i64 %72, i64 %68
  br label %75

75:                                               ; preds = %73, %82
  %76 = phi i32 [ %84, %82 ], [ %67, %73 ]
  %77 = phi ptr [ %83, %82 ], [ %74, %73 ]
  %78 = load i32, ptr %77, align 4, !tbaa !5
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = trunc i64 %65 to i32
  store i32 %81, ptr %2, align 4, !tbaa !25
  br label %93

82:                                               ; preds = %75
  %83 = getelementptr inbounds i32, ptr %77, i64 1
  %84 = add i32 %76, 1
  %85 = icmp eq i32 %76, %69
  br i1 %85, label %86, label %75, !llvm.loop !64

86:                                               ; preds = %82, %71
  %87 = add nsw i64 %72, 1
  %88 = trunc i64 %87 to i32
  %89 = icmp eq i32 %61, %88
  br i1 %89, label %90, label %71, !llvm.loop !65

90:                                               ; preds = %86, %64
  %91 = add nsw i64 %65, -1
  %92 = icmp sgt i64 %65, %63
  br i1 %92, label %64, label %93, !llvm.loop !66

93:                                               ; preds = %90, %1, %49, %80
  %94 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 5
  %95 = load i32, ptr %94, align 4, !tbaa !24
  %96 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 4
  %97 = load i32, ptr %96, align 8, !tbaa !21
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %181

99:                                               ; preds = %93
  %100 = load i32, ptr %4, align 8, !tbaa !22
  %101 = load i32, ptr %2, align 4, !tbaa !25
  %102 = icmp sgt i32 %100, %101
  %103 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 6
  %104 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 7
  %105 = sext i32 %100 to i64
  %106 = add i32 %101, 1
  %107 = sext i32 %97 to i64
  %108 = add i32 %95, 1
  br label %109

109:                                              ; preds = %99, %135
  %110 = phi i64 [ %107, %99 ], [ %136, %135 ]
  br i1 %102, label %135, label %111

111:                                              ; preds = %109
  %112 = load i32, ptr %103, align 8, !tbaa !20
  %113 = sext i32 %112 to i64
  %114 = load i32, ptr %104, align 4, !tbaa !23
  %115 = icmp sgt i32 %112, %114
  br label %116

116:                                              ; preds = %111, %131
  %117 = phi i64 [ %105, %111 ], [ %132, %131 ]
  br i1 %115, label %131, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %117, i64 %110, i64 %113
  br label %120

120:                                              ; preds = %118, %127
  %121 = phi i32 [ %129, %127 ], [ %112, %118 ]
  %122 = phi ptr [ %128, %127 ], [ %119, %118 ]
  %123 = load i32, ptr %122, align 4, !tbaa !5
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = trunc i64 %110 to i32
  store i32 %126, ptr %96, align 8, !tbaa !21
  br label %139

127:                                              ; preds = %120
  %128 = getelementptr inbounds i32, ptr %122, i64 1
  %129 = add i32 %121, 1
  %130 = icmp eq i32 %121, %114
  br i1 %130, label %131, label %120, !llvm.loop !67

131:                                              ; preds = %127, %116
  %132 = add nsw i64 %117, 1
  %133 = trunc i64 %132 to i32
  %134 = icmp eq i32 %106, %133
  br i1 %134, label %135, label %116, !llvm.loop !68

135:                                              ; preds = %131, %109
  %136 = add nsw i64 %110, 1
  %137 = trunc i64 %136 to i32
  %138 = icmp eq i32 %108, %137
  br i1 %138, label %139, label %109, !llvm.loop !69

139:                                              ; preds = %135, %125
  %140 = load i32, ptr %96, align 8, !tbaa !21
  %141 = icmp sgt i32 %95, %140
  br i1 %141, label %142, label %181

142:                                              ; preds = %139
  %143 = load i32, ptr %4, align 8, !tbaa !22
  %144 = load i32, ptr %2, align 4, !tbaa !25
  %145 = icmp sgt i32 %143, %144
  %146 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 6
  %147 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 7
  %148 = sext i32 %143 to i64
  %149 = add i32 %144, 1
  %150 = sext i32 %95 to i64
  %151 = sext i32 %140 to i64
  br label %152

152:                                              ; preds = %142, %178
  %153 = phi i64 [ %150, %142 ], [ %179, %178 ]
  br i1 %145, label %178, label %154

154:                                              ; preds = %152
  %155 = load i32, ptr %146, align 8, !tbaa !20
  %156 = sext i32 %155 to i64
  %157 = load i32, ptr %147, align 4, !tbaa !23
  %158 = icmp sgt i32 %155, %157
  br label %159

159:                                              ; preds = %154, %174
  %160 = phi i64 [ %148, %154 ], [ %175, %174 ]
  br i1 %158, label %174, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %160, i64 %153, i64 %156
  br label %163

163:                                              ; preds = %161, %170
  %164 = phi i32 [ %172, %170 ], [ %155, %161 ]
  %165 = phi ptr [ %171, %170 ], [ %162, %161 ]
  %166 = load i32, ptr %165, align 4, !tbaa !5
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  %169 = trunc i64 %153 to i32
  store i32 %169, ptr %94, align 4, !tbaa !24
  br label %181

170:                                              ; preds = %163
  %171 = getelementptr inbounds i32, ptr %165, i64 1
  %172 = add i32 %164, 1
  %173 = icmp eq i32 %164, %157
  br i1 %173, label %174, label %163, !llvm.loop !70

174:                                              ; preds = %170, %159
  %175 = add nsw i64 %160, 1
  %176 = trunc i64 %175 to i32
  %177 = icmp eq i32 %149, %176
  br i1 %177, label %178, label %159, !llvm.loop !71

178:                                              ; preds = %174, %152
  %179 = add nsw i64 %153, -1
  %180 = icmp sgt i64 %153, %151
  br i1 %180, label %152, label %181, !llvm.loop !72

181:                                              ; preds = %178, %93, %139, %168
  %182 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 7
  %183 = load i32, ptr %182, align 4, !tbaa !23
  %184 = getelementptr inbounds %struct.colorbox, ptr %0, i64 0, i32 6
  %185 = load i32, ptr %184, align 8, !tbaa !20
  %186 = icmp sgt i32 %183, %185
  br i1 %186, label %187, label %265

187:                                              ; preds = %181
  %188 = load i32, ptr %4, align 8, !tbaa !22
  %189 = load i32, ptr %2, align 4, !tbaa !25
  %190 = icmp sgt i32 %188, %189
  %191 = sext i32 %188 to i64
  %192 = add i32 %189, 1
  %193 = sext i32 %185 to i64
  %194 = add i32 %183, 1
  br label %195

195:                                              ; preds = %187, %221
  %196 = phi i64 [ %193, %187 ], [ %222, %221 ]
  br i1 %190, label %221, label %197

197:                                              ; preds = %195
  %198 = load i32, ptr %96, align 8, !tbaa !21
  %199 = sext i32 %198 to i64
  %200 = load i32, ptr %94, align 4, !tbaa !24
  %201 = icmp sgt i32 %198, %200
  br label %202

202:                                              ; preds = %197, %217
  %203 = phi i64 [ %191, %197 ], [ %218, %217 ]
  br i1 %201, label %217, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %203, i64 %199, i64 %196
  br label %206

206:                                              ; preds = %204, %213
  %207 = phi i32 [ %215, %213 ], [ %198, %204 ]
  %208 = phi ptr [ %214, %213 ], [ %205, %204 ]
  %209 = load i32, ptr %208, align 4, !tbaa !5
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %206
  %212 = trunc i64 %196 to i32
  store i32 %212, ptr %184, align 8, !tbaa !20
  br label %225

213:                                              ; preds = %206
  %214 = getelementptr inbounds i32, ptr %208, i64 32
  %215 = add i32 %207, 1
  %216 = icmp eq i32 %207, %200
  br i1 %216, label %217, label %206, !llvm.loop !73

217:                                              ; preds = %213, %202
  %218 = add nsw i64 %203, 1
  %219 = trunc i64 %218 to i32
  %220 = icmp eq i32 %192, %219
  br i1 %220, label %221, label %202, !llvm.loop !74

221:                                              ; preds = %217, %195
  %222 = add nsw i64 %196, 1
  %223 = trunc i64 %222 to i32
  %224 = icmp eq i32 %194, %223
  br i1 %224, label %225, label %195, !llvm.loop !75

225:                                              ; preds = %221, %211
  %226 = load i32, ptr %184, align 8, !tbaa !20
  %227 = icmp sgt i32 %183, %226
  br i1 %227, label %228, label %265

228:                                              ; preds = %225
  %229 = load i32, ptr %4, align 8, !tbaa !22
  %230 = load i32, ptr %2, align 4, !tbaa !25
  %231 = icmp sgt i32 %229, %230
  %232 = sext i32 %229 to i64
  %233 = add i32 %230, 1
  %234 = sext i32 %183 to i64
  %235 = sext i32 %226 to i64
  br label %236

236:                                              ; preds = %228, %262
  %237 = phi i64 [ %234, %228 ], [ %263, %262 ]
  br i1 %231, label %262, label %238

238:                                              ; preds = %236
  %239 = load i32, ptr %96, align 8, !tbaa !21
  %240 = sext i32 %239 to i64
  %241 = load i32, ptr %94, align 4, !tbaa !24
  %242 = icmp sgt i32 %239, %241
  br label %243

243:                                              ; preds = %238, %258
  %244 = phi i64 [ %232, %238 ], [ %259, %258 ]
  br i1 %242, label %258, label %245

245:                                              ; preds = %243
  %246 = getelementptr inbounds [32 x [32 x [32 x i32]]], ptr @histogram, i64 0, i64 %244, i64 %240, i64 %237
  br label %247

247:                                              ; preds = %245, %254
  %248 = phi i32 [ %256, %254 ], [ %239, %245 ]
  %249 = phi ptr [ %255, %254 ], [ %246, %245 ]
  %250 = load i32, ptr %249, align 4, !tbaa !5
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %247
  %253 = trunc i64 %237 to i32
  store i32 %253, ptr %182, align 4, !tbaa !23
  br label %265

254:                                              ; preds = %247
  %255 = getelementptr inbounds i32, ptr %249, i64 32
  %256 = add i32 %248, 1
  %257 = icmp eq i32 %248, %241
  br i1 %257, label %258, label %247, !llvm.loop !76

258:                                              ; preds = %254, %243
  %259 = add nsw i64 %244, 1
  %260 = trunc i64 %259 to i32
  %261 = icmp eq i32 %233, %260
  br i1 %261, label %262, label %243, !llvm.loop !77

262:                                              ; preds = %258, %236
  %263 = add nsw i64 %237, -1
  %264 = icmp sgt i64 %237, %235
  br i1 %264, label %236, label %265, !llvm.loop !78

265:                                              ; preds = %262, %181, %225, %252
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @create_colorcell(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = ashr i32 %0, 6
  %5 = ashr i32 %1, 6
  %6 = ashr i32 %2, 6
  %7 = tail call ptr @_TIFFmalloc(i32 noundef 2052) #12
  %8 = load ptr, ptr @ColorCells, align 8, !tbaa !9
  %9 = sext i32 %4 to i64
  %10 = shl nsw i64 %9, 4
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = sext i32 %5 to i64
  %13 = shl nsw i64 %12, 2
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = sext i32 %6 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  store ptr %7, ptr %16, align 8, !tbaa !9
  store i32 0, ptr %7, align 4, !tbaa !45
  %17 = load i32, ptr @num_colors, align 4, !tbaa !5
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %72, %3
  %20 = phi i32 [ 99999999, %3 ], [ %73, %72 ]
  %21 = load i32, ptr @num_colors, align 4, !tbaa !5
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %78, label %154

23:                                               ; preds = %3, %72
  %24 = phi i64 [ %74, %72 ], [ 0, %3 ]
  %25 = phi i32 [ %73, %72 ], [ 99999999, %3 ]
  %26 = getelementptr inbounds [256 x i16], ptr @rm, i64 0, i64 %24
  %27 = load i16, ptr %26, align 2, !tbaa !11
  %28 = lshr i16 %27, 6
  %29 = zext nneg i16 %28 to i32
  %30 = icmp eq i32 %4, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %23
  %32 = getelementptr inbounds [256 x i16], ptr @gm, i64 0, i64 %24
  %33 = load i16, ptr %32, align 2, !tbaa !11
  %34 = lshr i16 %33, 6
  %35 = zext nneg i16 %34 to i32
  %36 = icmp eq i32 %5, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %31
  %38 = getelementptr inbounds [256 x i16], ptr @bm, i64 0, i64 %24
  %39 = load i16, ptr %38, align 2, !tbaa !11
  %40 = lshr i16 %39, 6
  %41 = zext nneg i16 %40 to i32
  %42 = icmp eq i32 %6, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %37
  %44 = load i32, ptr %7, align 4, !tbaa !45
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.C_cell, ptr %7, i64 0, i32 1, i64 %45
  %47 = trunc i64 %24 to i32
  store i32 %47, ptr %46, align 4, !tbaa !5
  %48 = getelementptr inbounds %struct.C_cell, ptr %7, i64 0, i32 1, i64 %45, i64 1
  store i32 0, ptr %48, align 4, !tbaa !5
  %49 = load i32, ptr %7, align 4, !tbaa !45
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %7, align 4, !tbaa !45
  %51 = zext i16 %27 to i32
  %52 = sub nsw i32 %51, %0
  %53 = icmp slt i32 %52, 32
  %54 = sub i32 63, %52
  %55 = select i1 %53, i32 %54, i32 %52
  %56 = mul nsw i32 %55, %55
  %57 = zext i16 %33 to i32
  %58 = sub nsw i32 %57, %1
  %59 = icmp slt i32 %58, 32
  %60 = sub i32 63, %58
  %61 = select i1 %59, i32 %60, i32 %58
  %62 = mul nsw i32 %61, %61
  %63 = add nuw nsw i32 %62, %56
  %64 = zext i16 %39 to i32
  %65 = sub nsw i32 %64, %2
  %66 = icmp slt i32 %65, 32
  %67 = sub i32 63, %65
  %68 = select i1 %66, i32 %67, i32 %65
  %69 = mul nsw i32 %68, %68
  %70 = add nuw nsw i32 %63, %69
  %71 = tail call i32 @llvm.smin.i32(i32 %70, i32 %25)
  br label %72

72:                                               ; preds = %43, %23, %31, %37
  %73 = phi i32 [ %25, %23 ], [ %25, %31 ], [ %25, %37 ], [ %71, %43 ]
  %74 = add nuw nsw i64 %24, 1
  %75 = load i32, ptr @num_colors, align 4, !tbaa !5
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %23, label %19, !llvm.loop !79

78:                                               ; preds = %19, %149
  %79 = phi i64 [ %150, %149 ], [ 0, %19 ]
  %80 = getelementptr inbounds [256 x i16], ptr @rm, i64 0, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !11
  %82 = lshr i16 %81, 6
  %83 = zext nneg i16 %82 to i32
  %84 = icmp eq i32 %4, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %78
  %86 = getelementptr inbounds [256 x i16], ptr @gm, i64 0, i64 %79
  %87 = load i16, ptr %86, align 2, !tbaa !11
  %88 = lshr i16 %87, 6
  %89 = zext nneg i16 %88 to i32
  %90 = icmp eq i32 %5, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = getelementptr inbounds [256 x i16], ptr @bm, i64 0, i64 %79
  %93 = load i16, ptr %92, align 2, !tbaa !11
  %94 = lshr i16 %93, 6
  %95 = zext nneg i16 %94 to i32
  %96 = icmp eq i32 %6, %95
  br i1 %96, label %149, label %97

97:                                               ; preds = %91, %85, %78
  %98 = zext i16 %81 to i32
  %99 = sub nsw i32 %0, %98
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = sub i32 %98, %0
  %103 = add i32 %102, -63
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101, %97
  %106 = phi i32 [ %99, %97 ], [ %103, %101 ]
  %107 = mul nsw i32 %106, %106
  br label %108

108:                                              ; preds = %105, %101
  %109 = phi i32 [ %107, %105 ], [ 0, %101 ]
  %110 = getelementptr inbounds [256 x i16], ptr @gm, i64 0, i64 %79
  %111 = load i16, ptr %110, align 2, !tbaa !11
  %112 = zext i16 %111 to i32
  %113 = sub nsw i32 %1, %112
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %108
  %116 = sub i32 %112, %1
  %117 = add i32 %116, -63
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115, %108
  %120 = phi i32 [ %113, %108 ], [ %117, %115 ]
  %121 = mul nsw i32 %120, %120
  %122 = add nuw nsw i32 %121, %109
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi i32 [ %122, %119 ], [ %109, %115 ]
  %125 = getelementptr inbounds [256 x i16], ptr @bm, i64 0, i64 %79
  %126 = load i16, ptr %125, align 2, !tbaa !11
  %127 = zext i16 %126 to i32
  %128 = sub nsw i32 %2, %127
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %123
  %131 = sub i32 %127, %2
  %132 = add i32 %131, -63
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130, %123
  %135 = phi i32 [ %128, %123 ], [ %132, %130 ]
  %136 = mul nsw i32 %135, %135
  %137 = add nsw i32 %136, %124
  br label %138

138:                                              ; preds = %134, %130
  %139 = phi i32 [ %137, %134 ], [ %124, %130 ]
  %140 = icmp slt i32 %139, %20
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, ptr %7, align 4, !tbaa !45
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.C_cell, ptr %7, i64 0, i32 1, i64 %143
  %145 = trunc i64 %79 to i32
  store i32 %145, ptr %144, align 4, !tbaa !5
  %146 = getelementptr inbounds %struct.C_cell, ptr %7, i64 0, i32 1, i64 %143, i64 1
  store i32 %139, ptr %146, align 4, !tbaa !5
  %147 = load i32, ptr %7, align 4, !tbaa !45
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %7, align 4, !tbaa !45
  br label %149

149:                                              ; preds = %138, %141, %91
  %150 = add nuw nsw i64 %79, 1
  %151 = load i32, ptr @num_colors, align 4, !tbaa !5
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %150, %152
  br i1 %153, label %78, label %154, !llvm.loop !80

154:                                              ; preds = %149, %19
  %155 = load i32, ptr %7, align 4, !tbaa !45
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %183

157:                                              ; preds = %154
  %158 = add nsw i32 %155, -1
  br label %161

159:                                              ; preds = %180
  %160 = icmp sgt i32 %181, 0
  br i1 %160, label %161, label %183, !llvm.loop !81

161:                                              ; preds = %157, %159
  %162 = phi i32 [ %181, %159 ], [ %158, %157 ]
  %163 = tail call i32 @llvm.smax.i32(i32 %162, i32 1)
  %164 = zext nneg i32 %163 to i64
  br label %165

165:                                              ; preds = %161, %180
  %166 = phi i64 [ 0, %161 ], [ %170, %180 ]
  %167 = phi i32 [ 0, %161 ], [ %181, %180 ]
  %168 = getelementptr inbounds %struct.C_cell, ptr %7, i64 0, i32 1, i64 %166, i64 1
  %169 = load i32, ptr %168, align 4, !tbaa !5
  %170 = add nuw nsw i64 %166, 1
  %171 = getelementptr inbounds %struct.C_cell, ptr %7, i64 0, i32 1, i64 %170, i64 1
  %172 = load i32, ptr %171, align 4, !tbaa !5
  %173 = icmp sgt i32 %169, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %165
  %175 = getelementptr inbounds %struct.C_cell, ptr %7, i64 0, i32 1, i64 %170
  %176 = getelementptr inbounds %struct.C_cell, ptr %7, i64 0, i32 1, i64 %166
  %177 = load i32, ptr %176, align 4, !tbaa !5
  %178 = load i32, ptr %175, align 4, !tbaa !5
  store i32 %178, ptr %176, align 4, !tbaa !5
  store i32 %177, ptr %175, align 4, !tbaa !5
  store i32 %172, ptr %168, align 4, !tbaa !5
  store i32 %169, ptr %171, align 4, !tbaa !5
  %179 = trunc i64 %166 to i32
  br label %180

180:                                              ; preds = %165, %174
  %181 = phi i32 [ %179, %174 ], [ %167, %165 ]
  %182 = icmp eq i64 %170, %164
  br i1 %182, label %159, label %165, !llvm.loop !82

183:                                              ; preds = %159, %154
  ret ptr %7
}

declare i32 @TIFFWriteScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !14}
!16 = !{!17, !10, i64 0}
!17 = !{!"colorbox", !10, i64 0, !10, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!18 = !{!17, !10, i64 8}
!19 = distinct !{!19, !14}
!20 = !{!17, !6, i64 32}
!21 = !{!17, !6, i64 24}
!22 = !{!17, !6, i64 16}
!23 = !{!17, !6, i64 36}
!24 = !{!17, !6, i64 28}
!25 = !{!17, !6, i64 20}
!26 = !{!17, !6, i64 40}
!27 = !{!7, !7, i64 0}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = !{!46, !6, i64 0}
!46 = !{!"", !6, i64 0, !7, i64 4}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !7, i64 0}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = distinct !{!79, !14}
!80 = distinct !{!80, !14}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !14}
