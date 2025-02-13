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
@.str.99 = private unnamed_addr constant [29 x i8] c"$LastChangedRevision: 4696 $\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"ImageValidator\00", align 1
@.str.102 = private unnamed_addr constant [38 x i8] c"\0AUsage: %s [options] <file1> <file2>\0A\00", align 1
@.str.103 = private unnamed_addr constant [1484 x i8] c"  <file1> and <file2> must be either uncompressed Targa (TGA) format or raw\0A                      YUV-422 data.\0AOptions:\0A  -avg              Do not print block-by-block similarity scores; instead, \0A                    just print the average SSIM.\0A  -buckets <n>      Print SSIM histogram with <n> buckets\0A  -conv <method>    Select the method to convert RGB to brightness, one of:\0A                      REC709  ITU-R Rec. 709 (HDTV) coeffiecients (default)\0A                      REC601  ITU-R Rec. 601 (SDTV) coeffiecients\0A                      HSP     P from HSP http://alienryderflex.com/hsp.html\0A  -debug            Print debug information to stderr; may be repeated\0A  -diff <file>      Print the pixel differences to a Targa file\0A  -dumpfile         Dump the input files to Targa file\0A  -dumpheader       Dump the image file Targa header info to stderr\0A  -dumpluma         Dump the luma data to Targa files\0A  -height           Height of the image (YUV input only). Default 720\0A  -help             Print this message\0A  -maxthreshold <n> Report an error if the number of blocks below the \0A                    threshold is greater than <n>, where <n> can be an \0A                    absolute number of blocks, or a fraction, or a \0A                    percent (e.g. \221%%\22 or \220.01\22).\0A  -threshold <n>    Count the number of blocks with SSIM below <n>, \0A                    where <n> is a number between 0 and 1\0A  -width            Width of the image (YUV input only). Default is 1280\0A\00", align 1
@str = private unnamed_addr constant [73 x i8] c"\0A\0AERROR: The number of buckets must be an even number between 2 and 100.\00", align 1
@str.104 = private unnamed_addr constant [125 x i8] c"Compare two images using the Structural SIMilarity (SSIM) index method.\0ASSIM values are calculated for blocks of 8x8 pixels.\00", align 1
@str.105 = private unnamed_addr constant [66 x i8] c"The maximum number of SSIM below the threshold has been reached. \00", align 1

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.params, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #19
  %4 = tail call ptr @get_version() #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !6
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %4) #21
  tail call void @free(ptr noundef %4) #22
  %7 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 12
  %8 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 14
  %9 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  store i32 20, ptr %9, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 17
  store i32 1280, ptr %10, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 18
  store i32 720, ptr %11, align 4, !tbaa !15
  %12 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 11
  %13 = icmp sgt i32 %0, 1
  %14 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 2
  br i1 %13, label %15, label %270

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 10
  %17 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 6
  %18 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 13
  %19 = load ptr, ptr %14, align 8, !tbaa !16
  %20 = load ptr, ptr %3, align 8, !tbaa !17
  %21 = load i32, ptr %12, align 4, !tbaa !18
  %22 = load double, ptr %7, align 8, !tbaa !19
  %23 = load i16, ptr %16, align 8
  %24 = load ptr, ptr %17, align 8, !tbaa !20
  %25 = load double, ptr %8, align 8, !tbaa !21
  %26 = load i32, ptr %18, align 8, !tbaa !22
  %27 = load i32, ptr %9, align 8, !tbaa !10
  %28 = load i32, ptr %11, align 4, !tbaa !15
  %29 = load i32, ptr %10, align 8, !tbaa !14
  br label %32

30:                                               ; preds = %238
  store ptr %249, ptr %14, align 8, !tbaa !16
  store ptr %248, ptr %3, align 8, !tbaa !17
  store i32 %247, ptr %12, align 4, !tbaa !18
  store double %246, ptr %7, align 8, !tbaa !19
  store i16 %245, ptr %16, align 8
  store ptr %244, ptr %17, align 8, !tbaa !20
  store double %243, ptr %8, align 8, !tbaa !21
  store i32 %242, ptr %18, align 8, !tbaa !22
  store i32 %241, ptr %9, align 8, !tbaa !10
  store i32 %240, ptr %11, align 4, !tbaa !15
  store i32 %239, ptr %10, align 8, !tbaa !14
  %31 = icmp eq i32 %258, 0
  br i1 %31, label %265, label %263

32:                                               ; preds = %15, %238
  %33 = phi i32 [ %29, %15 ], [ %239, %238 ]
  %34 = phi i32 [ %28, %15 ], [ %240, %238 ]
  %35 = phi i32 [ %27, %15 ], [ %241, %238 ]
  %36 = phi i32 [ %26, %15 ], [ %242, %238 ]
  %37 = phi double [ %25, %15 ], [ %243, %238 ]
  %38 = phi ptr [ %24, %15 ], [ %244, %238 ]
  %39 = phi i16 [ %23, %15 ], [ %245, %238 ]
  %40 = phi double [ %22, %15 ], [ %246, %238 ]
  %41 = phi i32 [ %21, %15 ], [ %247, %238 ]
  %42 = phi ptr [ %20, %15 ], [ %248, %238 ]
  %43 = phi ptr [ %19, %15 ], [ %249, %238 ]
  %44 = phi i32 [ 20, %15 ], [ %250, %238 ]
  %45 = phi double [ 0.000000e+00, %15 ], [ %251, %238 ]
  %46 = phi ptr [ null, %15 ], [ %252, %238 ]
  %47 = phi i32 [ 0, %15 ], [ %253, %238 ]
  %48 = phi i16 [ 0, %15 ], [ %254, %238 ]
  %49 = phi ptr [ null, %15 ], [ %255, %238 ]
  %50 = phi i32 [ 0, %15 ], [ %260, %238 ]
  %51 = phi i32 [ 1, %15 ], [ %261, %238 ]
  %52 = phi i32 [ 0, %15 ], [ %258, %238 ]
  %53 = phi ptr [ null, %15 ], [ %257, %238 ]
  %54 = phi double [ 0.000000e+00, %15 ], [ %256, %238 ]
  %55 = sext i32 %51 to i64
  %56 = getelementptr inbounds ptr, ptr %1, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.1, ptr noundef nonnull dereferenceable(1) %57) #23
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %32
  %61 = add i16 %48, 64
  %62 = and i16 %61, 448
  %63 = and i16 %48, -449
  %64 = or disjoint i16 %62, %63
  br label %238

65:                                               ; preds = %32
  %66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.2, ptr noundef nonnull dereferenceable(1) %57) #23
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = or i16 %48, 1
  br label %238

70:                                               ; preds = %65
  %71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.3, ptr noundef nonnull dereferenceable(1) %57) #23
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = or i16 %48, 2
  br label %238

75:                                               ; preds = %70
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.4, ptr noundef nonnull dereferenceable(1) %57) #23
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = or i16 %48, 8
  br label %238

80:                                               ; preds = %75
  %81 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.5, ptr noundef nonnull dereferenceable(1) %57) #23
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = or i16 %48, 16
  br label %238

85:                                               ; preds = %80
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.6, ptr noundef nonnull dereferenceable(1) %57) #23
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = add nsw i32 %51, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %1, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = tail call i64 @strtol(ptr nocapture noundef %92, ptr noundef null, i32 noundef 10) #22
  %94 = trunc i64 %93 to i32
  br label %238

95:                                               ; preds = %85
  %96 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.7, ptr noundef nonnull dereferenceable(1) %57) #23
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = add nsw i32 %51, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %1, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = tail call i64 @strtol(ptr nocapture noundef %102, ptr noundef null, i32 noundef 10) #22
  %104 = trunc i64 %103 to i32
  br label %238

105:                                              ; preds = %95
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.8, ptr noundef nonnull dereferenceable(1) %57) #23
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = add nsw i32 %51, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %1, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = tail call i64 @strtol(ptr nocapture noundef %112, ptr noundef null, i32 noundef 10) #22
  %114 = trunc i64 %113 to i32
  %115 = or i16 %48, 32
  br label %238

116:                                              ; preds = %105
  %117 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.9, ptr noundef nonnull dereferenceable(1) %57) #23
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %144

119:                                              ; preds = %116
  %120 = add nsw i32 %51, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %1, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %123, i32 noundef 37) #23
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %119
  %127 = tail call double @strtod(ptr nocapture noundef %123, ptr noundef null) #22
  %128 = fdiv double %127, 1.000000e+02
  br label %137

129:                                              ; preds = %119
  %130 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %123, i32 noundef 46) #23
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = tail call double @strtod(ptr nocapture noundef %123, ptr noundef null) #22
  br label %137

134:                                              ; preds = %129
  %135 = tail call i64 @strtol(ptr nocapture noundef %123, ptr noundef null, i32 noundef 10) #22
  %136 = trunc i64 %135 to i32
  br label %137

137:                                              ; preds = %132, %134, %126
  %138 = phi i32 [ %36, %132 ], [ %136, %134 ], [ %36, %126 ]
  %139 = phi double [ %133, %132 ], [ %37, %134 ], [ %128, %126 ]
  %140 = phi i32 [ %47, %132 ], [ %136, %134 ], [ %47, %126 ]
  %141 = phi double [ %133, %132 ], [ %54, %134 ], [ %128, %126 ]
  %142 = load ptr, ptr @stderr, align 8, !tbaa !6
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef nonnull @.str.10, i32 noundef %140, double noundef %141) #21
  br label %238

144:                                              ; preds = %116
  %145 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.11, ptr noundef nonnull dereferenceable(1) %57) #23
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = or i16 %48, 4
  %149 = add nsw i32 %51, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds ptr, ptr %1, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !6
  %153 = tail call ptr @spec_strdup(ptr noundef %152) #20
  br label %238

154:                                              ; preds = %144
  %155 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.12, ptr noundef nonnull dereferenceable(1) %57) #23
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = add nsw i32 %51, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %1, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !6
  %162 = tail call double @strtod(ptr nocapture noundef %161, ptr noundef null) #22
  %163 = fptrunc double %162 to float
  %164 = fpext float %163 to double
  %165 = load ptr, ptr @stderr, align 8, !tbaa !6
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.13, double noundef %164) #21
  br label %238

167:                                              ; preds = %154
  %168 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.14, ptr noundef nonnull dereferenceable(1) %57) #23
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %216

170:                                              ; preds = %167
  %171 = add nsw i32 %51, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %1, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  %175 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.15, ptr noundef nonnull dereferenceable(1) %174) #23
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %170
  %178 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.16, ptr noundef nonnull dereferenceable(1) %174) #23
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.17, ptr noundef nonnull dereferenceable(1) %174) #23
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180, %177, %170
  %184 = load ptr, ptr @stderr, align 8, !tbaa !6
  %185 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 53, i64 1, ptr %184) #24
  br label %238

186:                                              ; preds = %180
  %187 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.19, ptr noundef nonnull dereferenceable(1) %174) #23
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %186
  %190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.20, ptr noundef nonnull dereferenceable(1) %174) #23
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.21, ptr noundef nonnull dereferenceable(1) %174) #23
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192, %189, %186
  %196 = load ptr, ptr @stderr, align 8, !tbaa !6
  %197 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 48, i64 1, ptr %196) #24
  br label %238

198:                                              ; preds = %192
  %199 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.23, ptr noundef nonnull dereferenceable(1) %174) #23
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %210, label %201

201:                                              ; preds = %198
  %202 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.24, ptr noundef nonnull dereferenceable(1) %174) #23
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %201
  %205 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.25, ptr noundef nonnull dereferenceable(1) %174) #23
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.26, ptr noundef nonnull dereferenceable(1) %174) #23
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207, %204, %201, %198
  %211 = load ptr, ptr @stderr, align 8, !tbaa !6
  %212 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 70, i64 1, ptr %211) #24
  br label %238

213:                                              ; preds = %207
  %214 = load ptr, ptr @stderr, align 8, !tbaa !6
  %215 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef nonnull @.str.28, ptr noundef %174) #21
  br label %238

216:                                              ; preds = %167
  %217 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.29, ptr noundef nonnull dereferenceable(1) %57) #23
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %238, label %219

219:                                              ; preds = %216
  %220 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.30, ptr noundef nonnull dereferenceable(1) %57) #23
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %238, label %222

222:                                              ; preds = %219
  %223 = icmp eq ptr %53, null
  br i1 %223, label %224, label %226

224:                                              ; preds = %222
  %225 = tail call ptr @spec_strdup(ptr noundef %57) #20
  br label %238

226:                                              ; preds = %222
  %227 = icmp eq ptr %49, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %226
  %229 = tail call ptr @spec_strdup(ptr noundef %57) #20
  br label %238

230:                                              ; preds = %226
  %231 = load i8, ptr %57, align 1, !tbaa !23
  %232 = icmp eq i8 %231, 45
  %233 = load ptr, ptr @stderr, align 8, !tbaa !6
  br i1 %232, label %236, label %234

234:                                              ; preds = %230
  %235 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %233, ptr noundef nonnull @.str.31, ptr noundef nonnull %57) #21
  br label %238

236:                                              ; preds = %230
  %237 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 35, i64 1, ptr %233) #24
  br label %238

238:                                              ; preds = %216, %219, %60, %73, %83, %98, %137, %157, %228, %236, %234, %224, %183, %210, %213, %195, %147, %108, %88, %78, %68
  %239 = phi i32 [ %33, %224 ], [ %33, %228 ], [ %33, %234 ], [ %33, %236 ], [ %33, %213 ], [ %33, %210 ], [ %33, %195 ], [ %33, %183 ], [ %33, %157 ], [ %33, %147 ], [ %33, %137 ], [ %33, %108 ], [ %33, %98 ], [ %94, %88 ], [ %33, %83 ], [ %33, %78 ], [ %33, %73 ], [ %33, %68 ], [ %33, %60 ], [ %33, %219 ], [ %33, %216 ]
  %240 = phi i32 [ %34, %224 ], [ %34, %228 ], [ %34, %234 ], [ %34, %236 ], [ %34, %213 ], [ %34, %210 ], [ %34, %195 ], [ %34, %183 ], [ %34, %157 ], [ %34, %147 ], [ %34, %137 ], [ %34, %108 ], [ %104, %98 ], [ %34, %88 ], [ %34, %83 ], [ %34, %78 ], [ %34, %73 ], [ %34, %68 ], [ %34, %60 ], [ %34, %219 ], [ %34, %216 ]
  %241 = phi i32 [ %35, %224 ], [ %35, %228 ], [ %35, %234 ], [ %35, %236 ], [ %35, %213 ], [ %35, %210 ], [ %35, %195 ], [ %35, %183 ], [ %35, %157 ], [ %35, %147 ], [ %35, %137 ], [ %114, %108 ], [ %35, %98 ], [ %35, %88 ], [ %35, %83 ], [ %35, %78 ], [ %35, %73 ], [ %35, %68 ], [ %35, %60 ], [ %35, %219 ], [ %35, %216 ]
  %242 = phi i32 [ %36, %224 ], [ %36, %228 ], [ %36, %234 ], [ %36, %236 ], [ %36, %213 ], [ %36, %210 ], [ %36, %195 ], [ %36, %183 ], [ %36, %157 ], [ %36, %147 ], [ %138, %137 ], [ %36, %108 ], [ %36, %98 ], [ %36, %88 ], [ %36, %83 ], [ %36, %78 ], [ %36, %73 ], [ %36, %68 ], [ %36, %60 ], [ %36, %219 ], [ %36, %216 ]
  %243 = phi double [ %37, %224 ], [ %37, %228 ], [ %37, %234 ], [ %37, %236 ], [ %37, %213 ], [ %37, %210 ], [ %37, %195 ], [ %37, %183 ], [ %37, %157 ], [ %37, %147 ], [ %139, %137 ], [ %37, %108 ], [ %37, %98 ], [ %37, %88 ], [ %37, %83 ], [ %37, %78 ], [ %37, %73 ], [ %37, %68 ], [ %37, %60 ], [ %37, %219 ], [ %37, %216 ]
  %244 = phi ptr [ %38, %224 ], [ %38, %228 ], [ %38, %234 ], [ %38, %236 ], [ %38, %213 ], [ %38, %210 ], [ %38, %195 ], [ %38, %183 ], [ %38, %157 ], [ %153, %147 ], [ %38, %137 ], [ %38, %108 ], [ %38, %98 ], [ %38, %88 ], [ %38, %83 ], [ %38, %78 ], [ %38, %73 ], [ %38, %68 ], [ %38, %60 ], [ %38, %219 ], [ %38, %216 ]
  %245 = phi i16 [ %39, %224 ], [ %39, %228 ], [ %39, %234 ], [ %39, %236 ], [ %39, %213 ], [ %39, %210 ], [ %39, %195 ], [ %39, %183 ], [ %39, %157 ], [ %148, %147 ], [ %39, %137 ], [ %115, %108 ], [ %39, %98 ], [ %39, %88 ], [ %84, %83 ], [ %79, %78 ], [ %74, %73 ], [ %69, %68 ], [ %64, %60 ], [ %39, %219 ], [ %39, %216 ]
  %246 = phi double [ %40, %224 ], [ %40, %228 ], [ %40, %234 ], [ %40, %236 ], [ %40, %213 ], [ %40, %210 ], [ %40, %195 ], [ %40, %183 ], [ %164, %157 ], [ %40, %147 ], [ %40, %137 ], [ %40, %108 ], [ %40, %98 ], [ %40, %88 ], [ %40, %83 ], [ %40, %78 ], [ %40, %73 ], [ %40, %68 ], [ %40, %60 ], [ %40, %219 ], [ %40, %216 ]
  %247 = phi i32 [ %41, %224 ], [ %41, %228 ], [ %41, %234 ], [ %41, %236 ], [ %41, %213 ], [ 2, %210 ], [ 1, %195 ], [ 0, %183 ], [ %41, %157 ], [ %41, %147 ], [ %41, %137 ], [ %41, %108 ], [ %41, %98 ], [ %41, %88 ], [ %41, %83 ], [ %41, %78 ], [ %41, %73 ], [ %41, %68 ], [ %41, %60 ], [ %41, %219 ], [ %41, %216 ]
  %248 = phi ptr [ %225, %224 ], [ %42, %228 ], [ %42, %234 ], [ %42, %236 ], [ %42, %213 ], [ %42, %210 ], [ %42, %195 ], [ %42, %183 ], [ %42, %157 ], [ %42, %147 ], [ %42, %137 ], [ %42, %108 ], [ %42, %98 ], [ %42, %88 ], [ %42, %83 ], [ %42, %78 ], [ %42, %73 ], [ %42, %68 ], [ %42, %60 ], [ %42, %219 ], [ %42, %216 ]
  %249 = phi ptr [ %43, %224 ], [ %229, %228 ], [ %43, %234 ], [ %43, %236 ], [ %43, %213 ], [ %43, %210 ], [ %43, %195 ], [ %43, %183 ], [ %43, %157 ], [ %43, %147 ], [ %43, %137 ], [ %43, %108 ], [ %43, %98 ], [ %43, %88 ], [ %43, %83 ], [ %43, %78 ], [ %43, %73 ], [ %43, %68 ], [ %43, %60 ], [ %43, %219 ], [ %43, %216 ]
  %250 = phi i32 [ %44, %224 ], [ %44, %228 ], [ %44, %234 ], [ %44, %236 ], [ %44, %213 ], [ %44, %210 ], [ %44, %195 ], [ %44, %183 ], [ %44, %157 ], [ %44, %147 ], [ %44, %137 ], [ %114, %108 ], [ %44, %98 ], [ %44, %88 ], [ %44, %83 ], [ %44, %78 ], [ %44, %73 ], [ %44, %68 ], [ %44, %60 ], [ %44, %219 ], [ %44, %216 ]
  %251 = phi double [ %45, %224 ], [ %45, %228 ], [ %45, %234 ], [ %45, %236 ], [ %45, %213 ], [ %45, %210 ], [ %45, %195 ], [ %45, %183 ], [ %164, %157 ], [ %45, %147 ], [ %45, %137 ], [ %45, %108 ], [ %45, %98 ], [ %45, %88 ], [ %45, %83 ], [ %45, %78 ], [ %45, %73 ], [ %45, %68 ], [ %45, %60 ], [ %45, %219 ], [ %45, %216 ]
  %252 = phi ptr [ %46, %224 ], [ %46, %228 ], [ %46, %234 ], [ %46, %236 ], [ %46, %213 ], [ %46, %210 ], [ %46, %195 ], [ %46, %183 ], [ %46, %157 ], [ %153, %147 ], [ %46, %137 ], [ %46, %108 ], [ %46, %98 ], [ %46, %88 ], [ %46, %83 ], [ %46, %78 ], [ %46, %73 ], [ %46, %68 ], [ %46, %60 ], [ %46, %219 ], [ %46, %216 ]
  %253 = phi i32 [ %47, %224 ], [ %47, %228 ], [ %47, %234 ], [ %47, %236 ], [ %47, %213 ], [ %47, %210 ], [ %47, %195 ], [ %47, %183 ], [ %47, %157 ], [ %47, %147 ], [ %140, %137 ], [ %47, %108 ], [ %47, %98 ], [ %47, %88 ], [ %47, %83 ], [ %47, %78 ], [ %47, %73 ], [ %47, %68 ], [ %47, %60 ], [ %47, %219 ], [ %47, %216 ]
  %254 = phi i16 [ %48, %224 ], [ %48, %228 ], [ %48, %234 ], [ %48, %236 ], [ %48, %213 ], [ %48, %210 ], [ %48, %195 ], [ %48, %183 ], [ %48, %157 ], [ %148, %147 ], [ %48, %137 ], [ %115, %108 ], [ %48, %98 ], [ %48, %88 ], [ %84, %83 ], [ %79, %78 ], [ %74, %73 ], [ %69, %68 ], [ %64, %60 ], [ %48, %219 ], [ %48, %216 ]
  %255 = phi ptr [ %49, %224 ], [ %229, %228 ], [ %49, %234 ], [ %49, %236 ], [ %49, %213 ], [ %49, %210 ], [ %49, %195 ], [ %49, %183 ], [ %49, %157 ], [ %49, %147 ], [ %49, %137 ], [ %49, %108 ], [ %49, %98 ], [ %49, %88 ], [ %49, %83 ], [ %49, %78 ], [ %49, %73 ], [ %49, %68 ], [ %49, %60 ], [ %49, %219 ], [ %49, %216 ]
  %256 = phi double [ %54, %224 ], [ %54, %228 ], [ %54, %234 ], [ %54, %236 ], [ %54, %213 ], [ %54, %210 ], [ %54, %195 ], [ %54, %183 ], [ %54, %157 ], [ %54, %147 ], [ %141, %137 ], [ %54, %108 ], [ %54, %98 ], [ %54, %88 ], [ %54, %83 ], [ %54, %78 ], [ %54, %73 ], [ %54, %68 ], [ %54, %60 ], [ %54, %219 ], [ %54, %216 ]
  %257 = phi ptr [ %225, %224 ], [ %53, %228 ], [ %53, %234 ], [ %53, %236 ], [ %53, %213 ], [ %53, %210 ], [ %53, %195 ], [ %53, %183 ], [ %53, %157 ], [ %53, %147 ], [ %53, %137 ], [ %53, %108 ], [ %53, %98 ], [ %53, %88 ], [ %53, %83 ], [ %53, %78 ], [ %53, %73 ], [ %53, %68 ], [ %53, %60 ], [ %53, %219 ], [ %53, %216 ]
  %258 = phi i32 [ %52, %224 ], [ %52, %228 ], [ %52, %234 ], [ %52, %236 ], [ %52, %213 ], [ %52, %210 ], [ %52, %195 ], [ %52, %183 ], [ %52, %157 ], [ %52, %147 ], [ %52, %137 ], [ %52, %108 ], [ %52, %98 ], [ %52, %88 ], [ %52, %83 ], [ %52, %78 ], [ %52, %73 ], [ %52, %68 ], [ %52, %60 ], [ 1, %219 ], [ 1, %216 ]
  %259 = phi i32 [ %51, %224 ], [ %51, %228 ], [ %51, %234 ], [ %51, %236 ], [ %171, %213 ], [ %171, %210 ], [ %171, %195 ], [ %171, %183 ], [ %158, %157 ], [ %149, %147 ], [ %120, %137 ], [ %109, %108 ], [ %99, %98 ], [ %89, %88 ], [ %51, %83 ], [ %51, %78 ], [ %51, %73 ], [ %51, %68 ], [ %51, %60 ], [ %51, %219 ], [ %51, %216 ]
  %260 = phi i32 [ %50, %224 ], [ %50, %228 ], [ 1, %234 ], [ 1, %236 ], [ 1, %213 ], [ %50, %210 ], [ %50, %195 ], [ %50, %183 ], [ %50, %157 ], [ %50, %147 ], [ %50, %137 ], [ %50, %108 ], [ %50, %98 ], [ %50, %88 ], [ %50, %83 ], [ %50, %78 ], [ %50, %73 ], [ %50, %68 ], [ %50, %60 ], [ %50, %219 ], [ %50, %216 ]
  %261 = add nsw i32 %259, 1
  %262 = icmp slt i32 %261, %0
  br i1 %262, label %32, label %30, !llvm.loop !24

263:                                              ; preds = %30
  %264 = load ptr, ptr %1, align 8, !tbaa !6
  tail call void @printUsage(ptr noundef %264) #20
  tail call void @exit(i32 noundef 0) #25
  unreachable

265:                                              ; preds = %30
  %266 = icmp eq ptr %257, null
  %267 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 2
  %268 = icmp eq ptr %255, null
  %269 = select i1 %266, i1 true, i1 %268
  br i1 %269, label %270, label %280

270:                                              ; preds = %2, %265
  %271 = phi ptr [ %267, %265 ], [ %14, %2 ]
  %272 = phi i32 [ %250, %265 ], [ 20, %2 ]
  %273 = phi double [ %256, %265 ], [ 0.000000e+00, %2 ]
  %274 = phi double [ %251, %265 ], [ 0.000000e+00, %2 ]
  %275 = phi ptr [ %252, %265 ], [ null, %2 ]
  %276 = phi i16 [ %254, %265 ], [ 0, %2 ]
  %277 = phi ptr [ %257, %265 ], [ null, %2 ]
  %278 = load ptr, ptr @stderr, align 8, !tbaa !6
  %279 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 34, i64 1, ptr %278) #24
  br label %280

280:                                              ; preds = %265, %270
  %281 = phi ptr [ %271, %270 ], [ %267, %265 ]
  %282 = phi i32 [ %272, %270 ], [ %250, %265 ]
  %283 = phi double [ %273, %270 ], [ %256, %265 ]
  %284 = phi double [ %274, %270 ], [ %251, %265 ]
  %285 = phi ptr [ %275, %270 ], [ %252, %265 ]
  %286 = phi i16 [ %276, %270 ], [ %254, %265 ]
  %287 = phi ptr [ %277, %270 ], [ %257, %265 ]
  %288 = phi i32 [ 1, %270 ], [ %260, %265 ]
  %289 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 10
  %290 = and i16 %286, 4
  %291 = icmp ne i16 %290, 0
  %292 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 6
  %293 = icmp eq ptr %285, null
  %294 = select i1 %291, i1 %293, i1 false
  br i1 %294, label %295, label %298

295:                                              ; preds = %280
  %296 = load ptr, ptr @stderr, align 8, !tbaa !6
  %297 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 40, i64 1, ptr %296) #24
  br label %298

298:                                              ; preds = %295, %280
  %299 = phi i32 [ 1, %295 ], [ %288, %280 ]
  %300 = fcmp olt double %284, 0.000000e+00
  %301 = fcmp ogt double %284, 1.000000e+00
  %302 = or i1 %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = load ptr, ptr @stderr, align 8, !tbaa !6
  %305 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 47, i64 1, ptr %304) #24
  br label %306

306:                                              ; preds = %298, %303
  %307 = phi i32 [ 1, %303 ], [ %299, %298 ]
  %308 = fcmp ult double %283, 1.000000e+00
  br i1 %308, label %309, label %315

309:                                              ; preds = %306
  %310 = add i32 %282, -2
  %311 = icmp ult i32 %310, 99
  %312 = and i32 %282, 1
  %313 = icmp eq i32 %312, 0
  %314 = and i1 %311, %313
  br i1 %314, label %325, label %323

315:                                              ; preds = %306
  %316 = load ptr, ptr @stderr, align 8, !tbaa !6
  %317 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %316, ptr noundef nonnull @.str.36) #21
  %318 = add i32 %282, -2
  %319 = icmp ult i32 %318, 99
  %320 = and i32 %282, 1
  %321 = icmp eq i32 %320, 0
  %322 = and i1 %319, %321
  br i1 %322, label %327, label %323

323:                                              ; preds = %315, %309
  %324 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %327

325:                                              ; preds = %309
  %326 = icmp eq i32 %307, 0
  br i1 %326, label %329, label %327

327:                                              ; preds = %315, %323, %325
  %328 = load ptr, ptr %1, align 8, !tbaa !6
  tail call void @printUsage(ptr noundef %328) #20
  tail call void @exit(i32 noundef -1) #25
  unreachable

329:                                              ; preds = %325
  %330 = add nuw nsw i32 %282, 1
  %331 = zext nneg i32 %330 to i64
  %332 = shl nuw nsw i64 %331, 2
  %333 = tail call noalias ptr @malloc(i64 noundef %332) #26
  %334 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 16
  store ptr %333, ptr %334, align 8, !tbaa !26
  %335 = icmp eq ptr %333, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %329
  %337 = load ptr, ptr @stderr, align 8, !tbaa !6
  %338 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %337, ptr noundef nonnull @.str.38, i64 noundef %332, ptr noundef nonnull @.str.39, i32 noundef 259) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

339:                                              ; preds = %329
  %340 = shl nuw nsw i64 %331, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %333, i8 0, i64 %340, i1 false), !tbaa !27
  %341 = tail call dereferenceable_or_null(304) ptr @calloc(i64 1, i64 304)
  %342 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 1
  store ptr %341, ptr %342, align 8, !tbaa !28
  %343 = icmp eq ptr %341, null
  br i1 %343, label %344, label %347

344:                                              ; preds = %339
  %345 = load ptr, ptr @stderr, align 8, !tbaa !6
  %346 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %345, ptr noundef nonnull @.str.38, i64 noundef 304, ptr noundef nonnull @.str.39, i32 noundef 265) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

347:                                              ; preds = %339
  %348 = tail call dereferenceable_or_null(304) ptr @calloc(i64 1, i64 304)
  %349 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 3
  store ptr %348, ptr %349, align 8, !tbaa !29
  %350 = icmp eq ptr %348, null
  br i1 %350, label %351, label %354

351:                                              ; preds = %347
  %352 = load ptr, ptr @stderr, align 8, !tbaa !6
  %353 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %352, ptr noundef nonnull @.str.38, i64 noundef 304, ptr noundef nonnull @.str.39, i32 noundef 267) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

354:                                              ; preds = %347
  %355 = tail call ptr @load_image_file(ptr noundef %287, ptr noundef nonnull %341, ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %356 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %355, i32 noundef 47) #23
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %360

358:                                              ; preds = %354
  %359 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %355, i32 noundef 92) #23
  br label %360

360:                                              ; preds = %354, %358
  %361 = phi ptr [ %359, %358 ], [ %356, %354 ]
  %362 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 4
  %363 = icmp eq ptr %361, null
  %364 = getelementptr inbounds i8, ptr %361, i64 1
  %365 = select i1 %363, ptr %355, ptr %364
  store ptr %365, ptr %362, align 8, !tbaa !30
  %366 = load ptr, ptr %281, align 8, !tbaa !16
  %367 = load ptr, ptr %349, align 8, !tbaa !29
  %368 = tail call ptr @load_image_file(ptr noundef %366, ptr noundef %367, ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %369 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %368, i32 noundef 47) #23
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %373

371:                                              ; preds = %360
  %372 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %368, i32 noundef 92) #23
  br label %373

373:                                              ; preds = %360, %371
  %374 = phi ptr [ %372, %371 ], [ %369, %360 ]
  %375 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 5
  %376 = icmp eq ptr %374, null
  %377 = getelementptr inbounds i8, ptr %374, i64 1
  %378 = select i1 %376, ptr %368, ptr %377
  store ptr %378, ptr %375, align 8, !tbaa !31
  %379 = load ptr, ptr %362, align 8, !tbaa !30
  %380 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %379, ptr noundef nonnull dereferenceable(1) %378) #23
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %373
  %383 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %379)
  %384 = getelementptr inbounds i8, ptr %379, i64 %383
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %384, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %385 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %378)
  %386 = getelementptr inbounds i8, ptr %378, i64 %385
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %386, ptr noundef nonnull align 1 dereferenceable(3) @.str.41, i64 3, i1 false)
  br label %387

387:                                              ; preds = %382, %373
  %388 = load i16, ptr %289, align 8
  %389 = and i16 %388, 12
  %390 = icmp eq i16 %389, 0
  br i1 %390, label %403, label %391

391:                                              ; preds = %387
  %392 = load ptr, ptr %342, align 8, !tbaa !28
  %393 = tail call ptr @init_targa(ptr noundef %392, ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %394 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 8
  store ptr %393, ptr %394, align 8, !tbaa !32
  %395 = getelementptr inbounds %struct.TargaImage, ptr %393, i64 0, i32 1
  store i8 0, ptr %395, align 1, !tbaa !33
  %396 = getelementptr inbounds %struct.TargaImage, ptr %393, i64 0, i32 2
  store i32 3, ptr %396, align 4, !tbaa !36
  %397 = getelementptr inbounds %struct.TargaImage, ptr %393, i64 0, i32 10
  store i8 8, ptr %397, align 2, !tbaa !37
  %398 = getelementptr inbounds %struct.TargaImage, ptr %393, i64 0, i32 11
  %399 = load i8, ptr %398, align 1, !tbaa !38
  %400 = and i8 %399, -16
  store i8 %400, ptr %398, align 1, !tbaa !38
  %401 = getelementptr inbounds %struct.TargaImage, ptr %393, i64 0, i32 15
  store i8 0, ptr %401, align 8, !tbaa !39
  %402 = load i16, ptr %289, align 8
  br label %403

403:                                              ; preds = %387, %391
  %404 = phi i16 [ %388, %387 ], [ %402, %391 ]
  %405 = and i16 %404, 8
  %406 = icmp eq i16 %405, 0
  br i1 %406, label %419, label %407

407:                                              ; preds = %403
  %408 = load ptr, ptr %349, align 8, !tbaa !29
  %409 = tail call ptr @init_targa(ptr noundef %408, ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %410 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 9
  store ptr %409, ptr %410, align 8, !tbaa !40
  %411 = getelementptr inbounds %struct.TargaImage, ptr %409, i64 0, i32 1
  store i8 0, ptr %411, align 1, !tbaa !33
  %412 = getelementptr inbounds %struct.TargaImage, ptr %409, i64 0, i32 2
  store i32 3, ptr %412, align 4, !tbaa !36
  %413 = getelementptr inbounds %struct.TargaImage, ptr %409, i64 0, i32 10
  store i8 8, ptr %413, align 2, !tbaa !37
  %414 = getelementptr inbounds %struct.TargaImage, ptr %409, i64 0, i32 11
  %415 = load i8, ptr %414, align 1, !tbaa !38
  %416 = and i8 %415, -16
  store i8 %416, ptr %414, align 1, !tbaa !38
  %417 = getelementptr inbounds %struct.TargaImage, ptr %409, i64 0, i32 15
  store i8 0, ptr %417, align 8, !tbaa !39
  %418 = load i16, ptr %289, align 8
  br label %419

419:                                              ; preds = %407, %403
  %420 = phi i16 [ %418, %407 ], [ %404, %403 ]
  %421 = and i16 %420, 4
  %422 = icmp eq i16 %421, 0
  br i1 %422, label %433, label %423

423:                                              ; preds = %419
  %424 = load ptr, ptr %342, align 8, !tbaa !28
  %425 = tail call ptr @init_targa(ptr noundef %424, ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %426 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 7
  store ptr %425, ptr %426, align 8, !tbaa !41
  %427 = getelementptr inbounds %struct.TargaImage, ptr %425, i64 0, i32 1
  store i8 0, ptr %427, align 1, !tbaa !33
  %428 = getelementptr inbounds %struct.TargaImage, ptr %425, i64 0, i32 2
  store i32 2, ptr %428, align 4, !tbaa !36
  %429 = getelementptr inbounds %struct.TargaImage, ptr %425, i64 0, i32 10
  store i8 24, ptr %429, align 2, !tbaa !37
  %430 = getelementptr inbounds %struct.TargaImage, ptr %425, i64 0, i32 11
  store i8 0, ptr %430, align 1, !tbaa !38
  %431 = getelementptr inbounds %struct.TargaImage, ptr %425, i64 0, i32 15
  store i8 0, ptr %431, align 8, !tbaa !39
  %432 = load i16, ptr %289, align 8
  br label %433

433:                                              ; preds = %423, %419
  %434 = phi i16 [ %432, %423 ], [ %420, %419 ]
  %435 = and i16 %434, 1
  %436 = icmp eq i16 %435, 0
  %437 = and i16 %434, 9
  %438 = icmp eq i16 %437, 0
  br i1 %438, label %470, label %439

439:                                              ; preds = %433
  %440 = load ptr, ptr %362, align 8, !tbaa !30
  %441 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %440) #23
  %442 = load ptr, ptr %375, align 8, !tbaa !31
  %443 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %442) #23
  %444 = tail call i64 @llvm.umax.i64(i64 %441, i64 %443)
  %445 = shl i64 %444, 32
  %446 = add i64 %445, 47244640256
  %447 = ashr exact i64 %446, 32
  %448 = tail call noalias ptr @malloc(i64 noundef %447) #26
  %449 = icmp eq ptr %448, null
  br i1 %449, label %450, label %453

450:                                              ; preds = %439
  %451 = load ptr, ptr @stderr, align 8, !tbaa !6
  %452 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %451, ptr noundef nonnull @.str.38, i64 noundef %447, ptr noundef nonnull @.str.39, i32 noundef 318) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

453:                                              ; preds = %439
  br i1 %436, label %459, label %454

454:                                              ; preds = %453
  %455 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %448, ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %440) #22
  %456 = load ptr, ptr %342, align 8, !tbaa !28
  tail call void @dump_tga(ptr noundef nonnull %448, ptr noundef %456) #20
  %457 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %448, ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %442) #22
  %458 = load ptr, ptr %349, align 8, !tbaa !29
  tail call void @dump_tga(ptr noundef nonnull %448, ptr noundef %458) #20
  br label %459

459:                                              ; preds = %454, %453
  %460 = and i16 %434, 8
  %461 = icmp eq i16 %460, 0
  br i1 %461, label %469, label %462

462:                                              ; preds = %459
  %463 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %448, ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %440) #22
  %464 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 8
  %465 = load ptr, ptr %464, align 8, !tbaa !32
  tail call void @dump_tga(ptr noundef nonnull %448, ptr noundef %465) #20
  %466 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %448, ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %442) #22
  %467 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 9
  %468 = load ptr, ptr %467, align 8, !tbaa !40
  tail call void @dump_tga(ptr noundef nonnull %448, ptr noundef %468) #20
  br label %469

469:                                              ; preds = %462, %459
  tail call void @free(ptr noundef nonnull %448) #22
  br label %470

470:                                              ; preds = %433, %469
  %471 = and i16 %434, 2
  %472 = icmp eq i16 %471, 0
  br i1 %472, label %478, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr %3, align 8, !tbaa !17
  %475 = load ptr, ptr %342, align 8, !tbaa !28
  tail call void @dump_header(ptr noundef %474, ptr noundef %475) #20
  %476 = load ptr, ptr %281, align 8, !tbaa !16
  %477 = load ptr, ptr %349, align 8, !tbaa !29
  tail call void @dump_header(ptr noundef %476, ptr noundef %477) #20
  br label %478

478:                                              ; preds = %473, %470
  %479 = tail call i32 @computeSSIM(ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %480 = load i16, ptr %289, align 8
  %481 = and i16 %480, 4
  %482 = icmp eq i16 %481, 0
  br i1 %482, label %487, label %483

483:                                              ; preds = %478
  %484 = load ptr, ptr %292, align 8, !tbaa !20
  %485 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 7
  %486 = load ptr, ptr %485, align 8, !tbaa !41
  tail call void @dump_tga(ptr noundef %484, ptr noundef %486) #20
  br label %487

487:                                              ; preds = %483, %478
  tail call void @exit(i32 noundef 0) #25
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_version() local_unnamed_addr #2 {
  %1 = tail call ptr @spec_strdup(ptr noundef nonnull @.str.99) #20
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 36) #23
  %3 = icmp eq ptr %2, null
  %4 = icmp eq ptr %2, %1
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  tail call void @free(ptr noundef %1) #22
  %7 = tail call ptr @spec_strdup(ptr noundef nonnull @.str.98) #20
  br label %12

8:                                                ; preds = %0
  %9 = getelementptr inbounds i8, ptr %2, i64 -1
  store i8 0, ptr %9, align 1, !tbaa !23
  %10 = getelementptr inbounds i8, ptr %1, i64 21
  store i8 114, ptr %10, align 1, !tbaa !23
  %11 = tail call ptr @spec_strdup(ptr noundef nonnull %10) #20
  tail call void @free(ptr noundef %1) #22
  br label %12

12:                                               ; preds = %6, %8
  %13 = phi ptr [ %7, %6 ], [ %11, %8 ]
  ret ptr %13
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @spec_strdup(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %3 = shl i64 %2, 32
  %4 = add i64 %3, 42949672960
  %5 = ashr exact i64 %4, 32
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @stderr, align 8, !tbaa !6
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.38, i64 noundef %5, ptr noundef nonnull @.str.39, i32 noundef 1017) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

11:                                               ; preds = %1
  %12 = tail call ptr @strncpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef %5) #22
  %13 = ashr exact i64 %3, 32
  %14 = getelementptr inbounds i8, ptr %6, i64 %13
  store i8 0, ptr %14, align 1, !tbaa !23
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @printUsage(ptr noundef %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @.str.100, ptr %0
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.104)
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102, ptr noundef nonnull %3) #20
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.103) #20
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @load_image_file(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly byval(%struct.params) align 8 %2) local_unnamed_addr #2 {
  %4 = tail call ptr @spec_strdup(ptr noundef %0) #20
  %5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.64) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.65) #23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %3
  tail call void @free(ptr noundef %4) #22
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, ptr noundef %0) #20
  tail call void @printUsage(ptr noundef null) #20
  tail call void @exit(i32 noundef 1) #25
  unreachable

15:                                               ; preds = %10, %7
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.65) #23
  %17 = icmp eq i32 %16, 0
  store i8 0, ptr %5, align 1, !tbaa !23
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @read_yuv_file(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.params) align 8 %2) #20
  br label %20

19:                                               ; preds = %15
  tail call void @read_tga_file(ptr noundef %0, ptr noundef %1) #20
  br label %20

20:                                               ; preds = %18, %19
  %21 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(5) @.str.67) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(6) @.str.68) #23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  store i8 0, ptr %21, align 1, !tbaa !23
  br label %30

30:                                               ; preds = %29, %26, %20
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @init_targa(ptr noundef readonly %0, ptr nocapture noundef readonly byval(%struct.params) align 8 %1) local_unnamed_addr #2 {
  %3 = tail call noalias dereferenceable_or_null(304) ptr @malloc(i64 noundef 304) #26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !6
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.38, i64 noundef 304, ptr noundef nonnull @.str.39, i32 noundef 986) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

8:                                                ; preds = %2
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %3, i8 0, i64 304, i1 false)
  %11 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 2
  store i32 2, ptr %11, align 4, !tbaa !36
  %12 = getelementptr inbounds %struct.params, ptr %1, i64 0, i32 17
  %13 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 8
  %14 = load <2 x i32>, ptr %12, align 8, !tbaa !27
  %15 = trunc <2 x i32> %14 to <2 x i16>
  store <2 x i16> %15, ptr %13, align 2, !tbaa !42
  %16 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 10
  store i8 24, ptr %16, align 2, !tbaa !37
  br label %30

17:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %3, ptr noundef nonnull align 8 dereferenceable(304) %0, i64 304, i1 false)
  %18 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 4
  %19 = load i16, ptr %18, align 2, !tbaa !43
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = zext i16 %19 to i64
  %23 = shl nuw nsw i64 %22, 2
  %24 = tail call ptr @calloc(i64 1, i64 %23)
  %25 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 13
  store ptr %24, ptr %25, align 8, !tbaa !44
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load ptr, ptr @stderr, align 8, !tbaa !6
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.38, i64 noundef %23, ptr noundef nonnull @.str.39, i32 noundef 1000) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

30:                                               ; preds = %21, %10, %17
  %31 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 9
  %32 = load i16, ptr %31, align 4, !tbaa !45
  %33 = zext i16 %32 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #26
  %36 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 14
  store ptr %35, ptr %36, align 8, !tbaa !46
  %37 = icmp eq ptr %35, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = icmp eq i16 %32, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 8
  %42 = load i16, ptr %41, align 2, !tbaa !47
  %43 = zext i16 %42 to i64
  %44 = shl nuw nsw i64 %43, 2
  %45 = zext i16 %32 to i64
  br label %50

46:                                               ; preds = %30
  %47 = load ptr, ptr @stderr, align 8, !tbaa !6
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.38, i64 noundef %34, ptr noundef nonnull @.str.39, i32 noundef 1005) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

49:                                               ; preds = %58, %38
  ret ptr %3

50:                                               ; preds = %40, %58
  %51 = phi i64 [ 0, %40 ], [ %59, %58 ]
  %52 = tail call ptr @calloc(i64 1, i64 %44)
  %53 = getelementptr inbounds ptr, ptr %35, i64 %51
  store ptr %52, ptr %53, align 8, !tbaa !6
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load ptr, ptr @stderr, align 8, !tbaa !6
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.38, i64 noundef %44, ptr noundef nonnull @.str.39, i32 noundef 1007) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

58:                                               ; preds = %50
  %59 = add nuw nsw i64 %51, 1
  %60 = icmp eq i64 %59, %45
  br i1 %60, label %49, label %50, !llvm.loop !48
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_tga(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.96) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !6
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.97, ptr noundef %0) #21
  tail call void @exit(i32 noundef -1) #25
  unreachable

8:                                                ; preds = %2
  %9 = load i8, ptr %1, align 8, !tbaa !49
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @fputc(i32 noundef %10, ptr noundef nonnull %3) #20
  %12 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  %13 = load i8, ptr %12, align 1, !tbaa !33
  %14 = zext i8 %13 to i32
  %15 = tail call i32 @fputc(i32 noundef %14, ptr noundef nonnull %3) #20
  %16 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !36
  %18 = and i32 %17, 255
  %19 = tail call i32 @fputc(i32 noundef %18, ptr noundef nonnull %3) #20
  %20 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !50
  %22 = and i16 %21, 255
  %23 = zext nneg i16 %22 to i32
  %24 = tail call i32 @fputc(i32 noundef %23, ptr noundef nonnull %3) #20
  %25 = load i16, ptr %20, align 8, !tbaa !50
  %26 = lshr i16 %25, 8
  %27 = zext nneg i16 %26 to i32
  %28 = tail call i32 @fputc(i32 noundef %27, ptr noundef nonnull %3) #20
  %29 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  %30 = load i16, ptr %29, align 2, !tbaa !43
  %31 = and i16 %30, 255
  %32 = zext nneg i16 %31 to i32
  %33 = tail call i32 @fputc(i32 noundef %32, ptr noundef nonnull %3) #20
  %34 = load i16, ptr %29, align 2, !tbaa !43
  %35 = lshr i16 %34, 8
  %36 = zext nneg i16 %35 to i32
  %37 = tail call i32 @fputc(i32 noundef %36, ptr noundef nonnull %3) #20
  %38 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  %39 = load i8, ptr %38, align 4, !tbaa !51
  %40 = zext i8 %39 to i32
  %41 = tail call i32 @fputc(i32 noundef %40, ptr noundef nonnull %3) #20
  %42 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  %43 = load i16, ptr %42, align 2, !tbaa !52
  %44 = and i16 %43, 255
  %45 = zext nneg i16 %44 to i32
  %46 = tail call i32 @fputc(i32 noundef %45, ptr noundef nonnull %3) #20
  %47 = load i16, ptr %42, align 2, !tbaa !52
  %48 = lshr i16 %47, 8
  %49 = zext nneg i16 %48 to i32
  %50 = tail call i32 @fputc(i32 noundef %49, ptr noundef nonnull %3) #20
  %51 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  %52 = load i16, ptr %51, align 8, !tbaa !53
  %53 = and i16 %52, 255
  %54 = zext nneg i16 %53 to i32
  %55 = tail call i32 @fputc(i32 noundef %54, ptr noundef nonnull %3) #20
  %56 = load i16, ptr %51, align 8, !tbaa !53
  %57 = lshr i16 %56, 8
  %58 = zext nneg i16 %57 to i32
  %59 = tail call i32 @fputc(i32 noundef %58, ptr noundef nonnull %3) #20
  %60 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  %61 = load i16, ptr %60, align 2, !tbaa !47
  %62 = and i16 %61, 255
  %63 = zext nneg i16 %62 to i32
  %64 = tail call i32 @fputc(i32 noundef %63, ptr noundef nonnull %3) #20
  %65 = load i16, ptr %60, align 2, !tbaa !47
  %66 = lshr i16 %65, 8
  %67 = zext nneg i16 %66 to i32
  %68 = tail call i32 @fputc(i32 noundef %67, ptr noundef nonnull %3) #20
  %69 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  %70 = load i16, ptr %69, align 4, !tbaa !45
  %71 = and i16 %70, 255
  %72 = zext nneg i16 %71 to i32
  %73 = tail call i32 @fputc(i32 noundef %72, ptr noundef nonnull %3) #20
  %74 = load i16, ptr %69, align 4, !tbaa !45
  %75 = lshr i16 %74, 8
  %76 = zext nneg i16 %75 to i32
  %77 = tail call i32 @fputc(i32 noundef %76, ptr noundef nonnull %3) #20
  %78 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %79 = load i8, ptr %78, align 2, !tbaa !37
  %80 = zext i8 %79 to i32
  %81 = tail call i32 @fputc(i32 noundef %80, ptr noundef nonnull %3) #20
  %82 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  %83 = load i8, ptr %82, align 1, !tbaa !38
  %84 = zext i8 %83 to i32
  %85 = tail call i32 @fputc(i32 noundef %84, ptr noundef nonnull %3) #20
  %86 = load i16, ptr %69, align 4, !tbaa !45
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %8
  %89 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 14
  %90 = load i16, ptr %60, align 2, !tbaa !47
  br label %91

91:                                               ; preds = %88, %100
  %92 = phi i16 [ %86, %88 ], [ %101, %100 ]
  %93 = phi i16 [ %90, %88 ], [ %102, %100 ]
  %94 = phi i64 [ 0, %88 ], [ %103, %100 ]
  %95 = icmp eq i16 %93, 0
  br i1 %95, label %100, label %106

96:                                               ; preds = %100, %8
  %97 = tail call i32 @fclose(ptr noundef %3) #20
  ret void

98:                                               ; preds = %177
  %99 = load i16, ptr %69, align 4, !tbaa !45
  br label %100

100:                                              ; preds = %98, %91
  %101 = phi i16 [ %99, %98 ], [ %92, %91 ]
  %102 = phi i16 [ %179, %98 ], [ 0, %91 ]
  %103 = add nuw nsw i64 %94, 1
  %104 = zext i16 %101 to i64
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %91, label %96, !llvm.loop !54

106:                                              ; preds = %91, %177
  %107 = phi i64 [ %178, %177 ], [ 0, %91 ]
  %108 = load i32, ptr %16, align 4, !tbaa !36
  %109 = and i32 %108, -2
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %177

111:                                              ; preds = %106
  %112 = load i8, ptr %78, align 2, !tbaa !37
  %113 = load ptr, ptr %89, align 8, !tbaa !46
  %114 = getelementptr inbounds ptr, ptr %113, i64 %94
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  switch i8 %112, label %146 [
    i8 8, label %116
    i8 16, label %120
  ]

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107, i32 2
  %118 = load i8, ptr %117, align 1, !tbaa !55
  %119 = zext i8 %118 to i32
  br label %174

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107
  %122 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107, i32 3
  %123 = load i8, ptr %122, align 1, !tbaa !57
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 15
  %126 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107, i32 2
  %127 = load i8, ptr %126, align 1, !tbaa !55
  %128 = and i8 %127, 31
  %129 = zext nneg i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 10
  %131 = or disjoint i32 %130, %125
  %132 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107, i32 1
  %133 = load i8, ptr %132, align 1, !tbaa !58
  %134 = and i8 %133, 31
  %135 = zext nneg i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 5
  %137 = or disjoint i32 %131, %136
  %138 = load i8, ptr %121, align 1, !tbaa !59
  %139 = and i8 %138, 31
  %140 = trunc i32 %136 to i8
  %141 = or disjoint i8 %139, %140
  %142 = zext i8 %141 to i32
  %143 = tail call i32 @fputc(i32 noundef %142, ptr noundef %3) #20
  %144 = lshr i32 %137, 8
  %145 = and i32 %144, 255
  br label %174

146:                                              ; preds = %111
  %147 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107
  %148 = load i8, ptr %147, align 1, !tbaa !59
  %149 = zext i8 %148 to i32
  %150 = tail call i32 @fputc(i32 noundef %149, ptr noundef %3) #20
  %151 = load ptr, ptr %89, align 8, !tbaa !46
  %152 = getelementptr inbounds ptr, ptr %151, i64 %94
  %153 = load ptr, ptr %152, align 8, !tbaa !6
  %154 = getelementptr inbounds %struct.Pixel, ptr %153, i64 %107, i32 1
  %155 = load i8, ptr %154, align 1, !tbaa !58
  %156 = zext i8 %155 to i32
  %157 = tail call i32 @fputc(i32 noundef %156, ptr noundef %3) #20
  %158 = load ptr, ptr %89, align 8, !tbaa !46
  %159 = getelementptr inbounds ptr, ptr %158, i64 %94
  %160 = load ptr, ptr %159, align 8, !tbaa !6
  %161 = getelementptr inbounds %struct.Pixel, ptr %160, i64 %107, i32 2
  %162 = load i8, ptr %161, align 1, !tbaa !55
  %163 = zext i8 %162 to i32
  %164 = tail call i32 @fputc(i32 noundef %163, ptr noundef %3) #20
  %165 = load i8, ptr %78, align 2, !tbaa !37
  %166 = icmp eq i8 %165, 32
  br i1 %166, label %167, label %177

167:                                              ; preds = %146
  %168 = load ptr, ptr %89, align 8, !tbaa !46
  %169 = getelementptr inbounds ptr, ptr %168, i64 %94
  %170 = load ptr, ptr %169, align 8, !tbaa !6
  %171 = getelementptr inbounds %struct.Pixel, ptr %170, i64 %107, i32 3
  %172 = load i8, ptr %171, align 1, !tbaa !57
  %173 = zext i8 %172 to i32
  br label %174

174:                                              ; preds = %116, %167, %120
  %175 = phi i32 [ %145, %120 ], [ %173, %167 ], [ %119, %116 ]
  %176 = tail call i32 @fputc(i32 noundef %175, ptr noundef %3) #20
  br label %177

177:                                              ; preds = %174, %106, %146
  %178 = add nuw nsw i64 %107, 1
  %179 = load i16, ptr %60, align 2, !tbaa !47
  %180 = zext i16 %179 to i64
  %181 = icmp ult i64 %178, %180
  br i1 %181, label %106, label %98, !llvm.loop !60
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_header(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = alloca [100 x i8], align 16
  %4 = load ptr, ptr @stderr, align 8, !tbaa !6
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.74, ptr noundef %0) #21
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !6
  %9 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 25, i64 1, ptr %8) #24
  br label %111

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %3, i8 0, i64 100, i1 false)
  %11 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !36
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
  %17 = load i8, ptr %16, align 8, !tbaa !39
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = zext i8 %17 to i32
  %21 = and i32 %12, 8
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.79, ptr @.str.78
  %24 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %25 = load i8, ptr %24, align 2, !tbaa !37
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull %23, i32 noundef %26, i32 noundef %20) #22
  br label %53

28:                                               ; preds = %15
  %29 = and i32 %12, 8
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.79, ptr @.str.78
  %32 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %33 = load i8, ptr %32, align 2, !tbaa !37
  %34 = zext i8 %33 to i32
  %35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull %31, i32 noundef %34) #22
  br label %53

36:                                               ; preds = %10
  %37 = and i32 %12, 8
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr @.str.79, ptr @.str.78
  %40 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %41 = load i8, ptr %40, align 2, !tbaa !37
  %42 = zext i8 %41 to i32
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.81, ptr noundef nonnull %39, i32 noundef %42) #22
  br label %53

44:                                               ; preds = %10
  %45 = and i32 %12, 8
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.79, ptr @.str.78
  %48 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  %49 = load i8, ptr %48, align 4, !tbaa !51
  %50 = zext i8 %49 to i32
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %47, i32 noundef %50) #22
  br label %53

52:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 1 dereferenceable(26) @.str.83, i64 26, i1 false)
  br label %53

53:                                               ; preds = %19, %28, %52, %44, %36, %14
  %54 = load ptr, ptr @stderr, align 8, !tbaa !6
  %55 = load i8, ptr %1, align 8, !tbaa !49
  %56 = zext i8 %55 to i32
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.84, i32 noundef %56) #21
  %58 = load ptr, ptr @stderr, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  %60 = load i8, ptr %59, align 1, !tbaa !33
  %61 = zext i8 %60 to i32
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.85, i32 noundef %61) #21
  %63 = load ptr, ptr @stderr, align 8, !tbaa !6
  %64 = load i32, ptr %11, align 4, !tbaa !36
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.86, i32 noundef %64, ptr noundef nonnull %3) #21
  %66 = load ptr, ptr @stderr, align 8, !tbaa !6
  %67 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  %68 = load i16, ptr %67, align 8, !tbaa !50
  %69 = zext i16 %68 to i32
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.87, i32 noundef %69) #21
  %71 = load ptr, ptr @stderr, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  %73 = load i16, ptr %72, align 2, !tbaa !43
  %74 = zext i16 %73 to i32
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.88, i32 noundef %74) #21
  %76 = load ptr, ptr @stderr, align 8, !tbaa !6
  %77 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  %78 = load i8, ptr %77, align 4, !tbaa !51
  %79 = zext i8 %78 to i32
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.89, i32 noundef %79) #21
  %81 = load ptr, ptr @stderr, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  %83 = load i16, ptr %82, align 2, !tbaa !52
  %84 = zext i16 %83 to i32
  %85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.90, i32 noundef %84) #21
  %86 = load ptr, ptr @stderr, align 8, !tbaa !6
  %87 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  %88 = load i16, ptr %87, align 8, !tbaa !53
  %89 = zext i16 %88 to i32
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.91, i32 noundef %89) #21
  %91 = load ptr, ptr @stderr, align 8, !tbaa !6
  %92 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  %93 = load i16, ptr %92, align 2, !tbaa !47
  %94 = zext i16 %93 to i32
  %95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.92, i32 noundef %94) #21
  %96 = load ptr, ptr @stderr, align 8, !tbaa !6
  %97 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  %98 = load i16, ptr %97, align 4, !tbaa !45
  %99 = zext i16 %98 to i32
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.93, i32 noundef %99) #21
  %101 = load ptr, ptr @stderr, align 8, !tbaa !6
  %102 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %103 = load i8, ptr %102, align 2, !tbaa !37
  %104 = zext i8 %103 to i32
  %105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.94, i32 noundef %104) #21
  %106 = load ptr, ptr @stderr, align 8, !tbaa !6
  %107 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  %108 = load i8, ptr %107, align 1, !tbaa !38
  %109 = zext i8 %108 to i32
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.95, i32 noundef %109) #21
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #19
  br label %111

111:                                              ; preds = %53, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @computeSSIM(ptr nocapture noundef readonly byval(%struct.params) align 8 %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 9
  %13 = load i16, ptr %12, align 4, !tbaa !45
  %14 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 8
  %15 = load i16, ptr %14, align 2, !tbaa !47
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 8
  %18 = load i16, ptr %17, align 2, !tbaa !47
  %19 = icmp eq i16 %15, %18
  %20 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 9
  %21 = load i16, ptr %20, align 4, !tbaa !45
  %22 = icmp eq i16 %13, %21
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = zext i16 %13 to i32
  %26 = load ptr, ptr @stderr, align 8, !tbaa !6
  %27 = zext i16 %18 to i32
  %28 = zext i16 %21 to i32
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.44, i32 noundef %16, i32 noundef %25, i32 noundef %27, i32 noundef %28) #21
  br label %657

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 10
  %32 = load i8, ptr %31, align 2, !tbaa !37
  switch i8 %32, label %33 [
    i8 16, label %36
    i8 32, label %35
  ]

33:                                               ; preds = %30
  %34 = zext i8 %32 to i32
  br label %36

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %30, %35, %33
  %37 = phi i32 [ 15, %30 ], [ %34, %33 ], [ 24, %35 ]
  %38 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #26
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load ptr, ptr @stderr, align 8, !tbaa !6
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.38, i64 noundef 512, ptr noundef nonnull @.str.39, i32 noundef 392) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

43:                                               ; preds = %36
  %44 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #26
  %45 = icmp eq ptr %44, null
  br i1 %45, label %88, label %46

46:                                               ; preds = %43
  %47 = icmp eq i16 %13, 0
  br i1 %47, label %110, label %48

48:                                               ; preds = %46
  %49 = icmp eq i16 %15, 0
  %50 = icmp eq i32 %37, 8
  %51 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 11
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 14
  %54 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 14
  %55 = icmp eq ptr %5, null
  %56 = getelementptr inbounds %struct.TargaImage, ptr %5, i64 0, i32 14
  %57 = icmp eq ptr %9, null
  %58 = getelementptr inbounds %struct.TargaImage, ptr %9, i64 0, i32 14
  %59 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %60 = load <8 x i16>, ptr %59, align 8
  %61 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 15
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 0
  %64 = uitofp i32 %62 to float
  %65 = fmul float %64, 5.000000e-01
  %66 = fpext float %65 to double
  %67 = lshr i32 %62, 1
  %68 = uitofp i32 %67 to double
  %69 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 16
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 12
  %72 = load double, ptr %71, align 8
  %73 = fcmp ogt double %72, 0.000000e+00
  %74 = icmp eq ptr %11, null
  %75 = getelementptr inbounds %struct.TargaImage, ptr %11, i64 0, i32 14
  %76 = shufflevector <8 x i16> %60, <8 x i16> poison, <4 x i32> zeroinitializer
  %77 = and <4 x i16> %76, <i16 384, i16 448, i16 16, i16 256>
  %78 = icmp eq <4 x i16> %77, zeroinitializer
  %79 = zext i16 %15 to i64
  %80 = add nsw i32 %16, -1
  %81 = lshr i32 %80, 3
  %82 = add nuw nsw i32 %81, 1
  %83 = zext i16 %13 to i64
  %84 = extractelement <4 x i1> %78, i64 0
  %85 = extractelement <4 x i1> %78, i64 1
  %86 = extractelement <4 x i1> %78, i64 2
  %87 = extractelement <4 x i1> %78, i64 3
  br label %91

88:                                               ; preds = %43
  %89 = load ptr, ptr @stderr, align 8, !tbaa !6
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.38, i64 noundef 512, ptr noundef nonnull @.str.39, i32 noundef 393) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

91:                                               ; preds = %48, %121
  %92 = phi i64 [ 0, %48 ], [ %97, %121 ]
  %93 = phi double [ 0.000000e+00, %48 ], [ %125, %121 ]
  %94 = phi double [ 1.000000e+00, %48 ], [ %124, %121 ]
  %95 = phi i32 [ 0, %48 ], [ %123, %121 ]
  %96 = phi i32 [ 0, %48 ], [ %122, %121 ]
  %97 = add nuw nsw i64 %92, 8
  br i1 %49, label %121, label %98

98:                                               ; preds = %91
  %99 = icmp ugt i64 %97, %83
  %100 = sub nsw i64 %83, %92
  %101 = trunc i64 %100 to i32
  %102 = select i1 %99, i32 %101, i32 8
  %103 = icmp eq i32 %102, 0
  %104 = zext i32 %102 to i64
  %105 = add i32 %82, %95
  %106 = trunc i64 %92 to i32
  %107 = trunc i64 %92 to i32
  %108 = or i1 %74, %103
  %109 = trunc i64 %92 to i32
  br label %127

110:                                              ; preds = %121, %46
  %111 = phi i32 [ 0, %46 ], [ %122, %121 ]
  %112 = phi i32 [ 0, %46 ], [ %123, %121 ]
  %113 = phi double [ 1.000000e+00, %46 ], [ %124, %121 ]
  %114 = phi double [ 0.000000e+00, %46 ], [ %125, %121 ]
  tail call void @free(ptr noundef %38) #22
  tail call void @free(ptr noundef %44) #22
  %115 = load ptr, ptr @stderr, align 8, !tbaa !6
  %116 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 13
  %117 = load i32, ptr %116, align 8, !tbaa !22
  %118 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 14
  %119 = load double, ptr %118, align 8, !tbaa !21
  %120 = fcmp ogt double %119, 0.000000e+00
  br i1 %120, label %476, label %489

121:                                              ; preds = %474, %91
  %122 = phi i32 [ %96, %91 ], [ %413, %474 ]
  %123 = phi i32 [ %95, %91 ], [ %105, %474 ]
  %124 = phi double [ %94, %91 ], [ %401, %474 ]
  %125 = phi double [ %93, %91 ], [ %166, %474 ]
  %126 = icmp ult i64 %97, %83
  br i1 %126, label %91, label %110, !llvm.loop !61

127:                                              ; preds = %98, %474
  %128 = phi i64 [ 0, %98 ], [ %132, %474 ]
  %129 = phi double [ %93, %98 ], [ %166, %474 ]
  %130 = phi double [ %94, %98 ], [ %401, %474 ]
  %131 = phi i32 [ %96, %98 ], [ %413, %474 ]
  %132 = add nuw nsw i64 %128, 8
  %133 = icmp ugt i64 %132, %79
  %134 = sub nsw i64 %79, %128
  %135 = trunc i64 %134 to i32
  %136 = select i1 %133, i32 %135, i32 8
  br i1 %103, label %148, label %137

137:                                              ; preds = %127
  %138 = icmp eq i32 %136, 0
  %139 = zext i32 %136 to i64
  %140 = trunc i64 %128 to i32
  br label %141

141:                                              ; preds = %137, %167
  %142 = phi i64 [ 0, %137 ], [ %169, %167 ]
  %143 = phi i32 [ 0, %137 ], [ %168, %167 ]
  br i1 %138, label %167, label %144

144:                                              ; preds = %141
  %145 = trunc i64 %142 to i32
  %146 = add i32 %145, %106
  %147 = zext i32 %146 to i64
  br label %171

148:                                              ; preds = %167, %127
  %149 = phi i32 [ 0, %127 ], [ %168, %167 ]
  %150 = tail call double @mean(ptr noundef nonnull %38, i32 noundef %149) #20
  %151 = tail call double @mean(ptr noundef nonnull %44, i32 noundef %149) #20
  %152 = tail call double @variance(ptr noundef nonnull %38, double noundef %150, i32 noundef %149) #20
  %153 = tail call double @variance(ptr noundef nonnull %44, double noundef %151, i32 noundef %149) #20
  %154 = tail call double @covariance(ptr noundef nonnull %38, ptr noundef nonnull %44, double noundef %150, double noundef %151, i32 noundef %149) #20
  %155 = fmul double %150, 2.000000e+00
  %156 = tail call double @llvm.fmuladd.f64(double %155, double %151, double 6.502500e+00)
  %157 = tail call double @llvm.fmuladd.f64(double %154, double 2.000000e+00, double 5.852550e+01)
  %158 = fmul double %156, %157
  %159 = fmul double %151, %151
  %160 = tail call double @llvm.fmuladd.f64(double %150, double %150, double %159)
  %161 = fadd double %160, 6.502500e+00
  %162 = fadd double %152, %153
  %163 = fadd double %162, 5.852550e+01
  %164 = fmul double %161, %163
  %165 = fdiv double %158, %164
  %166 = fadd double %129, %165
  br i1 %86, label %393, label %399

167:                                              ; preds = %389, %141
  %168 = phi i32 [ %143, %141 ], [ %390, %389 ]
  %169 = add nuw nsw i64 %142, 1
  %170 = icmp ult i64 %169, %104
  br i1 %170, label %141, label %148, !llvm.loop !62

171:                                              ; preds = %144, %389
  %172 = phi i64 [ 0, %144 ], [ %391, %389 ]
  %173 = phi i32 [ %143, %144 ], [ %390, %389 ]
  br i1 %50, label %174, label %193

174:                                              ; preds = %171
  %175 = load ptr, ptr %53, align 8, !tbaa !46
  %176 = getelementptr inbounds ptr, ptr %175, i64 %147
  %177 = load ptr, ptr %176, align 8, !tbaa !6
  %178 = add nuw i64 %172, %128
  %179 = and i64 %178, 4294967295
  %180 = getelementptr inbounds %struct.Pixel, ptr %177, i64 %179, i32 2
  %181 = load i8, ptr %180, align 1, !tbaa !55
  %182 = zext i32 %173 to i64
  %183 = getelementptr inbounds double, ptr %38, i64 %182
  %184 = load ptr, ptr %54, align 8, !tbaa !46
  %185 = getelementptr inbounds ptr, ptr %184, i64 %147
  %186 = load ptr, ptr %185, align 8, !tbaa !6
  %187 = getelementptr inbounds %struct.Pixel, ptr %186, i64 %179, i32 2
  %188 = load i8, ptr %187, align 1, !tbaa !55
  %189 = insertelement <2 x i8> poison, i8 %188, i64 0
  %190 = insertelement <2 x i8> %189, i8 %181, i64 1
  %191 = uitofp <2 x i8> %190 to <2 x double>
  %192 = extractelement <2 x double> %191, i64 1
  store double %192, ptr %183, align 8, !tbaa !63
  br label %314

193:                                              ; preds = %171
  switch i32 %52, label %311 [
    i32 0, label %194
    i32 1, label %230
    i32 2, label %266
  ]

194:                                              ; preds = %193
  %195 = load ptr, ptr %53, align 8, !tbaa !46
  %196 = getelementptr inbounds ptr, ptr %195, i64 %147
  %197 = load ptr, ptr %196, align 8, !tbaa !6
  %198 = add nuw i64 %172, %128
  %199 = and i64 %198, 4294967295
  %200 = getelementptr inbounds %struct.Pixel, ptr %197, i64 %199
  %201 = getelementptr inbounds %struct.Pixel, ptr %197, i64 %199, i32 2
  %202 = load i8, ptr %201, align 1, !tbaa !55
  %203 = getelementptr inbounds %struct.Pixel, ptr %197, i64 %199, i32 1
  %204 = load i8, ptr %203, align 1, !tbaa !58
  %205 = load i8, ptr %200, align 1, !tbaa !59
  %206 = zext i32 %173 to i64
  %207 = getelementptr inbounds double, ptr %38, i64 %206
  %208 = load ptr, ptr %54, align 8, !tbaa !46
  %209 = getelementptr inbounds ptr, ptr %208, i64 %147
  %210 = load ptr, ptr %209, align 8, !tbaa !6
  %211 = getelementptr inbounds %struct.Pixel, ptr %210, i64 %199
  %212 = getelementptr inbounds %struct.Pixel, ptr %210, i64 %199, i32 2
  %213 = load i8, ptr %212, align 1, !tbaa !55
  %214 = getelementptr inbounds %struct.Pixel, ptr %210, i64 %199, i32 1
  %215 = load i8, ptr %214, align 1, !tbaa !58
  %216 = load i8, ptr %211, align 1, !tbaa !59
  %217 = insertelement <2 x i8> poison, i8 %213, i64 0
  %218 = insertelement <2 x i8> %217, i8 %202, i64 1
  %219 = uitofp <2 x i8> %218 to <2 x double>
  %220 = insertelement <2 x i8> poison, i8 %215, i64 0
  %221 = insertelement <2 x i8> %220, i8 %204, i64 1
  %222 = uitofp <2 x i8> %221 to <2 x double>
  %223 = fmul <2 x double> %222, <double 7.152000e-01, double 7.152000e-01>
  %224 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %219, <2 x double> <double 2.126000e-01, double 2.126000e-01>, <2 x double> %223)
  %225 = insertelement <2 x i8> poison, i8 %216, i64 0
  %226 = insertelement <2 x i8> %225, i8 %205, i64 1
  %227 = uitofp <2 x i8> %226 to <2 x double>
  %228 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %227, <2 x double> <double 7.220000e-02, double 7.220000e-02>, <2 x double> %224)
  %229 = extractelement <2 x double> %228, i64 1
  store double %229, ptr %207, align 8, !tbaa !63
  br label %314

230:                                              ; preds = %193
  %231 = load ptr, ptr %53, align 8, !tbaa !46
  %232 = getelementptr inbounds ptr, ptr %231, i64 %147
  %233 = load ptr, ptr %232, align 8, !tbaa !6
  %234 = add nuw i64 %172, %128
  %235 = and i64 %234, 4294967295
  %236 = getelementptr inbounds %struct.Pixel, ptr %233, i64 %235
  %237 = getelementptr inbounds %struct.Pixel, ptr %233, i64 %235, i32 2
  %238 = load i8, ptr %237, align 1, !tbaa !55
  %239 = getelementptr inbounds %struct.Pixel, ptr %233, i64 %235, i32 1
  %240 = load i8, ptr %239, align 1, !tbaa !58
  %241 = load i8, ptr %236, align 1, !tbaa !59
  %242 = zext i32 %173 to i64
  %243 = getelementptr inbounds double, ptr %38, i64 %242
  %244 = load ptr, ptr %54, align 8, !tbaa !46
  %245 = getelementptr inbounds ptr, ptr %244, i64 %147
  %246 = load ptr, ptr %245, align 8, !tbaa !6
  %247 = getelementptr inbounds %struct.Pixel, ptr %246, i64 %235
  %248 = getelementptr inbounds %struct.Pixel, ptr %246, i64 %235, i32 2
  %249 = load i8, ptr %248, align 1, !tbaa !55
  %250 = getelementptr inbounds %struct.Pixel, ptr %246, i64 %235, i32 1
  %251 = load i8, ptr %250, align 1, !tbaa !58
  %252 = load i8, ptr %247, align 1, !tbaa !59
  %253 = insertelement <2 x i8> poison, i8 %249, i64 0
  %254 = insertelement <2 x i8> %253, i8 %238, i64 1
  %255 = uitofp <2 x i8> %254 to <2 x double>
  %256 = insertelement <2 x i8> poison, i8 %251, i64 0
  %257 = insertelement <2 x i8> %256, i8 %240, i64 1
  %258 = uitofp <2 x i8> %257 to <2 x double>
  %259 = fmul <2 x double> %258, <double 5.870000e-01, double 5.870000e-01>
  %260 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %255, <2 x double> <double 2.990000e-01, double 2.990000e-01>, <2 x double> %259)
  %261 = insertelement <2 x i8> poison, i8 %252, i64 0
  %262 = insertelement <2 x i8> %261, i8 %241, i64 1
  %263 = uitofp <2 x i8> %262 to <2 x double>
  %264 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %263, <2 x double> <double 1.140000e-01, double 1.140000e-01>, <2 x double> %260)
  %265 = extractelement <2 x double> %264, i64 1
  store double %265, ptr %243, align 8, !tbaa !63
  br label %314

266:                                              ; preds = %193
  %267 = load ptr, ptr %53, align 8, !tbaa !46
  %268 = getelementptr inbounds ptr, ptr %267, i64 %147
  %269 = load ptr, ptr %268, align 8, !tbaa !6
  %270 = add nuw i64 %172, %128
  %271 = and i64 %270, 4294967295
  %272 = getelementptr inbounds %struct.Pixel, ptr %269, i64 %271
  %273 = getelementptr inbounds %struct.Pixel, ptr %269, i64 %271, i32 2
  %274 = load i8, ptr %273, align 1, !tbaa !55
  %275 = uitofp i8 %274 to double
  %276 = fmul double %275, 2.990000e-01
  %277 = getelementptr inbounds %struct.Pixel, ptr %269, i64 %271, i32 1
  %278 = load i8, ptr %277, align 1, !tbaa !58
  %279 = uitofp i8 %278 to double
  %280 = fmul double %279, 5.870000e-01
  %281 = fmul double %280, %279
  %282 = tail call double @llvm.fmuladd.f64(double %276, double %275, double %281)
  %283 = load i8, ptr %272, align 1, !tbaa !59
  %284 = uitofp i8 %283 to double
  %285 = fmul double %284, 1.140000e-01
  %286 = tail call double @llvm.fmuladd.f64(double %285, double %284, double %282)
  %287 = tail call double @sqrt(double noundef %286) #22
  %288 = zext i32 %173 to i64
  %289 = getelementptr inbounds double, ptr %38, i64 %288
  store double %287, ptr %289, align 8, !tbaa !63
  %290 = load ptr, ptr %54, align 8, !tbaa !46
  %291 = getelementptr inbounds ptr, ptr %290, i64 %147
  %292 = load ptr, ptr %291, align 8, !tbaa !6
  %293 = getelementptr inbounds %struct.Pixel, ptr %292, i64 %271
  %294 = getelementptr inbounds %struct.Pixel, ptr %292, i64 %271, i32 2
  %295 = load i8, ptr %294, align 1, !tbaa !55
  %296 = uitofp i8 %295 to double
  %297 = fmul double %296, 2.990000e-01
  %298 = getelementptr inbounds %struct.Pixel, ptr %292, i64 %271, i32 1
  %299 = load i8, ptr %298, align 1, !tbaa !58
  %300 = uitofp i8 %299 to double
  %301 = fmul double %300, 5.870000e-01
  %302 = fmul double %301, %300
  %303 = tail call double @llvm.fmuladd.f64(double %297, double %296, double %302)
  %304 = load i8, ptr %293, align 1, !tbaa !59
  %305 = uitofp i8 %304 to double
  %306 = fmul double %305, 1.140000e-01
  %307 = tail call double @llvm.fmuladd.f64(double %306, double %305, double %303)
  %308 = tail call double @sqrt(double noundef %307) #22
  %309 = insertelement <2 x double> poison, double %308, i64 0
  %310 = insertelement <2 x double> %309, double %287, i64 1
  br label %314

311:                                              ; preds = %193
  %312 = load ptr, ptr @stderr, align 8, !tbaa !6
  %313 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef nonnull @.str.45, i32 noundef %52) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

314:                                              ; preds = %194, %266, %230, %174
  %315 = phi i64 [ %206, %194 ], [ %288, %266 ], [ %242, %230 ], [ %182, %174 ]
  %316 = phi <2 x double> [ %228, %194 ], [ %310, %266 ], [ %264, %230 ], [ %191, %174 ]
  %317 = getelementptr inbounds double, ptr %44, i64 %315
  %318 = extractelement <2 x double> %316, i64 0
  store double %318, ptr %317, align 8, !tbaa !63
  br i1 %55, label %328, label %319

319:                                              ; preds = %314
  %320 = extractelement <2 x double> %316, i64 1
  %321 = fptoui double %320 to i8
  %322 = load ptr, ptr %56, align 8, !tbaa !46
  %323 = getelementptr inbounds ptr, ptr %322, i64 %147
  %324 = load ptr, ptr %323, align 8, !tbaa !6
  %325 = add nuw i64 %172, %128
  %326 = and i64 %325, 4294967295
  %327 = getelementptr inbounds %struct.Pixel, ptr %324, i64 %326, i32 2
  store i8 %321, ptr %327, align 1, !tbaa !55
  br label %328

328:                                              ; preds = %319, %314
  br i1 %57, label %337, label %329

329:                                              ; preds = %328
  %330 = fptoui double %318 to i8
  %331 = load ptr, ptr %58, align 8, !tbaa !46
  %332 = getelementptr inbounds ptr, ptr %331, i64 %147
  %333 = load ptr, ptr %332, align 8, !tbaa !6
  %334 = add nuw i64 %172, %128
  %335 = and i64 %334, 4294967295
  %336 = getelementptr inbounds %struct.Pixel, ptr %333, i64 %335, i32 2
  store i8 %330, ptr %336, align 1, !tbaa !55
  br label %337

337:                                              ; preds = %329, %328
  br i1 %87, label %389, label %338

338:                                              ; preds = %337
  %339 = load ptr, ptr @stderr, align 8, !tbaa !6
  %340 = trunc i64 %172 to i32
  %341 = add i32 %340, %140
  %342 = load ptr, ptr %53, align 8, !tbaa !46
  %343 = getelementptr inbounds ptr, ptr %342, i64 %147
  %344 = load ptr, ptr %343, align 8, !tbaa !6
  %345 = zext i32 %341 to i64
  %346 = getelementptr inbounds %struct.Pixel, ptr %344, i64 %345
  %347 = getelementptr inbounds %struct.Pixel, ptr %344, i64 %345, i32 2
  %348 = load i8, ptr %347, align 1, !tbaa !55
  %349 = zext i8 %348 to i32
  %350 = getelementptr inbounds %struct.Pixel, ptr %344, i64 %345, i32 1
  %351 = load i8, ptr %350, align 1, !tbaa !58
  %352 = zext i8 %351 to i32
  %353 = load i8, ptr %346, align 1, !tbaa !59
  %354 = zext i8 %353 to i32
  br i1 %55, label %362, label %355

355:                                              ; preds = %338
  %356 = load ptr, ptr %56, align 8, !tbaa !46
  %357 = getelementptr inbounds ptr, ptr %356, i64 %147
  %358 = load ptr, ptr %357, align 8, !tbaa !6
  %359 = getelementptr inbounds %struct.Pixel, ptr %358, i64 %345, i32 2
  %360 = load i8, ptr %359, align 1, !tbaa !55
  %361 = zext i8 %360 to i32
  br label %362

362:                                              ; preds = %338, %355
  %363 = phi i32 [ %361, %355 ], [ 0, %338 ]
  %364 = extractelement <2 x double> %316, i64 1
  %365 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef nonnull @.str.46, i32 noundef %146, i32 noundef %341, i32 noundef %349, i32 noundef %352, i32 noundef %354, double noundef %364, i32 noundef %363) #21
  %366 = load ptr, ptr @stderr, align 8, !tbaa !6
  %367 = load ptr, ptr %54, align 8, !tbaa !46
  %368 = getelementptr inbounds ptr, ptr %367, i64 %147
  %369 = load ptr, ptr %368, align 8, !tbaa !6
  %370 = getelementptr inbounds %struct.Pixel, ptr %369, i64 %345
  %371 = getelementptr inbounds %struct.Pixel, ptr %369, i64 %345, i32 2
  %372 = load i8, ptr %371, align 1, !tbaa !55
  %373 = zext i8 %372 to i32
  %374 = getelementptr inbounds %struct.Pixel, ptr %369, i64 %345, i32 1
  %375 = load i8, ptr %374, align 1, !tbaa !58
  %376 = zext i8 %375 to i32
  %377 = load i8, ptr %370, align 1, !tbaa !59
  %378 = zext i8 %377 to i32
  br i1 %57, label %386, label %379

379:                                              ; preds = %362
  %380 = load ptr, ptr %58, align 8, !tbaa !46
  %381 = getelementptr inbounds ptr, ptr %380, i64 %147
  %382 = load ptr, ptr %381, align 8, !tbaa !6
  %383 = getelementptr inbounds %struct.Pixel, ptr %382, i64 %345, i32 2
  %384 = load i8, ptr %383, align 1, !tbaa !55
  %385 = zext i8 %384 to i32
  br label %386

386:                                              ; preds = %362, %379
  %387 = phi i32 [ %385, %379 ], [ 0, %362 ]
  %388 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %366, ptr noundef nonnull @.str.47, i32 noundef %373, i32 noundef %376, i32 noundef %378, double noundef %318, i32 noundef %387) #21
  br label %389

389:                                              ; preds = %386, %337
  %390 = add i32 %173, 1
  %391 = add nuw nsw i64 %172, 1
  %392 = icmp ult i64 %391, %139
  br i1 %392, label %171, label %167, !llvm.loop !64

393:                                              ; preds = %148
  %394 = trunc i64 %128 to i32
  %395 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %394, i32 noundef %107, double noundef %165) #20
  br i1 %85, label %399, label %396

396:                                              ; preds = %393
  %397 = load ptr, ptr @stdout, align 8, !tbaa !6
  %398 = tail call i32 @fflush(ptr noundef %397) #20
  br label %399

399:                                              ; preds = %393, %396, %148
  %400 = fcmp olt double %165, %130
  %401 = select i1 %400, double %165, double %130
  br i1 %63, label %409, label %402

402:                                              ; preds = %399
  %403 = tail call double @llvm.fmuladd.f64(double %165, double %66, double %68)
  %404 = fptosi double %403 to i32
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, ptr %70, i64 %405
  %407 = load i32, ptr %406, align 4, !tbaa !27
  %408 = add i32 %407, 1
  store i32 %408, ptr %406, align 4, !tbaa !27
  br label %409

409:                                              ; preds = %402, %399
  %410 = fcmp olt double %165, %72
  %411 = select i1 %73, i1 %410, i1 false
  %412 = zext i1 %411 to i32
  %413 = add i32 %131, %412
  br i1 %108, label %454, label %414

414:                                              ; preds = %409
  %415 = icmp eq i32 %136, 0
  %416 = fcmp ult double %165, 1.000000e+00
  %417 = fadd double %165, 1.000000e+00
  %418 = fmul double %417, 5.000000e-01
  %419 = zext i32 %136 to i64
  br label %420

420:                                              ; preds = %414, %431
  %421 = phi i64 [ 0, %414 ], [ %432, %431 ]
  br i1 %415, label %431, label %422

422:                                              ; preds = %420
  %423 = load ptr, ptr %56, align 8, !tbaa !46
  %424 = add nuw i64 %421, %92
  %425 = and i64 %424, 4294967295
  %426 = getelementptr inbounds ptr, ptr %423, i64 %425
  %427 = load ptr, ptr %426, align 8, !tbaa !6
  %428 = load ptr, ptr %75, align 8, !tbaa !46
  %429 = getelementptr inbounds ptr, ptr %428, i64 %425
  %430 = load ptr, ptr %429, align 8, !tbaa !6
  br label %434

431:                                              ; preds = %448, %420
  %432 = add nuw nsw i64 %421, 1
  %433 = icmp ult i64 %432, %104
  br i1 %433, label %420, label %454, !llvm.loop !65

434:                                              ; preds = %422, %448
  %435 = phi i64 [ 0, %422 ], [ %452, %448 ]
  %436 = add nuw i64 %435, %128
  %437 = and i64 %436, 4294967295
  %438 = getelementptr inbounds %struct.Pixel, ptr %427, i64 %437, i32 2
  %439 = load i8, ptr %438, align 1, !tbaa !55
  %440 = getelementptr inbounds %struct.Pixel, ptr %430, i64 %437, i32 2
  store i8 %439, ptr %440, align 1, !tbaa !55
  br i1 %416, label %441, label %448

441:                                              ; preds = %434
  %442 = tail call i8 @llvm.umax.i8(i8 %439, i8 16)
  %443 = zext i8 %442 to i32
  %444 = add nsw i32 %443, -16
  %445 = sitofp i32 %444 to double
  %446 = fmul double %418, %445
  %447 = fptoui double %446 to i8
  br label %448

448:                                              ; preds = %434, %441
  %449 = phi i8 [ %447, %441 ], [ %439, %434 ]
  %450 = getelementptr inbounds %struct.Pixel, ptr %430, i64 %437, i32 1
  store i8 %449, ptr %450, align 1
  %451 = getelementptr inbounds %struct.Pixel, ptr %430, i64 %437
  store i8 %449, ptr %451, align 1
  %452 = add nuw nsw i64 %435, 1
  %453 = icmp ult i64 %452, %419
  br i1 %453, label %434, label %431, !llvm.loop !66

454:                                              ; preds = %431, %409
  br i1 %84, label %474, label %455

455:                                              ; preds = %454
  %456 = load ptr, ptr @stderr, align 8, !tbaa !6
  %457 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %456, ptr noundef nonnull @.str.49, double noundef %150, double noundef %151) #21
  %458 = load ptr, ptr @stderr, align 8, !tbaa !6
  %459 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %458, ptr noundef nonnull @.str.50, double noundef %152, double noundef %153) #21
  %460 = load ptr, ptr @stderr, align 8, !tbaa !6
  %461 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %460, ptr noundef nonnull @.str.51, double noundef %154) #21
  %462 = load ptr, ptr @stderr, align 8, !tbaa !6
  br i1 %74, label %470, label %463

463:                                              ; preds = %455
  %464 = load ptr, ptr %75, align 8, !tbaa !46
  %465 = getelementptr inbounds ptr, ptr %464, i64 %92
  %466 = load ptr, ptr %465, align 8, !tbaa !6
  %467 = getelementptr inbounds %struct.Pixel, ptr %466, i64 %128, i32 2
  %468 = load i8, ptr %467, align 1, !tbaa !55
  %469 = zext i8 %468 to i32
  br label %470

470:                                              ; preds = %455, %463
  %471 = phi i32 [ %469, %463 ], [ 0, %455 ]
  %472 = trunc i64 %128 to i32
  %473 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %462, ptr noundef nonnull @.str.52, i32 noundef %472, i32 noundef %109, double noundef %165, i32 noundef %471) #21
  br label %474

474:                                              ; preds = %470, %454
  %475 = icmp ult i64 %132, %79
  br i1 %475, label %127, label %121, !llvm.loop !67

476:                                              ; preds = %110
  %477 = icmp eq i32 %117, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %476
  %479 = uitofp i32 %112 to double
  %480 = fmul double %119, %479
  br label %486

481:                                              ; preds = %476
  %482 = uitofp i32 %117 to double
  %483 = uitofp i32 %112 to double
  %484 = fmul double %119, %483
  %485 = fcmp olt double %484, %482
  br i1 %485, label %486, label %489

486:                                              ; preds = %478, %481
  %487 = phi double [ %480, %478 ], [ %484, %481 ]
  %488 = fptoui double %487 to i32
  br label %489

489:                                              ; preds = %481, %486, %110
  %490 = phi i32 [ %488, %486 ], [ %117, %481 ], [ %117, %110 ]
  %491 = icmp ugt i32 %111, %490
  %492 = load ptr, ptr %0, align 8, !tbaa !17
  br i1 %491, label %493, label %497

493:                                              ; preds = %489
  %494 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %492) #20
  %495 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.105)
  %496 = load ptr, ptr @stdout, align 8, !tbaa !6
  br label %513

497:                                              ; preds = %489
  %498 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.55, ptr noundef %492) #21
  %499 = load ptr, ptr @stderr, align 8, !tbaa !6
  %500 = icmp eq ptr %115, %499
  br i1 %500, label %513, label %501

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %503 = load i16, ptr %502, align 8
  %504 = and i16 %503, 448
  %505 = icmp eq i16 %504, 0
  br i1 %505, label %510, label %506

506:                                              ; preds = %501
  %507 = load ptr, ptr @stdout, align 8, !tbaa !6
  %508 = tail call i32 @fflush(ptr noundef %507) #20
  %509 = load ptr, ptr @stderr, align 8, !tbaa !6
  br label %510

510:                                              ; preds = %506, %501
  %511 = phi ptr [ %509, %506 ], [ %499, %501 ]
  %512 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %511, ptr noundef nonnull @.str.55, ptr noundef %492) #21
  br label %513

513:                                              ; preds = %497, %510, %493
  %514 = phi ptr [ %496, %493 ], [ %115, %510 ], [ %115, %497 ]
  %515 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 12
  %516 = load double, ptr %515, align 8, !tbaa !19
  %517 = fcmp ogt double %516, 0.000000e+00
  br i1 %517, label %518, label %534

518:                                              ; preds = %513
  %519 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %514, ptr noundef nonnull @.str.56, i32 noundef %111, i32 noundef %490, i32 noundef %112) #20
  %520 = load ptr, ptr @stderr, align 8, !tbaa !6
  %521 = icmp eq ptr %514, %520
  br i1 %521, label %534, label %522

522:                                              ; preds = %518
  %523 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %524 = load i16, ptr %523, align 8
  %525 = and i16 %524, 448
  %526 = icmp eq i16 %525, 0
  br i1 %526, label %531, label %527

527:                                              ; preds = %522
  %528 = load ptr, ptr @stdout, align 8, !tbaa !6
  %529 = tail call i32 @fflush(ptr noundef %528) #20
  %530 = load ptr, ptr @stderr, align 8, !tbaa !6
  br label %531

531:                                              ; preds = %527, %522
  %532 = phi ptr [ %530, %527 ], [ %520, %522 ]
  %533 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %532, ptr noundef nonnull @.str.56, i32 noundef %111, i32 noundef %490, i32 noundef %112) #21
  br label %534

534:                                              ; preds = %518, %531, %513
  %535 = icmp eq i32 %112, 0
  br i1 %535, label %554, label %536

536:                                              ; preds = %534
  %537 = uitofp i32 %112 to double
  %538 = fdiv double %114, %537
  %539 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %514, ptr noundef nonnull @.str.57, double noundef %538) #20
  %540 = load ptr, ptr @stderr, align 8, !tbaa !6
  %541 = icmp eq ptr %514, %540
  br i1 %541, label %554, label %542

542:                                              ; preds = %536
  %543 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %544 = load i16, ptr %543, align 8
  %545 = and i16 %544, 448
  %546 = icmp eq i16 %545, 0
  br i1 %546, label %551, label %547

547:                                              ; preds = %542
  %548 = load ptr, ptr @stdout, align 8, !tbaa !6
  %549 = tail call i32 @fflush(ptr noundef %548) #20
  %550 = load ptr, ptr @stderr, align 8, !tbaa !6
  br label %551

551:                                              ; preds = %547, %542
  %552 = phi ptr [ %550, %547 ], [ %540, %542 ]
  %553 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %552, ptr noundef nonnull @.str.57, double noundef %538) #21
  br label %554

554:                                              ; preds = %536, %551, %534
  %555 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %514, ptr noundef nonnull @.str.58, double noundef %113) #20
  %556 = load ptr, ptr @stderr, align 8, !tbaa !6
  %557 = icmp eq ptr %514, %556
  %558 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %559 = load i16, ptr %558, align 8
  br i1 %557, label %570, label %560

560:                                              ; preds = %554
  %561 = and i16 %559, 448
  %562 = icmp eq i16 %561, 0
  br i1 %562, label %567, label %563

563:                                              ; preds = %560
  %564 = load ptr, ptr @stdout, align 8, !tbaa !6
  %565 = tail call i32 @fflush(ptr noundef %564) #20
  %566 = load ptr, ptr @stderr, align 8, !tbaa !6
  br label %567

567:                                              ; preds = %563, %560
  %568 = phi ptr [ %566, %563 ], [ %556, %560 ]
  %569 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %568, ptr noundef nonnull @.str.58, double noundef %113) #21
  br label %570

570:                                              ; preds = %554, %567
  %571 = and i16 %559, 16
  %572 = icmp eq i16 %571, 0
  br i1 %572, label %580, label %573

573:                                              ; preds = %570
  br i1 %535, label %578, label %574

574:                                              ; preds = %573
  %575 = uitofp i32 %112 to double
  %576 = fdiv double %114, %575
  %577 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef %492, double noundef %576) #20
  br label %580

578:                                              ; preds = %573
  %579 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %492) #20
  br label %580

580:                                              ; preds = %574, %578, %570
  %581 = and i16 %559, 448
  %582 = icmp eq i16 %581, 0
  br i1 %582, label %583, label %587

583:                                              ; preds = %580
  %584 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %514, ptr noundef nonnull @.str.61, i32 noundef 10) #20
  %585 = load ptr, ptr @stderr, align 8, !tbaa !6
  %586 = icmp eq ptr %514, %585
  br i1 %586, label %600, label %597

587:                                              ; preds = %580
  %588 = load ptr, ptr @stdout, align 8, !tbaa !6
  %589 = tail call i32 @fflush(ptr noundef %588) #20
  %590 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %514, ptr noundef nonnull @.str.61, i32 noundef 10) #20
  %591 = load ptr, ptr @stderr, align 8, !tbaa !6
  %592 = icmp eq ptr %514, %591
  br i1 %592, label %600, label %593

593:                                              ; preds = %587
  %594 = load ptr, ptr @stdout, align 8, !tbaa !6
  %595 = tail call i32 @fflush(ptr noundef %594) #20
  %596 = load ptr, ptr @stderr, align 8, !tbaa !6
  br label %597

597:                                              ; preds = %583, %593
  %598 = phi ptr [ %585, %583 ], [ %596, %593 ]
  %599 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %598, ptr noundef nonnull @.str.61, i32 noundef 10) #21
  br label %600

600:                                              ; preds = %587, %597, %583
  %601 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 16
  %602 = load ptr, ptr %601, align 8, !tbaa !26
  %603 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 15
  %604 = load i32, ptr %603, align 8, !tbaa !10
  %605 = zext i32 %604 to i64
  %606 = getelementptr inbounds i32, ptr %602, i64 %605
  %607 = load i32, ptr %606, align 4, !tbaa !27
  %608 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %514, ptr noundef nonnull @.str.62, double noundef 1.000000e+00, i32 noundef %607) #20
  %609 = load ptr, ptr @stderr, align 8, !tbaa !6
  %610 = icmp eq ptr %514, %609
  br i1 %610, label %620, label %611

611:                                              ; preds = %600
  br i1 %582, label %616, label %612

612:                                              ; preds = %611
  %613 = load ptr, ptr @stdout, align 8, !tbaa !6
  %614 = tail call i32 @fflush(ptr noundef %613) #20
  %615 = load ptr, ptr @stderr, align 8, !tbaa !6
  br label %616

616:                                              ; preds = %612, %611
  %617 = phi ptr [ %615, %612 ], [ %609, %611 ]
  %618 = load i32, ptr %606, align 4, !tbaa !27
  %619 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %617, ptr noundef nonnull @.str.62, double noundef 1.000000e+00, i32 noundef %618) #21
  br label %620

620:                                              ; preds = %616, %600
  %621 = add i32 %604, -1
  %622 = icmp sgt i32 %621, -1
  br i1 %622, label %623, label %657

623:                                              ; preds = %620
  %624 = lshr i32 %604, 1
  %625 = uitofp i32 %624 to float
  %626 = uitofp i32 %604 to float
  %627 = zext nneg i32 %621 to i64
  br label %628

628:                                              ; preds = %623, %654
  %629 = phi i64 [ %627, %623 ], [ %655, %654 ]
  %630 = trunc i64 %629 to i32
  %631 = sitofp i32 %630 to float
  %632 = fsub float %631, %625
  %633 = fdiv float %632, %626
  %634 = fmul float %633, 2.000000e+00
  %635 = fadd float %632, 1.000000e+00
  %636 = fdiv float %635, %626
  %637 = fmul float %636, 2.000000e+00
  %638 = fpext float %634 to double
  %639 = fpext float %637 to double
  %640 = getelementptr inbounds i32, ptr %602, i64 %629
  %641 = load i32, ptr %640, align 4, !tbaa !27
  %642 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %514, ptr noundef nonnull @.str.63, double noundef %638, double noundef %639, i32 noundef %641) #20
  %643 = load ptr, ptr @stderr, align 8, !tbaa !6
  %644 = icmp eq ptr %514, %643
  br i1 %644, label %654, label %645

645:                                              ; preds = %628
  br i1 %582, label %650, label %646

646:                                              ; preds = %645
  %647 = load ptr, ptr @stdout, align 8, !tbaa !6
  %648 = tail call i32 @fflush(ptr noundef %647) #20
  %649 = load ptr, ptr @stderr, align 8, !tbaa !6
  br label %650

650:                                              ; preds = %646, %645
  %651 = phi ptr [ %649, %646 ], [ %643, %645 ]
  %652 = load i32, ptr %640, align 4, !tbaa !27
  %653 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %651, ptr noundef nonnull @.str.63, double noundef %638, double noundef %639, i32 noundef %652) #21
  br label %654

654:                                              ; preds = %650, %628
  %655 = add nsw i64 %629, -1
  %656 = icmp sgt i64 %629, 0
  br i1 %656, label %628, label %657, !llvm.loop !68

657:                                              ; preds = %654, %620, %24
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local double @mean(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 {
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
  %14 = load double, ptr %13, align 8, !tbaa !63
  %15 = fadd double %12, %14
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %5
  br i1 %17, label %6, label %10, !llvm.loop !69
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local double @variance(ptr nocapture noundef readonly %0, double noundef %1, i32 noundef %2) local_unnamed_addr #13 {
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
  %16 = load double, ptr %15, align 8, !tbaa !63
  %17 = fsub double %16, %1
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %17, double %14)
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %6
  br i1 %20, label %7, label %12, !llvm.loop !70
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local double @covariance(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #13 {
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
  %18 = load double, ptr %17, align 8, !tbaa !63
  %19 = fsub double %18, %2
  %20 = getelementptr inbounds double, ptr %1, i64 %15
  %21 = load double, ptr %20, align 8, !tbaa !63
  %22 = fsub double %21, %3
  %23 = tail call double @llvm.fmuladd.f64(double %19, double %22, double %16)
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %9, label %14, !llvm.loop !71
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @read_yuv_file(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly byval(%struct.params) align 8 %2) local_unnamed_addr #2 {
  store i8 0, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  store i8 0, ptr %4, align 1, !tbaa !33
  %5 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  store i32 2, ptr %5, align 4, !tbaa !36
  %6 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  store i16 0, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  store i16 0, ptr %7, align 2, !tbaa !43
  %8 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  store i8 0, ptr %8, align 4, !tbaa !51
  %9 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  store i16 0, ptr %9, align 2, !tbaa !52
  %10 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  store i16 0, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.params, ptr %2, i64 0, i32 17
  %12 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  %14 = load <2 x i32>, ptr %11, align 8, !tbaa !27
  %15 = trunc <2 x i32> %14 to <2 x i16>
  store <2 x i16> %15, ptr %12, align 2, !tbaa !42
  %16 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  store i8 24, ptr %16, align 2, !tbaa !37
  %17 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  store i8 0, ptr %17, align 1, !tbaa !38
  %18 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 15
  store i8 0, ptr %18, align 8, !tbaa !39
  %19 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.69) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load ptr, ptr @stderr, align 8, !tbaa !6
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.70, ptr noundef %0) #21
  tail call void @exit(i32 noundef -1) #25
  unreachable

24:                                               ; preds = %3
  %25 = load i16, ptr %13, align 4, !tbaa !45
  %26 = zext i16 %25 to i64
  %27 = shl nuw nsw i64 %26, 3
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #26
  %29 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 14
  store ptr %28, ptr %29, align 8, !tbaa !46
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load ptr, ptr @stderr, align 8, !tbaa !6
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.38, i64 noundef %27, ptr noundef nonnull @.str.39, i32 noundef 800) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

34:                                               ; preds = %24
  %35 = tail call noalias ptr @malloc(i64 noundef %27) #26
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load ptr, ptr @stderr, align 8, !tbaa !6
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.38, i64 noundef %27, ptr noundef nonnull @.str.39, i32 noundef 801) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

40:                                               ; preds = %34
  %41 = load i16, ptr %12, align 2, !tbaa !47
  %42 = zext i16 %41 to i64
  %43 = tail call noalias ptr @malloc(i64 noundef %42) #26
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = icmp eq i16 %25, 0
  br i1 %46, label %262, label %47

47:                                               ; preds = %45
  %48 = shl nuw nsw i64 %42, 2
  %49 = mul nuw nsw i64 %42, 3
  %50 = zext i16 %25 to i64
  br label %58

51:                                               ; preds = %40
  %52 = load ptr, ptr @stderr, align 8, !tbaa !6
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.38, i64 noundef %42, ptr noundef nonnull @.str.39, i32 noundef 802) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

54:                                               ; preds = %70
  %55 = add nuw nsw i64 %60, 1
  %56 = icmp eq i64 %55, %50
  br i1 %56, label %57, label %58, !llvm.loop !72

57:                                               ; preds = %54
  br i1 %46, label %262, label %79

58:                                               ; preds = %47, %54
  %59 = phi ptr [ %28, %47 ], [ %63, %54 ]
  %60 = phi i64 [ 0, %47 ], [ %55, %54 ]
  %61 = tail call noalias ptr @malloc(i64 noundef %48) #26
  %62 = getelementptr inbounds ptr, ptr %59, i64 %60
  store ptr %61, ptr %62, align 8, !tbaa !6
  %63 = load ptr, ptr %29, align 8, !tbaa !46
  %64 = getelementptr inbounds ptr, ptr %63, i64 %60
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load ptr, ptr @stderr, align 8, !tbaa !6
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.38, i64 noundef %48, ptr noundef nonnull @.str.39, i32 noundef 804) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

70:                                               ; preds = %58
  %71 = tail call noalias ptr @malloc(i64 noundef %49) #26
  %72 = getelementptr inbounds ptr, ptr %35, i64 %60
  store ptr %71, ptr %72, align 8, !tbaa !6
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %54

74:                                               ; preds = %70
  %75 = load ptr, ptr @stderr, align 8, !tbaa !6
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.38, i64 noundef %49, ptr noundef nonnull @.str.39, i32 noundef 805) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

77:                                               ; preds = %104
  %78 = icmp eq i16 %106, 0
  br i1 %78, label %262, label %111

79:                                               ; preds = %57, %104
  %80 = phi i16 [ %85, %104 ], [ %41, %57 ]
  %81 = phi i64 [ %105, %104 ], [ 0, %57 ]
  %82 = zext i16 %80 to i64
  %83 = tail call i64 @fread(ptr noundef nonnull %43, i64 noundef 1, i64 noundef %82, ptr noundef nonnull %19) #20
  %84 = trunc i64 %83 to i32
  %85 = load i16, ptr %12, align 2, !tbaa !47
  %86 = zext i16 %85 to i32
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %79
  %89 = icmp eq i16 %85, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds ptr, ptr %35, i64 %81
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = zext i16 %85 to i64
  br label %97

94:                                               ; preds = %79
  %95 = load ptr, ptr @stderr, align 8, !tbaa !6
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.71, ptr noundef %0, i32 noundef %84, i32 noundef %86) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

97:                                               ; preds = %90, %97
  %98 = phi i64 [ 0, %90 ], [ %102, %97 ]
  %99 = getelementptr inbounds i8, ptr %43, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !23
  %101 = getelementptr inbounds %struct.YUV, ptr %92, i64 %98
  store i8 %100, ptr %101, align 1, !tbaa !73
  %102 = add nuw nsw i64 %98, 1
  %103 = icmp eq i64 %102, %93
  br i1 %103, label %104, label %97, !llvm.loop !75

104:                                              ; preds = %97, %88
  %105 = add nuw nsw i64 %81, 1
  %106 = load i16, ptr %13, align 4, !tbaa !45
  %107 = zext i16 %106 to i64
  %108 = icmp ult i64 %105, %107
  br i1 %108, label %79, label %77, !llvm.loop !76

109:                                              ; preds = %150
  %110 = icmp eq i16 %152, 0
  br i1 %110, label %262, label %161

111:                                              ; preds = %77, %150
  %112 = phi i16 [ %129, %150 ], [ %85, %77 ]
  %113 = phi i64 [ %151, %150 ], [ 0, %77 ]
  %114 = and i64 %113, 1
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = lshr i16 %112, 1
  %118 = zext nneg i16 %117 to i64
  %119 = tail call i64 @fread(ptr noundef nonnull %43, i64 noundef 1, i64 noundef %118, ptr noundef nonnull %19) #20
  %120 = trunc i64 %119 to i32
  %121 = load i16, ptr %12, align 2, !tbaa !47
  %122 = lshr i16 %121, 1
  %123 = zext nneg i16 %122 to i32
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load ptr, ptr @stderr, align 8, !tbaa !6
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.72, ptr noundef %0, i32 noundef %120, i32 noundef %123) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

128:                                              ; preds = %116, %111
  %129 = phi i16 [ %121, %116 ], [ %112, %111 ]
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %150, label %131

131:                                              ; preds = %128
  %132 = zext i16 %129 to i32
  %133 = getelementptr inbounds ptr, ptr %35, i64 %113
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = add nsw i32 %132, -1
  %136 = lshr i32 %135, 1
  %137 = add nuw nsw i32 %136, 1
  %138 = zext nneg i32 %137 to i64
  br label %139

139:                                              ; preds = %131, %139
  %140 = phi i64 [ 0, %131 ], [ %147, %139 ]
  %141 = phi i64 [ 0, %131 ], [ %148, %139 ]
  %142 = getelementptr inbounds i8, ptr %43, i64 %140
  %143 = load i8, ptr %142, align 1, !tbaa !23
  %144 = getelementptr inbounds %struct.YUV, ptr %134, i64 %141, i32 1
  store i8 %143, ptr %144, align 1, !tbaa !77
  %145 = or disjoint i64 %141, 1
  %146 = getelementptr inbounds %struct.YUV, ptr %134, i64 %145, i32 1
  store i8 %143, ptr %146, align 1, !tbaa !77
  %147 = add nuw nsw i64 %140, 1
  %148 = add nuw nsw i64 %141, 2
  %149 = icmp eq i64 %147, %138
  br i1 %149, label %150, label %139, !llvm.loop !78

150:                                              ; preds = %139, %128
  %151 = add nuw nsw i64 %113, 1
  %152 = load i16, ptr %13, align 4, !tbaa !45
  %153 = zext i16 %152 to i64
  %154 = icmp ult i64 %151, %153
  br i1 %154, label %111, label %109, !llvm.loop !79

155:                                              ; preds = %200
  %156 = icmp eq i16 %202, 0
  br i1 %156, label %262, label %157

157:                                              ; preds = %155
  %158 = icmp eq i16 %179, 0
  %159 = zext i16 %202 to i64
  %160 = zext i16 %179 to i64
  br label %205

161:                                              ; preds = %109, %200
  %162 = phi i16 [ %179, %200 ], [ %129, %109 ]
  %163 = phi i64 [ %201, %200 ], [ 0, %109 ]
  %164 = and i64 %163, 1
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %161
  %167 = lshr i16 %162, 1
  %168 = zext nneg i16 %167 to i64
  %169 = tail call i64 @fread(ptr noundef nonnull %43, i64 noundef 1, i64 noundef %168, ptr noundef nonnull %19) #20
  %170 = trunc i64 %169 to i32
  %171 = load i16, ptr %12, align 2, !tbaa !47
  %172 = lshr i16 %171, 1
  %173 = zext nneg i16 %172 to i32
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %166
  %176 = load ptr, ptr @stderr, align 8, !tbaa !6
  %177 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef nonnull @.str.73, ptr noundef %0, i32 noundef %170, i32 noundef %173) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

178:                                              ; preds = %166, %161
  %179 = phi i16 [ %171, %166 ], [ %162, %161 ]
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %200, label %181

181:                                              ; preds = %178
  %182 = zext i16 %179 to i32
  %183 = getelementptr inbounds ptr, ptr %35, i64 %163
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = add nsw i32 %182, -1
  %186 = lshr i32 %185, 1
  %187 = add nuw nsw i32 %186, 1
  %188 = zext nneg i32 %187 to i64
  br label %189

189:                                              ; preds = %181, %189
  %190 = phi i64 [ 0, %181 ], [ %197, %189 ]
  %191 = phi i64 [ 0, %181 ], [ %198, %189 ]
  %192 = getelementptr inbounds i8, ptr %43, i64 %190
  %193 = load i8, ptr %192, align 1, !tbaa !23
  %194 = getelementptr inbounds %struct.YUV, ptr %184, i64 %191, i32 2
  store i8 %193, ptr %194, align 1, !tbaa !80
  %195 = or disjoint i64 %191, 1
  %196 = getelementptr inbounds %struct.YUV, ptr %184, i64 %195, i32 2
  store i8 %193, ptr %196, align 1, !tbaa !80
  %197 = add nuw nsw i64 %190, 1
  %198 = add nuw nsw i64 %191, 2
  %199 = icmp eq i64 %197, %188
  br i1 %199, label %200, label %189, !llvm.loop !81

200:                                              ; preds = %189, %178
  %201 = add nuw nsw i64 %163, 1
  %202 = load i16, ptr %13, align 4, !tbaa !45
  %203 = zext i16 %202 to i64
  %204 = icmp ult i64 %201, %203
  br i1 %204, label %161, label %155, !llvm.loop !82

205:                                              ; preds = %157, %259
  %206 = phi i64 [ 0, %157 ], [ %260, %259 ]
  %207 = phi i64 [ %159, %157 ], [ %208, %259 ]
  %208 = add nsw i64 %207, -1
  br i1 %158, label %259, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds ptr, ptr %35, i64 %208
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = load ptr, ptr %29, align 8, !tbaa !46
  %213 = getelementptr inbounds ptr, ptr %212, i64 %206
  %214 = load ptr, ptr %213, align 8, !tbaa !6
  br label %215

215:                                              ; preds = %209, %215
  %216 = phi i64 [ 0, %209 ], [ %257, %215 ]
  %217 = getelementptr inbounds %struct.YUV, ptr %211, i64 %216
  %218 = getelementptr inbounds %struct.Pixel, ptr %214, i64 %216
  %219 = getelementptr inbounds %struct.YUV, ptr %211, i64 %216, i32 2
  %220 = load i8, ptr %219, align 1, !tbaa !80
  %221 = zext i8 %220 to i32
  %222 = add nsw i32 %221, -128
  %223 = sitofp i32 %222 to double
  %224 = fmul double %223, -8.120000e-01
  %225 = load <2 x i8>, ptr %217, align 1, !tbaa !23
  %226 = zext <2 x i8> %225 to <2 x i32>
  %227 = add nsw <2 x i32> %226, <i32 -16, i32 -128>
  %228 = sitofp <2 x i32> %227 to <2 x double>
  %229 = extractelement <2 x double> %228, i64 1
  %230 = fmul double %229, 2.018000e+00
  %231 = extractelement <2 x double> %228, i64 0
  %232 = tail call double @llvm.fmuladd.f64(double %231, double 1.164000e+00, double %224)
  %233 = insertelement <2 x double> poison, double %230, i64 0
  %234 = insertelement <2 x double> %233, double %232, i64 1
  %235 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %228, <2 x double> <double 1.164000e+00, double -3.910000e-01>, <2 x double> %234)
  %236 = fptosi <2 x double> %235 to <2 x i32>
  %237 = extractelement <2 x i32> %236, i64 0
  %238 = tail call i32 @llvm.umin.i32(i32 %237, i32 255)
  %239 = trunc i32 %238 to i8
  %240 = icmp slt <2 x i32> %236, <i32 16, i32 16>
  %241 = extractelement <2 x i1> %240, i64 0
  %242 = select i1 %241, i8 16, i8 %239
  store i8 %242, ptr %218, align 1, !tbaa !59
  %243 = extractelement <2 x i32> %236, i64 1
  %244 = tail call i32 @llvm.umin.i32(i32 %243, i32 255)
  %245 = trunc i32 %244 to i8
  %246 = extractelement <2 x i1> %240, i64 1
  %247 = select i1 %246, i8 16, i8 %245
  %248 = getelementptr inbounds %struct.Pixel, ptr %214, i64 %216, i32 1
  store i8 %247, ptr %248, align 1, !tbaa !58
  %249 = fmul double %223, 1.596000e+00
  %250 = tail call double @llvm.fmuladd.f64(double %231, double 1.164000e+00, double %249)
  %251 = fptosi double %250 to i32
  %252 = icmp slt i32 %251, 16
  %253 = tail call i32 @llvm.umin.i32(i32 %251, i32 255)
  %254 = trunc i32 %253 to i8
  %255 = select i1 %252, i8 16, i8 %254
  %256 = getelementptr inbounds %struct.Pixel, ptr %214, i64 %216, i32 2
  store i8 %255, ptr %256, align 1, !tbaa !55
  %257 = add nuw nsw i64 %216, 1
  %258 = icmp eq i64 %257, %160
  br i1 %258, label %259, label %215, !llvm.loop !83

259:                                              ; preds = %215, %205
  %260 = add nuw nsw i64 %206, 1
  %261 = icmp eq i64 %260, %159
  br i1 %261, label %262, label %205, !llvm.loop !84

262:                                              ; preds = %259, %45, %57, %77, %109, %155
  %263 = tail call i32 @fclose(ptr noundef nonnull %19) #20
  %264 = load i16, ptr %13, align 4, !tbaa !45
  %265 = icmp eq i16 %264, 0
  br i1 %265, label %274, label %266

266:                                              ; preds = %262, %266
  %267 = phi i64 [ %270, %266 ], [ 0, %262 ]
  %268 = getelementptr inbounds ptr, ptr %35, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !6
  tail call void @free(ptr noundef %269) #22
  %270 = add nuw nsw i64 %267, 1
  %271 = load i16, ptr %13, align 4, !tbaa !45
  %272 = zext i16 %271 to i64
  %273 = icmp ult i64 %270, %272
  br i1 %273, label %266, label %274, !llvm.loop !85

274:                                              ; preds = %266, %262
  tail call void @free(ptr noundef %43) #22
  tail call void @free(ptr noundef %35) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @read_tga_file(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 1
  %10 = alloca [2 x i8], align 1
  %11 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.69) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr @stderr, align 8, !tbaa !6
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.70, ptr noundef %0) #21
  tail call void @exit(i32 noundef -1) #25
  unreachable

16:                                               ; preds = %2
  %17 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %1, align 8, !tbaa !49
  %19 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  store i8 %20, ptr %21, align 1, !tbaa !33
  %22 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %23 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  store i32 %22, ptr %23, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #19
  %24 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %25 = load i16, ptr %3, align 2
  %26 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  store i16 %25, ptr %26, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #19
  %27 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %28 = load i16, ptr %4, align 2
  %29 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  store i16 %28, ptr %29, align 2, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #19
  %30 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  store i8 %31, ptr %32, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #19
  %33 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %34 = load i16, ptr %5, align 2
  %35 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  store i16 %34, ptr %35, align 2, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #19
  %36 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %37 = load i16, ptr %6, align 2
  %38 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  store i16 %37, ptr %38, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #19
  %39 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %40 = load i16, ptr %7, align 2
  %41 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  store i16 %40, ptr %41, align 2, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #19
  %42 = call i64 @fread(ptr noundef nonnull %8, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %43 = load i16, ptr %8, align 2
  %44 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  store i16 %43, ptr %44, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #19
  %45 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  store i8 %46, ptr %47, align 2, !tbaa !37
  %48 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  store i8 %49, ptr %50, align 1, !tbaa !38
  %51 = and i8 %49, 15
  %52 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 15
  store i8 %51, ptr %52, align 8, !tbaa !39
  %53 = load i8, ptr %1, align 8, !tbaa !49
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %16
  %56 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 12
  %57 = zext i8 %53 to i64
  %58 = tail call i64 @fread(ptr noundef nonnull %56, i64 noundef %57, i64 noundef 1, ptr noundef nonnull %11) #20
  br label %59

59:                                               ; preds = %55, %16
  %60 = load i16, ptr %29, align 2, !tbaa !43
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %133, label %62

62:                                               ; preds = %59
  %63 = zext i16 %60 to i64
  %64 = shl nuw nsw i64 %63, 2
  %65 = tail call ptr @calloc(i64 1, i64 %64)
  %66 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 13
  store ptr %65, ptr %66, align 8, !tbaa !44
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load ptr, ptr @stderr, align 8, !tbaa !6
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.38, i64 noundef %64, ptr noundef nonnull @.str.39, i32 noundef 733) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

71:                                               ; preds = %62
  %72 = getelementptr inbounds [2 x i8], ptr %9, i64 0, i64 1
  br label %73

73:                                               ; preds = %71, %127
  %74 = phi ptr [ %65, %71 ], [ %128, %127 ]
  %75 = phi i64 [ 0, %71 ], [ %129, %127 ]
  %76 = load i8, ptr %32, align 4, !tbaa !51
  switch i8 %76, label %105 [
    i8 8, label %77
    i8 16, label %85
  ]

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Pixel, ptr %74, i64 %75, i32 1
  store i8 0, ptr %78, align 1, !tbaa !58
  %79 = getelementptr inbounds %struct.Pixel, ptr %74, i64 %75
  store i8 0, ptr %79, align 1, !tbaa !59
  %80 = getelementptr inbounds %struct.Pixel, ptr %74, i64 %75, i32 3
  store i8 0, ptr %80, align 1, !tbaa !57
  %81 = tail call i32 @fgetc(ptr noundef %11) #20
  %82 = trunc i32 %81 to i8
  %83 = load ptr, ptr %66, align 8, !tbaa !44
  %84 = getelementptr inbounds %struct.Pixel, ptr %83, i64 %75, i32 2
  store i8 %82, ptr %84, align 1, !tbaa !55
  br label %127

85:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #19
  %86 = call i64 @fread(ptr noundef nonnull %9, i64 noundef 2, i64 noundef 1, ptr noundef %11) #20
  %87 = load i8, ptr %9, align 1, !tbaa !23
  %88 = zext i8 %87 to i16
  %89 = load i8, ptr %72, align 1, !tbaa !23
  %90 = zext i8 %89 to i16
  %91 = shl nuw i16 %90, 8
  %92 = or disjoint i16 %91, %88
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #19
  %93 = shl i8 %87, 3
  %94 = load ptr, ptr %66, align 8, !tbaa !44
  %95 = getelementptr inbounds %struct.Pixel, ptr %94, i64 %75
  store i8 %93, ptr %95, align 1, !tbaa !59
  %96 = lshr i16 %92, 2
  %97 = trunc i16 %96 to i8
  %98 = and i8 %97, -8
  %99 = getelementptr inbounds %struct.Pixel, ptr %94, i64 %75, i32 1
  store i8 %98, ptr %99, align 1, !tbaa !58
  %100 = shl i8 %89, 1
  %101 = and i8 %100, -8
  %102 = getelementptr inbounds %struct.Pixel, ptr %94, i64 %75, i32 2
  store i8 %101, ptr %102, align 1, !tbaa !55
  %103 = lshr i8 %89, 7
  %104 = getelementptr inbounds %struct.Pixel, ptr %94, i64 %75, i32 3
  store i8 %103, ptr %104, align 1, !tbaa !57
  br label %127

105:                                              ; preds = %73
  %106 = tail call i32 @fgetc(ptr noundef %11) #20
  %107 = trunc i32 %106 to i8
  %108 = load ptr, ptr %66, align 8, !tbaa !44
  %109 = getelementptr inbounds %struct.Pixel, ptr %108, i64 %75
  store i8 %107, ptr %109, align 1, !tbaa !59
  %110 = tail call i32 @fgetc(ptr noundef %11) #20
  %111 = trunc i32 %110 to i8
  %112 = load ptr, ptr %66, align 8, !tbaa !44
  %113 = getelementptr inbounds %struct.Pixel, ptr %112, i64 %75, i32 1
  store i8 %111, ptr %113, align 1, !tbaa !58
  %114 = tail call i32 @fgetc(ptr noundef %11) #20
  %115 = trunc i32 %114 to i8
  %116 = load ptr, ptr %66, align 8, !tbaa !44
  %117 = getelementptr inbounds %struct.Pixel, ptr %116, i64 %75, i32 2
  store i8 %115, ptr %117, align 1, !tbaa !55
  %118 = load i8, ptr %32, align 4, !tbaa !51
  %119 = icmp eq i8 %118, 32
  br i1 %119, label %120, label %125

120:                                              ; preds = %105
  %121 = tail call i32 @fgetc(ptr noundef %11) #20
  %122 = trunc i32 %121 to i8
  %123 = load ptr, ptr %66, align 8, !tbaa !44
  %124 = getelementptr inbounds %struct.Pixel, ptr %123, i64 %75, i32 3
  store i8 %122, ptr %124, align 1, !tbaa !57
  br label %127

125:                                              ; preds = %105
  %126 = getelementptr inbounds %struct.Pixel, ptr %116, i64 %75, i32 3
  store i8 0, ptr %126, align 1, !tbaa !57
  br label %127

127:                                              ; preds = %77, %120, %125, %85
  %128 = phi ptr [ %83, %77 ], [ %123, %120 ], [ %116, %125 ], [ %94, %85 ]
  %129 = add nuw nsw i64 %75, 1
  %130 = load i16, ptr %29, align 2, !tbaa !43
  %131 = zext i16 %130 to i64
  %132 = icmp ult i64 %129, %131
  br i1 %132, label %73, label %133, !llvm.loop !86

133:                                              ; preds = %127, %59
  %134 = load i16, ptr %44, align 4, !tbaa !45
  %135 = zext i16 %134 to i64
  %136 = shl nuw nsw i64 %135, 3
  %137 = tail call noalias ptr @malloc(i64 noundef %136) #26
  %138 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 14
  store ptr %137, ptr %138, align 8, !tbaa !46
  %139 = icmp eq ptr %137, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %133
  %141 = icmp eq i16 %134, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds [2 x i8], ptr %10, i64 0, i64 1
  %144 = load i16, ptr %41, align 2, !tbaa !47
  br label %150

145:                                              ; preds = %133
  %146 = load ptr, ptr @stderr, align 8, !tbaa !6
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.38, i64 noundef %136, ptr noundef nonnull @.str.39, i32 noundef 743) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

148:                                              ; preds = %170, %140
  %149 = tail call i32 @fclose(ptr noundef %11) #20
  ret void

150:                                              ; preds = %142, %170
  %151 = phi i16 [ %134, %142 ], [ %171, %170 ]
  %152 = phi i16 [ %144, %142 ], [ %172, %170 ]
  %153 = phi ptr [ %137, %142 ], [ %173, %170 ]
  %154 = phi i64 [ 0, %142 ], [ %174, %170 ]
  %155 = zext i16 %152 to i64
  %156 = shl nuw nsw i64 %155, 2
  %157 = tail call noalias ptr @malloc(i64 noundef %156) #26
  %158 = getelementptr inbounds ptr, ptr %153, i64 %154
  store ptr %157, ptr %158, align 8, !tbaa !6
  %159 = load ptr, ptr %138, align 8, !tbaa !46
  %160 = getelementptr inbounds ptr, ptr %159, i64 %154
  %161 = load ptr, ptr %160, align 8, !tbaa !6
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %150
  %164 = icmp eq i16 %152, 0
  br i1 %164, label %170, label %177

165:                                              ; preds = %150
  %166 = load ptr, ptr @stderr, align 8, !tbaa !6
  %167 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef nonnull @.str.38, i64 noundef %156, ptr noundef nonnull @.str.39, i32 noundef 745) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

168:                                              ; preds = %245
  %169 = load i16, ptr %44, align 4, !tbaa !45
  br label %170

170:                                              ; preds = %168, %163
  %171 = phi i16 [ %169, %168 ], [ %151, %163 ]
  %172 = phi i16 [ %248, %168 ], [ 0, %163 ]
  %173 = phi ptr [ %246, %168 ], [ %159, %163 ]
  %174 = add nuw nsw i64 %154, 1
  %175 = zext i16 %171 to i64
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %150, label %148, !llvm.loop !87

177:                                              ; preds = %163, %245
  %178 = phi ptr [ %246, %245 ], [ %159, %163 ]
  %179 = phi i64 [ %247, %245 ], [ 0, %163 ]
  %180 = load i8, ptr %47, align 2, !tbaa !37
  switch i8 %180, label %215 [
    i8 8, label %181
    i8 16, label %193
  ]

181:                                              ; preds = %177
  %182 = getelementptr inbounds ptr, ptr %178, i64 %154
  %183 = load ptr, ptr %182, align 8, !tbaa !6
  %184 = getelementptr inbounds %struct.Pixel, ptr %183, i64 %179, i32 1
  store i8 0, ptr %184, align 1, !tbaa !58
  %185 = getelementptr inbounds %struct.Pixel, ptr %183, i64 %179
  store i8 0, ptr %185, align 1, !tbaa !59
  %186 = getelementptr inbounds %struct.Pixel, ptr %183, i64 %179, i32 3
  store i8 0, ptr %186, align 1, !tbaa !57
  %187 = tail call i32 @fgetc(ptr noundef %11) #20
  %188 = trunc i32 %187 to i8
  %189 = load ptr, ptr %138, align 8, !tbaa !46
  %190 = getelementptr inbounds ptr, ptr %189, i64 %154
  %191 = load ptr, ptr %190, align 8, !tbaa !6
  %192 = getelementptr inbounds %struct.Pixel, ptr %191, i64 %179, i32 2
  store i8 %188, ptr %192, align 1, !tbaa !55
  br label %245

193:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #19
  %194 = call i64 @fread(ptr noundef nonnull %10, i64 noundef 2, i64 noundef 1, ptr noundef %11) #20
  %195 = load i8, ptr %10, align 1, !tbaa !23
  %196 = zext i8 %195 to i16
  %197 = load i8, ptr %143, align 1, !tbaa !23
  %198 = zext i8 %197 to i16
  %199 = shl nuw i16 %198, 8
  %200 = or disjoint i16 %199, %196
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #19
  %201 = shl i8 %195, 3
  %202 = load ptr, ptr %138, align 8, !tbaa !46
  %203 = getelementptr inbounds ptr, ptr %202, i64 %154
  %204 = load ptr, ptr %203, align 8, !tbaa !6
  %205 = getelementptr inbounds %struct.Pixel, ptr %204, i64 %179
  store i8 %201, ptr %205, align 1, !tbaa !59
  %206 = lshr i16 %200, 2
  %207 = trunc i16 %206 to i8
  %208 = and i8 %207, -8
  %209 = getelementptr inbounds %struct.Pixel, ptr %204, i64 %179, i32 1
  store i8 %208, ptr %209, align 1, !tbaa !58
  %210 = shl i8 %197, 1
  %211 = and i8 %210, -8
  %212 = getelementptr inbounds %struct.Pixel, ptr %204, i64 %179, i32 2
  store i8 %211, ptr %212, align 1, !tbaa !55
  %213 = lshr i8 %197, 7
  %214 = getelementptr inbounds %struct.Pixel, ptr %204, i64 %179, i32 3
  store i8 %213, ptr %214, align 1, !tbaa !57
  br label %245

215:                                              ; preds = %177
  %216 = tail call i32 @fgetc(ptr noundef %11) #20
  %217 = trunc i32 %216 to i8
  %218 = load ptr, ptr %138, align 8, !tbaa !46
  %219 = getelementptr inbounds ptr, ptr %218, i64 %154
  %220 = load ptr, ptr %219, align 8, !tbaa !6
  %221 = getelementptr inbounds %struct.Pixel, ptr %220, i64 %179
  store i8 %217, ptr %221, align 1, !tbaa !59
  %222 = tail call i32 @fgetc(ptr noundef %11) #20
  %223 = trunc i32 %222 to i8
  %224 = load ptr, ptr %138, align 8, !tbaa !46
  %225 = getelementptr inbounds ptr, ptr %224, i64 %154
  %226 = load ptr, ptr %225, align 8, !tbaa !6
  %227 = getelementptr inbounds %struct.Pixel, ptr %226, i64 %179, i32 1
  store i8 %223, ptr %227, align 1, !tbaa !58
  %228 = tail call i32 @fgetc(ptr noundef %11) #20
  %229 = trunc i32 %228 to i8
  %230 = load ptr, ptr %138, align 8, !tbaa !46
  %231 = getelementptr inbounds ptr, ptr %230, i64 %154
  %232 = load ptr, ptr %231, align 8, !tbaa !6
  %233 = getelementptr inbounds %struct.Pixel, ptr %232, i64 %179, i32 2
  store i8 %229, ptr %233, align 1, !tbaa !55
  %234 = load i8, ptr %47, align 2, !tbaa !37
  %235 = icmp eq i8 %234, 32
  br i1 %235, label %236, label %243

236:                                              ; preds = %215
  %237 = tail call i32 @fgetc(ptr noundef %11) #20
  %238 = trunc i32 %237 to i8
  %239 = load ptr, ptr %138, align 8, !tbaa !46
  %240 = getelementptr inbounds ptr, ptr %239, i64 %154
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = getelementptr inbounds %struct.Pixel, ptr %241, i64 %179, i32 3
  store i8 %238, ptr %242, align 1, !tbaa !57
  br label %245

243:                                              ; preds = %215
  %244 = getelementptr inbounds %struct.Pixel, ptr %232, i64 %179, i32 3
  store i8 0, ptr %244, align 1, !tbaa !57
  br label %245

245:                                              ; preds = %181, %236, %243, %193
  %246 = phi ptr [ %189, %181 ], [ %239, %236 ], [ %230, %243 ], [ %202, %193 ]
  %247 = add nuw nsw i64 %179, 1
  %248 = load i16, ptr %41, align 2, !tbaa !47
  %249 = zext i16 %248 to i64
  %250 = icmp ult i64 %247, %249
  br i1 %250, label %177, label %168, !llvm.loop !88
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #17

attributes #0 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #19 = { nounwind }
attributes #20 = { optsize }
attributes #21 = { cold optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { cold }
attributes #25 = { noreturn nounwind optsize }
attributes #26 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 112}
!11 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !12, i64 80, !12, i64 80, !12, i64 80, !12, i64 80, !12, i64 80, !12, i64 80, !12, i64 80, !12, i64 84, !13, i64 88, !12, i64 96, !13, i64 104, !12, i64 112, !7, i64 120, !12, i64 128, !12, i64 132}
!12 = !{!"int", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!11, !12, i64 128}
!15 = !{!11, !12, i64 132}
!16 = !{!11, !7, i64 16}
!17 = !{!11, !7, i64 0}
!18 = !{!11, !12, i64 84}
!19 = !{!11, !13, i64 88}
!20 = !{!11, !7, i64 48}
!21 = !{!11, !13, i64 104}
!22 = !{!11, !12, i64 96}
!23 = !{!8, !8, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!11, !7, i64 120}
!27 = !{!12, !12, i64 0}
!28 = !{!11, !7, i64 8}
!29 = !{!11, !7, i64 24}
!30 = !{!11, !7, i64 32}
!31 = !{!11, !7, i64 40}
!32 = !{!11, !7, i64 64}
!33 = !{!34, !8, i64 1}
!34 = !{!"", !8, i64 0, !8, i64 1, !12, i64 4, !35, i64 8, !35, i64 10, !8, i64 12, !35, i64 14, !35, i64 16, !35, i64 18, !35, i64 20, !8, i64 22, !8, i64 23, !8, i64 24, !7, i64 280, !7, i64 288, !8, i64 296}
!35 = !{!"short", !8, i64 0}
!36 = !{!34, !12, i64 4}
!37 = !{!34, !8, i64 22}
!38 = !{!34, !8, i64 23}
!39 = !{!34, !8, i64 296}
!40 = !{!11, !7, i64 72}
!41 = !{!11, !7, i64 56}
!42 = !{!35, !35, i64 0}
!43 = !{!34, !35, i64 10}
!44 = !{!34, !7, i64 280}
!45 = !{!34, !35, i64 20}
!46 = !{!34, !7, i64 288}
!47 = !{!34, !35, i64 18}
!48 = distinct !{!48, !25}
!49 = !{!34, !8, i64 0}
!50 = !{!34, !35, i64 8}
!51 = !{!34, !8, i64 12}
!52 = !{!34, !35, i64 14}
!53 = !{!34, !35, i64 16}
!54 = distinct !{!54, !25}
!55 = !{!56, !8, i64 2}
!56 = !{!"", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3}
!57 = !{!56, !8, i64 3}
!58 = !{!56, !8, i64 1}
!59 = !{!56, !8, i64 0}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, !25}
!63 = !{!13, !13, i64 0}
!64 = distinct !{!64, !25}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !25}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = !{!74, !8, i64 0}
!74 = !{!"", !8, i64 0, !8, i64 1, !8, i64 2}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25}
!77 = !{!74, !8, i64 1}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !25}
!80 = !{!74, !8, i64 2}
!81 = distinct !{!81, !25}
!82 = distinct !{!82, !25}
!83 = distinct !{!83, !25}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !25}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !25}
!88 = distinct !{!88, !25}
