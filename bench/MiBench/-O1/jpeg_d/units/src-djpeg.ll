; ModuleID = 'src/djpeg.c'
source_filename = "src/djpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@progname = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [6 x i8] c"djpeg\00", align 1
@cdjpeg_message_table = internal constant [44 x ptr] [ptr null, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr null], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@requested_fmt = internal unnamed_addr global i32 0, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported BMP colormap format\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Only 8- and 24-bit BMP files are supported\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Invalid BMP file: bad header length\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Invalid BMP file: biPlanes not equal to 1\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"BMP output must be grayscale or RGB\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Sorry, compressed BMPs not yet supported\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Not a BMP file - does not start with BM\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%ux%u 24-bit BMP image\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%ux%u 8-bit colormapped BMP image\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%ux%u 24-bit OS2 BMP image\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"%ux%u 8-bit colormapped OS2 BMP image\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"GIF output got confused\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Bogus GIF codesize %d\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"GIF output must be grayscale or RGB\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Too few images in GIF file\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Not a GIF file\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"%ux%ux%d GIF image\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"Warning: unexpected GIF version number '%c%c%c'\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Ignoring GIF extension block of type 0x%02x\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Caution: nonsquare pixels in input\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Corrupt data in GIF file\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Bogus char 0x%02x in GIF file, ignoring\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Premature end of GIF image\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Ran out of GIF bits\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"PPM output must be grayscale or RGB\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Nonnumeric data in PPM file\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Not a PPM file\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"%ux%u PGM image\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"%ux%u text PGM image\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"%ux%u PPM image\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"%ux%u text PPM image\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"Unsupported Targa colormap format\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Invalid or unsupported Targa file\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"Targa output must be grayscale or RGB\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"%ux%u RGB Targa image\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"%ux%u grayscale Targa image\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"%ux%u colormapped Targa image\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"Color map file is invalid or of unsupported format\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"Output file format cannot handle %d colormap entries\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"ungetc failed\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"Unrecognized input file format --- perhaps you need -targa\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Unsupported output file format\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Comment, length %ld:\0A\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"colours\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"quantize\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"quantise\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"dct\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal unnamed_addr global i1 false, align 4
@.str.67 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's DJPEG, version %s\0A%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"nosmooth\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"onepass\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"os2\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"rle\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.88 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.89 = private unnamed_addr constant [56 x i8] c"  -colors N      Reduce image to no more than N colors\0A\00", align 1
@.str.90 = private unnamed_addr constant [47 x i8] c"  -fast          Fast, low-quality processing\0A\00", align 1
@.str.91 = private unnamed_addr constant [41 x i8] c"  -grayscale     Force grayscale output\0A\00", align 1
@.str.92 = private unnamed_addr constant [62 x i8] c"  -scale M/N     Scale output image by fraction M/N, eg, 1/8\0A\00", align 1
@.str.93 = private unnamed_addr constant [61 x i8] c"  -bmp           Select BMP output format (Windows style)%s\0A\00", align 1
@.str.94 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.95 = private unnamed_addr constant [45 x i8] c"  -gif           Select GIF output format%s\0A\00", align 1
@.str.96 = private unnamed_addr constant [58 x i8] c"  -os2           Select BMP output format (OS/2 style)%s\0A\00", align 1
@.str.97 = private unnamed_addr constant [59 x i8] c"  -pnm           Select PBMPLUS (PPM/PGM) output format%s\0A\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.99 = private unnamed_addr constant [47 x i8] c"  -targa         Select Targa output format%s\0A\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1
@.str.102 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1
@.str.103 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1
@.str.104 = private unnamed_addr constant [46 x i8] c"  -dither fs     Use F-S dithering (default)\0A\00", align 1
@.str.105 = private unnamed_addr constant [54 x i8] c"  -dither none   Don't use dithering in quantization\0A\00", align 1
@.str.106 = private unnamed_addr constant [63 x i8] c"  -dither ordered  Use ordered dither (medium speed, quality)\0A\00", align 1
@.str.107 = private unnamed_addr constant [57 x i8] c"  -map FILE      Map to colors used in named image file\0A\00", align 1
@.str.108 = private unnamed_addr constant [52 x i8] c"  -nosmooth      Don't use high-quality upsampling\0A\00", align 1
@.str.109 = private unnamed_addr constant [62 x i8] c"  -onepass       Use 1-pass quantization (fast, low quality)\0A\00", align 1
@.str.110 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.111 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.112 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main1(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.jpeg_decompress_struct, align 8
  %4 = alloca %struct.jpeg_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 616, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %4) #8
  %5 = load ptr, ptr %1, align 8, !tbaa !5
  store ptr %5, ptr @progname, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !tbaa !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  store ptr @.str, ptr @progname, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %10, %7
  %12 = call ptr @jpeg_std_error(ptr noundef nonnull %4) #8
  store ptr %12, ptr %3, align 8, !tbaa !10
  call void @jpeg_CreateDecompress(ptr noundef nonnull %3, i32 noundef 61, i64 noundef 616) #8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 11
  store ptr @cdjpeg_message_table, ptr %13, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 12
  store i32 1000, ptr %14, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 13
  store i32 1043, ptr %15, align 4, !tbaa !19
  call void @jpeg_set_marker_processor(ptr noundef nonnull %3, i32 noundef 254, ptr noundef nonnull @COM_handler) #8
  %16 = call fastcc i32 @parse_switches(ptr noundef nonnull %3, i32 noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  %17 = add nsw i32 %0, -1
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %21 = load ptr, ptr @progname, align 8, !tbaa !5
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef %21) #9
  call fastcc void @usage()
  unreachable

23:                                               ; preds = %11
  %24 = icmp slt i32 %16, %0
  br i1 %24, label %25, label %36

25:                                               ; preds = %23
  %26 = sext i32 %16 to i64
  %27 = getelementptr inbounds ptr, ptr %1, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = call noalias ptr @fopen(ptr noundef %28, ptr noundef nonnull @.str.2)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load ptr, ptr @stderr, align 8, !tbaa !5
  %33 = load ptr, ptr @progname, align 8, !tbaa !5
  %34 = load ptr, ptr %27, align 8, !tbaa !5
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef %33, ptr noundef %34) #9
  call void @exit(i32 noundef 1) #10
  unreachable

36:                                               ; preds = %23
  %37 = call ptr @read_stdin() #8
  br label %38

38:                                               ; preds = %25, %36
  %39 = phi ptr [ %29, %25 ], [ %37, %36 ]
  %40 = load ptr, ptr @outfilename, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = call noalias ptr @fopen(ptr noundef nonnull %40, ptr noundef nonnull @.str.4)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load ptr, ptr @stderr, align 8, !tbaa !5
  %47 = load ptr, ptr @progname, align 8, !tbaa !5
  %48 = load ptr, ptr @outfilename, align 8, !tbaa !5
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.3, ptr noundef %47, ptr noundef %48) #9
  call void @exit(i32 noundef 1) #10
  unreachable

50:                                               ; preds = %38
  %51 = call ptr @write_stdout() #8
  br label %52

52:                                               ; preds = %42, %50
  %53 = phi ptr [ %43, %42 ], [ %51, %50 ]
  call void @jpeg_stdio_src(ptr noundef nonnull %3, ptr noundef %39) #8
  %54 = call i32 @jpeg_read_header(ptr noundef nonnull %3, i32 noundef 1) #8
  %55 = call fastcc i32 @parse_switches(ptr noundef nonnull %3, i32 noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  %56 = load i32, ptr @requested_fmt, align 4, !tbaa !20
  switch i32 %56, label %67 [
    i32 0, label %57
    i32 2, label %59
    i32 1, label %61
    i32 3, label %63
    i32 5, label %65
  ]

57:                                               ; preds = %52
  %58 = call ptr @jinit_write_bmp(ptr noundef nonnull %3, i32 noundef 0) #8
  br label %71

59:                                               ; preds = %52
  %60 = call ptr @jinit_write_bmp(ptr noundef nonnull %3, i32 noundef 1) #8
  br label %71

61:                                               ; preds = %52
  %62 = call ptr @jinit_write_gif(ptr noundef nonnull %3) #8
  br label %71

63:                                               ; preds = %52
  %64 = call ptr @jinit_write_ppm(ptr noundef nonnull %3) #8
  br label %71

65:                                               ; preds = %52
  %66 = call ptr @jinit_write_targa(ptr noundef nonnull %3) #8
  br label %71

67:                                               ; preds = %52
  %68 = load ptr, ptr %3, align 8, !tbaa !10
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 5
  store i32 1042, ptr %69, align 8, !tbaa !21
  %70 = load ptr, ptr %68, align 8, !tbaa !22
  call void %70(ptr noundef nonnull %3) #8
  br label %71

71:                                               ; preds = %67, %65, %63, %61, %59, %57
  %72 = phi ptr [ null, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ]
  %73 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %72, i64 0, i32 3
  store ptr %53, ptr %73, align 8, !tbaa !23
  %74 = call i32 @jpeg_start_decompress(ptr noundef nonnull %3) #8
  %75 = load ptr, ptr %72, align 8, !tbaa !25
  call void %75(ptr noundef nonnull %3, ptr noundef nonnull %72) #8
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 33
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 27
  %78 = load i32, ptr %76, align 8, !tbaa !26
  %79 = load i32, ptr %77, align 4, !tbaa !27
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %72, i64 0, i32 4
  %83 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %72, i64 0, i32 5
  %84 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %72, i64 0, i32 1
  br label %85

85:                                               ; preds = %81, %85
  %86 = load ptr, ptr %82, align 8, !tbaa !28
  %87 = load i32, ptr %83, align 8, !tbaa !29
  %88 = call i32 @jpeg_read_scanlines(ptr noundef nonnull %3, ptr noundef %86, i32 noundef %87) #8
  %89 = load ptr, ptr %84, align 8, !tbaa !30
  call void %89(ptr noundef nonnull %3, ptr noundef nonnull %72, i32 noundef %88) #8
  %90 = load i32, ptr %76, align 8, !tbaa !26
  %91 = load i32, ptr %77, align 4, !tbaa !27
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %85, label %93, !llvm.loop !31

93:                                               ; preds = %85, %71
  %94 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %72, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !33
  call void %95(ptr noundef nonnull %3, ptr noundef nonnull %72) #8
  %96 = call i32 @jpeg_finish_decompress(ptr noundef nonnull %3) #8
  call void @jpeg_destroy_decompress(ptr noundef nonnull %3) #8
  %97 = load ptr, ptr @stdin, align 8, !tbaa !5
  %98 = icmp eq ptr %39, %97
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = call i32 @fclose(ptr noundef %39)
  br label %101

101:                                              ; preds = %99, %93
  %102 = load ptr, ptr @stdout, align 8, !tbaa !5
  %103 = icmp eq ptr %53, %102
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = call i32 @fclose(ptr noundef %53)
  br label %106

106:                                              ; preds = %104, %101
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 616, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #2

declare void @jpeg_CreateDecompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @jpeg_set_marker_processor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @COM_handler(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = icmp sgt i32 %4, 0
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !36
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = tail call i32 %13(ptr noundef nonnull %0) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 22, ptr %18, align 8, !tbaa !21
  %19 = load ptr, ptr %17, align 8, !tbaa !22
  tail call void %19(ptr noundef nonnull %0) #8
  br label %20

20:                                               ; preds = %1, %11, %16
  %21 = load i64, ptr %8, align 8, !tbaa !36
  %22 = add i64 %21, -1
  store i64 %22, ptr %8, align 8, !tbaa !36
  %23 = load ptr, ptr %7, align 8, !tbaa !39
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %24, ptr %7, align 8, !tbaa !39
  %25 = load i8, ptr %23, align 1, !tbaa !9
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 8
  %28 = load ptr, ptr %6, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %28, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !36
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %28, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = tail call i32 %34(ptr noundef nonnull %0) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 8, !tbaa !10
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 5
  store i32 22, ptr %39, align 8, !tbaa !21
  %40 = load ptr, ptr %38, align 8, !tbaa !22
  tail call void %40(ptr noundef nonnull %0) #8
  br label %41

41:                                               ; preds = %20, %32, %37
  %42 = load i64, ptr %29, align 8, !tbaa !36
  %43 = add i64 %42, -1
  store i64 %43, ptr %29, align 8, !tbaa !36
  %44 = load ptr, ptr %28, align 8, !tbaa !39
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %45, ptr %28, align 8, !tbaa !39
  %46 = load i8, ptr %44, align 1, !tbaa !9
  %47 = zext i8 %46 to i64
  %48 = or disjoint i64 %27, %47
  br i1 %5, label %49, label %53

49:                                               ; preds = %41
  %50 = add nsw i64 %48, -2
  %51 = load ptr, ptr @stderr, align 8, !tbaa !5
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.47, i64 noundef %50) #9
  br label %53

53:                                               ; preds = %49, %41
  %54 = icmp ugt i64 %48, 2
  br i1 %54, label %55, label %109

55:                                               ; preds = %53
  %56 = add nsw i64 %48, -3
  br label %57

57:                                               ; preds = %55, %105
  %58 = phi i64 [ %107, %105 ], [ %56, %55 ]
  %59 = phi i32 [ %106, %105 ], [ 0, %55 ]
  %60 = load ptr, ptr %6, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %60, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !36
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %60, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !38
  %67 = tail call i32 %66(ptr noundef nonnull %0) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load ptr, ptr %0, align 8, !tbaa !10
  %71 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i64 0, i32 5
  store i32 22, ptr %71, align 8, !tbaa !21
  %72 = load ptr, ptr %70, align 8, !tbaa !22
  tail call void %72(ptr noundef nonnull %0) #8
  br label %73

73:                                               ; preds = %57, %64, %69
  %74 = load i64, ptr %61, align 8, !tbaa !36
  %75 = add i64 %74, -1
  store i64 %75, ptr %61, align 8, !tbaa !36
  %76 = load ptr, ptr %60, align 8, !tbaa !39
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %77, ptr %60, align 8, !tbaa !39
  %78 = load i8, ptr %76, align 1, !tbaa !9
  %79 = zext i8 %78 to i32
  br i1 %5, label %80, label %105

80:                                               ; preds = %73
  switch i8 %78, label %92 [
    i8 13, label %81
    i8 10, label %84
    i8 92, label %89
  ]

81:                                               ; preds = %80
  %82 = load ptr, ptr @stderr, align 8, !tbaa !5
  %83 = tail call i32 @fputc(i32 10, ptr %82)
  br label %105

84:                                               ; preds = %80
  %85 = icmp eq i32 %59, 13
  br i1 %85, label %105, label %86

86:                                               ; preds = %84
  %87 = load ptr, ptr @stderr, align 8, !tbaa !5
  %88 = tail call i32 @fputc(i32 10, ptr %87)
  br label %105

89:                                               ; preds = %80
  %90 = load ptr, ptr @stderr, align 8, !tbaa !5
  %91 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 2, i64 1, ptr %90) #9
  br label %105

92:                                               ; preds = %80
  %93 = tail call ptr @__ctype_b_loc() #11
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = zext i8 %78 to i64
  %96 = getelementptr inbounds i16, ptr %94, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !40
  %98 = and i16 %97, 16384
  %99 = icmp eq i16 %98, 0
  %100 = load ptr, ptr @stderr, align 8, !tbaa !5
  br i1 %99, label %103, label %101

101:                                              ; preds = %92
  %102 = tail call i32 @putc(i32 noundef %79, ptr noundef %100)
  br label %105

103:                                              ; preds = %92
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.50, i32 noundef %79) #9
  br label %105

105:                                              ; preds = %81, %89, %103, %101, %84, %86, %73
  %106 = phi i32 [ %59, %73 ], [ %79, %86 ], [ %79, %84 ], [ %79, %101 ], [ %79, %103 ], [ %79, %89 ], [ %79, %81 ]
  %107 = add nsw i64 %58, -1
  %108 = icmp sgt i64 %58, 0
  br i1 %108, label %57, label %109, !llvm.loop !41

109:                                              ; preds = %105, %53
  br i1 %5, label %110, label %113

110:                                              ; preds = %109
  %111 = load ptr, ptr @stderr, align 8, !tbaa !5
  %112 = tail call i32 @fputc(i32 10, ptr %111)
  br label %113

113:                                              ; preds = %110, %109
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_switches(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i32 3, ptr @requested_fmt, align 4, !tbaa !20
  store ptr null, ptr @outfilename, align 8, !tbaa !5
  %8 = load ptr, ptr %0, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !34
  %10 = icmp sgt i32 %1, 1
  br i1 %10, label %11, label %264

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 22
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 16
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 16
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 16
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 20
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 20
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 20
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 21
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 20
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 22
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 16
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 17
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %27 = icmp eq i32 %3, 0
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 17
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 21
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 11
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 12
  br label %34

34:                                               ; preds = %11, %260
  %35 = phi i32 [ 1, %11 ], [ %262, %260 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %2, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = icmp eq i8 %39, 45
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = icmp slt i32 %35, 1
  br i1 %42, label %43, label %264

43:                                               ; preds = %41
  store ptr null, ptr @outfilename, align 8, !tbaa !5
  br label %260

44:                                               ; preds = %34
  %45 = getelementptr inbounds i8, ptr %38, i64 1
  %46 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.51, i32 noundef 1) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, ptr @requested_fmt, align 4, !tbaa !20
  br label %260

49:                                               ; preds = %44
  %50 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.52, i32 noundef 1) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.53, i32 noundef 1) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.54, i32 noundef 1) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.55, i32 noundef 1) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %58, %55, %52, %49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %62 = add nsw i32 %35, 1
  %63 = icmp slt i32 %62, %1
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  call fastcc void @usage()
  unreachable

65:                                               ; preds = %61
  %66 = sext i32 %62 to i64
  %67 = getelementptr inbounds ptr, ptr %2, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %68, ptr noundef nonnull @.str.56, ptr noundef nonnull %5) #8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  call fastcc void @usage()
  unreachable

72:                                               ; preds = %65
  %73 = load i32, ptr %5, align 4, !tbaa !20
  store i32 %73, ptr %12, align 8, !tbaa !42
  store i32 1, ptr %13, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %260

74:                                               ; preds = %58
  %75 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.57, i32 noundef 2) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %74
  %78 = add nsw i32 %35, 1
  %79 = icmp slt i32 %78, %1
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call fastcc void @usage()
  unreachable

81:                                               ; preds = %77
  %82 = sext i32 %78 to i64
  %83 = getelementptr inbounds ptr, ptr %2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = call i32 @keymatch(ptr noundef %84, ptr noundef nonnull @.str.58, i32 noundef 1) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  store i32 0, ptr %14, align 8, !tbaa !44
  br label %260

88:                                               ; preds = %81
  %89 = load ptr, ptr %83, align 8, !tbaa !5
  %90 = call i32 @keymatch(ptr noundef %89, ptr noundef nonnull @.str.59, i32 noundef 2) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  store i32 1, ptr %15, align 8, !tbaa !44
  br label %260

93:                                               ; preds = %88
  %94 = load ptr, ptr %83, align 8, !tbaa !5
  %95 = call i32 @keymatch(ptr noundef %94, ptr noundef nonnull @.str.60, i32 noundef 2) #8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store i32 2, ptr %16, align 8, !tbaa !44
  br label %260

98:                                               ; preds = %93
  call fastcc void @usage()
  unreachable

99:                                               ; preds = %74
  %100 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.61, i32 noundef 2) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %99
  %103 = add nsw i32 %35, 1
  %104 = icmp slt i32 %103, %1
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  call fastcc void @usage()
  unreachable

106:                                              ; preds = %102
  %107 = sext i32 %103 to i64
  %108 = getelementptr inbounds ptr, ptr %2, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !5
  %110 = call i32 @keymatch(ptr noundef %109, ptr noundef nonnull @.str.62, i32 noundef 2) #8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  store i32 2, ptr %17, align 8, !tbaa !45
  br label %260

113:                                              ; preds = %106
  %114 = load ptr, ptr %108, align 8, !tbaa !5
  %115 = call i32 @keymatch(ptr noundef %114, ptr noundef nonnull @.str.63, i32 noundef 2) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  store i32 0, ptr %18, align 8, !tbaa !45
  br label %260

118:                                              ; preds = %113
  %119 = load ptr, ptr %108, align 8, !tbaa !5
  %120 = call i32 @keymatch(ptr noundef %119, ptr noundef nonnull @.str.64, i32 noundef 2) #8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  store i32 1, ptr %19, align 8, !tbaa !45
  br label %260

123:                                              ; preds = %118
  call fastcc void @usage()
  unreachable

124:                                              ; preds = %99
  %125 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.65, i32 noundef 1) #8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.66, i32 noundef 1) #8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %127, %124
  %131 = load i1, ptr @parse_switches.printed_version, align 4
  br i1 %131, label %135, label %132

132:                                              ; preds = %130
  %133 = load ptr, ptr @stderr, align 8, !tbaa !5
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #9
  store i1 true, ptr @parse_switches.printed_version, align 4
  br label %135

135:                                              ; preds = %132, %130
  %136 = load ptr, ptr %0, align 8, !tbaa !10
  %137 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %136, i64 0, i32 7
  %138 = load i32, ptr %137, align 4, !tbaa !34
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr %137, align 4, !tbaa !34
  br label %260

140:                                              ; preds = %127
  %141 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.59, i32 noundef 1) #8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  store i32 0, ptr %20, align 4, !tbaa !46
  store i32 1, ptr %21, align 8, !tbaa !45
  %144 = load i32, ptr %22, align 4, !tbaa !43
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 216, ptr %23, align 8, !tbaa !42
  br label %147

147:                                              ; preds = %146, %143
  store i32 1, ptr %24, align 8, !tbaa !44
  store i32 0, ptr %25, align 4, !tbaa !47
  br label %260

148:                                              ; preds = %140
  %149 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.70, i32 noundef 1) #8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  store i32 1, ptr @requested_fmt, align 4, !tbaa !20
  br label %260

152:                                              ; preds = %148
  %153 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.71, i32 noundef 2) #8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.72, i32 noundef 2) #8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155, %152
  store i32 1, ptr %26, align 8, !tbaa !48
  br label %260

159:                                              ; preds = %155
  %160 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.73, i32 noundef 3) #8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %181, label %162

162:                                              ; preds = %159
  %163 = add nsw i32 %35, 1
  %164 = icmp slt i32 %163, %1
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  call fastcc void @usage()
  unreachable

166:                                              ; preds = %162
  br i1 %27, label %260, label %167

167:                                              ; preds = %166
  %168 = sext i32 %163 to i64
  %169 = getelementptr inbounds ptr, ptr %2, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !5
  %171 = call noalias ptr @fopen(ptr noundef %170, ptr noundef nonnull @.str.2)
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = getelementptr inbounds ptr, ptr %2, i64 %168
  %175 = load ptr, ptr @stderr, align 8, !tbaa !5
  %176 = load ptr, ptr @progname, align 8, !tbaa !5
  %177 = load ptr, ptr %174, align 8, !tbaa !5
  %178 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef nonnull @.str.3, ptr noundef %176, ptr noundef %177) #9
  call void @exit(i32 noundef 1) #10
  unreachable

179:                                              ; preds = %167
  call void @read_color_map(ptr noundef nonnull %0, ptr noundef nonnull %171) #8
  %180 = call i32 @fclose(ptr noundef nonnull %171)
  store i32 1, ptr %28, align 4, !tbaa !43
  br label %260

181:                                              ; preds = %159
  %182 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.74, i32 noundef 3) #8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %207, label %184

184:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 120, ptr %7, align 1, !tbaa !9
  %185 = add nsw i32 %35, 1
  %186 = icmp slt i32 %185, %1
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  call fastcc void @usage()
  unreachable

188:                                              ; preds = %184
  %189 = sext i32 %185 to i64
  %190 = getelementptr inbounds ptr, ptr %2, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !5
  %192 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %191, ptr noundef nonnull @.str.75, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %193 = icmp slt i32 %192, 1
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  call fastcc void @usage()
  unreachable

195:                                              ; preds = %188
  %196 = load i8, ptr %7, align 1
  %197 = and i8 %196, -33
  %198 = icmp eq i8 %197, 77
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i64, ptr %6, align 8, !tbaa !49
  %201 = mul nsw i64 %200, 1000
  store i64 %201, ptr %6, align 8, !tbaa !49
  br label %202

202:                                              ; preds = %195, %199
  %203 = load i64, ptr %6, align 8, !tbaa !49
  %204 = mul nsw i64 %203, 1000
  %205 = load ptr, ptr %29, align 8, !tbaa !50
  %206 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %205, i64 0, i32 11
  store i64 %204, ptr %206, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %260

207:                                              ; preds = %181
  %208 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.76, i32 noundef 3) #8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %207
  store i32 0, ptr %30, align 4, !tbaa !47
  br label %260

211:                                              ; preds = %207
  %212 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.77, i32 noundef 3) #8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %211
  store i32 0, ptr %31, align 4, !tbaa !46
  br label %260

215:                                              ; preds = %211
  %216 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.78, i32 noundef 3) #8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %215
  store i32 2, ptr @requested_fmt, align 4, !tbaa !20
  br label %260

219:                                              ; preds = %215
  %220 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.79, i32 noundef 4) #8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %219
  %223 = add nsw i32 %35, 1
  %224 = icmp slt i32 %223, %1
  br i1 %224, label %226, label %225

225:                                              ; preds = %222
  call fastcc void @usage()
  unreachable

226:                                              ; preds = %222
  %227 = sext i32 %223 to i64
  %228 = getelementptr inbounds ptr, ptr %2, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !5
  store ptr %229, ptr @outfilename, align 8, !tbaa !5
  br label %260

230:                                              ; preds = %219
  %231 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.80, i32 noundef 1) #8
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.81, i32 noundef 1) #8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %233, %230
  store i32 3, ptr @requested_fmt, align 4, !tbaa !20
  br label %260

237:                                              ; preds = %233
  %238 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.82, i32 noundef 1) #8
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %237
  store i32 4, ptr @requested_fmt, align 4, !tbaa !20
  br label %260

241:                                              ; preds = %237
  %242 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.83, i32 noundef 1) #8
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %255, label %244

244:                                              ; preds = %241
  %245 = add nsw i32 %35, 1
  %246 = icmp slt i32 %245, %1
  br i1 %246, label %248, label %247

247:                                              ; preds = %244
  call fastcc void @usage()
  unreachable

248:                                              ; preds = %244
  %249 = sext i32 %245 to i64
  %250 = getelementptr inbounds ptr, ptr %2, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !5
  %252 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %251, ptr noundef nonnull @.str.84, ptr noundef nonnull %32, ptr noundef nonnull %33) #8
  %253 = icmp eq i32 %252, 2
  br i1 %253, label %260, label %254

254:                                              ; preds = %248
  call fastcc void @usage()
  unreachable

255:                                              ; preds = %241
  %256 = call i32 @keymatch(ptr noundef nonnull %45, ptr noundef nonnull @.str.85, i32 noundef 1) #8
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %255
  store i32 5, ptr @requested_fmt, align 4, !tbaa !20
  br label %260

259:                                              ; preds = %255
  call fastcc void @usage()
  unreachable

260:                                              ; preds = %48, %92, %97, %87, %135, %151, %179, %166, %210, %218, %236, %248, %258, %240, %226, %214, %202, %158, %147, %112, %122, %117, %72, %43
  %261 = phi i32 [ %35, %43 ], [ %35, %48 ], [ %62, %72 ], [ %78, %87 ], [ %78, %92 ], [ %78, %97 ], [ %103, %112 ], [ %103, %117 ], [ %103, %122 ], [ %35, %135 ], [ %35, %147 ], [ %35, %151 ], [ %35, %158 ], [ %163, %179 ], [ %163, %166 ], [ %185, %202 ], [ %35, %210 ], [ %35, %214 ], [ %35, %218 ], [ %223, %226 ], [ %35, %236 ], [ %35, %240 ], [ %245, %248 ], [ %35, %258 ]
  %262 = add nsw i32 %261, 1
  %263 = icmp slt i32 %262, %1
  br i1 %263, label %34, label %264, !llvm.loop !53

264:                                              ; preds = %260, %41, %4
  %265 = phi i32 [ 1, %4 ], [ %262, %260 ], [ %35, %41 ]
  ret i32 %265
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @usage() unnamed_addr #4 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %2 = load ptr, ptr @progname, align 8, !tbaa !5
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.86, ptr noundef %2) #9
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %4) #9
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %6) #9
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %8) #9
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %10) #9
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %13 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %12) #9
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %14) #9
  %16 = load ptr, ptr @stderr, align 8, !tbaa !5
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #9
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #9
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #9
  %22 = load ptr, ptr @stderr, align 8, !tbaa !5
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #9
  %24 = load ptr, ptr @stderr, align 8, !tbaa !5
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #9
  %26 = load ptr, ptr @stderr, align 8, !tbaa !5
  %27 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %26) #9
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #9
  %30 = load ptr, ptr @stderr, align 8, !tbaa !5
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #9
  %32 = load ptr, ptr @stderr, align 8, !tbaa !5
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #9
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %35 = tail call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %34) #9
  %36 = load ptr, ptr @stderr, align 8, !tbaa !5
  %37 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %36) #9
  %38 = load ptr, ptr @stderr, align 8, !tbaa !5
  %39 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %38) #9
  %40 = load ptr, ptr @stderr, align 8, !tbaa !5
  %41 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %40) #9
  %42 = load ptr, ptr @stderr, align 8, !tbaa !5
  %43 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %42) #9
  %44 = load ptr, ptr @stderr, align 8, !tbaa !5
  %45 = tail call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %44) #9
  %46 = load ptr, ptr @stderr, align 8, !tbaa !5
  %47 = tail call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %46) #9
  %48 = load ptr, ptr @stderr, align 8, !tbaa !5
  %49 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %48) #9
  %50 = load ptr, ptr @stderr, align 8, !tbaa !5
  %51 = tail call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %50) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare ptr @read_stdin() local_unnamed_addr #2

declare ptr @write_stdout() local_unnamed_addr #2

declare void @jpeg_stdio_src(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @jpeg_read_header(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @jinit_write_bmp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @jinit_write_gif(ptr noundef) local_unnamed_addr #2

declare ptr @jinit_write_ppm(ptr noundef) local_unnamed_addr #2

declare ptr @jinit_write_targa(ptr noundef) local_unnamed_addr #2

declare i32 @jpeg_start_decompress(ptr noundef) local_unnamed_addr #2

declare i32 @jpeg_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @jpeg_finish_decompress(ptr noundef) local_unnamed_addr #2

declare void @jpeg_destroy_decompress(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare i32 @keymatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare void @read_color_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(none) }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !6, i64 0}
!11 = !{!"jpeg_decompress_struct", !6, i64 0, !6, i64 8, !6, i64 16, !12, i64 24, !12, i64 28, !6, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !13, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !6, i64 152, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !6, i64 184, !7, i64 192, !7, i64 224, !7, i64 256, !12, i64 288, !6, i64 296, !12, i64 304, !12, i64 308, !7, i64 312, !7, i64 328, !7, i64 344, !12, i64 360, !12, i64 364, !7, i64 368, !14, i64 370, !14, i64 372, !12, i64 376, !7, i64 380, !12, i64 384, !12, i64 388, !12, i64 392, !12, i64 396, !12, i64 400, !6, i64 408, !12, i64 416, !7, i64 424, !12, i64 456, !12, i64 460, !12, i64 464, !7, i64 468, !12, i64 508, !12, i64 512, !12, i64 516, !12, i64 520, !12, i64 524, !6, i64 528, !6, i64 536, !6, i64 544, !6, i64 552, !6, i64 560, !6, i64 568, !6, i64 576, !6, i64 584, !6, i64 592, !6, i64 600, !6, i64 608}
!12 = !{!"int", !7, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!16, !6, i64 152}
!16 = !{!"jpeg_error_mgr", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !12, i64 40, !7, i64 44, !12, i64 124, !17, i64 128, !6, i64 136, !12, i64 144, !6, i64 152, !12, i64 160, !12, i64 164}
!17 = !{!"long", !7, i64 0}
!18 = !{!16, !12, i64 160}
!19 = !{!16, !12, i64 164}
!20 = !{!12, !12, i64 0}
!21 = !{!16, !12, i64 40}
!22 = !{!16, !6, i64 0}
!23 = !{!24, !6, i64 24}
!24 = !{!"djpeg_dest_struct", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !12, i64 40}
!25 = !{!24, !6, i64 0}
!26 = !{!11, !12, i64 160}
!27 = !{!11, !12, i64 132}
!28 = !{!24, !6, i64 32}
!29 = !{!24, !12, i64 40}
!30 = !{!24, !6, i64 8}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!24, !6, i64 16}
!34 = !{!16, !12, i64 124}
!35 = !{!11, !6, i64 32}
!36 = !{!37, !17, i64 8}
!37 = !{!"jpeg_source_mgr", !6, i64 0, !17, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!38 = !{!37, !6, i64 24}
!39 = !{!37, !6, i64 0}
!40 = !{!14, !14, i64 0}
!41 = distinct !{!41, !32}
!42 = !{!11, !12, i64 112}
!43 = !{!11, !12, i64 100}
!44 = !{!11, !12, i64 88}
!45 = !{!11, !12, i64 104}
!46 = !{!11, !12, i64 108}
!47 = !{!11, !12, i64 92}
!48 = !{!11, !12, i64 56}
!49 = !{!17, !17, i64 0}
!50 = !{!11, !6, i64 8}
!51 = !{!52, !17, i64 88}
!52 = !{!"jpeg_memory_mgr", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !17, i64 88}
!53 = distinct !{!53, !32}
