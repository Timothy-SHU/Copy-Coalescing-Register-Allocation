; ModuleID = 'image_validator/ImageValidator.c'
source_filename = "image_validator/ImageValidator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.params = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, double, i32, double, i32, ptr, i32, i32 }
%struct.TargaImage = type { i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i8, [256 x i8], ptr, ptr, i8 }
%struct.Pixel = type { i8, i8, i8, i8 }
%struct.YUV = type { i8, i8, i8 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"ImageValidator %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-debug\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-dumpfile\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"-dumpheader\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"-dumpluma\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-avg\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"-width\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"-height\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"-buckets\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"-maxthreshold\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"INFO: max threshold set to %d absolute, %f relative\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"-diff\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"-threshold\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"INFO: threshold set to %f\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"-conv\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"709\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"rec709\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"REC709\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"INFO: ITU-R Rec. 709 (HDTV) luma conversion selected\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"601\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"rec601\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"REC601\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"INFO: ITU-R Rec. 601 (HDTV) conversion selected\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"HSP\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"HSP299\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"hsp\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"hsp299\00", align 1
@.str.27 = private unnamed_addr constant [71 x i8] c"INFO: HSP299 (http://alienryderflex.com/hsp.html) conversion selected\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"\0AERROR: Unrecognized conversion formula '%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"\0AERROR: Unrecognized argument '%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"\0AERROR: More than two files given.\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"\0A\0AERROR: Missing input file name.\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"\0A\0AERROR: Missing diff output file name.\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"\0A\0AERROR: threshold must be between 0.0 and 1.0\0A\00", align 1
@.str.36 = private unnamed_addr constant [63 x i8] c"\0A\0AERROR: maximum threshold percentage must be less than 100%%\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"Failed to allocate %lu bytes at %s:%d\0A\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"image_validator/ImageValidator.c\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c".1\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c".2\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"%s.new.tga\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"%s.luma.tga\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"ERROR: Image sizes don't match (%ux%u vs %ux%u)\0A\00", align 1
@.str.45 = private unnamed_addr constant [54 x i8] c"ERROR: Unknown luma conversion method '%d' specified\0A\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"(%5d,%5d) (%3d, %3d, %3d) => %0.5g (%u)\0A\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"              (%3d, %3d, %3d) => %0.5g (%u)\0A\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"(%d,%d)  SSIM = %10.9f\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [35 x i8] c"means:\09img1: %0.40g\0A\09img2: %0.40g\0A\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"variances:\09img1: %0.40g\0A\09\09img2: %0.40g\0A\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"covariance: %0.40g\0A\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"(%d,%d) ssim: %0.40g (%u)\0A\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"%s ERROR:\0A\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"%s: INFO:\0A\00", align 1
@.str.56 = private unnamed_addr constant [62 x i8] c"  Blocks below threshold: %d blocks of %d allowed (%d total)\0A\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"                AVG SSIM: %10.9f\0A\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"                MIN SSIM: %10.9f\0A\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"%s: AVG SSIM = %10.9f\0A\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"%s: ERROR: Count is zero.\0A\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"       SSIM distribution:%c\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"         [        % 4.3f]: %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"         [% 4.3f, % 4.3f): %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c".yuv\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"'%s' is an unknown file type.\0A\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c".org\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c".orig\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"'%s': Could not open for read\0A\00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"%s: Error reading Y data: Only got %d of %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [45 x i8] c"%s: Error reading U data: Only got %d of %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"%s: Error reading V data: Only got %d of %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"HEADER DUMP FOR %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [26 x i8] c"BAD TargaImage STRUCTURE\0A\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"No image data\00", align 1
@.str.77 = private unnamed_addr constant [43 x i8] c"%s%u-bit TrueColor image; %d bits of alpha\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"RLE-encoded \00", align 1
@.str.79 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.80 = private unnamed_addr constant [35 x i8] c"%s%u-bit TrueColor image; no alpha\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"%s%u-bit grayscale image\00", align 1
@.str.82 = private unnamed_addr constant [28 x i8] c"%s%u-bit color-mapped image\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"UNSUPPORTED/UNKNOWN image\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"IDLENGTH=%u\0A\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"COLORMAPTYPE=%u\0A\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"DATATYPECODE=%u (%s)\0A\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"COLORMAPORIGIN=%u\0A\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"COLORMAPLENGTH=%u\0A\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"COLORMAPDEPTH=%u\0A\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"X_ORIGIN=%u\0A\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"Y_ORIGIN=%u\0A\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"WIDTH=%u\0A\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"HEIGHT=%u\0A\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"BITSPERPIXEL=%u\0A\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"IMAGEDESCRIPTOR=%u\0A\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"'%s': Could not open for writing\0A\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"vUNKNOWN\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"ImageValidator\00", align 1
@.str.101 = private unnamed_addr constant [38 x i8] c"\0AUsage: %s [options] <file1> <file2>\0A\00", align 1
@.str.102 = private unnamed_addr constant [1484 x i8] c"  <file1> and <file2> must be either uncompressed Targa (TGA) format or raw\0A                      YUV-422 data.\0AOptions:\0A  -avg              Do not print block-by-block similarity scores; instead, \0A                    just print the average SSIM.\0A  -buckets <n>      Print SSIM histogram with <n> buckets\0A  -conv <method>    Select the method to convert RGB to brightness, one of:\0A                      REC709  ITU-R Rec. 709 (HDTV) coeffiecients (default)\0A                      REC601  ITU-R Rec. 601 (SDTV) coeffiecients\0A                      HSP     P from HSP http://alienryderflex.com/hsp.html\0A  -debug            Print debug information to stderr; may be repeated\0A  -diff <file>      Print the pixel differences to a Targa file\0A  -dumpfile         Dump the input files to Targa file\0A  -dumpheader       Dump the image file Targa header info to stderr\0A  -dumpluma         Dump the luma data to Targa files\0A  -height           Height of the image (YUV input only). Default 720\0A  -help             Print this message\0A  -maxthreshold <n> Report an error if the number of blocks below the \0A                    threshold is greater than <n>, where <n> can be an \0A                    absolute number of blocks, or a fraction, or a \0A                    percent (e.g. \221%%\22 or \220.01\22).\0A  -threshold <n>    Count the number of blocks with SSIM below <n>, \0A                    where <n> is a number between 0 and 1\0A  -width            Width of the image (YUV input only). Default is 1280\0A\00", align 1
@.str.103 = private unnamed_addr constant [29 x i8] c"$LastChangedRevision: 4696 $\00", align 1
@str = private unnamed_addr constant [73 x i8] c"\0A\0AERROR: The number of buckets must be an even number between 2 and 100.\00", align 1
@str.104 = private unnamed_addr constant [125 x i8] c"Compare two images using the Structural SIMilarity (SSIM) index method.\0ASSIM values are calculated for blocks of 8x8 pixels.\00", align 1
@str.105 = private unnamed_addr constant [66 x i8] c"The maximum number of SSIM below the threshold has been reached. \00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !69 {
  %3 = alloca %struct.params, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #19
  %4 = tail call ptr @get_version()
  %5 = load ptr, ptr @stderr, align 8, !tbaa !70
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %4) #20
  tail call void @free(ptr noundef %4) #19
  %7 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 12
  %8 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 14
  %9 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  store i32 20, ptr %9, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 17
  store i32 1280, ptr %10, align 8, !tbaa !78
  %11 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 18
  store i32 720, ptr %11, align 4, !tbaa !79
  %12 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 11
  store i32 0, ptr %12, align 4, !tbaa !80
  %13 = icmp sgt i32 %0, 1
  br i1 %13, label %14, label %18, !prof !81

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 2
  %16 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 13
  %17 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 10
  br label %22

18:                                               ; preds = %224, %2
  %19 = phi i32 [ 0, %2 ], [ %225, %224 ]
  %20 = phi i32 [ 0, %2 ], [ %227, %224 ]
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %232, label %230, !prof !82

22:                                               ; preds = %14, %224
  %23 = phi i32 [ 0, %14 ], [ %227, %224 ]
  %24 = phi i32 [ 1, %14 ], [ %228, %224 ]
  %25 = phi i32 [ 0, %14 ], [ %225, %224 ]
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds ptr, ptr %1, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.1, ptr noundef nonnull dereferenceable(1) %28) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38, !prof !83

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 10
  %33 = load i16, ptr %32, align 8
  %34 = add i16 %33, 64
  %35 = and i16 %34, 448
  %36 = and i16 %33, -449
  %37 = or disjoint i16 %35, %36
  store i16 %37, ptr %32, align 8
  br label %224

38:                                               ; preds = %22
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.2, ptr noundef nonnull dereferenceable(1) %28) #21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45, !prof !83

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 10
  %43 = load i16, ptr %42, align 8
  %44 = or i16 %43, 1
  store i16 %44, ptr %42, align 8
  br label %224

45:                                               ; preds = %38
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.3, ptr noundef nonnull dereferenceable(1) %28) #21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52, !prof !83

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 10
  %50 = load i16, ptr %49, align 8
  %51 = or i16 %50, 2
  store i16 %51, ptr %49, align 8
  br label %224

52:                                               ; preds = %45
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.4, ptr noundef nonnull dereferenceable(1) %28) #21
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59, !prof !83

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 10
  %57 = load i16, ptr %56, align 8
  %58 = or i16 %57, 8
  store i16 %58, ptr %56, align 8
  br label %224

59:                                               ; preds = %52
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.5, ptr noundef nonnull dereferenceable(1) %28) #21
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65, !prof !84

62:                                               ; preds = %59
  %63 = load i16, ptr %17, align 8
  %64 = or i16 %63, 16
  store i16 %64, ptr %17, align 8
  br label %224

65:                                               ; preds = %59
  %66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.6, ptr noundef nonnull dereferenceable(1) %28) #21
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75, !prof !85

68:                                               ; preds = %65
  %69 = add nsw i32 %24, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %1, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !70
  %73 = tail call i64 @strtol(ptr nocapture noundef %72, ptr noundef null, i32 noundef 10) #19
  %74 = trunc i64 %73 to i32
  store i32 %74, ptr %10, align 8, !tbaa !78
  br label %224

75:                                               ; preds = %65
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.7, ptr noundef nonnull dereferenceable(1) %28) #21
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85, !prof !85

78:                                               ; preds = %75
  %79 = add nsw i32 %24, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %1, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !70
  %83 = tail call i64 @strtol(ptr nocapture noundef %82, ptr noundef null, i32 noundef 10) #19
  %84 = trunc i64 %83 to i32
  store i32 %84, ptr %11, align 4, !tbaa !79
  br label %224

85:                                               ; preds = %75
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.8, ptr noundef nonnull dereferenceable(1) %28) #21
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %98, !prof !85

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 10
  %90 = add nsw i32 %24, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %1, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !70
  %94 = tail call i64 @strtol(ptr nocapture noundef %93, ptr noundef null, i32 noundef 10) #19
  %95 = trunc i64 %94 to i32
  store i32 %95, ptr %9, align 8, !tbaa !74
  %96 = load i16, ptr %89, align 8
  %97 = or i16 %96, 32
  store i16 %97, ptr %89, align 8
  br label %224

98:                                               ; preds = %85
  %99 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.9, ptr noundef nonnull dereferenceable(1) %28) #21
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %125, !prof !86

101:                                              ; preds = %98
  %102 = add nsw i32 %24, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %1, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  %106 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %105, i32 noundef 37) #21
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108, !prof !82

108:                                              ; preds = %101
  %109 = tail call double @strtod(ptr nocapture noundef %105, ptr noundef null) #19
  %110 = fdiv double %109, 1.000000e+02
  store double %110, ptr %8, align 8, !tbaa !87
  br label %120

111:                                              ; preds = %101
  %112 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %105, i32 noundef 46) #21
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114, !prof !88

114:                                              ; preds = %111
  %115 = tail call double @strtod(ptr nocapture noundef %105, ptr noundef null) #19
  store double %115, ptr %8, align 8, !tbaa !87
  br label %120

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 13
  %118 = tail call i64 @strtol(ptr nocapture noundef %105, ptr noundef null, i32 noundef 10) #19
  %119 = trunc i64 %118 to i32
  store i32 %119, ptr %117, align 8, !tbaa !89
  br label %120

120:                                              ; preds = %114, %116, %108
  %121 = load ptr, ptr @stderr, align 8, !tbaa !70
  %122 = load i32, ptr %16, align 8, !tbaa !89
  %123 = load double, ptr %8, align 8, !tbaa !87
  %124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.10, i32 noundef %122, double noundef %123) #20
  br label %224

125:                                              ; preds = %98
  %126 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.11, ptr noundef nonnull dereferenceable(1) %28) #21
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %138, !prof !90

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 10
  %130 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 6
  %131 = load i16, ptr %129, align 8
  %132 = or i16 %131, 4
  store i16 %132, ptr %129, align 8
  %133 = add nsw i32 %24, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %1, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !70
  %137 = tail call ptr @spec_strdup(ptr noundef %136)
  store ptr %137, ptr %130, align 8, !tbaa !91
  br label %224

138:                                              ; preds = %125
  %139 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.12, ptr noundef nonnull dereferenceable(1) %28) #21
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %151, !prof !92

141:                                              ; preds = %138
  %142 = add nsw i32 %24, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %1, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !70
  %146 = tail call double @strtod(ptr nocapture noundef %145, ptr noundef null) #19
  %147 = fptrunc double %146 to float
  %148 = fpext float %147 to double
  store double %148, ptr %7, align 8, !tbaa !93
  %149 = load ptr, ptr @stderr, align 8, !tbaa !70
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef nonnull @.str.13, double noundef %148) #20
  br label %224

151:                                              ; preds = %138
  %152 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.14, ptr noundef nonnull dereferenceable(1) %28) #21
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %200, !prof !94

154:                                              ; preds = %151
  %155 = add nsw i32 %24, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %1, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !70
  %159 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.15, ptr noundef nonnull dereferenceable(1) %158) #21
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %154
  %162 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.16, ptr noundef nonnull dereferenceable(1) %158) #21
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.17, ptr noundef nonnull dereferenceable(1) %158) #21
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164, %161, %154
  store i32 0, ptr %12, align 4, !tbaa !80
  %168 = load ptr, ptr @stderr, align 8, !tbaa !70
  %169 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 53, i64 1, ptr %168) #20
  br label %224

170:                                              ; preds = %164
  %171 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.19, ptr noundef nonnull dereferenceable(1) %158) #21
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %170
  %174 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.20, ptr noundef nonnull dereferenceable(1) %158) #21
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.21, ptr noundef nonnull dereferenceable(1) %158) #21
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176, %173, %170
  store i32 1, ptr %12, align 4, !tbaa !80
  %180 = load ptr, ptr @stderr, align 8, !tbaa !70
  %181 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 48, i64 1, ptr %180) #20
  br label %224

182:                                              ; preds = %176
  %183 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.23, ptr noundef nonnull dereferenceable(1) %158) #21
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %182
  %186 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.24, ptr noundef nonnull dereferenceable(1) %158) #21
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %185
  %189 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.25, ptr noundef nonnull dereferenceable(1) %158) #21
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.26, ptr noundef nonnull dereferenceable(1) %158) #21
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191, %188, %185, %182
  store i32 2, ptr %12, align 4, !tbaa !80
  %195 = load ptr, ptr @stderr, align 8, !tbaa !70
  %196 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 70, i64 1, ptr %195) #20
  br label %224

197:                                              ; preds = %191
  %198 = load ptr, ptr @stderr, align 8, !tbaa !70
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef nonnull @.str.28, ptr noundef %158) #20
  br label %224

200:                                              ; preds = %151
  %201 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.29, ptr noundef nonnull dereferenceable(1) %28) #21
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %224, label %203, !prof !94

203:                                              ; preds = %200
  %204 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.30, ptr noundef nonnull dereferenceable(1) %28) #21
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %224, label %206, !prof !94

206:                                              ; preds = %203
  %207 = load ptr, ptr %3, align 8, !tbaa !95
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %211, !prof !96

209:                                              ; preds = %206
  %210 = tail call ptr @spec_strdup(ptr noundef %28)
  store ptr %210, ptr %3, align 8, !tbaa !95
  br label %224

211:                                              ; preds = %206
  %212 = load ptr, ptr %15, align 8, !tbaa !97
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %216, !prof !82

214:                                              ; preds = %211
  %215 = tail call ptr @spec_strdup(ptr noundef %28)
  store ptr %215, ptr %15, align 8, !tbaa !97
  br label %224

216:                                              ; preds = %211
  %217 = load i8, ptr %28, align 1, !tbaa !98
  %218 = icmp eq i8 %217, 45
  %219 = load ptr, ptr @stderr, align 8, !tbaa !70
  br i1 %218, label %222, label %220

220:                                              ; preds = %216
  %221 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef nonnull @.str.31, ptr noundef nonnull %28) #20
  br label %224

222:                                              ; preds = %216
  %223 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 35, i64 1, ptr %219) #20
  br label %224

224:                                              ; preds = %200, %203, %31, %48, %62, %78, %120, %141, %214, %222, %220, %209, %167, %194, %197, %179, %128, %88, %68, %55, %41
  %225 = phi i32 [ %25, %209 ], [ %25, %214 ], [ %25, %220 ], [ %25, %222 ], [ %25, %197 ], [ %25, %194 ], [ %25, %179 ], [ %25, %167 ], [ %25, %141 ], [ %25, %128 ], [ %25, %120 ], [ %25, %88 ], [ %25, %78 ], [ %25, %68 ], [ %25, %62 ], [ %25, %55 ], [ %25, %48 ], [ %25, %41 ], [ %25, %31 ], [ 1, %203 ], [ 1, %200 ]
  %226 = phi i32 [ %24, %209 ], [ %24, %214 ], [ %24, %220 ], [ %24, %222 ], [ %155, %197 ], [ %155, %194 ], [ %155, %179 ], [ %155, %167 ], [ %142, %141 ], [ %133, %128 ], [ %102, %120 ], [ %90, %88 ], [ %79, %78 ], [ %69, %68 ], [ %24, %62 ], [ %24, %55 ], [ %24, %48 ], [ %24, %41 ], [ %24, %31 ], [ %24, %203 ], [ %24, %200 ]
  %227 = phi i32 [ %23, %209 ], [ %23, %214 ], [ 1, %220 ], [ 1, %222 ], [ 1, %197 ], [ %23, %194 ], [ %23, %179 ], [ %23, %167 ], [ %23, %141 ], [ %23, %128 ], [ %23, %120 ], [ %23, %88 ], [ %23, %78 ], [ %23, %68 ], [ %23, %62 ], [ %23, %55 ], [ %23, %48 ], [ %23, %41 ], [ %23, %31 ], [ %23, %203 ], [ %23, %200 ]
  %228 = add nsw i32 %226, 1
  %229 = icmp slt i32 %228, %0
  br i1 %229, label %22, label %18, !prof !99, !llvm.loop !100

230:                                              ; preds = %18
  %231 = load ptr, ptr %1, align 8, !tbaa !70
  tail call void @printUsage(ptr noundef %231)
  tail call void @exit(i32 noundef 0) #22
  unreachable

232:                                              ; preds = %18
  %233 = load ptr, ptr %3, align 8, !tbaa !95
  %234 = icmp eq ptr %233, null
  %235 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8
  %237 = icmp eq ptr %236, null
  %238 = select i1 %234, i1 true, i1 %237, !prof !88
  br i1 %238, label %239, label %242, !prof !88

239:                                              ; preds = %232
  %240 = load ptr, ptr @stderr, align 8, !tbaa !70
  %241 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 34, i64 1, ptr %240) #20
  br label %242

242:                                              ; preds = %232, %239
  %243 = phi i32 [ 1, %239 ], [ %20, %232 ]
  %244 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 10
  %245 = load i16, ptr %244, align 8
  %246 = and i16 %245, 4
  %247 = icmp ne i16 %246, 0
  %248 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 6
  %249 = load ptr, ptr %248, align 8
  %250 = icmp eq ptr %249, null
  %251 = select i1 %247, i1 %250, i1 false, !prof !88
  br i1 %251, label %252, label %255, !prof !88

252:                                              ; preds = %242
  %253 = load ptr, ptr @stderr, align 8, !tbaa !70
  %254 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 40, i64 1, ptr %253) #20
  br label %255

255:                                              ; preds = %242, %252
  %256 = phi i32 [ 1, %252 ], [ %243, %242 ]
  %257 = load double, ptr %7, align 8
  %258 = fcmp olt double %257, 0.000000e+00
  %259 = fcmp ogt double %257, 1.000000e+00
  %260 = or i1 %258, %259
  br i1 %260, label %261, label %264, !prof !88

261:                                              ; preds = %255
  %262 = load ptr, ptr @stderr, align 8, !tbaa !70
  %263 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 47, i64 1, ptr %262) #20
  br label %264

264:                                              ; preds = %255, %261
  %265 = phi i32 [ 1, %261 ], [ %256, %255 ]
  %266 = load double, ptr %8, align 8, !tbaa !87
  %267 = fcmp ult double %266, 1.000000e+00
  br i1 %267, label %271, label %268, !prof !82

268:                                              ; preds = %264
  %269 = load ptr, ptr @stderr, align 8, !tbaa !70
  %270 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %269, ptr noundef nonnull @.str.36) #20
  br label %271

271:                                              ; preds = %264, %268
  %272 = phi i32 [ 1, %268 ], [ %265, %264 ]
  %273 = load i32, ptr %9, align 8
  %274 = add i32 %273, -2
  %275 = icmp ult i32 %274, 99
  %276 = and i32 %273, 1
  %277 = icmp eq i32 %276, 0
  %278 = and i1 %275, %277
  br i1 %278, label %281, label %279, !prof !82

279:                                              ; preds = %271
  %280 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %281

281:                                              ; preds = %271, %279
  %282 = phi i32 [ 1, %279 ], [ %272, %271 ]
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %286, label %284, !prof !82

284:                                              ; preds = %281
  %285 = load ptr, ptr %1, align 8, !tbaa !70
  tail call void @printUsage(ptr noundef %285)
  tail call void @exit(i32 noundef -1) #22
  unreachable

286:                                              ; preds = %281
  %287 = load i32, ptr %9, align 8, !tbaa !74
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %305, label %289, !prof !88

289:                                              ; preds = %286
  %290 = add i32 %287, 1
  %291 = zext i32 %290 to i64
  %292 = shl nuw nsw i64 %291, 2
  %293 = tail call noalias ptr @malloc(i64 noundef %292) #23
  %294 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 16
  store ptr %293, ptr %294, align 8, !tbaa !103
  %295 = icmp eq ptr %293, null
  br i1 %295, label %302, label %296, !prof !88

296:                                              ; preds = %289
  %297 = load i32, ptr %9, align 8, !tbaa !74
  %298 = add i32 %297, 1
  %299 = tail call i32 @llvm.umax.i32(i32 %298, i32 1)
  %300 = zext i32 %299 to i64
  %301 = shl nuw nsw i64 %300, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %293, i8 0, i64 %301, i1 false), !tbaa !104
  br label %305

302:                                              ; preds = %289
  %303 = load ptr, ptr @stderr, align 8, !tbaa !70
  %304 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %303, ptr noundef nonnull @.str.38, i64 noundef %292, ptr noundef nonnull @.str.39, i32 noundef 259) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

305:                                              ; preds = %296, %286
  %306 = tail call noalias dereferenceable_or_null(304) ptr @malloc(i64 noundef 304) #23
  %307 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 1
  store ptr %306, ptr %307, align 8, !tbaa !105
  %308 = icmp eq ptr %306, null
  br i1 %308, label %309, label %312, !prof !88

309:                                              ; preds = %305
  %310 = load ptr, ptr @stderr, align 8, !tbaa !70
  %311 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %310, ptr noundef nonnull @.str.38, i64 noundef 304, ptr noundef nonnull @.str.39, i32 noundef 265) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

312:                                              ; preds = %305
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %306, i8 0, i64 304, i1 false)
  %313 = tail call noalias dereferenceable_or_null(304) ptr @malloc(i64 noundef 304) #23
  %314 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 3
  store ptr %313, ptr %314, align 8, !tbaa !106
  %315 = icmp eq ptr %313, null
  br i1 %315, label %316, label %319, !prof !88

316:                                              ; preds = %312
  %317 = load ptr, ptr @stderr, align 8, !tbaa !70
  %318 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %317, ptr noundef nonnull @.str.38, i64 noundef 304, ptr noundef nonnull @.str.39, i32 noundef 267) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

319:                                              ; preds = %312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %313, i8 0, i64 304, i1 false)
  %320 = load ptr, ptr %3, align 8, !tbaa !95
  %321 = tail call ptr @load_image_file(ptr noundef %320, ptr noundef nonnull %306, ptr noundef nonnull byval(%struct.params) align 8 %3)
  %322 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %321, i32 noundef 47) #21
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %326, !prof !82

324:                                              ; preds = %319
  %325 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %321, i32 noundef 92) #21
  br label %326

326:                                              ; preds = %319, %324
  %327 = phi ptr [ %325, %324 ], [ %322, %319 ]
  %328 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 4
  %329 = icmp eq ptr %327, null
  %330 = getelementptr inbounds i8, ptr %327, i64 1
  %331 = select i1 %329, ptr %321, ptr %330, !prof !82
  store ptr %331, ptr %328, align 8, !tbaa !107
  %332 = load ptr, ptr %235, align 8, !tbaa !97
  %333 = load ptr, ptr %314, align 8, !tbaa !106
  %334 = tail call ptr @load_image_file(ptr noundef %332, ptr noundef %333, ptr noundef nonnull byval(%struct.params) align 8 %3)
  %335 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %334, i32 noundef 47) #21
  %336 = icmp eq ptr %335, null
  br i1 %336, label %337, label %339, !prof !88

337:                                              ; preds = %326
  %338 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %334, i32 noundef 92) #21
  br label %339

339:                                              ; preds = %326, %337
  %340 = phi ptr [ %338, %337 ], [ %335, %326 ]
  %341 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 5
  %342 = icmp eq ptr %340, null
  %343 = getelementptr inbounds i8, ptr %340, i64 1
  %344 = select i1 %342, ptr %334, ptr %343, !prof !88
  store ptr %344, ptr %341, align 8, !tbaa !108
  %345 = load ptr, ptr %328, align 8, !tbaa !107
  %346 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %345, ptr noundef nonnull dereferenceable(1) %344) #21
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %354, !prof !88

348:                                              ; preds = %339
  %349 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %345)
  %350 = getelementptr inbounds i8, ptr %345, i64 %349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %350, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %351 = load ptr, ptr %341, align 8, !tbaa !108
  %352 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %351)
  %353 = getelementptr inbounds i8, ptr %351, i64 %352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %353, ptr noundef nonnull align 1 dereferenceable(3) @.str.41, i64 3, i1 false)
  br label %354

354:                                              ; preds = %348, %339
  %355 = load i16, ptr %244, align 8
  %356 = and i16 %355, 12
  %357 = icmp eq i16 %356, 0
  br i1 %357, label %369, label %358, !prof !82

358:                                              ; preds = %354
  %359 = load ptr, ptr %307, align 8, !tbaa !105
  %360 = tail call ptr @init_targa(ptr noundef %359, ptr noundef nonnull byval(%struct.params) align 8 %3)
  %361 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 8
  store ptr %360, ptr %361, align 8, !tbaa !109
  %362 = getelementptr inbounds %struct.TargaImage, ptr %360, i64 0, i32 1
  store i8 0, ptr %362, align 1, !tbaa !110
  %363 = getelementptr inbounds %struct.TargaImage, ptr %360, i64 0, i32 2
  store i32 3, ptr %363, align 4, !tbaa !113
  %364 = getelementptr inbounds %struct.TargaImage, ptr %360, i64 0, i32 10
  store i8 8, ptr %364, align 2, !tbaa !114
  %365 = getelementptr inbounds %struct.TargaImage, ptr %360, i64 0, i32 11
  %366 = load i8, ptr %365, align 1, !tbaa !115
  %367 = and i8 %366, -16
  store i8 %367, ptr %365, align 1, !tbaa !115
  %368 = getelementptr inbounds %struct.TargaImage, ptr %360, i64 0, i32 15
  store i8 0, ptr %368, align 8, !tbaa !116
  br label %369

369:                                              ; preds = %354, %358
  %370 = load i16, ptr %244, align 8
  %371 = and i16 %370, 8
  %372 = icmp eq i16 %371, 0
  br i1 %372, label %384, label %373, !prof !82

373:                                              ; preds = %369
  %374 = load ptr, ptr %314, align 8, !tbaa !106
  %375 = tail call ptr @init_targa(ptr noundef %374, ptr noundef nonnull byval(%struct.params) align 8 %3)
  %376 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 9
  store ptr %375, ptr %376, align 8, !tbaa !117
  %377 = getelementptr inbounds %struct.TargaImage, ptr %375, i64 0, i32 1
  store i8 0, ptr %377, align 1, !tbaa !110
  %378 = getelementptr inbounds %struct.TargaImage, ptr %375, i64 0, i32 2
  store i32 3, ptr %378, align 4, !tbaa !113
  %379 = getelementptr inbounds %struct.TargaImage, ptr %375, i64 0, i32 10
  store i8 8, ptr %379, align 2, !tbaa !114
  %380 = getelementptr inbounds %struct.TargaImage, ptr %375, i64 0, i32 11
  %381 = load i8, ptr %380, align 1, !tbaa !115
  %382 = and i8 %381, -16
  store i8 %382, ptr %380, align 1, !tbaa !115
  %383 = getelementptr inbounds %struct.TargaImage, ptr %375, i64 0, i32 15
  store i8 0, ptr %383, align 8, !tbaa !116
  br label %384

384:                                              ; preds = %373, %369
  %385 = load i16, ptr %244, align 8
  %386 = and i16 %385, 4
  %387 = icmp eq i16 %386, 0
  br i1 %387, label %397, label %388, !prof !82

388:                                              ; preds = %384
  %389 = load ptr, ptr %307, align 8, !tbaa !105
  %390 = tail call ptr @init_targa(ptr noundef %389, ptr noundef nonnull byval(%struct.params) align 8 %3)
  %391 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 7
  store ptr %390, ptr %391, align 8, !tbaa !118
  %392 = getelementptr inbounds %struct.TargaImage, ptr %390, i64 0, i32 1
  store i8 0, ptr %392, align 1, !tbaa !110
  %393 = getelementptr inbounds %struct.TargaImage, ptr %390, i64 0, i32 2
  store i32 2, ptr %393, align 4, !tbaa !113
  %394 = getelementptr inbounds %struct.TargaImage, ptr %390, i64 0, i32 10
  store i8 24, ptr %394, align 2, !tbaa !114
  %395 = getelementptr inbounds %struct.TargaImage, ptr %390, i64 0, i32 11
  store i8 0, ptr %395, align 1, !tbaa !115
  %396 = getelementptr inbounds %struct.TargaImage, ptr %390, i64 0, i32 15
  store i8 0, ptr %396, align 8, !tbaa !116
  br label %397

397:                                              ; preds = %388, %384
  %398 = load i16, ptr %244, align 8
  %399 = and i16 %398, 9
  %400 = icmp eq i16 %399, 0
  br i1 %400, label %438, label %401, !prof !82

401:                                              ; preds = %397
  %402 = load ptr, ptr %328, align 8, !tbaa !107
  %403 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %402) #21
  %404 = load ptr, ptr %341, align 8, !tbaa !108
  %405 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %404) #21
  %406 = tail call i64 @llvm.umax.i64(i64 %403, i64 %405)
  %407 = shl i64 %406, 32
  %408 = add i64 %407, 47244640256
  %409 = ashr exact i64 %408, 32
  %410 = tail call noalias ptr @malloc(i64 noundef %409) #23
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %415

412:                                              ; preds = %401
  %413 = load ptr, ptr @stderr, align 8, !tbaa !70
  %414 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %413, ptr noundef nonnull @.str.38, i64 noundef %409, ptr noundef nonnull @.str.39, i32 noundef 318) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

415:                                              ; preds = %401
  %416 = and i16 %398, 1
  %417 = icmp eq i16 %416, 0
  br i1 %417, label %424, label %418

418:                                              ; preds = %415
  %419 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %410, ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %402) #19
  %420 = load ptr, ptr %307, align 8, !tbaa !105
  tail call void @dump_tga(ptr noundef nonnull %410, ptr noundef %420)
  %421 = load ptr, ptr %341, align 8, !tbaa !108
  %422 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %410, ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %421) #19
  %423 = load ptr, ptr %314, align 8, !tbaa !106
  tail call void @dump_tga(ptr noundef nonnull %410, ptr noundef %423)
  br label %424

424:                                              ; preds = %418, %415
  %425 = load i16, ptr %244, align 8
  %426 = and i16 %425, 8
  %427 = icmp eq i16 %426, 0
  br i1 %427, label %437, label %428

428:                                              ; preds = %424
  %429 = load ptr, ptr %328, align 8, !tbaa !107
  %430 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %410, ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %429) #19
  %431 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 8
  %432 = load ptr, ptr %431, align 8, !tbaa !109
  tail call void @dump_tga(ptr noundef nonnull %410, ptr noundef %432)
  %433 = load ptr, ptr %341, align 8, !tbaa !108
  %434 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %410, ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %433) #19
  %435 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 9
  %436 = load ptr, ptr %435, align 8, !tbaa !117
  tail call void @dump_tga(ptr noundef nonnull %410, ptr noundef %436)
  br label %437

437:                                              ; preds = %428, %424
  tail call void @free(ptr noundef %410) #19
  br label %438

438:                                              ; preds = %397, %437
  %439 = load i16, ptr %244, align 8
  %440 = and i16 %439, 2
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %447, label %442, !prof !82

442:                                              ; preds = %438
  %443 = load ptr, ptr %3, align 8, !tbaa !95
  %444 = load ptr, ptr %307, align 8, !tbaa !105
  tail call void @dump_header(ptr noundef %443, ptr noundef %444)
  %445 = load ptr, ptr %235, align 8, !tbaa !97
  %446 = load ptr, ptr %314, align 8, !tbaa !106
  tail call void @dump_header(ptr noundef %445, ptr noundef %446)
  br label %447

447:                                              ; preds = %442, %438
  %448 = tail call i32 @computeSSIM(ptr noundef nonnull byval(%struct.params) align 8 %3)
  %449 = load i16, ptr %244, align 8
  %450 = and i16 %449, 4
  %451 = icmp eq i16 %450, 0
  br i1 %451, label %456, label %452, !prof !82

452:                                              ; preds = %447
  %453 = load ptr, ptr %248, align 8, !tbaa !91
  %454 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 7
  %455 = load ptr, ptr %454, align 8, !tbaa !118
  tail call void @dump_tga(ptr noundef %453, ptr noundef %455)
  br label %456

456:                                              ; preds = %452, %447
  tail call void @exit(i32 noundef 0) #22
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @get_version() local_unnamed_addr #2 !prof !69 {
  %1 = tail call ptr @spec_strdup(ptr noundef nonnull @.str.103)
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 36) #21
  %3 = icmp eq ptr %2, null
  %4 = icmp eq ptr %2, %1
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8, !prof !88

6:                                                ; preds = %0
  tail call void @free(ptr noundef %1) #19
  %7 = tail call ptr @spec_strdup(ptr noundef nonnull @.str.98)
  br label %12

8:                                                ; preds = %0
  %9 = getelementptr inbounds i8, ptr %2, i64 -1
  store i8 0, ptr %9, align 1, !tbaa !98
  %10 = getelementptr inbounds i8, ptr %1, i64 21
  store i8 114, ptr %10, align 1, !tbaa !98
  %11 = tail call ptr @spec_strdup(ptr noundef nonnull %10)
  tail call void @free(ptr noundef %1) #19
  br label %12

12:                                               ; preds = %6, %8
  %13 = phi ptr [ %7, %6 ], [ %11, %8 ]
  ret ptr %13
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @spec_strdup(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !119 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %3 = shl i64 %2, 32
  %4 = add i64 %3, 42949672960
  %5 = ashr exact i64 %4, 32
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !120

8:                                                ; preds = %1
  %9 = load ptr, ptr @stderr, align 8, !tbaa !70
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.38, i64 noundef %5, ptr noundef nonnull @.str.39, i32 noundef 1017) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

11:                                               ; preds = %1
  %12 = tail call ptr @strncpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef %5) #19
  %13 = ashr exact i64 %3, 32
  %14 = getelementptr inbounds i8, ptr %6, i64 %13
  store i8 0, ptr %14, align 1, !tbaa !98
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @printUsage(ptr noundef %0) local_unnamed_addr #9 !prof !121 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @.str.99, ptr %0
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.104)
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.101, ptr noundef nonnull %3)
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @load_image_file(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly byval(%struct.params) align 8 %2) local_unnamed_addr #8 !prof !122 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %5 = shl i64 %4, 32
  %6 = add i64 %5, 42949672960
  %7 = ashr exact i64 %6, 32
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13, !prof !120

10:                                               ; preds = %3
  %11 = load ptr, ptr @stderr, align 8, !tbaa !70
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.38, i64 noundef %7, ptr noundef nonnull @.str.39, i32 noundef 1017) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

13:                                               ; preds = %3
  %14 = tail call ptr @strncpy(ptr noundef nonnull %8, ptr noundef %0, i64 noundef %7) #19
  %15 = ashr exact i64 %5, 32
  %16 = getelementptr inbounds i8, ptr %8, i64 %15
  store i8 0, ptr %16, align 1, !tbaa !98
  %17 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 46) #21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19, !prof !94

19:                                               ; preds = %13
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(5) @.str.64) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22, !prof !123

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(5) @.str.65) #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %13
  tail call void @free(ptr noundef %8) #19
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, ptr noundef %0)
  tail call void @printUsage(ptr noundef null)
  tail call void @exit(i32 noundef 1) #22
  unreachable

27:                                               ; preds = %22, %19
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(5) @.str.65) #21
  %29 = icmp eq i32 %28, 0
  store i8 0, ptr %17, align 1, !tbaa !98
  br i1 %29, label %30, label %31, !prof !94

30:                                               ; preds = %27
  tail call void @read_yuv_file(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.params) align 8 %2)
  br label %32

31:                                               ; preds = %27
  tail call void @read_tga_file(ptr noundef %0, ptr noundef %1)
  br label %32

32:                                               ; preds = %30, %31
  %33 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 46) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35, !prof !96

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(5) @.str.67) #21
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38, !prof !88

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(6) @.str.68) #21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42, !prof !88

41:                                               ; preds = %38, %35
  store i8 0, ptr %33, align 1, !tbaa !98
  br label %42

42:                                               ; preds = %41, %38, %32
  ret ptr %8
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @init_targa(ptr noundef readonly %0, ptr nocapture noundef readonly byval(%struct.params) align 8 %1) local_unnamed_addr #2 !prof !121 {
  %3 = tail call noalias dereferenceable_or_null(304) ptr @malloc(i64 noundef 304) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !70
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.38, i64 noundef 304, ptr noundef nonnull @.str.39, i32 noundef 986) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

8:                                                ; preds = %2
  %9 = icmp eq ptr %0, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %3, ptr noundef nonnull align 8 dereferenceable(304) %0, i64 304, i1 false)
  br label %22

11:                                               ; preds = %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %3, i8 0, i64 304, i1 false)
  %12 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 2
  store i32 2, ptr %12, align 4, !tbaa !113
  %13 = getelementptr inbounds %struct.params, ptr %1, i64 0, i32 17
  %14 = load i32, ptr %13, align 8, !tbaa !78
  %15 = trunc i32 %14 to i16
  %16 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 8
  store i16 %15, ptr %16, align 2, !tbaa !124
  %17 = getelementptr inbounds %struct.params, ptr %1, i64 0, i32 18
  %18 = load i32, ptr %17, align 4, !tbaa !79
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 9
  store i16 %19, ptr %20, align 4, !tbaa !125
  %21 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 10
  store i8 24, ptr %21, align 2, !tbaa !114
  br label %22

22:                                               ; preds = %11, %10
  %23 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 4
  %24 = load i16, ptr %23, align 2, !tbaa !126
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = zext i16 %24 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #23
  %30 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 13
  store ptr %29, ptr %30, align 8, !tbaa !127
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load ptr, ptr @stderr, align 8, !tbaa !70
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.38, i64 noundef %28, ptr noundef nonnull @.str.39, i32 noundef 1000) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

35:                                               ; preds = %26
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %29, i8 0, i64 %28, i1 false)
  br label %36

36:                                               ; preds = %35, %22
  %37 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 9
  %38 = load i16, ptr %37, align 4, !tbaa !125
  %39 = zext i16 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = tail call noalias ptr @malloc(i64 noundef %40) #23
  %42 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 14
  store ptr %41, ptr %42, align 8, !tbaa !128
  %43 = icmp eq ptr %41, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = icmp eq i16 %38, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 8
  %48 = load i16, ptr %47, align 2, !tbaa !124
  %49 = zext i16 %48 to i64
  %50 = shl nuw nsw i64 %49, 2
  %51 = zext i16 %38 to i64
  br label %56

52:                                               ; preds = %36
  %53 = load ptr, ptr @stderr, align 8, !tbaa !70
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.38, i64 noundef %40, ptr noundef nonnull @.str.39, i32 noundef 1005) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

55:                                               ; preds = %64, %44
  ret ptr %3

56:                                               ; preds = %46, %64
  %57 = phi i64 [ 0, %46 ], [ %65, %64 ]
  %58 = tail call noalias ptr @malloc(i64 noundef %50) #23
  %59 = getelementptr inbounds ptr, ptr %41, i64 %57
  store ptr %58, ptr %59, align 8, !tbaa !70
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load ptr, ptr @stderr, align 8, !tbaa !70
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.38, i64 noundef %50, ptr noundef nonnull @.str.39, i32 noundef 1007) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

64:                                               ; preds = %56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %58, i8 0, i64 %50, i1 false)
  %65 = add nuw nsw i64 %57, 1
  %66 = icmp eq i64 %65, %51
  br i1 %66, label %55, label %56, !llvm.loop !129
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_tga(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !121 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.96)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !70
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.97, ptr noundef %0) #20
  tail call void @exit(i32 noundef -1) #22
  unreachable

8:                                                ; preds = %2
  %9 = load i8, ptr %1, align 8, !tbaa !130
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @fputc(i32 noundef %10, ptr noundef %3)
  %12 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  %13 = load i8, ptr %12, align 1, !tbaa !110
  %14 = zext i8 %13 to i32
  %15 = tail call i32 @fputc(i32 noundef %14, ptr noundef %3)
  %16 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !113
  %18 = and i32 %17, 255
  %19 = tail call i32 @fputc(i32 noundef %18, ptr noundef %3)
  %20 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !131
  %22 = and i16 %21, 255
  %23 = zext nneg i16 %22 to i32
  %24 = tail call i32 @fputc(i32 noundef %23, ptr noundef %3)
  %25 = load i16, ptr %20, align 8, !tbaa !131
  %26 = lshr i16 %25, 8
  %27 = zext nneg i16 %26 to i32
  %28 = tail call i32 @fputc(i32 noundef %27, ptr noundef %3)
  %29 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  %30 = load i16, ptr %29, align 2, !tbaa !126
  %31 = and i16 %30, 255
  %32 = zext nneg i16 %31 to i32
  %33 = tail call i32 @fputc(i32 noundef %32, ptr noundef %3)
  %34 = load i16, ptr %29, align 2, !tbaa !126
  %35 = lshr i16 %34, 8
  %36 = zext nneg i16 %35 to i32
  %37 = tail call i32 @fputc(i32 noundef %36, ptr noundef %3)
  %38 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  %39 = load i8, ptr %38, align 4, !tbaa !132
  %40 = zext i8 %39 to i32
  %41 = tail call i32 @fputc(i32 noundef %40, ptr noundef %3)
  %42 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  %43 = load i16, ptr %42, align 2, !tbaa !133
  %44 = and i16 %43, 255
  %45 = zext nneg i16 %44 to i32
  %46 = tail call i32 @fputc(i32 noundef %45, ptr noundef %3)
  %47 = load i16, ptr %42, align 2, !tbaa !133
  %48 = lshr i16 %47, 8
  %49 = zext nneg i16 %48 to i32
  %50 = tail call i32 @fputc(i32 noundef %49, ptr noundef %3)
  %51 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  %52 = load i16, ptr %51, align 8, !tbaa !134
  %53 = and i16 %52, 255
  %54 = zext nneg i16 %53 to i32
  %55 = tail call i32 @fputc(i32 noundef %54, ptr noundef %3)
  %56 = load i16, ptr %51, align 8, !tbaa !134
  %57 = lshr i16 %56, 8
  %58 = zext nneg i16 %57 to i32
  %59 = tail call i32 @fputc(i32 noundef %58, ptr noundef %3)
  %60 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  %61 = load i16, ptr %60, align 2, !tbaa !124
  %62 = and i16 %61, 255
  %63 = zext nneg i16 %62 to i32
  %64 = tail call i32 @fputc(i32 noundef %63, ptr noundef %3)
  %65 = load i16, ptr %60, align 2, !tbaa !124
  %66 = lshr i16 %65, 8
  %67 = zext nneg i16 %66 to i32
  %68 = tail call i32 @fputc(i32 noundef %67, ptr noundef %3)
  %69 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  %70 = load i16, ptr %69, align 4, !tbaa !125
  %71 = and i16 %70, 255
  %72 = zext nneg i16 %71 to i32
  %73 = tail call i32 @fputc(i32 noundef %72, ptr noundef %3)
  %74 = load i16, ptr %69, align 4, !tbaa !125
  %75 = lshr i16 %74, 8
  %76 = zext nneg i16 %75 to i32
  %77 = tail call i32 @fputc(i32 noundef %76, ptr noundef %3)
  %78 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %79 = load i8, ptr %78, align 2, !tbaa !114
  %80 = zext i8 %79 to i32
  %81 = tail call i32 @fputc(i32 noundef %80, ptr noundef %3)
  %82 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  %83 = load i8, ptr %82, align 1, !tbaa !115
  %84 = zext i8 %83 to i32
  %85 = tail call i32 @fputc(i32 noundef %84, ptr noundef %3)
  %86 = load i16, ptr %69, align 4, !tbaa !125
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %8
  %89 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 14
  %90 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 14
  %91 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 14
  br label %92

92:                                               ; preds = %88, %98
  %93 = phi i64 [ 0, %88 ], [ %99, %98 ]
  %94 = load i16, ptr %60, align 2, !tbaa !124
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %98, label %103

96:                                               ; preds = %98, %8
  %97 = tail call i32 @fclose(ptr noundef %3)
  ret void

98:                                               ; preds = %180, %92
  %99 = add nuw nsw i64 %93, 1
  %100 = load i16, ptr %69, align 4, !tbaa !125
  %101 = zext i16 %100 to i64
  %102 = icmp ult i64 %99, %101
  br i1 %102, label %92, label %96, !llvm.loop !135

103:                                              ; preds = %92, %180
  %104 = phi i64 [ %181, %180 ], [ 0, %92 ]
  %105 = load i32, ptr %16, align 4, !tbaa !113
  %106 = and i32 %105, -2
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %180

108:                                              ; preds = %103
  %109 = load i8, ptr %78, align 2, !tbaa !114
  switch i8 %109, label %146 [
    i8 8, label %110
    i8 16, label %117
  ]

110:                                              ; preds = %108
  %111 = load ptr, ptr %90, align 8, !tbaa !128
  %112 = getelementptr inbounds ptr, ptr %111, i64 %93
  %113 = load ptr, ptr %112, align 8, !tbaa !70
  %114 = getelementptr inbounds %struct.Pixel, ptr %113, i64 %104, i32 2
  %115 = load i8, ptr %114, align 1, !tbaa !136
  %116 = zext i8 %115 to i32
  br label %177

117:                                              ; preds = %108
  %118 = load ptr, ptr %89, align 8, !tbaa !128
  %119 = getelementptr inbounds ptr, ptr %118, i64 %93
  %120 = load ptr, ptr %119, align 8, !tbaa !70
  %121 = getelementptr inbounds %struct.Pixel, ptr %120, i64 %104
  %122 = getelementptr inbounds %struct.Pixel, ptr %120, i64 %104, i32 3
  %123 = load i8, ptr %122, align 1, !tbaa !138
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 15
  %126 = getelementptr inbounds %struct.Pixel, ptr %120, i64 %104, i32 2
  %127 = load i8, ptr %126, align 1, !tbaa !136
  %128 = and i8 %127, 31
  %129 = zext nneg i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 10
  %131 = or disjoint i32 %130, %125
  %132 = getelementptr inbounds %struct.Pixel, ptr %120, i64 %104, i32 1
  %133 = load i8, ptr %132, align 1, !tbaa !139
  %134 = and i8 %133, 31
  %135 = zext nneg i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 5
  %137 = or disjoint i32 %131, %136
  %138 = load i8, ptr %121, align 1, !tbaa !140
  %139 = and i8 %138, 31
  %140 = trunc i32 %136 to i8
  %141 = or disjoint i8 %139, %140
  %142 = zext i8 %141 to i32
  %143 = tail call i32 @fputc(i32 noundef %142, ptr noundef %3)
  %144 = lshr i32 %137, 8
  %145 = and i32 %144, 255
  br label %177

146:                                              ; preds = %108
  %147 = load ptr, ptr %91, align 8, !tbaa !128
  %148 = getelementptr inbounds ptr, ptr %147, i64 %93
  %149 = load ptr, ptr %148, align 8, !tbaa !70
  %150 = getelementptr inbounds %struct.Pixel, ptr %149, i64 %104
  %151 = load i8, ptr %150, align 1, !tbaa !140
  %152 = zext i8 %151 to i32
  %153 = tail call i32 @fputc(i32 noundef %152, ptr noundef %3)
  %154 = load ptr, ptr %91, align 8, !tbaa !128
  %155 = getelementptr inbounds ptr, ptr %154, i64 %93
  %156 = load ptr, ptr %155, align 8, !tbaa !70
  %157 = getelementptr inbounds %struct.Pixel, ptr %156, i64 %104, i32 1
  %158 = load i8, ptr %157, align 1, !tbaa !139
  %159 = zext i8 %158 to i32
  %160 = tail call i32 @fputc(i32 noundef %159, ptr noundef %3)
  %161 = load ptr, ptr %91, align 8, !tbaa !128
  %162 = getelementptr inbounds ptr, ptr %161, i64 %93
  %163 = load ptr, ptr %162, align 8, !tbaa !70
  %164 = getelementptr inbounds %struct.Pixel, ptr %163, i64 %104, i32 2
  %165 = load i8, ptr %164, align 1, !tbaa !136
  %166 = zext i8 %165 to i32
  %167 = tail call i32 @fputc(i32 noundef %166, ptr noundef %3)
  %168 = load i8, ptr %78, align 2, !tbaa !114
  %169 = icmp eq i8 %168, 32
  br i1 %169, label %170, label %180

170:                                              ; preds = %146
  %171 = load ptr, ptr %91, align 8, !tbaa !128
  %172 = getelementptr inbounds ptr, ptr %171, i64 %93
  %173 = load ptr, ptr %172, align 8, !tbaa !70
  %174 = getelementptr inbounds %struct.Pixel, ptr %173, i64 %104, i32 3
  %175 = load i8, ptr %174, align 1, !tbaa !138
  %176 = zext i8 %175 to i32
  br label %177

177:                                              ; preds = %110, %170, %117
  %178 = phi i32 [ %145, %117 ], [ %176, %170 ], [ %116, %110 ]
  %179 = tail call i32 @fputc(i32 noundef %178, ptr noundef %3)
  br label %180

180:                                              ; preds = %177, %103, %146
  %181 = add nuw nsw i64 %104, 1
  %182 = load i16, ptr %60, align 2, !tbaa !124
  %183 = zext i16 %182 to i64
  %184 = icmp ult i64 %181, %183
  br i1 %184, label %103, label %98, !llvm.loop !141
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_header(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !121 {
  %3 = alloca [100 x i8], align 16
  %4 = load ptr, ptr @stderr, align 8, !tbaa !70
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.74, ptr noundef %0) #20
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !70
  %9 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 25, i64 1, ptr %8) #20
  br label %111

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %3, i8 0, i64 100, i1 false)
  %11 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !113
  %13 = and i32 %12, 7
  switch i32 %13, label %52 [
    i32 0, label %14
    i32 2, label %15
    i32 3, label %36
    i32 1, label %44
  ]

14:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %3, ptr noundef nonnull align 1 dereferenceable(14) @.str.76, i64 14, i1 false)
  br label %53

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 15
  %17 = load i8, ptr %16, align 8, !tbaa !116
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = zext i8 %17 to i32
  %21 = and i32 %12, 8
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.79, ptr @.str.78
  %24 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %25 = load i8, ptr %24, align 2, !tbaa !114
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull %23, i32 noundef %26, i32 noundef %20) #19
  br label %53

28:                                               ; preds = %15
  %29 = and i32 %12, 8
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.79, ptr @.str.78
  %32 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %33 = load i8, ptr %32, align 2, !tbaa !114
  %34 = zext i8 %33 to i32
  %35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull %31, i32 noundef %34) #19
  br label %53

36:                                               ; preds = %10
  %37 = and i32 %12, 8
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr @.str.79, ptr @.str.78
  %40 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %41 = load i8, ptr %40, align 2, !tbaa !114
  %42 = zext i8 %41 to i32
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.81, ptr noundef nonnull %39, i32 noundef %42) #19
  br label %53

44:                                               ; preds = %10
  %45 = and i32 %12, 8
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.79, ptr @.str.78
  %48 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  %49 = load i8, ptr %48, align 4, !tbaa !132
  %50 = zext i8 %49 to i32
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %47, i32 noundef %50) #19
  br label %53

52:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 1 dereferenceable(26) @.str.83, i64 26, i1 false)
  br label %53

53:                                               ; preds = %19, %28, %52, %44, %36, %14
  %54 = load ptr, ptr @stderr, align 8, !tbaa !70
  %55 = load i8, ptr %1, align 8, !tbaa !130
  %56 = zext i8 %55 to i32
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.84, i32 noundef %56) #20
  %58 = load ptr, ptr @stderr, align 8, !tbaa !70
  %59 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  %60 = load i8, ptr %59, align 1, !tbaa !110
  %61 = zext i8 %60 to i32
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.85, i32 noundef %61) #20
  %63 = load ptr, ptr @stderr, align 8, !tbaa !70
  %64 = load i32, ptr %11, align 4, !tbaa !113
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.86, i32 noundef %64, ptr noundef nonnull %3) #20
  %66 = load ptr, ptr @stderr, align 8, !tbaa !70
  %67 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  %68 = load i16, ptr %67, align 8, !tbaa !131
  %69 = zext i16 %68 to i32
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.87, i32 noundef %69) #20
  %71 = load ptr, ptr @stderr, align 8, !tbaa !70
  %72 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  %73 = load i16, ptr %72, align 2, !tbaa !126
  %74 = zext i16 %73 to i32
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.88, i32 noundef %74) #20
  %76 = load ptr, ptr @stderr, align 8, !tbaa !70
  %77 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  %78 = load i8, ptr %77, align 4, !tbaa !132
  %79 = zext i8 %78 to i32
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.89, i32 noundef %79) #20
  %81 = load ptr, ptr @stderr, align 8, !tbaa !70
  %82 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  %83 = load i16, ptr %82, align 2, !tbaa !133
  %84 = zext i16 %83 to i32
  %85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.90, i32 noundef %84) #20
  %86 = load ptr, ptr @stderr, align 8, !tbaa !70
  %87 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  %88 = load i16, ptr %87, align 8, !tbaa !134
  %89 = zext i16 %88 to i32
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.91, i32 noundef %89) #20
  %91 = load ptr, ptr @stderr, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  %93 = load i16, ptr %92, align 2, !tbaa !124
  %94 = zext i16 %93 to i32
  %95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.92, i32 noundef %94) #20
  %96 = load ptr, ptr @stderr, align 8, !tbaa !70
  %97 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  %98 = load i16, ptr %97, align 4, !tbaa !125
  %99 = zext i16 %98 to i32
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.93, i32 noundef %99) #20
  %101 = load ptr, ptr @stderr, align 8, !tbaa !70
  %102 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %103 = load i8, ptr %102, align 2, !tbaa !114
  %104 = zext i8 %103 to i32
  %105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.94, i32 noundef %104) #20
  %106 = load ptr, ptr @stderr, align 8, !tbaa !70
  %107 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  %108 = load i8, ptr %107, align 1, !tbaa !115
  %109 = zext i8 %108 to i32
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.95, i32 noundef %109) #20
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #19
  br label %111

111:                                              ; preds = %53, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @computeSSIM(ptr nocapture noundef byval(%struct.params) align 8 %0) local_unnamed_addr #8 !prof !69 {
  %2 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  %10 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 9
  %13 = load i16, ptr %12, align 4, !tbaa !125
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !124
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 8
  %19 = load i16, ptr %18, align 2, !tbaa !124
  %20 = icmp eq i16 %16, %19
  br i1 %20, label %21, label %25, !prof !82

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 9
  %23 = load i16, ptr %22, align 4, !tbaa !125
  %24 = icmp eq i16 %13, %23
  br i1 %24, label %32, label %25, !prof !82

25:                                               ; preds = %21, %1
  %26 = load ptr, ptr @stderr, align 8, !tbaa !70
  %27 = zext i16 %19 to i32
  %28 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 9
  %29 = load i16, ptr %28, align 4, !tbaa !125
  %30 = zext i16 %29 to i32
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.44, i32 noundef %17, i32 noundef %14, i32 noundef %27, i32 noundef %30) #20
  br label %762

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 10
  %34 = load i8, ptr %33, align 2, !tbaa !114
  switch i8 %34, label %35 [
    i8 16, label %38
    i8 32, label %37
  ], !prof !142

35:                                               ; preds = %32
  %36 = zext i8 %34 to i32
  br label %38

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %32, %37, %35
  %39 = phi i32 [ 15, %32 ], [ %36, %35 ], [ 24, %37 ]
  %40 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #23
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45, !prof !88

42:                                               ; preds = %38
  %43 = load ptr, ptr @stderr, align 8, !tbaa !70
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.38, i64 noundef 512, ptr noundef nonnull @.str.39, i32 noundef 392) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

45:                                               ; preds = %38
  %46 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #23
  %47 = icmp eq ptr %46, null
  br i1 %47, label %92, label %48, !prof !88

48:                                               ; preds = %45
  %49 = icmp eq i16 %13, 0
  br i1 %49, label %110, label %50, !prof !143

50:                                               ; preds = %48
  %51 = icmp eq i16 %16, 0
  %52 = icmp eq i32 %39, 8
  %53 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 11
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 14
  %56 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 14
  %57 = icmp eq ptr %5, null
  %58 = icmp eq ptr %9, null
  %59 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %60 = load i16, ptr %59, align 8
  %61 = and i16 %60, 256
  %62 = icmp eq i16 %61, 0
  %63 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %64 = load i16, ptr %63, align 8
  %65 = and i16 %64, 16
  %66 = icmp eq i16 %65, 0
  %67 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 15
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 0
  %70 = uitofp i32 %68 to float
  %71 = fmul float %70, 5.000000e-01
  %72 = fpext float %71 to double
  %73 = lshr i32 %68, 1
  %74 = uitofp i32 %73 to double
  %75 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 16
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 12
  %78 = load double, ptr %77, align 8
  %79 = fcmp ogt double %78, 0.000000e+00
  %80 = icmp eq ptr %11, null
  %81 = and i16 %64, 384
  %82 = icmp eq i16 %81, 0
  %83 = zext i16 %16 to i64
  %84 = zext i16 %16 to i64
  %85 = zext i16 %16 to i64
  %86 = add nsw i32 %17, -1
  %87 = lshr i32 %86, 3
  %88 = add nuw nsw i32 %87, 1
  %89 = zext i16 %13 to i64
  %90 = zext i16 %13 to i64
  %91 = zext i16 %13 to i64
  br label %95

92:                                               ; preds = %45
  %93 = load ptr, ptr @stderr, align 8, !tbaa !70
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.38, i64 noundef 512, ptr noundef nonnull @.str.39, i32 noundef 393) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

95:                                               ; preds = %50, %121
  %96 = phi i64 [ 0, %50 ], [ %126, %121 ]
  %97 = phi double [ 0.000000e+00, %50 ], [ %125, %121 ]
  %98 = phi double [ 1.000000e+00, %50 ], [ %124, %121 ]
  %99 = phi i32 [ 0, %50 ], [ %123, %121 ]
  %100 = phi i32 [ 0, %50 ], [ %122, %121 ]
  br i1 %51, label %121, label %101, !prof !144

101:                                              ; preds = %95
  %102 = add nuw nsw i64 %96, 8
  %103 = icmp ugt i64 %102, %89
  %104 = sub nsw i64 %90, %96
  %105 = trunc i64 %104 to i32
  %106 = select i1 %103, i32 %105, i32 8, !prof !145
  %107 = icmp eq i32 %106, 0
  %108 = zext i32 %106 to i64
  %109 = add i32 %88, %99
  br label %128

110:                                              ; preds = %121, %48
  %111 = phi i32 [ 0, %48 ], [ %122, %121 ]
  %112 = phi i32 [ 0, %48 ], [ %123, %121 ]
  %113 = phi double [ 1.000000e+00, %48 ], [ %124, %121 ]
  %114 = phi double [ 0.000000e+00, %48 ], [ %125, %121 ]
  tail call void @free(ptr noundef %40) #19
  tail call void @free(ptr noundef %46) #19
  %115 = load ptr, ptr @stderr, align 8, !tbaa !70
  %116 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 13
  %117 = load i32, ptr %116, align 8, !tbaa !89
  %118 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 14
  %119 = load double, ptr %118, align 8, !tbaa !87
  %120 = fcmp ogt double %119, 0.000000e+00
  br i1 %120, label %588, label %599, !prof !82

121:                                              ; preds = %586, %95
  %122 = phi i32 [ %100, %95 ], [ %518, %586 ]
  %123 = phi i32 [ %99, %95 ], [ %109, %586 ]
  %124 = phi double [ %98, %95 ], [ %506, %586 ]
  %125 = phi double [ %97, %95 ], [ %239, %586 ]
  %126 = add nuw nsw i64 %96, 8
  %127 = icmp ult i64 %126, %91
  br i1 %127, label %95, label %110, !prof !146, !llvm.loop !147

128:                                              ; preds = %101, %586
  %129 = phi i64 [ 0, %101 ], [ %133, %586 ]
  %130 = phi double [ %97, %101 ], [ %239, %586 ]
  %131 = phi double [ %98, %101 ], [ %506, %586 ]
  %132 = phi i32 [ %100, %101 ], [ %518, %586 ]
  %133 = add nuw nsw i64 %129, 8
  %134 = icmp ugt i64 %133, %83
  %135 = sub nsw i64 %85, %129
  %136 = trunc i64 %135 to i32
  %137 = select i1 %134, i32 %136, i32 8, !prof !148
  br i1 %107, label %141, label %138, !prof !149

138:                                              ; preds = %128
  %139 = icmp eq i32 %137, 0
  %140 = zext i32 %137 to i64
  br label %146

141:                                              ; preds = %240, %128
  %142 = phi i32 [ 0, %128 ], [ %241, %240 ]
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %160, !prof !150

144:                                              ; preds = %141
  %145 = zext nneg i32 %142 to i64
  br label %152

146:                                              ; preds = %138, %240
  %147 = phi i64 [ 0, %138 ], [ %242, %240 ]
  %148 = phi i32 [ 0, %138 ], [ %241, %240 ]
  br i1 %139, label %240, label %149, !prof !151

149:                                              ; preds = %146
  %150 = add nuw i64 %147, %96
  %151 = and i64 %150, 4294967295
  br label %244

152:                                              ; preds = %144, %152
  %153 = phi i64 [ 0, %144 ], [ %158, %152 ]
  %154 = phi double [ 0.000000e+00, %144 ], [ %157, %152 ]
  %155 = getelementptr inbounds double, ptr %40, i64 %153
  %156 = load double, ptr %155, align 8, !tbaa !152
  %157 = fadd double %154, %156
  %158 = add nuw nsw i64 %153, 1
  %159 = icmp eq i64 %158, %145
  br i1 %159, label %160, label %152, !prof !153, !llvm.loop !154

160:                                              ; preds = %152, %141
  %161 = phi double [ 0.000000e+00, %141 ], [ %157, %152 ]
  %162 = sitofp i32 %142 to double
  %163 = fdiv double %161, %162
  %164 = icmp sgt i32 %142, 0
  br i1 %164, label %165, label %175, !prof !150

165:                                              ; preds = %160
  %166 = zext nneg i32 %142 to i64
  br label %167

167:                                              ; preds = %165, %167
  %168 = phi i64 [ 0, %165 ], [ %173, %167 ]
  %169 = phi double [ 0.000000e+00, %165 ], [ %172, %167 ]
  %170 = getelementptr inbounds double, ptr %46, i64 %168
  %171 = load double, ptr %170, align 8, !tbaa !152
  %172 = fadd double %169, %171
  %173 = add nuw nsw i64 %168, 1
  %174 = icmp eq i64 %173, %166
  br i1 %174, label %175, label %167, !prof !153, !llvm.loop !154

175:                                              ; preds = %167, %160
  %176 = phi double [ 0.000000e+00, %160 ], [ %172, %167 ]
  %177 = fdiv double %176, %162
  %178 = icmp sgt i32 %142, 0
  br i1 %178, label %179, label %190, !prof !150

179:                                              ; preds = %175
  %180 = zext nneg i32 %142 to i64
  br label %181

181:                                              ; preds = %179, %181
  %182 = phi i64 [ 0, %179 ], [ %188, %181 ]
  %183 = phi double [ 0.000000e+00, %179 ], [ %187, %181 ]
  %184 = getelementptr inbounds double, ptr %40, i64 %182
  %185 = load double, ptr %184, align 8, !tbaa !152
  %186 = fsub double %185, %163
  %187 = tail call double @llvm.fmuladd.f64(double %186, double %186, double %183)
  %188 = add nuw nsw i64 %182, 1
  %189 = icmp eq i64 %188, %180
  br i1 %189, label %190, label %181, !prof !153, !llvm.loop !155

190:                                              ; preds = %181, %175
  %191 = phi double [ 0.000000e+00, %175 ], [ %187, %181 ]
  %192 = add nsw i32 %142, -1
  %193 = sitofp i32 %192 to double
  %194 = fdiv double %191, %193
  %195 = icmp sgt i32 %142, 0
  br i1 %195, label %196, label %207, !prof !150

196:                                              ; preds = %190
  %197 = zext nneg i32 %142 to i64
  br label %198

198:                                              ; preds = %196, %198
  %199 = phi i64 [ 0, %196 ], [ %205, %198 ]
  %200 = phi double [ 0.000000e+00, %196 ], [ %204, %198 ]
  %201 = getelementptr inbounds double, ptr %46, i64 %199
  %202 = load double, ptr %201, align 8, !tbaa !152
  %203 = fsub double %202, %177
  %204 = tail call double @llvm.fmuladd.f64(double %203, double %203, double %200)
  %205 = add nuw nsw i64 %199, 1
  %206 = icmp eq i64 %205, %197
  br i1 %206, label %207, label %198, !prof !153, !llvm.loop !155

207:                                              ; preds = %198, %190
  %208 = phi double [ 0.000000e+00, %190 ], [ %204, %198 ]
  %209 = fdiv double %208, %193
  %210 = icmp sgt i32 %142, 0
  br i1 %210, label %211, label %225, !prof !150

211:                                              ; preds = %207
  %212 = zext nneg i32 %142 to i64
  br label %213

213:                                              ; preds = %211, %213
  %214 = phi i64 [ 0, %211 ], [ %223, %213 ]
  %215 = phi double [ 0.000000e+00, %211 ], [ %222, %213 ]
  %216 = getelementptr inbounds double, ptr %40, i64 %214
  %217 = load double, ptr %216, align 8, !tbaa !152
  %218 = fsub double %217, %163
  %219 = getelementptr inbounds double, ptr %46, i64 %214
  %220 = load double, ptr %219, align 8, !tbaa !152
  %221 = fsub double %220, %177
  %222 = tail call double @llvm.fmuladd.f64(double %218, double %221, double %215)
  %223 = add nuw nsw i64 %214, 1
  %224 = icmp eq i64 %223, %212
  br i1 %224, label %225, label %213, !prof !153, !llvm.loop !156

225:                                              ; preds = %213, %207
  %226 = phi double [ 0.000000e+00, %207 ], [ %222, %213 ]
  %227 = fdiv double %226, %193
  %228 = fmul double %163, 2.000000e+00
  %229 = tail call double @llvm.fmuladd.f64(double %228, double %177, double 6.502500e+00)
  %230 = tail call double @llvm.fmuladd.f64(double %227, double 2.000000e+00, double 5.852550e+01)
  %231 = fmul double %229, %230
  %232 = fmul double %177, %177
  %233 = tail call double @llvm.fmuladd.f64(double %163, double %163, double %232)
  %234 = fadd double %233, 6.502500e+00
  %235 = fadd double %194, %209
  %236 = fadd double %235, 5.852550e+01
  %237 = fmul double %234, %236
  %238 = fdiv double %231, %237
  %239 = fadd double %130, %238
  br i1 %66, label %495, label %504, !prof !145

240:                                              ; preds = %491, %146
  %241 = phi i32 [ %148, %146 ], [ %492, %491 ]
  %242 = add nuw nsw i64 %147, 1
  %243 = icmp ult i64 %242, %108
  br i1 %243, label %146, label %141, !prof !157, !llvm.loop !158

244:                                              ; preds = %149, %491
  %245 = phi i64 [ 0, %149 ], [ %493, %491 ]
  %246 = phi i32 [ %148, %149 ], [ %492, %491 ]
  br i1 %52, label %247, label %268, !prof !159

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 14
  %249 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 14
  %250 = add nuw i64 %147, %96
  %251 = and i64 %250, 4294967295
  %252 = load ptr, ptr %248, align 8, !tbaa !128
  %253 = getelementptr inbounds ptr, ptr %252, i64 %251
  %254 = load ptr, ptr %253, align 8, !tbaa !70
  %255 = add nuw i64 %245, %129
  %256 = and i64 %255, 4294967295
  %257 = getelementptr inbounds %struct.Pixel, ptr %254, i64 %256, i32 2
  %258 = load i8, ptr %257, align 1, !tbaa !136
  %259 = uitofp i8 %258 to double
  %260 = zext i32 %246 to i64
  %261 = getelementptr inbounds double, ptr %40, i64 %260
  store double %259, ptr %261, align 8, !tbaa !152
  %262 = load ptr, ptr %249, align 8, !tbaa !128
  %263 = getelementptr inbounds ptr, ptr %262, i64 %251
  %264 = load ptr, ptr %263, align 8, !tbaa !70
  %265 = getelementptr inbounds %struct.Pixel, ptr %264, i64 %256, i32 2
  %266 = load i8, ptr %265, align 1, !tbaa !136
  %267 = uitofp i8 %266 to double
  br label %393

268:                                              ; preds = %244
  switch i32 %54, label %390 [
    i32 0, label %269
    i32 1, label %304
    i32 2, label %343
  ], !prof !160

269:                                              ; preds = %268
  %270 = load ptr, ptr %55, align 8, !tbaa !128
  %271 = getelementptr inbounds ptr, ptr %270, i64 %151
  %272 = load ptr, ptr %271, align 8, !tbaa !70
  %273 = add nuw i64 %245, %129
  %274 = and i64 %273, 4294967295
  %275 = getelementptr inbounds %struct.Pixel, ptr %272, i64 %274
  %276 = getelementptr inbounds %struct.Pixel, ptr %272, i64 %274, i32 2
  %277 = load i8, ptr %276, align 1, !tbaa !136
  %278 = uitofp i8 %277 to double
  %279 = getelementptr inbounds %struct.Pixel, ptr %272, i64 %274, i32 1
  %280 = load i8, ptr %279, align 1, !tbaa !139
  %281 = uitofp i8 %280 to double
  %282 = fmul double %281, 7.152000e-01
  %283 = tail call double @llvm.fmuladd.f64(double %278, double 2.126000e-01, double %282)
  %284 = load i8, ptr %275, align 1, !tbaa !140
  %285 = uitofp i8 %284 to double
  %286 = tail call double @llvm.fmuladd.f64(double %285, double 7.220000e-02, double %283)
  %287 = zext i32 %246 to i64
  %288 = getelementptr inbounds double, ptr %40, i64 %287
  store double %286, ptr %288, align 8, !tbaa !152
  %289 = load ptr, ptr %56, align 8, !tbaa !128
  %290 = getelementptr inbounds ptr, ptr %289, i64 %151
  %291 = load ptr, ptr %290, align 8, !tbaa !70
  %292 = getelementptr inbounds %struct.Pixel, ptr %291, i64 %274
  %293 = getelementptr inbounds %struct.Pixel, ptr %291, i64 %274, i32 2
  %294 = load i8, ptr %293, align 1, !tbaa !136
  %295 = uitofp i8 %294 to double
  %296 = getelementptr inbounds %struct.Pixel, ptr %291, i64 %274, i32 1
  %297 = load i8, ptr %296, align 1, !tbaa !139
  %298 = uitofp i8 %297 to double
  %299 = fmul double %298, 7.152000e-01
  %300 = tail call double @llvm.fmuladd.f64(double %295, double 2.126000e-01, double %299)
  %301 = load i8, ptr %292, align 1, !tbaa !140
  %302 = uitofp i8 %301 to double
  %303 = tail call double @llvm.fmuladd.f64(double %302, double 7.220000e-02, double %300)
  br label %393

304:                                              ; preds = %268
  %305 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 14
  %306 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 14
  %307 = add nuw i64 %147, %96
  %308 = and i64 %307, 4294967295
  %309 = load ptr, ptr %305, align 8, !tbaa !128
  %310 = getelementptr inbounds ptr, ptr %309, i64 %308
  %311 = load ptr, ptr %310, align 8, !tbaa !70
  %312 = add nuw i64 %245, %129
  %313 = and i64 %312, 4294967295
  %314 = getelementptr inbounds %struct.Pixel, ptr %311, i64 %313
  %315 = getelementptr inbounds %struct.Pixel, ptr %311, i64 %313, i32 2
  %316 = load i8, ptr %315, align 1, !tbaa !136
  %317 = uitofp i8 %316 to double
  %318 = getelementptr inbounds %struct.Pixel, ptr %311, i64 %313, i32 1
  %319 = load i8, ptr %318, align 1, !tbaa !139
  %320 = uitofp i8 %319 to double
  %321 = fmul double %320, 5.870000e-01
  %322 = tail call double @llvm.fmuladd.f64(double %317, double 2.990000e-01, double %321)
  %323 = load i8, ptr %314, align 1, !tbaa !140
  %324 = uitofp i8 %323 to double
  %325 = tail call double @llvm.fmuladd.f64(double %324, double 1.140000e-01, double %322)
  %326 = zext i32 %246 to i64
  %327 = getelementptr inbounds double, ptr %40, i64 %326
  store double %325, ptr %327, align 8, !tbaa !152
  %328 = load ptr, ptr %306, align 8, !tbaa !128
  %329 = getelementptr inbounds ptr, ptr %328, i64 %308
  %330 = load ptr, ptr %329, align 8, !tbaa !70
  %331 = getelementptr inbounds %struct.Pixel, ptr %330, i64 %313
  %332 = getelementptr inbounds %struct.Pixel, ptr %330, i64 %313, i32 2
  %333 = load i8, ptr %332, align 1, !tbaa !136
  %334 = uitofp i8 %333 to double
  %335 = getelementptr inbounds %struct.Pixel, ptr %330, i64 %313, i32 1
  %336 = load i8, ptr %335, align 1, !tbaa !139
  %337 = uitofp i8 %336 to double
  %338 = fmul double %337, 5.870000e-01
  %339 = tail call double @llvm.fmuladd.f64(double %334, double 2.990000e-01, double %338)
  %340 = load i8, ptr %331, align 1, !tbaa !140
  %341 = uitofp i8 %340 to double
  %342 = tail call double @llvm.fmuladd.f64(double %341, double 1.140000e-01, double %339)
  br label %393

343:                                              ; preds = %268
  %344 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 14
  %345 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 14
  %346 = add nuw i64 %147, %96
  %347 = and i64 %346, 4294967295
  %348 = load ptr, ptr %344, align 8, !tbaa !128
  %349 = getelementptr inbounds ptr, ptr %348, i64 %347
  %350 = load ptr, ptr %349, align 8, !tbaa !70
  %351 = add nuw i64 %245, %129
  %352 = and i64 %351, 4294967295
  %353 = getelementptr inbounds %struct.Pixel, ptr %350, i64 %352
  %354 = getelementptr inbounds %struct.Pixel, ptr %350, i64 %352, i32 2
  %355 = load i8, ptr %354, align 1, !tbaa !136
  %356 = uitofp i8 %355 to double
  %357 = fmul double %356, 2.990000e-01
  %358 = getelementptr inbounds %struct.Pixel, ptr %350, i64 %352, i32 1
  %359 = load i8, ptr %358, align 1, !tbaa !139
  %360 = uitofp i8 %359 to double
  %361 = fmul double %360, 5.870000e-01
  %362 = fmul double %361, %360
  %363 = tail call double @llvm.fmuladd.f64(double %357, double %356, double %362)
  %364 = load i8, ptr %353, align 1, !tbaa !140
  %365 = uitofp i8 %364 to double
  %366 = fmul double %365, 1.140000e-01
  %367 = tail call double @llvm.fmuladd.f64(double %366, double %365, double %363)
  %368 = tail call double @sqrt(double noundef %367) #19
  %369 = zext i32 %246 to i64
  %370 = getelementptr inbounds double, ptr %40, i64 %369
  store double %368, ptr %370, align 8, !tbaa !152
  %371 = load ptr, ptr %345, align 8, !tbaa !128
  %372 = getelementptr inbounds ptr, ptr %371, i64 %347
  %373 = load ptr, ptr %372, align 8, !tbaa !70
  %374 = getelementptr inbounds %struct.Pixel, ptr %373, i64 %352
  %375 = getelementptr inbounds %struct.Pixel, ptr %373, i64 %352, i32 2
  %376 = load i8, ptr %375, align 1, !tbaa !136
  %377 = uitofp i8 %376 to double
  %378 = fmul double %377, 2.990000e-01
  %379 = getelementptr inbounds %struct.Pixel, ptr %373, i64 %352, i32 1
  %380 = load i8, ptr %379, align 1, !tbaa !139
  %381 = uitofp i8 %380 to double
  %382 = fmul double %381, 5.870000e-01
  %383 = fmul double %382, %381
  %384 = tail call double @llvm.fmuladd.f64(double %378, double %377, double %383)
  %385 = load i8, ptr %374, align 1, !tbaa !140
  %386 = uitofp i8 %385 to double
  %387 = fmul double %386, 1.140000e-01
  %388 = tail call double @llvm.fmuladd.f64(double %387, double %386, double %384)
  %389 = tail call double @sqrt(double noundef %388) #19
  br label %393

390:                                              ; preds = %268
  %391 = load ptr, ptr @stderr, align 8, !tbaa !70
  %392 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %391, ptr noundef nonnull @.str.45, i32 noundef %54) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

393:                                              ; preds = %269, %343, %304, %247
  %394 = phi i64 [ %287, %269 ], [ %369, %343 ], [ %326, %304 ], [ %260, %247 ]
  %395 = phi double [ %303, %269 ], [ %389, %343 ], [ %342, %304 ], [ %267, %247 ]
  %396 = getelementptr inbounds double, ptr %46, i64 %394
  store double %395, ptr %396, align 8, !tbaa !152
  br i1 %57, label %411, label %397, !prof !161

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.TargaImage, ptr %5, i64 0, i32 14
  %399 = add nuw i64 %147, %96
  %400 = and i64 %399, 4294967295
  %401 = zext i32 %246 to i64
  %402 = getelementptr inbounds double, ptr %40, i64 %401
  %403 = load double, ptr %402, align 8, !tbaa !152
  %404 = fptoui double %403 to i8
  %405 = load ptr, ptr %398, align 8, !tbaa !128
  %406 = getelementptr inbounds ptr, ptr %405, i64 %400
  %407 = load ptr, ptr %406, align 8, !tbaa !70
  %408 = add nuw i64 %245, %129
  %409 = and i64 %408, 4294967295
  %410 = getelementptr inbounds %struct.Pixel, ptr %407, i64 %409, i32 2
  store i8 %404, ptr %410, align 1, !tbaa !136
  br label %411

411:                                              ; preds = %397, %393
  br i1 %58, label %426, label %412, !prof !161

412:                                              ; preds = %411
  %413 = getelementptr inbounds %struct.TargaImage, ptr %9, i64 0, i32 14
  %414 = add nuw i64 %147, %96
  %415 = and i64 %414, 4294967295
  %416 = zext i32 %246 to i64
  %417 = getelementptr inbounds double, ptr %46, i64 %416
  %418 = load double, ptr %417, align 8, !tbaa !152
  %419 = fptoui double %418 to i8
  %420 = load ptr, ptr %413, align 8, !tbaa !128
  %421 = getelementptr inbounds ptr, ptr %420, i64 %415
  %422 = load ptr, ptr %421, align 8, !tbaa !70
  %423 = add nuw i64 %245, %129
  %424 = and i64 %423, 4294967295
  %425 = getelementptr inbounds %struct.Pixel, ptr %422, i64 %424, i32 2
  store i8 %419, ptr %425, align 1, !tbaa !136
  br label %426

426:                                              ; preds = %412, %411
  br i1 %62, label %491, label %427, !prof !161

427:                                              ; preds = %426
  %428 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 14
  %429 = trunc i64 %96 to i32
  %430 = trunc i64 %129 to i32
  %431 = trunc i64 %147 to i32
  %432 = add i32 %431, %429
  %433 = zext i32 %432 to i64
  %434 = load ptr, ptr @stderr, align 8, !tbaa !70
  %435 = trunc i64 %245 to i32
  %436 = add i32 %435, %430
  %437 = load ptr, ptr %428, align 8, !tbaa !128
  %438 = getelementptr inbounds ptr, ptr %437, i64 %433
  %439 = load ptr, ptr %438, align 8, !tbaa !70
  %440 = zext i32 %436 to i64
  %441 = getelementptr inbounds %struct.Pixel, ptr %439, i64 %440
  %442 = getelementptr inbounds %struct.Pixel, ptr %439, i64 %440, i32 2
  %443 = load i8, ptr %442, align 1, !tbaa !136
  %444 = zext i8 %443 to i32
  %445 = getelementptr inbounds %struct.Pixel, ptr %439, i64 %440, i32 1
  %446 = load i8, ptr %445, align 1, !tbaa !139
  %447 = zext i8 %446 to i32
  %448 = load i8, ptr %441, align 1, !tbaa !140
  %449 = zext i8 %448 to i32
  %450 = zext i32 %246 to i64
  %451 = getelementptr inbounds double, ptr %40, i64 %450
  %452 = load double, ptr %451, align 8, !tbaa !152
  br i1 %57, label %461, label %453

453:                                              ; preds = %427
  %454 = getelementptr inbounds %struct.TargaImage, ptr %5, i64 0, i32 14
  %455 = load ptr, ptr %454, align 8, !tbaa !128
  %456 = getelementptr inbounds ptr, ptr %455, i64 %433
  %457 = load ptr, ptr %456, align 8, !tbaa !70
  %458 = getelementptr inbounds %struct.Pixel, ptr %457, i64 %440, i32 2
  %459 = load i8, ptr %458, align 1, !tbaa !136
  %460 = zext i8 %459 to i32
  br label %461

461:                                              ; preds = %427, %453
  %462 = phi i32 [ %460, %453 ], [ 0, %427 ]
  %463 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 14
  %464 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %434, ptr noundef nonnull @.str.46, i32 noundef %432, i32 noundef %436, i32 noundef %444, i32 noundef %447, i32 noundef %449, double noundef %452, i32 noundef %462) #20
  %465 = load ptr, ptr @stderr, align 8, !tbaa !70
  %466 = load ptr, ptr %463, align 8, !tbaa !128
  %467 = getelementptr inbounds ptr, ptr %466, i64 %433
  %468 = load ptr, ptr %467, align 8, !tbaa !70
  %469 = getelementptr inbounds %struct.Pixel, ptr %468, i64 %440
  %470 = getelementptr inbounds %struct.Pixel, ptr %468, i64 %440, i32 2
  %471 = load i8, ptr %470, align 1, !tbaa !136
  %472 = zext i8 %471 to i32
  %473 = getelementptr inbounds %struct.Pixel, ptr %468, i64 %440, i32 1
  %474 = load i8, ptr %473, align 1, !tbaa !139
  %475 = zext i8 %474 to i32
  %476 = load i8, ptr %469, align 1, !tbaa !140
  %477 = zext i8 %476 to i32
  %478 = getelementptr inbounds double, ptr %46, i64 %450
  %479 = load double, ptr %478, align 8, !tbaa !152
  br i1 %58, label %488, label %480

480:                                              ; preds = %461
  %481 = getelementptr inbounds %struct.TargaImage, ptr %9, i64 0, i32 14
  %482 = load ptr, ptr %481, align 8, !tbaa !128
  %483 = getelementptr inbounds ptr, ptr %482, i64 %433
  %484 = load ptr, ptr %483, align 8, !tbaa !70
  %485 = getelementptr inbounds %struct.Pixel, ptr %484, i64 %440, i32 2
  %486 = load i8, ptr %485, align 1, !tbaa !136
  %487 = zext i8 %486 to i32
  br label %488

488:                                              ; preds = %461, %480
  %489 = phi i32 [ %487, %480 ], [ 0, %461 ]
  %490 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %465, ptr noundef nonnull @.str.47, i32 noundef %472, i32 noundef %475, i32 noundef %477, double noundef %479, i32 noundef %489) #20
  br label %491

491:                                              ; preds = %488, %426
  %492 = add i32 %246, 1
  %493 = add nuw nsw i64 %245, 1
  %494 = icmp ult i64 %493, %140
  br i1 %494, label %244, label %240, !prof !162, !llvm.loop !163

495:                                              ; preds = %225
  %496 = and i16 %64, 448
  %497 = icmp eq i16 %496, 0
  %498 = trunc i64 %96 to i32
  %499 = trunc i64 %129 to i32
  %500 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %499, i32 noundef %498, double noundef %238)
  br i1 %497, label %504, label %501

501:                                              ; preds = %495
  %502 = load ptr, ptr @stdout, align 8, !tbaa !70
  %503 = tail call i32 @fflush(ptr noundef %502)
  br label %504

504:                                              ; preds = %495, %501, %225
  %505 = fcmp olt double %238, %131
  %506 = select i1 %505, double %238, double %131, !prof !164
  br i1 %69, label %514, label %507, !prof !145

507:                                              ; preds = %504
  %508 = tail call double @llvm.fmuladd.f64(double %238, double %72, double %74)
  %509 = fptosi double %508 to i32
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, ptr %76, i64 %510
  %512 = load i32, ptr %511, align 4, !tbaa !104
  %513 = add i32 %512, 1
  store i32 %513, ptr %511, align 4, !tbaa !104
  br label %514

514:                                              ; preds = %507, %504
  %515 = fcmp olt double %238, %78
  %516 = select i1 %79, i1 %515, i1 false, !prof !165
  %517 = zext i1 %516 to i32
  %518 = add i32 %132, %517
  br i1 %80, label %564, label %519, !prof !165

519:                                              ; preds = %514
  %520 = icmp eq i32 %106, 0
  br i1 %520, label %564, label %521

521:                                              ; preds = %519
  %522 = getelementptr inbounds %struct.TargaImage, ptr %5, i64 0, i32 14
  %523 = getelementptr inbounds %struct.TargaImage, ptr %11, i64 0, i32 14
  %524 = zext i32 %106 to i64
  %525 = icmp eq i32 %137, 0
  %526 = fcmp ult double %238, 1.000000e+00
  %527 = fadd double %238, 1.000000e+00
  %528 = fmul double %527, 5.000000e-01
  %529 = zext i32 %137 to i64
  br label %530

530:                                              ; preds = %521, %541
  %531 = phi i64 [ 0, %521 ], [ %542, %541 ]
  br i1 %525, label %541, label %532

532:                                              ; preds = %530
  %533 = load ptr, ptr %522, align 8, !tbaa !128
  %534 = add nuw i64 %531, %96
  %535 = and i64 %534, 4294967295
  %536 = getelementptr inbounds ptr, ptr %533, i64 %535
  %537 = load ptr, ptr %536, align 8, !tbaa !70
  %538 = load ptr, ptr %523, align 8, !tbaa !128
  %539 = getelementptr inbounds ptr, ptr %538, i64 %535
  %540 = load ptr, ptr %539, align 8, !tbaa !70
  br label %544

541:                                              ; preds = %558, %530
  %542 = add nuw nsw i64 %531, 1
  %543 = icmp ult i64 %542, %524
  br i1 %543, label %530, label %564, !llvm.loop !166

544:                                              ; preds = %532, %558
  %545 = phi i64 [ 0, %532 ], [ %562, %558 ]
  %546 = add nuw i64 %545, %129
  %547 = and i64 %546, 4294967295
  %548 = getelementptr inbounds %struct.Pixel, ptr %537, i64 %547, i32 2
  %549 = load i8, ptr %548, align 1, !tbaa !136
  %550 = getelementptr inbounds %struct.Pixel, ptr %540, i64 %547, i32 2
  store i8 %549, ptr %550, align 1, !tbaa !136
  br i1 %526, label %551, label %558

551:                                              ; preds = %544
  %552 = tail call i8 @llvm.umax.i8(i8 %549, i8 16)
  %553 = zext i8 %552 to i32
  %554 = add nsw i32 %553, -16
  %555 = sitofp i32 %554 to double
  %556 = fmul double %528, %555
  %557 = fptoui double %556 to i8
  br label %558

558:                                              ; preds = %544, %551
  %559 = phi i8 [ %557, %551 ], [ %549, %544 ]
  %560 = getelementptr inbounds %struct.Pixel, ptr %540, i64 %547, i32 1
  store i8 %559, ptr %560, align 1, !tbaa !139
  %561 = getelementptr inbounds %struct.Pixel, ptr %540, i64 %547
  store i8 %559, ptr %561, align 1, !tbaa !140
  %562 = add nuw nsw i64 %545, 1
  %563 = icmp ult i64 %562, %529
  br i1 %563, label %544, label %541, !llvm.loop !167

564:                                              ; preds = %541, %519, %514
  br i1 %82, label %586, label %565, !prof !165

565:                                              ; preds = %564
  %566 = load ptr, ptr @stderr, align 8, !tbaa !70
  %567 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %566, ptr noundef nonnull @.str.49, double noundef %163, double noundef %177) #20
  %568 = load ptr, ptr @stderr, align 8, !tbaa !70
  %569 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %568, ptr noundef nonnull @.str.50, double noundef %194, double noundef %209) #20
  %570 = load ptr, ptr @stderr, align 8, !tbaa !70
  %571 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %570, ptr noundef nonnull @.str.51, double noundef %227) #20
  %572 = load ptr, ptr @stderr, align 8, !tbaa !70
  br i1 %80, label %581, label %573

573:                                              ; preds = %565
  %574 = getelementptr inbounds %struct.TargaImage, ptr %11, i64 0, i32 14
  %575 = load ptr, ptr %574, align 8, !tbaa !128
  %576 = getelementptr inbounds ptr, ptr %575, i64 %96
  %577 = load ptr, ptr %576, align 8, !tbaa !70
  %578 = getelementptr inbounds %struct.Pixel, ptr %577, i64 %129, i32 2
  %579 = load i8, ptr %578, align 1, !tbaa !136
  %580 = zext i8 %579 to i32
  br label %581

581:                                              ; preds = %565, %573
  %582 = phi i32 [ %580, %573 ], [ 0, %565 ]
  %583 = trunc i64 %96 to i32
  %584 = trunc i64 %129 to i32
  %585 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %572, ptr noundef nonnull @.str.52, i32 noundef %584, i32 noundef %583, double noundef %238, i32 noundef %582) #20
  br label %586

586:                                              ; preds = %581, %564
  %587 = icmp ult i64 %133, %84
  br i1 %587, label %128, label %121, !prof !168, !llvm.loop !169

588:                                              ; preds = %110
  %589 = icmp eq i32 %117, 0
  br i1 %589, label %595, label %590, !prof !82

590:                                              ; preds = %588
  %591 = uitofp i32 %117 to double
  %592 = uitofp i32 %112 to double
  %593 = fmul double %119, %592
  %594 = fcmp olt double %593, %591
  br i1 %594, label %595, label %599

595:                                              ; preds = %590, %588
  %596 = uitofp i32 %112 to double
  %597 = fmul double %119, %596
  %598 = fptoui double %597 to i32
  br label %599

599:                                              ; preds = %590, %595, %110
  %600 = phi i32 [ %598, %595 ], [ %117, %590 ], [ %117, %110 ]
  %601 = icmp ugt i32 %111, %600
  %602 = load ptr, ptr %0, align 8, !tbaa !95
  br i1 %601, label %603, label %607, !prof !88

603:                                              ; preds = %599
  %604 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %602)
  %605 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.105)
  %606 = load ptr, ptr @stdout, align 8, !tbaa !70
  br label %622

607:                                              ; preds = %599
  %608 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.55, ptr noundef %602) #20
  %609 = load ptr, ptr @stderr, align 8, !tbaa !70
  %610 = icmp eq ptr %115, %609
  br i1 %610, label %622, label %611, !prof !82

611:                                              ; preds = %607
  %612 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %613 = load i16, ptr %612, align 8
  %614 = and i16 %613, 448
  %615 = icmp eq i16 %614, 0
  br i1 %615, label %619, label %616

616:                                              ; preds = %611
  %617 = load ptr, ptr @stdout, align 8, !tbaa !70
  %618 = tail call i32 @fflush(ptr noundef %617)
  br label %619

619:                                              ; preds = %616, %611
  %620 = load ptr, ptr @stderr, align 8, !tbaa !70
  %621 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %620, ptr noundef nonnull @.str.55, ptr noundef %602) #20
  br label %622

622:                                              ; preds = %607, %619, %603
  %623 = phi ptr [ %606, %603 ], [ %115, %619 ], [ %115, %607 ]
  %624 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 12
  %625 = load double, ptr %624, align 8, !tbaa !93
  %626 = fcmp ogt double %625, 0.000000e+00
  br i1 %626, label %627, label %642, !prof !82

627:                                              ; preds = %622
  %628 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %623, ptr noundef nonnull @.str.56, i32 noundef %111, i32 noundef %600, i32 noundef %112)
  %629 = load ptr, ptr @stderr, align 8, !tbaa !70
  %630 = icmp eq ptr %623, %629
  br i1 %630, label %642, label %631, !prof !82

631:                                              ; preds = %627
  %632 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %633 = load i16, ptr %632, align 8
  %634 = and i16 %633, 448
  %635 = icmp eq i16 %634, 0
  br i1 %635, label %639, label %636

636:                                              ; preds = %631
  %637 = load ptr, ptr @stdout, align 8, !tbaa !70
  %638 = tail call i32 @fflush(ptr noundef %637)
  br label %639

639:                                              ; preds = %636, %631
  %640 = load ptr, ptr @stderr, align 8, !tbaa !70
  %641 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %640, ptr noundef nonnull @.str.56, i32 noundef %111, i32 noundef %600, i32 noundef %112) #20
  br label %642

642:                                              ; preds = %627, %639, %622
  %643 = icmp eq i32 %112, 0
  br i1 %643, label %661, label %644, !prof !88

644:                                              ; preds = %642
  %645 = uitofp i32 %112 to double
  %646 = fdiv double %114, %645
  %647 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %623, ptr noundef nonnull @.str.57, double noundef %646)
  %648 = load ptr, ptr @stderr, align 8, !tbaa !70
  %649 = icmp eq ptr %623, %648
  br i1 %649, label %661, label %650, !prof !82

650:                                              ; preds = %644
  %651 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %652 = load i16, ptr %651, align 8
  %653 = and i16 %652, 448
  %654 = icmp eq i16 %653, 0
  br i1 %654, label %658, label %655

655:                                              ; preds = %650
  %656 = load ptr, ptr @stdout, align 8, !tbaa !70
  %657 = tail call i32 @fflush(ptr noundef %656)
  br label %658

658:                                              ; preds = %655, %650
  %659 = load ptr, ptr @stderr, align 8, !tbaa !70
  %660 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %659, ptr noundef nonnull @.str.57, double noundef %646) #20
  br label %661

661:                                              ; preds = %644, %658, %642
  %662 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %623, ptr noundef nonnull @.str.58, double noundef %113)
  %663 = load ptr, ptr @stderr, align 8, !tbaa !70
  %664 = icmp eq ptr %623, %663
  br i1 %664, label %676, label %665, !prof !82

665:                                              ; preds = %661
  %666 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %667 = load i16, ptr %666, align 8
  %668 = and i16 %667, 448
  %669 = icmp eq i16 %668, 0
  br i1 %669, label %673, label %670

670:                                              ; preds = %665
  %671 = load ptr, ptr @stdout, align 8, !tbaa !70
  %672 = tail call i32 @fflush(ptr noundef %671)
  br label %673

673:                                              ; preds = %670, %665
  %674 = load ptr, ptr @stderr, align 8, !tbaa !70
  %675 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %674, ptr noundef nonnull @.str.58, double noundef %113) #20
  br label %676

676:                                              ; preds = %673, %661
  %677 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %678 = load i16, ptr %677, align 8
  %679 = or i16 %678, 32
  store i16 %679, ptr %677, align 8
  %680 = and i16 %678, 16
  %681 = icmp eq i16 %680, 0
  br i1 %681, label %690, label %682, !prof !88

682:                                              ; preds = %676
  %683 = load ptr, ptr %0, align 8, !tbaa !95
  br i1 %643, label %688, label %684, !prof !88

684:                                              ; preds = %682
  %685 = uitofp i32 %112 to double
  %686 = fdiv double %114, %685
  %687 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef %683, double noundef %686)
  br label %690

688:                                              ; preds = %682
  %689 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %683)
  br label %690

690:                                              ; preds = %684, %688, %676
  %691 = and i16 %678, 448
  %692 = icmp eq i16 %691, 0
  br i1 %692, label %696, label %693, !prof !82

693:                                              ; preds = %690
  %694 = load ptr, ptr @stdout, align 8, !tbaa !70
  %695 = tail call i32 @fflush(ptr noundef %694)
  br label %696

696:                                              ; preds = %690, %693
  %697 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %623, ptr noundef nonnull @.str.61, i32 noundef 10)
  %698 = load ptr, ptr @stderr, align 8, !tbaa !70
  %699 = icmp eq ptr %623, %698
  br i1 %699, label %707, label %700, !prof !82

700:                                              ; preds = %696
  br i1 %692, label %704, label %701

701:                                              ; preds = %700
  %702 = load ptr, ptr @stdout, align 8, !tbaa !70
  %703 = tail call i32 @fflush(ptr noundef %702)
  br label %704

704:                                              ; preds = %701, %700
  %705 = load ptr, ptr @stderr, align 8, !tbaa !70
  %706 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %705, ptr noundef nonnull @.str.61, i32 noundef 10) #20
  br label %707

707:                                              ; preds = %704, %696
  %708 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 16
  %709 = load ptr, ptr %708, align 8, !tbaa !103
  %710 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 15
  %711 = load i32, ptr %710, align 8, !tbaa !74
  %712 = zext i32 %711 to i64
  %713 = getelementptr inbounds i32, ptr %709, i64 %712
  %714 = load i32, ptr %713, align 4, !tbaa !104
  %715 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %623, ptr noundef nonnull @.str.62, double noundef 1.000000e+00, i32 noundef %714)
  %716 = load ptr, ptr @stderr, align 8, !tbaa !70
  %717 = icmp eq ptr %623, %716
  br i1 %717, label %726, label %718, !prof !82

718:                                              ; preds = %707
  br i1 %692, label %722, label %719

719:                                              ; preds = %718
  %720 = load ptr, ptr @stdout, align 8, !tbaa !70
  %721 = tail call i32 @fflush(ptr noundef %720)
  br label %722

722:                                              ; preds = %719, %718
  %723 = load ptr, ptr @stderr, align 8, !tbaa !70
  %724 = load i32, ptr %713, align 4, !tbaa !104
  %725 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %723, ptr noundef nonnull @.str.62, double noundef 1.000000e+00, i32 noundef %724) #20
  br label %726

726:                                              ; preds = %722, %707
  %727 = add i32 %711, -1
  %728 = icmp sgt i32 %727, -1
  br i1 %728, label %729, label %762, !prof !81

729:                                              ; preds = %726
  %730 = lshr i32 %711, 1
  %731 = uitofp i32 %730 to float
  %732 = uitofp i32 %711 to float
  %733 = zext nneg i32 %727 to i64
  br label %734

734:                                              ; preds = %729, %759
  %735 = phi i64 [ %733, %729 ], [ %760, %759 ]
  %736 = trunc i64 %735 to i32
  %737 = sitofp i32 %736 to float
  %738 = fsub float %737, %731
  %739 = fdiv float %738, %732
  %740 = fmul float %739, 2.000000e+00
  %741 = fadd float %738, 1.000000e+00
  %742 = fdiv float %741, %732
  %743 = fmul float %742, 2.000000e+00
  %744 = fpext float %740 to double
  %745 = fpext float %743 to double
  %746 = getelementptr inbounds i32, ptr %709, i64 %735
  %747 = load i32, ptr %746, align 4, !tbaa !104
  %748 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %623, ptr noundef nonnull @.str.63, double noundef %744, double noundef %745, i32 noundef %747)
  %749 = load ptr, ptr @stderr, align 8, !tbaa !70
  %750 = icmp eq ptr %623, %749
  br i1 %750, label %759, label %751, !prof !170

751:                                              ; preds = %734
  br i1 %692, label %755, label %752

752:                                              ; preds = %751
  %753 = load ptr, ptr @stdout, align 8, !tbaa !70
  %754 = tail call i32 @fflush(ptr noundef %753)
  br label %755

755:                                              ; preds = %752, %751
  %756 = load ptr, ptr @stderr, align 8, !tbaa !70
  %757 = load i32, ptr %746, align 4, !tbaa !104
  %758 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %756, ptr noundef nonnull @.str.63, double noundef %744, double noundef %745, i32 noundef %757) #20
  br label %759

759:                                              ; preds = %755, %734
  %760 = add nsw i64 %735, -1
  %761 = icmp sgt i64 %735, 0
  br i1 %761, label %734, label %762, !prof !171, !llvm.loop !172

762:                                              ; preds = %759, %726, %25
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @mean(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 !prof !121 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %10

6:                                                ; preds = %10, %2
  %7 = phi double [ 0.000000e+00, %2 ], [ %15, %10 ]
  %8 = sitofp i32 %1 to double
  %9 = fdiv double %7, %8
  ret double %9

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 0, %4 ], [ %16, %10 ]
  %12 = phi double [ 0.000000e+00, %4 ], [ %15, %10 ]
  %13 = getelementptr inbounds double, ptr %0, i64 %11
  %14 = load double, ptr %13, align 8, !tbaa !152
  %15 = fadd double %12, %14
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %5
  br i1 %17, label %6, label %10, !llvm.loop !154
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @variance(ptr nocapture noundef readonly %0, double noundef %1, i32 noundef %2) local_unnamed_addr #14 !prof !121 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %12

7:                                                ; preds = %12, %3
  %8 = phi double [ 0.000000e+00, %3 ], [ %18, %12 ]
  %9 = add nsw i32 %2, -1
  %10 = sitofp i32 %9 to double
  %11 = fdiv double %8, %10
  ret double %11

12:                                               ; preds = %5, %12
  %13 = phi i64 [ 0, %5 ], [ %19, %12 ]
  %14 = phi double [ 0.000000e+00, %5 ], [ %18, %12 ]
  %15 = getelementptr inbounds double, ptr %0, i64 %13
  %16 = load double, ptr %15, align 8, !tbaa !152
  %17 = fsub double %16, %1
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %17, double %14)
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %6
  br i1 %20, label %7, label %12, !llvm.loop !155
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @covariance(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #14 !prof !121 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = zext nneg i32 %4 to i64
  br label %14

9:                                                ; preds = %14, %5
  %10 = phi double [ 0.000000e+00, %5 ], [ %23, %14 ]
  %11 = add nsw i32 %4, -1
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %10, %12
  ret double %13

14:                                               ; preds = %7, %14
  %15 = phi i64 [ 0, %7 ], [ %24, %14 ]
  %16 = phi double [ 0.000000e+00, %7 ], [ %23, %14 ]
  %17 = getelementptr inbounds double, ptr %0, i64 %15
  %18 = load double, ptr %17, align 8, !tbaa !152
  %19 = fsub double %18, %2
  %20 = getelementptr inbounds double, ptr %1, i64 %15
  %21 = load double, ptr %20, align 8, !tbaa !152
  %22 = fsub double %21, %3
  %23 = tail call double @llvm.fmuladd.f64(double %19, double %22, double %16)
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %9, label %14, !llvm.loop !156
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @read_yuv_file(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly byval(%struct.params) align 8 %2) local_unnamed_addr #2 !prof !121 {
  store i8 0, ptr %1, align 8, !tbaa !130
  %4 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  store i8 0, ptr %4, align 1, !tbaa !110
  %5 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  store i32 2, ptr %5, align 4, !tbaa !113
  %6 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  store i16 0, ptr %6, align 8, !tbaa !131
  %7 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  store i16 0, ptr %7, align 2, !tbaa !126
  %8 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  store i8 0, ptr %8, align 4, !tbaa !132
  %9 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  store i16 0, ptr %9, align 2, !tbaa !133
  %10 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  store i16 0, ptr %10, align 8, !tbaa !134
  %11 = getelementptr inbounds %struct.params, ptr %2, i64 0, i32 17
  %12 = load i32, ptr %11, align 8, !tbaa !78
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  store i16 %13, ptr %14, align 2, !tbaa !124
  %15 = getelementptr inbounds %struct.params, ptr %2, i64 0, i32 18
  %16 = load i32, ptr %15, align 4, !tbaa !79
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  store i16 %17, ptr %18, align 4, !tbaa !125
  %19 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  store i8 24, ptr %19, align 2, !tbaa !114
  %20 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  store i8 0, ptr %20, align 1, !tbaa !115
  %21 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 15
  store i8 0, ptr %21, align 8, !tbaa !116
  %22 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.69)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load ptr, ptr @stderr, align 8, !tbaa !70
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.70, ptr noundef %0) #20
  tail call void @exit(i32 noundef -1) #22
  unreachable

27:                                               ; preds = %3
  %28 = load i16, ptr %18, align 4, !tbaa !125
  %29 = zext i16 %28 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #23
  %32 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 14
  store ptr %31, ptr %32, align 8, !tbaa !128
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load ptr, ptr @stderr, align 8, !tbaa !70
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.38, i64 noundef %30, ptr noundef nonnull @.str.39, i32 noundef 800) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

37:                                               ; preds = %27
  %38 = tail call noalias ptr @malloc(i64 noundef %30) #23
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr @stderr, align 8, !tbaa !70
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.38, i64 noundef %30, ptr noundef nonnull @.str.39, i32 noundef 801) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

43:                                               ; preds = %37
  %44 = load i16, ptr %14, align 2, !tbaa !124
  %45 = zext i16 %44 to i64
  %46 = tail call noalias ptr @malloc(i64 noundef %45) #23
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = icmp eq i16 %28, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %48
  %51 = shl nuw nsw i64 %45, 2
  %52 = mul nuw nsw i64 %45, 3
  %53 = zext i16 %28 to i64
  br label %63

54:                                               ; preds = %43
  %55 = load ptr, ptr @stderr, align 8, !tbaa !70
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.38, i64 noundef %45, ptr noundef nonnull @.str.39, i32 noundef 802) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

57:                                               ; preds = %75
  %58 = add nuw nsw i64 %64, 1
  %59 = icmp eq i64 %58, %53
  br i1 %59, label %60, label %63, !llvm.loop !173

60:                                               ; preds = %57, %48
  %61 = load i16, ptr %18, align 4, !tbaa !125
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %82, label %85

63:                                               ; preds = %50, %57
  %64 = phi i64 [ 0, %50 ], [ %58, %57 ]
  %65 = tail call noalias ptr @malloc(i64 noundef %51) #23
  %66 = load ptr, ptr %32, align 8, !tbaa !128
  %67 = getelementptr inbounds ptr, ptr %66, i64 %64
  store ptr %65, ptr %67, align 8, !tbaa !70
  %68 = load ptr, ptr %32, align 8, !tbaa !128
  %69 = getelementptr inbounds ptr, ptr %68, i64 %64
  %70 = load ptr, ptr %69, align 8, !tbaa !70
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load ptr, ptr @stderr, align 8, !tbaa !70
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.38, i64 noundef %51, ptr noundef nonnull @.str.39, i32 noundef 804) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

75:                                               ; preds = %63
  %76 = tail call noalias ptr @malloc(i64 noundef %52) #23
  %77 = getelementptr inbounds ptr, ptr %38, i64 %64
  store ptr %76, ptr %77, align 8, !tbaa !70
  %78 = icmp eq ptr %76, null
  br i1 %78, label %79, label %57

79:                                               ; preds = %75
  %80 = load ptr, ptr @stderr, align 8, !tbaa !70
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.38, i64 noundef %52, ptr noundef nonnull @.str.39, i32 noundef 805) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

82:                                               ; preds = %110, %60
  %83 = load i16, ptr %18, align 4, !tbaa !125
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %115, label %118

85:                                               ; preds = %60, %110
  %86 = phi i64 [ %111, %110 ], [ 0, %60 ]
  %87 = load i16, ptr %14, align 2, !tbaa !124
  %88 = zext i16 %87 to i64
  %89 = tail call i64 @fread(ptr noundef nonnull %46, i64 noundef 1, i64 noundef %88, ptr noundef nonnull %22)
  %90 = trunc i64 %89 to i32
  %91 = load i16, ptr %14, align 2, !tbaa !124
  %92 = zext i16 %91 to i32
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %85
  %95 = icmp eq i16 %91, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds ptr, ptr %38, i64 %86
  %98 = load ptr, ptr %97, align 8, !tbaa !70
  %99 = zext i16 %91 to i64
  br label %103

100:                                              ; preds = %85
  %101 = load ptr, ptr @stderr, align 8, !tbaa !70
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.71, ptr noundef %0, i32 noundef %90, i32 noundef %92) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

103:                                              ; preds = %96, %103
  %104 = phi i64 [ 0, %96 ], [ %108, %103 ]
  %105 = getelementptr inbounds i8, ptr %46, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !98
  %107 = getelementptr inbounds %struct.YUV, ptr %98, i64 %104
  store i8 %106, ptr %107, align 1, !tbaa !174
  %108 = add nuw nsw i64 %104, 1
  %109 = icmp eq i64 %108, %99
  br i1 %109, label %110, label %103, !llvm.loop !176

110:                                              ; preds = %103, %94
  %111 = add nuw nsw i64 %86, 1
  %112 = load i16, ptr %18, align 4, !tbaa !125
  %113 = zext i16 %112 to i64
  %114 = icmp ult i64 %111, %113
  br i1 %114, label %85, label %82, !llvm.loop !177

115:                                              ; preds = %157, %82
  %116 = load i16, ptr %18, align 4, !tbaa !125
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %162, label %171

118:                                              ; preds = %82, %157
  %119 = phi i64 [ %158, %157 ], [ 0, %82 ]
  %120 = and i64 %119, 1
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = load i16, ptr %14, align 2, !tbaa !124
  %124 = lshr i16 %123, 1
  %125 = zext nneg i16 %124 to i64
  %126 = tail call i64 @fread(ptr noundef nonnull %46, i64 noundef 1, i64 noundef %125, ptr noundef nonnull %22)
  %127 = trunc i64 %126 to i32
  %128 = load i16, ptr %14, align 2, !tbaa !124
  %129 = lshr i16 %128, 1
  %130 = zext nneg i16 %129 to i32
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load ptr, ptr @stderr, align 8, !tbaa !70
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.72, ptr noundef %0, i32 noundef %127, i32 noundef %130) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

135:                                              ; preds = %122, %118
  %136 = load i16, ptr %14, align 2, !tbaa !124
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %157, label %138

138:                                              ; preds = %135
  %139 = zext i16 %136 to i32
  %140 = getelementptr inbounds ptr, ptr %38, i64 %119
  %141 = load ptr, ptr %140, align 8, !tbaa !70
  %142 = add nsw i32 %139, -1
  %143 = lshr i32 %142, 1
  %144 = add nuw i32 %143, 1
  %145 = zext i32 %144 to i64
  br label %146

146:                                              ; preds = %138, %146
  %147 = phi i64 [ 0, %138 ], [ %154, %146 ]
  %148 = phi i64 [ 0, %138 ], [ %155, %146 ]
  %149 = getelementptr inbounds i8, ptr %46, i64 %147
  %150 = load i8, ptr %149, align 1, !tbaa !98
  %151 = getelementptr inbounds %struct.YUV, ptr %141, i64 %148, i32 1
  store i8 %150, ptr %151, align 1, !tbaa !178
  %152 = or disjoint i64 %148, 1
  %153 = getelementptr inbounds %struct.YUV, ptr %141, i64 %152, i32 1
  store i8 %150, ptr %153, align 1, !tbaa !178
  %154 = add nuw nsw i64 %147, 1
  %155 = add nuw nsw i64 %148, 2
  %156 = icmp eq i64 %154, %145
  br i1 %156, label %157, label %146, !llvm.loop !179

157:                                              ; preds = %146, %135
  %158 = add nuw nsw i64 %119, 1
  %159 = load i16, ptr %18, align 4, !tbaa !125
  %160 = zext i16 %159 to i64
  %161 = icmp ult i64 %158, %160
  br i1 %161, label %118, label %115, !llvm.loop !180

162:                                              ; preds = %210, %115
  %163 = phi i16 [ %116, %115 ], [ %212, %210 ]
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %275, label %165

165:                                              ; preds = %162
  %166 = load i16, ptr %14, align 2, !tbaa !124
  %167 = icmp eq i16 %166, 0
  %168 = zext i16 %163 to i64
  %169 = zext i16 %163 to i64
  %170 = zext i16 %166 to i64
  br label %215

171:                                              ; preds = %115, %210
  %172 = phi i64 [ %211, %210 ], [ 0, %115 ]
  %173 = and i64 %172, 1
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %171
  %176 = load i16, ptr %14, align 2, !tbaa !124
  %177 = lshr i16 %176, 1
  %178 = zext nneg i16 %177 to i64
  %179 = tail call i64 @fread(ptr noundef nonnull %46, i64 noundef 1, i64 noundef %178, ptr noundef nonnull %22)
  %180 = trunc i64 %179 to i32
  %181 = load i16, ptr %14, align 2, !tbaa !124
  %182 = lshr i16 %181, 1
  %183 = zext nneg i16 %182 to i32
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = load ptr, ptr @stderr, align 8, !tbaa !70
  %187 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef nonnull @.str.73, ptr noundef %0, i32 noundef %180, i32 noundef %183) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

188:                                              ; preds = %175, %171
  %189 = load i16, ptr %14, align 2, !tbaa !124
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %210, label %191

191:                                              ; preds = %188
  %192 = zext i16 %189 to i32
  %193 = getelementptr inbounds ptr, ptr %38, i64 %172
  %194 = load ptr, ptr %193, align 8, !tbaa !70
  %195 = add nsw i32 %192, -1
  %196 = lshr i32 %195, 1
  %197 = add nuw i32 %196, 1
  %198 = zext i32 %197 to i64
  br label %199

199:                                              ; preds = %191, %199
  %200 = phi i64 [ 0, %191 ], [ %207, %199 ]
  %201 = phi i64 [ 0, %191 ], [ %208, %199 ]
  %202 = getelementptr inbounds i8, ptr %46, i64 %200
  %203 = load i8, ptr %202, align 1, !tbaa !98
  %204 = getelementptr inbounds %struct.YUV, ptr %194, i64 %201, i32 2
  store i8 %203, ptr %204, align 1, !tbaa !181
  %205 = or disjoint i64 %201, 1
  %206 = getelementptr inbounds %struct.YUV, ptr %194, i64 %205, i32 2
  store i8 %203, ptr %206, align 1, !tbaa !181
  %207 = add nuw nsw i64 %200, 1
  %208 = add nuw nsw i64 %201, 2
  %209 = icmp eq i64 %207, %198
  br i1 %209, label %210, label %199, !llvm.loop !182

210:                                              ; preds = %199, %188
  %211 = add nuw nsw i64 %172, 1
  %212 = load i16, ptr %18, align 4, !tbaa !125
  %213 = zext i16 %212 to i64
  %214 = icmp ult i64 %211, %213
  br i1 %214, label %171, label %162, !llvm.loop !183

215:                                              ; preds = %165, %272
  %216 = phi i64 [ 0, %165 ], [ %273, %272 ]
  %217 = phi i64 [ %168, %165 ], [ %218, %272 ]
  %218 = add nsw i64 %217, -1
  br i1 %167, label %272, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds ptr, ptr %38, i64 %218
  %221 = load ptr, ptr %220, align 8, !tbaa !70
  %222 = load ptr, ptr %32, align 8, !tbaa !128
  %223 = getelementptr inbounds ptr, ptr %222, i64 %216
  %224 = load ptr, ptr %223, align 8, !tbaa !70
  %225 = load ptr, ptr %32, align 8, !tbaa !128
  %226 = getelementptr inbounds ptr, ptr %225, i64 %216
  %227 = load ptr, ptr %226, align 8, !tbaa !70
  %228 = load ptr, ptr %32, align 8, !tbaa !128
  %229 = getelementptr inbounds ptr, ptr %228, i64 %216
  %230 = load ptr, ptr %229, align 8, !tbaa !70
  br label %231

231:                                              ; preds = %219, %231
  %232 = phi i64 [ 0, %219 ], [ %270, %231 ]
  %233 = getelementptr inbounds %struct.YUV, ptr %221, i64 %232
  %234 = load i8, ptr %233, align 1, !tbaa !174
  %235 = zext i8 %234 to i32
  %236 = add nsw i32 %235, -16
  %237 = sitofp i32 %236 to double
  %238 = getelementptr inbounds %struct.YUV, ptr %221, i64 %232, i32 1
  %239 = load i8, ptr %238, align 1, !tbaa !178
  %240 = zext i8 %239 to i32
  %241 = add nsw i32 %240, -128
  %242 = sitofp i32 %241 to double
  %243 = fmul double %242, 2.018000e+00
  %244 = tail call double @llvm.fmuladd.f64(double %237, double 1.164000e+00, double %243)
  %245 = fptosi double %244 to i32
  %246 = tail call i32 @llvm.smin.i32(i32 %245, i32 255)
  %247 = tail call i32 @llvm.smax.i32(i32 %246, i32 16)
  %248 = trunc i32 %247 to i8
  %249 = getelementptr inbounds %struct.Pixel, ptr %224, i64 %232
  store i8 %248, ptr %249, align 1, !tbaa !140
  %250 = getelementptr inbounds %struct.YUV, ptr %221, i64 %232, i32 2
  %251 = load i8, ptr %250, align 1, !tbaa !181
  %252 = zext i8 %251 to i32
  %253 = add nsw i32 %252, -128
  %254 = sitofp i32 %253 to double
  %255 = fmul double %254, -8.120000e-01
  %256 = tail call double @llvm.fmuladd.f64(double %237, double 1.164000e+00, double %255)
  %257 = tail call double @llvm.fmuladd.f64(double %242, double -3.910000e-01, double %256)
  %258 = fptosi double %257 to i32
  %259 = tail call i32 @llvm.smin.i32(i32 %258, i32 255)
  %260 = tail call i32 @llvm.smax.i32(i32 %259, i32 16)
  %261 = trunc i32 %260 to i8
  %262 = getelementptr inbounds %struct.Pixel, ptr %227, i64 %232, i32 1
  store i8 %261, ptr %262, align 1, !tbaa !139
  %263 = fmul double %254, 1.596000e+00
  %264 = tail call double @llvm.fmuladd.f64(double %237, double 1.164000e+00, double %263)
  %265 = fptosi double %264 to i32
  %266 = tail call i32 @llvm.smin.i32(i32 %265, i32 255)
  %267 = tail call i32 @llvm.smax.i32(i32 %266, i32 16)
  %268 = trunc i32 %267 to i8
  %269 = getelementptr inbounds %struct.Pixel, ptr %230, i64 %232, i32 2
  store i8 %268, ptr %269, align 1, !tbaa !136
  %270 = add nuw nsw i64 %232, 1
  %271 = icmp eq i64 %270, %170
  br i1 %271, label %272, label %231, !llvm.loop !184

272:                                              ; preds = %231, %215
  %273 = add nuw nsw i64 %216, 1
  %274 = icmp eq i64 %273, %169
  br i1 %274, label %275, label %215, !llvm.loop !185

275:                                              ; preds = %272, %162
  %276 = tail call i32 @fclose(ptr noundef nonnull %22)
  %277 = load i16, ptr %18, align 4, !tbaa !125
  %278 = icmp eq i16 %277, 0
  br i1 %278, label %287, label %279

279:                                              ; preds = %275, %279
  %280 = phi i64 [ %283, %279 ], [ 0, %275 ]
  %281 = getelementptr inbounds ptr, ptr %38, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !70
  tail call void @free(ptr noundef %282) #19
  %283 = add nuw nsw i64 %280, 1
  %284 = load i16, ptr %18, align 4, !tbaa !125
  %285 = zext i16 %284 to i64
  %286 = icmp ult i64 %283, %285
  br i1 %286, label %279, label %287, !llvm.loop !186

287:                                              ; preds = %279, %275
  tail call void @free(ptr noundef %46) #19
  tail call void @free(ptr noundef %38) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @read_tga_file(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 !prof !122 {
  %3 = alloca [2 x i8], align 1
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = alloca [2 x i8], align 1
  %7 = alloca [2 x i8], align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca [2 x i8], align 1
  %11 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.69)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16, !prof !94

13:                                               ; preds = %2
  %14 = load ptr, ptr @stderr, align 8, !tbaa !70
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.70, ptr noundef %0) #20
  tail call void @exit(i32 noundef -1) #22
  unreachable

16:                                               ; preds = %2
  %17 = tail call i32 @fgetc(ptr noundef %11)
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %1, align 8, !tbaa !130
  %19 = tail call i32 @fgetc(ptr noundef %11)
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  store i8 %20, ptr %21, align 1, !tbaa !110
  %22 = tail call i32 @fgetc(ptr noundef %11)
  %23 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  store i32 %22, ptr %23, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #19
  %24 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 2, i64 noundef 1, ptr noundef %11)
  %25 = load i8, ptr %3, align 1, !tbaa !98
  %26 = zext i8 %25 to i16
  %27 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !98
  %29 = zext i8 %28 to i16
  %30 = shl nuw i16 %29, 8
  %31 = or disjoint i16 %30, %26
  %32 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  store i16 %31, ptr %32, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #19
  %33 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 2, i64 noundef 1, ptr noundef %11)
  %34 = load i8, ptr %4, align 1, !tbaa !98
  %35 = zext i8 %34 to i16
  %36 = getelementptr inbounds [2 x i8], ptr %4, i64 0, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !98
  %38 = zext i8 %37 to i16
  %39 = shl nuw i16 %38, 8
  %40 = or disjoint i16 %39, %35
  %41 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  store i16 %40, ptr %41, align 2, !tbaa !126
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #19
  %42 = tail call i32 @fgetc(ptr noundef %11)
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  store i8 %43, ptr %44, align 4, !tbaa !132
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #19
  %45 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 2, i64 noundef 1, ptr noundef %11)
  %46 = load i8, ptr %5, align 1, !tbaa !98
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !98
  %50 = zext i8 %49 to i16
  %51 = shl nuw i16 %50, 8
  %52 = or disjoint i16 %51, %47
  %53 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  store i16 %52, ptr %53, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #19
  %54 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 2, i64 noundef 1, ptr noundef %11)
  %55 = load i8, ptr %6, align 1, !tbaa !98
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds [2 x i8], ptr %6, i64 0, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !98
  %59 = zext i8 %58 to i16
  %60 = shl nuw i16 %59, 8
  %61 = or disjoint i16 %60, %56
  %62 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  store i16 %61, ptr %62, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #19
  %63 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 2, i64 noundef 1, ptr noundef %11)
  %64 = load i8, ptr %7, align 1, !tbaa !98
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds [2 x i8], ptr %7, i64 0, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !98
  %68 = zext i8 %67 to i16
  %69 = shl nuw i16 %68, 8
  %70 = or disjoint i16 %69, %65
  %71 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  store i16 %70, ptr %71, align 2, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #19
  %72 = call i64 @fread(ptr noundef nonnull %8, i64 noundef 2, i64 noundef 1, ptr noundef %11)
  %73 = load i8, ptr %8, align 1, !tbaa !98
  %74 = zext i8 %73 to i16
  %75 = getelementptr inbounds [2 x i8], ptr %8, i64 0, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !98
  %77 = zext i8 %76 to i16
  %78 = shl nuw i16 %77, 8
  %79 = or disjoint i16 %78, %74
  %80 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  store i16 %79, ptr %80, align 4, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #19
  %81 = tail call i32 @fgetc(ptr noundef %11)
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  store i8 %82, ptr %83, align 2, !tbaa !114
  %84 = tail call i32 @fgetc(ptr noundef %11)
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  store i8 %85, ptr %86, align 1, !tbaa !115
  %87 = and i8 %85, 15
  %88 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 15
  store i8 %87, ptr %88, align 8, !tbaa !116
  %89 = load i8, ptr %1, align 8, !tbaa !130
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %95, label %91, !prof !123

91:                                               ; preds = %16
  %92 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 12
  %93 = zext i8 %89 to i64
  %94 = tail call i64 @fread(ptr noundef nonnull %92, i64 noundef %93, i64 noundef 1, ptr noundef %11)
  br label %95

95:                                               ; preds = %91, %16
  %96 = load i16, ptr %41, align 2, !tbaa !126
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %171, label %98, !prof !123

98:                                               ; preds = %95
  %99 = zext i16 %96 to i64
  %100 = shl nuw nsw i64 %99, 2
  %101 = tail call noalias ptr @malloc(i64 noundef %100) #23
  %102 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 13
  store ptr %101, ptr %102, align 8, !tbaa !127
  %103 = icmp eq ptr %101, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load ptr, ptr @stderr, align 8, !tbaa !70
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.38, i64 noundef %100, ptr noundef nonnull @.str.39, i32 noundef 733) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

107:                                              ; preds = %98
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %101, i8 0, i64 %100, i1 false)
  %108 = load i16, ptr %41, align 2, !tbaa !126
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %171, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds [2 x i8], ptr %9, i64 0, i64 1
  br label %112

112:                                              ; preds = %110, %166
  %113 = phi i64 [ 0, %110 ], [ %167, %166 ]
  %114 = load i8, ptr %44, align 4, !tbaa !132
  switch i8 %114, label %144 [
    i8 8, label %115
    i8 16, label %124
  ]

115:                                              ; preds = %112
  %116 = load ptr, ptr %102, align 8, !tbaa !127
  %117 = getelementptr inbounds %struct.Pixel, ptr %116, i64 %113, i32 1
  store i8 0, ptr %117, align 1, !tbaa !139
  %118 = getelementptr inbounds %struct.Pixel, ptr %116, i64 %113
  store i8 0, ptr %118, align 1, !tbaa !140
  %119 = getelementptr inbounds %struct.Pixel, ptr %116, i64 %113, i32 3
  store i8 0, ptr %119, align 1, !tbaa !138
  %120 = tail call i32 @fgetc(ptr noundef %11)
  %121 = trunc i32 %120 to i8
  %122 = load ptr, ptr %102, align 8, !tbaa !127
  %123 = getelementptr inbounds %struct.Pixel, ptr %122, i64 %113, i32 2
  store i8 %121, ptr %123, align 1, !tbaa !136
  br label %166

124:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #19
  %125 = call i64 @fread(ptr noundef nonnull %9, i64 noundef 2, i64 noundef 1, ptr noundef %11)
  %126 = load i8, ptr %9, align 1, !tbaa !98
  %127 = zext i8 %126 to i16
  %128 = load i8, ptr %111, align 1, !tbaa !98
  %129 = zext i8 %128 to i16
  %130 = shl nuw i16 %129, 8
  %131 = or disjoint i16 %130, %127
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #19
  %132 = shl i8 %126, 3
  %133 = load ptr, ptr %102, align 8, !tbaa !127
  %134 = getelementptr inbounds %struct.Pixel, ptr %133, i64 %113
  store i8 %132, ptr %134, align 1, !tbaa !140
  %135 = lshr i16 %131, 2
  %136 = trunc i16 %135 to i8
  %137 = and i8 %136, -8
  %138 = getelementptr inbounds %struct.Pixel, ptr %133, i64 %113, i32 1
  store i8 %137, ptr %138, align 1, !tbaa !139
  %139 = shl i8 %128, 1
  %140 = and i8 %139, -8
  %141 = getelementptr inbounds %struct.Pixel, ptr %133, i64 %113, i32 2
  store i8 %140, ptr %141, align 1, !tbaa !136
  %142 = lshr i8 %128, 7
  %143 = getelementptr inbounds %struct.Pixel, ptr %133, i64 %113, i32 3
  store i8 %142, ptr %143, align 1, !tbaa !138
  br label %166

144:                                              ; preds = %112
  %145 = tail call i32 @fgetc(ptr noundef %11)
  %146 = trunc i32 %145 to i8
  %147 = load ptr, ptr %102, align 8, !tbaa !127
  %148 = getelementptr inbounds %struct.Pixel, ptr %147, i64 %113
  store i8 %146, ptr %148, align 1, !tbaa !140
  %149 = tail call i32 @fgetc(ptr noundef %11)
  %150 = trunc i32 %149 to i8
  %151 = load ptr, ptr %102, align 8, !tbaa !127
  %152 = getelementptr inbounds %struct.Pixel, ptr %151, i64 %113, i32 1
  store i8 %150, ptr %152, align 1, !tbaa !139
  %153 = tail call i32 @fgetc(ptr noundef %11)
  %154 = trunc i32 %153 to i8
  %155 = load ptr, ptr %102, align 8, !tbaa !127
  %156 = getelementptr inbounds %struct.Pixel, ptr %155, i64 %113, i32 2
  store i8 %154, ptr %156, align 1, !tbaa !136
  %157 = load i8, ptr %44, align 4, !tbaa !132
  %158 = icmp eq i8 %157, 32
  br i1 %158, label %159, label %164

159:                                              ; preds = %144
  %160 = tail call i32 @fgetc(ptr noundef %11)
  %161 = trunc i32 %160 to i8
  %162 = load ptr, ptr %102, align 8, !tbaa !127
  %163 = getelementptr inbounds %struct.Pixel, ptr %162, i64 %113, i32 3
  store i8 %161, ptr %163, align 1, !tbaa !138
  br label %166

164:                                              ; preds = %144
  %165 = getelementptr inbounds %struct.Pixel, ptr %155, i64 %113, i32 3
  store i8 0, ptr %165, align 1, !tbaa !138
  br label %166

166:                                              ; preds = %115, %159, %164, %124
  %167 = add nuw nsw i64 %113, 1
  %168 = load i16, ptr %41, align 2, !tbaa !126
  %169 = zext i16 %168 to i64
  %170 = icmp ult i64 %167, %169
  br i1 %170, label %112, label %171, !llvm.loop !187

171:                                              ; preds = %166, %107, %95
  %172 = load i16, ptr %80, align 4, !tbaa !125
  %173 = zext i16 %172 to i64
  %174 = shl nuw nsw i64 %173, 3
  %175 = tail call noalias ptr @malloc(i64 noundef %174) #23
  %176 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 14
  store ptr %175, ptr %176, align 8, !tbaa !128
  %177 = icmp eq ptr %175, null
  br i1 %177, label %181, label %178, !prof !94

178:                                              ; preds = %171
  %179 = load i16, ptr %80, align 4, !tbaa !125
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %184, label %186, !prof !143

181:                                              ; preds = %171
  %182 = load ptr, ptr @stderr, align 8, !tbaa !70
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef nonnull @.str.38, i64 noundef %174, ptr noundef nonnull @.str.39, i32 noundef 743) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

184:                                              ; preds = %204, %178
  %185 = tail call i32 @fclose(ptr noundef %11)
  ret void

186:                                              ; preds = %178, %204
  %187 = phi i64 [ %205, %204 ], [ 0, %178 ]
  %188 = load i16, ptr %71, align 2, !tbaa !124
  %189 = zext i16 %188 to i64
  %190 = shl nuw nsw i64 %189, 2
  %191 = tail call noalias ptr @malloc(i64 noundef %190) #23
  %192 = load ptr, ptr %176, align 8, !tbaa !128
  %193 = getelementptr inbounds ptr, ptr %192, i64 %187
  store ptr %191, ptr %193, align 8, !tbaa !70
  %194 = load ptr, ptr %176, align 8, !tbaa !128
  %195 = getelementptr inbounds ptr, ptr %194, i64 %187
  %196 = load ptr, ptr %195, align 8, !tbaa !70
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198, !prof !188

198:                                              ; preds = %186
  %199 = load i16, ptr %71, align 2, !tbaa !124
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %204, label %209, !prof !189

201:                                              ; preds = %186
  %202 = load ptr, ptr @stderr, align 8, !tbaa !70
  %203 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef nonnull @.str.38, i64 noundef %190, ptr noundef nonnull @.str.39, i32 noundef 745) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

204:                                              ; preds = %278, %198
  %205 = add nuw nsw i64 %187, 1
  %206 = load i16, ptr %80, align 4, !tbaa !125
  %207 = zext i16 %206 to i64
  %208 = icmp ult i64 %205, %207
  br i1 %208, label %186, label %184, !prof !190, !llvm.loop !191

209:                                              ; preds = %198, %278
  %210 = phi i64 [ %279, %278 ], [ 0, %198 ]
  %211 = load i8, ptr %83, align 2, !tbaa !114
  switch i8 %211, label %248 [
    i8 8, label %212
    i8 16, label %225
  ], !prof !192

212:                                              ; preds = %209
  %213 = load ptr, ptr %176, align 8, !tbaa !128
  %214 = getelementptr inbounds ptr, ptr %213, i64 %187
  %215 = load ptr, ptr %214, align 8, !tbaa !70
  %216 = getelementptr inbounds %struct.Pixel, ptr %215, i64 %210, i32 1
  store i8 0, ptr %216, align 1, !tbaa !139
  %217 = getelementptr inbounds %struct.Pixel, ptr %215, i64 %210
  store i8 0, ptr %217, align 1, !tbaa !140
  %218 = getelementptr inbounds %struct.Pixel, ptr %215, i64 %210, i32 3
  store i8 0, ptr %218, align 1, !tbaa !138
  %219 = tail call i32 @fgetc(ptr noundef %11)
  %220 = trunc i32 %219 to i8
  %221 = load ptr, ptr %176, align 8, !tbaa !128
  %222 = getelementptr inbounds ptr, ptr %221, i64 %187
  %223 = load ptr, ptr %222, align 8, !tbaa !70
  %224 = getelementptr inbounds %struct.Pixel, ptr %223, i64 %210, i32 2
  store i8 %220, ptr %224, align 1, !tbaa !136
  br label %278

225:                                              ; preds = %209
  %226 = getelementptr inbounds [2 x i8], ptr %10, i64 0, i64 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #19
  %227 = call i64 @fread(ptr noundef nonnull %10, i64 noundef 2, i64 noundef 1, ptr noundef %11)
  %228 = load i8, ptr %10, align 1, !tbaa !98
  %229 = zext i8 %228 to i16
  %230 = load i8, ptr %226, align 1, !tbaa !98
  %231 = zext i8 %230 to i16
  %232 = shl nuw i16 %231, 8
  %233 = or disjoint i16 %232, %229
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #19
  %234 = shl i8 %228, 3
  %235 = load ptr, ptr %176, align 8, !tbaa !128
  %236 = getelementptr inbounds ptr, ptr %235, i64 %187
  %237 = load ptr, ptr %236, align 8, !tbaa !70
  %238 = getelementptr inbounds %struct.Pixel, ptr %237, i64 %210
  store i8 %234, ptr %238, align 1, !tbaa !140
  %239 = lshr i16 %233, 2
  %240 = trunc i16 %239 to i8
  %241 = and i8 %240, -8
  %242 = getelementptr inbounds %struct.Pixel, ptr %237, i64 %210, i32 1
  store i8 %241, ptr %242, align 1, !tbaa !139
  %243 = shl i8 %230, 1
  %244 = and i8 %243, -8
  %245 = getelementptr inbounds %struct.Pixel, ptr %237, i64 %210, i32 2
  store i8 %244, ptr %245, align 1, !tbaa !136
  %246 = lshr i8 %230, 7
  %247 = getelementptr inbounds %struct.Pixel, ptr %237, i64 %210, i32 3
  store i8 %246, ptr %247, align 1, !tbaa !138
  br label %278

248:                                              ; preds = %209
  %249 = tail call i32 @fgetc(ptr noundef %11)
  %250 = trunc i32 %249 to i8
  %251 = load ptr, ptr %176, align 8, !tbaa !128
  %252 = getelementptr inbounds ptr, ptr %251, i64 %187
  %253 = load ptr, ptr %252, align 8, !tbaa !70
  %254 = getelementptr inbounds %struct.Pixel, ptr %253, i64 %210
  store i8 %250, ptr %254, align 1, !tbaa !140
  %255 = tail call i32 @fgetc(ptr noundef %11)
  %256 = trunc i32 %255 to i8
  %257 = load ptr, ptr %176, align 8, !tbaa !128
  %258 = getelementptr inbounds ptr, ptr %257, i64 %187
  %259 = load ptr, ptr %258, align 8, !tbaa !70
  %260 = getelementptr inbounds %struct.Pixel, ptr %259, i64 %210, i32 1
  store i8 %256, ptr %260, align 1, !tbaa !139
  %261 = tail call i32 @fgetc(ptr noundef %11)
  %262 = trunc i32 %261 to i8
  %263 = load ptr, ptr %176, align 8, !tbaa !128
  %264 = getelementptr inbounds ptr, ptr %263, i64 %187
  %265 = load ptr, ptr %264, align 8, !tbaa !70
  %266 = getelementptr inbounds %struct.Pixel, ptr %265, i64 %210, i32 2
  store i8 %262, ptr %266, align 1, !tbaa !136
  %267 = load i8, ptr %83, align 2, !tbaa !114
  %268 = icmp eq i8 %267, 32
  br i1 %268, label %269, label %276, !prof !193

269:                                              ; preds = %248
  %270 = tail call i32 @fgetc(ptr noundef %11)
  %271 = trunc i32 %270 to i8
  %272 = load ptr, ptr %176, align 8, !tbaa !128
  %273 = getelementptr inbounds ptr, ptr %272, i64 %187
  %274 = load ptr, ptr %273, align 8, !tbaa !70
  %275 = getelementptr inbounds %struct.Pixel, ptr %274, i64 %210, i32 3
  store i8 %271, ptr %275, align 1, !tbaa !138
  br label %278

276:                                              ; preds = %248
  %277 = getelementptr inbounds %struct.Pixel, ptr %265, i64 %210, i32 3
  store i8 0, ptr %277, align 1, !tbaa !138
  br label %278

278:                                              ; preds = %212, %269, %276, %225
  %279 = add nuw nsw i64 %210, 1
  %280 = load i16, ptr %71, align 2, !tbaa !124
  %281 = zext i16 %280 to i64
  %282 = icmp ult i64 %279, %281
  br i1 %282, label %209, label %204, !prof !194, !llvm.loop !195
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!68}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!35 = !{ptr @main, ptr @get_version, i64 1}
!36 = !{ptr @main, ptr @fprintf, i64 3}
!37 = !{ptr @main, ptr @free, i64 1}
!38 = !{ptr @main, ptr @strcmp, i64 54}
!39 = !{ptr @main, ptr @strchr, i64 2}
!40 = !{ptr @main, ptr @strtod, i64 2}
!41 = !{ptr @main, ptr @spec_strdup, i64 2}
!42 = !{ptr @main, ptr @malloc, i64 3}
!43 = !{ptr @main, ptr @load_image_file, i64 2}
!44 = !{ptr @main, ptr @strrchr, i64 3}
!45 = !{ptr @main, ptr @computeSSIM, i64 1}
!46 = !{ptr @main, ptr @exit, i64 1}
!47 = !{ptr @get_version, ptr @spec_strdup, i64 2}
!48 = !{ptr @get_version, ptr @strrchr, i64 1}
!49 = !{ptr @get_version, ptr @free, i64 1}
!50 = !{ptr @spec_strdup, ptr @strlen, i64 4}
!51 = !{ptr @spec_strdup, ptr @malloc, i64 4}
!52 = !{ptr @spec_strdup, ptr @strncpy, i64 4}
!53 = !{ptr @load_image_file, ptr @strlen, i64 2}
!54 = !{ptr @load_image_file, ptr @malloc, i64 2}
!55 = !{ptr @load_image_file, ptr @strncpy, i64 2}
!56 = !{ptr @load_image_file, ptr @strrchr, i64 4}
!57 = !{ptr @load_image_file, ptr @strcmp, i64 6}
!58 = !{ptr @load_image_file, ptr @read_tga_file, i64 2}
!59 = !{ptr @computeSSIM, ptr @malloc, i64 2}
!60 = !{ptr @computeSSIM, ptr @free, i64 2}
!61 = !{ptr @computeSSIM, ptr @fprintf, i64 26}
!62 = !{ptr @computeSSIM, ptr @printf, i64 1}
!63 = !{ptr @read_tga_file, ptr @fopen, i64 2}
!64 = !{ptr @read_tga_file, ptr @fgetc, i64 9743769}
!65 = !{ptr @read_tga_file, ptr @fread, i64 12}
!66 = !{ptr @read_tga_file, ptr @malloc, i64 3122}
!67 = !{ptr @read_tga_file, ptr @fclose, i64 2}
!68 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!69 = !{!"function_entry_count", i64 1}
!70 = !{!71, !71, i64 0}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !{!75, !76, i64 112}
!75 = !{!"", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !76, i64 80, !76, i64 80, !76, i64 80, !76, i64 80, !76, i64 80, !76, i64 80, !76, i64 80, !76, i64 84, !77, i64 88, !76, i64 96, !77, i64 104, !76, i64 112, !71, i64 120, !76, i64 128, !76, i64 132}
!76 = !{!"int", !72, i64 0}
!77 = !{!"double", !72, i64 0}
!78 = !{!75, !76, i64 128}
!79 = !{!75, !76, i64 132}
!80 = !{!75, !76, i64 84}
!81 = !{!"branch_weights", i32 127, i32 1}
!82 = !{!"branch_weights", i32 1, i32 0}
!83 = !{!"branch_weights", i32 0, i32 5}
!84 = !{!"branch_weights", i32 1, i32 4}
!85 = !{!"branch_weights", i32 0, i32 4}
!86 = !{!"branch_weights", i32 1, i32 3}
!87 = !{!75, !77, i64 104}
!88 = !{!"branch_weights", i32 0, i32 1}
!89 = !{!75, !76, i64 96}
!90 = !{!"branch_weights", i32 0, i32 3}
!91 = !{!75, !71, i64 48}
!92 = !{!"branch_weights", i32 1, i32 2}
!93 = !{!75, !77, i64 88}
!94 = !{!"branch_weights", i32 0, i32 2}
!95 = !{!75, !71, i64 0}
!96 = !{!"branch_weights", i32 1, i32 1}
!97 = !{!75, !71, i64 16}
!98 = !{!72, !72, i64 0}
!99 = !{!"branch_weights", i32 513, i32 127}
!100 = distinct !{!100, !101, !102}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = !{!75, !71, i64 120}
!104 = !{!76, !76, i64 0}
!105 = !{!75, !71, i64 8}
!106 = !{!75, !71, i64 24}
!107 = !{!75, !71, i64 32}
!108 = !{!75, !71, i64 40}
!109 = !{!75, !71, i64 64}
!110 = !{!111, !72, i64 1}
!111 = !{!"", !72, i64 0, !72, i64 1, !76, i64 4, !112, i64 8, !112, i64 10, !72, i64 12, !112, i64 14, !112, i64 16, !112, i64 18, !112, i64 20, !72, i64 22, !72, i64 23, !72, i64 24, !71, i64 280, !71, i64 288, !72, i64 296}
!112 = !{!"short", !72, i64 0}
!113 = !{!111, !76, i64 4}
!114 = !{!111, !72, i64 22}
!115 = !{!111, !72, i64 23}
!116 = !{!111, !72, i64 296}
!117 = !{!75, !71, i64 72}
!118 = !{!75, !71, i64 56}
!119 = !{!"function_entry_count", i64 4}
!120 = !{!"branch_weights", i32 0, i32 6}
!121 = !{!"function_entry_count", i64 0}
!122 = !{!"function_entry_count", i64 2}
!123 = !{!"branch_weights", i32 2, i32 0}
!124 = !{!111, !112, i64 18}
!125 = !{!111, !112, i64 20}
!126 = !{!111, !112, i64 10}
!127 = !{!111, !71, i64 280}
!128 = !{!111, !71, i64 288}
!129 = distinct !{!129, !101, !102}
!130 = !{!111, !72, i64 0}
!131 = !{!111, !112, i64 8}
!132 = !{!111, !72, i64 12}
!133 = !{!111, !112, i64 14}
!134 = !{!111, !112, i64 16}
!135 = distinct !{!135, !101, !102}
!136 = !{!137, !72, i64 2}
!137 = !{!"", !72, i64 0, !72, i64 1, !72, i64 2, !72, i64 3}
!138 = !{!137, !72, i64 3}
!139 = !{!137, !72, i64 1}
!140 = !{!137, !72, i64 0}
!141 = distinct !{!141, !101, !102}
!142 = !{!"branch_weights", i32 1, i32 0, i32 0}
!143 = !{!"branch_weights", i32 1, i32 127}
!144 = !{!"branch_weights", i32 1, i32 194}
!145 = !{!"branch_weights", i32 0, i32 25545}
!146 = !{!"branch_weights", i32 24833, i32 127}
!147 = distinct !{!147, !101, !102}
!148 = !{!"branch_weights", i32 195, i32 25350}
!149 = !{!"branch_weights", i32 1, i32 25544}
!150 = !{!"branch_weights", i32 25544, i32 1}
!151 = !{!"branch_weights", i32 1, i32 204359}
!152 = !{!77, !77, i64 0}
!153 = !{!"branch_weights", i32 25544, i32 1598416}
!154 = distinct !{!154, !101, !102}
!155 = distinct !{!155, !101, !102}
!156 = distinct !{!156, !101, !102}
!157 = !{!"branch_weights", i32 178816, i32 25544}
!158 = distinct !{!158, !101, !102}
!159 = !{!"branch_weights", i32 0, i32 1623960}
!160 = !{!"branch_weights", i32 0, i32 1623960, i32 0, i32 0}
!161 = !{!"branch_weights", i32 1623960, i32 0}
!162 = !{!"branch_weights", i32 1419601, i32 204359}
!163 = distinct !{!163, !101, !102}
!164 = !{!"branch_weights", i32 8, i32 25537}
!165 = !{!"branch_weights", i32 25545, i32 0}
!166 = distinct !{!166, !101, !102}
!167 = distinct !{!167, !101, !102}
!168 = !{!"branch_weights", i32 25351, i32 194}
!169 = distinct !{!169, !101, !102}
!170 = !{!"branch_weights", i32 20, i32 0}
!171 = !{!"branch_weights", i32 2433, i32 127}
!172 = distinct !{!172, !101, !102}
!173 = distinct !{!173, !101, !102}
!174 = !{!175, !72, i64 0}
!175 = !{!"", !72, i64 0, !72, i64 1, !72, i64 2}
!176 = distinct !{!176, !101, !102}
!177 = distinct !{!177, !101, !102}
!178 = !{!175, !72, i64 1}
!179 = distinct !{!179, !101, !102}
!180 = distinct !{!180, !101, !102}
!181 = !{!175, !72, i64 2}
!182 = distinct !{!182, !101, !102}
!183 = distinct !{!183, !101, !102}
!184 = distinct !{!184, !101, !102}
!185 = distinct !{!185, !101, !102}
!186 = distinct !{!186, !101, !102}
!187 = distinct !{!187, !101, !102}
!188 = !{!"branch_weights", i32 0, i32 3120}
!189 = !{!"branch_weights", i32 1, i32 3119}
!190 = !{!"branch_weights", i32 199553, i32 127}
!191 = distinct !{!191, !101, !102}
!192 = !{!"branch_weights", i32 3247920, i32 0, i32 0}
!193 = !{!"branch_weights", i32 0, i32 3247920}
!194 = !{!"branch_weights", i32 3244801, i32 3119}
!195 = distinct !{!195, !101, !102}
