; ModuleID = 'src/cjpeg.c'
source_filename = "src/cjpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@progname = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cjpeg\00", align 1
@cdjpeg_message_table = internal constant [44 x ptr] [ptr null, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr null], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
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
@is_targa = internal unnamed_addr global i1 false, align 4
@.str.47 = private unnamed_addr constant [11 x i8] c"arithmetic\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"%s: sorry, arithmetic coding not supported\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"dct\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal unnamed_addr global i1 false, align 4
@.str.56 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's CJPEG, version %s\0A%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"optimise\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"qslots\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"qtables\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"scans\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.78 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.79 = private unnamed_addr constant [69 x i8] c"  -quality N     Compression quality (0..100; 5-95 is useful range)\0A\00", align 1
@.str.80 = private unnamed_addr constant [46 x i8] c"  -grayscale     Create monochrome JPEG file\0A\00", align 1
@.str.81 = private unnamed_addr constant [78 x i8] c"  -optimize      Optimize Huffman table (smaller file, but slow compression)\0A\00", align 1
@.str.82 = private unnamed_addr constant [47 x i8] c"  -progressive   Create progressive JPEG file\0A\00", align 1
@.str.83 = private unnamed_addr constant [66 x i8] c"  -targa         Input file is Targa format (usually not needed)\0A\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.87 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1
@.str.88 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.89 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1
@.str.90 = private unnamed_addr constant [68 x i8] c"  -restart N     Set restart interval in rows, or in blocks with B\0A\00", align 1
@.str.91 = private unnamed_addr constant [63 x i8] c"  -smooth N      Smooth dithered input (N=1..100 is strength)\0A\00", align 1
@.str.92 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"Switches for wizards:\0A\00", align 1
@.str.96 = private unnamed_addr constant [40 x i8] c"  -baseline      Force baseline output\0A\00", align 1
@.str.97 = private unnamed_addr constant [56 x i8] c"  -qtables file  Use quantization tables given in file\0A\00", align 1
@.str.98 = private unnamed_addr constant [56 x i8] c"  -qslots N[,...]    Set component quantization tables\0A\00", align 1
@.str.99 = private unnamed_addr constant [53 x i8] c"  -sample HxV[,...]  Set component sampling factors\0A\00", align 1
@.str.100 = private unnamed_addr constant [57 x i8] c"  -scans file    Create multi-scan JPEG per script file\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main1(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.jpeg_compress_struct, align 8
  %4 = alloca %struct.jpeg_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 496, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %4) #7
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
  %12 = call ptr @jpeg_std_error(ptr noundef nonnull %4) #7
  store ptr %12, ptr %3, align 8, !tbaa !10
  call void @jpeg_CreateCompress(ptr noundef nonnull %3, i32 noundef 61, i64 noundef 496) #7
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 11
  store ptr @cdjpeg_message_table, ptr %13, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 12
  store i32 1000, ptr %14, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 13
  store i32 1043, ptr %15, align 4, !tbaa !19
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 9
  store i32 2, ptr %16, align 4, !tbaa !20
  call void @jpeg_set_defaults(ptr noundef nonnull %3) #7
  %17 = call fastcc i32 @parse_switches(ptr noundef nonnull %3, i32 noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  %18 = add nsw i32 %0, -1
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load ptr, ptr @stderr, align 8, !tbaa !5
  %22 = load ptr, ptr @progname, align 8, !tbaa !5
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.1, ptr noundef %22) #8
  call fastcc void @usage()
  unreachable

24:                                               ; preds = %11
  %25 = icmp slt i32 %17, %0
  br i1 %25, label %26, label %37

26:                                               ; preds = %24
  %27 = sext i32 %17 to i64
  %28 = getelementptr inbounds ptr, ptr %1, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = call noalias ptr @fopen(ptr noundef %29, ptr noundef nonnull @.str.2)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load ptr, ptr @stderr, align 8, !tbaa !5
  %34 = load ptr, ptr @progname, align 8, !tbaa !5
  %35 = load ptr, ptr %28, align 8, !tbaa !5
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef %34, ptr noundef %35) #8
  call void @exit(i32 noundef 1) #9
  unreachable

37:                                               ; preds = %24
  %38 = call ptr @read_stdin() #7
  br label %39

39:                                               ; preds = %26, %37
  %40 = phi ptr [ %30, %26 ], [ %38, %37 ]
  %41 = load ptr, ptr @outfilename, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = call noalias ptr @fopen(ptr noundef nonnull %41, ptr noundef nonnull @.str.4)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load ptr, ptr @stderr, align 8, !tbaa !5
  %48 = load ptr, ptr @progname, align 8, !tbaa !5
  %49 = load ptr, ptr @outfilename, align 8, !tbaa !5
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.3, ptr noundef %48, ptr noundef %49) #8
  call void @exit(i32 noundef 1) #9
  unreachable

51:                                               ; preds = %39
  %52 = call ptr @write_stdout() #7
  br label %53

53:                                               ; preds = %43, %51
  %54 = phi ptr [ %44, %43 ], [ %52, %51 ]
  %55 = load i1, ptr @is_targa, align 4
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call ptr @jinit_read_targa(ptr noundef nonnull %3) #7
  br label %85

58:                                               ; preds = %53
  %59 = call i32 @getc(ptr noundef %40)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load ptr, ptr %3, align 8, !tbaa !10
  %63 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 5
  store i32 41, ptr %63, align 8, !tbaa !21
  %64 = load ptr, ptr %62, align 8, !tbaa !22
  call void %64(ptr noundef nonnull %3) #7
  br label %65

65:                                               ; preds = %61, %58
  %66 = call i32 @ungetc(i32 noundef %59, ptr noundef %40)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load ptr, ptr %3, align 8, !tbaa !10
  %70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %69, i64 0, i32 5
  store i32 1040, ptr %70, align 8, !tbaa !21
  %71 = load ptr, ptr %69, align 8, !tbaa !22
  call void %71(ptr noundef nonnull %3) #7
  br label %72

72:                                               ; preds = %68, %65
  switch i32 %59, label %81 [
    i32 66, label %73
    i32 71, label %75
    i32 80, label %77
    i32 0, label %79
  ]

73:                                               ; preds = %72
  %74 = call ptr @jinit_read_bmp(ptr noundef nonnull %3) #7
  br label %85

75:                                               ; preds = %72
  %76 = call ptr @jinit_read_gif(ptr noundef nonnull %3) #7
  br label %85

77:                                               ; preds = %72
  %78 = call ptr @jinit_read_ppm(ptr noundef nonnull %3) #7
  br label %85

79:                                               ; preds = %72
  %80 = call ptr @jinit_read_targa(ptr noundef nonnull %3) #7
  br label %85

81:                                               ; preds = %72
  %82 = load ptr, ptr %3, align 8, !tbaa !10
  %83 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i64 0, i32 5
  store i32 1041, ptr %83, align 8, !tbaa !21
  %84 = load ptr, ptr %82, align 8, !tbaa !22
  call void %84(ptr noundef nonnull %3) #7
  br label %85

85:                                               ; preds = %56, %73, %75, %77, %79, %81
  %86 = phi ptr [ %57, %56 ], [ null, %81 ], [ %80, %79 ], [ %78, %77 ], [ %76, %75 ], [ %74, %73 ]
  %87 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %86, i64 0, i32 3
  store ptr %40, ptr %87, align 8, !tbaa !23
  %88 = load ptr, ptr %86, align 8, !tbaa !25
  call void %88(ptr noundef nonnull %3, ptr noundef nonnull %86) #7
  call void @jpeg_default_colorspace(ptr noundef nonnull %3) #7
  %89 = call fastcc i32 @parse_switches(ptr noundef nonnull %3, i32 noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  call void @jpeg_stdio_dest(ptr noundef nonnull %3, ptr noundef %54) #7
  call void @jpeg_start_compress(ptr noundef nonnull %3, i32 noundef 1) #7
  %90 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 36
  %91 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 7
  %92 = load i32, ptr %90, align 8, !tbaa !26
  %93 = load i32, ptr %91, align 4, !tbaa !27
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %86, i64 0, i32 1
  %97 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %86, i64 0, i32 4
  br label %98

98:                                               ; preds = %95, %98
  %99 = load ptr, ptr %96, align 8, !tbaa !28
  %100 = call i32 %99(ptr noundef nonnull %3, ptr noundef nonnull %86) #7
  %101 = load ptr, ptr %97, align 8, !tbaa !29
  %102 = call i32 @jpeg_write_scanlines(ptr noundef nonnull %3, ptr noundef %101, i32 noundef %100) #7
  %103 = load i32, ptr %90, align 8, !tbaa !26
  %104 = load i32, ptr %91, align 4, !tbaa !27
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %98, label %106, !llvm.loop !30

106:                                              ; preds = %98, %85
  %107 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %86, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !32
  call void %108(ptr noundef nonnull %3, ptr noundef nonnull %86) #7
  call void @jpeg_finish_compress(ptr noundef nonnull %3) #7
  call void @jpeg_destroy_compress(ptr noundef nonnull %3) #7
  %109 = load ptr, ptr @stdin, align 8, !tbaa !5
  %110 = icmp eq ptr %40, %109
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = call i32 @fclose(ptr noundef %40)
  br label %113

113:                                              ; preds = %111, %106
  %114 = load ptr, ptr @stdout, align 8, !tbaa !5
  %115 = icmp eq ptr %54, %114
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = call i32 @fclose(ptr noundef %54)
  br label %118

118:                                              ; preds = %116, %113
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 496, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #2

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_switches(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 75, ptr %5, align 4, !tbaa !33
  store i1 false, ptr @is_targa, align 4
  store ptr null, ptr @outfilename, align 8, !tbaa !5
  %11 = load ptr, ptr %0, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 7
  store i32 0, ptr %12, align 4, !tbaa !34
  %13 = icmp sgt i32 %1, 1
  br i1 %13, label %14, label %281

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 30
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 30
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  br label %24

24:                                               ; preds = %14, %260
  %25 = phi ptr [ null, %14 ], [ %268, %260 ]
  %26 = phi ptr [ null, %14 ], [ %267, %260 ]
  %27 = phi ptr [ null, %14 ], [ %266, %260 ]
  %28 = phi ptr [ null, %14 ], [ %265, %260 ]
  %29 = phi i32 [ 0, %14 ], [ %264, %260 ]
  %30 = phi i32 [ 0, %14 ], [ %263, %260 ]
  %31 = phi i32 [ 100, %14 ], [ %262, %260 ]
  %32 = phi i32 [ 1, %14 ], [ %269, %260 ]
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = load i8, ptr %35, align 1, !tbaa !9
  %37 = icmp eq i8 %36, 45
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = icmp slt i32 %32, 1
  br i1 %39, label %40, label %271

40:                                               ; preds = %38
  store ptr null, ptr @outfilename, align 8, !tbaa !5
  br label %260

41:                                               ; preds = %24
  %42 = getelementptr inbounds i8, ptr %35, i64 1
  %43 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.47, i32 noundef 1) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr @stderr, align 8, !tbaa !5
  %47 = load ptr, ptr @progname, align 8, !tbaa !5
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.48, ptr noundef %47) #8
  call void @exit(i32 noundef 1) #9
  unreachable

49:                                               ; preds = %41
  %50 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.49, i32 noundef 1) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %260

52:                                               ; preds = %49
  %53 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.50, i32 noundef 2) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %52
  %56 = add nsw i32 %32, 1
  %57 = icmp slt i32 %56, %1
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call fastcc void @usage()
  unreachable

59:                                               ; preds = %55
  %60 = sext i32 %56 to i64
  %61 = getelementptr inbounds ptr, ptr %2, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = call i32 @keymatch(ptr noundef %62, ptr noundef nonnull @.str.51, i32 noundef 1) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i32 0, ptr %15, align 4, !tbaa !35
  br label %260

66:                                               ; preds = %59
  %67 = load ptr, ptr %61, align 8, !tbaa !5
  %68 = call i32 @keymatch(ptr noundef %67, ptr noundef nonnull @.str.52, i32 noundef 2) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 1, ptr %16, align 4, !tbaa !35
  br label %260

71:                                               ; preds = %66
  %72 = load ptr, ptr %61, align 8, !tbaa !5
  %73 = call i32 @keymatch(ptr noundef %72, ptr noundef nonnull @.str.53, i32 noundef 2) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 2, ptr %17, align 4, !tbaa !35
  br label %260

76:                                               ; preds = %71
  call fastcc void @usage()
  unreachable

77:                                               ; preds = %52
  %78 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.54, i32 noundef 1) #7
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.55, i32 noundef 1) #7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %80, %77
  %84 = load i1, ptr @parse_switches.printed_version, align 4
  br i1 %84, label %88, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr @stderr, align 8, !tbaa !5
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #8
  store i1 true, ptr @parse_switches.printed_version, align 4
  br label %88

88:                                               ; preds = %85, %83
  %89 = load ptr, ptr %0, align 8, !tbaa !10
  %90 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i64 0, i32 7
  %91 = load i32, ptr %90, align 4, !tbaa !34
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %90, align 4, !tbaa !34
  br label %260

93:                                               ; preds = %80
  %94 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.59, i32 noundef 2) #7
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.60, i32 noundef 2) #7
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96, %93
  call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 1) #7
  br label %260

100:                                              ; preds = %96
  %101 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.61, i32 noundef 3) #7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %126, label %103

103:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 120, ptr %7, align 1, !tbaa !9
  %104 = add nsw i32 %32, 1
  %105 = icmp slt i32 %104, %1
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  call fastcc void @usage()
  unreachable

107:                                              ; preds = %103
  %108 = sext i32 %104 to i64
  %109 = getelementptr inbounds ptr, ptr %2, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %110, ptr noundef nonnull @.str.62, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  call fastcc void @usage()
  unreachable

114:                                              ; preds = %107
  %115 = load i8, ptr %7, align 1
  %116 = and i8 %115, -33
  %117 = icmp eq i8 %116, 77
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i64, ptr %6, align 8, !tbaa !36
  %120 = mul nsw i64 %119, 1000
  store i64 %120, ptr %6, align 8, !tbaa !36
  br label %121

121:                                              ; preds = %114, %118
  %122 = load i64, ptr %6, align 8, !tbaa !36
  %123 = mul nsw i64 %122, 1000
  %124 = load ptr, ptr %18, align 8, !tbaa !37
  %125 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %124, i64 0, i32 11
  store i64 %123, ptr %125, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %260

126:                                              ; preds = %100
  %127 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.63, i32 noundef 1) #7
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.64, i32 noundef 1) #7
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129, %126
  store i32 1, ptr %19, align 8, !tbaa !40
  br label %260

133:                                              ; preds = %129
  %134 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.65, i32 noundef 4) #7
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %133
  %137 = add nsw i32 %32, 1
  %138 = icmp slt i32 %137, %1
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  call fastcc void @usage()
  unreachable

140:                                              ; preds = %136
  %141 = sext i32 %137 to i64
  %142 = getelementptr inbounds ptr, ptr %2, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  store ptr %143, ptr @outfilename, align 8, !tbaa !5
  br label %260

144:                                              ; preds = %133
  %145 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.66, i32 noundef 1) #7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %260

147:                                              ; preds = %144
  %148 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.67, i32 noundef 1) #7
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %147
  %151 = add nsw i32 %32, 1
  %152 = icmp slt i32 %151, %1
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  call fastcc void @usage()
  unreachable

154:                                              ; preds = %150
  %155 = sext i32 %151 to i64
  %156 = getelementptr inbounds ptr, ptr %2, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !5
  %158 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %157, ptr noundef nonnull @.str.68, ptr noundef nonnull %5) #7
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  call fastcc void @usage()
  unreachable

161:                                              ; preds = %154
  %162 = load i32, ptr %5, align 4, !tbaa !33
  %163 = call i32 @jpeg_quality_scaling(i32 noundef %162) #7
  br label %260

164:                                              ; preds = %147
  %165 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.69, i32 noundef 2) #7
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %164
  %168 = add nsw i32 %32, 1
  %169 = icmp slt i32 %168, %1
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  call fastcc void @usage()
  unreachable

171:                                              ; preds = %167
  %172 = sext i32 %168 to i64
  %173 = getelementptr inbounds ptr, ptr %2, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !5
  br label %260

175:                                              ; preds = %164
  %176 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.70, i32 noundef 2) #7
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %175
  %179 = add nsw i32 %32, 1
  %180 = icmp slt i32 %179, %1
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  call fastcc void @usage()
  unreachable

182:                                              ; preds = %178
  %183 = sext i32 %179 to i64
  %184 = getelementptr inbounds ptr, ptr %2, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !5
  br label %260

186:                                              ; preds = %175
  %187 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.71, i32 noundef 1) #7
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %213, label %189

189:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #7
  store i8 120, ptr %9, align 1, !tbaa !9
  %190 = add nsw i32 %32, 1
  %191 = icmp slt i32 %190, %1
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  call fastcc void @usage()
  unreachable

193:                                              ; preds = %189
  %194 = sext i32 %190 to i64
  %195 = getelementptr inbounds ptr, ptr %2, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !5
  %197 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %196, ptr noundef nonnull @.str.62, ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  %198 = icmp slt i32 %197, 1
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  call fastcc void @usage()
  unreachable

200:                                              ; preds = %193
  %201 = load i64, ptr %8, align 8
  %202 = icmp ugt i64 %201, 65535
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  call fastcc void @usage()
  unreachable

204:                                              ; preds = %200
  %205 = load i8, ptr %9, align 1
  %206 = and i8 %205, -33
  %207 = icmp eq i8 %206, 66
  %208 = load i64, ptr %8, align 8, !tbaa !36
  %209 = trunc i64 %208 to i32
  br i1 %207, label %210, label %211

210:                                              ; preds = %204
  store i32 %209, ptr %21, align 8, !tbaa !41
  store i32 0, ptr %22, align 4, !tbaa !42
  br label %212

211:                                              ; preds = %204
  store i32 %209, ptr %20, align 4, !tbaa !42
  br label %212

212:                                              ; preds = %211, %210
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %260

213:                                              ; preds = %186
  %214 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.72, i32 noundef 2) #7
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %213
  %217 = add nsw i32 %32, 1
  %218 = icmp slt i32 %217, %1
  br i1 %218, label %220, label %219

219:                                              ; preds = %216
  call fastcc void @usage()
  unreachable

220:                                              ; preds = %216
  %221 = sext i32 %217 to i64
  %222 = getelementptr inbounds ptr, ptr %2, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !5
  br label %260

224:                                              ; preds = %213
  %225 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.73, i32 noundef 2) #7
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %235, label %227

227:                                              ; preds = %224
  %228 = add nsw i32 %32, 1
  %229 = icmp slt i32 %228, %1
  br i1 %229, label %231, label %230

230:                                              ; preds = %227
  call fastcc void @usage()
  unreachable

231:                                              ; preds = %227
  %232 = sext i32 %228 to i64
  %233 = getelementptr inbounds ptr, ptr %2, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !5
  br label %260

235:                                              ; preds = %224
  %236 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.74, i32 noundef 2) #7
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %255, label %238

238:                                              ; preds = %235
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  %239 = add nsw i32 %32, 1
  %240 = icmp slt i32 %239, %1
  br i1 %240, label %242, label %241

241:                                              ; preds = %238
  call fastcc void @usage()
  unreachable

242:                                              ; preds = %238
  %243 = sext i32 %239 to i64
  %244 = getelementptr inbounds ptr, ptr %2, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !5
  %246 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %245, ptr noundef nonnull @.str.68, ptr noundef nonnull %10) #7
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %249, label %248

248:                                              ; preds = %242
  call fastcc void @usage()
  unreachable

249:                                              ; preds = %242
  %250 = load i32, ptr %10, align 4
  %251 = icmp ugt i32 %250, 100
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  call fastcc void @usage()
  unreachable

253:                                              ; preds = %249
  %254 = load i32, ptr %10, align 4, !tbaa !33
  store i32 %254, ptr %23, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  br label %260

255:                                              ; preds = %235
  %256 = call i32 @keymatch(ptr noundef nonnull %42, ptr noundef nonnull @.str.75, i32 noundef 1) #7
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %255
  store i1 true, ptr @is_targa, align 4
  br label %260

259:                                              ; preds = %255
  call fastcc void @usage()
  unreachable

260:                                              ; preds = %144, %49, %70, %75, %65, %99, %132, %171, %212, %231, %258, %253, %220, %182, %161, %140, %121, %88, %40
  %261 = phi i32 [ %32, %40 ], [ %56, %65 ], [ %56, %70 ], [ %56, %75 ], [ %32, %88 ], [ %32, %99 ], [ %104, %121 ], [ %32, %132 ], [ %137, %140 ], [ %151, %161 ], [ %168, %171 ], [ %179, %182 ], [ %190, %212 ], [ %217, %220 ], [ %228, %231 ], [ %239, %253 ], [ %32, %258 ], [ %32, %49 ], [ %32, %144 ]
  %262 = phi i32 [ %31, %40 ], [ %31, %65 ], [ %31, %70 ], [ %31, %75 ], [ %31, %88 ], [ %31, %99 ], [ %31, %121 ], [ %31, %132 ], [ %31, %140 ], [ %163, %161 ], [ %31, %171 ], [ %31, %182 ], [ %31, %212 ], [ %31, %220 ], [ %31, %231 ], [ %31, %253 ], [ %31, %258 ], [ %31, %49 ], [ %31, %144 ]
  %263 = phi i32 [ %30, %40 ], [ %30, %65 ], [ %30, %70 ], [ %30, %75 ], [ %30, %88 ], [ %30, %99 ], [ %30, %121 ], [ %30, %132 ], [ %30, %140 ], [ %30, %161 ], [ %30, %171 ], [ %30, %182 ], [ %30, %212 ], [ %30, %220 ], [ %30, %231 ], [ %30, %253 ], [ %30, %258 ], [ 1, %49 ], [ %30, %144 ]
  %264 = phi i32 [ %29, %40 ], [ %29, %65 ], [ %29, %70 ], [ %29, %75 ], [ %29, %88 ], [ %29, %99 ], [ %29, %121 ], [ %29, %132 ], [ %29, %140 ], [ %29, %161 ], [ %29, %171 ], [ %29, %182 ], [ %29, %212 ], [ %29, %220 ], [ %29, %231 ], [ %29, %253 ], [ %29, %258 ], [ %29, %49 ], [ 1, %144 ]
  %265 = phi ptr [ %28, %40 ], [ %28, %65 ], [ %28, %70 ], [ %28, %75 ], [ %28, %88 ], [ %28, %99 ], [ %28, %121 ], [ %28, %132 ], [ %28, %140 ], [ %28, %161 ], [ %28, %171 ], [ %185, %182 ], [ %28, %212 ], [ %28, %220 ], [ %28, %231 ], [ %28, %253 ], [ %28, %258 ], [ %28, %49 ], [ %28, %144 ]
  %266 = phi ptr [ %27, %40 ], [ %27, %65 ], [ %27, %70 ], [ %27, %75 ], [ %27, %88 ], [ %27, %99 ], [ %27, %121 ], [ %27, %132 ], [ %27, %140 ], [ %27, %161 ], [ %174, %171 ], [ %27, %182 ], [ %27, %212 ], [ %27, %220 ], [ %27, %231 ], [ %27, %253 ], [ %27, %258 ], [ %27, %49 ], [ %27, %144 ]
  %267 = phi ptr [ %26, %40 ], [ %26, %65 ], [ %26, %70 ], [ %26, %75 ], [ %26, %88 ], [ %26, %99 ], [ %26, %121 ], [ %26, %132 ], [ %26, %140 ], [ %26, %161 ], [ %26, %171 ], [ %26, %182 ], [ %26, %212 ], [ %223, %220 ], [ %26, %231 ], [ %26, %253 ], [ %26, %258 ], [ %26, %49 ], [ %26, %144 ]
  %268 = phi ptr [ %25, %40 ], [ %25, %65 ], [ %25, %70 ], [ %25, %75 ], [ %25, %88 ], [ %25, %99 ], [ %25, %121 ], [ %25, %132 ], [ %25, %140 ], [ %25, %161 ], [ %25, %171 ], [ %25, %182 ], [ %25, %212 ], [ %25, %220 ], [ %234, %231 ], [ %25, %253 ], [ %25, %258 ], [ %25, %49 ], [ %25, %144 ]
  %269 = add nsw i32 %261, 1
  %270 = icmp slt i32 %269, %1
  br i1 %270, label %24, label %271, !llvm.loop !44

271:                                              ; preds = %38, %260
  %272 = phi i32 [ %269, %260 ], [ %32, %38 ]
  %273 = phi i32 [ %262, %260 ], [ %31, %38 ]
  %274 = phi i32 [ %263, %260 ], [ %30, %38 ]
  %275 = phi i32 [ %264, %260 ], [ %29, %38 ]
  %276 = phi ptr [ %265, %260 ], [ %28, %38 ]
  %277 = phi ptr [ %266, %260 ], [ %27, %38 ]
  %278 = phi ptr [ %267, %260 ], [ %26, %38 ]
  %279 = phi ptr [ %268, %260 ], [ %25, %38 ]
  %280 = icmp eq i32 %275, 0
  br label %281

281:                                              ; preds = %271, %4
  %282 = phi i32 [ 1, %4 ], [ %272, %271 ]
  %283 = phi i32 [ 100, %4 ], [ %273, %271 ]
  %284 = phi i32 [ 0, %4 ], [ %274, %271 ]
  %285 = phi i1 [ true, %4 ], [ %280, %271 ]
  %286 = phi ptr [ null, %4 ], [ %276, %271 ]
  %287 = phi ptr [ null, %4 ], [ %277, %271 ]
  %288 = phi ptr [ null, %4 ], [ %278, %271 ]
  %289 = phi ptr [ null, %4 ], [ %279, %271 ]
  %290 = icmp eq i32 %3, 0
  br i1 %290, label %318, label %291

291:                                              ; preds = %281
  %292 = load i32, ptr %5, align 4, !tbaa !33
  call void @jpeg_set_quality(ptr noundef nonnull %0, i32 noundef %292, i32 noundef %284) #7
  %293 = icmp eq ptr %286, null
  br i1 %293, label %298, label %294

294:                                              ; preds = %291
  %295 = call i32 @read_quant_tables(ptr noundef nonnull %0, ptr noundef nonnull %286, i32 noundef %283, i32 noundef %284) #7
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  call fastcc void @usage()
  unreachable

298:                                              ; preds = %294, %291
  %299 = icmp eq ptr %287, null
  br i1 %299, label %304, label %300

300:                                              ; preds = %298
  %301 = call i32 @set_quant_slots(ptr noundef nonnull %0, ptr noundef nonnull %287) #7
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  call fastcc void @usage()
  unreachable

304:                                              ; preds = %300, %298
  %305 = icmp eq ptr %288, null
  br i1 %305, label %310, label %306

306:                                              ; preds = %304
  %307 = call i32 @set_sample_factors(ptr noundef nonnull %0, ptr noundef nonnull %288) #7
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  call fastcc void @usage()
  unreachable

310:                                              ; preds = %306, %304
  br i1 %285, label %312, label %311

311:                                              ; preds = %310
  call void @jpeg_simple_progression(ptr noundef nonnull %0) #7
  br label %312

312:                                              ; preds = %311, %310
  %313 = icmp eq ptr %289, null
  br i1 %313, label %318, label %314

314:                                              ; preds = %312
  %315 = call i32 @read_scan_script(ptr noundef nonnull %0, ptr noundef nonnull %289) #7
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  call fastcc void @usage()
  unreachable

318:                                              ; preds = %312, %314, %281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %282
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @usage() unnamed_addr #4 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %2 = load ptr, ptr @progname, align 8, !tbaa !5
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef %2) #8
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 12, i64 1, ptr %4) #8
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 37, i64 1, ptr %6) #8
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 68, i64 1, ptr %8) #8
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 45, i64 1, ptr %10) #8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %13 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 77, i64 1, ptr %12) #8
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 46, i64 1, ptr %14) #8
  %16 = load ptr, ptr @stderr, align 8, !tbaa !5
  %17 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 65, i64 1, ptr %16) #8
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %19 = tail call i64 @fwrite(ptr nonnull @.str.84, i64 29, i64 1, ptr %18) #8
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #8
  %22 = load ptr, ptr @stderr, align 8, !tbaa !5
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88) #8
  %24 = load ptr, ptr @stderr, align 8, !tbaa !5
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88) #8
  %26 = load ptr, ptr @stderr, align 8, !tbaa !5
  %27 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 67, i64 1, ptr %26) #8
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %29 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 62, i64 1, ptr %28) #8
  %30 = load ptr, ptr @stderr, align 8, !tbaa !5
  %31 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 51, i64 1, ptr %30) #8
  %32 = load ptr, ptr @stderr, align 8, !tbaa !5
  %33 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 46, i64 1, ptr %32) #8
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %35 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 43, i64 1, ptr %34) #8
  %36 = load ptr, ptr @stderr, align 8, !tbaa !5
  %37 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 22, i64 1, ptr %36) #8
  %38 = load ptr, ptr @stderr, align 8, !tbaa !5
  %39 = tail call i64 @fwrite(ptr nonnull @.str.96, i64 39, i64 1, ptr %38) #8
  %40 = load ptr, ptr @stderr, align 8, !tbaa !5
  %41 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 55, i64 1, ptr %40) #8
  %42 = load ptr, ptr @stderr, align 8, !tbaa !5
  %43 = tail call i64 @fwrite(ptr nonnull @.str.98, i64 55, i64 1, ptr %42) #8
  %44 = load ptr, ptr @stderr, align 8, !tbaa !5
  %45 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 52, i64 1, ptr %44) #8
  %46 = load ptr, ptr @stderr, align 8, !tbaa !5
  %47 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 56, i64 1, ptr %46) #8
  tail call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare ptr @read_stdin() local_unnamed_addr #2

declare ptr @write_stdout() local_unnamed_addr #2

declare void @jpeg_default_colorspace(ptr noundef) local_unnamed_addr #2

declare void @jpeg_stdio_dest(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @jpeg_start_compress(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @jpeg_finish_compress(ptr noundef) local_unnamed_addr #2

declare void @jpeg_destroy_compress(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @keymatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare i32 @jpeg_quality_scaling(i32 noundef) local_unnamed_addr #2

declare void @jpeg_set_quality(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @read_quant_tables(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @set_quant_slots(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @set_sample_factors(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @jpeg_simple_progression(ptr noundef) local_unnamed_addr #2

declare i32 @read_scan_script(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @jinit_read_targa(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @jinit_read_bmp(ptr noundef) local_unnamed_addr #2

declare ptr @jinit_read_gif(ptr noundef) local_unnamed_addr #2

declare ptr @jinit_read_ppm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }

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
!11 = !{!"jpeg_compress_struct", !6, i64 0, !6, i64 8, !6, i64 16, !12, i64 24, !12, i64 28, !6, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !13, i64 56, !12, i64 64, !12, i64 68, !12, i64 72, !6, i64 80, !7, i64 88, !7, i64 120, !7, i64 152, !7, i64 184, !7, i64 200, !7, i64 216, !12, i64 232, !6, i64 240, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !7, i64 284, !14, i64 286, !14, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !12, i64 316, !7, i64 320, !12, i64 352, !12, i64 356, !12, i64 360, !7, i64 364, !12, i64 404, !12, i64 408, !12, i64 412, !12, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !6, i64 480, !6, i64 488}
!12 = !{!"int", !7, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!16, !6, i64 152}
!16 = !{!"jpeg_error_mgr", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !12, i64 40, !7, i64 44, !12, i64 124, !17, i64 128, !6, i64 136, !12, i64 144, !6, i64 152, !12, i64 160, !12, i64 164}
!17 = !{!"long", !7, i64 0}
!18 = !{!16, !12, i64 160}
!19 = !{!16, !12, i64 164}
!20 = !{!11, !12, i64 52}
!21 = !{!16, !12, i64 40}
!22 = !{!16, !6, i64 0}
!23 = !{!24, !6, i64 24}
!24 = !{!"cjpeg_source_struct", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !12, i64 40}
!25 = !{!24, !6, i64 0}
!26 = !{!11, !12, i64 296}
!27 = !{!11, !12, i64 44}
!28 = !{!24, !6, i64 8}
!29 = !{!24, !6, i64 32}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!24, !6, i64 16}
!33 = !{!12, !12, i64 0}
!34 = !{!16, !12, i64 124}
!35 = !{!11, !12, i64 268}
!36 = !{!17, !17, i64 0}
!37 = !{!11, !6, i64 8}
!38 = !{!39, !17, i64 88}
!39 = !{!"jpeg_memory_mgr", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !17, i64 88}
!40 = !{!11, !12, i64 256}
!41 = !{!11, !12, i64 272}
!42 = !{!11, !12, i64 276}
!43 = !{!11, !12, i64 264}
!44 = distinct !{!44, !31}
