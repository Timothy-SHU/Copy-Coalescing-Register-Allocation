; ModuleID = 'src/tiffdither.c'
source_filename = "src/tiffdither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@threshold = dso_local local_unnamed_addr global i32 128, align 4
@.str = private unnamed_addr constant [9 x i8] c"c:f:r:t:\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"lsb2msb\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"msb2lsb\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"%s: Not a b&w image.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c" %s: Sorry, only handle 8-bit samples.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@imagewidth = dso_local global i32 0, align 4
@imagelength = dso_local global i32 0, align 4
@compression = internal unnamed_addr global i16 -32763, align 2
@.str.7 = private unnamed_addr constant [27 x i8] c"Dithered B&W version of %s\00", align 1
@group3options = internal unnamed_addr global i32 0, align 4
@predictor = internal unnamed_addr global i16 0, align 2
@.str.8 = private unnamed_addr constant [49 x i8] c"usage: tiffdither [options] input.tif output.tif\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"where options are:\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c" -r #\09\09make each strip have no more than # rows\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c" -f lsb2msb\09force lsb-to-msb FillOrder for output\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c" -f msb2lsb\09force msb-to-lsb FillOrder for output\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c" -c lzw[:opts]\09compress output with Lempel-Ziv & Welch encoding\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"               (no longer supported due to Unisys patent enforcement)\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c" -c zip[:opts]\09compress output with deflate encoding\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c" -c packbits\09compress output with packbits encoding\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c" -c g3[:opts]\09compress output with CCITT Group 3 encoding\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c" -c g4\09\09compress output with CCITT Group 4 encoding\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c" -c none\09use no compression algorithm on output\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Group 3 options:\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c" 1d\09\09use default CCITT Group 3 1D-encoding\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c" 2d\09\09use optional CCITT Group 3 2D-encoding\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c" fill\09\09byte-align EOL codes\00", align 1
@.str.25 = private unnamed_addr constant [76 x i8] c"For example, -c g3:2d:fill to get G3-2D-encoded data with byte-aligned EOLs\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"LZW and deflate options:\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c" #\09\09set predictor value\00", align 1
@.str.28 = private unnamed_addr constant [75 x i8] c"For example, -c lzw:2 to get LZW-encoded data with horizontal differencing\00", align 1
@stuff = dso_local local_unnamed_addr global [23 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.20, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr null], align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"packbits\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"g3\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"g4\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"lzw\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"1d\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"2d\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main1(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [8192 x i8], align 16
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [8192 x i8], align 16
  %7 = alloca [8192 x i8], align 16
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca float, align 4
  %12 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  store i16 1, ptr %9, align 2, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %12) #9
  br label %13

13:                                               ; preds = %97, %2
  %14 = phi i32 [ -1, %2 ], [ %98, %97 ]
  %15 = phi i16 [ 0, %2 ], [ %99, %97 ]
  %16 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #9
  switch i32 %16, label %97 [
    i32 -1, label %162
    i32 99, label %17
    i32 102, label %114
    i32 114, label %135
    i32 116, label %139
    i32 63, label %148
  ]

17:                                               ; preds = %13
  %18 = load ptr, ptr @optarg, align 8, !tbaa !9
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(5) @.str.29) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i16 1, ptr @compression, align 2, !tbaa !5
  br label %97

22:                                               ; preds = %17
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(9) @.str.30) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i16 -32763, ptr @compression, align 2, !tbaa !5
  br label %97

26:                                               ; preds = %22
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(3) @.str.31, i64 noundef 2) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %26
  %30 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %18, i32 noundef 58) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %70, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @group3options, align 4, !tbaa !11
  br label %34

34:                                               ; preds = %66, %32
  %35 = phi i32 [ %67, %66 ], [ %33, %32 ]
  %36 = phi ptr [ %68, %66 ], [ %30, %32 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(3) @.str.35, i64 noundef 2) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = and i32 %35, -2
  br label %66

42:                                               ; preds = %34
  %43 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(3) @.str.36, i64 noundef 2) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = or i32 %35, 1
  br label %66

47:                                               ; preds = %42
  %48 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(5) @.str.37, i64 noundef 4) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = or i32 %35, 4
  br label %66

52:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %7) #9
  %53 = load ptr, ptr @stderr, align 8, !tbaa !9
  call void @setbuf(ptr noundef %53, ptr noundef nonnull %7) #9
  %54 = load ptr, ptr @stuff, align 16, !tbaa !9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52, %56
  %57 = phi i64 [ %61, %56 ], [ 0, %52 ]
  %58 = phi ptr [ %63, %56 ], [ %54, %52 ]
  %59 = load ptr, ptr @stderr, align 8, !tbaa !9
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.38, ptr noundef nonnull %58) #11
  %61 = add nuw i64 %57, 1
  %62 = getelementptr inbounds [23 x ptr], ptr @stuff, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !9
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %56, !llvm.loop !13

65:                                               ; preds = %56, %52
  call void @exit(i32 noundef 1) #12
  unreachable

66:                                               ; preds = %50, %45, %40
  %67 = phi i32 [ %51, %50 ], [ %46, %45 ], [ %41, %40 ]
  store i32 %67, ptr @group3options, align 4, !tbaa !11
  %68 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %37, i32 noundef 58) #10
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %34, !llvm.loop !15

70:                                               ; preds = %66, %29
  store i16 3, ptr @compression, align 2, !tbaa !5
  br label %97

71:                                               ; preds = %26
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(3) @.str.32) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i16 4, ptr @compression, align 2, !tbaa !5
  br label %97

75:                                               ; preds = %71
  %76 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(4) @.str.33, i64 noundef 3) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %18, i32 noundef 58) #10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds i8, ptr %79, i64 1
  %83 = tail call i64 @strtol(ptr nocapture noundef nonnull %82, ptr noundef null, i32 noundef 10) #9
  %84 = trunc i64 %83 to i16
  store i16 %84, ptr @predictor, align 2, !tbaa !5
  br label %85

85:                                               ; preds = %81, %78
  store i16 5, ptr @compression, align 2, !tbaa !5
  br label %97

86:                                               ; preds = %75
  %87 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(4) @.str.34, i64 noundef 3) #10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %18, i32 noundef 58) #10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds i8, ptr %90, i64 1
  %94 = tail call i64 @strtol(ptr nocapture noundef nonnull %93, ptr noundef null, i32 noundef 10) #9
  %95 = trunc i64 %94 to i16
  store i16 %95, ptr @predictor, align 2, !tbaa !5
  br label %96

96:                                               ; preds = %92, %89
  store i16 -32590, ptr @compression, align 2, !tbaa !5
  br label %97

97:                                               ; preds = %96, %85, %74, %70, %25, %21, %118, %114, %13, %144, %147, %145, %135
  %98 = phi i32 [ %14, %144 ], [ %14, %147 ], [ %14, %145 ], [ %138, %135 ], [ %14, %13 ], [ %14, %114 ], [ %14, %118 ], [ %14, %21 ], [ %14, %25 ], [ %14, %70 ], [ %14, %74 ], [ %14, %85 ], [ %14, %96 ]
  %99 = phi i16 [ %15, %144 ], [ %15, %147 ], [ %15, %145 ], [ %15, %135 ], [ %15, %13 ], [ 2, %114 ], [ 1, %118 ], [ %15, %21 ], [ %15, %25 ], [ %15, %70 ], [ %15, %74 ], [ %15, %85 ], [ %15, %96 ]
  br label %13, !llvm.loop !16

100:                                              ; preds = %86
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %6) #9
  %101 = load ptr, ptr @stderr, align 8, !tbaa !9
  call void @setbuf(ptr noundef %101, ptr noundef nonnull %6) #9
  %102 = load ptr, ptr @stuff, align 16, !tbaa !9
  %103 = icmp eq ptr %102, null
  br i1 %103, label %113, label %104

104:                                              ; preds = %100, %104
  %105 = phi i64 [ %109, %104 ], [ 0, %100 ]
  %106 = phi ptr [ %111, %104 ], [ %102, %100 ]
  %107 = load ptr, ptr @stderr, align 8, !tbaa !9
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef nonnull @.str.38, ptr noundef nonnull %106) #11
  %109 = add nuw i64 %105, 1
  %110 = getelementptr inbounds [23 x ptr], ptr @stuff, i64 0, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !9
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %104, !llvm.loop !13

113:                                              ; preds = %104, %100
  call void @exit(i32 noundef 1) #12
  unreachable

114:                                              ; preds = %13
  %115 = load ptr, ptr @optarg, align 8, !tbaa !9
  %116 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %115, ptr noundef nonnull dereferenceable(8) @.str.1) #10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %97, label %118

118:                                              ; preds = %114
  %119 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %115, ptr noundef nonnull dereferenceable(8) @.str.2) #10
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %97, label %121

121:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #9
  %122 = load ptr, ptr @stderr, align 8, !tbaa !9
  call void @setbuf(ptr noundef %122, ptr noundef nonnull %5) #9
  %123 = load ptr, ptr @stuff, align 16, !tbaa !9
  %124 = icmp eq ptr %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %121, %125
  %126 = phi i64 [ %130, %125 ], [ 0, %121 ]
  %127 = phi ptr [ %132, %125 ], [ %123, %121 ]
  %128 = load ptr, ptr @stderr, align 8, !tbaa !9
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.38, ptr noundef nonnull %127) #11
  %130 = add nuw i64 %126, 1
  %131 = getelementptr inbounds [23 x ptr], ptr @stuff, i64 0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !9
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %125, !llvm.loop !13

134:                                              ; preds = %125, %121
  call void @exit(i32 noundef 1) #12
  unreachable

135:                                              ; preds = %13
  %136 = load ptr, ptr @optarg, align 8, !tbaa !9
  %137 = tail call i64 @strtol(ptr nocapture noundef nonnull %136, ptr noundef null, i32 noundef 10) #9
  %138 = trunc i64 %137 to i32
  br label %97

139:                                              ; preds = %13
  %140 = load ptr, ptr @optarg, align 8, !tbaa !9
  %141 = tail call i64 @strtol(ptr nocapture noundef nonnull %140, ptr noundef null, i32 noundef 10) #9
  %142 = trunc i64 %141 to i32
  store i32 %142, ptr @threshold, align 4, !tbaa !11
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store i32 0, ptr @threshold, align 4, !tbaa !11
  br label %97

145:                                              ; preds = %139
  %146 = icmp sgt i32 %142, 255
  br i1 %146, label %147, label %97

147:                                              ; preds = %145
  store i32 255, ptr @threshold, align 4, !tbaa !11
  br label %97

148:                                              ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #9
  %149 = load ptr, ptr @stderr, align 8, !tbaa !9
  call void @setbuf(ptr noundef %149, ptr noundef nonnull %4) #9
  %150 = load ptr, ptr @stuff, align 16, !tbaa !9
  %151 = icmp eq ptr %150, null
  br i1 %151, label %161, label %152

152:                                              ; preds = %148, %152
  %153 = phi i64 [ %157, %152 ], [ 0, %148 ]
  %154 = phi ptr [ %159, %152 ], [ %150, %148 ]
  %155 = load ptr, ptr @stderr, align 8, !tbaa !9
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.38, ptr noundef nonnull %154) #11
  %157 = add nuw i64 %153, 1
  %158 = getelementptr inbounds [23 x ptr], ptr @stuff, i64 0, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !9
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %152, !llvm.loop !13

161:                                              ; preds = %152, %148
  call void @exit(i32 noundef 1) #12
  unreachable

162:                                              ; preds = %13
  %163 = load i32, ptr @optind, align 4, !tbaa !11
  %164 = sub nsw i32 %0, %163
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %166, label %180

166:                                              ; preds = %162
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #9
  %167 = load ptr, ptr @stderr, align 8, !tbaa !9
  call void @setbuf(ptr noundef %167, ptr noundef nonnull %3) #9
  %168 = load ptr, ptr @stuff, align 16, !tbaa !9
  %169 = icmp eq ptr %168, null
  br i1 %169, label %179, label %170

170:                                              ; preds = %166, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %166 ]
  %172 = phi ptr [ %177, %170 ], [ %168, %166 ]
  %173 = load ptr, ptr @stderr, align 8, !tbaa !9
  %174 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef nonnull @.str.38, ptr noundef nonnull %172) #11
  %175 = add nuw i64 %171, 1
  %176 = getelementptr inbounds [23 x ptr], ptr @stuff, i64 0, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !9
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %170, !llvm.loop !13

179:                                              ; preds = %170, %166
  call void @exit(i32 noundef 1) #12
  unreachable

180:                                              ; preds = %162
  %181 = sext i32 %163 to i64
  %182 = getelementptr inbounds ptr, ptr %1, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !9
  %184 = tail call ptr @TIFFOpen(ptr noundef %183, ptr noundef nonnull @.str.3) #9
  %185 = icmp eq ptr %184, null
  br i1 %185, label %406, label %186

186:                                              ; preds = %180
  %187 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %184, i32 noundef 277, ptr noundef nonnull %8) #9
  %188 = load i16, ptr %8, align 2, !tbaa !5
  %189 = icmp eq i16 %188, 1
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load ptr, ptr @stderr, align 8, !tbaa !9
  %192 = load ptr, ptr %1, align 8, !tbaa !9
  %193 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef nonnull @.str.4, ptr noundef %192) #11
  br label %406

194:                                              ; preds = %186
  %195 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %184, i32 noundef 258, ptr noundef nonnull %9) #9
  %196 = load i16, ptr %9, align 2, !tbaa !5
  %197 = icmp eq i16 %196, 8
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr @stderr, align 8, !tbaa !9
  %200 = load ptr, ptr %1, align 8, !tbaa !9
  %201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %199, ptr noundef nonnull @.str.5, ptr noundef %200) #11
  br label %406

202:                                              ; preds = %194
  %203 = load i32, ptr @optind, align 4, !tbaa !11
  %204 = sext i32 %203 to i64
  %205 = getelementptr ptr, ptr %1, i64 %204
  %206 = getelementptr ptr, ptr %205, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !9
  %208 = call ptr @TIFFOpen(ptr noundef %207, ptr noundef nonnull @.str.6) #9
  %209 = icmp eq ptr %208, null
  br i1 %209, label %406, label %210

210:                                              ; preds = %202
  %211 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %184, i32 noundef 256, ptr noundef nonnull @imagewidth) #9
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load i32, ptr @imagewidth, align 4, !tbaa !11
  %215 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 256, i32 noundef %214) #9
  br label %216

216:                                              ; preds = %213, %210
  %217 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %184, i32 noundef 257, ptr noundef nonnull @imagelength) #9
  %218 = load i32, ptr @imagelength, align 4, !tbaa !11
  %219 = add i32 %218, -1
  %220 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 257, i32 noundef %219) #9
  %221 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 258, i32 noundef 1) #9
  %222 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 277, i32 noundef 1) #9
  %223 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 284, i32 noundef 1) #9
  %224 = load i16, ptr @compression, align 2, !tbaa !5
  %225 = zext i16 %224 to i32
  %226 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 259, i32 noundef %225) #9
  %227 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 262, i32 noundef 1) #9
  %228 = zext nneg i16 %15 to i32
  %229 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 266, i32 noundef %228) #9
  %230 = load i32, ptr @optind, align 4, !tbaa !11
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds ptr, ptr %1, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !9
  %234 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %233) #9
  %235 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 270, ptr noundef nonnull %12) #9
  %236 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %184, i32 noundef 274, ptr noundef nonnull %10) #9
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %216
  %239 = load i16, ptr %10, align 2, !tbaa !5
  %240 = zext i16 %239 to i32
  %241 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 274, i32 noundef %240) #9
  br label %242

242:                                              ; preds = %238, %216
  %243 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %184, i32 noundef 282, ptr noundef nonnull %11) #9
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = load float, ptr %11, align 4, !tbaa !17
  %247 = fpext float %246 to double
  %248 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 282, double noundef %247) #9
  br label %249

249:                                              ; preds = %245, %242
  %250 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %184, i32 noundef 283, ptr noundef nonnull %11) #9
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %249
  %253 = load float, ptr %11, align 4, !tbaa !17
  %254 = fpext float %253 to double
  %255 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 283, double noundef %254) #9
  br label %256

256:                                              ; preds = %252, %249
  %257 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %184, i32 noundef 296, ptr noundef nonnull %10) #9
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %256
  %260 = load i16, ptr %10, align 2, !tbaa !5
  %261 = zext i16 %260 to i32
  %262 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 296, i32 noundef %261) #9
  br label %263

263:                                              ; preds = %256, %259
  %264 = call i32 @TIFFDefaultStripSize(ptr noundef nonnull %208, i32 noundef %14) #9
  %265 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 278, i32 noundef %264) #9
  %266 = load i16, ptr @compression, align 2, !tbaa !5
  switch i16 %266, label %276 [
    i16 3, label %267
    i16 5, label %270
    i16 -32590, label %270
  ]

267:                                              ; preds = %263
  %268 = load i32, ptr @group3options, align 4, !tbaa !11
  %269 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 292, i32 noundef %268) #9
  br label %276

270:                                              ; preds = %263, %263
  %271 = load i16, ptr @predictor, align 2, !tbaa !5
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %270
  %274 = zext i16 %271 to i32
  %275 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %208, i32 noundef 317, i32 noundef %274) #9
  br label %276

276:                                              ; preds = %270, %273, %263, %267
  %277 = load i32, ptr @imagelength, align 4, !tbaa !11
  %278 = add i32 %277, -1
  %279 = load i32, ptr @imagewidth, align 4, !tbaa !11
  %280 = add i32 %279, -1
  %281 = call i32 @TIFFScanlineSize(ptr noundef nonnull %184) #9
  %282 = call ptr @_TIFFmalloc(i32 noundef %281) #9
  %283 = load i32, ptr @imagewidth, align 4, !tbaa !11
  %284 = shl i32 %283, 1
  %285 = call ptr @_TIFFmalloc(i32 noundef %284) #9
  %286 = load i32, ptr @imagewidth, align 4, !tbaa !11
  %287 = shl i32 %286, 1
  %288 = call ptr @_TIFFmalloc(i32 noundef %287) #9
  %289 = call i32 @TIFFScanlineSize(ptr noundef %208) #9
  %290 = call ptr @_TIFFmalloc(i32 noundef %289) #9
  %291 = call i32 @TIFFReadScanline(ptr noundef nonnull %184, ptr noundef %282, i32 noundef 0, i16 noundef zeroext 0) #9
  %292 = icmp slt i32 %291, 1
  br i1 %292, label %405, label %293

293:                                              ; preds = %276
  %294 = load i32, ptr @imagewidth, align 4, !tbaa !11
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %299, %293
  %297 = load i32, ptr @imagelength, align 4, !tbaa !11
  %298 = icmp ugt i32 %297, 1
  br i1 %298, label %313, label %402

299:                                              ; preds = %293, %299
  %300 = phi ptr [ %303, %299 ], [ %282, %293 ]
  %301 = phi i32 [ %307, %299 ], [ 0, %293 ]
  %302 = phi ptr [ %306, %299 ], [ %288, %293 ]
  %303 = getelementptr inbounds i8, ptr %300, i64 1
  %304 = load i8, ptr %300, align 1, !tbaa !19
  %305 = zext i8 %304 to i16
  %306 = getelementptr inbounds i16, ptr %302, i64 1
  store i16 %305, ptr %302, align 2, !tbaa !5
  %307 = add nuw i32 %301, 1
  %308 = icmp eq i32 %307, %294
  br i1 %308, label %296, label %299, !llvm.loop !20

309:                                              ; preds = %398
  %310 = add nuw i32 %316, 1
  %311 = load i32, ptr @imagelength, align 4, !tbaa !11
  %312 = icmp ult i32 %310, %311
  br i1 %312, label %313, label %402, !llvm.loop !21

313:                                              ; preds = %296, %309
  %314 = phi ptr [ %315, %309 ], [ %285, %296 ]
  %315 = phi ptr [ %314, %309 ], [ %288, %296 ]
  %316 = phi i32 [ %310, %309 ], [ 1, %296 ]
  %317 = icmp eq i32 %316, %278
  %318 = call i32 @TIFFReadScanline(ptr noundef nonnull %184, ptr noundef %282, i32 noundef %316, i16 noundef zeroext 0) #9
  %319 = icmp slt i32 %318, 1
  br i1 %319, label %402, label %320

320:                                              ; preds = %313
  %321 = load i32, ptr @imagewidth, align 4, !tbaa !11
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %333, label %323

323:                                              ; preds = %320, %323
  %324 = phi ptr [ %327, %323 ], [ %282, %320 ]
  %325 = phi i32 [ %331, %323 ], [ 0, %320 ]
  %326 = phi ptr [ %330, %323 ], [ %314, %320 ]
  %327 = getelementptr inbounds i8, ptr %324, i64 1
  %328 = load i8, ptr %324, align 1, !tbaa !19
  %329 = zext i8 %328 to i16
  %330 = getelementptr inbounds i16, ptr %326, i64 1
  store i16 %329, ptr %326, align 2, !tbaa !5
  %331 = add nuw i32 %325, 1
  %332 = icmp eq i32 %331, %321
  br i1 %332, label %333, label %323, !llvm.loop !22

333:                                              ; preds = %323, %320
  call void @_TIFFmemset(ptr noundef %290, i32 noundef 0, i32 noundef %289) #9
  %334 = load i32, ptr @imagewidth, align 4, !tbaa !11
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %398, label %336

336:                                              ; preds = %333, %393
  %337 = phi i32 [ %364, %393 ], [ 128, %333 ]
  %338 = phi ptr [ %363, %393 ], [ %290, %333 ]
  %339 = phi ptr [ %343, %393 ], [ %315, %333 ]
  %340 = phi i32 [ %395, %393 ], [ 0, %333 ]
  %341 = phi ptr [ %394, %393 ], [ %314, %333 ]
  %342 = icmp eq i32 %340, %280
  %343 = getelementptr inbounds i16, ptr %339, i64 1
  %344 = load i16, ptr %339, align 2, !tbaa !5
  %345 = icmp slt i16 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %336
  %347 = call i16 @llvm.smin.i16(i16 %344, i16 255)
  %348 = zext nneg i16 %347 to i32
  br label %349

349:                                              ; preds = %346, %336
  %350 = phi i32 [ %348, %346 ], [ 0, %336 ]
  %351 = load i32, ptr @threshold, align 4, !tbaa !11
  %352 = icmp sgt i32 %350, %351
  br i1 %352, label %353, label %358

353:                                              ; preds = %349
  %354 = load i8, ptr %338, align 1, !tbaa !19
  %355 = trunc i32 %337 to i8
  %356 = or i8 %354, %355
  store i8 %356, ptr %338, align 1, !tbaa !19
  %357 = add nsw i32 %350, -255
  br label %358

358:                                              ; preds = %353, %349
  %359 = phi i32 [ %357, %353 ], [ %350, %349 ]
  %360 = ashr i32 %337, 1
  %361 = icmp ult i32 %337, 2
  %362 = zext i1 %361 to i64
  %363 = getelementptr inbounds i8, ptr %338, i64 %362
  %364 = select i1 %361, i32 128, i32 %360
  br i1 %342, label %371, label %365

365:                                              ; preds = %358
  %366 = mul nsw i32 %359, 7
  %367 = sdiv i32 %366, 16
  %368 = load i16, ptr %343, align 2, !tbaa !5
  %369 = trunc i32 %367 to i16
  %370 = add i16 %368, %369
  store i16 %370, ptr %343, align 2, !tbaa !5
  br label %371

371:                                              ; preds = %365, %358
  br i1 %317, label %393, label %372

372:                                              ; preds = %371
  %373 = icmp eq i32 %340, 0
  br i1 %373, label %381, label %374

374:                                              ; preds = %372
  %375 = mul nsw i32 %359, 3
  %376 = sdiv i32 %375, 16
  %377 = getelementptr inbounds i16, ptr %341, i64 -1
  %378 = load i16, ptr %377, align 2, !tbaa !5
  %379 = trunc i32 %376 to i16
  %380 = add i16 %378, %379
  store i16 %380, ptr %377, align 2, !tbaa !5
  br label %381

381:                                              ; preds = %374, %372
  %382 = mul nsw i32 %359, 5
  %383 = sdiv i32 %382, 16
  %384 = getelementptr inbounds i16, ptr %341, i64 1
  %385 = load i16, ptr %341, align 2, !tbaa !5
  %386 = trunc i32 %383 to i16
  %387 = add i16 %385, %386
  store i16 %387, ptr %341, align 2, !tbaa !5
  br i1 %342, label %393, label %388

388:                                              ; preds = %381
  %389 = sdiv i32 %359, 16
  %390 = load i16, ptr %384, align 2, !tbaa !5
  %391 = trunc i32 %389 to i16
  %392 = add i16 %390, %391
  store i16 %392, ptr %384, align 2, !tbaa !5
  br label %393

393:                                              ; preds = %388, %381, %371
  %394 = phi ptr [ %341, %371 ], [ %384, %381 ], [ %384, %388 ]
  %395 = add nuw i32 %340, 1
  %396 = load i32, ptr @imagewidth, align 4, !tbaa !11
  %397 = icmp ult i32 %395, %396
  br i1 %397, label %336, label %398, !llvm.loop !23

398:                                              ; preds = %393, %333
  %399 = add i32 %316, -1
  %400 = call i32 @TIFFWriteScanline(ptr noundef %208, ptr noundef %290, i32 noundef %399, i16 noundef zeroext 0) #9
  %401 = icmp slt i32 %400, 0
  br i1 %401, label %402, label %309

402:                                              ; preds = %398, %313, %309, %296
  %403 = phi ptr [ %288, %296 ], [ %314, %309 ], [ %314, %313 ], [ %314, %398 ]
  %404 = phi ptr [ %285, %296 ], [ %315, %309 ], [ %315, %313 ], [ %315, %398 ]
  call void @_TIFFfree(ptr noundef %282) #9
  call void @_TIFFfree(ptr noundef %404) #9
  call void @_TIFFfree(ptr noundef %403) #9
  call void @_TIFFfree(ptr noundef %290) #9
  br label %405

405:                                              ; preds = %276, %402
  call void @TIFFClose(ptr noundef nonnull %184) #9
  call void @TIFFClose(ptr noundef nonnull %208) #9
  br label %406

406:                                              ; preds = %202, %180, %405, %198, %190
  %407 = phi i32 [ -1, %190 ], [ -1, %198 ], [ 0, %405 ], [ -1, %180 ], [ -1, %202 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  ret i32 %407
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @TIFFOpen(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare i32 @TIFFDefaultStripSize(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @TIFFClose(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #4

declare i32 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #4

declare i32 @TIFFReadScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @TIFFWriteScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !7, i64 0}
!19 = !{!7, !7, i64 0}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
