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

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !68 {
  %3 = alloca %struct.params, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #19
  %4 = tail call ptr @get_version() #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !69
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %4) #21
  tail call void @free(ptr noundef %4) #22
  %7 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 12
  %8 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 14
  %9 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  store i32 20, ptr %9, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 17
  store i32 1280, ptr %10, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 18
  store i32 720, ptr %11, align 4, !tbaa !78
  %12 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 11
  %13 = icmp sgt i32 %0, 1
  %14 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 2
  br i1 %13, label %15, label %270, !prof !79

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 10
  %17 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 6
  %18 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 13
  %19 = load ptr, ptr %14, align 8, !tbaa !80
  %20 = load ptr, ptr %3, align 8, !tbaa !81
  %21 = load i32, ptr %12, align 4, !tbaa !82
  %22 = load double, ptr %7, align 8, !tbaa !83
  %23 = load i16, ptr %16, align 8
  %24 = load ptr, ptr %17, align 8, !tbaa !84
  %25 = load double, ptr %8, align 8, !tbaa !85
  %26 = load i32, ptr %18, align 8, !tbaa !86
  %27 = load i32, ptr %9, align 8, !tbaa !73
  %28 = load i32, ptr %11, align 4, !tbaa !78
  %29 = load i32, ptr %10, align 8, !tbaa !77
  br label %32

30:                                               ; preds = %238
  store ptr %249, ptr %14, align 8, !tbaa !80
  store ptr %248, ptr %3, align 8, !tbaa !81
  store i32 %247, ptr %12, align 4, !tbaa !82
  store double %246, ptr %7, align 8, !tbaa !83
  store i16 %245, ptr %16, align 8
  store ptr %244, ptr %17, align 8, !tbaa !84
  store double %243, ptr %8, align 8, !tbaa !85
  store i32 %242, ptr %18, align 8, !tbaa !86
  store i32 %241, ptr %9, align 8, !tbaa !73
  store i32 %240, ptr %11, align 4, !tbaa !78
  store i32 %239, ptr %10, align 8, !tbaa !77
  %31 = icmp eq i32 %258, 0
  br i1 %31, label %265, label %263, !prof !87

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
  %57 = load ptr, ptr %56, align 8, !tbaa !69
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.1, ptr noundef nonnull dereferenceable(1) %57) #23
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65, !prof !88

60:                                               ; preds = %32
  %61 = add i16 %48, 64
  %62 = and i16 %61, 448
  %63 = and i16 %48, -449
  %64 = or disjoint i16 %62, %63
  br label %238

65:                                               ; preds = %32
  %66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.2, ptr noundef nonnull dereferenceable(1) %57) #23
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70, !prof !88

68:                                               ; preds = %65
  %69 = or i16 %48, 1
  br label %238

70:                                               ; preds = %65
  %71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.3, ptr noundef nonnull dereferenceable(1) %57) #23
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75, !prof !88

73:                                               ; preds = %70
  %74 = or i16 %48, 2
  br label %238

75:                                               ; preds = %70
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.4, ptr noundef nonnull dereferenceable(1) %57) #23
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80, !prof !88

78:                                               ; preds = %75
  %79 = or i16 %48, 8
  br label %238

80:                                               ; preds = %75
  %81 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.5, ptr noundef nonnull dereferenceable(1) %57) #23
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85, !prof !88

83:                                               ; preds = %80
  %84 = or i16 %48, 16
  br label %238

85:                                               ; preds = %80
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.6, ptr noundef nonnull dereferenceable(1) %57) #23
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95, !prof !88

88:                                               ; preds = %85
  %89 = add nsw i32 %51, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %1, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !69
  %93 = tail call i64 @strtol(ptr nocapture noundef %92, ptr noundef null, i32 noundef 10) #22
  %94 = trunc i64 %93 to i32
  br label %238

95:                                               ; preds = %85
  %96 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.7, ptr noundef nonnull dereferenceable(1) %57) #23
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105, !prof !88

98:                                               ; preds = %95
  %99 = add nsw i32 %51, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %1, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !69
  %103 = tail call i64 @strtol(ptr nocapture noundef %102, ptr noundef null, i32 noundef 10) #22
  %104 = trunc i64 %103 to i32
  br label %238

105:                                              ; preds = %95
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.8, ptr noundef nonnull dereferenceable(1) %57) #23
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %116, !prof !88

108:                                              ; preds = %105
  %109 = add nsw i32 %51, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %1, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !69
  %113 = tail call i64 @strtol(ptr nocapture noundef %112, ptr noundef null, i32 noundef 10) #22
  %114 = trunc i64 %113 to i32
  %115 = or i16 %48, 32
  br label %238

116:                                              ; preds = %105
  %117 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.9, ptr noundef nonnull dereferenceable(1) %57) #23
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %144, !prof !88

119:                                              ; preds = %116
  %120 = add nsw i32 %51, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %1, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !69
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
  %142 = load ptr, ptr @stderr, align 8, !tbaa !69
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef nonnull @.str.10, i32 noundef %140, double noundef %141) #21
  br label %238

144:                                              ; preds = %116
  %145 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.11, ptr noundef nonnull dereferenceable(1) %57) #23
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %154, !prof !88

147:                                              ; preds = %144
  %148 = or i16 %48, 4
  %149 = add nsw i32 %51, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds ptr, ptr %1, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !69
  %153 = tail call ptr @spec_strdup(ptr noundef %152) #20
  br label %238

154:                                              ; preds = %144
  %155 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.12, ptr noundef nonnull dereferenceable(1) %57) #23
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %167, !prof !88

157:                                              ; preds = %154
  %158 = add nsw i32 %51, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %1, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !69
  %162 = tail call double @strtod(ptr nocapture noundef %161, ptr noundef null) #22
  %163 = fptrunc double %162 to float
  %164 = fpext float %163 to double
  %165 = load ptr, ptr @stderr, align 8, !tbaa !69
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.13, double noundef %164) #21
  br label %238

167:                                              ; preds = %154
  %168 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.14, ptr noundef nonnull dereferenceable(1) %57) #23
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %216, !prof !88

170:                                              ; preds = %167
  %171 = add nsw i32 %51, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %1, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !69
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
  %184 = load ptr, ptr @stderr, align 8, !tbaa !69
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
  %196 = load ptr, ptr @stderr, align 8, !tbaa !69
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
  %211 = load ptr, ptr @stderr, align 8, !tbaa !69
  %212 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 70, i64 1, ptr %211) #24
  br label %238

213:                                              ; preds = %207
  %214 = load ptr, ptr @stderr, align 8, !tbaa !69
  %215 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef nonnull @.str.28, ptr noundef %174) #21
  br label %238

216:                                              ; preds = %167
  %217 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.29, ptr noundef nonnull dereferenceable(1) %57) #23
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %238, label %219, !prof !88

219:                                              ; preds = %216
  %220 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.30, ptr noundef nonnull dereferenceable(1) %57) #23
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %238, label %222, !prof !88

222:                                              ; preds = %219
  %223 = icmp eq ptr %53, null
  br i1 %223, label %224, label %226, !prof !89

224:                                              ; preds = %222
  %225 = tail call ptr @spec_strdup(ptr noundef %57) #20
  br label %238

226:                                              ; preds = %222
  %227 = icmp eq ptr %49, null
  br i1 %227, label %228, label %230, !prof !90

228:                                              ; preds = %226
  %229 = tail call ptr @spec_strdup(ptr noundef %57) #20
  br label %238

230:                                              ; preds = %226
  %231 = load i8, ptr %57, align 1, !tbaa !91
  %232 = icmp eq i8 %231, 45
  %233 = load ptr, ptr @stderr, align 8, !tbaa !69
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
  br i1 %262, label %32, label %30, !prof !92, !llvm.loop !93

263:                                              ; preds = %30
  %264 = load ptr, ptr %1, align 8, !tbaa !69
  tail call void @printUsage(ptr noundef %264) #20
  tail call void @exit(i32 noundef 0) #25
  unreachable

265:                                              ; preds = %30
  %266 = icmp eq ptr %257, null
  %267 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 2
  %268 = icmp eq ptr %255, null
  %269 = select i1 %266, i1 true, i1 %268
  br i1 %269, label %270, label %280, !prof !95

270:                                              ; preds = %2, %265
  %271 = phi ptr [ %267, %265 ], [ %14, %2 ]
  %272 = phi i32 [ %250, %265 ], [ 20, %2 ]
  %273 = phi double [ %256, %265 ], [ 0.000000e+00, %2 ]
  %274 = phi double [ %251, %265 ], [ 0.000000e+00, %2 ]
  %275 = phi ptr [ %252, %265 ], [ null, %2 ]
  %276 = phi i16 [ %254, %265 ], [ 0, %2 ]
  %277 = phi ptr [ %257, %265 ], [ null, %2 ]
  %278 = load ptr, ptr @stderr, align 8, !tbaa !69
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
  br i1 %294, label %295, label %298, !prof !96

295:                                              ; preds = %280
  %296 = load ptr, ptr @stderr, align 8, !tbaa !69
  %297 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 40, i64 1, ptr %296) #24
  br label %298

298:                                              ; preds = %295, %280
  %299 = phi i32 [ 1, %295 ], [ %288, %280 ]
  %300 = fcmp olt double %284, 0.000000e+00
  %301 = fcmp ogt double %284, 1.000000e+00
  %302 = or i1 %300, %301
  br i1 %302, label %303, label %306, !prof !97

303:                                              ; preds = %298
  %304 = load ptr, ptr @stderr, align 8, !tbaa !69
  %305 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 47, i64 1, ptr %304) #24
  br label %306

306:                                              ; preds = %298, %303
  %307 = phi i32 [ 1, %303 ], [ %299, %298 ]
  %308 = fcmp ult double %283, 1.000000e+00
  br i1 %308, label %309, label %315, !prof !90

309:                                              ; preds = %306
  %310 = add i32 %282, -2
  %311 = icmp ult i32 %310, 99
  %312 = and i32 %282, 1
  %313 = icmp eq i32 %312, 0
  %314 = and i1 %311, %313
  br i1 %314, label %325, label %323, !prof !98

315:                                              ; preds = %306
  %316 = load ptr, ptr @stderr, align 8, !tbaa !69
  %317 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %316, ptr noundef nonnull @.str.36) #21
  %318 = add i32 %282, -2
  %319 = icmp ult i32 %318, 99
  %320 = and i32 %282, 1
  %321 = icmp eq i32 %320, 0
  %322 = and i1 %319, %321
  br i1 %322, label %327, label %323, !prof !98

323:                                              ; preds = %315, %309
  %324 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %327

325:                                              ; preds = %309
  %326 = icmp eq i32 %307, 0
  br i1 %326, label %329, label %327, !prof !99

327:                                              ; preds = %315, %323, %325
  %328 = load ptr, ptr %1, align 8, !tbaa !69
  tail call void @printUsage(ptr noundef %328) #20
  tail call void @exit(i32 noundef -1) #25
  unreachable

329:                                              ; preds = %325
  %330 = add nuw nsw i32 %282, 1
  %331 = zext nneg i32 %330 to i64
  %332 = shl nuw nsw i64 %331, 2
  %333 = tail call noalias ptr @malloc(i64 noundef %332) #26
  %334 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 16
  store ptr %333, ptr %334, align 8, !tbaa !100
  %335 = icmp eq ptr %333, null
  br i1 %335, label %336, label %339, !prof !101

336:                                              ; preds = %329
  %337 = load ptr, ptr @stderr, align 8, !tbaa !69
  %338 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %337, ptr noundef nonnull @.str.38, i64 noundef %332, ptr noundef nonnull @.str.39, i32 noundef 259) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

339:                                              ; preds = %329
  %340 = shl nuw nsw i64 %331, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %333, i8 0, i64 %340, i1 false), !tbaa !102
  %341 = tail call dereferenceable_or_null(304) ptr @calloc(i64 1, i64 304)
  %342 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 1
  store ptr %341, ptr %342, align 8, !tbaa !103
  %343 = icmp eq ptr %341, null
  br i1 %343, label %344, label %347, !prof !101

344:                                              ; preds = %339
  %345 = load ptr, ptr @stderr, align 8, !tbaa !69
  %346 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %345, ptr noundef nonnull @.str.38, i64 noundef 304, ptr noundef nonnull @.str.39, i32 noundef 265) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

347:                                              ; preds = %339
  %348 = tail call dereferenceable_or_null(304) ptr @calloc(i64 1, i64 304)
  %349 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 3
  store ptr %348, ptr %349, align 8, !tbaa !104
  %350 = icmp eq ptr %348, null
  br i1 %350, label %351, label %354, !prof !101

351:                                              ; preds = %347
  %352 = load ptr, ptr @stderr, align 8, !tbaa !69
  %353 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %352, ptr noundef nonnull @.str.38, i64 noundef 304, ptr noundef nonnull @.str.39, i32 noundef 267) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

354:                                              ; preds = %347
  %355 = tail call ptr @load_image_file(ptr noundef %287, ptr noundef nonnull %341, ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %356 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %355, i32 noundef 47) #23
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %360, !prof !90

358:                                              ; preds = %354
  %359 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %355, i32 noundef 92) #23
  br label %360

360:                                              ; preds = %354, %358
  %361 = phi ptr [ %359, %358 ], [ %356, %354 ]
  %362 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 4
  %363 = icmp eq ptr %361, null
  %364 = getelementptr inbounds i8, ptr %361, i64 1
  %365 = select i1 %363, ptr %355, ptr %364, !prof !90
  store ptr %365, ptr %362, align 8, !tbaa !105
  %366 = load ptr, ptr %281, align 8, !tbaa !80
  %367 = load ptr, ptr %349, align 8, !tbaa !104
  %368 = tail call ptr @load_image_file(ptr noundef %366, ptr noundef %367, ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %369 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %368, i32 noundef 47) #23
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %373, !prof !101

371:                                              ; preds = %360
  %372 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %368, i32 noundef 92) #23
  br label %373

373:                                              ; preds = %360, %371
  %374 = phi ptr [ %372, %371 ], [ %369, %360 ]
  %375 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 5
  %376 = icmp eq ptr %374, null
  %377 = getelementptr inbounds i8, ptr %374, i64 1
  %378 = select i1 %376, ptr %368, ptr %377, !prof !101
  store ptr %378, ptr %375, align 8, !tbaa !106
  %379 = load ptr, ptr %362, align 8, !tbaa !105
  %380 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %379, ptr noundef nonnull dereferenceable(1) %378) #23
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %387, !prof !90

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
  br i1 %390, label %403, label %391, !prof !107

391:                                              ; preds = %387
  %392 = load ptr, ptr %342, align 8, !tbaa !103
  %393 = tail call ptr @init_targa(ptr noundef %392, ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %394 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 8
  store ptr %393, ptr %394, align 8, !tbaa !108
  %395 = getelementptr inbounds %struct.TargaImage, ptr %393, i64 0, i32 1
  store i8 0, ptr %395, align 1, !tbaa !109
  %396 = getelementptr inbounds %struct.TargaImage, ptr %393, i64 0, i32 2
  store i32 3, ptr %396, align 4, !tbaa !112
  %397 = getelementptr inbounds %struct.TargaImage, ptr %393, i64 0, i32 10
  store i8 8, ptr %397, align 2, !tbaa !113
  %398 = getelementptr inbounds %struct.TargaImage, ptr %393, i64 0, i32 11
  %399 = load i8, ptr %398, align 1, !tbaa !114
  %400 = and i8 %399, -16
  store i8 %400, ptr %398, align 1, !tbaa !114
  %401 = getelementptr inbounds %struct.TargaImage, ptr %393, i64 0, i32 15
  store i8 0, ptr %401, align 8, !tbaa !115
  %402 = load i16, ptr %289, align 8
  br label %403

403:                                              ; preds = %387, %391
  %404 = phi i16 [ %388, %387 ], [ %402, %391 ]
  %405 = and i16 %404, 8
  %406 = icmp eq i16 %405, 0
  br i1 %406, label %419, label %407, !prof !90

407:                                              ; preds = %403
  %408 = load ptr, ptr %349, align 8, !tbaa !104
  %409 = tail call ptr @init_targa(ptr noundef %408, ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %410 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 9
  store ptr %409, ptr %410, align 8, !tbaa !116
  %411 = getelementptr inbounds %struct.TargaImage, ptr %409, i64 0, i32 1
  store i8 0, ptr %411, align 1, !tbaa !109
  %412 = getelementptr inbounds %struct.TargaImage, ptr %409, i64 0, i32 2
  store i32 3, ptr %412, align 4, !tbaa !112
  %413 = getelementptr inbounds %struct.TargaImage, ptr %409, i64 0, i32 10
  store i8 8, ptr %413, align 2, !tbaa !113
  %414 = getelementptr inbounds %struct.TargaImage, ptr %409, i64 0, i32 11
  %415 = load i8, ptr %414, align 1, !tbaa !114
  %416 = and i8 %415, -16
  store i8 %416, ptr %414, align 1, !tbaa !114
  %417 = getelementptr inbounds %struct.TargaImage, ptr %409, i64 0, i32 15
  store i8 0, ptr %417, align 8, !tbaa !115
  %418 = load i16, ptr %289, align 8
  br label %419

419:                                              ; preds = %407, %403
  %420 = phi i16 [ %418, %407 ], [ %404, %403 ]
  %421 = and i16 %420, 4
  %422 = icmp eq i16 %421, 0
  br i1 %422, label %433, label %423, !prof !90

423:                                              ; preds = %419
  %424 = load ptr, ptr %342, align 8, !tbaa !103
  %425 = tail call ptr @init_targa(ptr noundef %424, ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %426 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 7
  store ptr %425, ptr %426, align 8, !tbaa !117
  %427 = getelementptr inbounds %struct.TargaImage, ptr %425, i64 0, i32 1
  store i8 0, ptr %427, align 1, !tbaa !109
  %428 = getelementptr inbounds %struct.TargaImage, ptr %425, i64 0, i32 2
  store i32 2, ptr %428, align 4, !tbaa !112
  %429 = getelementptr inbounds %struct.TargaImage, ptr %425, i64 0, i32 10
  store i8 24, ptr %429, align 2, !tbaa !113
  %430 = getelementptr inbounds %struct.TargaImage, ptr %425, i64 0, i32 11
  store i8 0, ptr %430, align 1, !tbaa !114
  %431 = getelementptr inbounds %struct.TargaImage, ptr %425, i64 0, i32 15
  store i8 0, ptr %431, align 8, !tbaa !115
  %432 = load i16, ptr %289, align 8
  br label %433

433:                                              ; preds = %423, %419
  %434 = phi i16 [ %432, %423 ], [ %420, %419 ]
  %435 = and i16 %434, 1
  %436 = icmp eq i16 %435, 0
  %437 = and i16 %434, 9
  %438 = icmp eq i16 %437, 0
  br i1 %438, label %470, label %439, !prof !107

439:                                              ; preds = %433
  %440 = load ptr, ptr %362, align 8, !tbaa !105
  %441 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %440) #23
  %442 = load ptr, ptr %375, align 8, !tbaa !106
  %443 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %442) #23
  %444 = tail call i64 @llvm.umax.i64(i64 %441, i64 %443)
  %445 = shl i64 %444, 32
  %446 = add i64 %445, 47244640256
  %447 = ashr exact i64 %446, 32
  %448 = tail call noalias ptr @malloc(i64 noundef %447) #26
  %449 = icmp eq ptr %448, null
  br i1 %449, label %450, label %453

450:                                              ; preds = %439
  %451 = load ptr, ptr @stderr, align 8, !tbaa !69
  %452 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %451, ptr noundef nonnull @.str.38, i64 noundef %447, ptr noundef nonnull @.str.39, i32 noundef 318) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

453:                                              ; preds = %439
  br i1 %436, label %459, label %454

454:                                              ; preds = %453
  %455 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %448, ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %440) #22
  %456 = load ptr, ptr %342, align 8, !tbaa !103
  tail call void @dump_tga(ptr noundef nonnull %448, ptr noundef %456) #20
  %457 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %448, ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %442) #22
  %458 = load ptr, ptr %349, align 8, !tbaa !104
  tail call void @dump_tga(ptr noundef nonnull %448, ptr noundef %458) #20
  br label %459

459:                                              ; preds = %454, %453
  %460 = and i16 %434, 8
  %461 = icmp eq i16 %460, 0
  br i1 %461, label %469, label %462

462:                                              ; preds = %459
  %463 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %448, ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %440) #22
  %464 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 8
  %465 = load ptr, ptr %464, align 8, !tbaa !108
  tail call void @dump_tga(ptr noundef nonnull %448, ptr noundef %465) #20
  %466 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %448, ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %442) #22
  %467 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 9
  %468 = load ptr, ptr %467, align 8, !tbaa !116
  tail call void @dump_tga(ptr noundef nonnull %448, ptr noundef %468) #20
  br label %469

469:                                              ; preds = %462, %459
  tail call void @free(ptr noundef nonnull %448) #22
  br label %470

470:                                              ; preds = %433, %469
  %471 = and i16 %434, 2
  %472 = icmp eq i16 %471, 0
  br i1 %472, label %478, label %473, !prof !90

473:                                              ; preds = %470
  %474 = load ptr, ptr %3, align 8, !tbaa !81
  %475 = load ptr, ptr %342, align 8, !tbaa !103
  tail call void @dump_header(ptr noundef %474, ptr noundef %475) #20
  %476 = load ptr, ptr %281, align 8, !tbaa !80
  %477 = load ptr, ptr %349, align 8, !tbaa !104
  tail call void @dump_header(ptr noundef %476, ptr noundef %477) #20
  br label %478

478:                                              ; preds = %473, %470
  %479 = tail call i32 @computeSSIM(ptr noundef nonnull byval(%struct.params) align 8 %3) #20
  %480 = load i16, ptr %289, align 8
  %481 = and i16 %480, 4
  %482 = icmp eq i16 %481, 0
  br i1 %482, label %487, label %483, !prof !90

483:                                              ; preds = %478
  %484 = load ptr, ptr %292, align 8, !tbaa !84
  %485 = getelementptr inbounds %struct.params, ptr %3, i64 0, i32 7
  %486 = load ptr, ptr %485, align 8, !tbaa !117
  tail call void @dump_tga(ptr noundef %484, ptr noundef %486) #20
  br label %487

487:                                              ; preds = %483, %478
  tail call void @exit(i32 noundef 0) #25
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_version() local_unnamed_addr #2 !prof !68 {
  %1 = tail call ptr @spec_strdup(ptr noundef nonnull @.str.103) #20
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 36) #23
  %3 = icmp eq ptr %2, null
  %4 = icmp eq ptr %2, %1
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8, !prof !97

6:                                                ; preds = %0
  tail call void @free(ptr noundef %1) #22
  %7 = tail call ptr @spec_strdup(ptr noundef nonnull @.str.98) #20
  br label %12

8:                                                ; preds = %0
  %9 = getelementptr inbounds i8, ptr %2, i64 -1
  store i8 0, ptr %9, align 1, !tbaa !91
  %10 = getelementptr inbounds i8, ptr %1, i64 21
  store i8 114, ptr %10, align 1, !tbaa !91
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
define dso_local noundef ptr @spec_strdup(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !118 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %3 = shl i64 %2, 32
  %4 = add i64 %3, 42949672960
  %5 = ashr exact i64 %4, 32
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !119

8:                                                ; preds = %1
  %9 = load ptr, ptr @stderr, align 8, !tbaa !69
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.38, i64 noundef %5, ptr noundef nonnull @.str.39, i32 noundef 1017) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

11:                                               ; preds = %1
  %12 = tail call ptr @strncpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef %5) #22
  %13 = ashr exact i64 %3, 32
  %14 = getelementptr inbounds i8, ptr %6, i64 %13
  store i8 0, ptr %14, align 1, !tbaa !91
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @printUsage(ptr noundef %0) local_unnamed_addr #8 !prof !120 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @.str.99, ptr %0
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.104)
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.101, ptr noundef nonnull %3) #20
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102) #20
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @load_image_file(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly byval(%struct.params) align 8 %2) local_unnamed_addr #2 !prof !121 {
  %4 = tail call ptr @spec_strdup(ptr noundef %0) #20
  %5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !88

7:                                                ; preds = %3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.64) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !122

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
  store i8 0, ptr %5, align 1, !tbaa !91
  br i1 %17, label %18, label %19, !prof !88

18:                                               ; preds = %15
  tail call void @read_yuv_file(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.params) align 8 %2) #20
  br label %20

19:                                               ; preds = %15
  tail call void @read_tga_file(ptr noundef %0, ptr noundef %1) #20
  br label %20

20:                                               ; preds = %18, %19
  %21 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23, !prof !89

23:                                               ; preds = %20
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(5) @.str.67) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26, !prof !90

26:                                               ; preds = %23
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(6) @.str.68) #23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  store i8 0, ptr %21, align 1, !tbaa !91
  br label %30

30:                                               ; preds = %29, %26, %20
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @init_targa(ptr noundef readonly %0, ptr nocapture noundef readonly byval(%struct.params) align 8 %1) local_unnamed_addr #2 !prof !120 {
  %3 = tail call noalias dereferenceable_or_null(304) ptr @malloc(i64 noundef 304) #26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !69
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.38, i64 noundef 304, ptr noundef nonnull @.str.39, i32 noundef 986) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

8:                                                ; preds = %2
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %3, i8 0, i64 304, i1 false)
  %11 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 2
  store i32 2, ptr %11, align 4, !tbaa !112
  %12 = getelementptr inbounds %struct.params, ptr %1, i64 0, i32 17
  %13 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 8
  %14 = load <2 x i32>, ptr %12, align 8, !tbaa !102
  %15 = trunc <2 x i32> %14 to <2 x i16>
  store <2 x i16> %15, ptr %13, align 2, !tbaa !123
  %16 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 10
  store i8 24, ptr %16, align 2, !tbaa !113
  br label %30

17:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %3, ptr noundef nonnull align 8 dereferenceable(304) %0, i64 304, i1 false)
  %18 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 4
  %19 = load i16, ptr %18, align 2, !tbaa !124
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = zext i16 %19 to i64
  %23 = shl nuw nsw i64 %22, 2
  %24 = tail call ptr @calloc(i64 1, i64 %23)
  %25 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 13
  store ptr %24, ptr %25, align 8, !tbaa !125
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load ptr, ptr @stderr, align 8, !tbaa !69
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.38, i64 noundef %23, ptr noundef nonnull @.str.39, i32 noundef 1000) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

30:                                               ; preds = %21, %10, %17
  %31 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 9
  %32 = load i16, ptr %31, align 4, !tbaa !126
  %33 = zext i16 %32 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #26
  %36 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 14
  store ptr %35, ptr %36, align 8, !tbaa !127
  %37 = icmp eq ptr %35, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = icmp eq i16 %32, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 8
  %42 = load i16, ptr %41, align 2, !tbaa !128
  %43 = zext i16 %42 to i64
  %44 = shl nuw nsw i64 %43, 2
  %45 = zext i16 %32 to i64
  br label %50

46:                                               ; preds = %30
  %47 = load ptr, ptr @stderr, align 8, !tbaa !69
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.38, i64 noundef %34, ptr noundef nonnull @.str.39, i32 noundef 1005) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

49:                                               ; preds = %58, %38
  ret ptr %3

50:                                               ; preds = %40, %58
  %51 = phi i64 [ 0, %40 ], [ %59, %58 ]
  %52 = tail call ptr @calloc(i64 1, i64 %44)
  %53 = getelementptr inbounds ptr, ptr %35, i64 %51
  store ptr %52, ptr %53, align 8, !tbaa !69
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load ptr, ptr @stderr, align 8, !tbaa !69
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.38, i64 noundef %44, ptr noundef nonnull @.str.39, i32 noundef 1007) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

58:                                               ; preds = %50
  %59 = add nuw nsw i64 %51, 1
  %60 = icmp eq i64 %59, %45
  br i1 %60, label %49, label %50, !llvm.loop !129
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_tga(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !120 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.96) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !69
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.97, ptr noundef %0) #21
  tail call void @exit(i32 noundef -1) #25
  unreachable

8:                                                ; preds = %2
  %9 = load i8, ptr %1, align 8, !tbaa !130
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @fputc(i32 noundef %10, ptr noundef nonnull %3) #20
  %12 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  %13 = load i8, ptr %12, align 1, !tbaa !109
  %14 = zext i8 %13 to i32
  %15 = tail call i32 @fputc(i32 noundef %14, ptr noundef nonnull %3) #20
  %16 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !112
  %18 = and i32 %17, 255
  %19 = tail call i32 @fputc(i32 noundef %18, ptr noundef nonnull %3) #20
  %20 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !131
  %22 = and i16 %21, 255
  %23 = zext nneg i16 %22 to i32
  %24 = tail call i32 @fputc(i32 noundef %23, ptr noundef nonnull %3) #20
  %25 = load i16, ptr %20, align 8, !tbaa !131
  %26 = lshr i16 %25, 8
  %27 = zext nneg i16 %26 to i32
  %28 = tail call i32 @fputc(i32 noundef %27, ptr noundef nonnull %3) #20
  %29 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  %30 = load i16, ptr %29, align 2, !tbaa !124
  %31 = and i16 %30, 255
  %32 = zext nneg i16 %31 to i32
  %33 = tail call i32 @fputc(i32 noundef %32, ptr noundef nonnull %3) #20
  %34 = load i16, ptr %29, align 2, !tbaa !124
  %35 = lshr i16 %34, 8
  %36 = zext nneg i16 %35 to i32
  %37 = tail call i32 @fputc(i32 noundef %36, ptr noundef nonnull %3) #20
  %38 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  %39 = load i8, ptr %38, align 4, !tbaa !132
  %40 = zext i8 %39 to i32
  %41 = tail call i32 @fputc(i32 noundef %40, ptr noundef nonnull %3) #20
  %42 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  %43 = load i16, ptr %42, align 2, !tbaa !133
  %44 = and i16 %43, 255
  %45 = zext nneg i16 %44 to i32
  %46 = tail call i32 @fputc(i32 noundef %45, ptr noundef nonnull %3) #20
  %47 = load i16, ptr %42, align 2, !tbaa !133
  %48 = lshr i16 %47, 8
  %49 = zext nneg i16 %48 to i32
  %50 = tail call i32 @fputc(i32 noundef %49, ptr noundef nonnull %3) #20
  %51 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  %52 = load i16, ptr %51, align 8, !tbaa !134
  %53 = and i16 %52, 255
  %54 = zext nneg i16 %53 to i32
  %55 = tail call i32 @fputc(i32 noundef %54, ptr noundef nonnull %3) #20
  %56 = load i16, ptr %51, align 8, !tbaa !134
  %57 = lshr i16 %56, 8
  %58 = zext nneg i16 %57 to i32
  %59 = tail call i32 @fputc(i32 noundef %58, ptr noundef nonnull %3) #20
  %60 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  %61 = load i16, ptr %60, align 2, !tbaa !128
  %62 = and i16 %61, 255
  %63 = zext nneg i16 %62 to i32
  %64 = tail call i32 @fputc(i32 noundef %63, ptr noundef nonnull %3) #20
  %65 = load i16, ptr %60, align 2, !tbaa !128
  %66 = lshr i16 %65, 8
  %67 = zext nneg i16 %66 to i32
  %68 = tail call i32 @fputc(i32 noundef %67, ptr noundef nonnull %3) #20
  %69 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  %70 = load i16, ptr %69, align 4, !tbaa !126
  %71 = and i16 %70, 255
  %72 = zext nneg i16 %71 to i32
  %73 = tail call i32 @fputc(i32 noundef %72, ptr noundef nonnull %3) #20
  %74 = load i16, ptr %69, align 4, !tbaa !126
  %75 = lshr i16 %74, 8
  %76 = zext nneg i16 %75 to i32
  %77 = tail call i32 @fputc(i32 noundef %76, ptr noundef nonnull %3) #20
  %78 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %79 = load i8, ptr %78, align 2, !tbaa !113
  %80 = zext i8 %79 to i32
  %81 = tail call i32 @fputc(i32 noundef %80, ptr noundef nonnull %3) #20
  %82 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  %83 = load i8, ptr %82, align 1, !tbaa !114
  %84 = zext i8 %83 to i32
  %85 = tail call i32 @fputc(i32 noundef %84, ptr noundef nonnull %3) #20
  %86 = load i16, ptr %69, align 4, !tbaa !126
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %8
  %89 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 14
  %90 = load i16, ptr %60, align 2, !tbaa !128
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
  %99 = load i16, ptr %69, align 4, !tbaa !126
  br label %100

100:                                              ; preds = %98, %91
  %101 = phi i16 [ %99, %98 ], [ %92, %91 ]
  %102 = phi i16 [ %179, %98 ], [ 0, %91 ]
  %103 = add nuw nsw i64 %94, 1
  %104 = zext i16 %101 to i64
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %91, label %96, !llvm.loop !135

106:                                              ; preds = %91, %177
  %107 = phi i64 [ %178, %177 ], [ 0, %91 ]
  %108 = load i32, ptr %16, align 4, !tbaa !112
  %109 = and i32 %108, -2
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %177

111:                                              ; preds = %106
  %112 = load i8, ptr %78, align 2, !tbaa !113
  %113 = load ptr, ptr %89, align 8, !tbaa !127
  %114 = getelementptr inbounds ptr, ptr %113, i64 %94
  %115 = load ptr, ptr %114, align 8, !tbaa !69
  switch i8 %112, label %146 [
    i8 8, label %116
    i8 16, label %120
  ]

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107, i32 2
  %118 = load i8, ptr %117, align 1, !tbaa !136
  %119 = zext i8 %118 to i32
  br label %174

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107
  %122 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107, i32 3
  %123 = load i8, ptr %122, align 1, !tbaa !138
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 15
  %126 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107, i32 2
  %127 = load i8, ptr %126, align 1, !tbaa !136
  %128 = and i8 %127, 31
  %129 = zext nneg i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 10
  %131 = or disjoint i32 %130, %125
  %132 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107, i32 1
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
  %143 = tail call i32 @fputc(i32 noundef %142, ptr noundef %3) #20
  %144 = lshr i32 %137, 8
  %145 = and i32 %144, 255
  br label %174

146:                                              ; preds = %111
  %147 = getelementptr inbounds %struct.Pixel, ptr %115, i64 %107
  %148 = load i8, ptr %147, align 1, !tbaa !140
  %149 = zext i8 %148 to i32
  %150 = tail call i32 @fputc(i32 noundef %149, ptr noundef %3) #20
  %151 = load ptr, ptr %89, align 8, !tbaa !127
  %152 = getelementptr inbounds ptr, ptr %151, i64 %94
  %153 = load ptr, ptr %152, align 8, !tbaa !69
  %154 = getelementptr inbounds %struct.Pixel, ptr %153, i64 %107, i32 1
  %155 = load i8, ptr %154, align 1, !tbaa !139
  %156 = zext i8 %155 to i32
  %157 = tail call i32 @fputc(i32 noundef %156, ptr noundef %3) #20
  %158 = load ptr, ptr %89, align 8, !tbaa !127
  %159 = getelementptr inbounds ptr, ptr %158, i64 %94
  %160 = load ptr, ptr %159, align 8, !tbaa !69
  %161 = getelementptr inbounds %struct.Pixel, ptr %160, i64 %107, i32 2
  %162 = load i8, ptr %161, align 1, !tbaa !136
  %163 = zext i8 %162 to i32
  %164 = tail call i32 @fputc(i32 noundef %163, ptr noundef %3) #20
  %165 = load i8, ptr %78, align 2, !tbaa !113
  %166 = icmp eq i8 %165, 32
  br i1 %166, label %167, label %177

167:                                              ; preds = %146
  %168 = load ptr, ptr %89, align 8, !tbaa !127
  %169 = getelementptr inbounds ptr, ptr %168, i64 %94
  %170 = load ptr, ptr %169, align 8, !tbaa !69
  %171 = getelementptr inbounds %struct.Pixel, ptr %170, i64 %107, i32 3
  %172 = load i8, ptr %171, align 1, !tbaa !138
  %173 = zext i8 %172 to i32
  br label %174

174:                                              ; preds = %116, %167, %120
  %175 = phi i32 [ %145, %120 ], [ %173, %167 ], [ %119, %116 ]
  %176 = tail call i32 @fputc(i32 noundef %175, ptr noundef %3) #20
  br label %177

177:                                              ; preds = %174, %106, %146
  %178 = add nuw nsw i64 %107, 1
  %179 = load i16, ptr %60, align 2, !tbaa !128
  %180 = zext i16 %179 to i64
  %181 = icmp ult i64 %178, %180
  br i1 %181, label %106, label %98, !llvm.loop !141
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_header(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !120 {
  %3 = alloca [100 x i8], align 16
  %4 = load ptr, ptr @stderr, align 8, !tbaa !69
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.74, ptr noundef %0) #21
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !69
  %9 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 25, i64 1, ptr %8) #24
  br label %111

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %3, i8 0, i64 100, i1 false)
  %11 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !112
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
  %17 = load i8, ptr %16, align 8, !tbaa !115
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = zext i8 %17 to i32
  %21 = and i32 %12, 8
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.79, ptr @.str.78
  %24 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %25 = load i8, ptr %24, align 2, !tbaa !113
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull %23, i32 noundef %26, i32 noundef %20) #22
  br label %53

28:                                               ; preds = %15
  %29 = and i32 %12, 8
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.79, ptr @.str.78
  %32 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %33 = load i8, ptr %32, align 2, !tbaa !113
  %34 = zext i8 %33 to i32
  %35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull %31, i32 noundef %34) #22
  br label %53

36:                                               ; preds = %10
  %37 = and i32 %12, 8
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr @.str.79, ptr @.str.78
  %40 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %41 = load i8, ptr %40, align 2, !tbaa !113
  %42 = zext i8 %41 to i32
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.81, ptr noundef nonnull %39, i32 noundef %42) #22
  br label %53

44:                                               ; preds = %10
  %45 = and i32 %12, 8
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.79, ptr @.str.78
  %48 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  %49 = load i8, ptr %48, align 4, !tbaa !132
  %50 = zext i8 %49 to i32
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %47, i32 noundef %50) #22
  br label %53

52:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 1 dereferenceable(26) @.str.83, i64 26, i1 false)
  br label %53

53:                                               ; preds = %19, %28, %52, %44, %36, %14
  %54 = load ptr, ptr @stderr, align 8, !tbaa !69
  %55 = load i8, ptr %1, align 8, !tbaa !130
  %56 = zext i8 %55 to i32
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.84, i32 noundef %56) #21
  %58 = load ptr, ptr @stderr, align 8, !tbaa !69
  %59 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  %60 = load i8, ptr %59, align 1, !tbaa !109
  %61 = zext i8 %60 to i32
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.85, i32 noundef %61) #21
  %63 = load ptr, ptr @stderr, align 8, !tbaa !69
  %64 = load i32, ptr %11, align 4, !tbaa !112
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.86, i32 noundef %64, ptr noundef nonnull %3) #21
  %66 = load ptr, ptr @stderr, align 8, !tbaa !69
  %67 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  %68 = load i16, ptr %67, align 8, !tbaa !131
  %69 = zext i16 %68 to i32
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.87, i32 noundef %69) #21
  %71 = load ptr, ptr @stderr, align 8, !tbaa !69
  %72 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  %73 = load i16, ptr %72, align 2, !tbaa !124
  %74 = zext i16 %73 to i32
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.88, i32 noundef %74) #21
  %76 = load ptr, ptr @stderr, align 8, !tbaa !69
  %77 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  %78 = load i8, ptr %77, align 4, !tbaa !132
  %79 = zext i8 %78 to i32
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.89, i32 noundef %79) #21
  %81 = load ptr, ptr @stderr, align 8, !tbaa !69
  %82 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  %83 = load i16, ptr %82, align 2, !tbaa !133
  %84 = zext i16 %83 to i32
  %85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.90, i32 noundef %84) #21
  %86 = load ptr, ptr @stderr, align 8, !tbaa !69
  %87 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  %88 = load i16, ptr %87, align 8, !tbaa !134
  %89 = zext i16 %88 to i32
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.91, i32 noundef %89) #21
  %91 = load ptr, ptr @stderr, align 8, !tbaa !69
  %92 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  %93 = load i16, ptr %92, align 2, !tbaa !128
  %94 = zext i16 %93 to i32
  %95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.92, i32 noundef %94) #21
  %96 = load ptr, ptr @stderr, align 8, !tbaa !69
  %97 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  %98 = load i16, ptr %97, align 4, !tbaa !126
  %99 = zext i16 %98 to i32
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.93, i32 noundef %99) #21
  %101 = load ptr, ptr @stderr, align 8, !tbaa !69
  %102 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  %103 = load i8, ptr %102, align 2, !tbaa !113
  %104 = zext i8 %103 to i32
  %105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.94, i32 noundef %104) #21
  %106 = load ptr, ptr @stderr, align 8, !tbaa !69
  %107 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  %108 = load i8, ptr %107, align 1, !tbaa !114
  %109 = zext i8 %108 to i32
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.95, i32 noundef %109) #21
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #19
  br label %111

111:                                              ; preds = %53, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @computeSSIM(ptr nocapture noundef readonly byval(%struct.params) align 8 %0) local_unnamed_addr #2 !prof !68 {
  %2 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 9
  %13 = load i16, ptr %12, align 4, !tbaa !126
  %14 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 8
  %15 = load i16, ptr %14, align 2, !tbaa !128
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 8
  %18 = load i16, ptr %17, align 2, !tbaa !128
  %19 = icmp eq i16 %15, %18
  %20 = getelementptr inbounds %struct.TargaImage, ptr %7, i64 0, i32 9
  %21 = load i16, ptr %20, align 4, !tbaa !126
  %22 = icmp eq i16 %13, %21
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %30, label %24, !prof !107

24:                                               ; preds = %1
  %25 = zext i16 %13 to i32
  %26 = load ptr, ptr @stderr, align 8, !tbaa !69
  %27 = zext i16 %18 to i32
  %28 = zext i16 %21 to i32
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.44, i32 noundef %16, i32 noundef %25, i32 noundef %27, i32 noundef %28) #21
  br label %668

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.TargaImage, ptr %3, i64 0, i32 10
  %32 = load i8, ptr %31, align 2, !tbaa !113
  switch i8 %32, label %33 [
    i8 16, label %36
    i8 32, label %35
  ], !prof !142

33:                                               ; preds = %30
  %34 = zext i8 %32 to i32
  br label %36

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %30, %35, %33
  %37 = phi i32 [ 15, %30 ], [ %34, %33 ], [ 24, %35 ]
  %38 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #26
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43, !prof !101

40:                                               ; preds = %36
  %41 = load ptr, ptr @stderr, align 8, !tbaa !69
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.38, i64 noundef 512, ptr noundef nonnull @.str.39, i32 noundef 392) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

43:                                               ; preds = %36
  %44 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #26
  %45 = icmp eq ptr %44, null
  br i1 %45, label %86, label %46, !prof !101

46:                                               ; preds = %43
  %47 = icmp eq i16 %13, 0
  br i1 %47, label %101, label %48, !prof !143

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
  %58 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %59 = load <8 x i16>, ptr %58, align 8
  %60 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 15
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 0
  %63 = uitofp i32 %61 to float
  %64 = fmul float %63, 5.000000e-01
  %65 = fpext float %64 to double
  %66 = lshr i32 %61, 1
  %67 = uitofp i32 %66 to double
  %68 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 16
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 12
  %71 = load double, ptr %70, align 8
  %72 = fcmp ogt double %71, 0.000000e+00
  %73 = icmp eq ptr %11, null
  %74 = shufflevector <8 x i16> %59, <8 x i16> poison, <4 x i32> zeroinitializer
  %75 = and <4 x i16> %74, <i16 384, i16 448, i16 16, i16 256>
  %76 = icmp eq <4 x i16> %75, zeroinitializer
  %77 = zext i16 %15 to i64
  %78 = add nsw i32 %16, -1
  %79 = lshr i32 %78, 3
  %80 = add nuw nsw i32 %79, 1
  %81 = zext i16 %13 to i64
  %82 = extractelement <4 x i1> %76, i64 0
  %83 = extractelement <4 x i1> %76, i64 1
  %84 = extractelement <4 x i1> %76, i64 2
  %85 = extractelement <4 x i1> %76, i64 3
  br label %89

86:                                               ; preds = %43
  %87 = load ptr, ptr @stderr, align 8, !tbaa !69
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.38, i64 noundef 512, ptr noundef nonnull @.str.39, i32 noundef 393) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

89:                                               ; preds = %48, %112
  %90 = phi i64 [ 0, %48 ], [ %95, %112 ]
  %91 = phi double [ 0.000000e+00, %48 ], [ %116, %112 ]
  %92 = phi double [ 1.000000e+00, %48 ], [ %115, %112 ]
  %93 = phi i32 [ 0, %48 ], [ %114, %112 ]
  %94 = phi i32 [ 0, %48 ], [ %113, %112 ]
  %95 = add nuw nsw i64 %90, 8
  br i1 %49, label %112, label %96, !prof !144

96:                                               ; preds = %89
  %97 = icmp ugt i64 %95, %81
  %98 = add i32 %80, %93
  %99 = trunc i64 %90 to i32
  %100 = trunc i64 %90 to i32
  br label %118

101:                                              ; preds = %112, %46
  %102 = phi i32 [ 0, %46 ], [ %113, %112 ]
  %103 = phi i32 [ 0, %46 ], [ %114, %112 ]
  %104 = phi double [ 1.000000e+00, %46 ], [ %115, %112 ]
  %105 = phi double [ 0.000000e+00, %46 ], [ %116, %112 ]
  tail call void @free(ptr noundef %38) #22
  tail call void @free(ptr noundef %44) #22
  %106 = load ptr, ptr @stderr, align 8, !tbaa !69
  %107 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 13
  %108 = load i32, ptr %107, align 8, !tbaa !86
  %109 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 14
  %110 = load double, ptr %109, align 8, !tbaa !85
  %111 = fcmp ogt double %110, 0.000000e+00
  br i1 %111, label %487, label %500, !prof !101

112:                                              ; preds = %485, %89
  %113 = phi i32 [ %94, %89 ], [ %419, %485 ]
  %114 = phi i32 [ %93, %89 ], [ %98, %485 ]
  %115 = phi double [ %92, %89 ], [ %405, %485 ]
  %116 = phi double [ %91, %89 ], [ %165, %485 ]
  %117 = icmp ult i64 %95, %81
  br i1 %117, label %89, label %101, !prof !145, !llvm.loop !146

118:                                              ; preds = %96, %485
  %119 = phi i64 [ 0, %96 ], [ %128, %485 ]
  %120 = phi double [ %91, %96 ], [ %165, %485 ]
  %121 = phi double [ %92, %96 ], [ %405, %485 ]
  %122 = phi i32 [ %94, %96 ], [ %419, %485 ]
  br i1 %97, label %123, label %126, !prof !147

123:                                              ; preds = %118
  %124 = sub nsw i64 %81, %90
  %125 = trunc i64 %124 to i32
  br label %126

126:                                              ; preds = %118, %123
  %127 = phi i32 [ %125, %123 ], [ 8, %118 ]
  %128 = add nuw nsw i64 %119, 8
  %129 = icmp ugt i64 %128, %77
  br i1 %129, label %130, label %133, !prof !147

130:                                              ; preds = %126
  %131 = sub nsw i64 %77, %119
  %132 = trunc i64 %131 to i32
  br label %133

133:                                              ; preds = %126, %130
  %134 = phi i32 [ %132, %130 ], [ 8, %126 ]
  %135 = icmp eq i32 %127, 0
  br i1 %135, label %147, label %136, !prof !148

136:                                              ; preds = %133
  %137 = icmp eq i32 %134, 0
  %138 = zext i32 %134 to i64
  %139 = zext i32 %127 to i64
  br label %140

140:                                              ; preds = %136, %166
  %141 = phi i64 [ 0, %136 ], [ %168, %166 ]
  %142 = phi i32 [ 0, %136 ], [ %167, %166 ]
  br i1 %137, label %166, label %143, !prof !149

143:                                              ; preds = %140
  %144 = trunc i64 %141 to i32
  %145 = add i32 %144, %99
  %146 = zext i32 %145 to i64
  br label %170

147:                                              ; preds = %166, %133
  %148 = phi i32 [ 0, %133 ], [ %167, %166 ]
  %149 = tail call double @mean(ptr noundef nonnull %38, i32 noundef %148) #20
  %150 = tail call double @mean(ptr noundef nonnull %44, i32 noundef %148) #20
  %151 = tail call double @variance(ptr noundef nonnull %38, double noundef %149, i32 noundef %148) #20
  %152 = tail call double @variance(ptr noundef nonnull %44, double noundef %150, i32 noundef %148) #20
  %153 = tail call double @covariance(ptr noundef nonnull %38, ptr noundef nonnull %44, double noundef %149, double noundef %150, i32 noundef %148) #20
  %154 = fmul double %149, 2.000000e+00
  %155 = tail call double @llvm.fmuladd.f64(double %154, double %150, double 6.502500e+00)
  %156 = tail call double @llvm.fmuladd.f64(double %153, double 2.000000e+00, double 5.852550e+01)
  %157 = fmul double %155, %156
  %158 = fmul double %150, %150
  %159 = tail call double @llvm.fmuladd.f64(double %149, double %149, double %158)
  %160 = fadd double %159, 6.502500e+00
  %161 = fadd double %151, %152
  %162 = fadd double %161, 5.852550e+01
  %163 = fmul double %160, %162
  %164 = fdiv double %157, %163
  %165 = fadd double %120, %164
  br i1 %84, label %395, label %401, !prof !150

166:                                              ; preds = %391, %140
  %167 = phi i32 [ %142, %140 ], [ %392, %391 ]
  %168 = add nuw nsw i64 %141, 1
  %169 = icmp ult i64 %168, %139
  br i1 %169, label %140, label %147, !prof !151, !llvm.loop !152

170:                                              ; preds = %143, %391
  %171 = phi i64 [ 0, %143 ], [ %393, %391 ]
  %172 = phi i32 [ %142, %143 ], [ %392, %391 ]
  br i1 %50, label %173, label %192, !prof !153

173:                                              ; preds = %170
  %174 = load ptr, ptr %53, align 8, !tbaa !127
  %175 = getelementptr inbounds ptr, ptr %174, i64 %146
  %176 = load ptr, ptr %175, align 8, !tbaa !69
  %177 = add nuw i64 %171, %119
  %178 = and i64 %177, 4294967295
  %179 = getelementptr inbounds %struct.Pixel, ptr %176, i64 %178, i32 2
  %180 = load i8, ptr %179, align 1, !tbaa !136
  %181 = zext i32 %172 to i64
  %182 = getelementptr inbounds double, ptr %38, i64 %181
  %183 = load ptr, ptr %54, align 8, !tbaa !127
  %184 = getelementptr inbounds ptr, ptr %183, i64 %146
  %185 = load ptr, ptr %184, align 8, !tbaa !69
  %186 = getelementptr inbounds %struct.Pixel, ptr %185, i64 %178, i32 2
  %187 = load i8, ptr %186, align 1, !tbaa !136
  %188 = insertelement <2 x i8> poison, i8 %187, i64 0
  %189 = insertelement <2 x i8> %188, i8 %180, i64 1
  %190 = uitofp <2 x i8> %189 to <2 x double>
  %191 = extractelement <2 x double> %190, i64 1
  store double %191, ptr %182, align 8, !tbaa !154
  br label %313

192:                                              ; preds = %170
  switch i32 %52, label %310 [
    i32 0, label %193
    i32 1, label %229
    i32 2, label %265
  ], !prof !155

193:                                              ; preds = %192
  %194 = load ptr, ptr %53, align 8, !tbaa !127
  %195 = getelementptr inbounds ptr, ptr %194, i64 %146
  %196 = load ptr, ptr %195, align 8, !tbaa !69
  %197 = add nuw i64 %171, %119
  %198 = and i64 %197, 4294967295
  %199 = getelementptr inbounds %struct.Pixel, ptr %196, i64 %198
  %200 = getelementptr inbounds %struct.Pixel, ptr %196, i64 %198, i32 2
  %201 = load i8, ptr %200, align 1, !tbaa !136
  %202 = getelementptr inbounds %struct.Pixel, ptr %196, i64 %198, i32 1
  %203 = load i8, ptr %202, align 1, !tbaa !139
  %204 = load i8, ptr %199, align 1, !tbaa !140
  %205 = zext i32 %172 to i64
  %206 = getelementptr inbounds double, ptr %38, i64 %205
  %207 = load ptr, ptr %54, align 8, !tbaa !127
  %208 = getelementptr inbounds ptr, ptr %207, i64 %146
  %209 = load ptr, ptr %208, align 8, !tbaa !69
  %210 = getelementptr inbounds %struct.Pixel, ptr %209, i64 %198
  %211 = getelementptr inbounds %struct.Pixel, ptr %209, i64 %198, i32 2
  %212 = load i8, ptr %211, align 1, !tbaa !136
  %213 = getelementptr inbounds %struct.Pixel, ptr %209, i64 %198, i32 1
  %214 = load i8, ptr %213, align 1, !tbaa !139
  %215 = load i8, ptr %210, align 1, !tbaa !140
  %216 = insertelement <2 x i8> poison, i8 %212, i64 0
  %217 = insertelement <2 x i8> %216, i8 %201, i64 1
  %218 = uitofp <2 x i8> %217 to <2 x double>
  %219 = insertelement <2 x i8> poison, i8 %214, i64 0
  %220 = insertelement <2 x i8> %219, i8 %203, i64 1
  %221 = uitofp <2 x i8> %220 to <2 x double>
  %222 = fmul <2 x double> %221, <double 7.152000e-01, double 7.152000e-01>
  %223 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %218, <2 x double> <double 2.126000e-01, double 2.126000e-01>, <2 x double> %222)
  %224 = insertelement <2 x i8> poison, i8 %215, i64 0
  %225 = insertelement <2 x i8> %224, i8 %204, i64 1
  %226 = uitofp <2 x i8> %225 to <2 x double>
  %227 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %226, <2 x double> <double 7.220000e-02, double 7.220000e-02>, <2 x double> %223)
  %228 = extractelement <2 x double> %227, i64 1
  store double %228, ptr %206, align 8, !tbaa !154
  br label %313

229:                                              ; preds = %192
  %230 = load ptr, ptr %53, align 8, !tbaa !127
  %231 = getelementptr inbounds ptr, ptr %230, i64 %146
  %232 = load ptr, ptr %231, align 8, !tbaa !69
  %233 = add nuw i64 %171, %119
  %234 = and i64 %233, 4294967295
  %235 = getelementptr inbounds %struct.Pixel, ptr %232, i64 %234
  %236 = getelementptr inbounds %struct.Pixel, ptr %232, i64 %234, i32 2
  %237 = load i8, ptr %236, align 1, !tbaa !136
  %238 = getelementptr inbounds %struct.Pixel, ptr %232, i64 %234, i32 1
  %239 = load i8, ptr %238, align 1, !tbaa !139
  %240 = load i8, ptr %235, align 1, !tbaa !140
  %241 = zext i32 %172 to i64
  %242 = getelementptr inbounds double, ptr %38, i64 %241
  %243 = load ptr, ptr %54, align 8, !tbaa !127
  %244 = getelementptr inbounds ptr, ptr %243, i64 %146
  %245 = load ptr, ptr %244, align 8, !tbaa !69
  %246 = getelementptr inbounds %struct.Pixel, ptr %245, i64 %234
  %247 = getelementptr inbounds %struct.Pixel, ptr %245, i64 %234, i32 2
  %248 = load i8, ptr %247, align 1, !tbaa !136
  %249 = getelementptr inbounds %struct.Pixel, ptr %245, i64 %234, i32 1
  %250 = load i8, ptr %249, align 1, !tbaa !139
  %251 = load i8, ptr %246, align 1, !tbaa !140
  %252 = insertelement <2 x i8> poison, i8 %248, i64 0
  %253 = insertelement <2 x i8> %252, i8 %237, i64 1
  %254 = uitofp <2 x i8> %253 to <2 x double>
  %255 = insertelement <2 x i8> poison, i8 %250, i64 0
  %256 = insertelement <2 x i8> %255, i8 %239, i64 1
  %257 = uitofp <2 x i8> %256 to <2 x double>
  %258 = fmul <2 x double> %257, <double 5.870000e-01, double 5.870000e-01>
  %259 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %254, <2 x double> <double 2.990000e-01, double 2.990000e-01>, <2 x double> %258)
  %260 = insertelement <2 x i8> poison, i8 %251, i64 0
  %261 = insertelement <2 x i8> %260, i8 %240, i64 1
  %262 = uitofp <2 x i8> %261 to <2 x double>
  %263 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %262, <2 x double> <double 1.140000e-01, double 1.140000e-01>, <2 x double> %259)
  %264 = extractelement <2 x double> %263, i64 1
  store double %264, ptr %242, align 8, !tbaa !154
  br label %313

265:                                              ; preds = %192
  %266 = load ptr, ptr %53, align 8, !tbaa !127
  %267 = getelementptr inbounds ptr, ptr %266, i64 %146
  %268 = load ptr, ptr %267, align 8, !tbaa !69
  %269 = add nuw i64 %171, %119
  %270 = and i64 %269, 4294967295
  %271 = getelementptr inbounds %struct.Pixel, ptr %268, i64 %270
  %272 = getelementptr inbounds %struct.Pixel, ptr %268, i64 %270, i32 2
  %273 = load i8, ptr %272, align 1, !tbaa !136
  %274 = uitofp i8 %273 to double
  %275 = fmul double %274, 2.990000e-01
  %276 = getelementptr inbounds %struct.Pixel, ptr %268, i64 %270, i32 1
  %277 = load i8, ptr %276, align 1, !tbaa !139
  %278 = uitofp i8 %277 to double
  %279 = fmul double %278, 5.870000e-01
  %280 = fmul double %279, %278
  %281 = tail call double @llvm.fmuladd.f64(double %275, double %274, double %280)
  %282 = load i8, ptr %271, align 1, !tbaa !140
  %283 = uitofp i8 %282 to double
  %284 = fmul double %283, 1.140000e-01
  %285 = tail call double @llvm.fmuladd.f64(double %284, double %283, double %281)
  %286 = tail call double @sqrt(double noundef %285) #22
  %287 = zext i32 %172 to i64
  %288 = getelementptr inbounds double, ptr %38, i64 %287
  store double %286, ptr %288, align 8, !tbaa !154
  %289 = load ptr, ptr %54, align 8, !tbaa !127
  %290 = getelementptr inbounds ptr, ptr %289, i64 %146
  %291 = load ptr, ptr %290, align 8, !tbaa !69
  %292 = getelementptr inbounds %struct.Pixel, ptr %291, i64 %270
  %293 = getelementptr inbounds %struct.Pixel, ptr %291, i64 %270, i32 2
  %294 = load i8, ptr %293, align 1, !tbaa !136
  %295 = uitofp i8 %294 to double
  %296 = fmul double %295, 2.990000e-01
  %297 = getelementptr inbounds %struct.Pixel, ptr %291, i64 %270, i32 1
  %298 = load i8, ptr %297, align 1, !tbaa !139
  %299 = uitofp i8 %298 to double
  %300 = fmul double %299, 5.870000e-01
  %301 = fmul double %300, %299
  %302 = tail call double @llvm.fmuladd.f64(double %296, double %295, double %301)
  %303 = load i8, ptr %292, align 1, !tbaa !140
  %304 = uitofp i8 %303 to double
  %305 = fmul double %304, 1.140000e-01
  %306 = tail call double @llvm.fmuladd.f64(double %305, double %304, double %302)
  %307 = tail call double @sqrt(double noundef %306) #22
  %308 = insertelement <2 x double> poison, double %307, i64 0
  %309 = insertelement <2 x double> %308, double %286, i64 1
  br label %313

310:                                              ; preds = %192
  %311 = load ptr, ptr @stderr, align 8, !tbaa !69
  %312 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef nonnull @.str.45, i32 noundef %52) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

313:                                              ; preds = %193, %265, %229, %173
  %314 = phi i64 [ %205, %193 ], [ %287, %265 ], [ %241, %229 ], [ %181, %173 ]
  %315 = phi <2 x double> [ %227, %193 ], [ %309, %265 ], [ %263, %229 ], [ %190, %173 ]
  %316 = getelementptr inbounds double, ptr %44, i64 %314
  %317 = extractelement <2 x double> %315, i64 0
  store double %317, ptr %316, align 8, !tbaa !154
  br i1 %55, label %327, label %318, !prof !156

318:                                              ; preds = %313
  %319 = extractelement <2 x double> %315, i64 1
  %320 = fptoui double %319 to i8
  %321 = load ptr, ptr %56, align 8, !tbaa !127
  %322 = getelementptr inbounds ptr, ptr %321, i64 %146
  %323 = load ptr, ptr %322, align 8, !tbaa !69
  %324 = add nuw i64 %171, %119
  %325 = and i64 %324, 4294967295
  %326 = getelementptr inbounds %struct.Pixel, ptr %323, i64 %325, i32 2
  store i8 %320, ptr %326, align 1, !tbaa !136
  br label %327

327:                                              ; preds = %318, %313
  br i1 %57, label %337, label %328, !prof !156

328:                                              ; preds = %327
  %329 = getelementptr inbounds %struct.TargaImage, ptr %9, i64 0, i32 14
  %330 = fptoui double %317 to i8
  %331 = load ptr, ptr %329, align 8, !tbaa !127
  %332 = getelementptr inbounds ptr, ptr %331, i64 %146
  %333 = load ptr, ptr %332, align 8, !tbaa !69
  %334 = add nuw i64 %171, %119
  %335 = and i64 %334, 4294967295
  %336 = getelementptr inbounds %struct.Pixel, ptr %333, i64 %335, i32 2
  store i8 %330, ptr %336, align 1, !tbaa !136
  br label %337

337:                                              ; preds = %328, %327
  br i1 %85, label %391, label %338, !prof !156

338:                                              ; preds = %337
  %339 = trunc i64 %119 to i32
  %340 = load ptr, ptr @stderr, align 8, !tbaa !69
  %341 = trunc i64 %171 to i32
  %342 = add i32 %341, %339
  %343 = load ptr, ptr %53, align 8, !tbaa !127
  %344 = getelementptr inbounds ptr, ptr %343, i64 %146
  %345 = load ptr, ptr %344, align 8, !tbaa !69
  %346 = zext i32 %342 to i64
  %347 = getelementptr inbounds %struct.Pixel, ptr %345, i64 %346
  %348 = getelementptr inbounds %struct.Pixel, ptr %345, i64 %346, i32 2
  %349 = load i8, ptr %348, align 1, !tbaa !136
  %350 = zext i8 %349 to i32
  %351 = getelementptr inbounds %struct.Pixel, ptr %345, i64 %346, i32 1
  %352 = load i8, ptr %351, align 1, !tbaa !139
  %353 = zext i8 %352 to i32
  %354 = load i8, ptr %347, align 1, !tbaa !140
  %355 = zext i8 %354 to i32
  br i1 %55, label %363, label %356

356:                                              ; preds = %338
  %357 = load ptr, ptr %56, align 8, !tbaa !127
  %358 = getelementptr inbounds ptr, ptr %357, i64 %146
  %359 = load ptr, ptr %358, align 8, !tbaa !69
  %360 = getelementptr inbounds %struct.Pixel, ptr %359, i64 %346, i32 2
  %361 = load i8, ptr %360, align 1, !tbaa !136
  %362 = zext i8 %361 to i32
  br label %363

363:                                              ; preds = %338, %356
  %364 = phi i32 [ %362, %356 ], [ 0, %338 ]
  %365 = extractelement <2 x double> %315, i64 1
  %366 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %340, ptr noundef nonnull @.str.46, i32 noundef %145, i32 noundef %342, i32 noundef %350, i32 noundef %353, i32 noundef %355, double noundef %365, i32 noundef %364) #21
  %367 = load ptr, ptr @stderr, align 8, !tbaa !69
  %368 = load ptr, ptr %54, align 8, !tbaa !127
  %369 = getelementptr inbounds ptr, ptr %368, i64 %146
  %370 = load ptr, ptr %369, align 8, !tbaa !69
  %371 = getelementptr inbounds %struct.Pixel, ptr %370, i64 %346
  %372 = getelementptr inbounds %struct.Pixel, ptr %370, i64 %346, i32 2
  %373 = load i8, ptr %372, align 1, !tbaa !136
  %374 = zext i8 %373 to i32
  %375 = getelementptr inbounds %struct.Pixel, ptr %370, i64 %346, i32 1
  %376 = load i8, ptr %375, align 1, !tbaa !139
  %377 = zext i8 %376 to i32
  %378 = load i8, ptr %371, align 1, !tbaa !140
  %379 = zext i8 %378 to i32
  br i1 %57, label %388, label %380

380:                                              ; preds = %363
  %381 = getelementptr inbounds %struct.TargaImage, ptr %9, i64 0, i32 14
  %382 = load ptr, ptr %381, align 8, !tbaa !127
  %383 = getelementptr inbounds ptr, ptr %382, i64 %146
  %384 = load ptr, ptr %383, align 8, !tbaa !69
  %385 = getelementptr inbounds %struct.Pixel, ptr %384, i64 %346, i32 2
  %386 = load i8, ptr %385, align 1, !tbaa !136
  %387 = zext i8 %386 to i32
  br label %388

388:                                              ; preds = %363, %380
  %389 = phi i32 [ %387, %380 ], [ 0, %363 ]
  %390 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %367, ptr noundef nonnull @.str.47, i32 noundef %374, i32 noundef %377, i32 noundef %379, double noundef %317, i32 noundef %389) #21
  br label %391

391:                                              ; preds = %388, %337
  %392 = add i32 %172, 1
  %393 = add nuw nsw i64 %171, 1
  %394 = icmp ult i64 %393, %138
  br i1 %394, label %170, label %166, !prof !157, !llvm.loop !158

395:                                              ; preds = %147
  %396 = trunc i64 %119 to i32
  %397 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %396, i32 noundef %100, double noundef %164) #20
  br i1 %83, label %401, label %398, !prof !150

398:                                              ; preds = %395
  %399 = load ptr, ptr @stdout, align 8, !tbaa !69
  %400 = tail call i32 @fflush(ptr noundef %399) #20
  br label %401

401:                                              ; preds = %395, %398, %147
  %402 = fcmp olt double %164, %121
  br i1 %402, label %403, label %404, !prof !147

403:                                              ; preds = %401
  br label %404

404:                                              ; preds = %403, %401
  %405 = phi double [ %164, %403 ], [ %121, %401 ]
  br i1 %62, label %413, label %406, !prof !147

406:                                              ; preds = %404
  %407 = tail call double @llvm.fmuladd.f64(double %164, double %65, double %67)
  %408 = fptosi double %407 to i32
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, ptr %69, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !102
  %412 = add i32 %411, 1
  store i32 %412, ptr %410, align 4, !tbaa !102
  br label %413

413:                                              ; preds = %406, %404
  br i1 %72, label %414, label %418, !prof !147

414:                                              ; preds = %413
  %415 = fcmp olt double %164, %71
  br i1 %415, label %416, label %418

416:                                              ; preds = %414
  %417 = add i32 %122, 1
  br label %418

418:                                              ; preds = %416, %414, %413
  %419 = phi i32 [ %417, %416 ], [ %122, %414 ], [ %122, %413 ]
  br i1 %73, label %463, label %420, !prof !150

420:                                              ; preds = %418
  br i1 %135, label %463, label %421

421:                                              ; preds = %420
  %422 = getelementptr inbounds %struct.TargaImage, ptr %11, i64 0, i32 14
  %423 = icmp eq i32 %134, 0
  %424 = fcmp ult double %164, 1.000000e+00
  %425 = fadd double %164, 1.000000e+00
  %426 = fmul double %425, 5.000000e-01
  %427 = zext i32 %134 to i64
  %428 = zext i32 %127 to i64
  br label %429

429:                                              ; preds = %421, %440
  %430 = phi i64 [ 0, %421 ], [ %441, %440 ]
  br i1 %423, label %440, label %431

431:                                              ; preds = %429
  %432 = load ptr, ptr %56, align 8, !tbaa !127
  %433 = add nuw i64 %430, %90
  %434 = and i64 %433, 4294967295
  %435 = getelementptr inbounds ptr, ptr %432, i64 %434
  %436 = load ptr, ptr %435, align 8, !tbaa !69
  %437 = load ptr, ptr %422, align 8, !tbaa !127
  %438 = getelementptr inbounds ptr, ptr %437, i64 %434
  %439 = load ptr, ptr %438, align 8, !tbaa !69
  br label %443

440:                                              ; preds = %457, %429
  %441 = add nuw nsw i64 %430, 1
  %442 = icmp ult i64 %441, %428
  br i1 %442, label %429, label %463, !llvm.loop !159

443:                                              ; preds = %431, %457
  %444 = phi i64 [ 0, %431 ], [ %461, %457 ]
  %445 = add nuw i64 %444, %119
  %446 = and i64 %445, 4294967295
  %447 = getelementptr inbounds %struct.Pixel, ptr %436, i64 %446, i32 2
  %448 = load i8, ptr %447, align 1, !tbaa !136
  %449 = getelementptr inbounds %struct.Pixel, ptr %439, i64 %446, i32 2
  store i8 %448, ptr %449, align 1, !tbaa !136
  br i1 %424, label %450, label %457

450:                                              ; preds = %443
  %451 = tail call i8 @llvm.umax.i8(i8 %448, i8 16)
  %452 = zext i8 %451 to i32
  %453 = add nsw i32 %452, -16
  %454 = sitofp i32 %453 to double
  %455 = fmul double %426, %454
  %456 = fptoui double %455 to i8
  br label %457

457:                                              ; preds = %443, %450
  %458 = phi i8 [ %456, %450 ], [ %448, %443 ]
  %459 = getelementptr inbounds %struct.Pixel, ptr %439, i64 %446, i32 1
  store i8 %458, ptr %459, align 1
  %460 = getelementptr inbounds %struct.Pixel, ptr %439, i64 %446
  store i8 %458, ptr %460, align 1
  %461 = add nuw nsw i64 %444, 1
  %462 = icmp ult i64 %461, %427
  br i1 %462, label %443, label %440, !llvm.loop !160

463:                                              ; preds = %440, %420, %418
  br i1 %82, label %485, label %464, !prof !150

464:                                              ; preds = %463
  %465 = load ptr, ptr @stderr, align 8, !tbaa !69
  %466 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %465, ptr noundef nonnull @.str.49, double noundef %149, double noundef %150) #21
  %467 = load ptr, ptr @stderr, align 8, !tbaa !69
  %468 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %467, ptr noundef nonnull @.str.50, double noundef %151, double noundef %152) #21
  %469 = load ptr, ptr @stderr, align 8, !tbaa !69
  %470 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %469, ptr noundef nonnull @.str.51, double noundef %153) #21
  %471 = load ptr, ptr @stderr, align 8, !tbaa !69
  br i1 %73, label %480, label %472

472:                                              ; preds = %464
  %473 = getelementptr inbounds %struct.TargaImage, ptr %11, i64 0, i32 14
  %474 = load ptr, ptr %473, align 8, !tbaa !127
  %475 = getelementptr inbounds ptr, ptr %474, i64 %90
  %476 = load ptr, ptr %475, align 8, !tbaa !69
  %477 = getelementptr inbounds %struct.Pixel, ptr %476, i64 %119, i32 2
  %478 = load i8, ptr %477, align 1, !tbaa !136
  %479 = zext i8 %478 to i32
  br label %480

480:                                              ; preds = %464, %472
  %481 = phi i32 [ %479, %472 ], [ 0, %464 ]
  %482 = trunc i64 %90 to i32
  %483 = trunc i64 %119 to i32
  %484 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %471, ptr noundef nonnull @.str.52, i32 noundef %483, i32 noundef %482, double noundef %164, i32 noundef %481) #21
  br label %485

485:                                              ; preds = %480, %463
  %486 = icmp ult i64 %128, %77
  br i1 %486, label %118, label %112, !prof !161, !llvm.loop !162

487:                                              ; preds = %101
  %488 = icmp eq i32 %108, 0
  br i1 %488, label %489, label %492

489:                                              ; preds = %487
  %490 = uitofp i32 %103 to double
  %491 = fmul double %110, %490
  br label %497

492:                                              ; preds = %487
  %493 = uitofp i32 %108 to double
  %494 = uitofp i32 %103 to double
  %495 = fmul double %110, %494
  %496 = fcmp olt double %495, %493
  br i1 %496, label %497, label %500

497:                                              ; preds = %489, %492
  %498 = phi double [ %491, %489 ], [ %495, %492 ]
  %499 = fptoui double %498 to i32
  br label %500

500:                                              ; preds = %492, %497, %101
  %501 = phi i32 [ %499, %497 ], [ %108, %492 ], [ %108, %101 ]
  %502 = icmp ugt i32 %102, %501
  %503 = load ptr, ptr %0, align 8, !tbaa !81
  br i1 %502, label %504, label %508, !prof !101

504:                                              ; preds = %500
  %505 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %503) #20
  %506 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.105)
  %507 = load ptr, ptr @stdout, align 8, !tbaa !69
  br label %524

508:                                              ; preds = %500
  %509 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.55, ptr noundef %503) #21
  %510 = load ptr, ptr @stderr, align 8, !tbaa !69
  %511 = icmp eq ptr %106, %510
  br i1 %511, label %524, label %512, !prof !90

512:                                              ; preds = %508
  %513 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %514 = load i16, ptr %513, align 8
  %515 = and i16 %514, 448
  %516 = icmp eq i16 %515, 0
  br i1 %516, label %521, label %517

517:                                              ; preds = %512
  %518 = load ptr, ptr @stdout, align 8, !tbaa !69
  %519 = tail call i32 @fflush(ptr noundef %518) #20
  %520 = load ptr, ptr @stderr, align 8, !tbaa !69
  br label %521

521:                                              ; preds = %517, %512
  %522 = phi ptr [ %520, %517 ], [ %510, %512 ]
  %523 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %522, ptr noundef nonnull @.str.55, ptr noundef %503) #21
  br label %524

524:                                              ; preds = %508, %521, %504
  %525 = phi ptr [ %507, %504 ], [ %106, %521 ], [ %106, %508 ]
  %526 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 12
  %527 = load double, ptr %526, align 8, !tbaa !83
  %528 = fcmp ogt double %527, 0.000000e+00
  br i1 %528, label %529, label %545, !prof !101

529:                                              ; preds = %524
  %530 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %525, ptr noundef nonnull @.str.56, i32 noundef %102, i32 noundef %501, i32 noundef %103) #20
  %531 = load ptr, ptr @stderr, align 8, !tbaa !69
  %532 = icmp eq ptr %525, %531
  br i1 %532, label %545, label %533

533:                                              ; preds = %529
  %534 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %535 = load i16, ptr %534, align 8
  %536 = and i16 %535, 448
  %537 = icmp eq i16 %536, 0
  br i1 %537, label %542, label %538

538:                                              ; preds = %533
  %539 = load ptr, ptr @stdout, align 8, !tbaa !69
  %540 = tail call i32 @fflush(ptr noundef %539) #20
  %541 = load ptr, ptr @stderr, align 8, !tbaa !69
  br label %542

542:                                              ; preds = %538, %533
  %543 = phi ptr [ %541, %538 ], [ %531, %533 ]
  %544 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %543, ptr noundef nonnull @.str.56, i32 noundef %102, i32 noundef %501, i32 noundef %103) #21
  br label %545

545:                                              ; preds = %529, %542, %524
  %546 = icmp eq i32 %103, 0
  br i1 %546, label %565, label %547, !prof !101

547:                                              ; preds = %545
  %548 = uitofp i32 %103 to double
  %549 = fdiv double %105, %548
  %550 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %525, ptr noundef nonnull @.str.57, double noundef %549) #20
  %551 = load ptr, ptr @stderr, align 8, !tbaa !69
  %552 = icmp eq ptr %525, %551
  br i1 %552, label %565, label %553, !prof !90

553:                                              ; preds = %547
  %554 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %555 = load i16, ptr %554, align 8
  %556 = and i16 %555, 448
  %557 = icmp eq i16 %556, 0
  br i1 %557, label %562, label %558

558:                                              ; preds = %553
  %559 = load ptr, ptr @stdout, align 8, !tbaa !69
  %560 = tail call i32 @fflush(ptr noundef %559) #20
  %561 = load ptr, ptr @stderr, align 8, !tbaa !69
  br label %562

562:                                              ; preds = %558, %553
  %563 = phi ptr [ %561, %558 ], [ %551, %553 ]
  %564 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %563, ptr noundef nonnull @.str.57, double noundef %549) #21
  br label %565

565:                                              ; preds = %547, %562, %545
  %566 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %525, ptr noundef nonnull @.str.58, double noundef %104) #20
  %567 = load ptr, ptr @stderr, align 8, !tbaa !69
  %568 = icmp eq ptr %525, %567
  %569 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 10
  %570 = load i16, ptr %569, align 8
  br i1 %568, label %581, label %571, !prof !90

571:                                              ; preds = %565
  %572 = and i16 %570, 448
  %573 = icmp eq i16 %572, 0
  br i1 %573, label %578, label %574

574:                                              ; preds = %571
  %575 = load ptr, ptr @stdout, align 8, !tbaa !69
  %576 = tail call i32 @fflush(ptr noundef %575) #20
  %577 = load ptr, ptr @stderr, align 8, !tbaa !69
  br label %578

578:                                              ; preds = %574, %571
  %579 = phi ptr [ %577, %574 ], [ %567, %571 ]
  %580 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %579, ptr noundef nonnull @.str.58, double noundef %104) #21
  br label %581

581:                                              ; preds = %565, %578
  %582 = and i16 %570, 16
  %583 = icmp eq i16 %582, 0
  br i1 %583, label %591, label %584, !prof !90

584:                                              ; preds = %581
  br i1 %546, label %589, label %585

585:                                              ; preds = %584
  %586 = uitofp i32 %103 to double
  %587 = fdiv double %105, %586
  %588 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef %503, double noundef %587) #20
  br label %591

589:                                              ; preds = %584
  %590 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %503) #20
  br label %591

591:                                              ; preds = %585, %589, %581
  %592 = and i16 %570, 448
  %593 = icmp eq i16 %592, 0
  br i1 %593, label %594, label %598, !prof !90

594:                                              ; preds = %591
  %595 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %525, ptr noundef nonnull @.str.61, i32 noundef 10) #20
  %596 = load ptr, ptr @stderr, align 8, !tbaa !69
  %597 = icmp eq ptr %525, %596
  br i1 %597, label %611, label %608, !prof !90

598:                                              ; preds = %591
  %599 = load ptr, ptr @stdout, align 8, !tbaa !69
  %600 = tail call i32 @fflush(ptr noundef %599) #20
  %601 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %525, ptr noundef nonnull @.str.61, i32 noundef 10) #20
  %602 = load ptr, ptr @stderr, align 8, !tbaa !69
  %603 = icmp eq ptr %525, %602
  br i1 %603, label %611, label %604, !prof !90

604:                                              ; preds = %598
  %605 = load ptr, ptr @stdout, align 8, !tbaa !69
  %606 = tail call i32 @fflush(ptr noundef %605) #20
  %607 = load ptr, ptr @stderr, align 8, !tbaa !69
  br label %608

608:                                              ; preds = %594, %604
  %609 = phi ptr [ %596, %594 ], [ %607, %604 ]
  %610 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %609, ptr noundef nonnull @.str.61, i32 noundef 10) #21
  br label %611

611:                                              ; preds = %598, %608, %594
  %612 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 16
  %613 = load ptr, ptr %612, align 8, !tbaa !100
  %614 = getelementptr inbounds %struct.params, ptr %0, i64 0, i32 15
  %615 = load i32, ptr %614, align 8, !tbaa !73
  %616 = zext i32 %615 to i64
  %617 = getelementptr inbounds i32, ptr %613, i64 %616
  %618 = load i32, ptr %617, align 4, !tbaa !102
  %619 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %525, ptr noundef nonnull @.str.62, double noundef 1.000000e+00, i32 noundef %618) #20
  %620 = load ptr, ptr @stderr, align 8, !tbaa !69
  %621 = icmp eq ptr %525, %620
  br i1 %621, label %631, label %622, !prof !90

622:                                              ; preds = %611
  br i1 %593, label %627, label %623

623:                                              ; preds = %622
  %624 = load ptr, ptr @stdout, align 8, !tbaa !69
  %625 = tail call i32 @fflush(ptr noundef %624) #20
  %626 = load ptr, ptr @stderr, align 8, !tbaa !69
  br label %627

627:                                              ; preds = %623, %622
  %628 = phi ptr [ %626, %623 ], [ %620, %622 ]
  %629 = load i32, ptr %617, align 4, !tbaa !102
  %630 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %628, ptr noundef nonnull @.str.62, double noundef 1.000000e+00, i32 noundef %629) #21
  br label %631

631:                                              ; preds = %627, %611
  %632 = add i32 %615, -1
  %633 = icmp sgt i32 %632, -1
  br i1 %633, label %634, label %668, !prof !79

634:                                              ; preds = %631
  %635 = lshr i32 %615, 1
  %636 = uitofp i32 %635 to float
  %637 = uitofp i32 %615 to float
  %638 = zext nneg i32 %632 to i64
  br label %639

639:                                              ; preds = %634, %665
  %640 = phi i64 [ %638, %634 ], [ %666, %665 ]
  %641 = trunc i64 %640 to i32
  %642 = sitofp i32 %641 to float
  %643 = fsub float %642, %636
  %644 = fdiv float %643, %637
  %645 = fmul float %644, 2.000000e+00
  %646 = fadd float %643, 1.000000e+00
  %647 = fdiv float %646, %637
  %648 = fmul float %647, 2.000000e+00
  %649 = fpext float %645 to double
  %650 = fpext float %648 to double
  %651 = getelementptr inbounds i32, ptr %613, i64 %640
  %652 = load i32, ptr %651, align 4, !tbaa !102
  %653 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %525, ptr noundef nonnull @.str.63, double noundef %649, double noundef %650, i32 noundef %652) #20
  %654 = load ptr, ptr @stderr, align 8, !tbaa !69
  %655 = icmp eq ptr %525, %654
  br i1 %655, label %665, label %656, !prof !163

656:                                              ; preds = %639
  br i1 %593, label %661, label %657

657:                                              ; preds = %656
  %658 = load ptr, ptr @stdout, align 8, !tbaa !69
  %659 = tail call i32 @fflush(ptr noundef %658) #20
  %660 = load ptr, ptr @stderr, align 8, !tbaa !69
  br label %661

661:                                              ; preds = %657, %656
  %662 = phi ptr [ %660, %657 ], [ %654, %656 ]
  %663 = load i32, ptr %651, align 4, !tbaa !102
  %664 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %662, ptr noundef nonnull @.str.63, double noundef %649, double noundef %650, i32 noundef %663) #21
  br label %665

665:                                              ; preds = %661, %639
  %666 = add nsw i64 %640, -1
  %667 = icmp sgt i64 %640, 0
  br i1 %667, label %639, label %668, !prof !164, !llvm.loop !165

668:                                              ; preds = %665, %631, %24
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local double @mean(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 !prof !166 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6, !prof !167

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
  %14 = load double, ptr %13, align 8, !tbaa !154
  %15 = fadd double %12, %14
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %5
  br i1 %17, label %6, label %10, !prof !168, !llvm.loop !169
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local double @variance(ptr nocapture noundef readonly %0, double noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !166 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %7, !prof !167

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
  %16 = load double, ptr %15, align 8, !tbaa !154
  %17 = fsub double %16, %1
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %17, double %14)
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %6
  br i1 %20, label %7, label %12, !prof !168, !llvm.loop !170
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local double @covariance(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #13 !prof !171 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %9, !prof !172

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
  %18 = load double, ptr %17, align 8, !tbaa !154
  %19 = fsub double %18, %2
  %20 = getelementptr inbounds double, ptr %1, i64 %15
  %21 = load double, ptr %20, align 8, !tbaa !154
  %22 = fsub double %21, %3
  %23 = tail call double @llvm.fmuladd.f64(double %19, double %22, double %16)
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %9, label %14, !prof !173, !llvm.loop !174
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @read_yuv_file(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly byval(%struct.params) align 8 %2) local_unnamed_addr #2 !prof !120 {
  store i8 0, ptr %1, align 8, !tbaa !130
  %4 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  store i8 0, ptr %4, align 1, !tbaa !109
  %5 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  store i32 2, ptr %5, align 4, !tbaa !112
  %6 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  store i16 0, ptr %6, align 8, !tbaa !131
  %7 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  store i16 0, ptr %7, align 2, !tbaa !124
  %8 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  store i8 0, ptr %8, align 4, !tbaa !132
  %9 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  store i16 0, ptr %9, align 2, !tbaa !133
  %10 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  store i16 0, ptr %10, align 8, !tbaa !134
  %11 = getelementptr inbounds %struct.params, ptr %2, i64 0, i32 17
  %12 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  %14 = load <2 x i32>, ptr %11, align 8, !tbaa !102
  %15 = trunc <2 x i32> %14 to <2 x i16>
  store <2 x i16> %15, ptr %12, align 2, !tbaa !123
  %16 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  store i8 24, ptr %16, align 2, !tbaa !113
  %17 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  store i8 0, ptr %17, align 1, !tbaa !114
  %18 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 15
  store i8 0, ptr %18, align 8, !tbaa !115
  %19 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.69) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load ptr, ptr @stderr, align 8, !tbaa !69
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.70, ptr noundef %0) #21
  tail call void @exit(i32 noundef -1) #25
  unreachable

24:                                               ; preds = %3
  %25 = load i16, ptr %13, align 4, !tbaa !126
  %26 = zext i16 %25 to i64
  %27 = shl nuw nsw i64 %26, 3
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #26
  %29 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 14
  store ptr %28, ptr %29, align 8, !tbaa !127
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load ptr, ptr @stderr, align 8, !tbaa !69
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.38, i64 noundef %27, ptr noundef nonnull @.str.39, i32 noundef 800) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

34:                                               ; preds = %24
  %35 = tail call noalias ptr @malloc(i64 noundef %27) #26
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load ptr, ptr @stderr, align 8, !tbaa !69
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.38, i64 noundef %27, ptr noundef nonnull @.str.39, i32 noundef 801) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

40:                                               ; preds = %34
  %41 = load i16, ptr %12, align 2, !tbaa !128
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
  %52 = load ptr, ptr @stderr, align 8, !tbaa !69
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.38, i64 noundef %42, ptr noundef nonnull @.str.39, i32 noundef 802) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

54:                                               ; preds = %70
  %55 = add nuw nsw i64 %60, 1
  %56 = icmp eq i64 %55, %50
  br i1 %56, label %57, label %58, !llvm.loop !175

57:                                               ; preds = %54
  br i1 %46, label %262, label %79

58:                                               ; preds = %47, %54
  %59 = phi ptr [ %28, %47 ], [ %63, %54 ]
  %60 = phi i64 [ 0, %47 ], [ %55, %54 ]
  %61 = tail call noalias ptr @malloc(i64 noundef %48) #26
  %62 = getelementptr inbounds ptr, ptr %59, i64 %60
  store ptr %61, ptr %62, align 8, !tbaa !69
  %63 = load ptr, ptr %29, align 8, !tbaa !127
  %64 = getelementptr inbounds ptr, ptr %63, i64 %60
  %65 = load ptr, ptr %64, align 8, !tbaa !69
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load ptr, ptr @stderr, align 8, !tbaa !69
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.38, i64 noundef %48, ptr noundef nonnull @.str.39, i32 noundef 804) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

70:                                               ; preds = %58
  %71 = tail call noalias ptr @malloc(i64 noundef %49) #26
  %72 = getelementptr inbounds ptr, ptr %35, i64 %60
  store ptr %71, ptr %72, align 8, !tbaa !69
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %54

74:                                               ; preds = %70
  %75 = load ptr, ptr @stderr, align 8, !tbaa !69
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
  %85 = load i16, ptr %12, align 2, !tbaa !128
  %86 = zext i16 %85 to i32
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %79
  %89 = icmp eq i16 %85, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds ptr, ptr %35, i64 %81
  %92 = load ptr, ptr %91, align 8, !tbaa !69
  %93 = zext i16 %85 to i64
  br label %97

94:                                               ; preds = %79
  %95 = load ptr, ptr @stderr, align 8, !tbaa !69
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.71, ptr noundef %0, i32 noundef %84, i32 noundef %86) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

97:                                               ; preds = %90, %97
  %98 = phi i64 [ 0, %90 ], [ %102, %97 ]
  %99 = getelementptr inbounds i8, ptr %43, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !91
  %101 = getelementptr inbounds %struct.YUV, ptr %92, i64 %98
  store i8 %100, ptr %101, align 1, !tbaa !176
  %102 = add nuw nsw i64 %98, 1
  %103 = icmp eq i64 %102, %93
  br i1 %103, label %104, label %97, !llvm.loop !178

104:                                              ; preds = %97, %88
  %105 = add nuw nsw i64 %81, 1
  %106 = load i16, ptr %13, align 4, !tbaa !126
  %107 = zext i16 %106 to i64
  %108 = icmp ult i64 %105, %107
  br i1 %108, label %79, label %77, !llvm.loop !179

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
  %121 = load i16, ptr %12, align 2, !tbaa !128
  %122 = lshr i16 %121, 1
  %123 = zext nneg i16 %122 to i32
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load ptr, ptr @stderr, align 8, !tbaa !69
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
  %134 = load ptr, ptr %133, align 8, !tbaa !69
  %135 = add nsw i32 %132, -1
  %136 = lshr i32 %135, 1
  %137 = add nuw nsw i32 %136, 1
  %138 = zext nneg i32 %137 to i64
  br label %139

139:                                              ; preds = %131, %139
  %140 = phi i64 [ 0, %131 ], [ %147, %139 ]
  %141 = phi i64 [ 0, %131 ], [ %148, %139 ]
  %142 = getelementptr inbounds i8, ptr %43, i64 %140
  %143 = load i8, ptr %142, align 1, !tbaa !91
  %144 = getelementptr inbounds %struct.YUV, ptr %134, i64 %141, i32 1
  store i8 %143, ptr %144, align 1, !tbaa !180
  %145 = or disjoint i64 %141, 1
  %146 = getelementptr inbounds %struct.YUV, ptr %134, i64 %145, i32 1
  store i8 %143, ptr %146, align 1, !tbaa !180
  %147 = add nuw nsw i64 %140, 1
  %148 = add nuw nsw i64 %141, 2
  %149 = icmp eq i64 %147, %138
  br i1 %149, label %150, label %139, !llvm.loop !181

150:                                              ; preds = %139, %128
  %151 = add nuw nsw i64 %113, 1
  %152 = load i16, ptr %13, align 4, !tbaa !126
  %153 = zext i16 %152 to i64
  %154 = icmp ult i64 %151, %153
  br i1 %154, label %111, label %109, !llvm.loop !182

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
  %171 = load i16, ptr %12, align 2, !tbaa !128
  %172 = lshr i16 %171, 1
  %173 = zext nneg i16 %172 to i32
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %166
  %176 = load ptr, ptr @stderr, align 8, !tbaa !69
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
  %184 = load ptr, ptr %183, align 8, !tbaa !69
  %185 = add nsw i32 %182, -1
  %186 = lshr i32 %185, 1
  %187 = add nuw nsw i32 %186, 1
  %188 = zext nneg i32 %187 to i64
  br label %189

189:                                              ; preds = %181, %189
  %190 = phi i64 [ 0, %181 ], [ %197, %189 ]
  %191 = phi i64 [ 0, %181 ], [ %198, %189 ]
  %192 = getelementptr inbounds i8, ptr %43, i64 %190
  %193 = load i8, ptr %192, align 1, !tbaa !91
  %194 = getelementptr inbounds %struct.YUV, ptr %184, i64 %191, i32 2
  store i8 %193, ptr %194, align 1, !tbaa !183
  %195 = or disjoint i64 %191, 1
  %196 = getelementptr inbounds %struct.YUV, ptr %184, i64 %195, i32 2
  store i8 %193, ptr %196, align 1, !tbaa !183
  %197 = add nuw nsw i64 %190, 1
  %198 = add nuw nsw i64 %191, 2
  %199 = icmp eq i64 %197, %188
  br i1 %199, label %200, label %189, !llvm.loop !184

200:                                              ; preds = %189, %178
  %201 = add nuw nsw i64 %163, 1
  %202 = load i16, ptr %13, align 4, !tbaa !126
  %203 = zext i16 %202 to i64
  %204 = icmp ult i64 %201, %203
  br i1 %204, label %161, label %155, !llvm.loop !185

205:                                              ; preds = %157, %259
  %206 = phi i64 [ 0, %157 ], [ %260, %259 ]
  %207 = phi i64 [ %159, %157 ], [ %208, %259 ]
  %208 = add nsw i64 %207, -1
  br i1 %158, label %259, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds ptr, ptr %35, i64 %208
  %211 = load ptr, ptr %210, align 8, !tbaa !69
  %212 = load ptr, ptr %29, align 8, !tbaa !127
  %213 = getelementptr inbounds ptr, ptr %212, i64 %206
  %214 = load ptr, ptr %213, align 8, !tbaa !69
  br label %215

215:                                              ; preds = %209, %215
  %216 = phi i64 [ 0, %209 ], [ %257, %215 ]
  %217 = getelementptr inbounds %struct.YUV, ptr %211, i64 %216
  %218 = getelementptr inbounds %struct.Pixel, ptr %214, i64 %216
  %219 = getelementptr inbounds %struct.YUV, ptr %211, i64 %216, i32 2
  %220 = load i8, ptr %219, align 1, !tbaa !183
  %221 = zext i8 %220 to i32
  %222 = add nsw i32 %221, -128
  %223 = sitofp i32 %222 to double
  %224 = fmul double %223, -8.120000e-01
  %225 = load <2 x i8>, ptr %217, align 1, !tbaa !91
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
  store i8 %242, ptr %218, align 1, !tbaa !140
  %243 = extractelement <2 x i32> %236, i64 1
  %244 = tail call i32 @llvm.umin.i32(i32 %243, i32 255)
  %245 = trunc i32 %244 to i8
  %246 = extractelement <2 x i1> %240, i64 1
  %247 = select i1 %246, i8 16, i8 %245
  %248 = getelementptr inbounds %struct.Pixel, ptr %214, i64 %216, i32 1
  store i8 %247, ptr %248, align 1, !tbaa !139
  %249 = fmul double %223, 1.596000e+00
  %250 = tail call double @llvm.fmuladd.f64(double %231, double 1.164000e+00, double %249)
  %251 = fptosi double %250 to i32
  %252 = icmp slt i32 %251, 16
  %253 = tail call i32 @llvm.umin.i32(i32 %251, i32 255)
  %254 = trunc i32 %253 to i8
  %255 = select i1 %252, i8 16, i8 %254
  %256 = getelementptr inbounds %struct.Pixel, ptr %214, i64 %216, i32 2
  store i8 %255, ptr %256, align 1, !tbaa !136
  %257 = add nuw nsw i64 %216, 1
  %258 = icmp eq i64 %257, %160
  br i1 %258, label %259, label %215, !llvm.loop !186

259:                                              ; preds = %215, %205
  %260 = add nuw nsw i64 %206, 1
  %261 = icmp eq i64 %260, %159
  br i1 %261, label %262, label %205, !llvm.loop !187

262:                                              ; preds = %259, %45, %57, %77, %109, %155
  %263 = tail call i32 @fclose(ptr noundef nonnull %19) #20
  %264 = load i16, ptr %13, align 4, !tbaa !126
  %265 = icmp eq i16 %264, 0
  br i1 %265, label %274, label %266

266:                                              ; preds = %262, %266
  %267 = phi i64 [ %270, %266 ], [ 0, %262 ]
  %268 = getelementptr inbounds ptr, ptr %35, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !69
  tail call void @free(ptr noundef %269) #22
  %270 = add nuw nsw i64 %267, 1
  %271 = load i16, ptr %13, align 4, !tbaa !126
  %272 = zext i16 %271 to i64
  %273 = icmp ult i64 %270, %272
  br i1 %273, label %266, label %274, !llvm.loop !188

274:                                              ; preds = %266, %262
  tail call void @free(ptr noundef %43) #22
  tail call void @free(ptr noundef %35) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @read_tga_file(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 !prof !121 {
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
  br i1 %12, label %13, label %16, !prof !88

13:                                               ; preds = %2
  %14 = load ptr, ptr @stderr, align 8, !tbaa !69
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.70, ptr noundef %0) #21
  tail call void @exit(i32 noundef -1) #25
  unreachable

16:                                               ; preds = %2
  %17 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %1, align 8, !tbaa !130
  %19 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 1
  store i8 %20, ptr %21, align 1, !tbaa !109
  %22 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %23 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 2
  store i32 %22, ptr %23, align 4, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #19
  %24 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %25 = load i16, ptr %3, align 2
  %26 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 3
  store i16 %25, ptr %26, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #19
  %27 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %28 = load i16, ptr %4, align 2
  %29 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 4
  store i16 %28, ptr %29, align 2, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #19
  %30 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 5
  store i8 %31, ptr %32, align 4, !tbaa !132
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #19
  %33 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %34 = load i16, ptr %5, align 2
  %35 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 6
  store i16 %34, ptr %35, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #19
  %36 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %37 = load i16, ptr %6, align 2
  %38 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 7
  store i16 %37, ptr %38, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #19
  %39 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %40 = load i16, ptr %7, align 2
  %41 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 8
  store i16 %40, ptr %41, align 2, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #19
  %42 = call i64 @fread(ptr noundef nonnull %8, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %11) #20
  %43 = load i16, ptr %8, align 2
  %44 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 9
  store i16 %43, ptr %44, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #19
  %45 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 10
  store i8 %46, ptr %47, align 2, !tbaa !113
  %48 = tail call i32 @fgetc(ptr noundef nonnull %11) #20
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 11
  store i8 %49, ptr %50, align 1, !tbaa !114
  %51 = and i8 %49, 15
  %52 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 15
  store i8 %51, ptr %52, align 8, !tbaa !115
  %53 = load i8, ptr %1, align 8, !tbaa !130
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55, !prof !122

55:                                               ; preds = %16
  %56 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 12
  %57 = zext i8 %53 to i64
  %58 = tail call i64 @fread(ptr noundef nonnull %56, i64 noundef %57, i64 noundef 1, ptr noundef nonnull %11) #20
  br label %59

59:                                               ; preds = %55, %16
  %60 = load i16, ptr %29, align 2, !tbaa !124
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %133, label %62, !prof !122

62:                                               ; preds = %59
  %63 = zext i16 %60 to i64
  %64 = shl nuw nsw i64 %63, 2
  %65 = tail call ptr @calloc(i64 1, i64 %64)
  %66 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 13
  store ptr %65, ptr %66, align 8, !tbaa !125
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load ptr, ptr @stderr, align 8, !tbaa !69
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.38, i64 noundef %64, ptr noundef nonnull @.str.39, i32 noundef 733) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

71:                                               ; preds = %62
  %72 = getelementptr inbounds [2 x i8], ptr %9, i64 0, i64 1
  br label %73

73:                                               ; preds = %71, %127
  %74 = phi ptr [ %65, %71 ], [ %128, %127 ]
  %75 = phi i64 [ 0, %71 ], [ %129, %127 ]
  %76 = load i8, ptr %32, align 4, !tbaa !132
  switch i8 %76, label %105 [
    i8 8, label %77
    i8 16, label %85
  ]

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Pixel, ptr %74, i64 %75, i32 1
  store i8 0, ptr %78, align 1, !tbaa !139
  %79 = getelementptr inbounds %struct.Pixel, ptr %74, i64 %75
  store i8 0, ptr %79, align 1, !tbaa !140
  %80 = getelementptr inbounds %struct.Pixel, ptr %74, i64 %75, i32 3
  store i8 0, ptr %80, align 1, !tbaa !138
  %81 = tail call i32 @fgetc(ptr noundef %11) #20
  %82 = trunc i32 %81 to i8
  %83 = load ptr, ptr %66, align 8, !tbaa !125
  %84 = getelementptr inbounds %struct.Pixel, ptr %83, i64 %75, i32 2
  store i8 %82, ptr %84, align 1, !tbaa !136
  br label %127

85:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #19
  %86 = call i64 @fread(ptr noundef nonnull %9, i64 noundef 2, i64 noundef 1, ptr noundef %11) #20
  %87 = load i8, ptr %9, align 1, !tbaa !91
  %88 = zext i8 %87 to i16
  %89 = load i8, ptr %72, align 1, !tbaa !91
  %90 = zext i8 %89 to i16
  %91 = shl nuw i16 %90, 8
  %92 = or disjoint i16 %91, %88
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #19
  %93 = shl i8 %87, 3
  %94 = load ptr, ptr %66, align 8, !tbaa !125
  %95 = getelementptr inbounds %struct.Pixel, ptr %94, i64 %75
  store i8 %93, ptr %95, align 1, !tbaa !140
  %96 = lshr i16 %92, 2
  %97 = trunc i16 %96 to i8
  %98 = and i8 %97, -8
  %99 = getelementptr inbounds %struct.Pixel, ptr %94, i64 %75, i32 1
  store i8 %98, ptr %99, align 1, !tbaa !139
  %100 = shl i8 %89, 1
  %101 = and i8 %100, -8
  %102 = getelementptr inbounds %struct.Pixel, ptr %94, i64 %75, i32 2
  store i8 %101, ptr %102, align 1, !tbaa !136
  %103 = lshr i8 %89, 7
  %104 = getelementptr inbounds %struct.Pixel, ptr %94, i64 %75, i32 3
  store i8 %103, ptr %104, align 1, !tbaa !138
  br label %127

105:                                              ; preds = %73
  %106 = tail call i32 @fgetc(ptr noundef %11) #20
  %107 = trunc i32 %106 to i8
  %108 = load ptr, ptr %66, align 8, !tbaa !125
  %109 = getelementptr inbounds %struct.Pixel, ptr %108, i64 %75
  store i8 %107, ptr %109, align 1, !tbaa !140
  %110 = tail call i32 @fgetc(ptr noundef %11) #20
  %111 = trunc i32 %110 to i8
  %112 = load ptr, ptr %66, align 8, !tbaa !125
  %113 = getelementptr inbounds %struct.Pixel, ptr %112, i64 %75, i32 1
  store i8 %111, ptr %113, align 1, !tbaa !139
  %114 = tail call i32 @fgetc(ptr noundef %11) #20
  %115 = trunc i32 %114 to i8
  %116 = load ptr, ptr %66, align 8, !tbaa !125
  %117 = getelementptr inbounds %struct.Pixel, ptr %116, i64 %75, i32 2
  store i8 %115, ptr %117, align 1, !tbaa !136
  %118 = load i8, ptr %32, align 4, !tbaa !132
  %119 = icmp eq i8 %118, 32
  br i1 %119, label %120, label %125

120:                                              ; preds = %105
  %121 = tail call i32 @fgetc(ptr noundef %11) #20
  %122 = trunc i32 %121 to i8
  %123 = load ptr, ptr %66, align 8, !tbaa !125
  %124 = getelementptr inbounds %struct.Pixel, ptr %123, i64 %75, i32 3
  store i8 %122, ptr %124, align 1, !tbaa !138
  br label %127

125:                                              ; preds = %105
  %126 = getelementptr inbounds %struct.Pixel, ptr %116, i64 %75, i32 3
  store i8 0, ptr %126, align 1, !tbaa !138
  br label %127

127:                                              ; preds = %77, %120, %125, %85
  %128 = phi ptr [ %83, %77 ], [ %123, %120 ], [ %116, %125 ], [ %94, %85 ]
  %129 = add nuw nsw i64 %75, 1
  %130 = load i16, ptr %29, align 2, !tbaa !124
  %131 = zext i16 %130 to i64
  %132 = icmp ult i64 %129, %131
  br i1 %132, label %73, label %133, !llvm.loop !189

133:                                              ; preds = %127, %59
  %134 = load i16, ptr %44, align 4, !tbaa !126
  %135 = zext i16 %134 to i64
  %136 = shl nuw nsw i64 %135, 3
  %137 = tail call noalias ptr @malloc(i64 noundef %136) #26
  %138 = getelementptr inbounds %struct.TargaImage, ptr %1, i64 0, i32 14
  store ptr %137, ptr %138, align 8, !tbaa !127
  %139 = icmp eq ptr %137, null
  br i1 %139, label %144, label %140, !prof !88

140:                                              ; preds = %133
  %141 = icmp eq i16 %134, 0
  br i1 %141, label %147, label %142, !prof !190

142:                                              ; preds = %140
  %143 = load i16, ptr %41, align 2, !tbaa !128
  br label %149

144:                                              ; preds = %133
  %145 = load ptr, ptr @stderr, align 8, !tbaa !69
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.38, i64 noundef %136, ptr noundef nonnull @.str.39, i32 noundef 743) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

147:                                              ; preds = %169, %140
  %148 = tail call i32 @fclose(ptr noundef %11) #20
  ret void

149:                                              ; preds = %142, %169
  %150 = phi i16 [ %134, %142 ], [ %170, %169 ]
  %151 = phi i16 [ %143, %142 ], [ %171, %169 ]
  %152 = phi ptr [ %137, %142 ], [ %172, %169 ]
  %153 = phi i64 [ 0, %142 ], [ %173, %169 ]
  %154 = zext i16 %151 to i64
  %155 = shl nuw nsw i64 %154, 2
  %156 = tail call noalias ptr @malloc(i64 noundef %155) #26
  %157 = getelementptr inbounds ptr, ptr %152, i64 %153
  store ptr %156, ptr %157, align 8, !tbaa !69
  %158 = load ptr, ptr %138, align 8, !tbaa !127
  %159 = getelementptr inbounds ptr, ptr %158, i64 %153
  %160 = load ptr, ptr %159, align 8, !tbaa !69
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162, !prof !191

162:                                              ; preds = %149
  %163 = icmp eq i16 %151, 0
  br i1 %163, label %169, label %176, !prof !192

164:                                              ; preds = %149
  %165 = load ptr, ptr @stderr, align 8, !tbaa !69
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.38, i64 noundef %155, ptr noundef nonnull @.str.39, i32 noundef 745) #21
  tail call void @exit(i32 noundef 1) #25
  unreachable

167:                                              ; preds = %245
  %168 = load i16, ptr %44, align 4, !tbaa !126
  br label %169

169:                                              ; preds = %167, %162
  %170 = phi i16 [ %168, %167 ], [ %150, %162 ]
  %171 = phi i16 [ %248, %167 ], [ 0, %162 ]
  %172 = phi ptr [ %246, %167 ], [ %158, %162 ]
  %173 = add nuw nsw i64 %153, 1
  %174 = zext i16 %170 to i64
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %149, label %147, !prof !193, !llvm.loop !194

176:                                              ; preds = %162, %245
  %177 = phi ptr [ %246, %245 ], [ %158, %162 ]
  %178 = phi i64 [ %247, %245 ], [ 0, %162 ]
  %179 = load i8, ptr %47, align 2, !tbaa !113
  switch i8 %179, label %215 [
    i8 8, label %180
    i8 16, label %192
  ], !prof !195

180:                                              ; preds = %176
  %181 = getelementptr inbounds ptr, ptr %177, i64 %153
  %182 = load ptr, ptr %181, align 8, !tbaa !69
  %183 = getelementptr inbounds %struct.Pixel, ptr %182, i64 %178, i32 1
  store i8 0, ptr %183, align 1, !tbaa !139
  %184 = getelementptr inbounds %struct.Pixel, ptr %182, i64 %178
  store i8 0, ptr %184, align 1, !tbaa !140
  %185 = getelementptr inbounds %struct.Pixel, ptr %182, i64 %178, i32 3
  store i8 0, ptr %185, align 1, !tbaa !138
  %186 = tail call i32 @fgetc(ptr noundef %11) #20
  %187 = trunc i32 %186 to i8
  %188 = load ptr, ptr %138, align 8, !tbaa !127
  %189 = getelementptr inbounds ptr, ptr %188, i64 %153
  %190 = load ptr, ptr %189, align 8, !tbaa !69
  %191 = getelementptr inbounds %struct.Pixel, ptr %190, i64 %178, i32 2
  store i8 %187, ptr %191, align 1, !tbaa !136
  br label %245

192:                                              ; preds = %176
  %193 = getelementptr inbounds [2 x i8], ptr %10, i64 0, i64 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #19
  %194 = call i64 @fread(ptr noundef nonnull %10, i64 noundef 2, i64 noundef 1, ptr noundef %11) #20
  %195 = load i8, ptr %10, align 1, !tbaa !91
  %196 = zext i8 %195 to i16
  %197 = load i8, ptr %193, align 1, !tbaa !91
  %198 = zext i8 %197 to i16
  %199 = shl nuw i16 %198, 8
  %200 = or disjoint i16 %199, %196
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #19
  %201 = shl i8 %195, 3
  %202 = load ptr, ptr %138, align 8, !tbaa !127
  %203 = getelementptr inbounds ptr, ptr %202, i64 %153
  %204 = load ptr, ptr %203, align 8, !tbaa !69
  %205 = getelementptr inbounds %struct.Pixel, ptr %204, i64 %178
  store i8 %201, ptr %205, align 1, !tbaa !140
  %206 = lshr i16 %200, 2
  %207 = trunc i16 %206 to i8
  %208 = and i8 %207, -8
  %209 = getelementptr inbounds %struct.Pixel, ptr %204, i64 %178, i32 1
  store i8 %208, ptr %209, align 1, !tbaa !139
  %210 = shl i8 %197, 1
  %211 = and i8 %210, -8
  %212 = getelementptr inbounds %struct.Pixel, ptr %204, i64 %178, i32 2
  store i8 %211, ptr %212, align 1, !tbaa !136
  %213 = lshr i8 %197, 7
  %214 = getelementptr inbounds %struct.Pixel, ptr %204, i64 %178, i32 3
  store i8 %213, ptr %214, align 1, !tbaa !138
  br label %245

215:                                              ; preds = %176
  %216 = tail call i32 @fgetc(ptr noundef %11) #20
  %217 = trunc i32 %216 to i8
  %218 = load ptr, ptr %138, align 8, !tbaa !127
  %219 = getelementptr inbounds ptr, ptr %218, i64 %153
  %220 = load ptr, ptr %219, align 8, !tbaa !69
  %221 = getelementptr inbounds %struct.Pixel, ptr %220, i64 %178
  store i8 %217, ptr %221, align 1, !tbaa !140
  %222 = tail call i32 @fgetc(ptr noundef %11) #20
  %223 = trunc i32 %222 to i8
  %224 = load ptr, ptr %138, align 8, !tbaa !127
  %225 = getelementptr inbounds ptr, ptr %224, i64 %153
  %226 = load ptr, ptr %225, align 8, !tbaa !69
  %227 = getelementptr inbounds %struct.Pixel, ptr %226, i64 %178, i32 1
  store i8 %223, ptr %227, align 1, !tbaa !139
  %228 = tail call i32 @fgetc(ptr noundef %11) #20
  %229 = trunc i32 %228 to i8
  %230 = load ptr, ptr %138, align 8, !tbaa !127
  %231 = getelementptr inbounds ptr, ptr %230, i64 %153
  %232 = load ptr, ptr %231, align 8, !tbaa !69
  %233 = getelementptr inbounds %struct.Pixel, ptr %232, i64 %178, i32 2
  store i8 %229, ptr %233, align 1, !tbaa !136
  %234 = load i8, ptr %47, align 2, !tbaa !113
  %235 = icmp eq i8 %234, 32
  br i1 %235, label %236, label %243, !prof !196

236:                                              ; preds = %215
  %237 = tail call i32 @fgetc(ptr noundef %11) #20
  %238 = trunc i32 %237 to i8
  %239 = load ptr, ptr %138, align 8, !tbaa !127
  %240 = getelementptr inbounds ptr, ptr %239, i64 %153
  %241 = load ptr, ptr %240, align 8, !tbaa !69
  %242 = getelementptr inbounds %struct.Pixel, ptr %241, i64 %178, i32 3
  store i8 %238, ptr %242, align 1, !tbaa !138
  br label %245

243:                                              ; preds = %215
  %244 = getelementptr inbounds %struct.Pixel, ptr %232, i64 %178, i32 3
  store i8 0, ptr %244, align 1, !tbaa !138
  br label %245

245:                                              ; preds = %180, %236, %243, %192
  %246 = phi ptr [ %188, %180 ], [ %239, %236 ], [ %230, %243 ], [ %202, %192 ]
  %247 = add nuw nsw i64 %178, 1
  %248 = load i16, ptr %41, align 2, !tbaa !128
  %249 = zext i16 %248 to i64
  %250 = icmp ult i64 %247, %249
  br i1 %250, label %176, label %167, !prof !197, !llvm.loop !198
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!67}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 37113910}
!4 = !{!"MaxCount", i64 10485760}
!5 = !{!"MaxInternalCount", i64 10485760}
!6 = !{!"MaxFunctionCount", i64 163840}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 10485760, i32 3}
!14 = !{i32 100000, i64 10485760, i32 3}
!15 = !{i32 200000, i64 10485760, i32 3}
!16 = !{i32 300000, i64 10485760, i32 3}
!17 = !{i32 400000, i64 10485760, i32 3}
!18 = !{i32 500000, i64 10485760, i32 3}
!19 = !{i32 600000, i64 10485760, i32 3}
!20 = !{i32 700000, i64 10485760, i32 3}
!21 = !{i32 800000, i64 10485760, i32 3}
!22 = !{i32 900000, i64 5242880, i32 4}
!23 = !{i32 950000, i64 5242880, i32 4}
!24 = !{i32 990000, i64 163840, i32 6}
!25 = !{i32 999000, i64 81920, i32 7}
!26 = !{i32 999900, i64 4096, i32 8}
!27 = !{i32 999990, i64 4096, i32 8}
!28 = !{i32 999999, i64 21, i32 9}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!35 = !{ptr @main, ptr @get_version, i64 1}
!36 = !{ptr @main, ptr @fprintf, i64 1}
!37 = !{ptr @main, ptr @free, i64 1}
!38 = !{ptr @main, ptr @strcmp, i64 4}
!39 = !{ptr @main, ptr @printUsage, i64 1}
!40 = !{ptr @main, ptr @exit, i64 1}
!41 = !{ptr @get_version, ptr @spec_strdup, i64 2}
!42 = !{ptr @get_version, ptr @strrchr, i64 1}
!43 = !{ptr @get_version, ptr @free, i64 1}
!44 = !{ptr @spec_strdup, ptr @strlen, i64 6}
!45 = !{ptr @spec_strdup, ptr @malloc, i64 6}
!46 = !{ptr @spec_strdup, ptr @fprintf, i64 1}
!47 = !{ptr @spec_strdup, ptr @exit, i64 1}
!48 = !{ptr @spec_strdup, ptr @strncpy, i64 5}
!49 = !{ptr @load_image_file, ptr @spec_strdup, i64 2}
!50 = !{ptr @load_image_file, ptr @strrchr, i64 3}
!51 = !{ptr @load_image_file, ptr @strcmp, i64 4}
!52 = !{ptr @load_image_file, ptr @free, i64 1}
!53 = !{ptr @load_image_file, ptr @printf, i64 1}
!54 = !{ptr @load_image_file, ptr @printUsage, i64 1}
!55 = !{ptr @load_image_file, ptr @exit, i64 1}
!56 = !{ptr @load_image_file, ptr @read_tga_file, i64 1}
!57 = !{ptr @computeSSIM, ptr @fprintf, i64 3}
!58 = !{ptr @computeSSIM, ptr @mean, i64 14378}
!59 = !{ptr @computeSSIM, ptr @variance, i64 14378}
!60 = !{ptr @computeSSIM, ptr @covariance, i64 7189}
!61 = !{ptr @computeSSIM, ptr @printf, i64 7189}
!62 = !{ptr @read_tga_file, ptr @fopen, i64 2}
!63 = !{ptr @read_tga_file, ptr @fgetc, i64 8835813}
!64 = !{ptr @read_tga_file, ptr @fread, i64 10}
!65 = !{ptr @read_tga_file, ptr @malloc, i64 1152}
!66 = !{ptr @read_tga_file, ptr @fclose, i64 1}
!67 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!68 = !{!"function_entry_count", i64 1}
!69 = !{!70, !70, i64 0}
!70 = !{!"any pointer", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !{!74, !75, i64 112}
!74 = !{!"", !70, i64 0, !70, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !70, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !70, i64 72, !75, i64 80, !75, i64 80, !75, i64 80, !75, i64 80, !75, i64 80, !75, i64 80, !75, i64 80, !75, i64 84, !76, i64 88, !75, i64 96, !76, i64 104, !75, i64 112, !70, i64 120, !75, i64 128, !75, i64 132}
!75 = !{!"int", !71, i64 0}
!76 = !{!"double", !71, i64 0}
!77 = !{!74, !75, i64 128}
!78 = !{!74, !75, i64 132}
!79 = !{!"branch_weights", i32 127, i32 1}
!80 = !{!74, !70, i64 16}
!81 = !{!74, !70, i64 0}
!82 = !{!74, !75, i64 84}
!83 = !{!74, !76, i64 88}
!84 = !{!74, !70, i64 48}
!85 = !{!74, !76, i64 104}
!86 = !{!74, !75, i64 96}
!87 = !{!"branch_weights", i32 1426019325, i32 721464323}
!88 = !{!"branch_weights", i32 1, i32 3}
!89 = !{!"branch_weights", i32 2, i32 2}
!90 = !{!"branch_weights", i32 2, i32 1}
!91 = !{!71, !71, i64 0}
!92 = !{!"branch_weights", i32 65, i32 127}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"branch_weights", i32 1181729034, i32 965754614}
!96 = !{!"branch_weights", i32 1, i32 5}
!97 = !{!"branch_weights", i32 5, i32 4}
!98 = !{!"branch_weights", i32 8, i32 19}
!99 = !{!"branch_weights", i32 -2147483648, i32 0}
!100 = !{!74, !70, i64 120}
!101 = !{!"branch_weights", i32 1, i32 2}
!102 = !{!75, !75, i64 0}
!103 = !{!74, !70, i64 8}
!104 = !{!74, !70, i64 24}
!105 = !{!74, !70, i64 32}
!106 = !{!74, !70, i64 40}
!107 = !{!"branch_weights", i32 4, i32 5}
!108 = !{!74, !70, i64 64}
!109 = !{!110, !71, i64 1}
!110 = !{!"", !71, i64 0, !71, i64 1, !75, i64 4, !111, i64 8, !111, i64 10, !71, i64 12, !111, i64 14, !111, i64 16, !111, i64 18, !111, i64 20, !71, i64 22, !71, i64 23, !71, i64 24, !70, i64 280, !70, i64 288, !71, i64 296}
!111 = !{!"short", !71, i64 0}
!112 = !{!110, !75, i64 4}
!113 = !{!110, !71, i64 22}
!114 = !{!110, !71, i64 23}
!115 = !{!110, !71, i64 296}
!116 = !{!74, !70, i64 72}
!117 = !{!74, !70, i64 56}
!118 = !{!"function_entry_count", i64 6}
!119 = !{!"branch_weights", i32 1, i32 7}
!120 = !{!"function_entry_count", i64 0}
!121 = !{!"function_entry_count", i64 2}
!122 = !{!"branch_weights", i32 3, i32 1}
!123 = !{!111, !111, i64 0}
!124 = !{!110, !111, i64 10}
!125 = !{!110, !70, i64 280}
!126 = !{!110, !111, i64 20}
!127 = !{!110, !70, i64 288}
!128 = !{!110, !111, i64 18}
!129 = distinct !{!129, !94}
!130 = !{!110, !71, i64 0}
!131 = !{!110, !111, i64 8}
!132 = !{!110, !71, i64 12}
!133 = !{!110, !111, i64 14}
!134 = !{!110, !111, i64 16}
!135 = distinct !{!135, !94}
!136 = !{!137, !71, i64 2}
!137 = !{!"", !71, i64 0, !71, i64 1, !71, i64 2, !71, i64 3}
!138 = !{!137, !71, i64 3}
!139 = !{!137, !71, i64 1}
!140 = !{!137, !71, i64 0}
!141 = distinct !{!141, !94}
!142 = !{!"branch_weights", i32 4, i32 3, i32 2}
!143 = !{!"branch_weights", i32 1, i32 127}
!144 = !{!"branch_weights", i32 1, i32 256}
!145 = !{!"branch_weights", i32 16321, i32 127}
!146 = distinct !{!146, !94}
!147 = !{!"branch_weights", i32 1, i32 81921}
!148 = !{!"branch_weights", i32 1, i32 81920}
!149 = !{!"branch_weights", i32 1, i32 655360}
!150 = !{!"branch_weights", i32 81921, i32 1}
!151 = !{!"branch_weights", i32 573441, i32 81920}
!152 = distinct !{!152, !94}
!153 = !{!"branch_weights", i32 1, i32 5242881}
!154 = !{!76, !76, i64 0}
!155 = !{!"branch_weights", i32 1, i32 20971524, i32 2, i32 1}
!156 = !{!"branch_weights", i32 5242881, i32 1}
!157 = !{!"branch_weights", i32 4587521, i32 655360}
!158 = distinct !{!158, !94}
!159 = distinct !{!159, !94}
!160 = distinct !{!160, !94}
!161 = !{!"branch_weights", i32 81665, i32 256}
!162 = distinct !{!162, !94}
!163 = !{!"branch_weights", i32 21, i32 1}
!164 = !{!"branch_weights", i32 1217, i32 127}
!165 = distinct !{!165, !94}
!166 = !{!"function_entry_count", i64 163840}
!167 = !{!"branch_weights", i32 163840, i32 1}
!168 = !{!"branch_weights", i32 163840, i32 10321921}
!169 = distinct !{!169, !94}
!170 = distinct !{!170, !94}
!171 = !{!"function_entry_count", i64 81920}
!172 = !{!"branch_weights", i32 81920, i32 1}
!173 = !{!"branch_weights", i32 81920, i32 5160961}
!174 = distinct !{!174, !94}
!175 = distinct !{!175, !94}
!176 = !{!177, !71, i64 0}
!177 = !{!"", !71, i64 0, !71, i64 1, !71, i64 2}
!178 = distinct !{!178, !94}
!179 = distinct !{!179, !94}
!180 = !{!177, !71, i64 1}
!181 = distinct !{!181, !94}
!182 = distinct !{!182, !94}
!183 = !{!177, !71, i64 2}
!184 = distinct !{!184, !94}
!185 = distinct !{!185, !94}
!186 = distinct !{!186, !94}
!187 = distinct !{!187, !94}
!188 = distinct !{!188, !94}
!189 = distinct !{!189, !94}
!190 = !{!"branch_weights", i32 1, i32 191}
!191 = !{!"branch_weights", i32 1, i32 4097}
!192 = !{!"branch_weights", i32 1, i32 4096}
!193 = !{!"branch_weights", i32 262017, i32 191}
!194 = distinct !{!194, !94}
!195 = !{!"branch_weights", i32 -939523456, i32 320, i32 320}
!196 = !{!"branch_weights", i32 1, i32 10485761}
!197 = !{!"branch_weights", i32 10481665, i32 4096}
!198 = distinct !{!198, !94}
