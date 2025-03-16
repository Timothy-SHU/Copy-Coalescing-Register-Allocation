; ModuleID = 'src/tiff2bw.c'
source_filename = "src/tiff2bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cpTag = type { i16, i16, i32 }

@RED = dso_local local_unnamed_addr global i32 71, align 4
@GREEN = dso_local local_unnamed_addr global i32 150, align 4
@BLUE = dso_local local_unnamed_addr global i32 28, align 4
@.str = private unnamed_addr constant [11 x i8] c"c:r:R:G:B:\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@optind = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"%s: Bad photometric; can only handle RGB and Palette images.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: Bad samples/pixel %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c" %s: Sorry, only handle 8-bit samples.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@compression = internal unnamed_addr global i16 -1, align 2
@quality = internal unnamed_addr global i32 75, align 4
@jpegcolormode = internal unnamed_addr global i1 false, align 4
@predictor = internal unnamed_addr global i16 0, align 2
@.str.6 = private unnamed_addr constant [18 x i8] c"B&W version of %s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"tiff2bw\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"usage: tiff2bw [options] input.tif output.tif\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"where options are:\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c" -R %\09\09use #% from red channel\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c" -G %\09\09use #% from green channel\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c" -B %\09\09use #% from blue channel\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [48 x i8] c" -r #\09\09make each strip have no more than # rows\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c" -c lzw[:opts]\09compress output with Lempel-Ziv & Welch encoding\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"               (no longer supported due to Unisys patent enforcement)\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c" -c zip[:opts]\09compress output with deflate encoding\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c" -c packbits\09compress output with packbits encoding\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c" -c g3[:opts]\09compress output with CCITT Group 3 encoding\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c" -c g4\09\09compress output with CCITT Group 4 encoding\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c" -c none\09use no compression algorithm on output\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"LZW and deflate options:\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c" #\09\09set predictor value\00", align 1
@.str.24 = private unnamed_addr constant [75 x i8] c"For example, -c lzw:2 to get LZW-encoded data with horizontal differencing\00", align 1
@stuff = dso_local local_unnamed_addr global [20 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.13, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null], align 16
@.str.25 = private unnamed_addr constant [24 x i8] c"Assuming 8-bit colormap\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"packbits\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"lzw\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@tags = internal unnamed_addr constant [16 x %struct.cpTag] [%struct.cpTag { i16 256, i16 1, i32 4 }, %struct.cpTag { i16 257, i16 1, i32 4 }, %struct.cpTag { i16 266, i16 1, i32 3 }, %struct.cpTag { i16 269, i16 1, i32 2 }, %struct.cpTag { i16 271, i16 1, i32 2 }, %struct.cpTag { i16 272, i16 1, i32 2 }, %struct.cpTag { i16 274, i16 1, i32 3 }, %struct.cpTag { i16 282, i16 1, i32 5 }, %struct.cpTag { i16 283, i16 1, i32 5 }, %struct.cpTag { i16 285, i16 1, i32 2 }, %struct.cpTag { i16 286, i16 1, i32 5 }, %struct.cpTag { i16 287, i16 1, i32 5 }, %struct.cpTag { i16 296, i16 1, i32 3 }, %struct.cpTag { i16 297, i16 2, i32 3 }, %struct.cpTag { i16 315, i16 1, i32 2 }, %struct.cpTag { i16 316, i16 1, i32 2 }], align 16
@.str.31 = private unnamed_addr constant [16 x i8] c"Unexpected tag\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main1(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8192 x i8], align 16
  %11 = alloca [8192 x i8], align 16
  %12 = alloca [8192 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %22) #10
  br label %23

23:                                               ; preds = %81, %2
  %24 = phi i32 [ -1, %2 ], [ %82, %81 ]
  %25 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #10
  switch i32 %25, label %81 [
    i32 -1, label %133
    i32 99, label %26
    i32 114, label %97
    i32 82, label %101
    i32 71, label %107
    i32 66, label %113
    i32 63, label %119
  ]

26:                                               ; preds = %23
  %27 = load ptr, ptr @optarg, align 8, !tbaa !5
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(5) @.str.26) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i16 1, ptr @compression, align 2, !tbaa !9
  br label %81

31:                                               ; preds = %26
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(9) @.str.27) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i16 -32763, ptr @compression, align 2, !tbaa !9
  br label %81

35:                                               ; preds = %31
  %36 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(5) @.str.28, i64 noundef 4) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %27, i32 noundef 58) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @__ctype_b_loc() #12
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = getelementptr inbounds i8, ptr %39, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !11
  %46 = sext i8 %45 to i64
  %47 = getelementptr inbounds i16, ptr %43, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !9
  %49 = and i16 %48, 2048
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = tail call i64 @strtol(ptr nocapture noundef nonnull %44, ptr noundef null, i32 noundef 10) #10
  %53 = trunc i64 %52 to i32
  store i32 %53, ptr @quality, align 4, !tbaa !12
  br label %54

54:                                               ; preds = %51, %41
  %55 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %39, i32 noundef 114) #11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i1 true, ptr @jpegcolormode, align 4
  br label %58

58:                                               ; preds = %57, %54, %38
  store i16 7, ptr @compression, align 2, !tbaa !9
  br label %81

59:                                               ; preds = %35
  %60 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.29, i64 noundef 3) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %27, i32 noundef 58) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, ptr %63, i64 1
  %67 = tail call i64 @strtol(ptr nocapture noundef nonnull %66, ptr noundef null, i32 noundef 10) #10
  %68 = trunc i64 %67 to i16
  store i16 %68, ptr @predictor, align 2, !tbaa !9
  br label %69

69:                                               ; preds = %65, %62
  store i16 5, ptr @compression, align 2, !tbaa !9
  br label %81

70:                                               ; preds = %59
  %71 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.30, i64 noundef 3) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %27, i32 noundef 58) #11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds i8, ptr %74, i64 1
  %78 = tail call i64 @strtol(ptr nocapture noundef nonnull %77, ptr noundef null, i32 noundef 10) #10
  %79 = trunc i64 %78 to i16
  store i16 %79, ptr @predictor, align 2, !tbaa !9
  br label %80

80:                                               ; preds = %76, %73
  store i16 -32590, ptr @compression, align 2, !tbaa !9
  br label %81

81:                                               ; preds = %80, %69, %58, %34, %30, %23, %113, %107, %101, %97
  %82 = phi i32 [ %24, %113 ], [ %24, %107 ], [ %24, %101 ], [ %100, %97 ], [ %24, %23 ], [ %24, %30 ], [ %24, %34 ], [ %24, %58 ], [ %24, %69 ], [ %24, %80 ]
  br label %23, !llvm.loop !14

83:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %12) #10
  %84 = load ptr, ptr @stderr, align 8, !tbaa !5
  call void @setbuf(ptr noundef %84, ptr noundef nonnull %12) #10
  %85 = load ptr, ptr @stuff, align 16, !tbaa !5
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %83, %87
  %88 = phi i64 [ %92, %87 ], [ 0, %83 ]
  %89 = phi ptr [ %94, %87 ], [ %85, %83 ]
  %90 = load ptr, ptr @stderr, align 8, !tbaa !5
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.32, ptr noundef nonnull %89) #13
  %92 = add nuw i64 %88, 1
  %93 = getelementptr inbounds [20 x ptr], ptr @stuff, i64 0, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %87, !llvm.loop !16

96:                                               ; preds = %87, %83
  call void @exit(i32 noundef 1) #14
  unreachable

97:                                               ; preds = %23
  %98 = load ptr, ptr @optarg, align 8, !tbaa !5
  %99 = tail call i64 @strtol(ptr nocapture noundef nonnull %98, ptr noundef null, i32 noundef 10) #10
  %100 = trunc i64 %99 to i32
  br label %81

101:                                              ; preds = %23
  %102 = load ptr, ptr @optarg, align 8, !tbaa !5
  %103 = tail call i64 @strtol(ptr nocapture noundef nonnull %102, ptr noundef null, i32 noundef 10) #10
  %104 = trunc i64 %103 to i32
  %105 = mul nsw i32 %104, 255
  %106 = sdiv i32 %105, 100
  store i32 %106, ptr @RED, align 4, !tbaa !12
  br label %81

107:                                              ; preds = %23
  %108 = load ptr, ptr @optarg, align 8, !tbaa !5
  %109 = tail call i64 @strtol(ptr nocapture noundef nonnull %108, ptr noundef null, i32 noundef 10) #10
  %110 = trunc i64 %109 to i32
  %111 = mul nsw i32 %110, 255
  %112 = sdiv i32 %111, 100
  store i32 %112, ptr @GREEN, align 4, !tbaa !12
  br label %81

113:                                              ; preds = %23
  %114 = load ptr, ptr @optarg, align 8, !tbaa !5
  %115 = tail call i64 @strtol(ptr nocapture noundef nonnull %114, ptr noundef null, i32 noundef 10) #10
  %116 = trunc i64 %115 to i32
  %117 = mul nsw i32 %116, 255
  %118 = sdiv i32 %117, 100
  store i32 %118, ptr @BLUE, align 4, !tbaa !12
  br label %81

119:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %11) #10
  %120 = load ptr, ptr @stderr, align 8, !tbaa !5
  call void @setbuf(ptr noundef %120, ptr noundef nonnull %11) #10
  %121 = load ptr, ptr @stuff, align 16, !tbaa !5
  %122 = icmp eq ptr %121, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %119, %123
  %124 = phi i64 [ %128, %123 ], [ 0, %119 ]
  %125 = phi ptr [ %130, %123 ], [ %121, %119 ]
  %126 = load ptr, ptr @stderr, align 8, !tbaa !5
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.32, ptr noundef nonnull %125) #13
  %128 = add nuw i64 %124, 1
  %129 = getelementptr inbounds [20 x ptr], ptr @stuff, i64 0, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !5
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %123, !llvm.loop !16

132:                                              ; preds = %123, %119
  call void @exit(i32 noundef 1) #14
  unreachable

133:                                              ; preds = %23
  %134 = load i32, ptr @optind, align 4, !tbaa !12
  %135 = sub nsw i32 %0, %134
  %136 = icmp slt i32 %135, 2
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %10) #10
  %138 = load ptr, ptr @stderr, align 8, !tbaa !5
  call void @setbuf(ptr noundef %138, ptr noundef nonnull %10) #10
  %139 = load ptr, ptr @stuff, align 16, !tbaa !5
  %140 = icmp eq ptr %139, null
  br i1 %140, label %150, label %141

141:                                              ; preds = %137, %141
  %142 = phi i64 [ %146, %141 ], [ 0, %137 ]
  %143 = phi ptr [ %148, %141 ], [ %139, %137 ]
  %144 = load ptr, ptr @stderr, align 8, !tbaa !5
  %145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.32, ptr noundef nonnull %143) #13
  %146 = add nuw i64 %142, 1
  %147 = getelementptr inbounds [20 x ptr], ptr @stuff, i64 0, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !5
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %141, !llvm.loop !16

150:                                              ; preds = %141, %137
  call void @exit(i32 noundef 1) #14
  unreachable

151:                                              ; preds = %133
  %152 = sext i32 %134 to i64
  %153 = getelementptr inbounds ptr, ptr %1, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !5
  %155 = tail call ptr @TIFFOpen(ptr noundef %154, ptr noundef nonnull @.str.1) #10
  %156 = icmp eq ptr %155, null
  br i1 %156, label %530, label %157

157:                                              ; preds = %151
  store i16 0, ptr %18, align 2, !tbaa !9
  %158 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %155, i32 noundef 262, ptr noundef nonnull %18) #10
  %159 = load i16, ptr %18, align 2
  %160 = add i16 %159, -4
  %161 = icmp ult i16 %160, -2
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load ptr, ptr @stderr, align 8, !tbaa !5
  %164 = load i32, ptr @optind, align 4, !tbaa !12
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %1, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !5
  %168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef nonnull @.str.2, ptr noundef %167) #13
  br label %530

169:                                              ; preds = %157
  %170 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %155, i32 noundef 277, ptr noundef nonnull %15) #10
  %171 = load i16, ptr %15, align 2
  %172 = and i16 %171, -3
  %173 = icmp eq i16 %172, 1
  br i1 %173, label %182, label %174

174:                                              ; preds = %169
  %175 = zext i16 %171 to i32
  %176 = load ptr, ptr @stderr, align 8, !tbaa !5
  %177 = load i32, ptr @optind, align 4, !tbaa !12
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds ptr, ptr %1, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !5
  %181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef nonnull @.str.3, ptr noundef %180, i32 noundef %175) #13
  br label %530

182:                                              ; preds = %169
  %183 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %155, i32 noundef 258, ptr noundef nonnull %16) #10
  %184 = load i16, ptr %16, align 2, !tbaa !9
  %185 = icmp eq i16 %184, 8
  br i1 %185, label %193, label %186

186:                                              ; preds = %182
  %187 = load ptr, ptr @stderr, align 8, !tbaa !5
  %188 = load i32, ptr @optind, align 4, !tbaa !12
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %1, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !5
  %192 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef nonnull @.str.4, ptr noundef %191) #13
  br label %530

193:                                              ; preds = %182
  %194 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %155, i32 noundef 256, ptr noundef nonnull %13) #10
  %195 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %155, i32 noundef 257, ptr noundef nonnull %14) #10
  %196 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %155, i32 noundef 284, ptr noundef nonnull %17) #10
  %197 = load i32, ptr @optind, align 4, !tbaa !12
  %198 = sext i32 %197 to i64
  %199 = getelementptr ptr, ptr %1, i64 %198
  %200 = getelementptr ptr, ptr %199, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !5
  %202 = call ptr @TIFFOpen(ptr noundef %201, ptr noundef nonnull @.str.5) #10
  %203 = icmp eq ptr %202, null
  br i1 %203, label %530, label %204

204:                                              ; preds = %193, %273
  %205 = phi i64 [ %274, %273 ], [ 0, %193 ]
  %206 = getelementptr inbounds i8, ptr @tags, i64 %205
  %207 = load i16, ptr %206, align 8, !tbaa !17
  %208 = getelementptr inbounds %struct.cpTag, ptr %206, i64 0, i32 1
  %209 = load i16, ptr %208, align 2, !tbaa !19
  %210 = getelementptr inbounds %struct.cpTag, ptr %206, i64 0, i32 2
  %211 = load i32, ptr %210, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  switch i32 %211, label %270 [
    i32 3, label %212
    i32 4, label %240
    i32 5, label %247
    i32 2, label %263
  ]

212:                                              ; preds = %204
  switch i16 %209, label %273 [
    i16 1, label %213
    i16 2, label %221
    i16 -1, label %231
  ]

213:                                              ; preds = %212
  %214 = zext i16 %207 to i32
  %215 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %155, i32 noundef %214, ptr noundef nonnull %3) #10
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %273, label %217

217:                                              ; preds = %213
  %218 = load i16, ptr %3, align 2, !tbaa !9
  %219 = zext i16 %218 to i32
  %220 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %202, i32 noundef %214, i32 noundef %219) #10
  br label %273

221:                                              ; preds = %212
  %222 = zext i16 %207 to i32
  %223 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %155, i32 noundef %222, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %273, label %225

225:                                              ; preds = %221
  %226 = load i16, ptr %3, align 2, !tbaa !9
  %227 = zext i16 %226 to i32
  %228 = load i16, ptr %4, align 2, !tbaa !9
  %229 = zext i16 %228 to i32
  %230 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %202, i32 noundef %222, i32 noundef %227, i32 noundef %229) #10
  br label %273

231:                                              ; preds = %212
  %232 = zext i16 %207 to i32
  %233 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %155, i32 noundef %232, ptr noundef nonnull %3, ptr noundef nonnull %5) #10
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %273, label %235

235:                                              ; preds = %231
  %236 = load i16, ptr %3, align 2, !tbaa !9
  %237 = zext i16 %236 to i32
  %238 = load ptr, ptr %5, align 8, !tbaa !5
  %239 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %202, i32 noundef %232, i32 noundef %237, ptr noundef %238) #10
  br label %273

240:                                              ; preds = %204
  %241 = zext i16 %207 to i32
  %242 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %155, i32 noundef %241, ptr noundef nonnull %9) #10
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %273, label %244

244:                                              ; preds = %240
  %245 = load i32, ptr %9, align 4, !tbaa !12
  %246 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %202, i32 noundef %241, i32 noundef %245) #10
  br label %273

247:                                              ; preds = %204
  switch i16 %209, label %273 [
    i16 1, label %248
    i16 -1, label %256
  ]

248:                                              ; preds = %247
  %249 = zext i16 %207 to i32
  %250 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %155, i32 noundef %249, ptr noundef nonnull %6) #10
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %273, label %252

252:                                              ; preds = %248
  %253 = load float, ptr %6, align 4, !tbaa !21
  %254 = fpext float %253 to double
  %255 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %202, i32 noundef %249, double noundef %254) #10
  br label %273

256:                                              ; preds = %247
  %257 = zext i16 %207 to i32
  %258 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %155, i32 noundef %257, ptr noundef nonnull %7) #10
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %273, label %260

260:                                              ; preds = %256
  %261 = load ptr, ptr %7, align 8, !tbaa !5
  %262 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %202, i32 noundef %257, ptr noundef %261) #10
  br label %273

263:                                              ; preds = %204
  %264 = zext i16 %207 to i32
  %265 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %155, i32 noundef %264, ptr noundef nonnull %8) #10
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %263
  %268 = load ptr, ptr %8, align 8, !tbaa !5
  %269 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %202, i32 noundef %264, ptr noundef %268) #10
  br label %273

270:                                              ; preds = %204
  %271 = load ptr, ptr @stderr, align 8, !tbaa !5
  %272 = call i64 @fwrite(ptr nonnull @.str.31, i64 15, i64 1, ptr %271) #13
  call void @exit(i32 noundef 1) #14
  unreachable

273:                                              ; preds = %267, %263, %260, %256, %252, %248, %247, %244, %240, %235, %231, %225, %221, %217, %213, %212
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %274 = add nuw nsw i64 %205, 8
  %275 = icmp ult i64 %205, 120
  br i1 %275, label %204, label %276, !llvm.loop !23

276:                                              ; preds = %273
  %277 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %202, i32 noundef 258, i32 noundef 8) #10
  %278 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %202, i32 noundef 277, i32 noundef 1) #10
  %279 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %202, i32 noundef 284, i32 noundef 1) #10
  %280 = load i16, ptr @compression, align 2, !tbaa !9
  %281 = icmp eq i16 %280, -1
  br i1 %281, label %299, label %282

282:                                              ; preds = %276
  %283 = zext i16 %280 to i32
  %284 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %202, i32 noundef 259, i32 noundef %283) #10
  %285 = load i16, ptr @compression, align 2, !tbaa !9
  switch i16 %285, label %299 [
    i16 7, label %286
    i16 5, label %293
    i16 -32590, label %293
  ]

286:                                              ; preds = %282
  %287 = load i32, ptr @quality, align 4, !tbaa !12
  %288 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %202, i32 noundef 65537, i32 noundef %287) #10
  %289 = load i1, ptr @jpegcolormode, align 4
  %290 = xor i1 %289, true
  %291 = zext i1 %290 to i32
  %292 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %202, i32 noundef 65538, i32 noundef %291) #10
  br label %299

293:                                              ; preds = %282, %282
  %294 = load i16, ptr @predictor, align 2, !tbaa !9
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %293
  %297 = zext i16 %294 to i32
  %298 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %202, i32 noundef 317, i32 noundef %297) #10
  br label %299

299:                                              ; preds = %286, %282, %296, %293, %276
  %300 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %202, i32 noundef 262, i32 noundef 1) #10
  %301 = load i32, ptr @optind, align 4, !tbaa !12
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds ptr, ptr %1, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !5
  %305 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %304) #10
  %306 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %202, i32 noundef 270, ptr noundef nonnull %22) #10
  %307 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %202, i32 noundef 305, ptr noundef nonnull @.str.7) #10
  %308 = call i32 @TIFFScanlineSize(ptr noundef nonnull %202) #10
  %309 = call ptr @_TIFFmalloc(i32 noundef %308) #10
  %310 = call i32 @TIFFDefaultStripSize(ptr noundef nonnull %202, i32 noundef %24) #10
  %311 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %202, i32 noundef 278, i32 noundef %310) #10
  %312 = load i16, ptr %18, align 2, !tbaa !9
  %313 = zext i16 %312 to i32
  %314 = shl nuw nsw i32 %313, 8
  %315 = load i16, ptr %17, align 2, !tbaa !9
  %316 = zext i16 %315 to i32
  %317 = or i32 %314, %316
  switch i32 %317, label %529 [
    i32 769, label %318
    i32 770, label %318
    i32 513, label %421
    i32 514, label %466
  ]

318:                                              ; preds = %299, %299
  %319 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %155, i32 noundef 320, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21) #10
  %320 = load i16, ptr %16, align 2, !tbaa !9
  %321 = zext nneg i16 %320 to i32
  %322 = shl nuw i32 1, %321
  %323 = load ptr, ptr %19, align 8, !tbaa !5
  %324 = load ptr, ptr %20, align 8, !tbaa !5
  %325 = load ptr, ptr %21, align 8, !tbaa !5
  br label %326

326:                                              ; preds = %340, %318
  %327 = phi i32 [ %322, %318 ], [ %331, %340 ]
  %328 = phi ptr [ %323, %318 ], [ %334, %340 ]
  %329 = phi ptr [ %324, %318 ], [ %341, %340 ]
  %330 = phi ptr [ %325, %318 ], [ %342, %340 ]
  %331 = add nsw i32 %327, -1
  %332 = icmp sgt i32 %327, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %326
  %334 = getelementptr inbounds i16, ptr %328, i64 1
  %335 = load i16, ptr %328, align 2, !tbaa !9
  %336 = icmp ugt i16 %335, 255
  br i1 %336, label %347, label %337

337:                                              ; preds = %333
  %338 = load i16, ptr %329, align 2, !tbaa !9
  %339 = icmp ugt i16 %338, 255
  br i1 %339, label %347, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds i16, ptr %329, i64 1
  %342 = getelementptr inbounds i16, ptr %330, i64 1
  %343 = load i16, ptr %330, align 2, !tbaa !9
  %344 = icmp ugt i16 %343, 255
  br i1 %344, label %347, label %326, !llvm.loop !24

345:                                              ; preds = %326
  %346 = call ptr @TIFFFileName(ptr noundef %155) #10
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %346, ptr noundef nonnull @.str.25) #10
  br label %347

347:                                              ; preds = %333, %337, %340, %345
  br i1 %332, label %348, label %370

348:                                              ; preds = %347
  %349 = load i16, ptr %16, align 2, !tbaa !9
  %350 = zext nneg i16 %349 to i32
  %351 = shl nsw i32 -1, %350
  %352 = xor i32 %351, -1
  %353 = load ptr, ptr %19, align 8, !tbaa !5
  %354 = load ptr, ptr %20, align 8, !tbaa !5
  %355 = load ptr, ptr %21, align 8, !tbaa !5
  %356 = zext nneg i32 %352 to i64
  br label %357

357:                                              ; preds = %348, %357
  %358 = phi i64 [ %356, %348 ], [ %368, %357 ]
  %359 = getelementptr inbounds i16, ptr %353, i64 %358
  %360 = load i16, ptr %359, align 2, !tbaa !9
  %361 = udiv i16 %360, 257
  store i16 %361, ptr %359, align 2, !tbaa !9
  %362 = getelementptr inbounds i16, ptr %354, i64 %358
  %363 = load i16, ptr %362, align 2, !tbaa !9
  %364 = udiv i16 %363, 257
  store i16 %364, ptr %362, align 2, !tbaa !9
  %365 = getelementptr inbounds i16, ptr %355, i64 %358
  %366 = load i16, ptr %365, align 2, !tbaa !9
  %367 = udiv i16 %366, 257
  store i16 %367, ptr %365, align 2, !tbaa !9
  %368 = add nsw i64 %358, -1
  %369 = icmp sgt i64 %358, 0
  br i1 %369, label %357, label %370, !llvm.loop !25

370:                                              ; preds = %357, %347
  %371 = call i32 @TIFFScanlineSize(ptr noundef nonnull %155) #10
  %372 = call ptr @_TIFFmalloc(i32 noundef %371) #10
  %373 = load i32, ptr %14, align 4, !tbaa !12
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %529, label %379

375:                                              ; preds = %418
  %376 = add nuw i32 %380, 1
  %377 = load i32, ptr %14, align 4, !tbaa !12
  %378 = icmp ult i32 %376, %377
  br i1 %378, label %379, label %529, !llvm.loop !26

379:                                              ; preds = %370, %375
  %380 = phi i32 [ %376, %375 ], [ 0, %370 ]
  %381 = call i32 @TIFFReadScanline(ptr noundef nonnull %155, ptr noundef %372, i32 noundef %380, i16 noundef zeroext 0) #10
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %529, label %383

383:                                              ; preds = %379
  %384 = load i32, ptr %13, align 4, !tbaa !12
  %385 = load ptr, ptr %19, align 8, !tbaa !5
  %386 = load ptr, ptr %20, align 8, !tbaa !5
  %387 = load ptr, ptr %21, align 8, !tbaa !5
  %388 = load i32, ptr @RED, align 4, !tbaa !12
  %389 = load i32, ptr @GREEN, align 4, !tbaa !12
  %390 = load i32, ptr @BLUE, align 4, !tbaa !12
  %391 = icmp eq i32 %384, 0
  br i1 %391, label %418, label %392

392:                                              ; preds = %383, %392
  %393 = phi ptr [ %416, %392 ], [ %309, %383 ]
  %394 = phi ptr [ %397, %392 ], [ %372, %383 ]
  %395 = phi i32 [ %396, %392 ], [ %384, %383 ]
  %396 = add i32 %395, -1
  %397 = getelementptr inbounds i8, ptr %394, i64 1
  %398 = load i8, ptr %394, align 1, !tbaa !11
  %399 = zext i8 %398 to i64
  %400 = getelementptr inbounds i16, ptr %385, i64 %399
  %401 = load i16, ptr %400, align 2, !tbaa !9
  %402 = zext i16 %401 to i32
  %403 = mul nsw i32 %388, %402
  %404 = getelementptr inbounds i16, ptr %386, i64 %399
  %405 = load i16, ptr %404, align 2, !tbaa !9
  %406 = zext i16 %405 to i32
  %407 = mul nsw i32 %389, %406
  %408 = add nsw i32 %407, %403
  %409 = getelementptr inbounds i16, ptr %387, i64 %399
  %410 = load i16, ptr %409, align 2, !tbaa !9
  %411 = zext i16 %410 to i32
  %412 = mul nsw i32 %390, %411
  %413 = add nsw i32 %408, %412
  %414 = lshr i32 %413, 8
  %415 = trunc i32 %414 to i8
  %416 = getelementptr inbounds i8, ptr %393, i64 1
  store i8 %415, ptr %393, align 1, !tbaa !11
  %417 = icmp eq i32 %396, 0
  br i1 %417, label %418, label %392, !llvm.loop !27

418:                                              ; preds = %392, %383
  %419 = call i32 @TIFFWriteScanline(ptr noundef nonnull %202, ptr noundef %309, i32 noundef %380, i16 noundef zeroext 0) #10
  %420 = icmp slt i32 %419, 0
  br i1 %420, label %529, label %375

421:                                              ; preds = %299
  %422 = call i32 @TIFFScanlineSize(ptr noundef nonnull %155) #10
  %423 = call ptr @_TIFFmalloc(i32 noundef %422) #10
  %424 = load i32, ptr %14, align 4, !tbaa !12
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %529, label %430

426:                                              ; preds = %463
  %427 = add nuw i32 %431, 1
  %428 = load i32, ptr %14, align 4, !tbaa !12
  %429 = icmp ult i32 %427, %428
  br i1 %429, label %430, label %529, !llvm.loop !28

430:                                              ; preds = %421, %426
  %431 = phi i32 [ %427, %426 ], [ 0, %421 ]
  %432 = call i32 @TIFFReadScanline(ptr noundef nonnull %155, ptr noundef %423, i32 noundef %431, i16 noundef zeroext 0) #10
  %433 = icmp slt i32 %432, 0
  br i1 %433, label %529, label %434

434:                                              ; preds = %430
  %435 = load i32, ptr %13, align 4, !tbaa !12
  %436 = load i32, ptr @RED, align 4, !tbaa !12
  %437 = load i32, ptr @GREEN, align 4, !tbaa !12
  %438 = load i32, ptr @BLUE, align 4, !tbaa !12
  %439 = icmp eq i32 %435, 0
  br i1 %439, label %463, label %440

440:                                              ; preds = %434, %440
  %441 = phi ptr [ %461, %440 ], [ %309, %434 ]
  %442 = phi ptr [ %454, %440 ], [ %423, %434 ]
  %443 = phi i32 [ %444, %440 ], [ %435, %434 ]
  %444 = add i32 %443, -1
  %445 = getelementptr inbounds i8, ptr %442, i64 1
  %446 = load i8, ptr %442, align 1, !tbaa !11
  %447 = zext i8 %446 to i32
  %448 = mul nsw i32 %436, %447
  %449 = getelementptr inbounds i8, ptr %442, i64 2
  %450 = load i8, ptr %445, align 1, !tbaa !11
  %451 = zext i8 %450 to i32
  %452 = mul nsw i32 %437, %451
  %453 = add nsw i32 %452, %448
  %454 = getelementptr inbounds i8, ptr %442, i64 3
  %455 = load i8, ptr %449, align 1, !tbaa !11
  %456 = zext i8 %455 to i32
  %457 = mul nsw i32 %438, %456
  %458 = add nsw i32 %453, %457
  %459 = lshr i32 %458, 8
  %460 = trunc i32 %459 to i8
  %461 = getelementptr inbounds i8, ptr %441, i64 1
  store i8 %460, ptr %441, align 1, !tbaa !11
  %462 = icmp eq i32 %444, 0
  br i1 %462, label %463, label %440, !llvm.loop !29

463:                                              ; preds = %440, %434
  %464 = call i32 @TIFFWriteScanline(ptr noundef nonnull %202, ptr noundef %309, i32 noundef %431, i16 noundef zeroext 0) #10
  %465 = icmp slt i32 %464, 0
  br i1 %465, label %529, label %426

466:                                              ; preds = %299
  %467 = call i32 @TIFFScanlineSize(ptr noundef nonnull %155) #10
  %468 = mul nsw i32 %467, 3
  %469 = call ptr @_TIFFmalloc(i32 noundef %468) #10
  %470 = load i32, ptr %14, align 4, !tbaa !12
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %529, label %472

472:                                              ; preds = %466
  %473 = sext i32 %467 to i64
  %474 = getelementptr inbounds i8, ptr %469, i64 %473
  %475 = shl nsw i32 %467, 1
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8, ptr %469, i64 %476
  %478 = sext i32 %467 to i64
  br label %483

479:                                              ; preds = %526
  %480 = add nuw i32 %484, 1
  %481 = load i32, ptr %14, align 4, !tbaa !12
  %482 = icmp ult i32 %480, %481
  br i1 %482, label %483, label %529, !llvm.loop !30

483:                                              ; preds = %472, %479
  %484 = phi i32 [ 0, %472 ], [ %480, %479 ]
  br label %488

485:                                              ; preds = %488
  %486 = add nuw nsw i64 %489, 1
  %487 = icmp eq i64 %486, 3
  br i1 %487, label %495, label %488, !llvm.loop !31

488:                                              ; preds = %483, %485
  %489 = phi i64 [ 0, %483 ], [ %486, %485 ]
  %490 = mul nsw i64 %489, %478
  %491 = getelementptr inbounds i8, ptr %469, i64 %490
  %492 = trunc i64 %489 to i16
  %493 = call i32 @TIFFReadScanline(ptr noundef nonnull %155, ptr noundef %491, i32 noundef %484, i16 noundef zeroext %492) #10
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %530, label %485

495:                                              ; preds = %485
  %496 = load i32, ptr %13, align 4, !tbaa !12
  %497 = load i32, ptr @RED, align 4, !tbaa !12
  %498 = load i32, ptr @GREEN, align 4, !tbaa !12
  %499 = load i32, ptr @BLUE, align 4, !tbaa !12
  %500 = icmp eq i32 %496, 0
  br i1 %500, label %526, label %501

501:                                              ; preds = %495, %501
  %502 = phi ptr [ %524, %501 ], [ %309, %495 ]
  %503 = phi ptr [ %508, %501 ], [ %469, %495 ]
  %504 = phi ptr [ %512, %501 ], [ %474, %495 ]
  %505 = phi i32 [ %507, %501 ], [ %496, %495 ]
  %506 = phi ptr [ %517, %501 ], [ %477, %495 ]
  %507 = add i32 %505, -1
  %508 = getelementptr inbounds i8, ptr %503, i64 1
  %509 = load i8, ptr %503, align 1, !tbaa !11
  %510 = zext i8 %509 to i32
  %511 = mul i32 %497, %510
  %512 = getelementptr inbounds i8, ptr %504, i64 1
  %513 = load i8, ptr %504, align 1, !tbaa !11
  %514 = zext i8 %513 to i32
  %515 = mul i32 %498, %514
  %516 = add i32 %515, %511
  %517 = getelementptr inbounds i8, ptr %506, i64 1
  %518 = load i8, ptr %506, align 1, !tbaa !11
  %519 = zext i8 %518 to i32
  %520 = mul i32 %499, %519
  %521 = add i32 %516, %520
  %522 = lshr i32 %521, 8
  %523 = trunc i32 %522 to i8
  %524 = getelementptr inbounds i8, ptr %502, i64 1
  store i8 %523, ptr %502, align 1, !tbaa !11
  %525 = icmp eq i32 %507, 0
  br i1 %525, label %526, label %501, !llvm.loop !32

526:                                              ; preds = %501, %495
  %527 = call i32 @TIFFWriteScanline(ptr noundef nonnull %202, ptr noundef %309, i32 noundef %484, i16 noundef zeroext 0) #10
  %528 = icmp slt i32 %527, 0
  br i1 %528, label %529, label %479

529:                                              ; preds = %526, %479, %463, %430, %426, %418, %379, %375, %466, %421, %370, %299
  call void @TIFFClose(ptr noundef nonnull %155) #10
  call void @TIFFClose(ptr noundef nonnull %202) #10
  br label %530

530:                                              ; preds = %488, %193, %151, %529, %186, %174, %162
  %531 = phi i32 [ -1, %162 ], [ -1, %174 ], [ -1, %186 ], [ 0, %529 ], [ -1, %151 ], [ -1, %193 ], [ -1, %488 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  ret i32 %531
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @TIFFOpen(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #3

declare i32 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #3

declare i32 @TIFFDefaultStripSize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @TIFFReadScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

declare i32 @TIFFWriteScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @TIFFClose(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @TIFFFileName(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !15}
!17 = !{!18, !10, i64 0}
!18 = !{!"cpTag", !10, i64 0, !10, i64 2, !13, i64 4}
!19 = !{!18, !10, i64 2}
!20 = !{!18, !13, i64 4}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !7, i64 0}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
